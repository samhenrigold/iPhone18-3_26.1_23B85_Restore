void sub_1DE66E418(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::IO_Core::Stream_Connection::maybe_capture_audio(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 272);
  v3 = *(a1 + 280);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    if ((*(a1 + 264) & 1) == 0)
    {
      v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v5 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
        v21 = "Stream_Connection.cpp";
        v22 = 1024;
        v23 = 204;
        v24 = 2080;
        v25 = "not (m_current_time_for_audio_capture)";
        _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s cycle data must have been captured for this cycle before we can write to the file", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v11, "cycle data must have been captured for this cycle before we can write to the file", v9);
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
      v26 = "void AMCP::IO_Core::Stream_Connection::maybe_capture_audio(const DAL::Readable_Range &)";
      v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Stream_Connection.cpp";
      v28 = 204;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
    }

    AMCP::DAL::create_timestamp_data(buf, (a1 + 224), *(a2 + 24), *(a2 + 32));
    (*(**v4 + 16))(*v4, buf, a2);
    std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(buf);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1DE66E72C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table((v25 - 128));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::IO_Core::Stream_Connection::get_converter_buffer(AMCP::Log::AMCP_Scope_Registry *this, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 328);
  if (!v2)
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
      v20 = "Stream_Connection.cpp";
      v21 = 1024;
      v22 = 220;
      v23 = 2080;
      v24 = "not (m_converter_buffer)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s no converter buffer", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v10, "no converter buffer", v8);
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
    v25 = "std::shared_ptr<DAL::DAL_Buffer> AMCP::IO_Core::Stream_Connection::get_converter_buffer() const";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Stream_Connection.cpp";
    v27 = 220;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  v3 = *(a2 + 336);
  *this = v2;
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void sub_1DE66EA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
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

void std::__shared_ptr_emplace<AMCP::DAL::DAL_Settings>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59870A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_Stream::GetPropertyData(HALS_Stream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, void *a6, uint64_t a7, const void *a8, HALS_Client *a9)
{
  v39 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1935894637)
  {
    if (mSelector > 1936092512)
    {
      if (mSelector > 1936092531)
      {
        if (mSelector != 1936092532)
        {
          if (mSelector == 1952542835)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_Stream.cpp";
                v37 = 1024;
                v38 = 398;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsReferenceStream", buf, 0x12u);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              *exception = off_1F5991DD8;
              exception[2] = 561211770;
            }

            goto LABEL_52;
          }

          if (mSelector == 1952805485)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_Stream.cpp";
                v37 = 1024;
                v38 = 292;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyTerminalType", buf, 0x12u);
              }

              v14 = __cxa_allocate_exception(0x10uLL);
              *v14 = off_1F5991DD8;
              v14[2] = 561211770;
            }

LABEL_52:
            *a6 = 0;
            goto LABEL_53;
          }

          goto LABEL_73;
        }

        if (a4 <= 0x27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Stream.cpp";
            v37 = 1024;
            v38 = 320;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat", buf, 0x12u);
          }

          v33 = __cxa_allocate_exception(0x10uLL);
          *v33 = off_1F5991DD8;
          v33[2] = 561211770;
        }

LABEL_70:
        a6[4] = 0;
        *a6 = 0u;
        *(a6 + 1) = 0u;
        v21 = 40;
        goto LABEL_71;
      }

      if (mSelector != 1936092513)
      {
        if (mSelector == 1936092525)
        {
          if (a4 <= 0x27)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Stream.cpp";
              v37 = 1024;
              v38 = 350;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch", buf, 0x12u);
            }

            v20 = __cxa_allocate_exception(0x10uLL);
            *v20 = off_1F5991DD8;
            v20[2] = 561211770;
          }

          goto LABEL_70;
        }

LABEL_73:

        HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
        return;
      }

      goto LABEL_47;
    }

    if (mSelector > 1936092450)
    {
      if (mSelector != 1936092451)
      {
        if (mSelector == 1936092479)
        {
          if (a4 <= 0x27)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_Stream.cpp";
              v37 = 1024;
              v38 = 341;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported", buf, 0x12u);
            }

            v18 = __cxa_allocate_exception(0x10uLL);
            *v18 = off_1F5991DD8;
            v18[2] = 561211770;
          }

          goto LABEL_70;
        }

        goto LABEL_73;
      }

LABEL_47:
      *a5 = 0;
      return;
    }

    if (mSelector != 1935894638)
    {
      if (mSelector == 1935960434)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Stream.cpp";
            v37 = 1024;
            v38 = 283;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyDirection", buf, 0x12u);
          }

          v30 = __cxa_allocate_exception(0x10uLL);
          *v30 = off_1F5991DD8;
          v30[2] = 561211770;
        }

        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 0x40000000;
        v35[2] = ___ZNK11HALS_Stream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
        v35[3] = &__block_descriptor_tmp_16389;
        v35[4] = this;
        v35[5] = a6;
        v16 = (*(*this + 64))(this, a2);
        HALB_CommandGate::ExecuteCommand(v16, v35);
        goto LABEL_53;
      }

      goto LABEL_73;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Stream.cpp";
        v37 = 1024;
        v38 = 301;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel", buf, 0x12u);
      }

      v31 = __cxa_allocate_exception(0x10uLL);
      *v31 = off_1F5991DD8;
      v31[2] = 561211770;
    }

    goto LABEL_49;
  }

  if (mSelector > 1885762622)
  {
    if (mSelector > 1885762668)
    {
      if (mSelector == 1885762669)
      {
        if (a4 <= 0x27)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_Stream.cpp";
            v37 = 1024;
            v38 = 389;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch", buf, 0x12u);
          }

          v29 = __cxa_allocate_exception(0x10uLL);
          *v29 = off_1F5991DD8;
          v29[2] = 561211770;
        }

        goto LABEL_70;
      }

      if (mSelector != 1935762292)
      {
        goto LABEL_73;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Stream.cpp";
          v37 = 1024;
          v38 = 274;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsActive", buf, 0x12u);
        }

        v19 = __cxa_allocate_exception(0x10uLL);
        *v19 = off_1F5991DD8;
        v19[2] = 561211770;
      }

LABEL_49:
      v15 = 1;
      goto LABEL_50;
    }

    if (mSelector == 1885762623)
    {
      if (a4 <= 0x27)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Stream.cpp";
          v37 = 1024;
          v38 = 380;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported", buf, 0x12u);
        }

        v27 = __cxa_allocate_exception(0x10uLL);
        *v27 = off_1F5991DD8;
        v27[2] = 561211770;
      }

      goto LABEL_70;
    }

    v17 = 29793;
LABEL_33:
    if (mSelector != (v17 | 0x70660000))
    {
      goto LABEL_73;
    }

    goto LABEL_47;
  }

  if (mSelector > 1885762591)
  {
    if (mSelector == 1885762592)
    {
      if (a4 <= 0x27)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_Stream.cpp";
          v37 = 1024;
          v38 = 359;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat", buf, 0x12u);
        }

        v28 = __cxa_allocate_exception(0x10uLL);
        *v28 = off_1F5991DD8;
        v28[2] = 561211770;
      }

      goto LABEL_70;
    }

    v17 = 29731;
    goto LABEL_33;
  }

  if (mSelector != 1819107691)
  {
    if (mSelector != 1819569763)
    {
      goto LABEL_73;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Stream.cpp";
        v37 = 1024;
        v38 = 310;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_Stream::_GetPropertyData: bad property data size for kAudioStreamPropertyLatency", buf, 0x12u);
      }

      v34 = __cxa_allocate_exception(0x10uLL);
      *v34 = off_1F5991DD8;
      v34[2] = 561211770;
    }

    *a6 = 0;
    v15 = *a6 + HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(this, a9);
LABEL_50:
    *a6 = v15;
LABEL_53:
    v21 = 4;
LABEL_71:
    *a5 = v21;
    return;
  }

  v24 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 7));
  v26 = v24;
  if (v24)
  {
    strcpy(buf, "kamlbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*v24 + 120))(v24, *(this + 7), buf, a4, a5, a6, a7, a8, a9);
  }

  HALS_ObjectMap::ReleaseObject(v26, v25);
}

uint64_t HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(HALS_Stream *this, HALS_Client *a2)
{
  if (!AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
  {
    return 0;
  }

  if (a2)
  {
    v4 = *(a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  v6 = *(this + 8);
  std::mutex::lock((v6 + 24));
  v7 = *(v6 + 96);
  if (!v7)
  {
    goto LABEL_14;
  }

  v8 = v6 + 96;
  do
  {
    v9 = *(v7 + 32);
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != v6 + 96 && *(v8 + 32) <= v4)
  {
    v5 = *(v8 + 40);
  }

  else
  {
LABEL_14:
    v5 = 0;
  }

  std::mutex::unlock((v6 + 24));
  return v5;
}

uint64_t HALS_Stream::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 <= 1935894637)
  {
    if (v3 > 1885762622)
    {
      if (v3 > 1885762668)
      {
        if (v3 == 1885762669)
        {
          return 40;
        }

        v4 = 1935762292;
LABEL_25:
        if (v3 == v4)
        {
          return 4;
        }

        return HALS_Object::GetPropertyDataSize(a1, a2, a3);
      }

      if (v3 == 1885762623)
      {
        return 40;
      }

      v5 = 29793;
    }

    else
    {
      if (v3 <= 1885762591)
      {
        if (v3 == 1819107691)
        {
          return 8;
        }

        v4 = 1819569763;
        goto LABEL_25;
      }

      if (v3 == 1885762592)
      {
        return 40;
      }

      v5 = 29731;
    }

    if (v3 != (v5 | 0x70660000))
    {
      return HALS_Object::GetPropertyDataSize(a1, a2, a3);
    }

    return 0;
  }

  if (v3 <= 1936092512)
  {
    if (v3 <= 1936092450)
    {
      if (v3 == 1935894638)
      {
        return 4;
      }

      v4 = 1935960434;
      goto LABEL_25;
    }

    if (v3 != 1936092451)
    {
      v6 = 27967;
      goto LABEL_29;
    }

    return 0;
  }

  if (v3 > 1936092531)
  {
    if (v3 != 1936092532)
    {
      if (v3 != 1952542835)
      {
        v4 = 1952805485;
        goto LABEL_25;
      }

      return 4;
    }

    return 40;
  }

  if (v3 == 1936092513)
  {
    return 0;
  }

  v6 = 28013;
LABEL_29:
  if (v3 == (v6 | 0x73660000))
  {
    return 40;
  }

  return HALS_Object::GetPropertyDataSize(a1, a2, a3);
}

uint64_t HALS_Stream::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 > 1935894637)
  {
    if (v4 <= 1936092512)
    {
      if (v4 <= 1936092450)
      {
        v6 = v4 == 1935894638;
        v7 = 1935960434;
        goto LABEL_24;
      }

      v6 = v4 == 1936092451;
      v8 = 27967;
    }

    else
    {
      if (v4 > 1936092531)
      {
        if (v4 != 1952805485 && v4 != 1952542835)
        {
          if (v4 != 1936092532)
          {
            return HALS_Object::IsPropertySettable(0, a2, a3);
          }

          return 1;
        }

        return result;
      }

      v6 = v4 == 1936092513;
      v8 = 28013;
    }

    v7 = v8 | 0x73660000;
LABEL_24:
    if (!v6 && v4 != v7)
    {
      return HALS_Object::IsPropertySettable(0, a2, a3);
    }

    return result;
  }

  if (v4 > 1885762622)
  {
    if (v4 > 1885762668)
    {
      v6 = v4 == 1885762669;
      v7 = 1935762292;
    }

    else
    {
      v6 = v4 == 1885762623;
      v7 = 1885762657;
    }

    goto LABEL_24;
  }

  if (v4 <= 1885762591)
  {
    v6 = v4 == 1819107691;
    v7 = 1819569763;
    goto LABEL_24;
  }

  if (v4 == 1885762592)
  {
    return 1;
  }

  if (v4 != 1885762595)
  {
    return HALS_Object::IsPropertySettable(0, a2, a3);
  }

  return result;
}

uint64_t HALS_Stream::HasProperty(HALS_Stream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  v5 = 1;
  if (a3->mSelector > 1935762291)
  {
    if (mSelector <= 1936092478)
    {
      if (mSelector > 1935960433)
      {
        if (mSelector == 1935960434)
        {
          return v5;
        }

        v9 = 1936092451;
      }

      else
      {
        if (mSelector == 1935762292)
        {
          return v5;
        }

        v9 = 1935894638;
      }

      goto LABEL_33;
    }

    if (mSelector > 1937007733)
    {
      if (mSelector == 1937007734)
      {
        return v5;
      }

      if (mSelector != 1952542835)
      {
        v9 = 1952805485;
LABEL_33:
        if (mSelector == v9)
        {
          return v5;
        }
      }
    }

    else
    {
      v8 = mSelector - 1936092479;
      if (v8 <= 0x35 && ((1 << v8) & 0x20400400000001) != 0)
      {
        return v5;
      }
    }

    return 0;
  }

  if (mSelector <= 1870098019)
  {
    if (mSelector <= 1819107690)
    {
      if (mSelector == 1650682995)
      {
        return v5;
      }

      v9 = 1668047219;
    }

    else
    {
      if (mSelector == 1819107691)
      {
        v12 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 7));
        v14 = v12;
        if (v12)
        {
          v16 = 0x676C6F626C6D616BLL;
          v17 = 0;
          v5 = (*(*v12 + 96))(v12, *(this + 7), &v16, a4);
        }

        else
        {
          v5 = 0;
        }

        HALS_ObjectMap::ReleaseObject(v14, v13);
        return v5;
      }

      if (mSelector == 1819569763)
      {
        return v5;
      }

      v9 = 1869638759;
    }

    goto LABEL_33;
  }

  if (mSelector > 1885762656)
  {
    if (mSelector == 1885762657)
    {
      return v5;
    }

    v9 = 1885762669;
    goto LABEL_33;
  }

  if (((mSelector - 1885762592) > 0x1F || ((1 << (mSelector - 32)) & 0x80000009) == 0) && mSelector != 1870098020)
  {
    return 0;
  }

  return v5;
}

void HALS_Stream::~HALS_Stream(HALS_Stream *this)
{
  HALS_Stream::~HALS_Stream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987148;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  HALS_Object::~HALS_Object(this);
}

void HALS_Stream::HALS_Stream(uint64_t a1, HALS_Stream *this, uint64_t a3, char a4, int a5)
{
  v8 = this;
  if (HALB_Info::IsStandardClass(this))
  {
    v11 = v8;
  }

  else
  {
    v11 = 1634956402;
  }

  HALS_Object::HALS_Object(a1, v8, v11, a3, v10);
  *a1 = &unk_1F5987148;
  *(a1 + 48) = *(a3 + 16);
  *(a1 + 52) = a4;
  *(a1 + 56) = a5;
  operator new();
}

void HALS_Stream::GetCurrentVirtualFormat(HALS_Stream *this, AudioStreamBasicDescription *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  strcpy(buf, "tmfsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  LODWORD(v20[0]) = 0;
  v5 = (*(*this + 120))(this, v4, buf, 40, v20, a2, 0, 0, 0);
  if (a2->mSampleRate <= 0.0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      v19 = *(this + 4);
      *buf = 136315650;
      *&buf[4] = "HALS_Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 444;
      *&buf[18] = 1024;
      *&buf[20] = v19;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Invalid stream virtual format %u sample rate is 0", buf, 0x18u);
    }
  }

  v10 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v12 = v10;
  if (v10)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3002000000;
    v22 = __Block_byref_object_copy__66_20170;
    v23 = __Block_byref_object_dispose__67_20171;
    v24 = 0;
    v25 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___ZNK11HALS_Device39GetClientChannelCountFromDSPDescriptionEv_block_invoke;
    v20[3] = &unk_1E86789E0;
    v20[4] = buf;
    v20[5] = v10;
    v13 = (*(*v10 + 64))(v10);
    HALB_CommandGate::ExecuteCommand(v13, v20);
    v14 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
    if ((v14 & 0x100000000) != 0)
    {
      mFormatFlags = a2->mFormatFlags;
      if ((mFormatFlags & 0x20) != 0)
      {
        mChannelsPerFrame = 1;
      }

      else
      {
        mChannelsPerFrame = a2->mChannelsPerFrame;
        if (!mChannelsPerFrame)
        {
          v17 = (a2->mBitsPerChannel + 7) >> 3;
LABEL_16:
          v18 = v17 * v14;
          a2->mFormatFlags = mFormatFlags & 0xFFFFFFDF;
          a2->mBytesPerPacket = v18;
          a2->mFramesPerPacket = 1;
          a2->mBytesPerFrame = v18;
          a2->mChannelsPerFrame = v14;
          goto LABEL_17;
        }
      }

      v17 = a2->mBytesPerFrame / mChannelsPerFrame;
      goto LABEL_16;
    }
  }

LABEL_17:
  HALS_ObjectMap::ReleaseObject(v12, v11);
}

void sub_1DE670358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_Stream::ApplyHostedDSPModifiersForClient(HALS_Stream *this, HALS_ObjectMap *a2, int a3)
{
  updated = HALS_DSPHostPerClientStreamEdits::update_stream_with_modifiers(this, a2);
  if (a3 && updated)
  {
    v7 = *(*(this + 1) + 28);
    v12[0] = 0;
    v12[1] = 0;
    HALS_System::GetInstance(&v13, 0, v12);
    v9 = HALS_System::CopyDeviceByObjectID(v13, v7, 0);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v9)
    {
      v10 = HALS_ObjectMap::CopyObjectByObjectID(a2);
      HALS_ObjectMap::ReleaseObject(v10, v11);
    }

    HALS_ObjectMap::ReleaseObject(v9, v8);
  }
}

void DSP_Host_OffloadDictionary::make_empty(DSP_Host_OffloadDictionary *this)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v9 = Mutable;
  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, Mutable);
  v3 = cf;
  cf = 0;
  v8 = v3;
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v5 = *(this + 2);
  *(this + 2) = v3;
  v8 = v5;
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE670570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12)
{
  __cxa_free_exception(v12);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a11);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a12);
  _Unwind_Resume(a1);
}

uint64_t DSP_Host_OffloadDictionary::get_debug_string(DSP_Host_OffloadDictionary *this, uint64_t a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  v4 = *(a2 + 16);
  if (v4 && CFDictionaryGetCount(v4))
  {
    DSP_Host_OffloadDictionary::get_offload_id_list(&v18, a2);
    v5 = v18;
    v6 = v19;
    if (v18 != v19)
    {
      v7 = "'";
      do
      {
        if (*(v5 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
        }

        else
        {
          v8 = *v5;
          __p.__r_.__value_.__r.__words[2] = *(v5 + 2);
          *&__p.__r_.__value_.__l.__data_ = v8;
        }

        v9 = strlen(v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v7, v9);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, p_p, size);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "'", 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v5 = (v5 + 24);
        v7 = " '";
      }

      while (v5 != v6);
    }

    __p.__r_.__value_.__r.__words[0] = &v18;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "<no offloads>", 13);
  }

  if ((v28 & 0x10) != 0)
  {
    v13 = v27;
    if (v27 < v24)
    {
      v27 = v24;
      v13 = v24;
    }

    locale = v23[4].__locale_;
  }

  else
  {
    if ((v28 & 8) == 0)
    {
      v12 = 0;
      *(this + 23) = 0;
      goto LABEL_32;
    }

    locale = v23[1].__locale_;
    v13 = v23[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  *(this + 23) = v12;
  if (v12)
  {
    memmove(this, locale, v12);
  }

LABEL_32:
  *(this + v12) = 0;
  v20[0] = *MEMORY[0x1E69E54D8];
  v15 = *(MEMORY[0x1E69E54D8] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v21 = v15;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v26 < 0)
  {
    operator delete(v25);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12C15F0](&v29);
}

void sub_1DE6708F0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  MEMORY[0x1E12C15F0](va);
  _Unwind_Resume(a1);
}

void DSP_Host_OffloadDictionary::get_offload_id_list(DSP_Host_OffloadDictionary *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = *(a2 + 16);
  if (v3 && CFDictionaryGetCount(v3))
  {
    v5 = *(a2 + 16);
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    Count = CFDictionaryGetCount(v5);
    __p[0] = 0;
    std::vector<__CFString const*>::vector[abi:ne200100](&keys, Count, __p);
    CFDictionaryGetKeysAndValues(*(a2 + 16), keys, 0);
    v7 = keys;
    v8 = v16;
    if (keys != v16)
    {
      do
      {
        applesauce::CF::StringRef::from_get(&cf, *v7);
        if (!cf)
        {
          v9 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v9, "Could not construct");
          __cxa_throw(v9, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        applesauce::CF::convert_as<std::string,0>(__p, cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v14 == 1)
        {
          std::vector<std::string>::push_back[abi:ne200100](this, __p);
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }

        ++v7;
      }

      while (v7 != v8);
      v7 = keys;
    }

    if (v7)
    {
      v16 = v7;
      operator delete(v7);
    }
  }
}

void sub_1DE670AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18)
{
  __cxa_free_exception(v18);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL DSP_Host_OffloadDictionary::has_id(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3 || !CFDictionaryGetCount(v3))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (!v7)
  {
    return applesauce::CF::details::has_key<applesauce::CF::StringRef>(v5, 0);
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = CFStringCreateWithBytes(0, v7, v8, 0x8000100u, 0);
  if (!v9)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
    __cxa_throw(v14, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v10 = v9;
  v11 = applesauce::CF::details::has_key<applesauce::CF::StringRef>(*(a1 + 16), v9);
  CFRelease(v10);
  return v11;
}

void sub_1DE670C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

BOOL DSP_Host_OffloadDictionary::has_all_id(DSP_Host_OffloadDictionary *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "all available");
  has_id = DSP_Host_OffloadDictionary::has_id(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return has_id;
}

void sub_1DE670CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

DSP_Host_OffloadDictionary *DSP_Host_OffloadDictionary::remove(DSP_Host_OffloadDictionary *this, const DSP_Host_OffloadDictionary *a2)
{
  v3 = *(this + 2);
  if (v3)
  {
    if (CFDictionaryGetCount(v3))
    {
      v5 = *(a2 + 2);
      if (v5)
      {
        if (CFDictionaryGetCount(v5))
        {
          if (DSP_Host_OffloadDictionary::has_all_id(a2))
          {
            DSP_Host_OffloadDictionary::make_empty(this);
          }

          else
          {
            DSP_Host_OffloadDictionary::get_offload_id_list(&v28, this);
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
            v27 = Mutable;
            v7 = v28;
            for (i = v29; v7 != i; v7 = (v7 + 24))
            {
              if (*(v7 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v26, *v7, *(v7 + 1));
              }

              else
              {
                v9 = *v7;
                v26.__r_.__value_.__r.__words[2] = *(v7 + 2);
                *&v26.__r_.__value_.__l.__data_ = v9;
              }

              if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v10 = &v26;
              }

              else
              {
                v10 = v26.__r_.__value_.__r.__words[0];
              }

              if (v10)
              {
                if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v26.__r_.__value_.__l.__size_;
                }

                v10 = CFStringCreateWithBytes(0, v10, size, 0x8000100u, 0);
                cf = v10;
                if (!v10)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }
              }

              else
              {
                cf = 0;
              }

              v12 = *(a2 + 2);
              if (!v12)
              {
                v19 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v19, "Could not construct");
                __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              if (!applesauce::CF::details::has_key<applesauce::CF::StringRef &>(v12, v10))
              {
                v13 = *(this + 2);
                if (!v13)
                {
                  v21 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v21, "Could not construct");
                  __cxa_throw(v21, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,applesauce::CF::StringRef &>(&v23, v13, cf);
                if (v24 == 1)
                {
                  v14 = v23;
                  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::DictionaryRef>(Mutable, cf, v23);
                  if (v14)
                  {
                    CFRelease(v14);
                  }
                }
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v26.__r_.__value_.__l.__data_);
              }
            }

            mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v23, Mutable);
            v15 = v23;
            v23 = 0;
            v26.__r_.__value_.__r.__words[0] = v15;
            if (v15)
            {
              v16 = CFGetTypeID(v15);
              if (v16 != CFDictionaryGetTypeID())
              {
                v22 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v22, "Could not construct");
                __cxa_throw(v22, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }
            }

            v17 = *(this + 2);
            *(this + 2) = v15;
            v26.__r_.__value_.__r.__words[0] = v17;
            if (v17)
            {
              CFRelease(v17);
            }

            if (v23)
            {
              CFRelease(v23);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            v26.__r_.__value_.__r.__words[0] = &v28;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
          }
        }
      }
    }
  }

  return this;
}

void sub_1DE671024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, char a12, __int16 *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, const void *a20, __int16 a21, char a22, char a23)
{
  __cxa_free_exception(v23);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&__p);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a10);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a20);
  __p = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

BOOL DSP_Host_OffloadDictionary::has_same_ids(uint64_t a1, char **a2)
{
  DSP_Host_OffloadDictionary::get_offload_id_list(&v14, a1);
  v3 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3));
  if (v15 == v14)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  std::__introsort<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,false>(v14, v15, v4, 1);
  v5 = a2[1];
  v6 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3));
  if (v5 == *a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,AHAL_DSP::OffloadDictionary::deep_copy_from_changed(__CFDictionary const*)::$_0 &,std::string *,false>(*a2, v5, v7, 1);
  v8 = v14;
  v9 = v15;
  v11 = a2;
  v10 = *a2;
  if (v15 - v14 == v11[1] - v10)
  {
    if (v14 == v15)
    {
      v12 = 1;
    }

    else
    {
      do
      {
        v12 = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v8, v10);
        if (!v12)
        {
          break;
        }

        v8 += 24;
        v10 += 24;
      }

      while (v8 != v9);
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = &v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  return v12;
}

BOOL DSP_Host_OffloadDictionary::has_same_ids(DSP_Host_OffloadDictionary *this, const DSP_Host_OffloadDictionary *a2)
{
  DSP_Host_OffloadDictionary::get_offload_id_list(&v6, a2);
  memset(v5, 0, sizeof(v5));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
  has_same_ids = DSP_Host_OffloadDictionary::has_same_ids(this, v5);
  v8 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = &v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  return has_same_ids;
}

void sub_1DE671284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v14 - 24));
  *(v14 - 24) = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v14 - 24));
  _Unwind_Resume(a1);
}

DSP_Host_OffloadDictionary *DSP_Host_OffloadDictionary::deep_copy_from(DSP_Host_OffloadDictionary *this, const __CFString *a2)
{
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  if (a2)
  {
    v5 = PropertyListDeepImmutableCopy(a2);
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      if (v7 != CFDictionaryGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v8 = *(this + 2);
    *(this + 2) = v6;
    if (v8)
    {
      CFRelease(v8);
    }
  }

  return this;
}

void sub_1DE67140C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<DSP_Host_OffloadDictionary>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x1E12C1730](v2, 0x60C40149E097CLL);
  }

  return a1;
}

const __CFDictionary *DSP_Host_OffloadDictionary::deep_copy_to(DSP_Host_OffloadDictionary *this, __CFDictionary *a2, const char *a3)
{
  result = *(this + 2);
  if (result)
  {
    result = CFDictionaryGetCount(result);
    if (a3)
    {
      if (a2)
      {
        if (result)
        {
          DSP_Host_OffloadDictionary::deep_copy(&v7, this);
        }
      }
    }
  }

  return result;
}

void sub_1DE6715F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  std::unique_ptr<DSP_Host_OffloadDictionary>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void DSP_Host_OffloadDictionary::deep_copy_to(DSP_Host_OffloadDictionary *this, __CFDictionary **a2, const char *a3)
{
  v4 = *(this + 2);
  if (v4)
  {
    Count = CFDictionaryGetCount(v4);
    if (a3)
    {
      if (Count)
      {
        v8 = PropertyListDeepImmutableCopy(*(this + 2));
        v12 = &unk_1F5991008;
        v13 = v8;
        v9 = strlen(a3);
        v10 = CFStringCreateWithBytes(0, a3, v9, 0x8000100u, 0);
        if (!v10)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        OS::CF::MutableDictionary::SetValueForKey<OS::CF::Dictionary>(a2[1], v10, v13);
        CFRelease(v10);
        OS::CF::UntypedObject::~UntypedObject(&v12);
      }
    }
  }
}

void sub_1DE671740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  OS::CF::UntypedObject::~UntypedObject(va1);
  _Unwind_Resume(a1);
}

void OS::CF::MutableDictionary::SetValueForKey<OS::CF::Dictionary>(__CFDictionary *a1, const void *a2, const void *a3)
{
  if (a1)
  {
    if (a3)
    {
      CFDictionarySetValue(a1, a2, a3);
    }
  }
}

void HALS_PlugInObject::CacheCustomPropertyInfo(HALS_PlugInObject *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x1E12C1700](v2, 0x1000C803E1C8BA9);
  }

  *(this + 3) = 0;
  *(this + 8) = 0;
  v3 = *(this + 1);
  v4 = *(v3 + 416);
  v5 = *(v3 + 424);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(this + 5);
  v13 = 0x676C6F6263757374;
  v14 = 0;
  v7 = (*(*v4 + 544))(v4, v6, 0, &v13);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7)
  {
    v8 = *(this + 1);
    v9 = *(v8 + 416);
    v10 = *(v8 + 424);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(this + 5);
    v13 = 0x676C6F6263757374;
    v14 = 0;
    v12 = (*(*v9 + 560))(v9, v11, 0, &v13, 0, 0);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v12 >= 0xC)
    {
      std::allocator<AudioObjectPropertyAddress>::allocate_at_least[abi:ne200100](v12 / 0xC);
    }
  }
}

void sub_1DE671A98(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInObject::IsCustomProperty(HALS_PlugInObject *this, int a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 3);
  if (*v3 == a2)
  {
    return 1;
  }

  v5 = 0;
  v6 = v3 + 3;
  while (v2 - 1 != v5)
  {
    v7 = *v6;
    v6 += 3;
    ++v5;
    if (v7 == a2)
    {
      return v5 < v2;
    }
  }

  v5 = *(this + 8);
  return v5 < v2;
}

void HALS_PlugInObject::HALS_PlugInObject(HALS_PlugInObject *this, HALS_PlugIn *a2, int a3)
{
  *this = &unk_1F5987248;
  *(this + 1) = a2;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = a3;
  *(this + 3) = 0;
  *(this + 8) = 0;
  v3 = (a2 + 336);
  if (!a2)
  {
    v3 = 0;
  }

  if (v3 != this)
  {
    HALS_ObjectMap::RetainObject(a2, a2);
  }
}

void HALS_PlugInObject::~HALS_PlugInObject(HALS_PlugInObject *this, unsigned int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5987248;
  v3 = *(this + 1);
  if (v3)
  {
    v4 = (v3 + 336);
  }

  else
  {
    v4 = 0;
  }

  if (v4 != this)
  {
    v5 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 4));
    v7 = v5;
    if (v5)
    {
      v8 = *(v5 + 416);
      v9 = *(v7 + 53);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v8)
      {
        (*(*v8 + 120))(v8, *(this + 5));
      }

      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    else
    {
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
        v16 = 136315394;
        v17 = "HALS_PlugInObject.cpp";
        v18 = 1024;
        v19 = 52;
        _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Could not retrieve the owning plugin from the object map", &v16, 0x12u);
      }
    }

    HALS_ObjectMap::ReleaseObject(*(this + 1), v6);
    HALS_ObjectMap::ReleaseObject(v7, v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    MEMORY[0x1E12C1700](v15, 0x1000C803E1C8BA9);
  }
}

void sub_1DE671D74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_PlugInObject::HasResourceBundle(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v5 + 40))(v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v7)
  {
    return 0;
  }

  v14 = 0x676C6F6272737263;
  v15 = 0;
  v8 = *(a1 + 8);
  v9 = *(v8 + 416);
  v10 = *(v8 + 424);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a2)
  {
    v11 = *(a2 + 240);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(*v9 + 544))(v9, 1, v11, &v14);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v12;
}

void sub_1DE671E90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void *HALS_PlugInObject::CopyResourceBundlePath(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *(v4 + 416);
  v6 = *(v4 + 424);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*(*v5 + 40))(v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (v7)
  {
    cf = CFURLCopyFileSystemPath(v7, kCFURLPOSIXPathStyle);
    v21 = 1;
    if (!cf)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v24 = 136315394;
        *&v24[4] = "HALS_PlugInObject.cpp";
        v25 = 1024;
        v26 = 150;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInDevice::GetPropertyData: couldn't allocate the plug-in's path for kAudioDevicePropertyResourceBundle", v24, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v18 = 0x676C6F6272737263;
    LODWORD(v19) = 0;
    v8 = *(a1 + 8);
    v9 = *(v8 + 416);
    v10 = *(v8 + 424);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a2)
    {
      v11 = *(a2 + 240);
    }

    else
    {
      v11 = 0;
    }

    theString = 0;
    v22 = 0;
    (*(*v9 + 568))(v9, 1, v11, &v18, 0, 0, 8, &v22, &theString);
    v13 = theString;
    *v24 = theString;
    v24[8] = 1;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    if (v13 && CFStringGetLength(v13))
    {
      HasPrefix = CFStringHasPrefix(*v24, @"/");
      v15 = cf;
      if (!HasPrefix)
      {
        v12 = CFStringCreateWithFormat(0, 0, @"%@/%@", cf, *v24, v18, v19);
        goto LABEL_24;
      }

      if (cf)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = cf;
      if (cf)
      {
LABEL_21:
        CFRetain(v15);
        v12 = cf;
LABEL_24:
        CACFString::~CACFString(v24);
        CACFString::~CACFString(&cf);
        return v12;
      }
    }

    v12 = 0;
    goto LABEL_24;
  }

  return 0;
}

void sub_1DE672170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  CACFString::~CACFString(va);
  _Unwind_Resume(a1);
}

void HALS_MetaDeviceDescription::UpdateRawDescription(CFDictionaryRef *this)
{
  OS::CF::MutableDictionary::MutableDictionary(v27, this[2]);
  OS::CF::MutableArray::MutableArray(v25);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v23, this[2], @"subdevices");
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v24);
  if (Size)
  {
    v3 = Size;
    v4 = 0;
    while (1)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::UntypedObject>(v21, v23, v4);
      TypeID = OS::CF::UntypedObject::GetTypeID(v22);
      if (TypeID == CFDictionaryGetTypeID())
      {
        break;
      }

      v6 = OS::CF::UntypedObject::GetTypeID(v22);
      if (v6 == CFArrayGetTypeID())
      {
        OS::CF::MutableArray::MutableArray(&v19);
        OS::CF::UntypedObject::As<OS::CF::Array>(&v17, v21);
        v7 = OS::CF::ArrayBase<__CFArray const*>::GetSize(v18);
        if (v7)
        {
          v8 = v7;
          for (i = 0; i != v8; ++i)
          {
            OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(&v14, &v17, i);
            if (cf)
            {
              OS::CF::UntypedObject::UntypedObject(v12, cf);
              v12[0] = &unk_1F5991008;
              HALS_MetaDeviceDescription::UpdateSubDevice(v13, this, v12);
              OS::CF::UntypedObject::~UntypedObject(v12);
              OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(theArray, v13[1]);
              OS::CF::UntypedObject::~UntypedObject(v13);
            }

            OS::CF::UntypedObject::~UntypedObject(&v14);
          }
        }

        Copy = theArray;
        if (theArray)
        {
          Copy = CFArrayCreateCopy(0, theArray);
        }

        v14 = &unk_1F59910D0;
        cf = Copy;
        if (v26 && Copy)
        {
          CFArrayAppendValue(v26, Copy);
        }

        OS::CF::UntypedObject::~UntypedObject(&v14);
LABEL_18:
        OS::CF::UntypedObject::~UntypedObject(&v17);
LABEL_19:
        OS::CF::UntypedObject::~UntypedObject(&v19);
      }

      OS::CF::UntypedObject::~UntypedObject(v21);
      if (++v4 == v3)
      {
        goto LABEL_21;
      }
    }

    OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v19, v21);
    if (theArray)
    {
      OS::CF::UntypedObject::UntypedObject(v16, theArray);
      v16[0] = &unk_1F5991008;
      HALS_MetaDeviceDescription::UpdateSubDevice(&v17, this, v16);
      OS::CF::UntypedObject::~UntypedObject(v16);
      OS::CF::MutableArray::AppendValue<OS::CF::Dictionary>(v26, v18);
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_21:
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::MutableArray>(v28, @"subdevices", v26);
  v11 = v28;
  if (v28)
  {
    v11 = CFDictionaryCreateCopy(0, v28);
  }

  OS::CF::UntypedObject::operator=((this + 1), v11);
  OS::CF::UntypedObject::~UntypedObject(v23);
  OS::CF::UntypedObject::~UntypedObject(v25);
  OS::CF::UntypedObject::~UntypedObject(v27);
}

void sub_1DE672448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va3, a13);
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  va_copy(va2, va1);
  v20 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  va_copy(va3, va2);
  v23 = va_arg(va3, void);
  v25 = va_arg(va3, void);
  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject(va1);
  OS::CF::UntypedObject::~UntypedObject(va2);
  OS::CF::UntypedObject::~UntypedObject(va3);
  OS::CF::UntypedObject::~UntypedObject((v13 - 96));
  OS::CF::UntypedObject::~UntypedObject((v13 - 80));
  _Unwind_Resume(a1);
}

void HALS_MetaDeviceDescription::UpdateSubDeviceList(CFDictionaryRef *this, HALS_Device *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v32, this[2], @"subdevices");
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v33);
  v30 = 0uLL;
  v31 = 0;
  v28 = 0uLL;
  v29 = 0;
  if ((HALS_MetaDeviceDescription::IsStackRequested(this) & 1) == 0)
  {
    if (!Size)
    {
      goto LABEL_29;
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      *v38 = 0;
      v39 = 0;
      v40 = 0;
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::UntypedObject>(&cf, v32, v9);
      TypeID = OS::CF::UntypedObject::GetTypeID(v37);
      if (TypeID == CFDictionaryGetTypeID())
      {
        break;
      }

      v12 = OS::CF::UntypedObject::GetTypeID(v37);
      if (v12 == CFArrayGetTypeID())
      {
        OS::CF::UntypedObject::As<OS::CF::Array>(&v34, &cf);
        if (v35)
        {
          v13 = OS::CF::ArrayBase<__CFArray const*>::GetSize(v35);
          if (v13)
          {
            v14 = v13;
            for (i = 0; i != v14; ++i)
            {
              OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v27, &v34, i);
              if (v27[1])
              {
                HALS_MetaDeviceDescription::AddOrUpdateSubDevice(this, a2, v27, v38, &v28);
              }

              OS::CF::UntypedObject::~UntypedObject(v27);
            }
          }
        }

        goto LABEL_23;
      }

LABEL_24:
      v16 = *v38;
      if (*v38 != v39)
      {
        std::vector<std::vector<HALS_MetaSubDevice *>>::push_back[abi:ne200100](&v30, v38);
      }

      OS::CF::UntypedObject::~UntypedObject(&cf);
      if (v16)
      {
        operator delete(v16);
      }

      v9 = ++v10;
      if (Size <= v10)
      {
        goto LABEL_29;
      }
    }

    OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v34, &cf);
    if (v35)
    {
      HALS_MetaDeviceDescription::AddOrUpdateSubDevice(this, a2, &v34, v38, &v28);
    }

LABEL_23:
    OS::CF::UntypedObject::~UntypedObject(&v34);
    goto LABEL_24;
  }

  *v38 = 0;
  v39 = 0;
  v40 = 0;
  if (Size)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(&cf, v32, v5);
      if (v37)
      {
        HALS_MetaDeviceDescription::AddOrUpdateSubDevice(this, a2, &cf, v38, &v28);
      }

      OS::CF::UntypedObject::~UntypedObject(&cf);
      v5 = v6;
    }

    while (Size > v6++);
    v8 = *v38;
    if (*v38 != v39)
    {
      std::vector<std::vector<HALS_MetaSubDevice *>>::push_back[abi:ne200100](&v30, v38);
    }

    if (v8)
    {
      operator delete(v8);
    }
  }

LABEL_29:
  HALS_MetaDeviceDescription::TeardownSubDeviceList(this);
  v17 = (this + 3);
  if (this[3])
  {
    std::vector<std::vector<std::byte>>::clear[abi:ne200100](this + 3);
    operator delete(*v17);
    *v17 = 0;
    this[4] = 0;
    this[5] = 0;
  }

  v18 = this[6];
  *(this + 3) = v30;
  this[5] = v31;
  v31 = 0;
  v30 = 0uLL;
  this[7] = v18;
  if (v18)
  {
    operator delete(v18);
    this[6] = 0;
    this[7] = 0;
    this[8] = 0;
  }

  *(this + 3) = v28;
  this[8] = v29;
  v29 = 0;
  v28 = 0uLL;
  this[12] = 0;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v34, this[2], @"master");
  OS::CF::String::AsCString(&v34, v38, 256);
  if (v35)
  {
    v19 = this[3];
    for (j = this[4]; v19 != j; v19 = (v19 + 24))
    {
      v21 = *v19;
      v22 = *(v19 + 1);
      while (v21 != v22)
      {
        v23 = HALS_MetaSubDevice::CopyRealDeviceUID(*v21);
        cf = &unk_1F5991188;
        v37 = v23;
        if (OS::CF::operator==(v23, v35))
        {
          v24 = *v21;
          this[12] = *v21;
        }

        else
        {
          v24 = this[12];
        }

        OS::CF::UntypedObject::~UntypedObject(&cf);
        if (v24)
        {
          goto LABEL_43;
        }

        ++v21;
      }
    }
  }

LABEL_43:
  if (!this[12])
  {
    v25 = this[3];
    if (this[4] != v25)
    {
      this[12] = **v25;
    }
  }

  OS::CF::UntypedObject::~UntypedObject(&v34);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v38, this[2], @"clock");
  applesauce::CF::StringRef::from_get(&cf, v39);
  ClockSubDevice = HALS_MetaDeviceDescription::AllocateClockSubDevice(this, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (ClockSubDevice)
  {
    this[13] = ClockSubDevice;
    (**ClockSubDevice)(ClockSubDevice);
  }

  OS::CF::UntypedObject::~UntypedObject(v38);
  *v38 = &v30;
  std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](v38);
  OS::CF::UntypedObject::~UntypedObject(v32);
}

void sub_1DE6728D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char *a24)
{
  if (v24)
  {
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  a24 = &a15;
  std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](&a24);
  OS::CF::UntypedObject::~UntypedObject(&a18);
  _Unwind_Resume(a1);
}

void HALS_MetaDeviceDescription::UpdateSubTapList(HALS_MetaDeviceDescription *this)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v17, *(this + 2), @"taps");
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v18);
  if (Size)
  {
    v3 = Size;
    v4 = 0;
    v10 = 0u;
    v5 = 1;
    do
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::UntypedObject>(v16, v17, v4);
      OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v14, v16);
      if (theDict)
      {
        OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v12, theDict, @"uid");
        if (v13)
        {
          v11[0] = 0;
          v11[1] = 0;
          HALS_System::GetInstance(&v19, 0, v11);
          v7 = HALS_System::CopyTapByUUID(v19, v13);
          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          if (v7 && (*(v7 + 91) != 1 || HALS_MetaDeviceDescription::IsPrivate(this)))
          {
            operator new();
          }

          HALS_ObjectMap::ReleaseObject(v7, v6);
        }

        OS::CF::UntypedObject::~UntypedObject(v12);
      }

      OS::CF::UntypedObject::~UntypedObject(&v14);
      OS::CF::UntypedObject::~UntypedObject(v16);
      v4 = v5;
    }

    while (v3 > v5++);
  }

  else
  {
    v10 = 0u;
  }

  HALS_MetaDeviceDescription::TeardownSubTapList(this);
  v9 = *(this + 9);
  if (v9)
  {
    *(this + 10) = v9;
    operator delete(v9);
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 11) = 0;
  }

  *(this + 72) = v10;
  *(this + 11) = 0;
  OS::CF::UntypedObject::~UntypedObject(v17);
}

void sub_1DE672EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, ...)
{
  va_start(va, a25);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a21);
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  OS::CF::UntypedObject::~UntypedObject(va);
  OS::CF::UntypedObject::~UntypedObject((v27 - 120));
  CACFString::~CACFString((v26 + 56));
  HALS_Object::~HALS_Object(v26);
  MEMORY[0x1E12C1730](v26, 0x10E1C40A2920553);
  HALS_ObjectMap::ReleaseObject(v25, v29);
  OS::CF::UntypedObject::~UntypedObject(&a13);
  OS::CF::UntypedObject::~UntypedObject(&a15);
  OS::CF::UntypedObject::~UntypedObject(&a17);
  if (a9)
  {
    operator delete(a9);
  }

  OS::CF::UntypedObject::~UntypedObject(&a19);
  _Unwind_Resume(a1);
}

void HALS_MetaDeviceDescription::TeardownSubTapList(HALS_ObjectMap *this)
{
  v2 = *(this + 9);
  v3 = *(this + 10);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
        HALS_ObjectMap::ObjectIsDead(*v2, v4);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 9);
  }

  *(this + 10) = v2;
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::UntypedObject>(const __CFArray *result, uint64_t a2, CFIndex a3)
{
  *result = &unk_1F5991080;
  *(result + 1) = 0;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = result;
    result = *(a2 + 8);
    if (result)
    {
      result = CFArrayGetCount(result);
      if (result > a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), a3);
        v7 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
          v8 = v4;
          v9 = v7;
        }

        else
        {
          v8 = v4;
          v9 = 0;
        }

        return OS::CF::UntypedObject::operator=(v8, v9);
      }
    }
  }

  return result;
}

const __CFBoolean *HALS_MetaDeviceDescription::IsPrivate(const __CFDictionary **this)
{
  if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(this[2], @"private"))
  {
    return 0;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(v4, this[2], @"private");
  v2 = OS::CF::Boolean::AsBool(v4[1]);
  OS::CF::UntypedObject::~UntypedObject(v4);
  return v2;
}

const __CFDictionary *OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(const __CFDictionary *result, const void *a2)
{
  if (result)
  {
    return (CFDictionaryContainsKey(result, a2) != 0);
  }

  return result;
}

const __CFBoolean *HALS_MetaDeviceDescription::IsStackRequested(const __CFDictionary **this)
{
  if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(this[2], @"stacked"))
  {
    return 0;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(v4, this[2], @"stacked");
  v2 = OS::CF::Boolean::AsBool(v4[1]);
  OS::CF::UntypedObject::~UntypedObject(v4);
  return v2;
}

void HALS_MetaDeviceDescription::AddOrUpdateSubDevice(HALS_MetaDeviceDescription *a1, HALS_IODevice *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v29, *(a3 + 8), @"uid");
  if (v30)
  {
    v26[0] = 0;
    v26[1] = 0;
    HALS_System::GetInstance(&v27, 0, v26);
    v10 = v27;
    v11 = v30;
    v25 = 0;
    std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(v31, &v25, 1);
    v12 = HALS_System::CopyDeviceByUID(v10, v11, 0, v31);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v31);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v12 && v12 != a2 && HALS_IODevice::GetTransportType(v12) != 1735554416)
    {
      v14 = *(v12 + 4);
      v15 = *(a1 + 3);
      v16 = *(a1 + 4);
      while (v15 != v16)
      {
        for (i = *v15; i != *(v15 + 8); ++i)
        {
          v18 = *i;
          if (HALS_MetaSubDevice::GetRealDeviceObjectID(*i) == v14)
          {
            v19 = *(v15 + 8);
            v20 = v19 - (i + 1);
            if (v19 != (i + 1))
            {
              memmove(i, i + 1, v19 - (i + 1));
            }

            *(v15 + 8) = i + v20;
LABEL_18:
            v27 = v18;
            if (v18)
            {
              v21 = *(a3 + 8);
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 0x40000000;
              v31[2] = ___ZN18HALS_MetaSubDevice16SetSubDeviceInfoEP11HALS_DevicePK14__CFDictionary_block_invoke;
              v31[3] = &__block_descriptor_tmp_17_11169;
              v31[4] = v18;
              v31[5] = v12;
              v31[6] = v21;
              v22 = (*(*v18 + 64))(v18);
              HALB_CommandGate::ExecuteCommand(v22, v31);
              if (HALS_MetaDeviceDescription::CanBeActive(a1, v12))
              {
                a5 = a4;
              }

              std::vector<HALS_Device *>::push_back[abi:ne200100](a5, &v27);
              goto LABEL_28;
            }

LABEL_26:
            operator new();
          }
        }

        v15 += 24;
      }

      v23 = *(a1 + 6);
      v24 = *(a1 + 7);
      while (v23 != v24)
      {
        if (HALS_MetaSubDevice::GetRealDeviceObjectID(*v23) == v14)
        {
          v18 = *v23;
          goto LABEL_18;
        }

        ++v23;
      }

      goto LABEL_26;
    }

LABEL_28:
    HALS_ObjectMap::ReleaseObject(v12, v13);
  }

  OS::CF::UntypedObject::~UntypedObject(v29);
}

void sub_1DE67351C(void *a1)
{
  MEMORY[0x1E12C1730](v2, 0x10E1C4011717AD3);
  HALS_ObjectMap::ReleaseObject(v1, v4);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6734ECLL);
}

void sub_1DE67359C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  OS::CF::UntypedObject::~UntypedObject(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<HALS_MetaSubDevice *>>::push_back[abi:ne200100](const void **a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19 = a1;
    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 24 * v6;
    v15 = 0;
    v16 = v10;
    v17 = 24 * v6;
    v18 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 0;
    std::vector<HALS_MetaSubDevice *>::__init_with_size[abi:ne200100]<HALS_MetaSubDevice **,HALS_MetaSubDevice **>((24 * v6), *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v5 = (v17 + 24);
    v11 = a1[1] - *a1;
    v12 = &v16[-v11];
    memcpy(&v16[-v11], *a1, v11);
    v13 = *a1;
    *a1 = v12;
    a1[1] = v5;
    v14 = a1[2];
    a1[2] = v18;
    v17 = v13;
    v18 = v14;
    v15 = v13;
    v16 = v13;
    std::__split_buffer<std::vector<float>>::~__split_buffer(&v15);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    std::vector<HALS_MetaSubDevice *>::__init_with_size[abi:ne200100]<HALS_MetaSubDevice **,HALS_MetaSubDevice **>(v4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    v5 = v4 + 24;
    a1[1] = v5;
  }

  a1[1] = v5;
}

void sub_1DE67371C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<float>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

CFTypeID OS::CF::UntypedObject::As<OS::CF::Array>(void *a1, uint64_t a2)
{
  TypeID = OS::CF::UntypedObject::GetTypeID(*(a2 + 8));
  result = CFArrayGetTypeID();
  if (TypeID == result)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      result = CFRetain(v6);
    }

    a1[1] = v6;
  }

  else
  {
    a1[1] = 0;
  }

  *a1 = &unk_1F59910D0;
  return result;
}

void HALS_MetaDeviceDescription::TeardownSubDeviceList(HALS_MetaDeviceDescription *this)
{
  v3 = *(this + 3);
  v4 = *(this + 4);
  v2 = (this + 24);
  while (v3 != v4)
  {
    v5 = *v3;
    v6 = v3[1];
    while (v5 != v6)
    {
      if (*v5)
      {
        (*(**v5 + 8))(*v5);
        HALS_ObjectMap::ObjectIsDead(*v5, v7);
      }

      ++v5;
    }

    v3 += 3;
  }

  std::vector<std::vector<std::byte>>::clear[abi:ne200100](v2);
  v8 = *(this + 13);
  if (v8)
  {
    (*(*v8 + 8))(v8);
    HALS_ObjectMap::ObjectIsDead(*(this + 13), v9);
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
}

uint64_t HALS_MetaDeviceDescription::AllocateClockSubDevice(HALS_MetaDevice **a1, const __CFString **a2)
{
  v17[43] = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v13[0] = 0;
    v13[1] = 0;
    HALS_System::GetInstance(&v14, 0, v13);
    v3 = v14;
    v4 = *a2;
    LODWORD(v16) = 0;
    std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(v17, &v16, 1);
    v5 = HALS_System::CopyClockDeviceByUID(v3, v4, v17);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v17);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v5)
    {
      v12[2] = 0;
      operator new();
    }

    v12[0] = 0;
    v12[1] = 0;
    HALS_System::GetInstance(&v14, 0, v12);
    v6 = v14;
    v7 = *a2;
    LODWORD(v16) = 0;
    std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(v17, &v16, 1);
    v8 = HALS_System::CopyDeviceByUID(v6, v7, 0, v17);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v17);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v8)
    {
      v17[0] = 0;
      operator new();
    }

    HALS_ObjectMap::ReleaseObject(0, v9);
    HALS_ObjectMap::ReleaseObject(0, v10);
  }

  return 0;
}

void sub_1DE673B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  MEMORY[0x1E12C1730](v21, 0x10E1C4011717AD3, a3, a4, a5, a6, a7, a8);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  HALS_ObjectMap::ReleaseObject(v22, v24);
  HALS_ObjectMap::ReleaseObject(v20, v25);
  _Unwind_Resume(a1);
}

uint64_t *std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(uint64_t *a1, int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  if (a3)
  {
    for (i = a2; i != &a2[a3]; ++i)
    {
      v4 = *i;
      v5 = a1[1];
      if (!*&v5)
      {
        goto LABEL_19;
      }

      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = *i;
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
LABEL_19:
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
          goto LABEL_19;
        }

LABEL_18:
        v9 = *v9;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      if (*(v9 + 4) != v4)
      {
        goto LABEL_18;
      }
    }
  }

  return a1;
}

void sub_1DE674050(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void HALS_MetaSubDevice::HALS_MetaSubDevice<HALS_Device>(HALS_MetaSubDevice *a1, HALS_MetaDevice *a2, uint64_t a3, __CFString *a4, __CFDictionary *a5)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = a3;
  HALS_MetaSubDevice::HALS_MetaSubDevice(a1, a2, a4, a5, a5);
}

void sub_1DE674164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HALS_Listener::~HALS_Listener(&a9);
  HALS_MetaSubDevice::~HALS_MetaSubDevice(v9);
  _Unwind_Resume(a1);
}

void std::vector<HALS_MetaSubDevice *>::__init_with_size[abi:ne200100]<HALS_MetaSubDevice **,HALS_MetaSubDevice **>(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1DE674208(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_MetaDeviceDescription::CanBeActive(const __CFDictionary **this, HALS_Device *a2)
{
  if (HALS_IODevice::GetTransportType(a2) == 1735554416)
  {
    return 0;
  }

  v4 = atomic_load(a2 + 40);
  if (v4 != -1 && v4 != *(*this + 366))
  {
    return 0;
  }

  TotalNumberChannels = HALS_Device::GetTotalNumberChannels(a2, 1);
  v7 = HALS_Device::GetTotalNumberChannels(a2, 0);
  if ((HALS_MetaDeviceDescription::IsStackRequested(this) & 1) != 0 || (v9 = this[3], this[4] - v9 == 24) && *(v9 + 1) - *v9 >= 9uLL)
  {
    if (v7)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (!(TotalNumberChannels | v7))
  {
    return 0;
  }

LABEL_13:
  NominalSampleRate = HALS_MetaDeviceDescription::GetNominalSampleRate(this, v8);
  for (i = 0; ; ++i)
  {
    v12 = i >= HALS_IODevice::GetNumberStreams(a2, 0);
    result = v12;
    if (v12)
    {
      break;
    }

    v14 = HALS_IODevice::CopyStreamByIndex(a2, 0, i);
    v16 = v14;
    v17 = !v14 || (HALS_Stream::GetCurrentVirtualFormat(v14, &v18), v18.mFormatID == 1819304813) && (v18.mFormatFlags & 0x40) == 0 || NominalSampleRate == v18.mSampleRate || NominalSampleRate == 0.0;
    HALS_ObjectMap::ReleaseObject(v16, v15);
    if (!v17)
    {
      return 0;
    }
  }

  return result;
}

double HALS_MetaDeviceDescription::GetNominalSampleRate(HALS_MetaDeviceDescription *this, unsigned int a2)
{
  v2 = *(this + 13);
  if (v2 || (v2 = *(this + 12)) != 0)
  {
    v3 = HALS_MetaSubDevice::CopyRealIODevice(v2);
    v5 = v3;
    if (v3)
    {
      v6 = (*(*v3 + 272))(v3);
    }

    else
    {
      v6 = 0.0;
    }
  }

  else
  {
    v8 = *(this + 9);
    if (((*(this + 10) - v8) & 0x7FFFFFFF8) == 0)
    {
      return 0.0;
    }

    v9 = HALS_ObjectMap::CopyObjectByObjectID(*(*v8 + 72));
    v5 = v9;
    if (v9)
    {
      v11 = *(v9 + 264);
      v10 = *(v9 + 272);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *(v11 + 24);
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      else
      {
        v6 = *(v11 + 24);
      }
    }

    else
    {
      v6 = 0.0;
    }
  }

  HALS_ObjectMap::ReleaseObject(v5, v4);
  return v6;
}

OS::CF::MutableDictionary *OS::CF::MutableDictionary::MutableDictionary(OS::CF::MutableDictionary *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  }

  *this = &unk_1F598E458;
  *(this + 1) = MutableCopy;
  return this;
}

void HALS_MetaDeviceDescription::UpdateSubDevice(void *a1, uint64_t a2, uint64_t a3)
{
  OS::CF::MutableDictionary::MutableDictionary(v37);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v35, *(a3 + 8), @"uid");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"uid", cf);
  v34[0] = 0;
  v34[1] = 0;
  HALS_System::GetInstance(&v39, 0, v34);
  v6 = v39;
  v7 = cf;
  v31 = 0;
  std::unordered_set<HALS_DeviceManager::DeviceManagerType>::unordered_set(&v32, &v31, 1);
  v8 = HALS_System::CopyDeviceByUID(v6, v7, 0, &v32);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v32);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (v8 && HALS_IODevice::GetTransportType(v8) != 1735554416)
  {
    v11 = HALS_Device::CopyServerLocalizedName(v8);
    v32 = &unk_1F5991188;
    v33 = v11;
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"name", v11);
    OS::CF::UntypedObject::~UntypedObject(&v32);
    TotalNumberChannels = HALS_Device::GetTotalNumberChannels(v8, 1);
    OS::CF::Number::Number<unsigned int>(&v32, TotalNumberChannels);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"channels-in", v33);
    OS::CF::UntypedObject::~UntypedObject(&v32);
    v13 = HALS_Device::GetTotalNumberChannels(v8, 0);
    OS::CF::Number::Number<unsigned int>(&v32, v13);
    v9 = theDict;
    v10 = v33;
  }

  else
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v32, *(a3 + 8), @"name");
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::String>(theDict, @"name", v33);
    OS::CF::UntypedObject::~UntypedObject(&v32);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"channels-in");
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"channels-in", v33);
    OS::CF::UntypedObject::~UntypedObject(&v32);
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"channels-out");
    v9 = theDict;
    v10 = v33;
  }

  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v9, @"channels-out", v10);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  v14 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v39 = &unk_1F5991188;
  v40 = v14;
  v15 = *(a2 + 24);
  for (i = *(a2 + 32); v15 != i; v15 += 3)
  {
    v17 = *v15;
    v18 = v15[1];
    while (v17 != v18)
    {
      v19 = HALS_MetaSubDevice::CopyRealDeviceUID(*v17);
      v32 = &unk_1F5991188;
      v33 = v19;
      if (OS::CF::operator==(v19, v40))
      {
        v20 = *v17;
        OS::CF::UntypedObject::~UntypedObject(&v32);
        if (v20)
        {
          OS::CF::UntypedObject::~UntypedObject(&v39);
          ExtraLatency = HALS_MetaSubDevice::GetExtraLatency(v20, 1);
          OS::CF::Number::Number<unsigned int>(&v32, ExtraLatency);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"latency-in", v33);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          v22 = HALS_MetaSubDevice::GetExtraLatency(v20, 0);
          OS::CF::Number::Number<unsigned int>(&v32, v22);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"latency-out", v33);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          IsDriftCorrectionOn = HALS_MetaSubDevice::IsDriftCorrectionOn(v20);
          OS::CF::Number::Number<int>(&v32, IsDriftCorrectionOn);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift", v33);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          DriftCorrectionAlgorithm = HALS_MetaSubDevice::GetDriftCorrectionAlgorithm(v20);
          OS::CF::Number::Number<unsigned int>(&v32, DriftCorrectionAlgorithm);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift algorithm", v33);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          DriftCorrectionQuality = HALS_MetaSubDevice::GetDriftCorrectionQuality(v20);
          OS::CF::Number::Number<unsigned int>(&v32, DriftCorrectionQuality);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift quality", v33);
          OS::CF::UntypedObject::~UntypedObject(&v32);
          IsSynchPaddingOn = HALS_MetaSubDevice::IsSynchPaddingOn(v20);
          OS::CF::Number::Number<int>(&v32, IsSynchPaddingOn ^ 1);
          v27 = theDict;
          v28 = v33;
          goto LABEL_19;
        }
      }

      else
      {
        OS::CF::UntypedObject::~UntypedObject(&v32);
      }

      ++v17;
    }
  }

  OS::CF::UntypedObject::~UntypedObject(&v39);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"latency-in");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"latency-in", v33);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"latency-out");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"latency-out", v33);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"drift");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift", v33);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"drift algorithm");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift algorithm", v33);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"drift quality");
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"drift quality", v33);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v32, *(a3 + 8), @"don't pad");
  v27 = theDict;
  v28 = v33;
LABEL_19:
  OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(v27, @"don't pad", v28);
  OS::CF::UntypedObject::~UntypedObject(&v32);
  v29 = theDict;
  if (theDict)
  {
    Copy = CFDictionaryCreateCopy(0, theDict);
  }

  else
  {
    Copy = 0;
  }

  *a1 = &unk_1F5991008;
  a1[1] = Copy;
  HALS_ObjectMap::ReleaseObject(v8, v29);
  OS::CF::UntypedObject::~UntypedObject(v35);
  OS::CF::UntypedObject::~UntypedObject(v37);
}

void sub_1DE674AB8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE67474CLL);
}

void sub_1DE674AC4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674718);
}

void sub_1DE674AD0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674A4CLL);
}

void sub_1DE674ADC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674A18);
}

void sub_1DE674AE8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6749E8);
}

void sub_1DE674AF4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6749B8);
}

void sub_1DE674B00(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674988);
}

void sub_1DE674B0C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674954);
}

void sub_1DE674B18(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22)
{
  HALS_ObjectMap::ReleaseObject(v22, a2);
  OS::CF::UntypedObject::~UntypedObject(&a17);
  OS::CF::UntypedObject::~UntypedObject(&a19);
  _Unwind_Resume(a1);
}

uint64_t HALS_Device::CopyServerLocalizedName(HALS_Device *this)
{
  v2 = *(this + 4);
  v5 = 0x676C6F626E616D6CLL;
  v6 = 0;
  v7 = 0;
  (*(*this + 120))(this, v2, &v5, 8, &v6 + 4, &v7, 0, 0, 0);
  result = v7;
  if (!v7)
  {
    v4 = *(this + 4);
    v5 = 0x676C6F626C6E616DLL;
    LODWORD(v6) = 0;
    v9 = 0;
    v8 = 0;
    (*(*this + 120))(this, v4, &v5, 8, &v8, &v9, 0, 0, 0);
    return v9;
  }

  return result;
}

void sub_1DE674C74(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674C64);
}

void sub_1DE674C84(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE674C00);
}

void HALS_MetaDeviceDescription::~HALS_MetaDeviceDescription(HALS_MetaDeviceDescription *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  v4 = (this + 24);
  std::vector<std::vector<std::byte>>::__destroy_vector::operator()[abi:ne200100](&v4);
  OS::CF::UntypedObject::~UntypedObject((this + 8));
}

CFDictionaryRef HALS_MetaDeviceDescription::CopyRawDescription(CFDictionaryRef *this)
{
  HALS_MetaDeviceDescription::UpdateRawDescription(this);
  v2 = this[2];
  if (v2)
  {
    CFRetain(v2);
  }

  return v2;
}

uint64_t HALS_MetaDeviceDescription::GetStackedChannelPolicy(const __CFDictionary **this)
{
  v2 = OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(this[2], @"stacked channel policy");
  if (v2)
  {
    OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(v6, this[2], @"stacked channel policy");
    v3 = OS::CF::Boolean::AsBool(v6[1]);
    OS::CF::UntypedObject::~UntypedObject(v6);
    if (v3)
    {
      return 0;
    }
  }

  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v2);
  return (*(*platform_behaviors + 32))(platform_behaviors);
}

const __CFBoolean *HALS_MetaDeviceDescription::IsHidden(const __CFDictionary **this)
{
  if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(this[2], @"hidden"))
  {
    return 0;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Boolean>(v4, this[2], @"hidden");
  v2 = OS::CF::Boolean::AsBool(v4[1]);
  OS::CF::UntypedObject::~UntypedObject(v4);
  return v2;
}

uint64_t HALS_MetaDeviceDescription::IsolatedUseCaseID(const __CFDictionary **this)
{
  if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(this[2], @"isolated use case"))
  {
    return 0;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(v4, this[2], @"isolated use case");
  v2 = OS::CF::Number::GetValue<unsigned int>(v4[1], 0);
  OS::CF::UntypedObject::~UntypedObject(v4);
  return v2 | 0x100000000;
}

CFTypeRef HALS_MetaDeviceDescription::CopyDeviceName(CFDictionaryRef theDict)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v3, theDict, @"name");
  v1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  OS::CF::UntypedObject::~UntypedObject(&v3);
  return v1;
}

void OS::CF::MutableDictionary::RemoveKey(OS::CF::MutableDictionary *this, const __CFString *a2)
{
  if (this)
  {
    CFDictionaryRemoveValue(this, a2);
  }
}

uint64_t HALS_MetaDeviceDescription::CanBeDefaultDevice(uint64_t ***this, int a2, int a3)
{
  if (HALS_MetaDeviceDescription::IsPrivate(this) & 1) != 0 || (HALS_MetaDeviceDescription::IsHidden(this))
  {
    return 0;
  }

  NumberStreamsExcludingReferenceStreams = HALS_Device::GetNumberStreamsExcludingReferenceStreams(*this, a2);
  v7 = (this[10] - this[9]) >> 3;
  if (!a2)
  {
    LODWORD(v7) = 0;
  }

  if (NumberStreamsExcludingReferenceStreams == v7)
  {
    return 0;
  }

  v9 = this[3];
  v10 = this[4];
  if (v9 == v10)
  {
    return 1;
  }

  do
  {
    v11 = *v9;
    v12 = v9[1];
    while (v11 != v12)
    {
      v13 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*v11);
      v15 = v13;
      v16 = !v13 || !HALS_IODevice::GetNumberStreams(v13, a2) || HALS_Device::CanBeDefaultDevice(v15, a2, a3);
      HALS_ObjectMap::ReleaseObject(v15, v14);
      if (!v16)
      {
        return 0;
      }

      ++v11;
    }

    v9 += 3;
    result = 1;
  }

  while (v9 != v10);
  return result;
}

CFTypeRef HALS_MetaDeviceDescription::CopyTapList(CFDictionaryRef theDict)
{
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(&v3, theDict, @"taps");
  v1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  OS::CF::UntypedObject::~UntypedObject(&v3);
  return v1;
}

void get_tap_sample_rate_range(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = vdupq_n_s64(0x40CF400000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x40D5888000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x40E5888000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x40E7700000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x40F5888000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x40F7700000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
  v2 = vdupq_n_s64(0x4107700000000000uLL);
  CA::ValueRangeList::AddRange(a1, v2.i64);
}

void sub_1DE6751B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_MetaDeviceDescription::GetSubDeviceByIndex(uint64_t **this, uint64_t **a2, int a3)
{
  if (this != a2)
  {
    v3 = 0;
    do
    {
      for (i = *this; i != this[1]; ++i)
      {
        if (v3 == a3)
        {
          v5 = *i;
          v3 = a3;
          if (*i)
          {
            return v5;
          }
        }

        else
        {
          ++v3;
        }
      }

      this += 3;
    }

    while (this != a2);
  }

  return 0;
}

BOOL HALS_MetaDeviceDescription::IsDeviceInRawDescription(CFDictionaryRef *this, const __CFString *cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v26 = &unk_1F5991188;
  v27 = cf;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Array>(v24, this[2], @"subdevices");
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(v25);
  if (Size)
  {
    v5 = Size;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::UntypedObject>(v22, v24, v6);
      TypeID = OS::CF::UntypedObject::GetTypeID(v23);
      if (TypeID == CFDictionaryGetTypeID())
      {
        OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v20, v22);
        if (theDict)
        {
          OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(v18, theDict, @"uid");
          if (v19)
          {
            v9 = OS::CF::operator==(v19, v27);
          }

          else
          {
            v9 = 0;
          }

          OS::CF::UntypedObject::~UntypedObject(v18);
          goto LABEL_27;
        }
      }

      else
      {
        v10 = OS::CF::UntypedObject::GetTypeID(v23);
        if (v10 != CFArrayGetTypeID())
        {
          v9 = 0;
          goto LABEL_28;
        }

        OS::CF::UntypedObject::As<OS::CF::Array>(&v20, v22);
        if (theDict)
        {
          v11 = OS::CF::ArrayBase<__CFArray const*>::GetSize(theDict);
          if (v11)
          {
            v12 = v11;
            v13 = 1;
            do
            {
              OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Dictionary>(v18, &v20, v13 - 1);
              if (v19)
              {
                OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::String>(&v16, v19, @"uid");
                if (theString1)
                {
                  v9 = OS::CF::operator==(theString1, v27);
                }

                else
                {
                  v9 = 0;
                }

                OS::CF::UntypedObject::~UntypedObject(&v16);
              }

              else
              {
                v9 = 0;
              }

              OS::CF::UntypedObject::~UntypedObject(v18);
              if (v9)
              {
                break;
              }
            }

            while (v13++ < v12);
            goto LABEL_27;
          }
        }
      }

      v9 = 0;
LABEL_27:
      OS::CF::UntypedObject::~UntypedObject(&v20);
LABEL_28:
      OS::CF::UntypedObject::~UntypedObject(v22);
      if (!v9)
      {
        v6 = ++v7;
        if (v5 > v7)
        {
          continue;
        }
      }

      goto LABEL_32;
    }
  }

  v9 = 0;
LABEL_32:
  OS::CF::UntypedObject::~UntypedObject(v24);
  OS::CF::UntypedObject::~UntypedObject(&v26);
  return v9;
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::GetValueAtIndex<OS::CF::Array>(const __CFArray *result, uint64_t a2, CFIndex a3)
{
  *result = &unk_1F59910D0;
  *(result + 1) = 0;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = result;
    result = *(a2 + 8);
    if (result)
    {
      result = CFArrayGetCount(result);
      if (result > a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), a3);
        v7 = ValueAtIndex;
        v8 = ValueAtIndex ? CFGetTypeID(ValueAtIndex) : 0;
        result = CFArrayGetTypeID();
        if (v8 == result)
        {
          if (v7)
          {
            CFRetain(v7);
            v9 = v4;
            v10 = v7;
          }

          else
          {
            v9 = v4;
            v10 = 0;
          }

          return OS::CF::UntypedObject::operator=(v9, v10);
        }
      }
    }
  }

  return result;
}

void HALS_MetaDeviceDescription::SetSubDSPTypesForClient(uint64_t a1, void *a2)
{
  OS::CF::MutableDictionary::MutableDictionary(v15, *(a1 + 16));
  if (a2[2])
  {
    v6 = *a2;
    v4 = a2 + 1;
    v5 = v6;
    if (v6 != v4)
    {
      while (1)
      {
        v7 = *(v5 + 7);
        if (v7 == 3)
        {
          break;
        }

        if (v7 == 2)
        {
          v8 = 1;
LABEL_7:
          OS::CF::Number::Number<unsigned int>(&v13, v8);
          OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"vocal isolation type", v14);
          OS::CF::UntypedObject::~UntypedObject(&v13);
        }

        v9 = v5[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v5[2];
            v11 = *v10 == v5;
            v5 = v10;
          }

          while (!v11);
        }

        v5 = v10;
        if (v10 == v4)
        {
          goto LABEL_16;
        }
      }

      v8 = 2;
      goto LABEL_7;
    }
  }

  else
  {
    OS::CF::Number::Number<unsigned int>(&v13, 0);
    OS::CF::MutableDictionary::SetValueForKey<OS::CF::Number>(theDict, @"vocal isolation type", v14);
    OS::CF::UntypedObject::~UntypedObject(&v13);
  }

LABEL_16:
  Copy = theDict;
  if (theDict)
  {
    Copy = CFDictionaryCreateCopy(0, theDict);
  }

  OS::CF::UntypedObject::operator=(a1 + 8, Copy);
  OS::CF::UntypedObject::~UntypedObject(v15);
}

void HALS_MetaDeviceDescription::GetDSPInputSettingsOverride(HALS_MetaDeviceDescription *this, uint64_t a2)
{
  *this = 0;
  v3 = CFStringCreateWithBytes(0, "dsp input settings override", 27, 0x8000100u, 0);
  v7 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!OS::CF::DictionaryBase<__CFDictionary const*>::HasKey(*(a2 + 16), v3))
  {
    goto LABEL_6;
  }

  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Dictionary>(v5, *(a2 + 16), v3);
  if (v6)
  {
    operator new();
  }

  OS::CF::UntypedObject::~UntypedObject(v5);
  v3 = v7;
  if (v7)
  {
LABEL_6:
    CFRelease(v3);
  }
}

void sub_1DE675784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  OS::CF::UntypedObject::~UntypedObject(va);
  applesauce::CF::StringRef::~StringRef(va1);
  std::unique_ptr<DSP_Host_OffloadDictionary>::reset[abi:ne200100](v3, 0);
  _Unwind_Resume(a1);
}

BOOL HALS_MetaDeviceDescription::IsDeviceInRawDescription(CFDictionaryRef *this, HALS_Device *a2)
{
  v3 = (*(*a2 + 216))(a2);
  v6[0] = &unk_1F5991188;
  v6[1] = v3;
  IsDeviceInRawDescription = HALS_MetaDeviceDescription::IsDeviceInRawDescription(this, v3);
  OS::CF::UntypedObject::~UntypedObject(v6);
  return IsDeviceInRawDescription;
}

uint64_t AMCP::DAL::Multi_Reader_Synchronized_Mixer::remove_source(uint64_t a1, const void **a2, int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    AMCP::DAL::Synchronized_Mixer::remove_source(a1, a2, 0);
  }

  os_unfair_lock_lock((a1 + 156));
  v5 = *(a1 + 164);
  *(a1 + 164) = v5 - 1;
  if (v5 == 1)
  {
    *(a1 + 168) = 1;
  }

  else if (v5 <= 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v23 = "Multi_Reader_Synchronized_Mixer.cpp";
      v24 = 1024;
      v25 = 42;
      v26 = 2080;
      v27 = "not (m_refcount >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v21);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v13, "", v11);
    std::logic_error::logic_error(&v14, &v13);
    v14.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v15, &v14);
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = -1;
    v15.__vftable = &unk_1F5991430;
    v16 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v15);
    v28 = "virtual BOOL AMCP::DAL::Multi_Reader_Synchronized_Mixer::remove_source(const Source_ID &, Buffer_Alignment)";
    v29 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Synchronized_Mixer.cpp";
    v30 = 42;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
  }

  os_unfair_lock_unlock((a1 + 156));
  return 0;
}

void sub_1DE675B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  os_unfair_lock_unlock(v27 + 39);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::add_source(os_unfair_lock_s *a1, unsigned int *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    AMCP::DAL::Synchronized_Mixer::add_source(a1, a2, 0);
  }

  os_unfair_lock_lock(a1 + 39);
  os_unfair_lock_opaque = a1[41]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 0x80000000) != 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v22 = "Multi_Reader_Synchronized_Mixer.cpp";
      v23 = 1024;
      v24 = 24;
      v25 = 2080;
      v26 = "not (m_refcount >= 0)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v12, "", v10);
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
    v27 = "virtual void AMCP::DAL::Multi_Reader_Synchronized_Mixer::add_source(const Source_ID &, Buffer_Alignment)";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Synchronized_Mixer.cpp";
    v29 = 24;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  a1[41]._os_unfair_lock_opaque = os_unfair_lock_opaque + 1;

  os_unfair_lock_unlock(a1 + 39);
}

void sub_1DE675E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v29 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v29 - 129));
  os_unfair_lock_unlock(v27 + 39);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::commit_direct_write(os_unfair_lock_s *a1, const void **a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 39);
  AMCP::DAL::Synchronized_Mixer::commit_direct_write(a1, a2, a3);

  os_unfair_lock_unlock(a1 + 39);
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(uint64_t a1, int *a2, void *a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!a4)
  {

    AMCP::DAL::Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(a1, a2, a3);
  }

  os_unfair_lock_lock((a1 + 156));
  v8 = *(a1 + 164);
  if (v8 < 0)
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
      *buf = 136315650;
      v25 = "Multi_Reader_Synchronized_Mixer.cpp";
      v26 = 1024;
      v27 = 76;
      v28 = 2080;
      v29 = "not (m_refcount >= 0)";
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
    v30 = "virtual void AMCP::DAL::Multi_Reader_Synchronized_Mixer::set_anchor_time_and_nominal_buffer_size(const Source_ID &, const DAL_Time_Range &, Buffer_Alignment)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Multi_Reader_Synchronized_Mixer.cpp";
    v32 = 76;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  if (v8 == 1 || *(a1 + 168) == 1)
  {
    *(a1 + 168) = 0;
    AMCP::DAL::Ring_Buffer_Base::set_anchor_time_and_nominal_buffer_size(a1, v7, a3);
  }

  os_unfair_lock_unlock((a1 + 156));
}

void sub_1DE676298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  os_unfair_lock_unlock(v24 + 39);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::get_allowed_read_range(AMCP::DAL::Multi_Reader_Synchronized_Mixer *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 40))
  {
    AMCP::DAL::DAL_Buffer::get_timebase(&v5, this);
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(a2, &v5, 0.0, 4294967300.0);
    v3 = v6;
    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else
  {
    v4 = *(*this + 64);

    v4();
  }
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::get_time_range(AMCP::DAL::Multi_Reader_Synchronized_Mixer *this@<X0>, uint64_t a2@<X8>)
{
  os_unfair_lock_lock(this + 39);
  *a2 = *(this + 8);
  v4 = *(this + 4);
  *(a2 + 16) = *(this + 3);
  *(a2 + 24) = v4;
  v5 = *(this + 5);
  *(a2 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(this + 3);
  v6 = *(this + 9);
  *(a2 + 56) = *(this + 8);
  *(a2 + 64) = v6;
  v7 = *(this + 10);
  *(a2 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(this + 39);
}

void AMCP::DAL::Multi_Reader_Synchronized_Mixer::~Multi_Reader_Synchronized_Mixer(AMCP::DAL::Multi_Reader_Synchronized_Mixer *this)
{
  AMCP::DAL::Synchronized_Mixer::~Synchronized_Mixer(this);

  JUMPOUT(0x1E12C1730);
}

void HALB_AsyncLogMessage::perform(HALB_AsyncLogMessage *this)
{
  v69 = *MEMORY[0x1E69E9840];
  v2 = *(this + 34);
  v3 = mach_absolute_time();
  v4 = v3 * 0.0000000416666667;
  if (*&_LastSyncOffset + 0.5 >= v4)
  {
    v5 = *&_BootAbsoluteTime;
  }

  else
  {
    v3 = gettimeofday(v53, 0);
    _LastSyncOffset = *&v4;
    v5 = *v53 - *MEMORY[0x1E695E470] + *&v53[8] * 0.000001 - v4;
    *&_BootAbsoluteTime = v5;
  }

  v6 = CATimeUtilities::GregorianDateFromAbsoluteTime(v3, v5 + v2 * 0.0000000416666667);
  v8 = llround(v7 * 1000000.0);
  snprintf(__str, 0x40uLL, "%02d:%02d:%02d.%06d", (v6 >> 24) >> 24, SHIDWORD(v6) >> 24, v8 / 1000000, v8 % 1000000);
  if (!*(this + 80))
  {
    goto LABEL_28;
  }

  v9 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 72));
  v11 = v9;
  if (!v9)
  {
    goto LABEL_15;
  }

  v12 = *(v9 + 5);
  if (v12 <= 1701078389)
  {
    if (v12 == 1633773415)
    {
LABEL_13:
      v14 = (*(*v9 + 224))(v9);
      v15 = v14 != 0;
      goto LABEL_16;
    }

    v13 = 1633969526;
  }

  else
  {
    if (v12 == 1701078390 || v12 == 1701733488)
    {
      goto LABEL_13;
    }

    v13 = 1919182198;
  }

  if (v12 == v13)
  {
    goto LABEL_13;
  }

  v16 = *(v9 + 6);
  if (v12 != v16)
  {
    v15 = 0;
    v14 = 0;
    if (v16 <= 1701078389)
    {
      if (v16 == 1633773415)
      {
        goto LABEL_13;
      }

      v52 = 1633969526;
    }

    else
    {
      if (v16 == 1701078390 || v16 == 1919182198)
      {
        goto LABEL_13;
      }

      v52 = 1701733488;
    }

    if (v16 == v52)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_15:
    v14 = 0;
    v15 = 0;
  }

LABEL_16:
  HALS_ObjectMap::ReleaseObject(v11, v10);
  v17 = *(this + 80);
  if (v17 <= 1)
  {
    if (v17)
    {
      if (v17 != 1)
      {
        goto LABEL_31;
      }

      v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (!v25)
        {
          goto LABEL_31;
        }

        v26 = *(this + 35);
        *v53 = 136316418;
        *&v53[4] = "HALB_AsyncLog.cpp";
        *&v53[12] = 1024;
        *&v53[14] = 133;
        v54 = 2080;
        v55 = __str;
        v56 = 2048;
        v57 = v26;
        v58 = 2080;
        v59 = this + 16;
        v60 = 2080;
        v61 = v14;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %s";
      }

      else
      {
        if (!v25)
        {
          goto LABEL_31;
        }

        v50 = *(this + 35);
        v51 = *(this + 36);
        *v53 = 136316418;
        *&v53[4] = "HALB_AsyncLog.cpp";
        *&v53[12] = 1024;
        *&v53[14] = 137;
        v54 = 2080;
        v55 = __str;
        v56 = 2048;
        v57 = v50;
        v58 = 2080;
        v59 = this + 16;
        v60 = 2048;
        v61 = v51;
        v23 = MEMORY[0x1E69E9C10];
        v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %llu";
      }

      v28 = 58;
      goto LABEL_30;
    }

LABEL_28:
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_31;
    }

    v27 = *(this + 35);
    *v53 = 136316162;
    *&v53[4] = "HALB_AsyncLog.cpp";
    *&v53[12] = 1024;
    *&v53[14] = 127;
    v54 = 2080;
    v55 = __str;
    v56 = 2048;
    v57 = v27;
    v58 = 2080;
    v59 = this + 16;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  %s thread %llx: %s";
    v28 = 48;
    goto LABEL_30;
  }

  if (v17 == 2)
  {
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (!v31)
      {
        goto LABEL_31;
      }

      v32 = *(this + 35);
      v33 = *(this + 37);
      *v53 = 136316674;
      *&v53[4] = "HALB_AsyncLog.cpp";
      *&v53[12] = 1024;
      *&v53[14] = 144;
      v54 = 2080;
      v55 = __str;
      v56 = 2048;
      v57 = v32;
      v58 = 2080;
      v59 = this + 16;
      v60 = 2080;
      v61 = v14;
      v62 = 2048;
      v63 = v33;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %s arg2: %llu";
    }

    else
    {
      if (!v31)
      {
        goto LABEL_31;
      }

      v38 = *(this + 35);
      v39 = *(this + 36);
      v40 = *(this + 37);
      *v53 = 136316674;
      *&v53[4] = "HALB_AsyncLog.cpp";
      *&v53[12] = 1024;
      *&v53[14] = 148;
      v54 = 2080;
      v55 = __str;
      v56 = 2048;
      v57 = v38;
      v58 = 2080;
      v59 = this + 16;
      v60 = 2048;
      v61 = v39;
      v62 = 2048;
      v63 = v40;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %llu arg2: %llu";
    }

    v28 = 68;
    goto LABEL_30;
  }

  if (v17 == 3)
  {
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (!v34)
      {
        goto LABEL_31;
      }

      v35 = *(this + 35);
      v36 = *(this + 37);
      v37 = *(this + 38);
      *v53 = 136316930;
      *&v53[4] = "HALB_AsyncLog.cpp";
      *&v53[12] = 1024;
      *&v53[14] = 155;
      v54 = 2080;
      v55 = __str;
      v56 = 2048;
      v57 = v35;
      v58 = 2080;
      v59 = this + 16;
      v60 = 2080;
      v61 = v14;
      v62 = 2048;
      v63 = v36;
      v64 = 2048;
      v65 = v37;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %s arg2: %llu arg3: %llu";
    }

    else
    {
      if (!v34)
      {
        goto LABEL_31;
      }

      v41 = *(this + 35);
      v42 = *(this + 36);
      v43 = *(this + 37);
      v44 = *(this + 38);
      *v53 = 136316930;
      *&v53[4] = "HALB_AsyncLog.cpp";
      *&v53[12] = 1024;
      *&v53[14] = 159;
      v54 = 2080;
      v55 = __str;
      v56 = 2048;
      v57 = v41;
      v58 = 2080;
      v59 = this + 16;
      v60 = 2048;
      v61 = v42;
      v62 = 2048;
      v63 = v43;
      v64 = 2048;
      v65 = v44;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %llu arg2: %llu arg3: %llu";
    }

    v28 = 78;
LABEL_30:
    _os_log_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_DEFAULT, v24, v53, v28);
    goto LABEL_31;
  }

  if (v17 != 4)
  {
    goto LABEL_31;
  }

  v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (!v18)
    {
      goto LABEL_31;
    }

    v19 = *(this + 35);
    v20 = *(this + 37);
    v21 = *(this + 38);
    v22 = *(this + 39);
    *v53 = 136317186;
    *&v53[4] = "HALB_AsyncLog.cpp";
    *&v53[12] = 1024;
    *&v53[14] = 166;
    v54 = 2080;
    v55 = __str;
    v56 = 2048;
    v57 = v19;
    v58 = 2080;
    v59 = this + 16;
    v60 = 2080;
    v61 = v14;
    v62 = 2048;
    v63 = v20;
    v64 = 2048;
    v65 = v21;
    v66 = 2048;
    v67 = v22;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %s arg2: %llu arg3: %llu arg4: %llu";
    goto LABEL_50;
  }

  if (v18)
  {
    v45 = *(this + 35);
    v46 = *(this + 36);
    v47 = *(this + 37);
    v48 = *(this + 38);
    v49 = *(this + 39);
    *v53 = 136317186;
    *&v53[4] = "HALB_AsyncLog.cpp";
    *&v53[12] = 1024;
    *&v53[14] = 170;
    v54 = 2080;
    v55 = __str;
    v56 = 2048;
    v57 = v45;
    v58 = 2080;
    v59 = this + 16;
    v60 = 2048;
    v61 = v46;
    v62 = 2048;
    v63 = v47;
    v64 = 2048;
    v65 = v48;
    v66 = 2048;
    v67 = v49;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  %s thread %llx: %s: arg1: %llu arg2: %llu arg3: %llu arg4: %llu";
LABEL_50:
    v28 = 88;
    goto LABEL_30;
  }

LABEL_31:
  v29 = *(this + 41);
  if (v29)
  {
    v30 = atomic_load((v29 + 32));
    if (v30)
    {
      OSAtomicEnqueue((v29 + 16), this, 0x150uLL);
    }

    else
    {
      (*(*this + 8))(this);
    }
  }
}

void std::shared_ptr<HALB_CommandGate>::shared_ptr[abi:ne200100]<HALB_CommandGate,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1DE676E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<HALB_CommandGate>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

HALB_Mutex **std::unique_ptr<HALB_CommandGate>::~unique_ptr[abi:ne200100](HALB_Mutex **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    HALB_Mutex::~HALB_Mutex(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

uint64_t std::__shared_ptr_pointer<HALB_CommandGate *,std::shared_ptr<HALB_CommandGate>::__shared_ptr_default_delete<HALB_CommandGate,HALB_CommandGate>,std::allocator<HALB_CommandGate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI16HALB_CommandGateE27__shared_ptr_default_deleteIS1_S1_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

HALB_Mutex *std::__shared_ptr_pointer<HALB_CommandGate *,std::shared_ptr<HALB_CommandGate>::__shared_ptr_default_delete<HALB_CommandGate,HALB_CommandGate>,std::allocator<HALB_CommandGate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    HALB_Mutex::~HALB_Mutex(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<HALB_CommandGate *,std::shared_ptr<HALB_CommandGate>::__shared_ptr_default_delete<HALB_CommandGate,HALB_CommandGate>,std::allocator<HALB_CommandGate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t (**std::any_cast[abi:ne200100]<std::string const>(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void std::__throw_bad_any_cast[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = std::bad_any_cast::bad_any_cast(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5400], std::bad_any_cast::~bad_any_cast);
}

uint64_t (**std::any_cast[abi:ne200100]<unsigned int const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x1E69E5480], &std::__any_imp::__unique_typeinfo<unsigned int>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

std::bad_cast *std::bad_any_cast::bad_any_cast(std::bad_any_cast *this)
{
  result = std::bad_cast::bad_cast(this);
  result->__vftable = (MEMORY[0x1E69E55A0] + 16);
  return result;
}

void HALB_CaptureFile_NameBuilder::FindAndBuild(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v5 = a1;
  v33 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    while (*v5 != a3)
    {
      v5 += 40;
      if (v5 == a2)
      {
        return;
      }
    }
  }

  if (v5 != a2)
  {
    v6 = *v5;
    if (*v5 <= 3)
    {
      if (v6 <= 1)
      {
        if (v6)
        {
          if (v6 != 1)
          {
            return;
          }

          v7 = std::any_cast[abi:ne200100]<std::string const>((v5 + 8));
          if (!v7)
          {
            std::__throw_bad_any_cast[abi:ne200100]();
          }

          if (*(v7 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v7, v7[1]);
          }

          else
          {
            v8 = *v7;
            __p.__r_.__value_.__r.__words[2] = v7[2];
            *&__p.__r_.__value_.__l.__data_ = v8;
          }

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
        }

        else
        {
          v16 = std::any_cast[abi:ne200100]<std::string const>((v5 + 8));
          if (!v16)
          {
            std::__throw_bad_any_cast[abi:ne200100]();
          }

          if (*(v16 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *v16, v16[1]);
          }

          else
          {
            v17 = *v16;
            __p.__r_.__value_.__r.__words[2] = v16[2];
            *&__p.__r_.__value_.__l.__data_ = v17;
          }

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
        }

LABEL_71:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return;
      }

      if (v6 != 2)
      {
        if (v6 != 3)
        {
          return;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "-Index_", 7);
        goto LABEL_33;
      }

      v21 = *(v5 + 8);
      v20 = v5 + 8;
      v19 = v21;
      if (!v21)
      {
        goto LABEL_77;
      }

      if (!v22)
      {
        goto LABEL_77;
      }

      v23 = *v22 == 1;
      if (*v22 == 1)
      {
        v13 = "-in";
      }

      else
      {
        v13 = "-out";
      }

      v24 = 3;
      goto LABEL_47;
    }

    if (v6 > 5)
    {
      if (v6 != 6)
      {
        if (v6 != 7)
        {
          return;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "-", 1);
        v14 = std::any_cast[abi:ne200100]<std::string const>((v5 + 8));
        if (!v14)
        {
          std::__throw_bad_any_cast[abi:ne200100]();
        }

        if (*(v14 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v14, v14[1]);
        }

        else
        {
          v15 = *v14;
          __p.__r_.__value_.__r.__words[2] = v14[2];
          *&__p.__r_.__value_.__l.__data_ = v15;
        }

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

        goto LABEL_71;
      }

      v27 = *(v5 + 8);
      v26 = v5 + 8;
      v25 = v27;
      if (v27)
      {
        if (v28)
        {
          v23 = *v28 == 0;
          if (*v28)
          {
            v13 = "-PostDSP";
          }

          else
          {
            v13 = "-PreDSP";
          }

          v24 = 7;
LABEL_47:
          if (v23)
          {
            v29 = v24;
          }

          else
          {
            v29 = v24 + 1;
          }

LABEL_75:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, v13, v29);
          return;
        }
      }
    }

    else
    {
      if (v6 == 4)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a4, "-", 1);
LABEL_33:
        v18 = std::any_cast[abi:ne200100]<unsigned int const>((v5 + 8));
        if (v18)
        {
          MEMORY[0x1E12C1210](a4, *v18);
          return;
        }

        goto LABEL_77;
      }

      if (v6 != 5)
      {
        return;
      }

      v11 = *(v5 + 8);
      v10 = v5 + 8;
      v9 = v11;
      if (v11)
      {
        if (v12)
        {
          if (*v12 == 1)
          {
            v13 = "-software_reference";
          }

          else
          {
            if (*v12 != 2)
            {
              return;
            }

            v13 = "-hardware_reference";
          }

          v29 = 19;
          goto LABEL_75;
        }
      }
    }

LABEL_77:
    std::__throw_bad_any_cast[abi:ne200100]();
  }
}

void sub_1DE67742C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 __p, int a10, __int16 a11, char a12, char a13)
{
  if (a2)
  {
    if (a13 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p) = 136315394;
      *(&__p + 4) = "HALB_CaptureFile_NameBuilder.cpp";
      WORD6(__p) = 1024;
      *(&__p + 14) = 66;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_CaptureFile_NameBuilder::BuildOne: Caught exception", &__p, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE6773E0);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(uint64_t a1, char *__src, unint64_t a3, char *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = __src;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (a3 <= (v9 - v8) >> 5)
    {
      v14 = v8 - __src;
      v15 = *(a1 + 8);
      v16 = a3;
      if (a3 <= (v8 - __src) >> 5)
      {
        goto LABEL_16;
      }

      v17 = 0;
      v16 = v14 >> 5;
      v15 = &v8[32 * (a3 - (v14 >> 5))];
      v18 = 32 * a3 - 32 * (v14 >> 5);
      do
      {
        v19 = &v8[v17];
        v20 = *(a4 + 1);
        *v19 = *a4;
        *(v19 + 1) = v20;
        v17 += 32;
      }

      while (v18 != v17);
      *(a1 + 8) = v15;
      if (v8 != __src)
      {
LABEL_16:
        v21 = &__src[32 * a3];
        v22 = &v15[-32 * a3];
        v23 = v15;
        if (v22 < v8)
        {
          v23 = v15;
          do
          {
            v24 = *v22;
            v25 = *(v22 + 1);
            v22 += 32;
            *v23 = v24;
            *(v23 + 1) = v25;
            v23 += 32;
          }

          while (v22 < v8);
        }

        *(a1 + 8) = v23;
        if (v15 != v21)
        {
          memmove(&__src[32 * a3], __src, v15 - v21);
        }

        if (v6 <= v4)
        {
          if (*(a1 + 8) <= v4)
          {
            v26 = 0;
          }

          else
          {
            v26 = a3;
          }

          v4 += 32 * v26;
        }

        do
        {
          v27 = *(v4 + 1);
          *v6 = *v4;
          *(v6 + 1) = v27;
          v6 += 32;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 + (&v8[-*a1] >> 5);
      if (v11 >> 59)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v12 = v9 - v10;
      if (v12 >> 4 > v11)
      {
        v11 = v12 >> 4;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFE0)
      {
        v13 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v28 = 32 * ((__src - v10) >> 5);
      v29 = (v28 + 32 * a3);
      v30 = 32 * a3;
      v31 = v28;
      do
      {
        v32 = *(a4 + 1);
        *v31 = *a4;
        v31[1] = v32;
        v31 += 2;
        v30 -= 32;
      }

      while (v30);
      v33 = *(a1 + 8) - __src;
      memcpy(v29, __src, v33);
      v34 = &v29[v33];
      *(a1 + 8) = v6;
      v35 = *a1;
      v36 = &v6[-*a1];
      v37 = v28 - v36;
      memcpy((v28 - v36), *a1, v36);
      *a1 = v37;
      *(a1 + 8) = v34;
      *(a1 + 16) = 0;
      if (v35)
      {

        operator delete(v35);
      }
    }
  }
}

void ramstadPrecalculateCoeffs<float>(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, float *a6, double a7)
{
  if (a1 >= 1)
  {
    v9 = a7 * 3.14159265;
    v10 = (a4 + 176);
    v11 = a1;
    v12 = (a2 + 8);
    v13 = (a3 + 8);
    do
    {
      v14 = v9 * *(v12 - 1);
      v15 = v9 * *v12;
      v16 = exp(v14);
      v17 = (v16 + v16) * cos(v15);
      *a5++ = v17;
      v18 = exp(v14 + v14);
      *a6++ = -v18;
      v19 = v9 * *(v13 - 1);
      v20 = v9 * *v13;
      v21 = hypot(v19, v20);
      *(v10 - 22) = v21 + v21;
      *(v10 - 11) = atan2(v20, v19);
      *v10 = v14;
      v10[22] = v16;
      v10[11] = v15;
      v12 += 2;
      v13 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }
}

void ramstadBackEndCoeffs<float>(unsigned int a1, uint64_t a2, float *a3, _DWORD *a4, double a5)
{
  if (a1 >= 1)
  {
    v8 = (a2 + 176);
    v9 = a1;
    do
    {
      v10 = *(v8 - 22);
      v11 = v10 * exp(*v8 * a5);
      v12 = *(v8 - 11);
      v13 = v8[11];
      v14 = cos(v12 + v13 * a5);
      v15 = v8[22];
      v16 = cos(v12 - v13 + v13 * a5);
      v17 = v11 * v14;
      *a3++ = v17;
      *&v16 = v11 * -(v15 * v16);
      *a4++ = LODWORD(v16);
      ++v8;
      --v9;
    }

    while (v9);
  }
}

void _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(uint64_t a1, char *__src, unint64_t a3, char *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = __src;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (a3 <= (v9 - v8) >> 6)
    {
      v14 = v8 - __src;
      v15 = *(a1 + 8);
      v16 = a3;
      if (a3 <= (v8 - __src) >> 6)
      {
        goto LABEL_16;
      }

      v17 = 0;
      v16 = v14 >> 6;
      v15 = &v8[64 * (a3 - (v14 >> 6))];
      v18 = (a3 << 6) - (v14 >> 6 << 6);
      do
      {
        v19 = &v8[v17];
        v21 = *a4;
        v20 = *(a4 + 1);
        v22 = *(a4 + 3);
        *(v19 + 2) = *(a4 + 2);
        *(v19 + 3) = v22;
        *v19 = v21;
        *(v19 + 1) = v20;
        v17 += 64;
      }

      while (v18 != v17);
      *(a1 + 8) = v15;
      if (v8 != __src)
      {
LABEL_16:
        v23 = &__src[64 * a3];
        v24 = &v15[-64 * a3];
        v25 = v15;
        if (v24 < v8)
        {
          v25 = v15;
          do
          {
            v27 = *v24;
            v26 = *(v24 + 1);
            v28 = *(v24 + 3);
            *(v25 + 2) = *(v24 + 2);
            *(v25 + 3) = v28;
            *v25 = v27;
            *(v25 + 1) = v26;
            v25 += 64;
            v24 += 64;
          }

          while (v24 < v8);
        }

        *(a1 + 8) = v25;
        if (v15 != v23)
        {
          memmove(&__src[64 * a3], __src, v15 - v23);
        }

        if (v6 <= v4)
        {
          if (*(a1 + 8) <= v4)
          {
            v29 = 0;
          }

          else
          {
            v29 = a3;
          }

          v4 += 64 * v29;
        }

        do
        {
          v31 = *v4;
          v30 = *(v4 + 1);
          v32 = *(v4 + 3);
          *(v6 + 2) = *(v4 + 2);
          *(v6 + 3) = v32;
          *v6 = v31;
          *(v6 + 1) = v30;
          v6 += 64;
          --v16;
        }

        while (v16);
      }
    }

    else
    {
      v10 = *a1;
      v11 = a3 + (&v8[-*a1] >> 6);
      if (v11 >> 58)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v12 = v9 - v10;
      if (v12 >> 5 > v11)
      {
        v11 = v12 >> 5;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFC0)
      {
        v13 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        if (!(v13 >> 58))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v33 = (__src - v10) >> 6 << 6;
      v34 = (v33 + (a3 << 6));
      v35 = a3 << 6;
      v36 = v33;
      do
      {
        v38 = *a4;
        v37 = *(a4 + 1);
        v39 = *(a4 + 3);
        v36[2] = *(a4 + 2);
        v36[3] = v39;
        *v36 = v38;
        v36[1] = v37;
        v36 += 4;
        v35 -= 64;
      }

      while (v35);
      v40 = *(a1 + 8) - __src;
      memcpy(v34, __src, v40);
      v41 = &v34[v40];
      *(a1 + 8) = v6;
      v42 = *a1;
      v43 = &v6[-*a1];
      v44 = v33 - v43;
      memcpy((v33 - v43), *a1, v43);
      *a1 = v44;
      *(a1 + 8) = v41;
      *(a1 + 16) = 0;
      if (v42)
      {

        operator delete(v42);
      }
    }
  }
}

void ramstadPrecalculateCoeffs<double>(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, long double *a5, long double *a6, double a7)
{
  if (a1 >= 1)
  {
    v9 = a7 * 3.14159265;
    v10 = (a4 + 176);
    v11 = a1;
    v12 = (a2 + 8);
    v13 = (a3 + 8);
    do
    {
      v14 = v9 * *(v12 - 1);
      v15 = v9 * *v12;
      v16 = exp(v14);
      *a5++ = (v16 + v16) * cos(v15);
      *a6++ = -exp(v14 + v14);
      v17 = v9 * *(v13 - 1);
      v18 = v9 * *v13;
      v19 = hypot(v17, v18);
      *(v10 - 22) = v19 + v19;
      *(v10 - 11) = atan2(v18, v17);
      *v10 = v14;
      v10[22] = v16;
      v10[11] = v15;
      v12 += 2;
      v13 += 2;
      ++v10;
      --v11;
    }

    while (v11);
  }
}

void ramstadBackEndCoeffs<double>(unsigned int a1, uint64_t a2, double *a3, double *a4, double a5)
{
  if (a1 >= 1)
  {
    v8 = (a2 + 176);
    v9 = a1;
    do
    {
      v10 = *(v8 - 22);
      v11 = v10 * exp(*v8 * a5);
      v12 = *(v8 - 11);
      v13 = v8[11];
      v14 = cos(v12 + v13 * a5);
      v15 = v8[22];
      v16 = cos(v12 - v13 + v13 * a5);
      *a3++ = v11 * v14;
      *a4++ = v11 * -(v15 * v16);
      ++v8;
      --v9;
    }

    while (v9);
  }
}

_DWORD *std::vector<float>::assign(uint64_t *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v8 = v6 >> 1;
    if (v6 >> 1 <= a2)
    {
      v8 = a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<unsigned int>::__vallocate[abi:ne200100](a1, v9);
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    a4.i32[0] = *a3;
    v13 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = result + 2;
    v16 = 1;
    do
    {
      v17 = vdupq_n_s64(v16 - 1);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE757E30)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v15 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v15 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_1DE757E20)))).i32[1])
      {
        *v15 = a4.i32[0];
        v15[1] = a4.i32[0];
      }

      v16 += 4;
      v15 += 4;
      v13 -= 4;
    }

    while (v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    a4.i32[0] = *a3;
    v21 = (4 * a2 - (v10 - result) - 4) >> 2;
    v22 = (v21 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v23 = vdupq_n_s64(v21);
    v24 = (v10 + 8);
    v25 = 1;
    do
    {
      v26 = vdupq_n_s64(v25 - 1);
      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_1DE757E30)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v24 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v24 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_1DE757E20)))).i32[1])
      {
        *v24 = a4.i32[0];
        v24[1] = a4.i32[0];
      }

      v25 += 4;
      v24 += 4;
      v22 -= 4;
    }

    while (v22);
    v28 = (v10 + 4 * v20);
  }

  else
  {
    v28 = &result[a2];
  }

  a1[1] = v28;
  return result;
}

uint64_t boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(__int128 *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = qword_1ECDAE3C0;
  v2 = qword_1ECDAE3C8;
  if (qword_1ECDAE3C0)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1ECDAE3C8 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v5 = qword_1ECDAE3C0;
  if (qword_1ECDAE3C8)
  {
    v5 = qword_1ECDAE3C0;
    v6 = qword_1ECDAE3C8;
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v5 + 40 * (v6 >> 1), a1) == 255)
      {
        v5 += 40 * (v6 >> 1) + 40;
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }
    }

    while (v6);
  }

  v7 = (v1 + 40 * v2);
  v8 = v7;
  if (v5 == v7)
  {
    goto LABEL_18;
  }

  if (!v5)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v8 = v5;
  if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a1, v5) == 0xFF)
  {
LABEL_18:
    v25 = *a1;
    v9 = *(a1 + 2);
    v27[0] = 0;
    v27[1] = 0;
    v26 = v9;
    v10 = "this->priv_in_range_or_end(hint)";
    v11 = 879;
    v12 = "flat_tree.hpp";
    v13 = "insert_unique";
    if (v1 > v8 || v8 > v7)
    {
      goto LABEL_60;
    }

    v23 = 0;
    if (v8 != v7)
    {
      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v25, v8) != 0xFF)
      {
        v24 = v7;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(v8, &v24, &v25, &v23))
        {
          goto LABEL_43;
        }

LABEL_32:
        v14 = v23;
        if (qword_1ECDAE3C0 > v23)
        {
          goto LABEL_57;
        }

        if (!qword_1ECDAE3C0 && qword_1ECDAE3C8)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v15 = qword_1ECDAE3C0 + 40 * qword_1ECDAE3C8;
        if (v23 > v15)
        {
LABEL_57:
          v10 = "this->priv_in_range_or_end(position)";
          v11 = 1862;
          v12 = "vector.hpp";
          v13 = "emplace";
        }

        else
        {
          if (qword_1ECDAE3D0 >= qword_1ECDAE3C8)
          {
            if (qword_1ECDAE3D0 == qword_1ECDAE3C8)
            {
              boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>(&v22, v23, &v25);
            }

            else
            {
              if (v15 == v23)
              {
                v20 = v25;
                *(v15 + 16) = v26;
                *v15 = v20;
                *(v15 + 24) = *v27;
                v27[0] = 0;
                v27[1] = 0;
                ++qword_1ECDAE3C8;
              }

              else
              {
                v16 = v15 - 40;
                *v15 = *(v15 - 40);
                *(v15 + 16) = *(v15 - 24);
                *(v15 + 24) = *(v15 - 16);
                *(v15 - 16) = 0;
                *(v15 - 8) = 0;
                ++qword_1ECDAE3C8;
                if ((v15 - 40) != v14)
                {
                  do
                  {
                    v17 = (v16 - 40);
                    boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v16, v16 - 40);
                    v16 = v17;
                  }

                  while (v17 != v14);
                }

                *v14 = v25;
                v14[16] = v26;
                v18 = *v27;
                v27[0] = 0;
                v27[1] = 0;
                v19 = *(v14 + 4);
                *(v14 + 24) = v18;
                if (v19)
                {
                  std::__shared_weak_count::__release_weak(v19);
                }
              }

              v22 = v14;
            }

            goto LABEL_48;
          }

          v10 = "this->m_holder.capacity() >= this->m_holder.m_size";
          v11 = 2821;
          v12 = "vector.hpp";
          v13 = "priv_insert_forward_range";
        }

LABEL_60:
        __assert_rtn(v13, v12, v11, v10);
      }

      v7 = v8;
    }

    v23 = v7;
    if (v7 != v1)
    {
      if (!v7)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>((v7 - 40), &v25) != 0xFF)
      {
        if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v25, (v7 - 40)) != 0xFF)
        {
          v23 = (v7 - 40);
          goto LABEL_43;
        }

        v24 = v7 - 40;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(v1, &v24, &v25, &v23))
        {
LABEL_43:
          if (!qword_1ECDAE3C0 && v23)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

          v22 = v23;
LABEL_48:
          if (v27[1])
          {
            std::__shared_weak_count::__release_weak(v27[1]);
          }

          v5 = v22;
          if (!v22)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          return v5 + 24;
        }
      }
    }

    goto LABEL_32;
  }

  return v5 + 24;
}

void sub_1DE678560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__shared_ptr_emplace<RamstadKernel>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<RamstadKernel>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5987670;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 1;
  }

  if (*a1 == *a2)
  {
    v3 = *(a1 + 4);
    v4 = *(a2 + 4);
    v5 = v3 == v4;
    v2 = v3 < v4 ? 0xFFFFFFFFLL : 1;
    if (v5)
    {
      v6 = *(a1 + 8);
      v7 = *(a2 + 8);
      if (v6 == v7)
      {
        LODWORD(v2) = 0;
      }

      else
      {
        LODWORD(v2) = -127;
      }

      if (v6 > v7)
      {
        LODWORD(v2) = 1;
      }

      if (v6 < v7)
      {
        v2 = 0xFFFFFFFFLL;
      }

      else
      {
        v2 = v2;
      }

      if (!v2)
      {
        v8 = *(a1 + 16);
        v9 = *(a2 + 16);
        v10 = v8 == v9;
        if (v8 < v9)
        {
          LODWORD(v2) = -1;
        }

        else
        {
          LODWORD(v2) = 1;
        }

        if (v10)
        {
          return 0;
        }

        else
        {
          return v2;
        }
      }
    }
  }

  return v2;
}

void boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>(void *a1, const char *a2, __int128 *a3)
{
  if (qword_1ECDAE3D0 != qword_1ECDAE3C8)
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (qword_1ECDAE3D0 == 0x333333333333333)
  {
    goto LABEL_30;
  }

  if (qword_1ECDAE3D0 >> 61 > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * qword_1ECDAE3D0;
  }

  if (qword_1ECDAE3D0 >> 61)
  {
    v4 = v3;
  }

  else
  {
    v4 = 8 * qword_1ECDAE3D0 / 5uLL;
  }

  v5 = qword_1ECDAE3D0 + 1;
  if (v4 >= 0x333333333333333)
  {
    v4 = 0x333333333333333;
  }

  v6 = v5 > v4 ? qword_1ECDAE3D0 + 1 : v4;
  if (v5 > 0x333333333333333)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v10 = qword_1ECDAE3C0;
  v11 = operator new(40 * v6);
  v12 = v11;
  v13 = qword_1ECDAE3C0;
  v14 = (qword_1ECDAE3C0 + 40 * qword_1ECDAE3C8);
  v15 = v11;
  if (qword_1ECDAE3C0 != a2)
  {
    v16 = qword_1ECDAE3C0;
    v15 = v11;
    do
    {
      v17 = *v16;
      *(v15 + 2) = *(v16 + 16);
      *v15 = v17;
      *(v15 + 24) = *(v16 + 24);
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      v16 += 40;
      v15 += 40;
    }

    while (v16 != a2);
  }

  v18 = *a3;
  *(v15 + 2) = *(a3 + 2);
  *v15 = v18;
  *(v15 + 24) = *(a3 + 24);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  if (v14 != a2)
  {
    v19 = v15 + 64;
    v20 = a2;
    do
    {
      v21 = *v20;
      *(v19 - 1) = *(v20 + 2);
      *(v19 - 24) = v21;
      *v19 = *(v20 + 24);
      v19 = (v19 + 40);
      *(v20 + 3) = 0;
      *(v20 + 4) = 0;
      v20 += 40;
    }

    while (v20 != v14);
  }

  if (v13)
  {
    v22 = qword_1ECDAE3C8;
    if (qword_1ECDAE3C8)
    {
      v23 = (v13 + 32);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_weak(*v23);
        }

        v23 += 5;
        --v22;
      }

      while (v22);
    }

    operator delete(qword_1ECDAE3C0);
  }

  qword_1ECDAE3C0 = v12;
  ++qword_1ECDAE3C8;
  qword_1ECDAE3D0 = v6;
  *a1 = &a2[v12 - v10];
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>>>>::priv_insert_unique_prepare(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 3);
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

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v7 + 40 * (v8 >> 1), a3) == 255)
      {
        v7 += 40 * (v8 >> 1) + 40;
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 >>= 1;
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

  return std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a3, v7) == 0xFF;
}

uint64_t boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = qword_1ECDAE360;
  v2 = qword_1ECDAE368;
  if (qword_1ECDAE360)
  {
    v3 = 1;
  }

  else
  {
    v3 = qword_1ECDAE368 == 0;
  }

  if (!v3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v5 = qword_1ECDAE360;
  if (qword_1ECDAE368)
  {
    v5 = qword_1ECDAE360;
    v6 = qword_1ECDAE368;
    do
    {
      if (v6 != 1 && !v5)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v5 + 40 * (v6 >> 1), a1) == 255)
      {
        v5 += 40 * (v6 >> 1) + 40;
        v6 += ~(v6 >> 1);
      }

      else
      {
        v6 >>= 1;
      }
    }

    while (v6);
  }

  v7 = (v1 + 40 * v2);
  v8 = v7;
  if (v5 == v7)
  {
    goto LABEL_18;
  }

  if (!v5)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  v8 = v5;
  if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a1, v5) == 0xFF)
  {
LABEL_18:
    v25 = *a1;
    v9 = *(a1 + 16);
    v27[0] = 0;
    v27[1] = 0;
    v26 = v9;
    v10 = "this->priv_in_range_or_end(hint)";
    v11 = 879;
    v12 = "flat_tree.hpp";
    v13 = "insert_unique";
    if (v1 > v8 || v8 > v7)
    {
      goto LABEL_60;
    }

    v23 = 0;
    if (v8 != v7)
    {
      if (!v8)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v25, v8) != 0xFF)
      {
        v24 = v7;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(v8, &v24, &v25, &v23))
        {
          goto LABEL_43;
        }

LABEL_32:
        v14 = v23;
        if (qword_1ECDAE360 > v23)
        {
          goto LABEL_57;
        }

        if (!qword_1ECDAE360 && qword_1ECDAE368)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v15 = qword_1ECDAE360 + 40 * qword_1ECDAE368;
        if (v23 > v15)
        {
LABEL_57:
          v10 = "this->priv_in_range_or_end(position)";
          v11 = 1862;
          v12 = "vector.hpp";
          v13 = "emplace";
        }

        else
        {
          if (qword_1ECDAE370 >= qword_1ECDAE368)
          {
            if (qword_1ECDAE370 == qword_1ECDAE368)
            {
              boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>(&v22, v23, &v25);
            }

            else
            {
              if (v15 == v23)
              {
                v20 = v25;
                *(v15 + 16) = v26;
                *v15 = v20;
                *(v15 + 24) = *v27;
                v27[0] = 0;
                v27[1] = 0;
                ++qword_1ECDAE368;
              }

              else
              {
                v16 = v15 - 40;
                *v15 = *(v15 - 40);
                *(v15 + 16) = *(v15 - 24);
                *(v15 + 24) = *(v15 - 16);
                *(v15 - 16) = 0;
                *(v15 - 8) = 0;
                ++qword_1ECDAE368;
                if ((v15 - 40) != v14)
                {
                  do
                  {
                    v17 = (v16 - 40);
                    boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v16, v16 - 40);
                    v16 = v17;
                  }

                  while (v17 != v14);
                }

                *v14 = v25;
                v14[16] = v26;
                v18 = *v27;
                v27[0] = 0;
                v27[1] = 0;
                v19 = *(v14 + 4);
                *(v14 + 24) = v18;
                if (v19)
                {
                  std::__shared_weak_count::__release_weak(v19);
                }
              }

              v22 = v14;
            }

            goto LABEL_48;
          }

          v10 = "this->m_holder.capacity() >= this->m_holder.m_size";
          v11 = 2821;
          v12 = "vector.hpp";
          v13 = "priv_insert_forward_range";
        }

LABEL_60:
        __assert_rtn(v13, v12, v11, v10);
      }

      v7 = v8;
    }

    v23 = v7;
    if (v7 != v1)
    {
      if (!v7)
      {
        __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
      }

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>((v7 - 40), &v25) != 0xFF)
      {
        if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(&v25, (v7 - 40)) != 0xFF)
        {
          v23 = (v7 - 40);
          goto LABEL_43;
        }

        v24 = v7 - 40;
        if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(v1, &v24, &v25, &v23))
        {
LABEL_43:
          if (!qword_1ECDAE360 && v23)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

          v22 = v23;
LABEL_48:
          if (v27[1])
          {
            std::__shared_weak_count::__release_weak(v27[1]);
          }

          v5 = v22;
          if (!v22)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          return v5 + 24;
        }
      }
    }

    goto LABEL_32;
  }

  return v5 + 24;
}

void sub_1DE678EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__shared_ptr_emplace<RamstadKernelD>::__on_zero_shared(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<RamstadKernelD>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5987620;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void boost::container::vector<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>*,boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>(void *a1, const char *a2, __int128 *a3)
{
  if (qword_1ECDAE370 != qword_1ECDAE368)
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (qword_1ECDAE370 == 0x333333333333333)
  {
    goto LABEL_30;
  }

  if (qword_1ECDAE370 >> 61 > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * qword_1ECDAE370;
  }

  if (qword_1ECDAE370 >> 61)
  {
    v4 = v3;
  }

  else
  {
    v4 = 8 * qword_1ECDAE370 / 5uLL;
  }

  v5 = qword_1ECDAE370 + 1;
  if (v4 >= 0x333333333333333)
  {
    v4 = 0x333333333333333;
  }

  v6 = v5 > v4 ? qword_1ECDAE370 + 1 : v4;
  if (v5 > 0x333333333333333)
  {
LABEL_30:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v10 = qword_1ECDAE360;
  v11 = operator new(40 * v6);
  v12 = v11;
  v13 = qword_1ECDAE360;
  v14 = (qword_1ECDAE360 + 40 * qword_1ECDAE368);
  v15 = v11;
  if (qword_1ECDAE360 != a2)
  {
    v16 = qword_1ECDAE360;
    v15 = v11;
    do
    {
      v17 = *v16;
      *(v15 + 2) = *(v16 + 16);
      *v15 = v17;
      *(v15 + 24) = *(v16 + 24);
      *(v16 + 24) = 0;
      *(v16 + 32) = 0;
      v16 += 40;
      v15 += 40;
    }

    while (v16 != a2);
  }

  v18 = *a3;
  *(v15 + 2) = *(a3 + 2);
  *v15 = v18;
  *(v15 + 24) = *(a3 + 24);
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  if (v14 != a2)
  {
    v19 = v15 + 64;
    v20 = a2;
    do
    {
      v21 = *v20;
      *(v19 - 1) = *(v20 + 2);
      *(v19 - 24) = v21;
      *v19 = *(v20 + 24);
      v19 = (v19 + 40);
      *(v20 + 3) = 0;
      *(v20 + 4) = 0;
      v20 += 40;
    }

    while (v20 != v14);
  }

  if (v13)
  {
    v22 = qword_1ECDAE368;
    if (qword_1ECDAE368)
    {
      v23 = (v13 + 32);
      do
      {
        if (*v23)
        {
          std::__shared_weak_count::__release_weak(*v23);
        }

        v23 += 5;
        --v22;
      }

      while (v22);
    }

    operator delete(qword_1ECDAE360);
  }

  qword_1ECDAE360 = v12;
  ++qword_1ECDAE368;
  qword_1ECDAE370 = v6;
  *a1 = &a2[v12 - v10];
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>,boost::container::dtl::select1st<std::tuple<int,int,double,BOOL>>,std::less<std::tuple<int,int,double,BOOL>>,boost::container::new_allocator<boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>>>::priv_insert_unique_prepare(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 3);
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

      if (std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(v7 + 40 * (v8 >> 1), a3) == 255)
      {
        v7 += 40 * (v8 >> 1) + 40;
        v8 += ~(v8 >> 1);
      }

      else
      {
        v8 >>= 1;
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

  return std::__tuple_compare_three_way[abi:ne200100]<int,int,double,BOOL,int,int,double,BOOL,0ul,1ul,2ul,3ul>(a3, v7) == 0xFF;
}

void RamstadSRC::RamstadSRC(RamstadSRC *this, double a2, double a3, unsigned int a4, unsigned int a5, double a6)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = a2;
  *(this + 5) = a3;
  *(this + 22) = 1;
  *(this + 7) = 0u;
  v7 = this + 112;
  *(this + 10) = 0u;
  *(this + 13) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  v8 = a2 / a3;
  v9 = vcvtpd_s64_f64(v8);
  if (a5 != 34)
  {
    v9 = 1;
  }

  if (a5 >= 0x40)
  {
    v10 = 11;
  }

  else
  {
    v10 = 8;
  }

  *(this + 93) = a5 > 0x5F;
  v11 = dbl_1DE7581A0[a5 - 33 < 2];
  *(this + 13) = v11;
  *(this + 12) = 0x3E80000000000000;
  *(this + 92) = 0;
  *(this + 12) = a4;
  *(this + 13) = 256;
  v12 = vcvtmd_s64_f64(v8);
  *(this + 14) = v10;
  *(this + 15) = v12;
  v13 = vcvtmd_s64_f64((v8 - floor(v8)) * 2147483650.0);
  *(this + 10) = (v12 << 32 >> 1) + v13;
  *(this + 32) = -1;
  *(this + 66) = -1;
  *(this + 17) = v13;
  *(this + 18) = 0;
  *(this + 22) = v9;
  v14 = fmin(0.9999 / v8, 1.0) * v11;
  if (a5 >= 0x40)
  {
    v15 = (3 * a4 + 1) >> 1;
  }

  else
  {
    v15 = a4;
  }

  if (a5 < 0x60)
  {
    v59 = 0uLL;
    v60 = 0uLL;
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(v7, 0, v15, &v59);
    _ZNSt3__16vectorIDv8_fNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 136, *(this + 17), v15, &v59);
    {
      GetKernelFactory(void)::sFactory = 850045863;
      *algn_1ECDAE388 = 0u;
      *&algn_1ECDAE388[16] = 0u;
      *&algn_1ECDAE388[32] = 0u;
      *&algn_1ECDAE388[48] = 0u;
      *&qword_1ECDAE3C8 = 0u;
    }

    v31 = *(this + 13);
    v30 = *(this + 14);
    v32 = *(this + 92);
    std::mutex::lock(&GetKernelFactory(void)::sFactory);
    v33 = (v32 & 1) == 0;
    v35 = qword_1ECDAE3C0;
    v34 = qword_1ECDAE3C8;
    v36 = qword_1ECDAE3C0;
    if (!qword_1ECDAE3C0 && qword_1ECDAE3C8)
    {
LABEL_53:
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    while (1)
    {
      v37 = v35 + 40 * v34;
      if (v36 == v37)
      {
        break;
      }

      v38 = *(v36 + 32);
      if (!v38 || *(v38 + 8) == -1)
      {
        if (v35 > v36)
        {
          goto LABEL_70;
        }

        if (!v35 && v34)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (v36 >= v37)
        {
LABEL_70:
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        if (v36 + 40 != v37)
        {
          v39 = v36;
          do
          {
            v40 = v39 + 40;
            v41 = boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v39, v39 + 40) + 80;
            v39 = v40;
          }

          while (v41 != v37);
        }

        v42 = *(v37 - 8);
        if (v42)
        {
          std::__shared_weak_count::__release_weak(v42);
        }

        v35 = qword_1ECDAE3C0;
        v34 = --qword_1ECDAE3C8;
      }

      else
      {
        v36 += 40;
      }

      if (v35)
      {
        v43 = 1;
      }

      else
      {
        v43 = v34 == 0;
      }

      if (!v43)
      {
        goto LABEL_53;
      }
    }

    *&v63 = __PAIR64__(v31, v30);
    *(&v63 + 1) = v14;
    v64 = v33;
    v48 = boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernel>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(&v63);
    v49 = v48[1];
    if (!v49 || (v50 = std::__shared_weak_count::lock(v49)) == 0 || !*v48)
    {
      operator new();
    }

    *&v51 = *v48;
    *(&v51 + 1) = v50;
    v58 = v51;
    std::mutex::unlock(&GetKernelFactory(void)::sFactory);
    v52 = *(this + 1);
    v53 = v58;
    *this = v58;
    if (v52)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 160, 0, v15, &v59);
    _ZNSt3__16vectorIDv8_dNS_9allocatorIS1_EEE6insertENS_11__wrap_iterIPKS1_EEmRS6_(this + 184, *(this + 23), v15, &v59);
    {
      GetKernelFactoryD(void)::sFactory.__m_.__sig = 850045863;
      *GetKernelFactoryD(void)::sFactory.__m_.__opaque = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[16] = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[32] = 0u;
      *&GetKernelFactoryD(void)::sFactory.__m_.__opaque[48] = 0u;
      *&qword_1ECDAE368 = 0u;
    }

    v17 = *(this + 13);
    v16 = *(this + 14);
    v18 = *(this + 92);
    std::mutex::lock(&GetKernelFactoryD(void)::sFactory);
    v19 = (v18 & 1) == 0;
    v21 = qword_1ECDAE360;
    v20 = qword_1ECDAE368;
    v22 = qword_1ECDAE360;
    if (!qword_1ECDAE360 && qword_1ECDAE368)
    {
LABEL_31:
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    while (1)
    {
      v23 = v21 + 40 * v20;
      if (v22 == v23)
      {
        break;
      }

      v24 = *(v22 + 32);
      if (!v24 || *(v24 + 8) == -1)
      {
        if (v21 > v22)
        {
          goto LABEL_69;
        }

        if (!v21 && v20)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        if (v22 >= v23)
        {
LABEL_69:
          __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
        }

        if (v22 + 40 != v23)
        {
          v25 = v22;
          do
          {
            v26 = v25 + 40;
            v27 = boost::container::dtl::pair<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>>::operator=(v25, v25 + 40) + 80;
            v25 = v26;
          }

          while (v27 != v23);
        }

        v28 = *(v23 - 8);
        if (v28)
        {
          std::__shared_weak_count::__release_weak(v28);
        }

        v21 = qword_1ECDAE360;
        v20 = --qword_1ECDAE368;
      }

      else
      {
        v22 += 40;
      }

      if (v21)
      {
        v29 = 1;
      }

      else
      {
        v29 = v20 == 0;
      }

      if (!v29)
      {
        goto LABEL_31;
      }
    }

    *&v63 = __PAIR64__(v17, v16);
    *(&v63 + 1) = v14;
    v64 = v19;
    v44 = boost::container::flat_map<std::tuple<int,int,double,BOOL>,std::weak_ptr<RamstadKernelD>,std::less<std::tuple<int,int,double,BOOL>>,void>::priv_subscript(&v63);
    v45 = v44[1];
    if (!v45 || (v46 = std::__shared_weak_count::lock(v45)) == 0 || !*v44)
    {
      operator new();
    }

    *&v47 = *v44;
    *(&v47 + 1) = v46;
    v57 = v47;
    std::mutex::unlock(&GetKernelFactoryD(void)::sFactory);
    v52 = *(this + 3);
    v53 = v57;
    *(this + 1) = v57;
    if (v52)
    {
LABEL_64:
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }
  }

  v54 = *(this + 12);
  LODWORD(v65) = 0;
  std::vector<float>::assign(this + 26, v54, &v65, v53);
  v55 = *(this + 12);
  LODWORD(v65) = 0;
  std::vector<float>::assign(this + 29, v55, &v65, v56);
}

void sub_1DE679DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  shared_weak_owners = v16[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    v16[3].__vftable = shared_weak_owners;
    operator delete(shared_weak_owners);
  }

  v19 = *v17;
  if (*v17)
  {
    v16[2].__vftable = v19;
    operator delete(v19);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v20);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::mutex::unlock(&GetKernelFactory(void)::sFactory);
  v21 = v12[29];
  if (v21)
  {
    v12[30] = v21;
    operator delete(v21);
  }

  v22 = *v14;
  if (*v14)
  {
    v12[27] = v22;
    operator delete(v22);
  }

  v23 = v12[23];
  if (v23)
  {
    v12[24] = v23;
    operator delete(v23);
  }

  v24 = *v13;
  if (*v13)
  {
    v12[21] = v24;
    operator delete(v24);
  }

  v25 = v12[17];
  if (v25)
  {
    v12[18] = v25;
    operator delete(v25);
  }

  v26 = *a12;
  if (*a12)
  {
    v12[15] = v26;
    operator delete(v26);
  }

  v27 = v12[3];
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = v12[1];
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

void RamstadSRC::~RamstadSRC(RamstadSRC *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  v3 = *(this + 26);
  if (v3)
  {
    *(this + 27) = v3;
    operator delete(v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    *(this + 24) = v4;
    operator delete(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    *(this + 21) = v5;
    operator delete(v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

double RamstadSRC::processMono(RamstadSRC *this, RamstadSRC *a2, const float *a3, float *a4, int a5, int a6, int a7, int a8)
{
  if (*(a2 + 12) == 1)
  {
    RamstadSRC::checkPreflight(&v306, a2, a5, a6);
    if ((v307 & 1) == 0)
    {
      v45 = 0;
      v26 = v306;
LABEL_161:
      *this = v26;
      *(this + 4) = v45;
      goto LABEL_162;
    }

    if (*(a2 + 93) == 1)
    {
      if (*(a2 + 92))
      {
        v17 = *(a2 + 17);
        v16 = *(a2 + 18);
        v18 = *(a2 + 22);
        v19 = *(a2 + 2);
        v20 = *(v19 + 16);
        v21 = *(v19 + 40);
        v22 = *(a2 + 20);
        v23 = *(a2 + 23);
        v24 = *(a2 + 13);
        v25 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a6 < 1)
          {
            v26 = 0;
          }

          else
          {
            v26 = 0;
            v27 = 0;
            do
            {
              v29 = v22[2];
              v28 = v22[3];
              v30 = v18;
              v32 = *v22;
              v31 = v22[1];
              if (v18 >= 1)
              {
                do
                {
                  v33 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v34 = vmlaq_f64(v33, v29, v20[2]);
                  v35 = vmlaq_f64(v33, v28, v20[3]);
                  v36 = vmlaq_f64(v33, v32, *v20);
                  v37 = vmlaq_f64(vmlaq_f64(v33, v31, v20[1]), v23[1], v20[5]);
                  v38 = vmlaq_f64(v36, *v23, v20[4]);
                  v39 = vmlaq_f64(v35, v23[3], v20[7]);
                  v40 = vmlaq_f64(v34, v23[2], v20[6]);
                  *v23 = v32;
                  v23[1] = v31;
                  v23[2] = v29;
                  v23[3] = v28;
                  v22[2] = v40;
                  v22[3] = v39;
                  a3 += a7;
                  v32 = v38;
                  *v22 = v38;
                  v22[1] = v37;
                  v31 = v37;
                  v29 = v40;
                  v28 = v39;
                  --v30;
                }

                while (v30);
              }

              v26 += v18;
              v41 = (v21 + ((2 * v16) << 6));
              v42 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v41[4], *v23), v32, *v41), vmlaq_f64(vmulq_f64(v41[6], v23[2]), v29, v41[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v41[5], v23[1]), v31, v41[1]), vmlaq_f64(vmulq_f64(v41[7], v23[3]), v28, v41[3]))));
              *a4 = v42;
              a4 += a8;
              v43 = v16 + v17;
              if (v43 < v24)
              {
                v18 = v25;
              }

              else
              {
                v18 = v25 + 1;
              }

              if (v43 < v24)
              {
                v44 = 0;
              }

              else
              {
                v44 = v24;
              }

              v16 = v43 - v44;
              ++v27;
            }

            while (v27 != a6);
          }

          v204 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_160;
          }

          if (v18 < v204)
          {
            v204 = v18;
          }

          if (v204 >= 1)
          {
            v206 = v22[2];
            v205 = v22[3];
            v207 = *v22;
            v208 = v22[1];
            v209 = v204;
            do
            {
              v210 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v211 = vmlaq_f64(v210, v206, v20[2]);
              v212 = vmlaq_f64(v210, v205, v20[3]);
              v213 = vmlaq_f64(v210, v207, *v20);
              v214 = vmlaq_f64(vmlaq_f64(v210, v208, v20[1]), v23[1], v20[5]);
              v215 = vmlaq_f64(v213, *v23, v20[4]);
              v216 = vmlaq_f64(v212, v23[3], v20[7]);
              v217 = vmlaq_f64(v211, v23[2], v20[6]);
              *v23 = v207;
              v23[1] = v208;
              v23[2] = v206;
              v23[3] = v205;
              v22[2] = v217;
              v22[3] = v216;
              a3 += a7;
              v207 = v215;
              *v22 = v215;
              v22[1] = v214;
              v208 = v214;
              v206 = v217;
              v205 = v216;
              --v209;
            }

            while (v209);
          }
        }

        else
        {
          if (a6 < 1)
          {
            v26 = 0;
          }

          else
          {
            v110 = 0;
            v26 = 0;
            do
            {
              if (v18 < 1)
              {
                v127 = v22[6];
                v126 = v22[7];
                v129 = v22[4];
                v128 = v22[5];
              }

              else
              {
                v111 = v18;
                do
                {
                  v112 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v113 = *v22;
                  v114 = v22[1];
                  v115 = v22[2];
                  v116 = v22[3];
                  v117 = vmlaq_f64(vmlaq_f64(v112, *v22, *v20), *v23, v20[8]);
                  v118 = vmlaq_f64(vmlaq_f64(v112, v114, v20[1]), v23[1], v20[9]);
                  v119 = vmlaq_f64(vmlaq_f64(v112, v115, v20[2]), v23[2], v20[10]);
                  v120 = vmlaq_f64(vmlaq_f64(v112, v116, v20[3]), v23[3], v20[11]);
                  v23[2] = v115;
                  v23[3] = v116;
                  *v23 = v113;
                  v23[1] = v114;
                  v22[2] = v119;
                  v22[3] = v120;
                  *v22 = v117;
                  v22[1] = v118;
                  v122 = v22[4];
                  v121 = v22[5];
                  v124 = v22[6];
                  v123 = v22[7];
                  v125 = vmlaq_f64(v112, v122, v20[4]);
                  v126 = vmlaq_f64(vmlaq_f64(0, v123, v20[7]), v23[7], v20[15]);
                  v127 = vmlaq_f64(vmlaq_f64(0, v124, v20[6]), v23[6], v20[14]);
                  v128 = vmlaq_f64(vmlaq_f64(v112, v121, v20[5]), v23[5], v20[13]);
                  v129 = vmlaq_f64(v125, v23[4], v20[12]);
                  v23[4] = v122;
                  v23[5] = v121;
                  v23[6] = v124;
                  v23[7] = v123;
                  v22[6] = v127;
                  v22[7] = v126;
                  v22[4] = v129;
                  v22[5] = v128;
                  a3 += a7;
                  --v111;
                }

                while (v111);
              }

              v26 += v18;
              v130 = (v21 + ((4 * v16) << 6));
              v131 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v130[8], *v23), *v22, *v130), vmlaq_f64(vmulq_f64(v130[10], v23[2]), v22[2], v130[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v130[9], v23[1]), v22[1], v130[1]), vmlaq_f64(vmulq_f64(v130[11], v23[3]), v22[3], v130[3]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v130[12], v23[4]), v129, v130[4]), vmlaq_f64(vmulq_f64(v130[14], v23[6]), v127, v130[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v130[13], v23[5]), v128, v130[5]), vmlaq_f64(vmulq_f64(v130[15], v23[7]), v126, v130[7])))));
              *a4 = v131;
              a4 += a8;
              v132 = v16 + v17;
              if (v132 < v24)
              {
                v18 = v25;
              }

              else
              {
                v18 = v25 + 1;
              }

              if (v132 < v24)
              {
                v133 = 0;
              }

              else
              {
                v133 = v24;
              }

              v16 = v132 - v133;
              ++v110;
            }

            while (v110 != a6);
          }

          v204 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_160;
          }

          if (v18 < v204)
          {
            v204 = v18;
          }

          if (v204 >= 1)
          {
            v247 = v204;
            do
            {
              v248 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v249 = *v22;
              v250 = v22[1];
              v251 = v22[2];
              v252 = v22[3];
              v253 = vmlaq_f64(vmlaq_f64(v248, *v22, *v20), *v23, v20[8]);
              v254 = vmlaq_f64(vmlaq_f64(v248, v250, v20[1]), v23[1], v20[9]);
              v255 = vmlaq_f64(vmlaq_f64(v248, v251, v20[2]), v23[2], v20[10]);
              v256 = vmlaq_f64(vmlaq_f64(v248, v252, v20[3]), v23[3], v20[11]);
              v23[2] = v251;
              v23[3] = v252;
              *v23 = v249;
              v23[1] = v250;
              v22[2] = v255;
              v22[3] = v256;
              *v22 = v253;
              v22[1] = v254;
              v258 = v22[4];
              v257 = v22[5];
              v260 = v22[6];
              v259 = v22[7];
              v261 = vmlaq_f64(v248, v258, v20[4]);
              v262 = vmlaq_f64(vmlaq_f64(0, v259, v20[7]), v23[7], v20[15]);
              v263 = vmlaq_f64(vmlaq_f64(0, v260, v20[6]), v23[6], v20[14]);
              v264 = vmlaq_f64(vmlaq_f64(v248, v257, v20[5]), v23[5], v20[13]);
              v265 = vmlaq_f64(v261, v23[4], v20[12]);
              v23[4] = v258;
              v23[5] = v257;
              v23[6] = v260;
              v23[7] = v259;
              v22[6] = v263;
              v22[7] = v262;
              v22[4] = v265;
              v22[5] = v264;
              a3 += a7;
              --v247;
            }

            while (v247);
          }
        }
      }

      else
      {
        v65 = *(a2 + 17);
        v16 = *(a2 + 18);
        v18 = *(a2 + 22);
        v66 = *(a2 + 2);
        v67 = *(v66 + 16);
        v68 = *(v66 + 40);
        v69 = *(a2 + 20);
        v70 = *(a2 + 23);
        v71 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a6 < 1)
          {
            v26 = 0;
          }

          else
          {
            v26 = 0;
            v72 = 0;
            do
            {
              v74 = v69[2];
              v73 = v69[3];
              v75 = v18;
              v77 = *v69;
              v76 = v69[1];
              if (v18 >= 1)
              {
                do
                {
                  v78 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v79 = vmlaq_f64(v78, v74, v67[2]);
                  v80 = vmlaq_f64(v78, v73, v67[3]);
                  v81 = vmlaq_f64(v78, v77, *v67);
                  v82 = vmlaq_f64(vmlaq_f64(v78, v76, v67[1]), v70[1], v67[5]);
                  v83 = vmlaq_f64(v81, *v70, v67[4]);
                  v84 = vmlaq_f64(v80, v70[3], v67[7]);
                  v85 = vmlaq_f64(v79, v70[2], v67[6]);
                  *v70 = v77;
                  v70[1] = v76;
                  v70[2] = v74;
                  v70[3] = v73;
                  v69[2] = v85;
                  v69[3] = v84;
                  a3 += a7;
                  v77 = v83;
                  *v69 = v83;
                  v69[1] = v82;
                  v76 = v82;
                  v74 = v85;
                  v73 = v84;
                  --v75;
                }

                while (v75);
              }

              v26 += v18;
              v86 = (v68 + (((v16 >> 22) & 0x1FE) << 6));
              v87 = v70[2];
              v88 = v70[3];
              v89 = vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v70, v86[12]), v77, v86[8]), vmlaq_f64(vmulq_f64(v87, v86[14]), v74, v86[10])), vaddq_f64(vmlaq_f64(vmulq_f64(v70[1], v86[13]), v76, v86[9]), vmlaq_f64(vmulq_f64(v88, v86[15]), v73, v86[11]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v86[4], *v70), v77, *v86), vmlaq_f64(vmulq_f64(v86[6], v87), v74, v86[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v86[5], v70[1]), v76, v86[1]), vmlaq_f64(vmulq_f64(v86[7], v88), v73, v86[3]))));
              *v89.f64 = v89.f64[1] + *(a2 + 12) * (v16 & 0x7FFFFF) * (v89.f64[0] - v89.f64[1]);
              *a4 = *v89.f64;
              a4 += a8;
              LODWORD(v86) = v16 + v65;
              v16 = (v16 + v65) & 0x7FFFFFFF;
              v18 = v71 + (v86 >> 31);
              ++v72;
            }

            while (v72 != a6);
          }

          v204 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_160;
          }

          if (v18 < v204)
          {
            v204 = v18;
          }

          if (v204 >= 1)
          {
            v227 = v69[2];
            v226 = v69[3];
            v228 = *v69;
            v229 = v69[1];
            v230 = v204;
            do
            {
              v231 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v232 = vmlaq_f64(v231, v227, v67[2]);
              v233 = vmlaq_f64(v231, v226, v67[3]);
              v234 = vmlaq_f64(v231, v228, *v67);
              v235 = vmlaq_f64(vmlaq_f64(v231, v229, v67[1]), v70[1], v67[5]);
              v236 = vmlaq_f64(v234, *v70, v67[4]);
              v237 = vmlaq_f64(v233, v70[3], v67[7]);
              v238 = vmlaq_f64(v232, v70[2], v67[6]);
              *v70 = v228;
              v70[1] = v229;
              v70[2] = v227;
              v70[3] = v226;
              v69[2] = v238;
              v69[3] = v237;
              a3 += a7;
              v228 = v236;
              *v69 = v236;
              v69[1] = v235;
              v229 = v235;
              v227 = v238;
              v226 = v237;
              --v230;
            }

            while (v230);
          }
        }

        else
        {
          if (a6 < 1)
          {
            v26 = 0;
          }

          else
          {
            v26 = 0;
            v151 = 0;
            do
            {
              if (v18 < 1)
              {
                v168 = v69[6];
                v167 = v69[7];
                v170 = v69[4];
                v169 = v69[5];
              }

              else
              {
                v152 = v18;
                do
                {
                  v153 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                  v154 = *v69;
                  v155 = v69[1];
                  v156 = v69[2];
                  v157 = v69[3];
                  v158 = vmlaq_f64(vmlaq_f64(v153, *v69, *v67), *v70, v67[8]);
                  v159 = vmlaq_f64(vmlaq_f64(v153, v155, v67[1]), v70[1], v67[9]);
                  v160 = vmlaq_f64(vmlaq_f64(v153, v156, v67[2]), v70[2], v67[10]);
                  v161 = vmlaq_f64(vmlaq_f64(v153, v157, v67[3]), v70[3], v67[11]);
                  v70[2] = v156;
                  v70[3] = v157;
                  *v70 = v154;
                  v70[1] = v155;
                  v69[2] = v160;
                  v69[3] = v161;
                  *v69 = v158;
                  v69[1] = v159;
                  v163 = v69[4];
                  v162 = v69[5];
                  v165 = v69[6];
                  v164 = v69[7];
                  v166 = vmlaq_f64(v153, v163, v67[4]);
                  v167 = vmlaq_f64(vmlaq_f64(0, v164, v67[7]), v70[7], v67[15]);
                  v168 = vmlaq_f64(vmlaq_f64(0, v165, v67[6]), v70[6], v67[14]);
                  v169 = vmlaq_f64(vmlaq_f64(v153, v162, v67[5]), v70[5], v67[13]);
                  v170 = vmlaq_f64(v166, v70[4], v67[12]);
                  v70[4] = v163;
                  v70[5] = v162;
                  v70[6] = v165;
                  v70[7] = v164;
                  v69[6] = v168;
                  v69[7] = v167;
                  v69[4] = v170;
                  v69[5] = v169;
                  a3 += a7;
                  --v152;
                }

                while (v152);
              }

              v26 += v18;
              v171 = (v68 + (((v16 >> 21) & 0x3FC) << 6));
              v172 = v69[1];
              v174 = v69[2];
              v173 = v69[3];
              v175 = v70[2];
              v176 = v70[3];
              v177 = v70[6];
              v178 = v70[7];
              v179 = v70[4];
              v180 = v70[5];
              v181 = vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v70, v171[24]), *v69, v171[16]), vmlaq_f64(vmulq_f64(v175, v171[26]), v174, v171[18])), vaddq_f64(vmlaq_f64(vmulq_f64(v70[1], v171[25]), v172, v171[17]), vmlaq_f64(vmulq_f64(v176, v171[27]), v173, v171[19]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v171[8], *v70), *v69, *v171), vmlaq_f64(vmulq_f64(v171[10], v175), v174, v171[2])), vaddq_f64(vmlaq_f64(vmulq_f64(v171[9], v70[1]), v172, v171[1]), vmlaq_f64(vmulq_f64(v171[11], v176), v173, v171[3])))), vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v179, v171[28]), v170, v171[20]), vmlaq_f64(vmulq_f64(v177, v171[30]), v168, v171[22])), vaddq_f64(vmlaq_f64(vmulq_f64(v180, v171[29]), v169, v171[21]), vmlaq_f64(vmulq_f64(v178, v171[31]), v167, v171[23]))), vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v171[12], v179), v170, v171[4]), vmlaq_f64(vmulq_f64(v171[14], v177), v168, v171[6])), vaddq_f64(vmlaq_f64(vmulq_f64(v171[13], v180), v169, v171[5]), vmlaq_f64(vmulq_f64(v171[15], v178), v167, v171[7])))));
              *v181.f64 = v181.f64[1] + *(a2 + 12) * (v16 & 0x7FFFFF) * (v181.f64[0] - v181.f64[1]);
              *a4 = *v181.f64;
              a4 += a8;
              LODWORD(v171) = v16 + v65;
              v16 = (v16 + v65) & 0x7FFFFFFF;
              v18 = v71 + (v171 >> 31);
              ++v151;
            }

            while (v151 != a6);
          }

          v204 = a5 - v26;
          if (a5 <= v26)
          {
            goto LABEL_160;
          }

          if (v18 < v204)
          {
            v204 = v18;
          }

          if (v204 >= 1)
          {
            v276 = v204;
            do
            {
              v277 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
              v278 = *v69;
              v279 = v69[1];
              v280 = v69[2];
              v281 = v69[3];
              v282 = vmlaq_f64(vmlaq_f64(v277, *v69, *v67), *v70, v67[8]);
              v283 = vmlaq_f64(vmlaq_f64(v277, v279, v67[1]), v70[1], v67[9]);
              v284 = vmlaq_f64(vmlaq_f64(v277, v280, v67[2]), v70[2], v67[10]);
              v285 = vmlaq_f64(vmlaq_f64(v277, v281, v67[3]), v70[3], v67[11]);
              v70[2] = v280;
              v70[3] = v281;
              *v70 = v278;
              v70[1] = v279;
              v69[2] = v284;
              v69[3] = v285;
              *v69 = v282;
              v69[1] = v283;
              v287 = v69[4];
              v286 = v69[5];
              v289 = v69[6];
              v288 = v69[7];
              v290 = vmlaq_f64(v277, v287, v67[4]);
              v291 = vmlaq_f64(vmlaq_f64(0, v288, v67[7]), v70[7], v67[15]);
              v292 = vmlaq_f64(vmlaq_f64(0, v289, v67[6]), v70[6], v67[14]);
              v293 = vmlaq_f64(vmlaq_f64(v277, v286, v67[5]), v70[5], v67[13]);
              v294 = vmlaq_f64(v290, v70[4], v67[12]);
              v70[4] = v287;
              v70[5] = v286;
              v70[6] = v289;
              v70[7] = v288;
              v69[6] = v292;
              v69[7] = v291;
              v69[4] = v294;
              v69[5] = v293;
              a3 += a7;
              --v276;
            }

            while (v276);
          }
        }
      }
    }

    else if (*(a2 + 92))
    {
      v46 = *(a2 + 17);
      v16 = *(a2 + 18);
      v18 = *(a2 + 22);
      v47 = *(*a2 + 16);
      v48 = *(*a2 + 40);
      v49 = *(a2 + 14);
      v50 = *(a2 + 17);
      v51 = *(a2 + 13);
      v52 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          v53 = 0;
          do
          {
            v55 = *v49;
            v56 = v49[1];
            v57 = v18;
            if (v18 >= 1)
            {
              do
              {
                v58 = vld1q_dup_f32(a3);
                v54 = 4 * a7;
                a3 = (a3 + v54);
                v59 = vmlaq_f32(v58, v56, v47[1]);
                v60 = vmlaq_f32(vmlaq_f32(v58, v55, *v47), *v50, v47[2]);
                v61 = vmlaq_f32(v59, v50[1], v47[3]);
                *v50 = v55;
                v50[1] = v56;
                *v49 = v60;
                v49[1] = v61;
                v55 = v60;
                v56 = v61;
                --v57;
              }

              while (v57);
            }

            v26 += v18;
            v62 = vaddq_f32(vmlaq_f32(vmulq_f32(*(v48 + 32 * (2 * v16) + 32), *v50), v55, *(v48 + 32 * (2 * v16))), vmlaq_f32(vmulq_f32(*(v48 + 32 * (2 * v16) + 48), v50[1]), v56, *(v48 + 32 * (2 * v16) + 16)));
            *a4 = vaddv_f32(vadd_f32(*v62.i8, *&vextq_s8(v62, v62, 8uLL)));
            a4 += a8;
            v63 = v16 + v46;
            if (v63 < v51)
            {
              v18 = v52;
            }

            else
            {
              v18 = v52 + 1;
            }

            if (v63 < v51)
            {
              v64 = 0;
            }

            else
            {
              v64 = v51;
            }

            v16 = v63 - v64;
            ++v53;
          }

          while (v53 != a6);
        }

        v204 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_160;
        }

        if (v18 < v204)
        {
          v204 = v18;
        }

        if (v204 >= 1)
        {
          v219 = *v49;
          v218 = v49[1];
          v221 = v204;
          do
          {
            v222 = vld1q_dup_f32(a3);
            v220 = 4 * a7;
            a3 = (a3 + v220);
            v223 = vmlaq_f32(v222, v218, v47[1]);
            v224 = vmlaq_f32(vmlaq_f32(v222, v219, *v47), *v50, v47[2]);
            v225 = vmlaq_f32(v223, v50[1], v47[3]);
            *v50 = v219;
            v50[1] = v218;
            *v49 = v224;
            v49[1] = v225;
            v219 = v224;
            v218 = v225;
            --v221;
          }

          while (v221);
        }
      }

      else
      {
        if (a6 < 1)
        {
          v26 = 0;
        }

        else
        {
          v134 = 0;
          v26 = 0;
          do
          {
            if (v18 < 1)
            {
              v144 = v49[2];
              v143 = v49[3];
            }

            else
            {
              v136 = v18;
              do
              {
                v137 = vld1q_dup_f32(a3);
                v135 = 4 * a7;
                a3 = (a3 + v135);
                v138 = v49[1];
                v139 = vmlaq_f32(vmlaq_f32(v137, *v49, *v47), *v50, v47[4]);
                v140 = vmlaq_f32(vmlaq_f32(v137, v138, v47[1]), v50[1], v47[5]);
                *v50 = *v49;
                v50[1] = v138;
                *v49 = v139;
                v49[1] = v140;
                v141 = v49[2];
                v142 = v49[3];
                v143 = vmlaq_f32(vmlaq_f32(0, v142, v47[3]), v50[3], v47[7]);
                v144 = vmlaq_f32(vmlaq_f32(v137, v141, v47[2]), v50[2], v47[6]);
                v50[2] = v141;
                v50[3] = v142;
                v49[2] = v144;
                v49[3] = v143;
                --v136;
              }

              while (v136);
            }

            v26 += v18;
            v145 = (v48 + 32 * (4 * v16));
            v146 = vmlaq_f32(vmulq_f32(v145[6], v50[2]), v144, v145[2]);
            v147 = vaddq_f32(vmlaq_f32(vmulq_f32(v145[4], *v50), *v49, *v145), vmlaq_f32(vmulq_f32(v145[5], v50[1]), v49[1], v145[1]));
            *v147.i8 = vadd_f32(*v147.i8, *&vextq_s8(v147, v147, 8uLL));
            v148 = vaddq_f32(v146, vmlaq_f32(vmulq_f32(v145[7], v50[3]), v143, v145[3]));
            *v148.i8 = vadd_f32(*v148.i8, *&vextq_s8(v148, v148, 8uLL));
            *a4 = vaddv_f32(vadd_f32(vzip1_s32(*v147.i8, *v148.i8), vzip2_s32(*v147.i8, *v148.i8)));
            a4 += a8;
            v149 = v16 + v46;
            if (v149 < v51)
            {
              v18 = v52;
            }

            else
            {
              v18 = v52 + 1;
            }

            if (v149 < v51)
            {
              v150 = 0;
            }

            else
            {
              v150 = v51;
            }

            v16 = v149 - v150;
            ++v134;
          }

          while (v134 != a6);
        }

        v204 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_160;
        }

        if (v18 < v204)
        {
          v204 = v18;
        }

        if (v204 >= 1)
        {
          v267 = v204;
          do
          {
            v268 = vld1q_dup_f32(a3);
            v266 = 4 * a7;
            a3 = (a3 + v266);
            v269 = v49[1];
            v270 = vmlaq_f32(vmlaq_f32(v268, *v49, *v47), *v50, v47[4]);
            v271 = vmlaq_f32(vmlaq_f32(v268, v269, v47[1]), v50[1], v47[5]);
            *v50 = *v49;
            v50[1] = v269;
            *v49 = v270;
            v49[1] = v271;
            v272 = v49[2];
            v273 = v49[3];
            v274 = vmlaq_f32(vmlaq_f32(0, v273, v47[3]), v50[3], v47[7]);
            v275 = vmlaq_f32(vmlaq_f32(v268, v272, v47[2]), v50[2], v47[6]);
            v50[2] = v272;
            v50[3] = v273;
            v49[2] = v275;
            v49[3] = v274;
            --v267;
          }

          while (v267);
        }
      }
    }

    else
    {
      v90 = *(a2 + 17);
      v16 = *(a2 + 18);
      v18 = *(a2 + 22);
      v91 = *(*a2 + 16);
      v92 = *(*a2 + 40);
      v93 = *(a2 + 14);
      v94 = *(a2 + 17);
      v95 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a6 < 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          v96 = 0;
          do
          {
            v98 = *v93;
            v99 = v93[1];
            v100 = v18;
            if (v18 >= 1)
            {
              do
              {
                v101 = vld1q_dup_f32(a3);
                v97 = 4 * a7;
                a3 = (a3 + v97);
                v102 = vmlaq_f32(v101, v99, v91[1]);
                v103 = vmlaq_f32(vmlaq_f32(v101, v98, *v91), *v94, v91[2]);
                v104 = vmlaq_f32(v102, v94[1], v91[3]);
                *v94 = v98;
                v94[1] = v99;
                *v93 = v103;
                v93[1] = v104;
                v98 = v103;
                v99 = v104;
                --v100;
              }

              while (v100);
            }

            v26 += v18;
            v105 = *(a2 + 12) * (v16 & 0x7FFFFF);
            v106 = (v92 + 32 * ((v16 >> 22) & 0x1FE));
            v107 = v94[1];
            v108 = vaddq_f32(vmlaq_f32(vmulq_f32(v106[2], *v94), v98, *v106), vmlaq_f32(vmulq_f32(v106[3], v107), v99, v106[1]));
            *v108.i8 = vadd_f32(*v108.i8, *&vextq_s8(v108, v108, 8uLL));
            v109 = vaddq_f32(vmlaq_f32(vmulq_f32(*v94, v106[6]), v98, v106[4]), vmlaq_f32(vmulq_f32(v107, v106[7]), v99, v106[5]));
            *v109.i8 = vadd_f32(*v109.i8, *&vextq_s8(v109, v109, 8uLL));
            *v109.i8 = vadd_f32(vzip1_s32(*v109.i8, *v108.i8), vzip2_s32(*v109.i8, *v108.i8));
            *a4 = *&v109.i32[1] + (v105 * (*v109.i32 - *&v109.i32[1]));
            a4 += a8;
            LODWORD(v106) = v16 + v90;
            v16 = (v16 + v90) & 0x7FFFFFFF;
            v18 = v95 + (v106 >> 31);
            ++v96;
          }

          while (v96 != a6);
        }

        v204 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_160;
        }

        if (v18 < v204)
        {
          v204 = v18;
        }

        if (v204 >= 1)
        {
          v240 = *v93;
          v239 = v93[1];
          v242 = v204;
          do
          {
            v243 = vld1q_dup_f32(a3);
            v241 = 4 * a7;
            a3 = (a3 + v241);
            v244 = vmlaq_f32(v243, v239, v91[1]);
            v245 = vmlaq_f32(vmlaq_f32(v243, v240, *v91), *v94, v91[2]);
            v246 = vmlaq_f32(v244, v94[1], v91[3]);
            *v94 = v240;
            v94[1] = v239;
            *v93 = v245;
            v93[1] = v246;
            v240 = v245;
            v239 = v246;
            --v242;
          }

          while (v242);
        }
      }

      else
      {
        if (a6 < 1)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0;
          v182 = 0;
          do
          {
            if (v18 < 1)
            {
              v192 = v93[2];
              v191 = v93[3];
            }

            else
            {
              v184 = v18;
              do
              {
                v185 = vld1q_dup_f32(a3);
                v183 = 4 * a7;
                a3 = (a3 + v183);
                v186 = v93[1];
                v187 = vmlaq_f32(vmlaq_f32(v185, *v93, *v91), *v94, v91[4]);
                v188 = vmlaq_f32(vmlaq_f32(v185, v186, v91[1]), v94[1], v91[5]);
                *v94 = *v93;
                v94[1] = v186;
                *v93 = v187;
                v93[1] = v188;
                v189 = v93[2];
                v190 = v93[3];
                v191 = vmlaq_f32(vmlaq_f32(0, v190, v91[3]), v94[3], v91[7]);
                v192 = vmlaq_f32(vmlaq_f32(v185, v189, v91[2]), v94[2], v91[6]);
                v94[2] = v189;
                v94[3] = v190;
                v93[2] = v192;
                v93[3] = v191;
                --v184;
              }

              while (v184);
            }

            v26 += v18;
            v193 = *(a2 + 12) * (v16 & 0x7FFFFF);
            v194 = (v92 + 32 * ((v16 >> 21) & 0x3FC));
            v195 = v93[1];
            v196 = v94[1];
            v198 = v94[2];
            v197 = v94[3];
            v199 = vaddq_f32(vmlaq_f32(vmulq_f32(v194[4], *v94), *v93, *v194), vmlaq_f32(vmulq_f32(v194[5], v196), v195, v194[1]));
            *v199.i8 = vadd_f32(*v199.i8, *&vextq_s8(v199, v199, 8uLL));
            v200 = vaddq_f32(vmlaq_f32(vmulq_f32(v194[6], v198), v192, v194[2]), vmlaq_f32(vmulq_f32(v194[7], v197), v191, v194[3]));
            *v200.i8 = vadd_f32(*v200.i8, *&vextq_s8(v200, v200, 8uLL));
            v201 = vmlaq_f32(vmulq_f32(v198, v194[14]), v192, v194[10]);
            v202 = vaddq_f32(vmlaq_f32(vmulq_f32(*v94, v194[12]), *v93, v194[8]), vmlaq_f32(vmulq_f32(v196, v194[13]), v195, v194[9]));
            *v202.i8 = vadd_f32(*v202.i8, *&vextq_s8(v202, v202, 8uLL));
            v203 = vaddq_f32(v201, vmlaq_f32(vmulq_f32(v197, v194[15]), v191, v194[11]));
            *v203.i8 = vadd_f32(*v203.i8, *&vextq_s8(v203, v203, 8uLL));
            *v202.i8 = vadd_f32(vadd_f32(vzip1_s32(*v202.i8, *v199.i8), vzip2_s32(*v202.i8, *v199.i8)), vadd_f32(vzip1_s32(*v203.i8, *v200.i8), vzip2_s32(*v203.i8, *v200.i8)));
            *a4 = *&v202.i32[1] + (v193 * (*v202.i32 - *&v202.i32[1]));
            a4 += a8;
            LODWORD(v194) = v16 + v90;
            v16 = (v16 + v90) & 0x7FFFFFFF;
            v18 = v95 + (v194 >> 31);
            ++v182;
          }

          while (v182 != a6);
        }

        v204 = a5 - v26;
        if (a5 <= v26)
        {
          goto LABEL_160;
        }

        if (v18 < v204)
        {
          v204 = v18;
        }

        if (v204 >= 1)
        {
          v296 = v204;
          do
          {
            v297 = vld1q_dup_f32(a3);
            v295 = 4 * a7;
            a3 = (a3 + v295);
            v298 = v93[1];
            v299 = vmlaq_f32(vmlaq_f32(v297, *v93, *v91), *v94, v91[4]);
            v300 = vmlaq_f32(vmlaq_f32(v297, v298, v91[1]), v94[1], v91[5]);
            *v94 = *v93;
            v94[1] = v298;
            *v93 = v299;
            v93[1] = v300;
            v301 = v93[2];
            v302 = v93[3];
            v303 = vmlaq_f32(vmlaq_f32(0, v302, v91[3]), v94[3], v91[7]);
            v304 = vmlaq_f32(vmlaq_f32(v297, v301, v91[2]), v94[2], v91[6]);
            v94[2] = v301;
            v94[3] = v302;
            v93[2] = v304;
            v93[3] = v303;
            --v296;
          }

          while (v296);
        }
      }
    }

    v18 -= v204;
    v26 += v204;
LABEL_160:
    *(a2 + 18) = v16;
    *(a2 + 22) = v18;
    v45 = 1;
    goto LABEL_161;
  }

  *this = 1919747182;
  *(this + 4) = 0;
LABEL_162:
  result = NAN;
  *(a2 + 32) = -1;
  *(a2 + 66) = -1;
  return result;
}

uint64_t RamstadSRC::checkPreflight(uint64_t this, RamstadSRC *a2, int a3, int a4)
{
  v6 = this;
  v7 = *(a2 + 66);
  if (v7 == -1)
  {
    this = RamstadSRC::outputSamplesForInputSamples(a2, a3, &v9);
    if (*(a2 + 66) != a4)
    {
      v8 = 1919746222;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (v7 != a4)
  {
    v8 = 1919746226;
    goto LABEL_10;
  }

  if (*(a2 + 64) <= a3 && *(a2 + 65) >= a3)
  {
LABEL_7:
    *(v6 + 4) = 1;
    return this;
  }

  v8 = 1919746231;
LABEL_10:
  *v6 = v8;
  *(v6 + 4) = 0;
  return this;
}

uint64_t RamstadSRC::outputSamplesForInputSamples(RamstadSRC *this, int a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  *a3 = 0;
  v7 = *(this + 22);
  v8 = __OFSUB__(a2, v7);
  v9 = a2 - v7;
  if (v9 < 0 == v8)
  {
    if (*(this + 92) == 1)
    {
      v11 = *(this + 13) * v9;
      v12 = *(this + 18);
      v13 = *(this + 16);
    }

    else
    {
      v12 = v9 << 31;
      v11 = *(this + 18);
      v13 = *(this + 10);
    }

    v14 = ((v12 + v11 + v13 - 1) / v13) + 1;
    v15 = vcvtpd_s64_f64(*(this + 5) / *(this + 4));
    v16 = v14 + 2 * v15;
    v17 = v14 - 2 * v15;
    do
    {
      while (1)
      {
        v6 = v14;
        v5 = RamstadSRC::inputSamplesForOutputSamples(this, v14);
        if (v5 > a2)
        {
          break;
        }

        if ((v16 - v6) < 2)
        {
          goto LABEL_10;
        }

        v14 = (v6 + ((v16 - v6) >> 1));
        v17 = v6;
      }

      v14 = (v17 + ((v6 - v17) >> 1));
      v16 = v6;
    }

    while (v14 != v6);
LABEL_10:
    *a3 = v5;
  }

  *(this + 64) = v5;
  *(this + 65) = a2;
  *(this + 66) = v6;
  return v6;
}

uint64_t RamstadSRC::inputSamplesForOutputSamples(RamstadSRC *this, int a2)
{
  v2 = (a2 - 1);
  if (a2 < 1)
  {
    return 0;
  }

  if (*(this + 92) == 1)
  {
    v3 = (*(this + 18) + *(this + 16) * v2) / *(this + 13);
  }

  else
  {
    v3 = (*(this + 18) + *(this + 10) * v2) >> 31;
  }

  v4 = (*(this + 22) + v3);
  *(this + 64) = v4;
  *(this + 65) = v4;
  *(this + 66) = a2;
  return v4;
}

double RamstadSRC::processStereo(RamstadSRC *this, RamstadSRC *a2, const float *a3, const float *a4, float *a5, float *a6, int a7, int a8, int a9, int a10)
{
  if (*(a2 + 12) == 2)
  {
    RamstadSRC::checkPreflight(&v599, a2, a7, a8);
    if (v600)
    {
      *(this + 4) = 1;
      if (*(a2 + 93) == 1)
      {
        if (*(a2 + 92))
        {
          v19 = *(a2 + 17);
          v18 = *(a2 + 18);
          v20 = *(a2 + 22);
          v21 = *(a2 + 2);
          v22 = *(v21 + 16);
          v23 = *(v21 + 40);
          v24 = *(a2 + 20);
          v25 = *(a2 + 23);
          v26 = *(a2 + 13);
          v27 = *(a2 + 15);
          if (*(a2 + 14) == 8)
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v29 = 0;
              v30 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v55 = v24[6];
                  v54 = v24[7];
                  v53 = v24[4];
                  v52 = v24[5];
                }

                else
                {
                  v31 = v20;
                  do
                  {
                    v32 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v33 = *v24;
                    v34 = v24[1];
                    v35 = v24[2];
                    v36 = v24[3];
                    v37 = vmlaq_f64(v32, v36, v22[3]);
                    v38 = vmlaq_f64(v32, v35, v22[2]);
                    v39 = vmlaq_f64(v32, v34, v22[1]);
                    v40 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v41 = vmlaq_f64(vmlaq_f64(v32, *v24, *v22), *v25, v22[4]);
                    v42 = vmlaq_f64(v39, v25[1], v22[5]);
                    v43 = vmlaq_f64(v38, v25[2], v22[6]);
                    v44 = vmlaq_f64(v37, v25[3], v22[7]);
                    v25[2] = v35;
                    v25[3] = v36;
                    *v25 = v33;
                    v25[1] = v34;
                    v24[2] = v43;
                    v24[3] = v44;
                    *v24 = v41;
                    v24[1] = v42;
                    v46 = v24[4];
                    v45 = v24[5];
                    v48 = v24[6];
                    v47 = v24[7];
                    v49 = vmlaq_f64(v40, v48, v22[2]);
                    v50 = vmlaq_f64(v40, v47, v22[3]);
                    v51 = vmlaq_f64(v40, v46, *v22);
                    v52 = vmlaq_f64(vmlaq_f64(v40, v45, v22[1]), v25[5], v22[5]);
                    v53 = vmlaq_f64(v51, v25[4], v22[4]);
                    v54 = vmlaq_f64(v50, v25[7], v22[7]);
                    v55 = vmlaq_f64(v49, v25[6], v22[6]);
                    v25[4] = v46;
                    v25[5] = v45;
                    v25[6] = v48;
                    v25[7] = v47;
                    v24[6] = v55;
                    v24[7] = v54;
                    v24[4] = v53;
                    v24[5] = v52;
                    a3 = (a3 + v30);
                    a4 = (a4 + v30);
                    --v31;
                  }

                  while (v31);
                }

                v28 += v20;
                v56 = (v23 + ((2 * v18) << 6));
                v57 = v56[1];
                v59 = v56[2];
                v58 = v56[3];
                v60 = v56[6];
                v61 = v56[7];
                v62 = v56[4];
                v63 = v56[5];
                v64 = vmlaq_f64(vmulq_f64(v60, v25[6]), v55, v59);
                v65 = vmlaq_f64(vmulq_f64(v62, v25[4]), v53, *v56);
                v66 = vmlaq_f64(vmulq_f64(v61, v25[7]), v54, v58);
                v67 = vmlaq_f64(vmulq_f64(v63, v25[5]), v52, v57);
                v68 = vaddvq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v62, *v25), *v24, *v56), vmlaq_f64(vmulq_f64(v60, v25[2]), v24[2], v59)), vaddq_f64(vmlaq_f64(vmulq_f64(v63, v25[1]), v24[1], v57), vmlaq_f64(vmulq_f64(v61, v25[3]), v24[3], v58))));
                *a5 = v68;
                v69 = vaddvq_f64(vaddq_f64(vaddq_f64(v65, v64), vaddq_f64(v67, v66)));
                *a6 = v69;
                a5 += a10;
                a6 += a10;
                v70 = v18 + v19;
                if (v70 < v26)
                {
                  v20 = v27;
                }

                else
                {
                  v20 = v27 + 1;
                }

                if (v70 < v26)
                {
                  v71 = 0;
                }

                else
                {
                  v71 = v26;
                }

                v18 = v70 - v71;
                ++v29;
              }

              while (v29 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v420 = 0;
              v421 = v419;
              do
              {
                v422 = vdupq_lane_s64(COERCE__INT64(a3[v420]), 0);
                v423 = *v24;
                v424 = v24[1];
                v425 = v24[2];
                v426 = v24[3];
                v427 = vmlaq_f64(v422, v426, v22[3]);
                v428 = vmlaq_f64(v422, v425, v22[2]);
                v429 = vmlaq_f64(v422, v424, v22[1]);
                v430 = vdupq_lane_s64(COERCE__INT64(a4[v420]), 0);
                v431 = vmlaq_f64(vmlaq_f64(v422, *v24, *v22), *v25, v22[4]);
                v432 = vmlaq_f64(v429, v25[1], v22[5]);
                v433 = vmlaq_f64(v428, v25[2], v22[6]);
                v434 = vmlaq_f64(v427, v25[3], v22[7]);
                v25[2] = v425;
                v25[3] = v426;
                *v25 = v423;
                v25[1] = v424;
                v24[2] = v433;
                v24[3] = v434;
                *v24 = v431;
                v24[1] = v432;
                v436 = v24[4];
                v435 = v24[5];
                v438 = v24[6];
                v437 = v24[7];
                v439 = vmlaq_f64(v430, v438, v22[2]);
                v440 = vmlaq_f64(v430, v437, v22[3]);
                v441 = vmlaq_f64(v430, v436, *v22);
                v442 = vmlaq_f64(vmlaq_f64(v430, v435, v22[1]), v25[5], v22[5]);
                v443 = vmlaq_f64(v441, v25[4], v22[4]);
                v444 = vmlaq_f64(v440, v25[7], v22[7]);
                v445 = vmlaq_f64(v439, v25[6], v22[6]);
                v25[4] = v436;
                v25[5] = v435;
                v25[6] = v438;
                v25[7] = v437;
                v24[6] = v445;
                v24[7] = v444;
                v24[4] = v443;
                v24[5] = v442;
                v420 += a9;
                --v421;
              }

              while (v421);
            }
          }

          else
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v212 = 0;
              v28 = 0;
              v213 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v242 = v24[10];
                  v241 = v24[11];
                  v240 = v24[8];
                  v239 = v24[9];
                }

                else
                {
                  v214 = v20;
                  do
                  {
                    v215 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v216 = *v24;
                    v217 = v24[1];
                    v218 = v24[2];
                    v219 = v24[3];
                    v220 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v221 = vmlaq_f64(vmlaq_f64(v215, *v24, *v22), *v25, v22[8]);
                    v222 = vmlaq_f64(vmlaq_f64(v215, v217, v22[1]), v25[1], v22[9]);
                    v223 = vmlaq_f64(vmlaq_f64(v215, v218, v22[2]), v25[2], v22[10]);
                    v224 = vmlaq_f64(vmlaq_f64(v215, v219, v22[3]), v25[3], v22[11]);
                    v25[2] = v218;
                    v25[3] = v219;
                    *v25 = v216;
                    v25[1] = v217;
                    v24[2] = v223;
                    v24[3] = v224;
                    *v24 = v221;
                    v24[1] = v222;
                    v225 = v24[4];
                    v226 = v24[5];
                    v227 = v24[6];
                    v228 = v24[7];
                    v229 = vmlaq_f64(vmlaq_f64(v220, v225, *v22), v25[4], v22[8]);
                    v230 = vmlaq_f64(vmlaq_f64(v220, v226, v22[1]), v25[5], v22[9]);
                    v231 = vmlaq_f64(vmlaq_f64(v220, v227, v22[2]), v25[6], v22[10]);
                    v232 = vmlaq_f64(vmlaq_f64(v220, v228, v22[3]), v25[7], v22[11]);
                    v25[4] = v225;
                    v25[5] = v226;
                    v25[6] = v227;
                    v25[7] = v228;
                    v24[6] = v231;
                    v24[7] = v232;
                    v24[4] = v229;
                    v24[5] = v230;
                    v234 = v24[8];
                    v233 = v24[9];
                    v236 = v24[10];
                    v235 = v24[11];
                    v237 = vmlaq_f64(v220, v236, v22[6]);
                    v238 = vmlaq_f64(v215, v234, v22[4]);
                    v239 = vmlaq_f64(vmlaq_f64(v215, v233, v22[5]), v25[9], v22[13]);
                    v240 = vmlaq_f64(v238, v25[8], v22[12]);
                    v241 = vmlaq_f64(vmlaq_f64(v220, v235, v22[7]), v25[11], v22[15]);
                    v242 = vmlaq_f64(v237, v25[10], v22[14]);
                    v25[8] = v234;
                    v25[9] = v233;
                    v25[10] = v236;
                    v25[11] = v235;
                    v24[10] = v242;
                    v24[11] = v241;
                    v24[8] = v240;
                    v24[9] = v239;
                    a3 = (a3 + v213);
                    a4 = (a4 + v213);
                    --v214;
                  }

                  while (v214);
                }

                v28 += v20;
                v243 = (v23 + ((4 * v18) << 6));
                v244 = v243[1];
                v246 = v243[2];
                v245 = v243[3];
                v247 = v243[10];
                v248 = v243[11];
                v249 = v243[8];
                v250 = v243[9];
                v251 = vmlaq_f64(vmulq_f64(v247, v25[2]), v24[2], v246);
                v252 = vmlaq_f64(vmulq_f64(v249, *v25), *v24, *v243);
                v253 = vmlaq_f64(vmulq_f64(v248, v25[3]), v24[3], v245);
                v254 = vmlaq_f64(vmulq_f64(v250, v25[1]), v24[1], v244);
                v255 = vmlaq_f64(vmulq_f64(v247, v25[6]), v24[6], v246);
                v256 = vmlaq_f64(vmulq_f64(v249, v25[4]), v24[4], *v243);
                v257 = vmlaq_f64(vmulq_f64(v248, v25[7]), v24[7], v245);
                v258 = vmlaq_f64(vmulq_f64(v250, v25[5]), v24[5], v244);
                v259 = vmlaq_f64(vmulq_f64(v243[15], v25[11]), v241, v243[7]);
                v260 = vmlaq_f64(vmulq_f64(v243[14], v25[10]), v242, v243[6]);
                v261 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v252, v251), vaddq_f64(v254, v253)), vaddq_f64(vmlaq_f64(vmulq_f64(v243[12], v25[8]), v240, v243[4]), vmlaq_f64(vmulq_f64(v243[13], v25[9]), v239, v243[5]))));
                *a5 = v261;
                v262 = vaddvq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v256, v255), vaddq_f64(v258, v257)), vaddq_f64(v260, v259)));
                *a6 = v262;
                a5 += a10;
                a6 += a10;
                v263 = v18 + v19;
                if (v263 < v26)
                {
                  v20 = v27;
                }

                else
                {
                  v20 = v27 + 1;
                }

                if (v263 < v26)
                {
                  v264 = 0;
                }

                else
                {
                  v264 = v26;
                }

                v18 = v263 - v264;
                ++v212;
              }

              while (v212 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v503 = 0;
              v504 = v419;
              do
              {
                v505 = vdupq_lane_s64(COERCE__INT64(a3[v503]), 0);
                v506 = *v24;
                v507 = v24[1];
                v508 = v24[2];
                v509 = v24[3];
                v510 = vdupq_lane_s64(COERCE__INT64(a4[v503]), 0);
                v511 = vmlaq_f64(vmlaq_f64(v505, *v24, *v22), *v25, v22[8]);
                v512 = vmlaq_f64(vmlaq_f64(v505, v507, v22[1]), v25[1], v22[9]);
                v513 = vmlaq_f64(vmlaq_f64(v505, v508, v22[2]), v25[2], v22[10]);
                v514 = vmlaq_f64(vmlaq_f64(v505, v509, v22[3]), v25[3], v22[11]);
                v25[2] = v508;
                v25[3] = v509;
                *v25 = v506;
                v25[1] = v507;
                v24[2] = v513;
                v24[3] = v514;
                *v24 = v511;
                v24[1] = v512;
                v515 = v24[4];
                v516 = v24[5];
                v517 = v24[6];
                v518 = v24[7];
                v519 = vmlaq_f64(vmlaq_f64(v510, v515, *v22), v25[4], v22[8]);
                v520 = vmlaq_f64(vmlaq_f64(v510, v516, v22[1]), v25[5], v22[9]);
                v521 = vmlaq_f64(vmlaq_f64(v510, v517, v22[2]), v25[6], v22[10]);
                v522 = vmlaq_f64(vmlaq_f64(v510, v518, v22[3]), v25[7], v22[11]);
                v25[4] = v515;
                v25[5] = v516;
                v25[6] = v517;
                v25[7] = v518;
                v24[6] = v521;
                v24[7] = v522;
                v24[4] = v519;
                v24[5] = v520;
                v524 = v24[8];
                v523 = v24[9];
                v526 = v24[10];
                v525 = v24[11];
                v527 = vmlaq_f64(v510, v526, v22[6]);
                v528 = vmlaq_f64(v505, v524, v22[4]);
                v529 = vmlaq_f64(vmlaq_f64(v505, v523, v22[5]), v25[9], v22[13]);
                v530 = vmlaq_f64(v528, v25[8], v22[12]);
                v531 = vmlaq_f64(vmlaq_f64(v510, v525, v22[7]), v25[11], v22[15]);
                v532 = vmlaq_f64(v527, v25[10], v22[14]);
                v25[8] = v524;
                v25[9] = v523;
                v25[10] = v526;
                v25[11] = v525;
                v24[10] = v532;
                v24[11] = v531;
                v24[8] = v530;
                v24[9] = v529;
                v503 += a9;
                --v504;
              }

              while (v504);
            }
          }
        }

        else
        {
          v104 = *(a2 + 17);
          v18 = *(a2 + 18);
          v20 = *(a2 + 22);
          v105 = *(a2 + 2);
          v106 = *(v105 + 16);
          v107 = *(v105 + 40);
          v108 = *(a2 + 20);
          v109 = *(a2 + 23);
          v110 = *(a2 + 15);
          if (*(a2 + 14) == 8)
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v111 = 0;
              v112 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v137 = v108[6];
                  v136 = v108[7];
                  v135 = v108[4];
                  v134 = v108[5];
                }

                else
                {
                  v113 = v20;
                  do
                  {
                    v114 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v115 = *v108;
                    v116 = v108[1];
                    v117 = v108[2];
                    v118 = v108[3];
                    v119 = vmlaq_f64(v114, v118, v106[3]);
                    v120 = vmlaq_f64(v114, v117, v106[2]);
                    v121 = vmlaq_f64(v114, v116, v106[1]);
                    v122 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v123 = vmlaq_f64(vmlaq_f64(v114, *v108, *v106), *v109, v106[4]);
                    v124 = vmlaq_f64(v121, v109[1], v106[5]);
                    v125 = vmlaq_f64(v120, v109[2], v106[6]);
                    v126 = vmlaq_f64(v119, v109[3], v106[7]);
                    v109[2] = v117;
                    v109[3] = v118;
                    *v109 = v115;
                    v109[1] = v116;
                    v108[2] = v125;
                    v108[3] = v126;
                    *v108 = v123;
                    v108[1] = v124;
                    v128 = v108[4];
                    v127 = v108[5];
                    v130 = v108[6];
                    v129 = v108[7];
                    v131 = vmlaq_f64(v122, v130, v106[2]);
                    v132 = vmlaq_f64(v122, v129, v106[3]);
                    v133 = vmlaq_f64(v122, v128, *v106);
                    v134 = vmlaq_f64(vmlaq_f64(v122, v127, v106[1]), v109[5], v106[5]);
                    v135 = vmlaq_f64(v133, v109[4], v106[4]);
                    v136 = vmlaq_f64(v132, v109[7], v106[7]);
                    v137 = vmlaq_f64(v131, v109[6], v106[6]);
                    v109[4] = v128;
                    v109[5] = v127;
                    v109[6] = v130;
                    v109[7] = v129;
                    v108[6] = v137;
                    v108[7] = v136;
                    v108[4] = v135;
                    v108[5] = v134;
                    a3 = (a3 + v112);
                    a4 = (a4 + v112);
                    --v113;
                  }

                  while (v113);
                }

                v28 += v20;
                v138 = *(a2 + 12) * (v18 & 0x7FFFFF);
                v139 = (v107 + (((v18 >> 22) & 0x1FE) << 6));
                v140 = v139[1];
                v142 = v139[2];
                v141 = v139[3];
                v143 = v108[1];
                v145 = v108[2];
                v144 = v108[3];
                v146 = v139[6];
                v147 = v139[7];
                v148 = v139[4];
                v149 = v139[5];
                v150 = v109[2];
                v151 = v109[3];
                v152 = v109[1];
                v153 = vmlaq_f64(vmulq_f64(v149, v152), v143, v140);
                v154 = v109[6];
                v155 = v109[7];
                v156 = v109[4];
                v157 = v109[5];
                v158 = vmlaq_f64(vmulq_f64(v149, v157), v134, v140);
                v159 = vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v148, *v109), *v108, *v139), vmlaq_f64(vmulq_f64(v146, v150), v145, v142)), vaddq_f64(v153, vmlaq_f64(vmulq_f64(v147, v151), v144, v141)));
                v160 = vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v148, v156), v135, *v139), vmlaq_f64(vmulq_f64(v146, v154), v137, v142)), vaddq_f64(v158, vmlaq_f64(vmulq_f64(v147, v155), v136, v141)));
                v162 = v139[8];
                v161 = v139[9];
                v164 = v139[10];
                v163 = v139[11];
                v165 = v139[14];
                v166 = v139[15];
                v167 = v139[12];
                v168 = v139[13];
                v169 = vmlaq_f64(vmulq_f64(v152, v168), v143, v161);
                v170 = vmlaq_f64(vmulq_f64(v157, v168), v134, v161);
                v171 = vcvt_f32_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v109, v167), *v108, v162), vmlaq_f64(vmulq_f64(v150, v165), v145, v164)), vaddq_f64(v169, vmlaq_f64(vmulq_f64(v151, v166), v144, v163))), v159));
                v172 = vcvt_f32_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v156, v167), v135, v162), vmlaq_f64(vmulq_f64(v154, v165), v137, v164)), vaddq_f64(v170, vmlaq_f64(vmulq_f64(v155, v166), v136, v163))), v160));
                *a5 = v171.f32[1] + (v138 * (v171.f32[0] - v171.f32[1]));
                *a6 = v172.f32[1] + (v138 * (v172.f32[0] - v172.f32[1]));
                a5 += a10;
                a6 += a10;
                LODWORD(v139) = v18 + v104;
                v18 = (v18 + v104) & 0x7FFFFFFF;
                v20 = v110 + (v139 >> 31);
                ++v111;
              }

              while (v111 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v461 = 0;
              v462 = v419;
              do
              {
                v463 = vdupq_lane_s64(COERCE__INT64(a3[v461]), 0);
                v464 = *v108;
                v465 = v108[1];
                v466 = v108[2];
                v467 = v108[3];
                v468 = vmlaq_f64(v463, v467, v106[3]);
                v469 = vmlaq_f64(v463, v466, v106[2]);
                v470 = vmlaq_f64(v463, v465, v106[1]);
                v471 = vdupq_lane_s64(COERCE__INT64(a4[v461]), 0);
                v472 = vmlaq_f64(vmlaq_f64(v463, *v108, *v106), *v109, v106[4]);
                v473 = vmlaq_f64(v470, v109[1], v106[5]);
                v474 = vmlaq_f64(v469, v109[2], v106[6]);
                v475 = vmlaq_f64(v468, v109[3], v106[7]);
                v109[2] = v466;
                v109[3] = v467;
                *v109 = v464;
                v109[1] = v465;
                v108[2] = v474;
                v108[3] = v475;
                *v108 = v472;
                v108[1] = v473;
                v477 = v108[4];
                v476 = v108[5];
                v479 = v108[6];
                v478 = v108[7];
                v480 = vmlaq_f64(v471, v479, v106[2]);
                v481 = vmlaq_f64(v471, v478, v106[3]);
                v482 = vmlaq_f64(v471, v477, *v106);
                v483 = vmlaq_f64(vmlaq_f64(v471, v476, v106[1]), v109[5], v106[5]);
                v484 = vmlaq_f64(v482, v109[4], v106[4]);
                v485 = vmlaq_f64(v481, v109[7], v106[7]);
                v486 = vmlaq_f64(v480, v109[6], v106[6]);
                v109[4] = v477;
                v109[5] = v476;
                v109[6] = v479;
                v109[7] = v478;
                v108[6] = v486;
                v108[7] = v485;
                v108[4] = v484;
                v108[5] = v483;
                v461 += a9;
                --v462;
              }

              while (v462);
            }
          }

          else
          {
            if (a8 < 1)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              v297 = 0;
              v298 = 4 * a9;
              do
              {
                if (v20 < 1)
                {
                  v327 = v108[10];
                  v326 = v108[11];
                  v325 = v108[8];
                  v324 = v108[9];
                }

                else
                {
                  v299 = v20;
                  do
                  {
                    v300 = vdupq_lane_s64(COERCE__INT64(*a3), 0);
                    v301 = *v108;
                    v302 = v108[1];
                    v303 = v108[2];
                    v304 = v108[3];
                    v305 = vdupq_lane_s64(COERCE__INT64(*a4), 0);
                    v306 = vmlaq_f64(vmlaq_f64(v300, *v108, *v106), *v109, v106[8]);
                    v307 = vmlaq_f64(vmlaq_f64(v300, v302, v106[1]), v109[1], v106[9]);
                    v308 = vmlaq_f64(vmlaq_f64(v300, v303, v106[2]), v109[2], v106[10]);
                    v309 = vmlaq_f64(vmlaq_f64(v300, v304, v106[3]), v109[3], v106[11]);
                    v109[2] = v303;
                    v109[3] = v304;
                    *v109 = v301;
                    v109[1] = v302;
                    v108[2] = v308;
                    v108[3] = v309;
                    *v108 = v306;
                    v108[1] = v307;
                    v310 = v108[4];
                    v311 = v108[5];
                    v312 = v108[6];
                    v313 = v108[7];
                    v314 = vmlaq_f64(vmlaq_f64(v305, v310, *v106), v109[4], v106[8]);
                    v315 = vmlaq_f64(vmlaq_f64(v305, v311, v106[1]), v109[5], v106[9]);
                    v316 = vmlaq_f64(vmlaq_f64(v305, v312, v106[2]), v109[6], v106[10]);
                    v317 = vmlaq_f64(vmlaq_f64(v305, v313, v106[3]), v109[7], v106[11]);
                    v109[4] = v310;
                    v109[5] = v311;
                    v109[6] = v312;
                    v109[7] = v313;
                    v108[6] = v316;
                    v108[7] = v317;
                    v108[4] = v314;
                    v108[5] = v315;
                    v319 = v108[8];
                    v318 = v108[9];
                    v321 = v108[10];
                    v320 = v108[11];
                    v322 = vmlaq_f64(v305, v321, v106[6]);
                    v323 = vmlaq_f64(v300, v319, v106[4]);
                    v324 = vmlaq_f64(vmlaq_f64(v300, v318, v106[5]), v109[9], v106[13]);
                    v325 = vmlaq_f64(v323, v109[8], v106[12]);
                    v326 = vmlaq_f64(vmlaq_f64(v305, v320, v106[7]), v109[11], v106[15]);
                    v327 = vmlaq_f64(v322, v109[10], v106[14]);
                    v109[8] = v319;
                    v109[9] = v318;
                    v109[10] = v321;
                    v109[11] = v320;
                    v108[10] = v327;
                    v108[11] = v326;
                    v108[8] = v325;
                    v108[9] = v324;
                    a3 = (a3 + v298);
                    a4 = (a4 + v298);
                    --v299;
                  }

                  while (v299);
                }

                v328 = (v107 + (((v18 >> 21) & 0x3FC) << 6));
                v329 = v328[1];
                v331 = v328[2];
                v330 = v328[3];
                v332 = v108[1];
                v334 = v108[2];
                v333 = v108[3];
                v336 = v328[10];
                v335 = v328[11];
                v337 = v328[8];
                v338 = v328[9];
                v340 = v109[2];
                v339 = v109[3];
                v341 = v109[1];
                v342 = vmlaq_f64(vmulq_f64(v336, v340), v334, v331);
                v343 = vmlaq_f64(vmulq_f64(v337, *v109), *v108, *v328);
                v344 = vmlaq_f64(vmulq_f64(v335, v339), v333, v330);
                v598 = vmlaq_f64(vmulq_f64(v338, v341), v332, v329);
                v345 = v108[4];
                v346 = v108[5];
                v347 = v108[6];
                v348 = v108[7];
                v349 = v109[6];
                v350 = v109[7];
                v351 = v109[4];
                v352 = v109[5];
                v353 = vmulq_f64(v335, v350);
                v354 = vmlaq_f64(vmulq_f64(v336, v349), v347, v331);
                v355 = vmlaq_f64(vmulq_f64(v337, v351), v345, *v328);
                v356 = vmlaq_f64(v353, v348, v330);
                v357 = vmlaq_f64(vmulq_f64(v338, v352), v346, v329);
                v358 = v328[18];
                v359 = v328[26];
                v360 = v328[27];
                v361 = vmlaq_f64(vmulq_f64(v340, v359), v334, v358);
                v362 = v328[24];
                v363 = v328[25];
                v364 = v328[16];
                v365 = vmlaq_f64(vmulq_f64(v349, v359), v347, v358);
                v366 = vmlaq_f64(vmulq_f64(v351, v362), v345, v364);
                v367 = v328[19];
                v368 = v328[17];
                v369 = vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(*v109, v362), *v108, v364), v361), vaddq_f64(vmlaq_f64(vmulq_f64(v341, v363), v332, v368), vmlaq_f64(vmulq_f64(v339, v360), v333, v367))), vaddq_f64(vaddq_f64(v343, v342), vaddq_f64(v598, v344))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v109[8], v328[28]), v325, v328[20]), vmlaq_f64(vmulq_f64(v109[9], v328[29]), v324, v328[21])), vaddq_f64(vmlaq_f64(vmulq_f64(v328[12], v109[8]), v325, v328[4]), vmlaq_f64(vmulq_f64(v328[13], v109[9]), v324, v328[5]))));
                v370 = *(a2 + 12) * (v18 & 0x7FFFFF);
                *&v369.f64[0] = vcvt_f32_f64(v369);
                v371 = vcvt_f32_f64(vaddq_f64(vpaddq_f64(vaddq_f64(vaddq_f64(v366, v365), vaddq_f64(vmlaq_f64(vmulq_f64(v352, v363), v346, v368), vmlaq_f64(vmulq_f64(v350, v360), v348, v367))), vaddq_f64(vaddq_f64(v355, v354), vaddq_f64(v357, v356))), vpaddq_f64(vaddq_f64(vmlaq_f64(vmulq_f64(v109[10], v328[30]), v327, v328[22]), vmlaq_f64(vmulq_f64(v109[11], v328[31]), v326, v328[23])), vaddq_f64(vmlaq_f64(vmulq_f64(v328[14], v109[10]), v327, v328[6]), vmlaq_f64(vmulq_f64(v328[15], v109[11]), v326, v328[7])))));
                *a5 = *(v369.f64 + 1) + (v370 * (*v369.f64 - *(v369.f64 + 1)));
                *a6 = v371.f32[1] + (v370 * (v371.f32[0] - v371.f32[1]));
                v28 += v20;
                a5 += a10;
                a6 += a10;
                v372 = v18 + v104;
                v18 = (v18 + v104) & 0x7FFFFFFF;
                v20 = v110 + (v372 >> 31);
                ++v297;
              }

              while (v297 != a8);
            }

            v419 = a7 - v28;
            if (a7 <= v28)
            {
              goto LABEL_165;
            }

            if (v20 < v419)
            {
              v419 = v20;
            }

            if (v419 >= 1)
            {
              v550 = 0;
              v551 = v419;
              do
              {
                v552 = vdupq_lane_s64(COERCE__INT64(a3[v550]), 0);
                v553 = *v108;
                v554 = v108[1];
                v555 = v108[2];
                v556 = v108[3];
                v557 = vdupq_lane_s64(COERCE__INT64(a4[v550]), 0);
                v558 = vmlaq_f64(vmlaq_f64(v552, *v108, *v106), *v109, v106[8]);
                v559 = vmlaq_f64(vmlaq_f64(v552, v554, v106[1]), v109[1], v106[9]);
                v560 = vmlaq_f64(vmlaq_f64(v552, v555, v106[2]), v109[2], v106[10]);
                v561 = vmlaq_f64(vmlaq_f64(v552, v556, v106[3]), v109[3], v106[11]);
                v109[2] = v555;
                v109[3] = v556;
                *v109 = v553;
                v109[1] = v554;
                v108[2] = v560;
                v108[3] = v561;
                *v108 = v558;
                v108[1] = v559;
                v562 = v108[4];
                v563 = v108[5];
                v564 = v108[6];
                v565 = v108[7];
                v566 = vmlaq_f64(vmlaq_f64(v557, v562, *v106), v109[4], v106[8]);
                v567 = vmlaq_f64(vmlaq_f64(v557, v563, v106[1]), v109[5], v106[9]);
                v568 = vmlaq_f64(vmlaq_f64(v557, v564, v106[2]), v109[6], v106[10]);
                v569 = vmlaq_f64(vmlaq_f64(v557, v565, v106[3]), v109[7], v106[11]);
                v109[4] = v562;
                v109[5] = v563;
                v109[6] = v564;
                v109[7] = v565;
                v108[6] = v568;
                v108[7] = v569;
                v108[4] = v566;
                v108[5] = v567;
                v571 = v108[8];
                v570 = v108[9];
                v573 = v108[10];
                v572 = v108[11];
                v574 = vmlaq_f64(v557, v573, v106[6]);
                v575 = vmlaq_f64(v552, v571, v106[4]);
                v576 = vmlaq_f64(vmlaq_f64(v552, v570, v106[5]), v109[9], v106[13]);
                v577 = vmlaq_f64(v575, v109[8], v106[12]);
                v578 = vmlaq_f64(vmlaq_f64(v557, v572, v106[7]), v109[11], v106[15]);
                v579 = vmlaq_f64(v574, v109[10], v106[14]);
                v109[8] = v571;
                v109[9] = v570;
                v109[10] = v573;
                v109[11] = v572;
                v108[10] = v579;
                v108[11] = v578;
                v108[8] = v577;
                v108[9] = v576;
                v550 += a9;
                --v551;
              }

              while (v551);
            }
          }
        }

LABEL_164:
        v20 -= v419;
        v28 += v419;
LABEL_165:
        *(a2 + 18) = v18;
        *(a2 + 22) = v20;
LABEL_166:
        *this = v28;
        goto LABEL_167;
      }

      if (*(a2 + 92))
      {
        v73 = *(a2 + 17);
        v18 = *(a2 + 18);
        v20 = *(a2 + 22);
        v74 = *(*a2 + 16);
        v75 = *(*a2 + 40);
        v76 = *(a2 + 14);
        v77 = *(a2 + 17);
        v78 = *(a2 + 13);
        v79 = *(a2 + 15);
        if (*(a2 + 14) == 8)
        {
          if (a8 < 1)
          {
            v28 = 0;
          }

          else
          {
            v28 = 0;
            v80 = 0;
            v81 = 4 * a9;
            do
            {
              if (v20 < 1)
              {
                v92 = v76[2];
                v93 = v76[3];
              }

              else
              {
                v82 = v20;
                do
                {
                  v83 = vld1q_dup_f32(a3);
                  a3 = (a3 + v81);
                  v84 = vld1q_dup_f32(a4);
                  a4 = (a4 + v81);
                  v85 = v76[1];
                  v86 = vmlaq_f32(v83, v85, v74[1]);
                  v87 = vmlaq_f32(vmlaq_f32(v83, *v76, *v74), *v77, v74[2]);
                  v88 = vmlaq_f32(v86, v77[1], v74[3]);
                  *v77 = *v76;
                  v77[1] = v85;
                  *v76 = v87;
                  v76[1] = v88;
                  v89 = v76[2];
                  v90 = v76[3];
                  v91 = vmlaq_f32(v84, v90, v74[1]);
                  v92 = vmlaq_f32(vmlaq_f32(v84, v89, *v74), v77[2], v74[2]);
                  v93 = vmlaq_f32(v91, v77[3], v74[3]);
                  v77[2] = v89;
                  v77[3] = v90;
                  v76[2] = v92;
                  v76[3] = v93;
                  --v82;
                }

                while (v82);
              }

              v28 += v20;
              v94 = (v75 + 32 * (2 * v18));
              v95 = v94[1];
              v97 = v94[2];
              v96 = v94[3];
              v98 = vmlaq_f32(vmulq_f32(v96, v77[3]), v93, v95);
              v99 = vmlaq_f32(vmulq_f32(v97, v77[2]), v92, *v94);
              v100 = vaddq_f32(vmlaq_f32(vmulq_f32(v97, *v77), *v76, *v94), vmlaq_f32(vmulq_f32(v96, v77[1]), v76[1], v95));
              *a5 = vaddv_f32(vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL)));
              v101 = vaddq_f32(v99, v98);
              *a6 = vaddv_f32(vadd_f32(*v101.i8, *&vextq_s8(v101, v101, 8uLL)));
              a5 += a10;
              a6 += a10;
              v102 = v18 + v73;
              if (v102 < v78)
              {
                v20 = v79;
              }

              else
              {
                v20 = v79 + 1;
              }

              if (v102 < v78)
              {
                v103 = 0;
              }

              else
              {
                v103 = v78;
              }

              v18 = v102 - v103;
              ++v80;
            }

            while (v80 != a8);
          }

          v419 = a7 - v28;
          if (a7 <= v28)
          {
            goto LABEL_165;
          }

          if (v20 < v419)
          {
            v419 = v20;
          }

          if (v419 >= 1)
          {
            v446 = 0;
            v447 = v419;
            do
            {
              v448 = &a3[v446];
              v449 = &a4[v446];
              v450 = vld1q_dup_f32(v448);
              v451 = vld1q_dup_f32(v449);
              v452 = v76[1];
              v453 = vmlaq_f32(v450, v452, v74[1]);
              v454 = vmlaq_f32(vmlaq_f32(v450, *v76, *v74), *v77, v74[2]);
              v455 = vmlaq_f32(v453, v77[1], v74[3]);
              *v77 = *v76;
              v77[1] = v452;
              *v76 = v454;
              v76[1] = v455;
              v456 = v76[2];
              v457 = v76[3];
              v458 = vmlaq_f32(v451, v457, v74[1]);
              v459 = vmlaq_f32(vmlaq_f32(v451, v456, *v74), v77[2], v74[2]);
              v460 = vmlaq_f32(v458, v77[3], v74[3]);
              v77[2] = v456;
              v77[3] = v457;
              v76[2] = v459;
              v76[3] = v460;
              v446 += a9;
              --v447;
            }

            while (v447);
          }
        }

        else
        {
          if (a8 < 1)
          {
            v28 = 0;
          }

          else
          {
            v265 = 0;
            v28 = 0;
            v266 = 4 * a9;
            do
            {
              if (v20 < 1)
              {
                v279 = v76[4];
                v280 = v76[5];
              }

              else
              {
                v267 = v20;
                do
                {
                  v268 = vld1q_dup_f32(a3);
                  a3 = (a3 + v266);
                  v269 = vld1q_dup_f32(a4);
                  a4 = (a4 + v266);
                  v270 = v76[1];
                  v271 = vmlaq_f32(vmlaq_f32(v268, *v76, *v74), *v77, v74[4]);
                  v272 = vmlaq_f32(vmlaq_f32(v268, v270, v74[1]), v77[1], v74[5]);
                  *v77 = *v76;
                  v77[1] = v270;
                  *v76 = v271;
                  v76[1] = v272;
                  v273 = v76[2];
                  v274 = v76[3];
                  v275 = vmlaq_f32(vmlaq_f32(v269, v273, *v74), v77[2], v74[4]);
                  v276 = vmlaq_f32(vmlaq_f32(v269, v274, v74[1]), v77[3], v74[5]);
                  v77[2] = v273;
                  v77[3] = v274;
                  v76[2] = v275;
                  v76[3] = v276;
                  v277 = v76[4];
                  v278 = v76[5];
                  v279 = vmlaq_f32(vmlaq_f32(v268, v277, v74[2]), v77[4], v74[6]);
                  v280 = vmlaq_f32(vmlaq_f32(v269, v278, v74[3]), v77[5], v74[7]);
                  v77[4] = v277;
                  v77[5] = v278;
                  v76[4] = v279;
                  v76[5] = v280;
                  --v267;
                }

                while (v267);
              }

              v28 += v20;
              v281 = (v75 + 32 * (4 * v18));
              v282 = v281[1];
              v284 = v281[4];
              v283 = v281[5];
              v285 = vmlaq_f32(vmulq_f32(v283, v77[1]), v76[1], v282);
              v286 = vmlaq_f32(vmulq_f32(v284, *v77), *v76, *v281);
              v287 = vmlaq_f32(vmulq_f32(v283, v77[3]), v76[3], v282);
              v288 = vmlaq_f32(vmulq_f32(v284, v77[2]), v76[2], *v281);
              v289 = vmlaq_f32(vmulq_f32(v281[7], v77[5]), v280, v281[3]);
              v290 = vmlaq_f32(vmulq_f32(v281[6], v77[4]), v279, v281[2]);
              v291 = vaddq_f32(v286, v285);
              *v291.i8 = vadd_f32(*v291.i8, *&vextq_s8(v291, v291, 8uLL));
              v292 = vadd_f32(*v290.i8, *&vextq_s8(v290, v290, 8uLL));
              *a5 = vaddv_f32(vadd_f32(vzip1_s32(*v291.i8, v292), vzip2_s32(*v291.i8, v292)));
              v293 = vaddq_f32(v288, v287);
              *v293.i8 = vadd_f32(*v293.i8, *&vextq_s8(v293, v293, 8uLL));
              v294 = vadd_f32(*v289.i8, *&vextq_s8(v289, v289, 8uLL));
              *a6 = vaddv_f32(vadd_f32(vzip1_s32(*v293.i8, v294), vzip2_s32(*v293.i8, v294)));
              a5 += a10;
              a6 += a10;
              v295 = v18 + v73;
              if (v295 < v78)
              {
                v20 = v79;
              }

              else
              {
                v20 = v79 + 1;
              }

              if (v295 < v78)
              {
                v296 = 0;
              }

              else
              {
                v296 = v78;
              }

              v18 = v295 - v296;
              ++v265;
            }

            while (v265 != a8);
          }

          v419 = a7 - v28;
          if (a7 <= v28)
          {
            goto LABEL_165;
          }

          if (v20 < v419)
          {
            v419 = v20;
          }

          if (v419 >= 1)
          {
            v533 = 0;
            v534 = v419;
            do
            {
              v535 = &a3[v533];
              v536 = &a4[v533];
              v537 = vld1q_dup_f32(v535);
              v538 = v76[1];
              v539 = vld1q_dup_f32(v536);
              v540 = vmlaq_f32(vmlaq_f32(v537, *v76, *v74), *v77, v74[4]);
              v541 = vmlaq_f32(vmlaq_f32(v537, v538, v74[1]), v77[1], v74[5]);
              *v77 = *v76;
              v77[1] = v538;
              *v76 = v540;
              v76[1] = v541;
              v542 = v76[2];
              v543 = v76[3];
              v544 = vmlaq_f32(vmlaq_f32(v539, v542, *v74), v77[2], v74[4]);
              v545 = vmlaq_f32(vmlaq_f32(v539, v543, v74[1]), v77[3], v74[5]);
              v77[2] = v542;
              v77[3] = v543;
              v76[2] = v544;
              v76[3] = v545;
              v546 = v76[4];
              v547 = v76[5];
              v548 = vmlaq_f32(vmlaq_f32(v537, v546, v74[2]), v77[4], v74[6]);
              v549 = vmlaq_f32(vmlaq_f32(v539, v547, v74[3]), v77[5], v74[7]);
              v77[4] = v546;
              v77[5] = v547;
              v76[4] = v548;
              v76[5] = v549;
              v533 += a9;
              --v534;
            }

            while (v534);
          }
        }

        goto LABEL_164;
      }

      v174 = *(a2 + 17);
      v173 = *(a2 + 18);
      v175 = *(a2 + 22);
      v176 = *(*a2 + 16);
      v177 = *(*a2 + 40);
      v178 = *(a2 + 14);
      v179 = *(a2 + 17);
      v180 = *(a2 + 15);
      if (*(a2 + 14) == 8)
      {
        if (a8 >= 1)
        {
          v181 = 0;
          v28 = 0;
          v182 = 4 * a9;
          while (1)
          {
            v28 += v175;
            if (v28 > *(a2 + 64))
            {
              break;
            }

            if (v175 < 1)
            {
              v192 = v178[2];
              v193 = v178[3];
            }

            else
            {
              do
              {
                v183 = vld1q_dup_f32(a3);
                a3 = (a3 + v182);
                v184 = vld1q_dup_f32(a4);
                a4 = (a4 + v182);
                v185 = v178[1];
                v186 = vmlaq_f32(v183, v185, v176[1]);
                v187 = vmlaq_f32(vmlaq_f32(v183, *v178, *v176), *v179, v176[2]);
                v188 = vmlaq_f32(v186, v179[1], v176[3]);
                *v179 = *v178;
                v179[1] = v185;
                *v178 = v187;
                v178[1] = v188;
                v189 = v178[2];
                v190 = v178[3];
                v191 = vmlaq_f32(v184, v190, v176[1]);
                v192 = vmlaq_f32(vmlaq_f32(v184, v189, *v176), v179[2], v176[2]);
                v193 = vmlaq_f32(v191, v179[3], v176[3]);
                v179[2] = v189;
                v179[3] = v190;
                v178[2] = v192;
                v178[3] = v193;
                --v175;
              }

              while (v175);
            }

            v194 = *(a2 + 12) * (v173 & 0x7FFFFF);
            v195 = (v177 + 32 * ((v173 >> 22) & 0x1FE));
            v196 = v195[1];
            v197 = v178[1];
            v199 = v195[2];
            v198 = v195[3];
            v200 = v179[1];
            v202 = v179[2];
            v201 = v179[3];
            v203 = vaddq_f32(vmlaq_f32(vmulq_f32(v199, *v179), *v178, *v195), vmlaq_f32(vmulq_f32(v198, v200), v197, v196));
            *v203.i8 = vadd_f32(*v203.i8, *&vextq_s8(v203, v203, 8uLL));
            v204 = vaddq_f32(vmlaq_f32(vmulq_f32(v199, v202), v192, *v195), vmlaq_f32(vmulq_f32(v198, v201), v193, v196));
            *v204.i8 = vadd_f32(*v204.i8, *&vextq_s8(v204, v204, 8uLL));
            v205 = v195[4];
            v206 = v195[5];
            v208 = v195[6];
            v207 = v195[7];
            v209 = vmlaq_f32(vmulq_f32(v202, v208), v192, v205);
            v210 = vaddq_f32(vmlaq_f32(vmulq_f32(*v179, v208), *v178, v205), vmlaq_f32(vmulq_f32(v200, v207), v197, v206));
            *v210.i8 = vadd_f32(*v210.i8, *&vextq_s8(v210, v210, 8uLL));
            *v210.i8 = vadd_f32(vzip1_s32(*v210.i8, *v203.i8), vzip2_s32(*v210.i8, *v203.i8));
            v211 = vaddq_f32(v209, vmlaq_f32(vmulq_f32(v201, v207), v193, v206));
            *v211.i8 = vadd_f32(*v211.i8, *&vextq_s8(v211, v211, 8uLL));
            *v211.i8 = vadd_f32(vzip1_s32(*v211.i8, *v204.i8), vzip2_s32(*v211.i8, *v204.i8));
            *a5 = *&v210.i32[1] + (v194 * (*v210.i32 - *&v210.i32[1]));
            *a6 = *&v211.i32[1] + (v194 * (*v211.i32 - *&v211.i32[1]));
            a5 += a10;
            a6 += a10;
            LODWORD(v195) = v173 + v174;
            v173 = (v173 + v174) & 0x7FFFFFFF;
            v175 = v180 + (v195 >> 31);
            if (++v181 == a8)
            {
              goto LABEL_134;
            }
          }

          v72 = 1919747730;
          goto LABEL_23;
        }

        v28 = 0;
LABEL_134:
        v487 = a7 - v28;
        if (a7 > v28)
        {
          if (v175 < v487)
          {
            v487 = v175;
          }

          if (v487 >= 1)
          {
            v488 = 0;
            v489 = v487;
            do
            {
              v490 = &a3[v488];
              v491 = &a4[v488];
              v492 = vld1q_dup_f32(v490);
              v493 = vld1q_dup_f32(v491);
              v494 = v178[1];
              v495 = vmlaq_f32(v492, v494, v176[1]);
              v496 = vmlaq_f32(vmlaq_f32(v492, *v178, *v176), *v179, v176[2]);
              v497 = vmlaq_f32(v495, v179[1], v176[3]);
              *v179 = *v178;
              v179[1] = v494;
              *v178 = v496;
              v178[1] = v497;
              v498 = v178[2];
              v499 = v178[3];
              v500 = vmlaq_f32(v493, v499, v176[1]);
              v501 = vmlaq_f32(vmlaq_f32(v493, v498, *v176), v179[2], v176[2]);
              v502 = vmlaq_f32(v500, v179[3], v176[3]);
              v179[2] = v498;
              v179[3] = v499;
              v178[2] = v501;
              v178[3] = v502;
              v488 += a9;
              --v489;
            }

            while (v489);
          }

LABEL_175:
          v175 -= v487;
          v28 += v487;
        }
      }

      else
      {
        if (a8 >= 1)
        {
          v373 = 0;
          v28 = 0;
          v374 = 4 * a9;
          while (1)
          {
            v28 += v175;
            if (v28 > *(a2 + 64))
            {
              break;
            }

            if (v175 < 1)
            {
              v386 = v178[4];
              v387 = v178[5];
            }

            else
            {
              do
              {
                v375 = vld1q_dup_f32(a3);
                a3 = (a3 + v374);
                v376 = vld1q_dup_f32(a4);
                a4 = (a4 + v374);
                v377 = v178[1];
                v378 = vmlaq_f32(vmlaq_f32(v375, *v178, *v176), *v179, v176[4]);
                v379 = vmlaq_f32(vmlaq_f32(v375, v377, v176[1]), v179[1], v176[5]);
                *v179 = *v178;
                v179[1] = v377;
                *v178 = v378;
                v178[1] = v379;
                v380 = v178[2];
                v381 = v178[3];
                v382 = vmlaq_f32(vmlaq_f32(v376, v380, *v176), v179[2], v176[4]);
                v383 = vmlaq_f32(vmlaq_f32(v376, v381, v176[1]), v179[3], v176[5]);
                v179[2] = v380;
                v179[3] = v381;
                v178[2] = v382;
                v178[3] = v383;
                v384 = v178[4];
                v385 = v178[5];
                v386 = vmlaq_f32(vmlaq_f32(v375, v384, v176[2]), v179[4], v176[6]);
                v387 = vmlaq_f32(vmlaq_f32(v376, v385, v176[3]), v179[5], v176[7]);
                v179[4] = v384;
                v179[5] = v385;
                v178[4] = v386;
                v178[5] = v387;
                --v175;
              }

              while (v175);
            }

            v388 = *(a2 + 12) * (v173 & 0x7FFFFF);
            v389 = (v177 + 32 * ((v173 >> 21) & 0x3FC));
            v390 = v389[1];
            v391 = v178[1];
            v393 = v389[4];
            v392 = v389[5];
            v394 = v179[1];
            v395 = vmlaq_f32(vmulq_f32(v392, v394), v391, v390);
            v396 = v178[2];
            v397 = v178[3];
            v399 = v179[2];
            v398 = v179[3];
            v400 = vmlaq_f32(vmulq_f32(v392, v398), v397, v390);
            v402 = v179[4];
            v401 = v179[5];
            v403 = vmlaq_f32(vmulq_f32(v389[7], v401), v387, v389[3]);
            v404 = vmlaq_f32(vmulq_f32(v389[6], v402), v386, v389[2]);
            v405 = vaddq_f32(vmlaq_f32(vmulq_f32(v393, *v179), *v178, *v389), v395);
            *v405.i8 = vadd_f32(*v405.i8, *&vextq_s8(v405, v405, 8uLL));
            *v390.f32 = vadd_f32(*v404.i8, *&vextq_s8(v404, v404, 8uLL));
            v406 = vaddq_f32(vmlaq_f32(vmulq_f32(v393, v399), v396, *v389), v400);
            *v406.i8 = vadd_f32(*v406.i8, *&vextq_s8(v406, v406, 8uLL));
            *v393.f32 = vadd_f32(*v403.i8, *&vextq_s8(v403, v403, 8uLL));
            v407 = v389[8];
            v408 = v389[9];
            v410 = v389[12];
            v409 = v389[13];
            v411 = vmlaq_f32(vmulq_f32(v394, v409), v391, v408);
            v412 = vmlaq_f32(vmulq_f32(v398, v409), v397, v408);
            v413 = vmlaq_f32(vmulq_f32(v399, v410), v396, v407);
            v414 = vmlaq_f32(vmulq_f32(v401, v389[15]), v387, v389[11]);
            v415 = vmlaq_f32(vmulq_f32(v402, v389[14]), v386, v389[10]);
            v416 = vaddq_f32(vmlaq_f32(vmulq_f32(*v179, v410), *v178, v407), v411);
            *v416.i8 = vadd_f32(*v416.i8, *&vextq_s8(v416, v416, 8uLL));
            v417 = vadd_f32(*v415.i8, *&vextq_s8(v415, v415, 8uLL));
            *v416.i8 = vadd_f32(vadd_f32(vzip1_s32(*v416.i8, *v405.i8), vzip2_s32(*v416.i8, *v405.i8)), vadd_f32(vzip1_s32(v417, *v390.f32), vzip2_s32(v417, *v390.f32)));
            v418 = vaddq_f32(v413, v412);
            *v418.i8 = vadd_f32(*v418.i8, *&vextq_s8(v418, v418, 8uLL));
            *v405.i8 = vadd_f32(*v414.i8, *&vextq_s8(v414, v414, 8uLL));
            *v418.i8 = vadd_f32(vadd_f32(vzip1_s32(*v418.i8, *v406.i8), vzip2_s32(*v418.i8, *v406.i8)), vadd_f32(vzip1_s32(*v405.i8, *v393.f32), vzip2_s32(*v405.i8, *v393.f32)));
            *a5 = *&v416.i32[1] + (v388 * (*v416.i32 - *&v416.i32[1]));
            *a6 = *&v418.i32[1] + (v388 * (*v418.i32 - *&v418.i32[1]));
            a5 += a10;
            a6 += a10;
            LODWORD(v389) = v173 + v174;
            v173 = (v173 + v174) & 0x7FFFFFFF;
            v175 = v180 + (v389 >> 31);
            if (++v373 == a8)
            {
              goto LABEL_169;
            }
          }

          v72 = 1919747780;
          goto LABEL_23;
        }

        v28 = 0;
LABEL_169:
        v487 = a7 - v28;
        if (a7 > v28)
        {
          if (v175 < v487)
          {
            v487 = v175;
          }

          if (v487 >= 1)
          {
            v581 = 0;
            v582 = v487;
            do
            {
              v583 = &a3[v581];
              v584 = &a4[v581];
              v585 = vld1q_dup_f32(v583);
              v586 = v178[1];
              v587 = vld1q_dup_f32(v584);
              v588 = vmlaq_f32(vmlaq_f32(v585, *v178, *v176), *v179, v176[4]);
              v589 = vmlaq_f32(vmlaq_f32(v585, v586, v176[1]), v179[1], v176[5]);
              *v179 = *v178;
              v179[1] = v586;
              *v178 = v588;
              v178[1] = v589;
              v590 = v178[2];
              v591 = v178[3];
              v592 = vmlaq_f32(vmlaq_f32(v587, v590, *v176), v179[2], v176[4]);
              v593 = vmlaq_f32(vmlaq_f32(v587, v591, v176[1]), v179[3], v176[5]);
              v179[2] = v590;
              v179[3] = v591;
              v178[2] = v592;
              v178[3] = v593;
              v594 = v178[4];
              v595 = v178[5];
              v596 = vmlaq_f32(vmlaq_f32(v585, v594, v176[2]), v179[4], v176[6]);
              v597 = vmlaq_f32(vmlaq_f32(v587, v595, v176[3]), v179[5], v176[7]);
              v179[4] = v594;
              v179[5] = v595;
              v178[4] = v596;
              v178[5] = v597;
              v581 += a9;
              --v582;
            }

            while (v582);
          }

          goto LABEL_175;
        }
      }

      *(a2 + 18) = v173;
      *(a2 + 22) = v175;
      goto LABEL_166;
    }

    v72 = v599;
  }

  else
  {
    v72 = 1919747206;
  }

LABEL_23:
  *this = v72;
  *(this + 4) = 0;
LABEL_167:
  result = NAN;
  *(a2 + 32) = -1;
  *(a2 + 66) = -1;
  return result;
}