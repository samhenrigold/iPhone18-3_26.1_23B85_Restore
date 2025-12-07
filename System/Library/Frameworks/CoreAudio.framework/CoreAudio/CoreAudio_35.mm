uint64_t ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t result)
{
  v1 = **(result + 48) != 0;
  *(*(result + 40) + 1560) = v1;
  *(*(*(result + 32) + 8) + 24) = v1;
  return result;
}

void ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_184(uint64_t a1)
{
  if (*(a1 + 40))
  {
    operator new();
  }
}

void ___ZN11HALS_System15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_186(uint64_t a1)
{
  if (*(a1 + 40))
  {
    operator new();
  }
}

void ___ZN11HALS_System10DestroyTapEjP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[208];
  v4 = v2[209];
  if (v3 != v4)
  {
    while (*(*v3 + 4) != *(a1 + 56))
    {
      if (++v3 == v4)
      {
        return;
      }
    }
  }

  if (v3 != v4)
  {
    HALS_System::_DestroyTap(v2, *v3, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void HALS_System::_DestroyTap(HALS_Tap ***this, HALS_Tap *a2, HALS_Client *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3)
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
      v23 = "HALS_System.cpp";
      v24 = 1024;
      v25 = 3067;
      v26 = 2080;
      v27 = "client != nullptr";
      v20 = "%32s:%-5d Assertion Failed: %s Must provide a client object";
LABEL_39:
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x1Cu);
    }

LABEL_40:
    abort();
  }

  v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v6 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (!a2)
  {
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v19 = *v8;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "HALS_System.cpp";
      v24 = 1024;
      v25 = 3068;
      v26 = 2080;
      v27 = "tap != nullptr";
      v20 = "%32s:%-5d Assertion Failed: %s Must provide a tap object";
      goto LABEL_39;
    }

    goto LABEL_40;
  }

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

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a2 + 4);
    *buf = 136315650;
    v23 = "HALS_System.cpp";
    v24 = 1024;
    v25 = 3069;
    v26 = 1024;
    LODWORD(v27) = v15;
    _os_log_debug_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_DEBUG, "%32s:%-5d HALS_System::_DestroyTap(%u)", buf, 0x18u);
  }

  v11 = *(a2 + 6);
  if ((v11 & 0x100000000) != 0 && *(a3 + 4) == v11 || (*(a2 + 91) & 1) == 0)
  {
    HALS_ObjectMap::RetainObject(a2, v10);
    atomic_fetch_add(&HALS_Tap::gPendingTapDelete, 1uLL);
    v12 = this[208];
    v13 = this[209];
    if (v12 != v13)
    {
      while (*v12 != a2)
      {
        if (++v12 == v13)
        {
          goto LABEL_25;
        }
      }

      if (v12 != v13)
      {
        v14 = v12 + 1;
        if (v12 + 1 != v13)
        {
          do
          {
            if (*v14 != a2)
            {
              *v12++ = *v14;
            }

            ++v14;
          }

          while (v14 != v13);
          v13 = this[209];
        }
      }
    }

    if (v12 != v13)
    {
      this[209] = v12;
    }

LABEL_25:
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN11HALS_System11_DestroyTapEP8HALS_TapP11HALS_Client_block_invoke;
    block[3] = &__block_descriptor_tmp_143_7873;
    block[4] = a2;
    AMCP::Utility::Dispatch_Queue::async(HALS_ObjectMap::sNormalPriorityQueue, block);
  }
}

void ___ZN11HALS_System11_DestroyTapEP8HALS_TapP11HALS_Client_block_invoke(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  HALS_System::GetInstance(&v7, 0, v6);
  if (v7)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      if (v2[256] == 1)
      {
        (*(*v2 + 8))(v2);
        HALS_ObjectMap::ReleaseObject(*(a1 + 32), v3);
        HALS_ObjectMap::ObjectIsDead(*(a1 + 32), v4);
      }
    }
  }

  v5 = v8;
  if (v8)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE48CAFC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN11HALS_System49_TellAllIOContextsForClientAboutSleepingIsAllowedEP11HALS_Client_block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    do
    {
      v6 = HALS_ObjectMap::CopyObjectByObjectID(*v3);
      v8 = v6;
      if (v6)
      {
        v9 = *(result + 48);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v11[2] = ___ZN14HALS_IOContext24SleepingIsAllowedChangedEb_block_invoke;
        v11[3] = &__block_descriptor_tmp_14_12143;
        v11[4] = v6;
        v12 = v9;
        v10 = (*(*v6 + 64))(v6);
        HALB_CommandGate::ExecuteCommand(v10, v11);
      }

      HALS_ObjectMap::ReleaseObject(v8, v7);
      ++v3;
    }

    while (v3 != v4);
  }
}

void __destroy_helper_block_e8_32c57_ZTSNSt3__110shared_ptrINS_6vectorIjNS_9allocatorIjEEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_e8_32c57_ZTSNSt3__110shared_ptrINS_6vectorIjNS_9allocatorIjEEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<std::vector<unsigned int>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<unsigned int>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598A740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_System::StartRunLoop(HALS_System *this)
{
  v2 = (this + 1928);
  v3 = (this + 1928);
  v4 = HALB_Mutex::Lock((this + 1928));
  *(this + 2208) = 0;
  CADeprecated::CAPThread::Start(this + 2080);
  HALB_Guard::Wait(v2);
  HALB_Guard::Locker::~Locker(&v3);
}

void ___ZN11HALS_System41_TellAllIOContextsForClientAboutPowerHintEP11HALS_Client_block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    do
    {
      v6 = HALS_ObjectMap::CopyObjectByObjectID(*v3);
      v8 = v6;
      if (v6)
      {
        v9 = *(result + 48);
        v14 = 0;
        v15 = &v14;
        v16 = 0x2000000000;
        v17 = 0;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 0x40000000;
        v12[2] = ___ZN14HALS_IOContext16PowerHintChangedEj_block_invoke;
        v12[3] = &unk_1E8676DA8;
        v12[4] = &v14;
        v12[5] = v6;
        v13 = v9;
        v10 = (*(*v6 + 64))(v6);
        HALB_CommandGate::ExecuteCommand(v10, v12);
        if (*(v15 + 24) == 1)
        {
          v11 = v8[20];
          if (!v11)
          {
            v11 = v8[4];
          }

          *&v18.mSelector = 0x676C6F626673697ALL;
          v18.mElement = 0;
          HALS_Object::PropertiesChanged(v8, v11, 0, 1, &v18);
        }

        _Block_object_dispose(&v14, 8);
      }

      HALS_ObjectMap::ReleaseObject(v8, v7);
      ++v3;
    }

    while (v3 != v4);
  }
}

void ___ZNK11HALS_System21update_all_iocontextsEv_block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
  v4 = v2;
  if (v2)
  {
    (*(**(v2 + 104) + 296))(*(v2 + 104));
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
}

void sub_1DE48CFA4(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HALS_ObjectMap::ReleaseObject(v12, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_System::GetPropertyData(HALS_System *this, HALS_Object *a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, unsigned int *a6, unsigned int a7, const __CFString **a8, HALS_Client *a9)
{
  v9 = a8;
  v14 = this;
  v226 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1886221683)
  {
    if (mSelector <= 1698776146)
    {
      if (mSelector > 1682533919)
      {
        if (mSelector <= 1684370978)
        {
          if (mSelector == 1682533920)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4418;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDefaultInputDevice", buf, 0x12u);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              *exception = off_1F5991DD8;
              exception[2] = 561211770;
            }

            *buf = *(this + 202);
            *&buf[8] = HALB_Mutex::Lock(*buf);
            v64 = *(*buf + 112);
          }

          else
          {
            if (mSelector != 1682929012)
            {
              goto LABEL_276;
            }

            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4425;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDefaultOutputDevice", buf, 0x12u);
              }

              v159 = __cxa_allocate_exception(0x10uLL);
              *v159 = off_1F5991DD8;
              v159[2] = 561211770;
            }

            *buf = *(this + 202);
            *&buf[8] = HALB_Mutex::Lock(*buf);
            v64 = *(*buf + 216);
          }

LABEL_273:
          HALB_Mutex::Locker::~Locker(buf);
          *a6 = v64;
          goto LABEL_281;
        }

        if (mSelector == 1684370979)
        {
          platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
          v117 = (*(*platform_behaviors + 24))(platform_behaviors);
          if (v117)
          {
            v118 = HALS_PlatformBehaviors::get_platform_behaviors(v117);
            if ((*(*v118 + 24))(v118) != 1)
            {
              goto LABEL_288;
            }

            v41 = a4 >> 2;
            this = v14;
            v42 = a5;
            v43 = a6;
            v44 = 1;
            v119 = 0;
LABEL_287:
            HALS_System::GetDeviceList(this, v41, v42, v43, v44, v119, a9);
            goto LABEL_288;
          }

          v41 = a4 >> 2;
          this = v14;
          v42 = a5;
          v43 = a6;
          v44 = 2;
LABEL_286:
          v119 = 1;
          goto LABEL_287;
        }

        if (mSelector != 1685288048)
        {
          if (mSelector == 1685416292)
          {
            if (a4 <= 0x1F)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4470;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
              }

              v153 = __cxa_allocate_exception(0x10uLL);
              *v153 = off_1F5991DD8;
              v153[2] = 561211770;
            }

            if (!a6)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4471;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: translation data is NULL for kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
              }

              v172 = __cxa_allocate_exception(0x10uLL);
              *v172 = off_1F5991DD8;
              v172[2] = 1852797029;
            }

            if (a6[2] != 8)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4477;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for input to kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
              }

              v178 = __cxa_allocate_exception(0x10uLL);
              *v178 = off_1F5991DD8;
              v178[2] = 561211770;
            }

            if (!*a6)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4478;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: input to kAudioHardwarePropertyDeviceForUID is NULL", buf, 0x12u);
              }

              v182 = __cxa_allocate_exception(0x10uLL);
              *v182 = off_1F5991DD8;
              v182[2] = 1852797029;
            }

            if (a6[6] != 4)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4482;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for output to kAudioHardwarePropertyDeviceForUID", buf, 0x12u);
              }

              v185 = __cxa_allocate_exception(0x10uLL);
              *v185 = off_1F5991DD8;
              v185[2] = 561211770;
            }

            v20 = *(a6 + 2);
            if (!v20)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4483;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: output to kAudioHardwarePropertyDeviceForUID is NULL", buf, 0x12u);
              }

              v187 = __cxa_allocate_exception(0x10uLL);
              *v187 = off_1F5991DD8;
              v187[2] = 1852797029;
            }

            v21 = **a6;
            memset(buf, 0, 32);
            *&buf[32] = 1065353216;
            v22 = HALS_System::CopyDeviceByUID(this, v21, a9, buf);
            std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(buf);
            if (v22)
            {
              v24 = *(v22 + 4);
            }

            else
            {
              v24 = 0;
            }

            *v20 = v24;
            *a5 = a4;
            HALS_ObjectMap::ReleaseObject(v22, v23);
            return;
          }

          goto LABEL_276;
        }

        if (a4 != 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4917;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for kAudioHardwareDestroyTap", buf, 0x12u);
          }

          v166 = __cxa_allocate_exception(0x10uLL);
          *v166 = off_1F5991DD8;
          v166[2] = 561211770;
        }

        if (!a6)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4918;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: nowhere to put the output data for kAudioHardwareDestroyTap", buf, 0x12u);
          }

          v176 = __cxa_allocate_exception(0x10uLL);
          *v176 = off_1F5991DD8;
          v176[2] = 1852797029;
        }

LABEL_197:
        *a6 = 0;
LABEL_281:
        v128 = 4;
LABEL_353:
        *a5 = v128;
        return;
      }

      if (mSelector > 1667461736)
      {
        if (mSelector == 1667461737)
        {
          only_macos_high_quality_local_recording = AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(this);
          if ((only_macos_high_quality_local_recording & 1) == 0)
          {
            v149 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v149 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(only_macos_high_quality_local_recording);
            }

            v151 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v150 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v150)
            {
              atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
              v152 = *v151;
              std::__shared_weak_count::__release_shared[abi:ne200100](v150);
            }

            else
            {
              v152 = *v151;
            }

            if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4928;
              *&buf[18] = 2080;
              *&buf[20] = "allowCCR == false";
              _os_log_error_impl(&dword_1DE1F9000, v152, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s HALS_System::GetPropertyData: kAudioHardwarePropertyContentCreationRecordingInfo feature disabled", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v209);
            __cxa_allocate_exception(0x40uLL);
            v201 = off_1F5991DD8;
            v202 = 1852797029;
            LODWORD(v212) = 1852797029;
            v215 = 0;
            v216 = 0;
            LODWORD(v217) = -1;
            v211 = &unk_1F598E5D8;
            v213 = &unk_1F598E600;
            v214 = 0;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::clone_impl(buf, &v211);
            *&buf[32] = "virtual void HALS_System::GetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, UInt32 &, void *, UInt32, const void *, HALS_Client *) const";
            v224 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
            LODWORD(v225.__r_.__value_.__l.__data_) = 4928;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v210);
          }

          if (a4 <= 7)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4931;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyContentCreationRecordingInfo", buf, 0x12u);
            }

            v189 = __cxa_allocate_exception(0x10uLL);
            *v189 = off_1F5991DD8;
            v189[2] = 561211770;
          }

          v200[0] = MEMORY[0x1E69E9820];
          v200[1] = 0x40000000;
          v200[2] = ___ZNK11HALS_System15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_181;
          v200[3] = &__block_descriptor_tmp_182;
          v200[4] = v14;
          v200[5] = a6;
          v78 = (*(*v14 + 64))(v14);
          HALB_CommandGate::ExecuteCommand(v78, v200);
          goto LABEL_352;
        }

        if (mSelector != 1668049699)
        {
          goto LABEL_276;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x4002000000;
        *&buf[24] = __Block_byref_object_copy__7820;
        *&buf[32] = __Block_byref_object_dispose__7821;
        v224 = 0;
        *&v225.__r_.__value_.__l.__data_ = 0uLL;
        v211 = MEMORY[0x1E69E9820];
        v212 = 0x40000000;
        v213 = ___ZNK11HALS_System18GetClockDeviceListEjRjPjP11HALS_Client_block_invoke;
        v214 = &unk_1E8675860;
        v215 = buf;
        v216 = this;
        v45 = (*(*this + 64))(this, a2);
        HALB_CommandGate::ExecuteCommand(v45, &v211);
        *a5 = 0;
        v46 = *(*&buf[8] + 40);
        v47 = *(*&buf[8] + 48);
        if (v46 != v47)
        {
          v48 = a4 >> 2;
          do
          {
            v219 = 0;
            v220 = 0;
            v221 = 0;
            HALS_DeviceManager::CopyClockDeviceList(*v46, &v219);
            v50 = v220;
            v51 = *a5;
            if (v219 != v220)
            {
              v52 = (v219 + 8);
              do
              {
                a6[v51] = *(*(v52 - 1) + 4);
                v51 = *a5 + 1;
                *a5 = v51;
              }

              while (v51 < v48 && v52++ != v50);
            }

            HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v219, v49);
            ++v46;
          }

          while (v51 < v48 && v46 != v47);
        }
      }

      else
      {
        if (mSelector == 1651074160)
        {
          v76 = HALS_PlatformBehaviors::get_platform_behaviors(this);
          if (((*(*v76 + 128))(v76) & 1) == 0)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4533;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateBundleIDToPlugIn", buf, 0x12u);
              }

              v192 = __cxa_allocate_exception(0x10uLL);
              *v192 = off_1F5991DD8;
              v192[2] = 561211770;
            }

            if (a7 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4534;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyTranslateBundleIDToPlugIn", buf, 0x12u);
              }

              v197 = __cxa_allocate_exception(0x10uLL);
              *v197 = off_1F5991DD8;
              v197[2] = 561211770;
            }

            v17 = HALS_System::CopyPlugInByBundleID(v14, *v9);
            if (v17)
            {
              v19 = *(v17 + 4);
            }

            else
            {
              v19 = 0;
            }

            goto LABEL_325;
          }

          return;
        }

        if (mSelector != 1651472419)
        {
          goto LABEL_276;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x4002000000;
        *&buf[24] = __Block_byref_object_copy__7820;
        *&buf[32] = __Block_byref_object_dispose__7821;
        v224 = 0;
        *&v225.__r_.__value_.__l.__data_ = 0uLL;
        v211 = MEMORY[0x1E69E9820];
        v212 = 0x40000000;
        v213 = ___ZNK11HALS_System10GetBoxListEjRjPjP11HALS_Client_block_invoke;
        v214 = &unk_1E86757E8;
        v215 = buf;
        v216 = this;
        v30 = (*(*this + 64))(this, a2);
        HALB_CommandGate::ExecuteCommand(v30, &v211);
        *a5 = 0;
        v31 = *(*&buf[8] + 40);
        v32 = *(*&buf[8] + 48);
        if (v31 != v32)
        {
          v33 = a4 >> 2;
          do
          {
            v219 = 0;
            v220 = 0;
            v221 = 0;
            HALS_DeviceManager::CopyBoxList(*v31, &v219, a9);
            v35 = v220;
            v36 = *a5;
            if (v219 != v220)
            {
              v37 = (v219 + 8);
              do
              {
                a6[v36] = *(*(v37 - 1) + 4);
                v36 = *a5 + 1;
                *a5 = v36;
              }

              while (v36 < v33 && v37++ != v35);
            }

            HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v219, v34);
            ++v31;
          }

          while (v36 < v33 && v31 != v32);
        }
      }

LABEL_244:
      _Block_object_dispose(buf, 8);
      HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v224, v110);
LABEL_288:
      v128 = 4 * *a5;
      goto LABEL_353;
    }

    if (mSelector > 1835821925)
    {
      if (mSelector <= 1885954664)
      {
        if (mSelector != 1835821926)
        {
          if (mSelector == 1870098020)
          {
            v65 = a8 == 0;
            if (a8 && a7 >= 4)
            {
              v66 = 1;
              do
              {
                v67 = *v9;
                v9 = (v9 + 4);
                v65 = v67 == 1634757735;
              }

              while (v67 != 1634757735 && v66++ < a7 >> 2);
            }

            if (v65)
            {
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x4002000000;
              *&buf[24] = __Block_byref_object_copy__7820;
              *&buf[32] = __Block_byref_object_dispose__7821;
              v224 = 0;
              *&v225.__r_.__value_.__l.__data_ = 0uLL;
              v203[0] = MEMORY[0x1E69E9820];
              v203[1] = 0x40000000;
              v203[2] = ___ZNK11HALS_System15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_177;
              v203[3] = &unk_1E8675F20;
              v203[4] = buf;
              v203[5] = this;
              v69 = (*(*this + 64))(this, a2);
              HALB_CommandGate::ExecuteCommand(v69, v203);
              if (a4 >= 4)
              {
                v139 = 0;
                v140 = 0;
                v141 = *(*&buf[8] + 40);
                v142 = *(*&buf[8] + 48);
                while (v141 + v139 != v142)
                {
                  a6[v140] = *(*(v141 + 8 * v140) + 16);
                  ++v140;
                  v139 += 8;
                  if (a4 >> 2 == v140)
                  {
                    LODWORD(v140) = a4 >> 2;
                    break;
                  }
                }

                v70 = 4 * v140;
              }

              else
              {
                v70 = 0;
              }

              *a5 = v70;
              _Block_object_dispose(buf, 8);
              HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v224, v143);
            }

            else
            {
              *a5 = 0;
            }

            return;
          }

          goto LABEL_276;
        }

        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4860;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyMlockFailHandling", buf, 0x12u);
          }

          v171 = __cxa_allocate_exception(0x10uLL);
          *v171 = off_1F5991DD8;
          v171[2] = 561211770;
        }

        v25 = atomic_load(HALB_MlockFailHandling::mHandling);
        goto LABEL_280;
      }

      if (mSelector == 1885954665)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4551;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyPlugInForBundleID", buf, 0x12u);
          }

          v167 = __cxa_allocate_exception(0x10uLL);
          *v167 = off_1F5991DD8;
          v167[2] = 561211770;
        }

        if (!a6)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4552;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: translation data is NULL for kAudioHardwarePropertyPlugInForBundleID", buf, 0x12u);
          }

          v177 = __cxa_allocate_exception(0x10uLL);
          *v177 = off_1F5991DD8;
          v177[2] = 1852797029;
        }

        if (a6[2] != 8)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4558;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for input to kAudioHardwarePropertyPlugInForBundleID", buf, 0x12u);
          }

          v181 = __cxa_allocate_exception(0x10uLL);
          *v181 = off_1F5991DD8;
          v181[2] = 561211770;
        }

        if (!*a6)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4559;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: input to kAudioHardwarePropertyPlugInForBundleID is NULL", buf, 0x12u);
          }

          v184 = __cxa_allocate_exception(0x10uLL);
          *v184 = off_1F5991DD8;
          v184[2] = 1852797029;
        }

        if (a6[6] != 4)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4563;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for output to kAudioHardwarePropertyPlugInForBundleID", buf, 0x12u);
          }

          v186 = __cxa_allocate_exception(0x10uLL);
          *v186 = off_1F5991DD8;
          v186[2] = 561211770;
        }

        v120 = *(a6 + 2);
        if (!v120)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4564;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: output to kAudioHardwarePropertyPlugInForBundleID is NULL", buf, 0x12u);
          }

          v188 = __cxa_allocate_exception(0x10uLL);
          *v188 = off_1F5991DD8;
          v188[2] = 1852797029;
        }

        v121 = HALS_System::CopyPlugInByBundleID(this, **a6);
        if (v121)
        {
          v123 = *(v121 + 4);
        }

        else
        {
          v123 = 0;
        }

        *v120 = v123;
        *a5 = a4;
        HALS_ObjectMap::ReleaseObject(v121, v122);
        return;
      }

      if (mSelector != 1886152483)
      {
        if (mSelector == 1886218606)
        {
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4694;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyProcessInputMute", buf, 0x12u);
            }

            v155 = __cxa_allocate_exception(0x10uLL);
            *v155 = off_1F5991DD8;
            v155[2] = 561211770;
          }

          HALS_ObjectMap::RetainObject(a9, a2);
          if (a9)
          {
            v211 = 0x676C6F6270696D74;
            LODWORD(v212) = 0;
            (*(*a9 + 120))(a9, *(a9 + 4), &v211, a4, a5, a6, 0, 0, a9);
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              v27 = *(a9 + 60);
              if (*a6)
              {
                v28 = "on";
              }

              else
              {
                v28 = "off";
              }

              *buf = 136315906;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4708;
              *&buf[18] = 1024;
              *&buf[20] = v27;
              *&buf[24] = 2080;
              *&buf[26] = v28;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_System::GetPropertyData: PID: %d Process Input Mute: %s", buf, 0x22u);
            }
          }

          else
          {
            *a6 = 0;
            *a5 = 4;
          }

          HALS_ObjectMap::ReleaseObject(a9, v26);
          return;
        }

        goto LABEL_276;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4002000000;
      *&buf[24] = __Block_byref_object_copy__7820;
      *&buf[32] = __Block_byref_object_dispose__7821;
      v224 = 0;
      *&v225.__r_.__value_.__l.__data_ = 0uLL;
      v211 = MEMORY[0x1E69E9820];
      v212 = 0x40000000;
      v213 = ___ZNK11HALS_System13GetPlugInListEjRjPj_block_invoke;
      v214 = &unk_1E86756F8;
      v215 = buf;
      v216 = this;
      v90 = (*(*this + 64))(this, a2);
      HALB_CommandGate::ExecuteCommand(v90, &v211);
      *a5 = 0;
      v91 = *(*&buf[8] + 40);
      v92 = *(*&buf[8] + 48);
      if (v91 == v92)
      {
        goto LABEL_244;
      }

      v93 = 0;
      while (1)
      {
        while (1)
        {
          v94 = *(*v91 + 20);
          v95 = *(*v91 + 24);
          if (v94 == v95)
          {
            break;
          }

          if (v94 != 1634757735 && v94 != 1953656941 && v95 != 1634757735 && v95 != 1953656941)
          {
            goto LABEL_205;
          }

LABEL_218:
          a6[v93] = *(*v91 + 16);
          v93 = *a5 + 1;
          *a5 = v93;
          v91 += 8;
          if (v93 >= a4 >> 2 || v91 == v92)
          {
            goto LABEL_244;
          }
        }

        if (v94 == 1953656941 || v94 == 1634757735)
        {
          goto LABEL_218;
        }

LABEL_205:
        v91 += 8;
        if (v91 == v92)
        {
          goto LABEL_244;
        }
      }
    }

    if (mSelector <= 1769302371)
    {
      if (mSelector == 1698776147)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4748;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioDevicePropertyEnableAdaptableDeviceSimulator", buf, 0x12u);
          }

          v162 = __cxa_allocate_exception(0x10uLL);
          *v162 = off_1F5991DD8;
          v162[2] = 561211770;
        }

        v25 = *(this + 1632);
        goto LABEL_280;
      }

      if (mSelector != 1768845172)
      {
        goto LABEL_276;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4777;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: wrong size for kAudioHardwarePropertyIsInitingOrExiting", buf, 0x12u);
        }

        v40 = __cxa_allocate_exception(0x10uLL);
        *v40 = off_1F5991DD8;
        v40[2] = 561211770;
      }

      goto LABEL_197;
    }

    if (mSelector != 1769302372)
    {
      if (mSelector != 1835758704)
      {
        goto LABEL_276;
      }

      if (a7 != 8)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4896;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong qualifier size for kAudioHardwareCreateTap", buf, 0x12u);
        }

        v157 = __cxa_allocate_exception(0x10uLL);
        *v157 = off_1F5991DD8;
        v157[2] = 561211770;
      }

      if (a4 != 8)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4897;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong data size for kAudioHardwareCreateTap", buf, 0x12u);
        }

        v173 = __cxa_allocate_exception(0x10uLL);
        *v173 = off_1F5991DD8;
        v173[2] = 561211770;
      }

      if (!a6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4898;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: nowhere to put the output data for kAudioHardwareCreateTap", buf, 0x12u);
        }

        v179 = __cxa_allocate_exception(0x10uLL);
        *v179 = off_1F5991DD8;
        v179[2] = 1852797029;
      }

      v55 = *a8;
      v219 = 0;
      v220 = &v219;
      v221 = 0x2000000000;
      LODWORD(v222) = 0;
      if (v55 && (v211 = MEMORY[0x1E69E9820], v212 = 0x40000000, v213 = ___ZN11HALS_System9CreateTapEPK14__CFDictionaryP11HALS_Client_block_invoke, v214 = &unk_1E8675C38, v215 = &v219, v216 = this, v217 = v55, v218 = a9, v56 = (*(*this + 64))(this, a2), HALB_CommandGate::ExecuteCommand(v56, &v211), *(v220 + 6)))
      {
        if (g_static_start_options != 1)
        {
          CFRetain(v55);
          if (a9)
          {
            if (*(a9 + 759) < 0)
            {
              std::string::__init_copy_ctor_external(&v210, *(a9 + 92), *(a9 + 93));
            }

            else
            {
              v210 = *(a9 + 736);
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v210, "");
          }

          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 1174405120;
          *&buf[16] = ___ZN11HALS_System9CreateTapEPK14__CFDictionaryP11HALS_Client_block_invoke_2;
          *&buf[24] = &__block_descriptor_tmp_123;
          *&buf[32] = v14;
          v224 = v55;
          if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v225, v210.__r_.__value_.__l.__data_, v210.__r_.__value_.__l.__size_);
          }

          else
          {
            v225 = v210;
          }

          AMCP::Utility::Dispatch_Queue::async(v14 + 1216, buf);
          if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v225.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v210.__r_.__value_.__l.__data_);
          }
        }

        v210.__r_.__value_.__r.__words[0] = 0x676C6F6274707323;
        LODWORD(v210.__r_.__value_.__r.__words[1]) = 0;
        if (a9)
        {
          v146 = *(a9 + 4);
        }

        else
        {
          v146 = 0;
        }

        (*(*v14 + 152))(v14, v14, v146, 1, &v210, 0);
        v147 = *(v220 + 6);
        _Block_object_dispose(&v219, 8);
        if (v147)
        {
          *buf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
          applesauce::CF::StringRef::StringRef(&v211, "TapObjectID", 11);
          applesauce::CF::NumberRef::NumberRef<unsigned int,void>(&v219, v147);
          mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(*buf, v211, v219);
          applesauce::CF::NumberRef::~NumberRef(&v219);
          applesauce::CF::StringRef::~StringRef(&v211);
          mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v211, *buf);
          v148 = v211;
          v211 = 0;
          *a6 = v148;
          applesauce::CF::DictionaryRef::~DictionaryRef(&v211);
          mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(buf);
          goto LABEL_352;
        }
      }

      else
      {
        _Block_object_dispose(&v219, 8);
      }

      *a6 = 0;
LABEL_352:
      v128 = 8;
      goto LABEL_353;
    }

    if (a7 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4867;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: wrong qualifier size for kAudioHardwarePropertyDeviceForUseCaseID", buf, 0x12u);
      }

      v163 = __cxa_allocate_exception(0x10uLL);
      *v163 = off_1F5991DD8;
      v163[2] = 561211770;
    }

    if (!a8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4868;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: qualifier data is NULL for kAudioHardwarePropertyDeviceForUseCaseID", buf, 0x12u);
      }

      v175 = __cxa_allocate_exception(0x10uLL);
      *v175 = off_1F5991DD8;
      v175[2] = 1852797029;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4870;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDeviceForUseCaseID", buf, 0x12u);
      }

      v180 = __cxa_allocate_exception(0x10uLL);
      *v180 = off_1F5991DD8;
      v180[2] = 561211770;
    }

    if (!a6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4871;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: out data is NULL for kAudioHardwarePropertyDeviceForUseCaseID", buf, 0x12u);
      }

      v183 = __cxa_allocate_exception(0x10uLL);
      *v183 = off_1F5991DD8;
      v183[2] = 1852797029;
    }

    *a6 = 0;
    *a5 = 4;
    v79 = *a8;
    __sz = HALS_System::GetNumberDevices(this, 1, 1, a9);
    LODWORD(v211) = 0;
    std::vector<unsigned int>::vector[abi:ne200100](buf, __sz, &v211);
    HALS_System::GetDeviceList(v14, __sz, &__sz, *buf, 1, 1, a9);
    v80 = __sz;
    v82 = *buf;
    v81 = *&buf[8];
    v83 = (*&buf[8] - *buf) >> 2;
    if (v83 > __sz)
    {
      std::vector<unsigned int>::resize(buf, __sz);
      v82 = *buf;
      v81 = *&buf[8];
      v83 = (*&buf[8] - *buf) >> 2;
    }

    v211 = 0;
    v212 = 0;
    v213 = 0;
    v219 = &v211;
    LOBYTE(v220) = 0;
    if (v83)
    {
      if (!(v83 >> 61))
      {
        operator new();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v129 = 0;
    if (v82 != v81)
    {
      do
      {
        v130 = HALS_ObjectMap::CopyObjectByObjectID(*v82);
        v131 = *v129;
        *v129 = v130;
        HALS_ObjectMap::ReleaseObject(v131, v132);
        ++v82;
        ++v129;
      }

      while (v82 != v81);
      v129 = v211;
      v83 = v212;
    }

    if (v129 != v83)
    {
      while (1)
      {
        v133 = *v129;
        if (*(*v129 + 5) != 1633773415)
        {
          v219 = 0x676C6F6269756964;
          LODWORD(v220) = 0;
          v134 = v133[4];
          __sz_4 = 0;
          v208 = 0;
          (*(*v133 + 120))(v133, v134, &v219, 4, &__sz_4, &v208, 0, 0, a9);
          if (v208 == v79)
          {
            break;
          }
        }

        if (++v129 == v83)
        {
          v129 = v83;
          break;
        }
      }
    }

    v135 = v212;
    if (v212 == v129)
    {
      v136 = v211;
      if (v211 != v129)
      {
        while (1)
        {
          v137 = *v136;
          if (*(*v136 + 20) == 1633773415)
          {
            v219 = 0x676C6F6269756964;
            LODWORD(v220) = 0;
            v138 = v137[4];
            LODWORD(v201) = 0;
            v209 = 0;
            (*(*v137 + 120))(v137, v138, &v219, 4, &v209, &v201, 0, 0, a9);
            if (v201 == v79)
            {
              break;
            }
          }

          v136 += 8;
          if (v136 == v129)
          {
            v129 = v135;
            goto LABEL_329;
          }
        }
      }

      v129 = v136;
LABEL_329:
      if (v212 == v129)
      {
        v144 = 0;
        goto LABEL_332;
      }

      HALS_ObjectMap::RetainObject(*v129, v80);
    }

    else
    {
      HALS_ObjectMap::RetainObject(*v129, v80);
    }

    v144 = *v129;
LABEL_332:
    v219 = &v211;
    std::vector<HALS_Releaser<HALS_Device>>::__destroy_vector::operator()[abi:ne200100](&v219, v80);
    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (v144)
    {
      *a6 = *(v144 + 4);
    }

    HALS_ObjectMap::ReleaseObject(v144, v145);
    return;
  }

  if (mSelector <= 1937010030)
  {
    if (mSelector > 1919839343)
    {
      if (mSelector > 1934587251)
      {
        switch(mSelector)
        {
          case 1934587252:
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4432;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDefaultSystemOutputDevice", buf, 0x12u);
              }

              v165 = __cxa_allocate_exception(0x10uLL);
              *v165 = off_1F5991DD8;
              v165[2] = 561211770;
            }

            *buf = *(this + 202);
            *&buf[8] = HALB_Mutex::Lock(*buf);
            v64 = *(*buf + 320);
            break;
          case 1936224868:
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4439;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyDefaultSharedOutputDevice", buf, 0x12u);
              }

              v161 = __cxa_allocate_exception(0x10uLL);
              *v161 = off_1F5991DD8;
              v161[2] = 561211770;
            }

            *buf = *(this + 202);
            *&buf[8] = HALB_Mutex::Lock(*buf);
            v64 = *(*buf + 424);
            break;
          case 1936483696:
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4825;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: wrong size for kAudioHardwarePropertySleepingIsAllowed", buf, 0x12u);
              }

              v154 = __cxa_allocate_exception(0x10uLL);
              *v154 = off_1F5991DD8;
              v154[2] = 561211770;
            }

            if (a9)
            {
              v25 = *(a9 + 264);
LABEL_280:
              *a6 = v25;
              goto LABEL_281;
            }

            goto LABEL_279;
          default:
            goto LABEL_276;
        }

        goto LABEL_273;
      }

      if (mSelector != 1919839344)
      {
        v57 = 1920297316;
        goto LABEL_128;
      }

      if (a4 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4765;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyRunLoop", buf, 0x12u);
        }

        v168 = __cxa_allocate_exception(0x10uLL);
        *v168 = off_1F5991DD8;
        v168[2] = 561211770;
      }

      *buf = this + 1928;
      *&buf[8] = HALB_Mutex::Lock((this + 1928));
      v124 = *(v14 + 240);
      HALB_Guard::Locker::~Locker(buf);
      *a6 = v124;
      if (v124)
      {
        CFRetain(v124);
      }

      goto LABEL_352;
    }

    if (mSelector <= 1886548770)
    {
      if (mSelector == 1886221684)
      {
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "HALS_System.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4720;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyProcessIsAudible", buf, 0x12u);
          }

          v71 = __cxa_allocate_exception(0x10uLL);
          *v71 = off_1F5991DD8;
          v71[2] = 561211770;
        }

LABEL_192:
        v25 = 1;
        goto LABEL_280;
      }

      if (mSelector != 1886353256)
      {
        goto LABEL_276;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4741;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyPowerHint", buf, 0x12u);
        }

        v156 = __cxa_allocate_exception(0x10uLL);
        *v156 = off_1F5991DD8;
        v156[2] = 561211770;
      }

      if (a9)
      {
        v25 = *(a9 + 73);
        goto LABEL_280;
      }

LABEL_279:
      v25 = 0;
      goto LABEL_280;
    }

    if (mSelector == 1886548771)
    {
      NumberProcessObjects = HALS_System::GetNumberProcessObjects(this);
      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4849;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyProcessObjectList", buf, 0x12u);
        }

        v160 = __cxa_allocate_exception(0x10uLL);
        *v160 = off_1F5991DD8;
        v160[2] = 561211770;
      }

      if (a4 >> 2 >= NumberProcessObjects)
      {
        v73 = NumberProcessObjects;
      }

      else
      {
        v73 = a4 >> 2;
      }

      HALS_System::GetProcessObjectList(buf, v14);
      v74 = *buf;
      if (v73)
      {
        v75 = 4 * v73;
        memmove(a6, *buf, 4 * v73);
      }

      else
      {
        v75 = 0;
      }

      *a5 = v75;
      if (v74)
      {
        operator delete(v74);
      }

      return;
    }

    if (mSelector != 1919186467)
    {
      goto LABEL_276;
    }

    v41 = a4 >> 2;
    v42 = a5;
    v43 = a6;
    v44 = 0;
    goto LABEL_286;
  }

  if (mSelector > 1969841250)
  {
    if (mSelector > 1969841267)
    {
      switch(mSelector)
      {
        case 1969841268:
          v111 = HALS_PlatformBehaviors::get_platform_behaviors(this);
          if (((*(*v111 + 128))(v111) & 1) == 0)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4641;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateUIDToTap", buf, 0x12u);
              }

              v193 = __cxa_allocate_exception(0x10uLL);
              *v193 = off_1F5991DD8;
              v193[2] = 561211770;
            }

            if (a7 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4642;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyTranslateUIDToTap", buf, 0x12u);
              }

              v198 = __cxa_allocate_exception(0x10uLL);
              *v198 = off_1F5991DD8;
              v198[2] = 561211770;
            }

            v112 = *v9;
            applesauce::CF::details::Retain<__CFString const*>(*v9);
            applesauce::CF::StringRef::StringRef(buf, v112);
            applesauce::CF::StringRef::StringRef(&v205, *buf);
            v113 = HALS_System::CopyTapByUID(v14, v205, a9);
            applesauce::CF::StringRef::~StringRef(&v205);
            if (v113)
            {
              v115 = *(v113 + 4);
            }

            else
            {
              v115 = 0;
            }

            *a6 = v115;
            *a5 = 4;
            HALS_ObjectMap::ReleaseObject(v113, v114);
            applesauce::CF::StringRef::~StringRef(buf);
          }

          return;
        case 1970496882:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4727;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyUserSessionIsActiveOrHeadless", buf, 0x12u);
            }

            v164 = __cxa_allocate_exception(0x10uLL);
            *v164 = off_1F5991DD8;
            v164[2] = 561211770;
          }

          break;
        case 1986359923:
          if (a4 <= 3)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALS_System.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4686;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertySystemVersion", buf, 0x12u);
            }

            v29 = __cxa_allocate_exception(0x10uLL);
            *v29 = off_1F5991DD8;
            v29[2] = 561211770;
          }

          break;
        default:
          goto LABEL_276;
      }

      goto LABEL_192;
    }

    if (mSelector == 1969841251)
    {
      v126 = HALS_PlatformBehaviors::get_platform_behaviors(this);
      if ((*(*v126 + 128))(v126))
      {
        return;
      }

      if (a4 <= 3)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4669;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateUIDToClockDevice", buf, 0x12u);
        }

        v194 = __cxa_allocate_exception(0x10uLL);
        *v194 = off_1F5991DD8;
        v194[2] = 561211770;
      }

      if (a7 <= 7)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HALS_System.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4670;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyTranslateUIDToClockDevice", buf, 0x12u);
        }

        v199 = __cxa_allocate_exception(0x10uLL);
        *v199 = off_1F5991DD8;
        v199[2] = 561211770;
      }

      v127 = *v9;
      memset(buf, 0, 32);
      *&buf[32] = 1065353216;
      v61 = HALS_System::CopyClockDeviceByUID(v14, v127, buf);
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(buf);
      if (v61)
      {
        v63 = *(v61 + 4);
      }

      else
      {
        v63 = 0;
      }

      goto LABEL_295;
    }

    v57 = 1969841252;
LABEL_128:
    if (mSelector != v57)
    {
      goto LABEL_276;
    }

    v59 = HALS_PlatformBehaviors::get_platform_behaviors(this);
    if ((*(*v59 + 128))(v59))
    {
      return;
    }

    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4506;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyPhysicalDeviceForUID", buf, 0x12u);
      }

      v158 = __cxa_allocate_exception(0x10uLL);
      *v158 = off_1F5991DD8;
      v158[2] = 561211770;
    }

    if (a7 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4507;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyPhysicalDeviceForUID", buf, 0x12u);
      }

      v174 = __cxa_allocate_exception(0x10uLL);
      *v174 = off_1F5991DD8;
      v174[2] = 561211770;
    }

    v60 = *v9;
    memset(buf, 0, 32);
    *&buf[32] = 1065353216;
    v61 = HALS_System::CopyDeviceByUID(v14, v60, a9, buf);
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(buf);
    if (v61)
    {
      v63 = *(v61 + 4);
    }

    else
    {
      v63 = 0;
    }

LABEL_295:
    *a6 = v63;
    *a5 = 4;
    HALS_ObjectMap::ReleaseObject(v61, v62);
    return;
  }

  if (mSelector > 1953326882)
  {
    if (mSelector != 1953326883)
    {
      if (mSelector != 1953526563)
      {
        if (mSelector == 1969841250)
        {
          v16 = HALS_PlatformBehaviors::get_platform_behaviors(this);
          if (((*(*v16 + 128))(v16) & 1) == 0)
          {
            if (a4 <= 3)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4622;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateUIDToBox", buf, 0x12u);
              }

              v190 = __cxa_allocate_exception(0x10uLL);
              *v190 = off_1F5991DD8;
              v190[2] = 561211770;
            }

            if (a7 <= 7)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "HALS_System.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4623;
                _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyTranslateUIDToBox", buf, 0x12u);
              }

              v195 = __cxa_allocate_exception(0x10uLL);
              *v195 = off_1F5991DD8;
              v195[2] = 561211770;
            }

            v17 = HALS_System::CopyBoxByUID(v14, *v9, a9);
            if (v17)
            {
              v19 = *(v17 + 4);
            }

            else
            {
              v19 = 0;
            }

LABEL_325:
            *a6 = v19;
            *a5 = 4;
            HALS_ObjectMap::ReleaseObject(v17, v18);
            return;
          }

          return;
        }

LABEL_276:

        HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
        return;
      }

      *a5 = 0;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x4002000000;
      *&buf[24] = __Block_byref_object_copy__109;
      *&buf[32] = __Block_byref_object_dispose__110;
      v224 = 0;
      *&v225.__r_.__value_.__l.__data_ = 0uLL;
      v211 = MEMORY[0x1E69E9820];
      v212 = 0x40000000;
      v213 = ___ZNK11HALS_System10GetTapListEjRjPjP11HALS_Client_block_invoke;
      v214 = &unk_1E8675C88;
      v215 = buf;
      v216 = this;
      v217 = a9;
      v84 = (*(*this + 64))(this, a2);
      HALB_CommandGate::ExecuteCommand(v84, &v211);
      v86 = *(*&buf[8] + 40);
      v85 = *(*&buf[8] + 48);
      if (v86 != v85)
      {
        v87 = *a5;
        v88 = v86 + 4;
        do
        {
          a6[v87] = *(v88 - 4);
          v87 = *a5 + 1;
          *a5 = v87;
          v89 = v87 >= a4 >> 2 || v88 == v85;
          v88 += 4;
        }

        while (!v89);
      }

      _Block_object_dispose(buf, 8);
      if (v224)
      {
        v225.__r_.__value_.__r.__words[0] = v224;
        operator delete(v224);
      }

      goto LABEL_288;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4002000000;
    *&buf[24] = __Block_byref_object_copy__7820;
    *&buf[32] = __Block_byref_object_dispose__7821;
    v224 = 0;
    *&v225.__r_.__value_.__l.__data_ = 0uLL;
    v211 = MEMORY[0x1E69E9820];
    v212 = 0x40000000;
    v213 = ___ZNK11HALS_System23GetTransportManagerListEjRjPj_block_invoke;
    v214 = &unk_1E8675770;
    v215 = buf;
    v216 = this;
    v101 = (*(*this + 64))(this, a2);
    HALB_CommandGate::ExecuteCommand(v101, &v211);
    *a5 = 0;
    v102 = *(*&buf[8] + 40);
    v103 = *(*&buf[8] + 48);
    if (v102 != v103)
    {
      v104 = 0;
      while (1)
      {
        while (1)
        {
          v106 = *(*v102 + 20);
          v105 = *(*v102 + 24);
          if (v106 != v105 && v106 != 1953656941)
          {
            break;
          }

          if (v106 == 1953656941 || v106 != v105)
          {
            goto LABEL_239;
          }

LABEL_236:
          v102 += 8;
          if (v102 == v103)
          {
            goto LABEL_244;
          }
        }

        if (v105 != 1953656941)
        {
          goto LABEL_236;
        }

LABEL_239:
        a6[v104] = *(*v102 + 16);
        v104 = *a5 + 1;
        *a5 = v104;
        v102 += 8;
        if (v104 >= a4 >> 2 || v102 == v103)
        {
          goto LABEL_244;
        }
      }
    }

    goto LABEL_244;
  }

  if (mSelector == 1937010031)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4734;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::_GetPropertyData: bad property data size for kAudioHardwarePropertyMixStereoToMono", buf, 0x12u);
      }

      v169 = __cxa_allocate_exception(0x10uLL);
      *v169 = off_1F5991DD8;
      v169[2] = 561211770;
    }

    v204[0] = MEMORY[0x1E69E9820];
    v204[1] = 0x40000000;
    v204[2] = ___ZNK11HALS_System15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
    v204[3] = &__block_descriptor_tmp_176_7918;
    v204[4] = this;
    v204[5] = a6;
    v125 = (*(*this + 64))(this, a2);
    HALB_CommandGate::ExecuteCommand(v125, v204);
    goto LABEL_281;
  }

  if (mSelector != 1953325673)
  {
    goto LABEL_276;
  }

  v58 = HALS_PlatformBehaviors::get_platform_behaviors(this);
  if (((*(*v58 + 128))(v58) & 1) == 0)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4595;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad property data size for kAudioHardwarePropertyTranslateBundleIDToTransportManager", buf, 0x12u);
      }

      v191 = __cxa_allocate_exception(0x10uLL);
      *v191 = off_1F5991DD8;
      v191[2] = 561211770;
    }

    if (a7 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_System.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4596;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::GetPropertyData: bad qualifier data size for kAudioHardwarePropertyTranslateBundleIDToTransportManager", buf, 0x12u);
      }

      v196 = __cxa_allocate_exception(0x10uLL);
      *v196 = off_1F5991DD8;
      v196[2] = 561211770;
    }

    v17 = HALS_System::CopyTransportManagerByBundleID(v14, *v9);
    if (v17)
    {
      v19 = *(v17 + 4);
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_325;
  }
}

void sub_1DE490F9C(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  __p = &a40;
  std::vector<HALS_Releaser<HALS_Device>>::__destroy_vector::operator()[abi:ne200100](&__p, a2);
  v42 = *(v40 - 176);
  if (v42)
  {
    *(v40 - 168) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

void sub_1DE491138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::exception a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  *(v41 - 208) = v39;
  v43 = *(v41 - 200);
  if (v43)
  {
    *(v41 - 192) = v43;
    operator delete(v43);
  }

  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<CAException>>::~clone_impl(v41 - 176);
  boost::exception_detail::error_info_injector<CAException>::~error_info_injector(&a38);
  std::exception::~exception(&a16);
  if (v40)
  {
    __cxa_free_exception(v38);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a33);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_System::CopyDeviceByUID(uint64_t a1, const __CFString *a2, HALS_Client *a3, uint64_t a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x4002000000;
  v16 = __Block_byref_object_copy__7820;
  v17 = __Block_byref_object_dispose__7821;
  memset(v18, 0, sizeof(v18));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = ___ZNK11HALS_System15CopyDeviceByUIDEPK10__CFStringP11HALS_ClientRKNSt3__113unordered_setIN18HALS_DeviceManager17DeviceManagerTypeENS5_4hashIS8_EENS5_8equal_toIS8_EENS5_9allocatorIS8_EEEE_block_invoke;
  v12[3] = &unk_1E8675900;
  v12[4] = &v13;
  v12[5] = a1;
  v12[6] = a4;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v12);
  v7 = v14[5];
  v8 = v14[6];
  while (v7 != v8)
  {
    v9 = HALS_DeviceManager::CopyDeviceByUID(*v7, a2, a3);
    if (v9)
    {
      goto LABEL_6;
    }

    ++v7;
  }

  v9 = 0;
LABEL_6:
  _Block_object_dispose(&v13, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v18, v10);
  return v9;
}

void sub_1DE4912E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v16 + 40), v18);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_System::CopyPlugInByBundleID(HALS_System *this, const __CFString *a2)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x4002000000;
  v24 = __Block_byref_object_copy__7820;
  v25 = __Block_byref_object_dispose__7821;
  memset(v26, 0, sizeof(v26));
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZNK11HALS_System20CopyPlugInByBundleIDEPK10__CFString_block_invoke;
  v20[3] = &unk_1E86756A8;
  v20[4] = &v21;
  v20[5] = this;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v20);
  v4 = v22[5];
  for (i = v22[6]; v4 != i; ++v4)
  {
    v6 = *v4;
    v7 = *(*v4 + 5);
    v8 = *(*v4 + 6);
    if (v7 == v8)
    {
      if (v7 != 1953656941 && v7 != 1634757735)
      {
        continue;
      }
    }

    else if (v7 != 1634757735 && v7 != 1953656941 && v8 != 1634757735 && v8 != 1953656941)
    {
      continue;
    }

    v13 = *(v6 + 6);
    if (v13)
    {
      CFRetain(v13);
      v13 = *(v6 + 6);
    }

    v18 = v13;
    v19 = 1;
    if (CFStringCompare(v13, a2, 0) == kCFCompareEqualTo)
    {
      v15 = *v4;
      HALS_ObjectMap::RetainObject(*v4, v14);
      CACFString::~CACFString(&v18);
      goto LABEL_26;
    }

    CACFString::~CACFString(&v18);
  }

  v15 = 0;
LABEL_26:
  _Block_object_dispose(&v21, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v26, v16);
  return v15;
}

void sub_1DE4914C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  CACFString::~CACFString(&a9);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v16 + 40), v18);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_System::CopyTransportManagerByBundleID(HALS_System *this, const __CFString *a2)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x4002000000;
  v22 = __Block_byref_object_copy__7820;
  v23 = __Block_byref_object_dispose__7821;
  memset(v24, 0, sizeof(v24));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = ___ZNK11HALS_System30CopyTransportManagerByBundleIDEPK10__CFString_block_invoke;
  v18[3] = &unk_1E8675748;
  v18[4] = &v19;
  v18[5] = this;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v18);
  v4 = v20[5];
  for (i = v20[6]; v4 != i; ++v4)
  {
    v6 = *v4;
    v8 = *(*v4 + 5);
    v7 = *(*v4 + 6);
    if (v8 == v7 || v8 == 1953656941)
    {
      if (v8 != 1953656941 && v8 == v7)
      {
        continue;
      }
    }

    else if (v7 != 1953656941)
    {
      continue;
    }

    v11 = *(v6 + 6);
    if (v11)
    {
      CFRetain(v11);
      v11 = *(v6 + 6);
    }

    v16 = v11;
    v17 = 1;
    if (CFStringCompare(v11, a2, 0) == kCFCompareEqualTo)
    {
      v13 = *v4;
      HALS_ObjectMap::RetainObject(*v4, v12);
      CACFString::~CACFString(&v16);
      goto LABEL_21;
    }

    CACFString::~CACFString(&v16);
  }

  v13 = 0;
LABEL_21:
  _Block_object_dispose(&v19, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v24, v14);
  return v13;
}

void sub_1DE4916AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  CACFString::~CACFString(&a9);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v16 + 40), v18);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_System::CopyBoxByUID(HALS_System *this, const __CFString *a2, HALS_Client *a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy__7820;
  v16 = __Block_byref_object_dispose__7821;
  memset(v17, 0, sizeof(v17));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZNK11HALS_System12CopyBoxByUIDEPK10__CFStringP11HALS_Client_block_invoke;
  v11[3] = &unk_1E86757C0;
  v11[4] = &v12;
  v11[5] = this;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v11);
  v6 = v13[5];
  v7 = v13[6];
  while (v6 != v7)
  {
    v8 = HALS_DeviceManager::CopyBoxByUID(*v6, a2, a3);
    if (v8)
    {
      goto LABEL_6;
    }

    ++v6;
  }

  v8 = 0;
LABEL_6:
  _Block_object_dispose(&v12, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v17, v9);
  return v8;
}

void sub_1DE491820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v13 + 40), v15);
  _Unwind_Resume(a1);
}

uint64_t HALS_System::CopyTapByUID(uint64_t a1, const void *a2, uint64_t a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1174405120;
  v9[2] = ___ZNK11HALS_System12CopyTapByUIDEN10applesauce2CF9StringRefEP11HALS_Client_block_invoke;
  v9[3] = &unk_1F59725F8;
  v9[4] = &v12;
  v9[5] = a1;
  if (a2)
  {
    CFRetain(a2);
  }

  cf = a2;
  v11 = a3;
  v6 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v6, v9);
  v7 = v13[3];
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v12, 8);
  return v7;
}

void sub_1DE491984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  applesauce::CF::StringRef::~StringRef((v16 + 48));
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_System::CopyClockDeviceByUID(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy__7820;
  v16 = __Block_byref_object_dispose__7821;
  memset(v17, 0, sizeof(v17));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZNK11HALS_System20CopyClockDeviceByUIDEPK10__CFStringP11HALS_ClientRKNSt3__113unordered_setIN18HALS_DeviceManager17DeviceManagerTypeENS5_4hashIS8_EENS5_8equal_toIS8_EENS5_9allocatorIS8_EEEE_block_invoke;
  v11[3] = &unk_1E8675838;
  v11[4] = &v12;
  v11[5] = a1;
  v11[6] = a3;
  v4 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v4, v11);
  v6 = v13[5];
  v7 = v13[6];
  while (v6 != v7)
  {
    v8 = HALS_DeviceManager::CopyClockDeviceByUID(*v6, a2, v5);
    if (v8)
    {
      goto LABEL_6;
    }

    ++v6;
  }

  v8 = 0;
LABEL_6:
  _Block_object_dispose(&v12, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v17, v9);
  return v8;
}

void sub_1DE491ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v16 + 40), v18);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK11HALS_System15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_177(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE491B68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE491B58);
}

uint64_t HALS_System::GetNumberProcessObjects(HALS_System *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK11HALS_System23GetNumberProcessObjectsEv_block_invoke;
  v4[3] = &unk_1E8675B90;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE491C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void HALS_System::GetProcessObjectList(HALS_System *this, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4002000000;
  v9 = __Block_byref_object_copy__109;
  v10 = __Block_byref_object_dispose__110;
  __p = 0;
  v12 = 0;
  v13 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_System20GetProcessObjectListEv_block_invoke;
  v5[3] = &unk_1E8675B68;
  v5[4] = &v6;
  v5[5] = a2;
  v3 = (*(*a2 + 64))(a2);
  HALB_CommandGate::ExecuteCommand(v3, v5);
  v4 = v7;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(this, v4[5], v4[6], (v4[6] - v4[5]) >> 2);
  _Block_object_dispose(&v6, 8);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_1DE491D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a15, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFNumberRef *applesauce::CF::NumberRef::NumberRef<unsigned int,void>(CFNumberRef *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return a1;
}

CFDictionaryRef ___ZNK11HALS_System15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_181(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1568);
  if (v2)
  {
    result = CFDictionaryCreateCopy(0, v2);
  }

  else
  {
    result = 0;
  }

  **(a1 + 40) = result;
  return result;
}

void sub_1DE4925A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, applesauce::CF::StringRef *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN11HALS_System9CreateTapEPK14__CFDictionaryP11HALS_Client_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (!v1)
  {
    return;
  }

  applesauce::CF::DictionaryRef::from_get(&v75, v1);
  memset(&v74, 0, sizeof(v74));
  memset(&v73, 0, sizeof(v73));
  if (!v75)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v3 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
  cf.__r_.__value_.__r.__words[0] = v3;
  if (v3)
  {
    v4 = CFGetTypeID(v3);
    if (v4 != CFArrayGetTypeID())
    {
      v65 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v65, "Could not construct");
      __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  applesauce::CF::at_or<applesauce::CF::ArrayRef,char const(&)[10]>(&theArray, v75, "BundleIDs", &cf);
  if (cf.__r_.__value_.__r.__words[0])
  {
    CFRelease(cf.__r_.__value_.__l.__data_);
  }

  if (!v75)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v50, "Could not construct");
    __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C8]);
  cf.__r_.__value_.__r.__words[0] = v5;
  if (v5)
  {
    v6 = CFGetTypeID(v5);
    if (v6 != CFArrayGetTypeID())
    {
      v66 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v66, "Could not construct");
      __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  applesauce::CF::at_or<applesauce::CF::ArrayRef,char const(&)[10]>(&v71, v75, "Processes", &cf);
  if (cf.__r_.__value_.__r.__words[0])
  {
    CFRelease(cf.__r_.__value_.__l.__data_);
  }

  v7 = theArray;
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v9 = CFArrayGetCount(v7);
    if (Count)
    {
      v10 = v9;
      for (i = 0; i != Count; ++i)
      {
        if (v10 == i)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v70, v7, i);
        v12 = v70;
        if (v70)
        {
          v13 = CFGetTypeID(v70);
          if (v13 == CFStringGetTypeID())
          {
            CFRetain(v12);
            v69 = v12;
            v14 = CFGetTypeID(v12);
            if (v14 != CFStringGetTypeID())
            {
              v46 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v46, "Could not construct");
              __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            if (!v69)
            {
              v47 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v47, "Could not construct");
              __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            applesauce::CF::convert_to<std::string,0>(&cf, v69);
            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_cf = &cf;
            }

            else
            {
              p_cf = cf.__r_.__value_.__r.__words[0];
            }

            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(cf.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = cf.__r_.__value_.__l.__size_;
            }

            std::string::append(&v74, p_cf, size);
            if (i < CFArrayGetCount(v7) - 1)
            {
              std::string::append(&v74, ", ", 2uLL);
            }

            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }

            if (v69)
            {
              CFRelease(v69);
            }
          }

          CFRelease(v12);
        }
      }
    }
  }

  v17 = v71;
  if (v71)
  {
    v18 = CFArrayGetCount(v71);
    v19 = CFArrayGetCount(v17);
    if (v18)
    {
      v20 = v19;
      for (j = 0; j != v18; ++j)
      {
        if (v20 == j)
        {
          break;
        }

        applesauce::CF::details::at_to<applesauce::CF::TypeRef>(&v70, v17, j);
        v22 = v70;
        if (v70)
        {
          v23 = CFGetTypeID(v70);
          if (v23 == CFNumberGetTypeID())
          {
            applesauce::CF::TypeRef::operator applesauce::CF::NumberRef(&v69, &v70);
            if (!v69)
            {
              v48 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v48, "Could not construct");
              __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
            }

            v24 = applesauce::CF::convert_to<unsigned int,0>(v69);
            std::to_string(&cf, v24);
            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v25 = &cf;
            }

            else
            {
              v25 = cf.__r_.__value_.__r.__words[0];
            }

            if ((cf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = HIBYTE(cf.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v26 = cf.__r_.__value_.__l.__size_;
            }

            std::string::append(&v73, v25, v26);
            if (j < CFArrayGetCount(v17) - 1)
            {
              std::string::append(&v73, ", ", 2uLL);
            }

            if (SHIBYTE(cf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(cf.__r_.__value_.__l.__data_);
            }

            if (v69)
            {
              CFRelease(v69);
            }
          }

          CFRelease(v22);
        }
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  cf.__r_.__value_.__r.__words[0] = Mutable;
  v28 = CFStringCreateWithBytes(0, "TapClient", 9, 0x8000100u, 0);
  v70 = v28;
  if (!v28)
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v51, "Could not construct");
    __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v29 = *(a1 + 71);
  if (v29 < 0)
  {
    v30 = *(a1 + 48);
    if (!v30)
    {
      v69 = 0;
      mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v28, 0);
      goto LABEL_62;
    }

    v29 = *(a1 + 56);
  }

  else
  {
    v30 = (a1 + 48);
  }

  v31 = CFStringCreateWithBytes(0, v30, v29, 0x8000100u, 0);
  v69 = v31;
  if (!v31)
  {
    v62 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v62, "Could not construct");
    __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v70, v31);
  CFRelease(v31);
LABEL_62:
  if (v70)
  {
    CFRelease(v70);
  }

  v32 = CFStringCreateWithBytes(0, "BundleIDs", 9, 0x8000100u, 0);
  v70 = v32;
  if (!v32)
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v52, "Could not construct");
    __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v33 = SHIBYTE(v74.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v34 = v74.__r_.__value_.__r.__words[0];
    if (!v74.__r_.__value_.__r.__words[0])
    {
      v69 = 0;
      mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v32, 0);
      goto LABEL_71;
    }

    v33 = v74.__r_.__value_.__l.__size_;
  }

  else
  {
    v34 = &v74;
  }

  v35 = CFStringCreateWithBytes(0, v34, v33, 0x8000100u, 0);
  v69 = v35;
  if (!v35)
  {
    v63 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v63, "Could not construct");
    __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v70, v35);
  CFRelease(v35);
LABEL_71:
  if (v70)
  {
    CFRelease(v70);
  }

  v36 = CFStringCreateWithBytes(0, "Processes", 9, 0x8000100u, 0);
  v70 = v36;
  if (!v36)
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v53, "Could not construct");
    __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v37 = SHIBYTE(v73.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v73.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v38 = &v73;
LABEL_78:
    v39 = CFStringCreateWithBytes(0, v38, v37, 0x8000100u, 0);
    v69 = v39;
    if (!v39)
    {
      v64 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v64, "Could not construct");
      __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v70, v39);
    CFRelease(v39);
    goto LABEL_80;
  }

  v38 = v73.__r_.__value_.__r.__words[0];
  if (v73.__r_.__value_.__r.__words[0])
  {
    v37 = v73.__r_.__value_.__l.__size_;
    goto LABEL_78;
  }

  v69 = 0;
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(Mutable, v36, 0);
LABEL_80:
  if (v70)
  {
    CFRelease(v70);
  }

  v70 = CFStringCreateWithBytes(0, "IsExclusive", 11, 0x8000100u, 0);
  if (!v70)
  {
    v54 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v54, "Could not construct");
    __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v75)
  {
    v55 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v55, "Could not construct");
    __cxa_throw(v55, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v40 = *MEMORY[0x1E695E4B8];
  v67 = *MEMORY[0x1E695E4B8];
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[12]>(&v69, v75, "IsExclusive", &v67);
  v41 = v69;
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v70, v69);
  if (v41)
  {
    CFRelease(v41);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  v70 = CFStringCreateWithBytes(0, "IsMixdown", 9, 0x8000100u, 0);
  if (!v70)
  {
    v56 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v56, "Could not construct");
    __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v75)
  {
    v57 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v57, "Could not construct");
    __cxa_throw(v57, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v67 = v40;
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[10]>(&v69, v75, "IsMixdown", &v67);
  v42 = v69;
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v70, v69);
  if (v42)
  {
    CFRelease(v42);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  v70 = CFStringCreateWithBytes(0, "IsPrivate", 9, 0x8000100u, 0);
  if (!v70)
  {
    v58 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v58, "Could not construct");
    __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v75)
  {
    v59 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v59, "Could not construct");
    __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v67 = v40;
  applesauce::CF::at_or<applesauce::CF::BooleanRef,char const(&)[10]>(&v69, v75, "IsPrivate", &v67);
  v43 = v69;
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::BooleanRef>(Mutable, v70, v69);
  if (v43)
  {
    CFRelease(v43);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  v70 = CFStringCreateWithBytes(0, "MuteBehavior", 12, 0x8000100u, 0);
  if (!v70)
  {
    v60 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v60, "Could not construct");
    __cxa_throw(v60, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!v75)
  {
    v61 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v61, "Could not construct");
    __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v67 = 0;
  applesauce::CF::at_or<applesauce::CF::NumberRef,char const(&)[13]>(&v69, v75, "MuteBehavior", &v67);
  v44 = v69;
  mcp_applesauce::CF::Dictionary_Builder::add_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(Mutable, v70, v69);
  if (v44)
  {
    CFRelease(v44);
  }

  if (v67)
  {
    CFRelease(v67);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&v70, Mutable);
  v45 = v70;
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_235);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    AudioStatisticsLibraryLoader(void)::libSym(v45, 536870920, 5);
  }

  CFRelease(v1);
  if (v70)
  {
    CFRelease(v70);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (v75)
  {
    CFRelease(v75);
  }
}

void sub_1DE493478(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  __cxa_free_exception(v38);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a11);
  __clang_call_terminate(a1);
}

void sub_1DE493690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  JUMPOUT(0x1DE493668);
}

void sub_1DE4936D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE49370CLL);
}

void sub_1DE4936E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a17);
  applesauce::CF::TypeRef::~TypeRef(&a18);
  JUMPOUT(0x1DE493740);
}

void sub_1DE493738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  applesauce::CF::ArrayRef::~ArrayRef(&a16);
  applesauce::CF::ArrayRef::~ArrayRef(&a17);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v29 - 88));
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void __copy_helper_block_e8_48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_7956()
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

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZN11HALS_System10_CreateTapEPK14__CFDictionaryP11HALS_ClientE3__0EEvOT__block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
  v4 = v2;
  if (v2)
  {
    HALS_Tap::UpdateAfterRestoreFromPrefs(v2);
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
}

void sub_1DE49397C(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  HALS_ObjectMap::ReleaseObject(v12, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void applesauce::dispatch::v1::async<HALS_System::_CreateTap(__CFDictionary const*,HALS_Client *)::$_0 &>(dispatch_queue_s *,HALS_System::_CreateTap(__CFDictionary const*,HALS_Client *)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1, unsigned int a2)
{
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*a1);
  v4 = v2;
  if (v2)
  {
    HALS_Tap::UpdateAfterRestoreFromPrefs(v2);
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE493A28(void *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v2, a2);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4939F4);
}

__n128 __Block_byref_object_copy__109(void *a1, uint64_t a2)
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

void __Block_byref_object_dispose__110(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZNK11HALS_System10GetTapListEjRjPjP11HALS_Client_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(a1[4] + 8);
  v3 = a1[6];
  __p = 0;
  v8 = 0;
  v9 = 0;
  HALS_System::_GetVisibleTapList(v1, &__p, v3);
  v4 = __p;
  v5 = v8;
  while (v4 != v5)
  {
    v6 = *(*v4 + 16);
    std::vector<unsigned int>::push_back[abi:ne200100](v2 + 40, &v6);
    v4 += 8;
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }
}

void sub_1DE493B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HALS_System::_GetVisibleTapList(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 1664);
    for (i = *(a1 + 1672); v4 != i; ++v4)
    {
      v7 = *(*v4 + 48);
      if ((v7 & 0x100000000) != 0 && *(a3 + 16) == v7 || (*(*v4 + 91) & 1) == 0)
      {
        std::vector<HALS_Device *>::push_back[abi:ne200100](a2, v4);
      }
    }
  }

  else if ((a1 + 1664) != a2)
  {
    v8 = *(a1 + 1664);
    v9 = *(a1 + 1672);
    v10 = v9 - v8;
    v11 = a2[2];
    v12 = *a2;
    if (v11 - *a2 < (v9 - v8))
    {
      v13 = v10 >> 3;
      if (v12)
      {
        a2[1] = v12;
        operator delete(v12);
        v11 = 0;
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
      }

      if (!(v13 >> 61))
      {
        v14 = v11 >> 2;
        if (v11 >> 2 <= v13)
        {
          v14 = v10 >> 3;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        std::vector<HALS_Tap *>::__vallocate[abi:ne200100](a2, v15);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v16 = a2[1];
    v17 = v16 - v12;
    if (v16 - v12 >= v10)
    {
      if (v9 != v8)
      {
        memmove(v12, v8, v9 - v8);
      }

      v20 = &v12[v10];
    }

    else
    {
      if (v16 != v12)
      {
        memmove(*a2, v8, v16 - v12);
        v16 = a2[1];
      }

      v18 = &v8[v17];
      v19 = v9 - &v8[v17];
      if (v19)
      {
        memmove(v16, v18, v19);
      }

      v20 = &v16[v19];
    }

    a2[1] = v20;
  }
}

void std::vector<HALS_Tap *>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::vector<HALS_Releaser<HALS_Device>>::__destroy_vector::operator()[abi:ne200100](void ***a1, HALS_Object *a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3)
  {
    for (i = v2[1]; i != v3; i -= 8)
    {
      v6 = *(i - 1);
      HALS_ObjectMap::ReleaseObject(v6, a2);
    }

    v2[1] = v3;
    v7 = **a1;

    operator delete(v7);
  }
}

double ___ZNK11HALS_System20GetProcessObjectListEv_block_invoke(uint64_t a1)
{
  HALS_System::_GetProcessObjectList(&v5, *(*(a1 + 40) + 1640), *(*(a1 + 40) + 1648));
  v2 = *(*(a1 + 32) + 8);
  v3 = v2[5];
  if (v3)
  {
    v2[6] = v3;
    operator delete(v3);
  }

  result = *&v5;
  *(v2 + 5) = v5;
  v2[7] = v6;
  return result;
}

void HALS_System::_GetProcessObjectList(HALS_System *this, uint64_t a2, uint64_t a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      v6 = *(*v4 + 240);
      v7 = getpid();
      if (v6 != v7 || (platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v7), (*(*platform_behaviors + 96))(platform_behaviors)))
      {
        v9 = *(*v4 + 16);
        std::vector<unsigned int>::push_back[abi:ne200100](this, &v9);
      }

      v4 += 8;
    }

    while (v4 != a3);
  }
}

void sub_1DE493ED4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK11HALS_System23GetNumberProcessObjectsEv_block_invoke(uint64_t a1)
{
  HALS_System::_GetProcessObjectList(v4, *(*(a1 + 40) + 1640), *(*(a1 + 40) + 1648));
  v2 = v4[0];
  v3 = v4[1];
  if (v4[0])
  {
    operator delete(v4[0]);
  }

  *(*(*(a1 + 32) + 8) + 24) = (v3 - v2) >> 2;
}

void sub_1DE493F8C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t ___ZNK11HALS_System18GetClockDeviceListEjRjPjP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE494000(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE493FF0);
}

void ___ZNK11HALS_System12CopyTapByUIDEN10applesauce2CF9StringRefEP11HALS_Client_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRetain(*(a1 + 48));
  }

  v4 = v2;
  *(*(*(a1 + 32) + 8) + 24) = HALS_System::_CopyTapByUID(v3, &v4, *(a1 + 56));
  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_1DE494090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_48c31_ZTSN10applesauce2CF9StringRefE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    CFRelease(v1);
  }
}

void *__copy_helper_block_e8_48c31_ZTSN10applesauce2CF9StringRefE(void *result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 48);
  if (v3)
  {
    result = CFRetain(*(a2 + 48));
  }

  v2[6] = v3;
  return result;
}

HALS_ObjectMap *HALS_System::_CopyTapByUID(uint64_t a1, const __CFString **a2, uint64_t a3)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  HALS_System::_GetVisibleTapList(a1, &__p, a3);
  v5 = __p;
  v6 = v13;
  while (v5 != v6)
  {
    v7 = *v5;
    HALS_Tap::GetUID(&cf, *(*v5 + 8));
    v8 = cf;
    v9 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(cf, a2);
    if (v8)
    {
      CFRelease(v8);
    }

    if (v9 == kCFCompareEqualTo)
    {
      goto LABEL_8;
    }

    ++v5;
  }

  v7 = 0;
LABEL_8:
  HALS_ObjectMap::RetainObject(v7, v4);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v7;
}

void sub_1DE4941B0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE494184);
}

void sub_1DE4941BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZNK11HALS_System12CopyBoxByUIDEPK10__CFStringP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE494238(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE494228);
}

uint64_t ___ZNK11HALS_System10GetBoxListEjRjPjP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4942AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE49429CLL);
}

uint64_t ___ZNK11HALS_System30CopyTransportManagerByBundleIDEPK10__CFString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE494320(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE494310);
}

uint64_t ___ZNK11HALS_System23GetTransportManagerListEjRjPj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE494394(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE494384);
}

uint64_t ___ZNK11HALS_System20CopyPlugInByBundleIDEPK10__CFString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE494408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4943F8);
}

uint64_t ___ZNK11HALS_System13GetPlugInListEjRjPj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE49447C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE49446CLL);
}

void sub_1DE4944C8(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_System::GetPropertyDataSize(HALS_ObjectMap **this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, int *a5, HALS_Client *a6)
{
  v7 = this;
  mSelector = a3->mSelector;
  v9 = 4;
  if (a3->mSelector > 1886353255)
  {
    if (mSelector > 1953325672)
    {
      if (mSelector > 1969841249)
      {
        if (((mSelector - 1969841250) > 0x12 || ((1 << (mSelector - 98)) & 0x40007) == 0) && mSelector != 1970496882 && mSelector != 1986359923)
        {
          goto LABEL_69;
        }

        return v9;
      }

      if (mSelector == 1953325673)
      {
        return v9;
      }

      if (mSelector != 1953326883)
      {
        if (mSelector == 1953526563)
        {
          v51 = 0;
          v52 = &v51;
          v53 = 0x2000000000;
          LODWORD(v54) = 0;
          v57 = MEMORY[0x1E69E9820];
          v58 = 0x40000000;
          v59 = ___ZNK11HALS_System14GetTapListSizeEP11HALS_Client_block_invoke;
          v60 = &unk_1E8675CB0;
          v61 = &v51;
          v62 = this;
          v63 = a6;
          v20 = (*(*this + 8))(this, a2);
          HALB_CommandGate::ExecuteCommand(v20, &v57);
          v21 = *(v52 + 24);
          _Block_object_dispose(&v51, 8);
          return (4 * v21);
        }

        goto LABEL_69;
      }

      v57 = 0;
      v58 = &v57;
      v59 = 0x4002000000;
      v60 = __Block_byref_object_copy__7820;
      v61 = __Block_byref_object_dispose__7821;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v51 = MEMORY[0x1E69E9820];
      v52 = 0x40000000;
      v53 = ___ZNK11HALS_System26GetNumberTransportManagersEv_block_invoke;
      v54 = &unk_1E8675720;
      v55 = &v57;
      v56 = this;
      v37 = (*(*this + 8))(this, a2);
      HALB_CommandGate::ExecuteCommand(v37, &v51);
      v38 = *(v58 + 40);
      v39 = *(v58 + 48);
      if (v38 != v39)
      {
        v40 = 0;
        do
        {
          v41 = *v38++;
          v43 = *(v41 + 20);
          v42 = *(v41 + 24);
          v44 = v43 == v42;
          if (v43 == 1953656941)
          {
            v44 = 1;
          }

          v45 = v43 != v42 || v43 == 1953656941;
          v46 = v42 == 1953656941;
          if (v44)
          {
            v46 = v45;
          }

          v40 += v46;
        }

        while (v38 != v39);
        v9 = (4 * v40);
        goto LABEL_104;
      }

LABEL_98:
      v9 = 0;
      goto LABEL_104;
    }

    if (mSelector > 1920297315)
    {
      if (mSelector <= 1936224867)
      {
        if (mSelector == 1920297316)
        {
          return v9;
        }

        v10 = 1934587252;
      }

      else
      {
        if (mSelector == 1936224868 || mSelector == 1936483696)
        {
          return v9;
        }

        v10 = 1937010031;
      }

      goto LABEL_68;
    }

    if (mSelector > 1919186466)
    {
      if (mSelector == 1919186467)
      {
        v28 = 0;
        goto LABEL_100;
      }

      if (mSelector == 1919839344)
      {
        return 8;
      }
    }

    else
    {
      if (mSelector == 1886353256)
      {
        return v9;
      }

      if (mSelector == 1886548771)
      {
        NumberProcessObjects = HALS_System::GetNumberProcessObjects(this);
        return (4 * NumberProcessObjects);
      }
    }
  }

  else
  {
    if (mSelector > 1698776146)
    {
      if (mSelector <= 1870098019)
      {
        if (mSelector <= 1769302371)
        {
          if (mSelector == 1698776147)
          {
            return v9;
          }

          v10 = 1768845172;
          goto LABEL_68;
        }

        if (mSelector == 1769302372)
        {
          return v9;
        }

        if (mSelector != 1835758704)
        {
          v10 = 1835821926;
          goto LABEL_68;
        }

        return 8;
      }

      if (mSelector > 1886152482)
      {
        if (mSelector != 1886152483)
        {
          if (mSelector == 1886218606)
          {
            return v9;
          }

          v10 = 1886221684;
          goto LABEL_68;
        }

LABEL_85:
        NumberProcessObjects = HALS_System::GetNumberPlugIns(this);
        return (4 * NumberProcessObjects);
      }

      if (mSelector != 1870098020)
      {
        v10 = 1885954665;
LABEL_68:
        if (mSelector != v10)
        {
          goto LABEL_69;
        }

        return v9;
      }

      v33 = a5 == 0;
      if (a5 && a4 >= 4)
      {
        v34 = 1;
        do
        {
          v35 = *a5++;
          v33 = v35 == 1634757735;
        }

        while (v35 != 1634757735 && v34++ < a4 >> 2);
      }

      if (v33)
      {
        goto LABEL_85;
      }

      return 0;
    }

    if (mSelector > 1682533919)
    {
      if (mSelector <= 1684370978)
      {
        if (mSelector == 1682533920)
        {
          return v9;
        }

        v10 = 1682929012;
        goto LABEL_68;
      }

      if (mSelector != 1684370979)
      {
        if (mSelector == 1685288048)
        {
          return v9;
        }

        if (mSelector == 1685416292)
        {
          return 32;
        }

        goto LABEL_69;
      }

      platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
      v30 = (*(*platform_behaviors + 24))(platform_behaviors);
      if (v30)
      {
        v31 = HALS_PlatformBehaviors::get_platform_behaviors(v30);
        if ((*(*v31 + 24))(v31) != 1)
        {
          return 0;
        }

        this = v7;
        v28 = 1;
        v32 = 0;
LABEL_101:
        NumberProcessObjects = HALS_System::GetNumberDevices(this, v28, v32, a6);
        return (4 * NumberProcessObjects);
      }

      this = v7;
      v28 = 2;
LABEL_100:
      v32 = 1;
      goto LABEL_101;
    }

    if (mSelector <= 1667461736)
    {
      if (mSelector == 1651074160)
      {
        return v9;
      }

      if (mSelector != 1651472419)
      {
        goto LABEL_69;
      }

      v57 = 0;
      v58 = &v57;
      v59 = 0x4002000000;
      v60 = __Block_byref_object_copy__7820;
      v61 = __Block_byref_object_dispose__7821;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v51 = MEMORY[0x1E69E9820];
      v52 = 0x40000000;
      v53 = ___ZNK11HALS_System14GetNumberBoxesEP11HALS_Client_block_invoke;
      v54 = &unk_1E8675798;
      v55 = &v57;
      v56 = this;
      v14 = (*(*this + 8))(this, a2);
      HALB_CommandGate::ExecuteCommand(v14, &v51);
      v15 = *(v58 + 40);
      v16 = *(v58 + 48);
      if (v15 == v16)
      {
        v9 = 0;
      }

      else
      {
        v17 = 0;
        do
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          HALS_DeviceManager::CopyBoxList(*v15, &v48, a6);
          v17 += (v49 - v48) >> 3;
          HALS_DeviceManager::BasicBoxList::~BasicBoxList(&v48, v18);
          ++v15;
        }

        while (v15 != v16);
        v9 = (4 * v17);
      }

LABEL_104:
      _Block_object_dispose(&v57, 8);
      HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v62, v47);
      return v9;
    }

    if (mSelector == 1667461737)
    {
      return 8;
    }

    if (mSelector == 1668049699)
    {
      v57 = 0;
      v58 = &v57;
      v59 = 0x4002000000;
      v60 = __Block_byref_object_copy__7820;
      v61 = __Block_byref_object_dispose__7821;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v51 = MEMORY[0x1E69E9820];
      v52 = 0x40000000;
      v53 = ___ZNK11HALS_System21GetNumberClockDevicesEP11HALS_Client_block_invoke;
      v54 = &unk_1E8675810;
      v55 = &v57;
      v56 = this;
      v22 = (*(*this + 8))(this, a2);
      HALB_CommandGate::ExecuteCommand(v22, &v51);
      v23 = *(v58 + 40);
      v24 = *(v58 + 48);
      if (v23 != v24)
      {
        v25 = 0;
        do
        {
          v48 = 0;
          v49 = 0;
          v50 = 0;
          HALS_DeviceManager::CopyClockDeviceList(*v23, &v48);
          v25 += (v49 - v48) >> 3;
          HALS_DeviceManager::BasicClockDeviceList::~BasicClockDeviceList(&v48, v26);
          ++v23;
        }

        while (v23 != v24);
        v9 = (4 * v25);
        goto LABEL_104;
      }

      goto LABEL_98;
    }
  }

LABEL_69:

  return HALS_Object::GetPropertyDataSize(this, a2, a3);
}

void sub_1DE494D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v18 + 40), v20);
  _Unwind_Resume(a1);
}

uint64_t HALS_System::GetNumberPlugIns(HALS_System *this)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x4002000000;
  v22 = __Block_byref_object_copy__7820;
  v23 = __Block_byref_object_dispose__7821;
  memset(v24, 0, sizeof(v24));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = ___ZNK11HALS_System16GetNumberPlugInsEv_block_invoke;
  v18[3] = &unk_1E8675680;
  v18[4] = &v19;
  v18[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v18);
  v2 = v20[5];
  v3 = v20[6];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    LODWORD(v4) = 0;
    do
    {
      v5 = *v2++;
      v7 = *(v5 + 20);
      v6 = *(v5 + 24);
      v9 = v7 == 1634757735 || v7 == 1953656941;
      v11 = v6 == 1634757735 || v6 == 1953656941;
      v12 = v7 == v6;
      v13 = v7 != v6 || v9;
      if (!v12 && v7 != 1634757735 && v7 != 1953656941)
      {
        v13 = v11;
      }

      v4 = (v4 + v13);
    }

    while (v2 != v3);
  }

  _Block_object_dispose(&v19, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v24, v16);
  return v4;
}

void sub_1DE494F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v13 + 40), v15);
  _Unwind_Resume(a1);
}

void ___ZNK11HALS_System14GetTapListSizeEP11HALS_Client_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  HALS_System::_GetVisibleTapList(v2, &v6, v3);
  v4 = v6;
  v5 = v7;
  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  *(*(a1[4] + 8) + 24) = (v5 - v4) >> 3;
}

void sub_1DE494FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZNK11HALS_System21GetNumberClockDevicesEP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE49502C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE49501CLL);
}

uint64_t ___ZNK11HALS_System14GetNumberBoxesEP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4950A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE495090);
}

uint64_t ___ZNK11HALS_System26GetNumberTransportManagersEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE495114(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE495104);
}

uint64_t ___ZNK11HALS_System16GetNumberPlugInsEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE495188(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE495178);
}

uint64_t HALS_System::IsPropertySettable(HALS_System *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  result = 1;
  if (a3->mSelector > 1886353255)
  {
    if (mSelector > 1953325672)
    {
      if (mSelector <= 1969841250)
      {
        if (mSelector <= 1953526562)
        {
          if (mSelector == 1953325673)
          {
            return 0;
          }

          v6 = 1953326883;
          goto LABEL_55;
        }

        if (mSelector == 1953526563)
        {
          return 0;
        }

        v8 = 25698;
      }

      else
      {
        if (mSelector > 1969841267)
        {
          if (mSelector == 1969841268 || mSelector == 1970496882)
          {
            return 0;
          }

          v6 = 1986359923;
          goto LABEL_55;
        }

        if (mSelector == 1969841251)
        {
          return 0;
        }

        v8 = 25700;
      }

      v6 = v8 | 0x75690000;
      goto LABEL_55;
    }

    if (mSelector <= 1920297315)
    {
      if (mSelector <= 1919186466)
      {
        if (mSelector == 1886353256)
        {
          return result;
        }

        v6 = 1886548771;
        goto LABEL_55;
      }

      if (mSelector == 1919186467)
      {
        return 0;
      }

      v7 = 1919839344;
    }

    else if (mSelector <= 1936224867)
    {
      if (mSelector == 1920297316)
      {
        return 0;
      }

      v7 = 1934587252;
    }

    else
    {
      if (mSelector == 1936224868)
      {
        if (!a4)
        {
          return 0;
        }

        return HALS_ClientEntitlements::HasEntitlementWithBooleanValue((a4 + 296), @"com.apple.private.audio.default-shared-device");
      }

      if (mSelector == 1936483696)
      {
        return result;
      }

      v7 = 1937010031;
    }

LABEL_48:
    if (mSelector != v7)
    {
      return HALS_Object::IsPropertySettable(1, a2, a3);
    }

    return result;
  }

  if (mSelector > 1698776146)
  {
    if (mSelector <= 1835821925)
    {
      if (mSelector > 1769302371)
      {
        if (mSelector == 1769302372)
        {
          return 0;
        }

        v6 = 1835758704;
      }

      else
      {
        if (mSelector == 1698776147)
        {
          return result;
        }

        v6 = 1768845172;
      }

      goto LABEL_55;
    }

    if (mSelector <= 1886152482)
    {
      if (mSelector == 1835821926)
      {
        return 0;
      }

      v6 = 1885954665;
      goto LABEL_55;
    }

    if (mSelector == 1886152483)
    {
      return 0;
    }

    if (mSelector == 1886218606)
    {
      return result;
    }

    v7 = 1886221684;
    goto LABEL_48;
  }

  if (mSelector <= 1682533919)
  {
    if (mSelector > 1667461736)
    {
      if (mSelector == 1667461737)
      {
        return AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(1);
      }

      v6 = 1668049699;
      goto LABEL_55;
    }

    if (mSelector == 1651074160)
    {
      return 0;
    }

    v6 = 1651472419;
LABEL_55:
    if (mSelector == v6)
    {
      return 0;
    }

    return HALS_Object::IsPropertySettable(1, a2, a3);
  }

  if (mSelector <= 1684370978)
  {
    if (mSelector == 1682533920)
    {
      return result;
    }

    v7 = 1682929012;
    goto LABEL_48;
  }

  if (mSelector == 1684370979)
  {
    return 0;
  }

  if (mSelector != 1685288048)
  {
    v6 = 1685416292;
    goto LABEL_55;
  }

  return result;
}

uint64_t HALS_System::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 1;
  if (*a3 > 1886218605)
  {
    if (v3 > 1937010030)
    {
      if (v3 > 1969841249)
      {
        if (((v3 - 1969841250) > 0x12 || ((1 << (v3 - 98)) & 0x40007) == 0) && v3 != 1970496882 && v3 != 1986359923)
        {
          return 0;
        }

        return result;
      }

      if (v3 > 1953326882)
      {
        if (v3 == 1953326883)
        {
          return result;
        }

        v5 = 1953526563;
      }

      else
      {
        if (v3 == 1937010031)
        {
          return result;
        }

        v5 = 1953325673;
      }
    }

    else if (v3 <= 1919839343)
    {
      if (v3 <= 1886353255)
      {
        if (v3 == 1886218606)
        {
          return result;
        }

        v5 = 1886221684;
      }

      else
      {
        if (v3 == 1886353256 || v3 == 1886548771)
        {
          return result;
        }

        v5 = 1919186467;
      }
    }

    else if (v3 > 1936224867)
    {
      if (v3 == 1936224868 || v3 == 1936483696)
      {
        return result;
      }

      v5 = 1937007734;
    }

    else
    {
      if (v3 == 1919839344 || v3 == 1920297316)
      {
        return result;
      }

      v5 = 1934587252;
    }
  }

  else if (v3 <= 1685416291)
  {
    if (v3 > 1668049698)
    {
      if (v3 <= 1682929011)
      {
        if (v3 == 1668049699)
        {
          return result;
        }

        v5 = 1682533920;
      }

      else
      {
        if (v3 == 1682929012 || v3 == 1684370979)
        {
          return result;
        }

        v5 = 1685288048;
      }
    }

    else if (v3 <= 1651472418)
    {
      if (v3 == 1650682995)
      {
        return result;
      }

      v5 = 1651074160;
    }

    else
    {
      if (v3 == 1651472419)
      {
        return result;
      }

      if (v3 == 1667461737)
      {
        return AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(1);
      }

      v5 = 1668047219;
    }
  }

  else if (v3 <= 1835758703)
  {
    if (v3 <= 1768174191)
    {
      if (v3 == 1685416292)
      {
        return result;
      }

      v5 = 1698776147;
    }

    else
    {
      if (v3 == 1768174192 || v3 == 1768845172)
      {
        return result;
      }

      v5 = 1769302372;
    }
  }

  else if (v3 > 1870098019)
  {
    if (v3 == 1870098020 || v3 == 1885954665)
    {
      return result;
    }

    v5 = 1886152483;
  }

  else
  {
    if (v3 == 1835758704 || v3 == 1835821926)
    {
      return result;
    }

    v5 = 1869638759;
  }

  if (v3 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t HALS_System::GetMIGDispatchQueue(HALS_System *this)
{
  return *(this + 24);
}

{
  return *(this + 24);
}

uint64_t HALS_System::GetCommandGate(HALS_System *this)
{
  return *(this + 22);
}

{
  return *(this + 22);
}

void HALS_System::MonitorCommandGate(uint64_t a1, uint64_t *a2)
{
  HALS_System::GetHealthObserver(&v4);
  if (v4)
  {
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE495A4C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  HALB_Mutex::Locker::~Locker(va);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  _Unwind_Resume(a1);
}

void HALS_System::GetHealthObserver(HALS_System *this)
{
  v4[0] = 0;
  v4[1] = 0;
  HALS_System::GetInstance(&v5, 0, v4);
  if (v5)
  {
    v2 = *(v5 + 168);
    *this = *(v5 + 160);
    *(this + 1) = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
  }

  v3 = v6;
  if (v6)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

BOOL HALHealth::DurationAdapter<HALB_CommandGate>::is_healthy(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    return 1;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = a1[1];
  if (v5)
  {
    v6 = atomic_load((v5 + 96));
    if (v6)
    {
      v7 = (std::chrono::steady_clock::now().__d_.__rep_ - v6) / 1000000;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7 < a1[3];
  }

  else
  {
    v8 = 1;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v8;
}

void HALHealth::DurationAdapter<HALB_CommandGate>::~DurationAdapter(void *a1)
{
  *a1 = &unk_1F5972D80;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *HALHealth::DurationAdapter<HALB_CommandGate>::~DurationAdapter(void *a1)
{
  *a1 = &unk_1F5972D80;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<HALHealth::DurationAdapter<HALB_CommandGate>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972CC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_System::_Deactivate(HALS_System *this)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v2 = *(this + 213);
  v3 = *(this + 214);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    do
    {
      LODWORD(v19) = *(*v2 + 16);
      std::vector<unsigned int>::push_back[abi:ne200100](&v16, &v19);
      v2 += 8;
    }

    while (v2 != v3);
    v4 = v16;
    v5 = v17;
    if (v16 != v17)
    {
      v6 = v16;
      do
      {
        HALS_System::_DestroyIOContext(this, 0, *v6++);
      }

      while (v6 != v5);
    }
  }

  memset(v15, 0, sizeof(v15));
  v7 = *(this + 205);
  v8 = *(this + 206);
  v19 = v15;
  LOBYTE(v20) = 0;
  if (v8 != v7)
  {
    std::vector<HALS_Releaser<HALS_Client>>::__vallocate[abi:ne200100](v15, (v8 - v7) >> 3);
  }

  v19 = v15;
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (v4)
  {
    v17 = v4;
    operator delete(v4);
  }

  if (*(this + 240))
  {
    v19 = (this + 1928);
    LODWORD(v20) = HALB_Mutex::Lock((this + 1928));
    CFRunLoopStop(*(this + 240));
    *(this + 2208) = 1;
    HALB_Guard::Wait((this + 1928));
    HALB_Guard::Locker::~Locker(&v19);
  }

  v9 = *(this + 227);
  if (!v9)
  {
    CAVerboseAbort("HALS_System::_TeardownPowerManagement(): PowerManager is null");
    goto LABEL_22;
  }

  (*(*v9 + 24))(v9);
  v11 = *(this + 201);
  if (v11)
  {
    *(this + 201) = 0;
    (*(*v11 + 8))(v11);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v12 = *(this + 198);
  v13 = *(this + 199);
  v14 = v13 - v12;
  if (v13 != v12)
  {
    if (!((v14 >> 3) >> 61))
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v14 >> 3);
    }

LABEL_22:
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v19, v10);
  *(this + 2) = 0;
}

void sub_1DE496054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](va);
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(a1);
}

void HALS_System::DeviceManagerDestroyed(HALS_System *this, HALS_DeviceManager *a2)
{
  (*(*a2 + 8))(a2);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN11HALS_System22DeviceManagerDestroyedEP18HALS_DeviceManager_block_invoke;
  v5[3] = &__block_descriptor_tmp_94_7982;
  v5[4] = this;
  v5[5] = a2;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v5);
}

void sub_1DE496198(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE496188);
}

void ___ZN11HALS_System22DeviceManagerDestroyedEP18HALS_DeviceManager_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1584);
  v4 = *(v2 + 1592);
  if (v3 != v4)
  {
    while (*v3 != *(a1 + 40))
    {
      v3 += 8;
      if (v3 == v4)
      {
        v3 = *(v2 + 1592);
        break;
      }
    }
  }

  if (v4 == v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "HALS_System.cpp";
      v9 = 1024;
      v10 = 2347;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_System::DeviceManagerDestroyed: unable to destroy old device manager.", &v7, 0x12u);
    }
  }

  else
  {
    v5 = v3 + 8;
    v6 = v4 - (v3 + 8);
    if (v4 != v3 + 8)
    {
      memmove(v3, v5, v4 - (v3 + 8));
    }

    *(v2 + 1592) = &v3[v6];
    HALS_ObjectMap::ReleaseObject(*(a1 + 40), v5);
  }
}

void HALS_System::_DestroyIOContext(uint64_t this, HALS_Client *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1704);
  v4 = *(this + 1712);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      if (*(*v3 + 4) == a3)
      {
        break;
      }

      if (++v3 == v4)
      {
        return;
      }
    }

    v7 = v3;
    if (v3 != v4)
    {
      if (a2 && **(v5 + 9) != *(a2 + 4))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v9 = "HALS_System.cpp";
          v10 = 1024;
          v11 = 3445;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOEngine::_DestroyIOContext: the client does not own the IO context being destroyed", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 560492391;
      }

      remove_context_helper(a3, (this + 1704), &v7);
    }
  }
}

void ___ZN11HALS_System12RemoveClientEi_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = HALS_System::CopyClientByProcessID(v2, *(a1 + 40));
  if (v4)
  {
    v5 = *(v2 + 1664);
    v6 = *(v2 + 1672);
    v7 = v6 - v5;
    if (v6 != v5)
    {
      if (!((v7 >> 3) >> 61))
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v7 >> 3);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }
  }

  HALS_ObjectMap::ReleaseObject(v4, v3);
  v9 = HALS_System::CopyClientByProcessID(v2, *(a1 + 40));
  if (v9)
  {
    v10 = *(v2 + 1712);
    v11 = *(v2 + 1704);
    if (v10 != v11)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        block = (v11 + 8 * v12);
        if (**(*block + 9) == *(v9 + 4))
        {
          remove_context_helper(*(*block + 4), (v2 + 1704), &block);
          v10 = *(v2 + 1712);
          v11 = *(v2 + 1704);
        }

        else
        {
          ++v13;
        }

        v12 = v13;
      }

      while (v13 < ((v10 - v11) >> 3));
    }
  }

  HALS_ObjectMap::ReleaseObject(v9, v8);
  v15 = *(a1 + 40);
  v16 = *(v2 + 1640);
  v17 = *(v2 + 1648);
  while (v16 != v17)
  {
    v18 = *v16++;
    v19 = *(v18 + 240);
    if (v19 == v15)
    {
      v20 = &v16[(v19 != v15) - 1];
      if (v20 != v17)
      {
        HALS_ObjectMap::RetainObject(*v20, v14);
        operator new();
      }

      return;
    }
  }
}

void sub_1DE4969CC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK11HALS_System27_TellDevicesAboutDeadClientEP11HALS_Client_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = v3[1];
  while (v4 != v5)
  {
    v6 = HALS_ObjectMap::CopyObjectByObjectID(*v4);
    v8 = v6;
    if (v6)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        (*(*v6 + 264))(v6);
      }
    }

    HALS_ObjectMap::ReleaseObject(v8, v7);
    ++v4;
  }

  v9 = *(a1 + 48);

  HALS_ObjectMap::ReleaseObject(v9, a2);
}

uint64_t HALS_System::CopyClientByProcessID(HALS_System *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_System21CopyClientByProcessIDEi_block_invoke;
  v5[3] = &unk_1E8675AF0;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void remove_context_helper(int a1, HALS_ObjectMap ***a2, HALS_ObjectMap ***a3)
{
  HALS_ObjectMap::RetainObject(**a3, a2);
  v6 = *a3;
  v7 = *a3 + 1;
  v8 = a2[1];
  if (v7 != v8)
  {
    v9 = *v6;
    do
    {
      *(v7 - 1) = *v7;
      *v7++ = v9;
    }

    while (v7 != v8);
    v6 = v7 - 1;
  }

  std::vector<HALS_Releaser<HALS_IOContext>>::__base_destruct_at_end[abi:ne200100](a2, v6);
  pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  v10 = HALS_ObjectMap::sNormalPriorityQueue;
  v11 = atomic_load((HALS_ObjectMap::sNormalPriorityQueue + 32));
  if (v11)
  {
    atomic_store(1u, (HALS_ObjectMap::sNormalPriorityQueue + 33));
  }

  if (*(v10 + 328) != 1)
  {
    operator new();
  }

  v12 = *(v10 + 320);
  v13 = *v10;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZL21remove_context_helperjRNSt3__16vectorI13HALS_ReleaserI14HALS_IOContextENS3_9allocatorIS7_EEEERKNS3_11__wrap_iterIPS7_EEE3__0EEvOT__block_invoke;
  block[3] = &__block_descriptor_tmp_251;
  v15 = a1;
  dispatch_group_async(v12, v13, block);
}

void std::vector<HALS_Releaser<HALS_IOContext>>::__base_destruct_at_end[abi:ne200100](uint64_t result, HALS_Object *a2)
{
  for (i = *(result + 8); i != a2; i = (i - 8))
  {
    v5 = *(i - 1);
    HALS_ObjectMap::ReleaseObject(v5, a2);
  }

  *(result + 8) = a2;
}

void ___ZNK4AMCP7Utility14Dispatch_Queue5asyncIZL21remove_context_helperjRNSt3__16vectorI13HALS_ReleaserI14HALS_IOContextENS3_9allocatorIS7_EEEERKNS3_11__wrap_iterIPS7_EEE3__0EEvOT__block_invoke(uint64_t a1, unsigned int a2)
{
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 32));
  v3 = v2;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    HALS_ObjectMap::ReleaseObject(v3, v4);
    HALS_ObjectMap::ObjectIsDead(v3, v5);
  }
}

void sub_1DE496DD4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void applesauce::dispatch::v1::async<remove_context_helper(unsigned int,std::vector<HALS_Releaser<HALS_IOContext>> &,std::__wrap_iter<HALS_Releaser<HALS_IOContext>*> const&)::$_0 &>(dispatch_queue_s *,remove_context_helper(unsigned int,std::vector<HALS_Releaser<HALS_IOContext>> &,std::__wrap_iter<HALS_Releaser<HALS_IOContext>*> const&)::$_0 &)::{lambda(void *)#1}::__invoke(unsigned int *a1, unsigned int a2)
{
  v2 = HALS_ObjectMap::CopyObjectByObjectID(*a1);
  v3 = v2;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    HALS_ObjectMap::ReleaseObject(v3, v4);
    HALS_ObjectMap::ObjectIsDead(v3, v5);
  }

  JUMPOUT(0x1E12C1730);
}

void sub_1DE496E80(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE496E50);
}

void ___ZNK11HALS_System21CopyClientByProcessIDEi_block_invoke(uint64_t result, HALS_Object *a2)
{
  v3 = *(result + 40);
  v4 = *(v3 + 1640);
  v5 = *(v3 + 1648);
  if (v4 == v5)
  {
LABEL_4:
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v6 = *v4;
      if (*(*v4 + 60) == *(result + 48))
      {
        break;
      }

      if (++v4 == v5)
      {
        goto LABEL_4;
      }
    }

    HALS_ObjectMap::RetainObject(*v4, a2);
  }

  *(*(*(result + 32) + 8) + 24) = v6;
}

void HALS_System::~HALS_System(HALS_System *this)
{
  HALS_System::~HALS_System(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5972410;
  g_static_start_options = 0;
  v2 = *(this + 277);
  if (v2)
  {
    *(this + 278) = v2;
    operator delete(v2);
  }

  HALB_Guard::~HALB_Guard((this + 1928));
  v3 = *(this + 239);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 237);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 234);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 230);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 228);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 225);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 223);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 221);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 219);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v24 = (this + 1704);
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v12 = *(this + 212);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(this + 208);
  if (v13)
  {
    *(this + 209) = v13;
    operator delete(v13);
  }

  v24 = (this + 1640);
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v15 = *(this + 203);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(this + 201);
  *(this + 201) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(this + 198, v14);
  CACFDictionary::~CACFDictionary((this + 1568));
  std::unique_ptr<HALB_AsyncLog>::~unique_ptr[abi:ne200100](this + 194, v17);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 1216));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 880));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 544));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 208));
  v18 = *(this + 25);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(this + 23);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = *(this + 21);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = *(this + 19);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = *(this + 17);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v23 = *(this + 15);
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  std::mutex::~mutex((this + 48));

  HALS_Object::~HALS_Object(this);
}

void std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](HALS_Object ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t *std::unique_ptr<HALB_AsyncLog>::~unique_ptr[abi:ne200100](uint64_t *a1, unsigned int a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    atomic_store(0, (v3 + 32));
    ca::concurrent::details::service_thread::drain(*v3, a2);
    for (i = OSAtomicDequeue((v3 + 16), 0x150uLL); i; i = OSAtomicDequeue((v3 + 16), 0x150uLL))
    {
      (*(*i + 8))(i);
    }

    ca::concurrent::messenger::~messenger(v3, v5);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

void HALS_System::Activate(HALS_DefaultDeviceManager **this, HALS_Object *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  HALS_Object::Activate(this, a2);
  if (g_static_start_options)
  {
    CreateAndInsert<HALS_MetaManager>(this);
  }

  operator new();
}

void sub_1DE49995C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, __int128 __p, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HALS_System::UpdateCaptureFilesEnabled(HALS_SettingsManager **this)
{
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
  if ((*(*platform_behaviors + 48))(platform_behaviors))
  {
    v3 = CFStringCreateWithCString(*MEMORY[0x1E695E478], "DSPCaptureEnabled", 0x8000100u);
    cf = v3;
    if (v3)
    {
      v4 = CFGetTypeID(v3);
      if (v4 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v5 = cf;
    }

    else
    {
      v5 = 0;
    }

    *(this + 1849) = HALS_SettingsManager::ReadServerBooleanSetting(this[222], v5, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "com.apple.coreaudio");
    cf = &unk_1F5986A10;
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = v10;
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "DSPCaptureEnabled");
    v6 = HALS_EmbeddedSettingsLite::read_BOOL(&cf, __p);
    *(this + 1849) = (v6 > 0xFFu) & v6;
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DE49A280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE49B34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, const void *a38)
{
  __cxa_free_exception(v42);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a38);
  applesauce::CF::TypeRef::~TypeRef((v43 - 96));
  applesauce::CF::DataRef::~DataRef((v43 - 88));
  if (__p)
  {
    operator delete(__p);
  }

  fclose(v41);
  applesauce::CF::DictionaryRef::~DictionaryRef((v38 + 136));
  if (*(v38 + 127) < 0)
  {
    operator delete(*v40);
  }

  std::mutex::~mutex(v39);
  v45 = *(v38 + 32);
  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  std::__shared_weak_count::~__shared_weak_count(v38);
  operator delete(v46);
  _Unwind_Resume(a1);
}

void sub_1DE49B914(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<AHAL_DSP::HostingLibrary>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    (*(*result + 8))(result);
    result = *(a1 + 24);
    *(a1 + 24) = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void std::__shared_ptr_emplace<AHAL_DSP::HostingLibrary>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972B50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Utility::Settings_Storage>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 148) != 2)
  {
    std::mutex::lock((a1 + 40));
    Data = CFPropertyListCreateData(0, *(a1 + 136), kCFPropertyListXMLFormat_v1_0, 0, 0);
    v3 = Data;
    if (Data)
    {
      v4 = CFGetTypeID(Data);
      if (v4 != CFDataGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      v5 = (a1 + 104);
      if (*(a1 + 127) < 0)
      {
        v5 = *v5;
      }

      v6 = fopen(v5, "w+");
      v7 = v6;
      if (v6)
      {
        if (*(a1 + 128))
        {
          v8 = fileno(v6);
          fchmod(v8, *(a1 + 128));
        }

        BytePtr = CFDataGetBytePtr(v3);
        Length = CFDataGetLength(v3);
        fwrite(BytePtr, Length, 1uLL, v7);
        fflush(v7);
        fclose(v7);
      }

      CFRelease(v3);
    }

    std::mutex::unlock((a1 + 40));
  }

  v11 = *(a1 + 136);
  if (v11)
  {
    CFRelease(v11);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  std::mutex::~mutex((a1 + 40));
  v12 = *(a1 + 32);
  if (v12)
  {

    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1DE49BBD0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  __cxa_free_exception(v9);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(va);
  __clang_call_terminate(a1);
}

void std::__shared_ptr_emplace<AMCP::Utility::Settings_Storage>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE49BD18(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HALB_Tailspin>::__on_zero_shared(uint64_t a1)
{
  do
  {
    v2 = *(a1 + 24);
    if (!v2 || (AMCP::Utility::Dispatch_Queue::flush_all_work(v2), (v3 = *(a1 + 24)) == 0))
    {
      *(a1 + 24) = 0;
      return;
    }

    v4 = atomic_load((v3 + 33));
  }

  while ((v4 & 1) != 0);
  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v5);

    JUMPOUT(0x1E12C1730);
  }
}

void std::__shared_ptr_emplace<HALB_Tailspin>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972B00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_System::DeviceManagerCreated(HALS_System *this, HALS_DeviceManager *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 0x40000000;
  v18[2] = ___ZN11HALS_System20DeviceManagerCreatedEP18HALS_DeviceManager_block_invoke;
  v18[3] = &unk_1E8675A68;
  v18[5] = this;
  v18[6] = a2;
  v18[4] = &v19;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v18);
  if ((v20[3] & 1) == 0)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      v24 = "HALS_System.cpp";
      v25 = 1024;
      v26 = 2311;
      v27 = 2080;
      v28 = "inserted == false";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to insert device manager", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v10, "Failed to insert device manager");
    std::runtime_error::runtime_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5992170;
    v12 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v11);
    v29 = "void HALS_System::DeviceManagerCreated(HALS_DeviceManager *)";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
    v31 = 2311;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  (**a2)(a2);
  _Block_object_dispose(&v19, 8);
}

void sub_1DE49C418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t a1), void *a12, uint64_t a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, std::runtime_error a20, std::runtime_error a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    a9 = MEMORY[0x1E69E9820];
    a10 = v34;
    a11 = ___ZN11HALS_System20DeviceManagerCreatedEP18HALS_DeviceManager_block_invoke_91;
    a12 = &__block_descriptor_tmp_92;
    v35 = (*(*v31 + 64))(v31);
    HALB_CommandGate::ExecuteCommand(v35, &a9);
    v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v37 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v36);
    }

    v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v40 = *v39;
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    else
    {
      v40 = *v39;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *(v33 - 144) = 136315394;
      *(v32 + 4) = "HALS_System.cpp";
      *(v33 - 132) = 1024;
      *(v32 + 14) = 2329;
      _os_log_error_impl(&dword_1DE1F9000, v40, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Failed to activate device manager", (v33 - 144), 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&a31);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&a20, "Failed to activate device manager");
    std::runtime_error::runtime_error(&a21, &a20);
    a23 = 0;
    a24 = 0;
    a25 = 0;
    a26 = -1;
    a21.__vftable = &unk_1F5992170;
    a22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(v33 - 144, &a21);
    *(v33 - 112) = "void HALS_System::DeviceManagerCreated(HALS_DeviceManager *)";
    *(v33 - 104) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/Base/HALS_System.cpp";
    *(v33 - 96) = 2329;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE49C664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, std::runtime_error a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v35 - 144);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (v34)
  {
    __cxa_free_exception(v33);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a33);
  __cxa_end_catch();
  _Block_object_dispose((v35 - 176), 8);
  _Unwind_Resume(a1);
}

void ___ZN11HALS_System20DeviceManagerCreatedEP18HALS_DeviceManager_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 40);
  v4 = v3[198];
  v5 = v3[199];
  v6 = (a1 + 48);
  if (v5 == v4)
  {
    v14 = v3[199];
  }

  else
  {
    v7 = v5 - v4;
    do
    {
      v8 = &v4[v7 >> 1];
      v9 = *v8;
      v10 = *v6;
      v11 = *(*v8 + 6);
      if (v11)
      {
        CFRetain(v11);
        v11 = *(v9 + 6);
      }

      v38 = v11;
      v39 = 1;
      if (*(v10 + 6))
      {
        CFRetain(*(v10 + 6));
        v12 = *(v10 + 6);
        v11 = v38;
      }

      else
      {
        v12 = 0;
      }

      v36 = v12;
      v37 = 1;
      v13 = CFStringCompare(v11, v12, 0);
      CACFString::~CACFString(&v36);
      CACFString::~CACFString(&v38);
      if (v13 == kCFCompareLessThan)
      {
        v7 += ~(v7 >> 1);
      }

      else
      {
        v7 >>= 1;
      }

      if (v13 == kCFCompareLessThan)
      {
        v4 = v8 + 1;
      }
    }

    while (v7);
    v14 = v4;
    v4 = v3[198];
    v5 = v3[199];
  }

  v15 = v3 + 199;
  v16 = v3[200];
  if (v5 >= v16)
  {
    v21 = v5 - v4 + 1;
    if (v21 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v22 = v16 - v4;
    if (v22 >> 2 > v21)
    {
      v21 = v22 >> 2;
    }

    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      v23 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v23);
    }

    v24 = v14 - v4;
    v25 = v14 - v4;
    v26 = (8 * v25);
    v27 = 8 * v25;
    if (!v25)
    {
      if (v24 < 1)
      {
        v28 = v24 >> 2;
        if (v14 == v4)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v29);
      }

      v26 = (v26 - (((v24 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      v27 = v26;
    }

    *v26 = *v6;
    v30 = v27 + 8;
    memcpy((v27 + 8), v14, v3[199] - v14);
    v35 = (v30 + v3[199] - v14);
    v3[199] = v14;
    v31 = v3[198];
    v32 = v14 - v31;
    v33 = v26 - (v14 - v31);
    memcpy(v33, v31, v32);
    v34 = v3[198];
    v3[198] = v33;
    *v15 = v35;
    if (v34)
    {
      operator delete(v34);
    }
  }

  else if (v14 == v5)
  {
    *v5 = *v6;
    *v15 = v5 + 1;
  }

  else
  {
    v17 = (v14 + 1);
    v18 = v5;
    if (v5 >= 8)
    {
      *v5 = *(v5 - 1);
      v18 = v5 + 1;
    }

    *v15 = v18;
    if (v5 != v17)
    {
      memmove(v14 + 1, v14, v5 - v17);
      v18 = *v15;
    }

    v19 = v18 <= v6 || v14 > v6;
    v20 = 1;
    if (v19)
    {
      v20 = 0;
    }

    *v14 = v6[v20];
  }

  HALS_ObjectMap::RetainObject(*v6, a2);
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void sub_1DE49CA60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  if (v13)
  {
    operator delete(v13);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE49CA38);
}

void ___ZN11HALS_System20DeviceManagerCreatedEP18HALS_DeviceManager_block_invoke_91(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1584);
  v4 = *(v2 + 1592);
  if (v3 == v4)
  {
    v4 = *(v2 + 1584);
  }

  else
  {
    v5 = *(a1 + 40);
    while (*v3 != v5)
    {
      v3 += 8;
      if (v3 == v4)
      {
        v3 = *(v2 + 1592);
        goto LABEL_13;
      }
    }

    if (v3 != v4)
    {
      v6 = v3 + 8;
      if (v3 + 8 != v4)
      {
        do
        {
          if (*v6 != v5)
          {
            *v3 = *v6;
            v3 += 8;
          }

          v6 += 8;
        }

        while (v6 != v4);
        v4 = *(v2 + 1592);
      }
    }
  }

LABEL_13:
  v7 = v3 + 8;
  v8 = v4 - (v3 + 8);
  if (v4 != v3 + 8)
  {
    memmove(v3, v7, v4 - (v3 + 8));
  }

  *(v2 + 1592) = &v3[v8];
  HALS_ObjectMap::ReleaseObject(*(a1 + 40), v7);
}

void sub_1DE49CB74(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_System::HALS_System(uint64_t a1, int a2, HALS_Object *a3)
{
  g_static_start_options = a2;
  *a1 = &unk_1F5987EA8;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = xmmword_1DE7580F0;
  *(a1 + 32) = &stru_1F5992518;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0;
  HALS_ObjectMap::MapObject(1, a1, a3);
  *a1 = &unk_1F5972410;
  *(a1 + 48) = 850045863;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(v4);
  if ((*(*platform_behaviors + 120))(platform_behaviors))
  {
    operator new();
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  HALB_CommandGate::make((a1 + 176), v6);
}

void sub_1DE49E95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::mutex *a10, void *a11, void *a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, HALS_Object *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32)
{
  CACFObject<void const*>::~CACFObject(&STACK[0x310]);
  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  v34 = *(a22 + 277);
  if (v34)
  {
    *(a22 + 278) = v34;
    operator delete(v34);
  }

  HALB_Guard::~HALB_Guard((a22 + 1928));
  v35 = *(a22 + 239);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = *(a22 + 237);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v37 = *(a22 + 234);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(a22 + 230);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  v39 = *(a22 + 228);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v40 = *(a22 + 225);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  v41 = *(a22 + 223);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v42 = *(a22 + 221);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v43 = *(a22 + 219);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  a32 = a11;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&a32);
  v44 = *(a22 + 212);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v45 = *(a22 + 208);
  if (v45)
  {
    *(a22 + 209) = v45;
    operator delete(v45);
  }

  a32 = a12;
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&a32);
  v47 = *(a22 + 203);
  if (v47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
  }

  v48 = *(a22 + 201);
  *(a22 + 201) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(a22 + 198, v46);
  CACFDictionary::~CACFDictionary((a22 + 1568));
  std::unique_ptr<HALB_AsyncLog>::~unique_ptr[abi:ne200100](a13 + 170, v49);
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a13 + 128));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a13 + 86));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a13 + 44));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((a13 + 2));
  v50 = *(a22 + 25);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  v51 = *(a22 + 23);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  v52 = *(a22 + 21);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  v53 = *(a22 + 19);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  v54 = *(a22 + 17);
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  v55 = *(a22 + 15);
  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  std::mutex::~mutex(a10);
  HALS_Object::~HALS_Object(a22);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void *,AMCP::Power_State)>::~__value_func[abi:ne200100](uint64_t a1)
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

void TellKernelAudioIOIsRunning(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (TellKernelAudioIOIsRunning(BOOL)::isInitialized != -1)
  {
    dispatch_once(&TellKernelAudioIOIsRunning(BOOL)::isInitialized, &__block_literal_global_210);
  }

  if (TellKernelAudioIOIsRunning(BOOL)::theMIBLength)
  {
    v5 = a1;
    if (sysctl(TellKernelAudioIOIsRunning(BOOL)::theMIB, TellKernelAudioIOIsRunning(BOOL)::theMIBLength, 0, 0, &v5, 4uLL))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v2 = *__error();
        v3 = __error();
        v4 = strerror(*v3);
        *buf = 136315906;
        v7 = "HALS_System.cpp";
        v8 = 1024;
        v9 = 460;
        v10 = 1024;
        v11 = v2;
        v12 = 2080;
        v13 = v4;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  TellKernelAudioIOIsRunning: sysctl for security.mac.sandbox.audio_active failed: %d %s", buf, 0x22u);
      }
    }
  }
}

void ___ZL26TellKernelAudioIOIsRunningb_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  if (sysctlnametomib("security.mac.sandbox.audio_active", TellKernelAudioIOIsRunning(BOOL)::theMIB, &TellKernelAudioIOIsRunning(BOOL)::theMIBLength))
  {
    v0 = 1;
  }

  else
  {
    v0 = TellKernelAudioIOIsRunning(BOOL)::theMIBLength == 0;
  }

  if (v0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v1 = *__error();
      v2 = __error();
      v3 = strerror(*v2);
      v4 = 136315906;
      v5 = "HALS_System.cpp";
      v6 = 1024;
      v7 = 445;
      v8 = 1024;
      v9 = v1;
      v10 = 2080;
      v11 = v3;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  TellKernelAudioIOIsRunning: sysctlnametomib for security.mac.sandbox.audio_active failed: %d %s", &v4, 0x22u);
    }

    TellKernelAudioIOIsRunning(BOOL)::theMIBLength = 0;
  }
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*>(uint64_t a1, HALS_ObjectMap **a2, HALS_ObjectMap **a3, HALS_ObjectMap **a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *a4 = *v6;
      HALS_ObjectMap::RetainObject(v7, a2);
      ++v6;
      a4 = ++v12;
    }

    while (v6 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      HALS_ObjectMap::ReleaseObject(*v5++, a2);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*>>::~__exception_guard_exceptions[abi:ne200100](v9, a2);
}

uint64_t std::__split_buffer<HALS_Releaser<HALS_IOContext>>::~__split_buffer(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 8);
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == v3)
    {
      break;
    }

    v5 = *(v4 - 8);
    *(a1 + 16) = v4 - 8;
    HALS_ObjectMap::ReleaseObject(v5, a2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1, HALS_Object *a2)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = **(a1 + 16);
    v5 = **(a1 + 8);
    while (v4 != v5)
    {
      v6 = *(v4 - 8);
      v4 -= 8;
      HALS_ObjectMap::ReleaseObject(v6, a2);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<HALS_Releaser<HALS_Client>>::~__split_buffer(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 8);
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == v3)
    {
      break;
    }

    v5 = *(v4 - 8);
    *(a1 + 16) = v4 - 8;
    HALS_ObjectMap::ReleaseObject(v5, a2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_emplace<HALS_PowerManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972DB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void (*)(void *,AMCP::Power_State),std::allocator<void (*)(void *,AMCP::Power_State)>,void ()(void *,AMCP::Power_State)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "PFvPvN4AMCP11Power_StateEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void (*)(void *,AMCP::Power_State),std::allocator<void (*)(void *,AMCP::Power_State)>,void ()(void *,AMCP::Power_State)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59729B0;
  a2[1] = v2;
  return result;
}

void HALS_System::PowerStateChangedCallback(_DWORD *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    CAVerboseAbort("HALS_System::PowerStateChangedCallback: HALS_System object is null", a2);
  }

  if (a1[435] != a2)
  {
    a1[435] = a2;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = ___ZN11HALS_System33TellAllIOContextsAboutPowerChangeEN4AMCP11Power_StateE_block_invoke;
    v3[3] = &__block_descriptor_tmp_147;
    v3[4] = a1;
    v4 = a2;
    v2 = (*(*a1 + 64))(a1);
    HALB_CommandGate::ExecuteCommand(v2, v3);
  }
}

void sub_1DE49F6C4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 buf, __int128 a16)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  v17 = __cxa_begin_catch(a1);
  v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (a2 == 2)
  {
    if (v18)
    {
      v19 = v17[2];
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "HALS_System.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 3849;
      WORD1(a16) = 2048;
      *(&a16 + 4) = v19;
      v20 = MEMORY[0x1E69E9C10];
      v21 = "%25s:%-5d  HALS_System::PowerStateChangedCallback: Uncaught exception: %ld";
      v22 = 28;
LABEL_7:
      _os_log_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_DEFAULT, v21, &buf, v22);
    }
  }

  else if (v18)
  {
    LODWORD(buf) = 136315394;
    *(&buf + 4) = "HALS_System.cpp";
    WORD6(buf) = 1024;
    *(&buf + 14) = 3853;
    v20 = MEMORY[0x1E69E9C10];
    v21 = "%25s:%-5d  HALS_System::PowerStateChangedCallback: Uncaught exception";
    v22 = 18;
    goto LABEL_7;
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE49F68CLL);
}

void sub_1DE49F8F4(void *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZN11HALS_System34_TellAllIOContextsAboutPowerChangeEN4AMCP11Power_StateE_block_invoke(uint64_t result, unsigned int a2)
{
  v2 = *(result + 32);
  v3 = *v2;
  v4 = v2[1];
  if (*v2 != v4)
  {
    do
    {
      v6 = HALS_ObjectMap::CopyObjectByObjectID(*v3);
      v8 = v6;
      if (v6)
      {
        v9 = *(result + 48);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v11[2] = ___ZN14HALS_IOContext12PowerChangedEN4AMCP11Power_StateE_block_invoke;
        v11[3] = &__block_descriptor_tmp_12_12137;
        v11[4] = v6;
        v12 = v9;
        v10 = (*(*v6 + 64))(v6);
        HALB_CommandGate::ExecuteCommand(v10, v11);
      }

      HALS_ObjectMap::ReleaseObject(v8, v7);
      ++v3;
    }

    while (v3 != v4);
  }
}

void std::__shared_ptr_emplace<Mock_Power_Manager_System_Interface>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_PowerManager::True_System_Interface>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_System::RunLoopThread(HALS_System *this, void *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  HALS_System::GetInstance(&v22, 0, v21);
  HALB_Mutex::Lock((v22 + 1928));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  Current = CFRunLoopGetCurrent();
  v20[0] = 0;
  v20[1] = 0;
  HALS_System::GetInstance(&v22, 0, v20);
  v3 = v23;
  *(v22 + 1920) = Current;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v19[0] = 0;
  v19[1] = 0;
  HALS_System::GetInstance(&v22, 0, v19);
  CFRetain(*(v22 + 1920));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v18[0] = 0;
  v18[1] = 0;
  HALS_System::GetInstance(&v22, 0, v18);
  HALB_Guard::NotifyAll((v22 + 1928));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v4 = *MEMORY[0x1E695E8D8];
  while (1)
  {
    v17[0] = 0;
    v17[1] = 0;
    HALS_System::GetInstance(&v22, 0, v17);
    v5 = *(v22 + 2208);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v5)
    {
      break;
    }

    v16[0] = 0;
    v16[1] = 0;
    HALS_System::GetInstance(&v22, 0, v16);
    HALB_Mutex::Unlock((v22 + 1928));
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v15[0] = 0;
    v15[1] = 0;
    HALS_System::GetInstance(&v22, 0, v15);
    v6 = *(v22 + 2224);
    v7 = *(v22 + 2216);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v6 == v7)
    {
      usleep(0x4C4B40u);
    }

    else if (CFRunLoopRunInMode(v4, 1.0e10, 0) != kCFRunLoopRunTimedOut)
    {
      usleep(0xF4240u);
    }

    v14[0] = 0;
    v14[1] = 0;
    HALS_System::GetInstance(&v22, 0, v14);
    HALB_Mutex::Lock((v22 + 1928));
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }
  }

  v13[0] = 0;
  v13[1] = 0;
  HALS_System::GetInstance(&v22, 0, v13);
  CFRelease(*(v22 + 1920));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v12[0] = 0;
  v12[1] = 0;
  HALS_System::GetInstance(&v22, 0, v12);
  v8 = v23;
  *(v22 + 1920) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v11[0] = 0;
  v11[1] = 0;
  HALS_System::GetInstance(&v22, 0, v11);
  HALB_Guard::NotifyAll((v22 + 1928));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v10[0] = 0;
  v10[1] = 0;
  HALS_System::GetInstance(&v22, 0, v10);
  HALB_Mutex::Unlock((v22 + 1928));
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  return 0;
}

void sub_1DE49FE2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(v22 - 56);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    a15 = 0;
    a16 = 0;
    HALS_System::GetInstance((v22 - 64), 0, &a15);
    v25 = *(v22 - 56);
    v26 = *(*(v22 - 64) + 1920);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if (v26)
    {
      a13 = 0;
      a14 = 0;
      HALS_System::GetInstance((v22 - 64), 0, &a13);
      CFRelease(*(*(v22 - 64) + 1920));
      v27 = *(v22 - 56);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      a11 = 0;
      a12 = 0;
      HALS_System::GetInstance((v22 - 64), 0, &a11);
LABEL_16:
      v31 = *(v22 - 56);
      *(*(v22 - 64) + 1920) = 0;
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }
    }
  }

  else
  {
    a21 = 0;
    a22 = 0;
    HALS_System::GetInstance((v22 - 64), 0, &a21);
    v28 = *(v22 - 56);
    v29 = *(*(v22 - 64) + 1920);
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v29)
    {
      a19 = 0;
      a20 = 0;
      HALS_System::GetInstance((v22 - 64), 0, &a19);
      CFRelease(*(*(v22 - 64) + 1920));
      v30 = *(v22 - 56);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      a17 = 0;
      a18 = 0;
      HALS_System::GetInstance((v22 - 64), 0, &a17);
      goto LABEL_16;
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1DE49FE10);
}

void std::__shared_ptr_emplace<AMCP::Utility::Dispatch_Queue>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DSPDeveloperPreferences>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59728C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_SettingsManager>::__on_zero_shared(void *a1)
{
  std::unique_ptr<CASettingsStorage>::reset[abi:ne200100](a1 + 8, 0);
  std::unique_ptr<CASettingsStorage>::reset[abi:ne200100](a1 + 7, 0);
  std::unique_ptr<CASettingsStorage>::reset[abi:ne200100](a1 + 6, 0);
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v2);
    MEMORY[0x1E12C1730]();
  }

  v3 = a1[4];
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_emplace<HALS_SettingsManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972870;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<ExclaveRecordingStateHandler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972820;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_IOContext_Manager>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v2)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v2);
    MEMORY[0x1E12C1730]();
  }

  std::mutex::~mutex((a1 + 216));
  std::__hash_table<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::__unordered_map_hasher<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::__unordered_map_equal<AMCP::Portal::IPC::io_messenger_id_t,std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>,std::equal_to<AMCP::Portal::IPC::io_messenger_id_t>,std::hash<AMCP::Portal::IPC::io_messenger_id_t>,true>,std::allocator<std::__hash_value_type<AMCP::Portal::IPC::io_messenger_id_t,std::shared_ptr<AMCP::Portal::IPC::IO_Sender>>>>::~__hash_table(a1 + 176);
  v3 = *(a1 + 168);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a1 + 104);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(a1 + 64);
  v5 = *(a1 + 56);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void std::__shared_ptr_emplace<HALS_IOContext_Manager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59727D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Graph::Synchronized_Mixer_Manager>::__on_zero_shared(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[8];
  a1[8] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    do
    {
      v6 = *v5;
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,0>((v5 + 2));
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[3];
  a1[3] = 0;
  if (v7)
  {

    operator delete(v7);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Synchronized_Mixer_Manager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598DB48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_DefaultDeviceManager>::__on_zero_shared(uint64_t a1)
{
  OS::CF::UntypedObject::~UntypedObject((a1 + 456));
  OS::CF::UntypedObject::~UntypedObject((a1 + 424));
  v2 = (a1 + 400);
  v3 = -72;
  do
  {
    OS::CF::UntypedObject::~UntypedObject(v2);
    v2 = (v4 - 24);
    v3 += 24;
  }

  while (v3);
  OS::CF::UntypedObject::~UntypedObject((a1 + 320));
  v5 = (a1 + 296);
  v6 = -72;
  do
  {
    OS::CF::UntypedObject::~UntypedObject(v5);
    v5 = (v7 - 24);
    v6 += 24;
  }

  while (v6);
  OS::CF::UntypedObject::~UntypedObject((a1 + 216));
  v8 = (a1 + 192);
  v9 = -72;
  do
  {
    OS::CF::UntypedObject::~UntypedObject(v8);
    v8 = (v10 - 24);
    v9 += 24;
  }

  while (v9);

  HALB_Mutex::~HALB_Mutex((a1 + 24));
}

void std::__shared_ptr_emplace<HALS_DefaultDeviceManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_System::StartServer(AMCP::Log::AMCP_Scope_Registry *a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  v15[0] = 0;
  v15[1] = 0;
  HALS_System::GetInstance(&v16, 0, v15);
  v3 = v16;
  if (v16)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v4 = *(v3 + 120);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      *(a1 + 1) = v5;
      if (v5)
      {
        v6 = *(v3 + 112);
        *a1 = v6;
        if (v6)
        {
          goto LABEL_19;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }

  v13 = &v14;
  v14 = os_transaction_create();
  v7 = pthread_mutex_lock(&HALS_System::sInitializationMutex);
  *a1 = 0;
  *(a1 + 1) = 0;
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_System.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 620;
      v18 = 1024;
      v19 = v7;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_System::StartServer: failed to lock the mutex, Error: 0x%X", buf, 0x18u);
    }
  }

  else
  {
    v12[0] = 0;
    v12[1] = 0;
    HALS_System::GetInstance(buf, 0, v12);
    v8 = *(&v16 + 1);
    v16 = *buf;
    v9 = *buf;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (!v9)
    {
      kdebug_trace();
      operator new();
    }

    v10 = *(v9 + 120);
    if (v10 && (v11 = std::__shared_weak_count::lock(v10)) != 0)
    {
      *a1 = *(v9 + 112);
      *(a1 + 1) = v11;
    }

    else
    {
      *a1 = 0;
      *(a1 + 1) = 0;
    }

    pthread_mutex_unlock(&HALS_System::sInitializationMutex);
  }

  applesauce::raii::v1::detail::ScopeGuard<HALS_System::StartServer(HALS_System::Server_Start_Options)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&v13);
LABEL_19:
  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
  }
}

void sub_1DE4A1CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59)
{
  OS::CF::UntypedObject::~UntypedObject(&a49);
  OS::CF::UntypedObject::~UntypedObject(&a51);
  if (a59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a59);
  }

  v59 = *(a16 + 8);
  if (v59)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v59);
  }

  applesauce::raii::v1::detail::ScopeGuard<HALS_System::StartServer(HALS_System::Server_Start_Options)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(&a27);
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  _Unwind_Resume(v60);
}

void HALS_System::CheckForDefaultDeviceChanges(HALS_System *this)
{
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(this);
  if ((*(*platform_behaviors + 56))(platform_behaviors) == 1 && HALS_System::sIsInitialized == 1)
  {
    v3 = *(this + 202);
    v4 = *(this + 203);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *(this + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 1174405120;
    v6[2] = ___ZN11HALS_System28CheckForDefaultDeviceChangesEv_block_invoke;
    v6[3] = &__block_descriptor_tmp_98_8082;
    v6[4] = v3;
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::Utility::Dispatch_Queue::after(v5, v6);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void ***applesauce::raii::v1::detail::ScopeGuard<HALS_System::StartServer(HALS_System::Server_Start_Options)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    os_release(v2);
    **a1 = 0;
  }

  return a1;
}

void ___ZN11HALS_System11StartServerENS_20Server_Start_OptionsE_block_invoke()
{
  v136 = *MEMORY[0x1E69E9840];
  v85[0] = 0;
  v85[1] = 0;
  HALS_System::GetInstance(&v86, 0, v85);
  v0 = v86;
  v109 = 0;
  v110 = &v109;
  v111 = 0x4002000000;
  v112 = __Block_byref_object_copy__7820;
  v113 = __Block_byref_object_dispose__7821;
  memset(v114, 0, sizeof(v114));
  v103 = 0;
  v104 = &v103;
  v105 = 0x4002000000;
  v106 = __Block_byref_object_copy__46;
  v107 = __Block_byref_object_dispose__47;
  memset(v108, 0, sizeof(v108));
  v97 = 0;
  v98 = &v97;
  v99 = 0x4002000000;
  v100 = __Block_byref_object_copy__48;
  v101 = __Block_byref_object_dispose__49;
  memset(v102, 0, sizeof(v102));
  HALS_ObjectMap::Dump(v1);
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 0x40000000;
  v96[2] = ___ZNK11HALS_System8LogStateEv_block_invoke;
  v96[3] = &unk_1E8675658;
  v96[4] = &v109;
  v96[5] = &v103;
  v96[6] = &v97;
  v96[7] = v0;
  v2 = (*(*v0 + 64))(v0);
  HALB_CommandGate::ExecuteCommand(v2, v96);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v90);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "Number of Device Managers: ", 27);
  v3 = MEMORY[0x1E12C1220](&v91, (v110[6] - v110[5]) >> 3);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(v135, MEMORY[0x1E69E5318]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(v135);
  std::ostream::put();
  std::ostream::flush();
  v5 = v110[5];
  v6 = v110[6];
  while (v5 != v6)
  {
    HALS_DeviceManager::LogState(*v5++, v90);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "Number of IO Contexts: ", 23);
  v7 = MEMORY[0x1E12C1220](&v91, (v104[6] - v104[5]) >> 3);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(v135, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(v135);
  std::ostream::put();
  std::ostream::flush();
  v9 = v104[5];
  v10 = v104[6];
  while (v9 != v10)
  {
    (*(**(*v9 + 104) + 416))(*(*v9 + 104), v90, 1);
    v9 += 8;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "Number of Clients: ", 19);
  v11 = MEMORY[0x1E12C1220](&v91, (v98[6] - v98[5]) >> 3);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(v135, MEMORY[0x1E69E5318]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(v135);
  std::ostream::put();
  std::ostream::flush();
  v13 = v98[5];
  v14 = v98[6];
  if (v13 != v14)
  {
    v15 = MEMORY[0x1E69E5318];
    do
    {
      v16 = *v13;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "Client ", 7);
      v17 = MEMORY[0x1E12C1210](&v91, *(v16 + 16));
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v120, v15);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v120);
      std::ostream::put();
      std::ostream::flush();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "PID:       ", 11);
      v19 = MEMORY[0x1E12C1200](&v91, *(v16 + 240));
      std::ios_base::getloc((v19 + *(*v19 - 24)));
      v20 = std::locale::use_facet(&v121, v15);
      (v20->__vftable[2].~facet_0)(v20, 10);
      std::locale::~locale(&v121);
      std::ostream::put();
      std::ostream::flush();
      *v119 = 128;
      CACFString::GetCString(*(v16 + 248), v135, v119, v21);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "    ", 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "Bundle ID: ", 11);
      v22 = strlen(v135);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, v135, v22);
      std::ios_base::getloc((&v91 + *(v91 - 24)));
      v23 = std::locale::use_facet(&v122, v15);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(&v122);
      std::ostream::put();
      std::ostream::flush();
      ++v13;
    }

    while (v13 != v14);
  }

  *v123 = 0;
  *&v123[8] = 16;
  LOBYTE(v124) = 0;
  v126 = 0;
  *&v125[2] = 0;
  *&v125[10] = 0;
  existing = 0;
  v24 = IOServiceMatching("AppleEmbeddedAudio");
  if (!IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], v24, &existing))
  {
    *v123 = 0;
    allocator = *MEMORY[0x1E695E478];
    v36 = MEMORY[0x1E69E5318];
    while (1)
    {
      do
      {
        v37 = IOIteratorNext(existing);
        *v123 = v37;
        if (!v37)
        {
          goto LABEL_11;
        }

        cf = IORegistryEntryCreateCFProperty(v37, @"CodecRegisterData", allocator, 0);
      }

      while (!cf);
      CFProperty = IORegistryEntryCreateCFProperty(*v123, @"CodecRegisterStartIndex", allocator, 0);
      v39 = CFProperty;
      if (CFProperty)
      {
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(CFProperty, kCFNumberSInt32Type, &valuePtr))
        {
          *&v123[4] = valuePtr;
        }

        CFRelease(v39);
      }

      v40 = IORegistryEntryCreateCFProperty(*v123, @"CodecRegisterDisplayBase", allocator, 0);
      v41 = v40;
      if (v40)
      {
        if (!CFNumberGetValue(v40, kCFNumberSInt32Type, &v123[8]))
        {
          *&v123[8] = 16;
        }

        CFRelease(v41);
      }

      v42 = CFGetTypeID(cf);
      if (v42 != CFArrayGetTypeID())
      {
        break;
      }

      Count = CFArrayGetCount(cf);
      v44 = *&v125[10];
      v45 = *&v125[2];
      while (v44 != v45)
      {
        v46 = *(v44 - 24);
        if (v46)
        {
          *(v44 - 16) = v46;
          operator delete(v46);
        }

        v44 -= 32;
      }

      v50 = Count / 2;
      *&v125[10] = v45;
      std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::reserve(&v125[2], Count / 2);
      if (Count < 2)
      {
        goto LABEL_75;
      }

      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 1;
      v55 = v50;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v51);
        LODWORD(v115[0]) = 0;
        if (ValueAtIndex)
        {
          if (CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v115))
          {
            v57 = v115[0];
            if (LODWORD(v115[0]) < v53)
            {
              LOBYTE(v124) = 1;
            }

            v58 = CFArrayGetValueAtIndex(cf, v51 + 1);
            v59 = v124 ? 4 : 1;
            v53 = v57;
            if (!CodecRegistryEntry::ReadRegistersFromCFData<CodecRegistryEntry::RegisterWidth>(&v125[2], v58, v115[0], v59))
            {
              break;
            }
          }
        }

        v52 = v50 <= v54++;
        v51 += 2;
        if (!--v55)
        {
          goto LABEL_75;
        }
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "Error encountered while reading register data for register address ", 67);
      v67 = MEMORY[0x1E12C1210](&v91, LODWORD(v115[0]));
      std::ios_base::getloc((v67 + *(*v67 - 24)));
      v68 = std::locale::use_facet(&valuePtr, v36);
      (v68->__vftable[2].~facet_0)(v68, 10);
      std::locale::~locale(&valuePtr);
      std::ostream::put();
      std::ostream::flush();
      if (v52)
      {
        goto LABEL_75;
      }

LABEL_98:
      CFRelease(cf);
    }

    if (v42 == CFDataGetTypeID())
    {
      v47 = *&v125[10];
      v48 = *&v125[2];
      while (v47 != v48)
      {
        v49 = *(v47 - 24);
        if (v49)
        {
          *(v47 - 16) = v49;
          operator delete(v49);
        }

        v47 -= 32;
      }

      *&v125[10] = v48;
      v60 = *&v123[4];
      v61 = v124;
      Length = CFDataGetLength(cf);
      v63 = v61 ? Length / 4 : Length;
      std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::reserve(&v125[2], v63);
      v64 = v124 ? 4 : 2;
      if (!CodecRegistryEntry::ReadRegistersFromCFData<CodecRegistryEntry::RegisterWidth>(&v125[2], cf, v60, v64))
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "Error encountered while reading register data for register address ", 67);
        v65 = MEMORY[0x1E12C1210](&v91, v60);
        std::ios_base::getloc((v65 + *(*v65 - 24)));
        v66 = std::locale::use_facet(&valuePtr, v36);
        (v66->__vftable[2].~facet_0)(v66, 10);
        std::locale::~locale(&valuePtr);
        std::ostream::put();
        std::ostream::flush();
        goto LABEL_98;
      }
    }

LABEL_75:
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    valuePtr = 0u;
    v128 = 0u;
    if (MEMORY[0x1E12C0990](*v123, &valuePtr))
    {
      p_valuePtr = "";
    }

    else
    {
      p_valuePtr = &valuePtr;
    }

    std::string::basic_string[abi:ne200100]<0>(v115, p_valuePtr);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "Codec Device: ", 14);
    if ((v116 & 0x80u) == 0)
    {
      v70 = v115;
    }

    else
    {
      v70 = v115[0];
    }

    if ((v116 & 0x80u) == 0)
    {
      v71 = v116;
    }

    else
    {
      v71 = v115[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, v70, v71);
    std::ios_base::getloc((&v91 + *(v91 - 24)));
    v72 = std::locale::use_facet(&valuePtr, v36);
    (v72->__vftable[2].~facet_0)(v72, 10);
    std::locale::~locale(&valuePtr);
    std::ostream::put();
    std::ostream::flush();
    v73 = *&v125[2];
    v74 = *&v125[10];
    while (v73 != v74)
    {
      v76 = *(v73 + 1);
      v75 = *(v73 + 2);
      if (v75 != v76)
      {
        v77 = *v73;
        v78 = (v75 - v76) >> 2;
        v79 = 1;
        do
        {
          if (v78 > v79 - 1)
          {
            LODWORD(v133) = 0;
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            valuePtr = 0u;
            v128 = 0u;
            if (*&v123[8] == 16)
            {
              snprintf(&valuePtr, 0x64uLL, "%8Xh: 0x%02x");
            }

            else if (*&v123[8] == 10)
            {
              snprintf(&valuePtr, 0x64uLL, "R%06ud: %04u");
            }

            v80 = strlen(&valuePtr);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, &valuePtr, v80);
            std::ios_base::getloc((&v91 + *(v91 - 24)));
            v81 = std::locale::use_facet(&v118, v36);
            (v81->__vftable[2].~facet_0)(v81, 10);
            std::locale::~locale(&v118);
            std::ostream::put();
            std::ostream::flush();
            v76 = *(v73 + 1);
            v75 = *(v73 + 2);
          }

          v78 = (v75 - v76) >> 2;
          ++v77;
        }

        while (v78 > v79++);
      }

      v73 += 8;
    }

    if (v116 < 0)
    {
      operator delete(v115[0]);
    }

    goto LABEL_98;
  }

LABEL_11:
  if (existing)
  {
    IOObjectRelease(existing);
  }

  *&valuePtr = &v125[2];
  std::vector<std::pair<unsigned int,std::vector<unsigned int>>>::__destroy_vector::operator()[abi:ne200100](&valuePtr);
  __p[0] = 0;
  __p[1] = 0;
  v89 = 0;
  v25 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v90 + *(v90[0] - 3)));
    v26 = std::locale::use_facet(v123, v25);
    v27 = (v26->__vftable[2].~facet_0)(v26, 10);
    std::locale::~locale(v123);
    v28 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v90, __p, v27);
    if ((*(&v93[0].__locale_ + *(v90[0] - 3)) & 5) != 0)
    {
      break;
    }

    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v28);
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

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = __p;
      if (v89 < 0)
      {
        v33 = __p[0];
      }

      *v123 = 136315650;
      *&v123[4] = "HALS_System.cpp";
      v124 = 1024;
      *v125 = 1026;
      *&v125[4] = 2080;
      *&v125[6] = v33;
      _os_log_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_DEFAULT, "%32s:%-5d %s", v123, 0x1Cu);
    }
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(__p[0]);
  }

  v90[0] = *MEMORY[0x1E69E54D8];
  v34 = *(MEMORY[0x1E69E54D8] + 72);
  *(v90 + *(v90[0] - 3)) = *(MEMORY[0x1E69E54D8] + 64);
  v91 = v34;
  v92 = MEMORY[0x1E69E5548] + 16;
  if (v94 < 0)
  {
    operator delete(v93[7].__locale_);
  }

  v92 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v93);
  std::iostream::~basic_iostream();
  MEMORY[0x1E12C15F0](&v95);
  _Block_object_dispose(&v97, 8);
  v90[0] = v102;
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](v90);
  _Block_object_dispose(&v103, 8);
  v90[0] = v108;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](v90);
  _Block_object_dispose(&v109, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v114, v35);
  if (v87)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v87);
  }
}

void sub_1DE4A315C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a25);
  MEMORY[0x1E12C15F0](&a41);
  _Block_object_dispose(&a65, 8);
  a25 = a11;
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Block_object_dispose(&STACK[0x218], 8);
  a25 = a12;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Block_object_dispose(&STACK[0x258], 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&STACK[0x280], v66);
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__46(void *a1, uint64_t a2)
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

void ___ZNK11HALS_System8LogStateEv_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[7];
  v4 = *(a1[4] + 8);
  if (v4 + 40 != v3 + 1584)
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v4 + 40), *(v3 + 1584), *(v3 + 1592), (*(v3 + 1592) - *(v3 + 1584)) >> 3);
    v4 = *(a1[4] + 8);
  }

  v5 = *(v4 + 40);
  v6 = *(v4 + 48);
  while (v5 != v6)
  {
    HALS_ObjectMap::RetainObject(*v5++, a2);
  }

  v7 = *(a1[5] + 8) + 40;
  if (v7 != v3 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v7, *(v3 + 1704), *(v3 + 1712), (*(v3 + 1712) - *(v3 + 1704)) >> 3);
  }

  v8 = *(a1[6] + 8) + 40;
  if (v8 != v3 + 1640)
  {
    std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(v8, *(v3 + 1640), *(v3 + 1648), (*(v3 + 1648) - *(v3 + 1640)) >> 3);
  }
}

void sub_1DE4A33FC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(uint64_t a1, HALS_ObjectMap **a2, HALS_Object *a3, unint64_t a4)
{
  v7 = *(a1 + 16);
  v8 = *a1;
  if (a4 > (v7 - *a1) >> 3)
  {
    if (v8)
    {
      std::vector<HALS_Releaser<HALS_IOContext>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
      operator delete(*a1);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v10);
      }
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (a4 <= v11 >> 3)
  {
    std::__copy_impl::operator()[abi:ne200100]<HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *>(a2, a3, v8);

    std::vector<HALS_Releaser<HALS_IOContext>>::__base_destruct_at_end[abi:ne200100](a1, v13);
  }

  else
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *>(a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(a1, v12, a3, *(a1 + 8));
  }
}

HALS_ObjectMap **std::__copy_impl::operator()[abi:ne200100]<HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *,HALS_Releaser<HALS_IOContext> *>(HALS_ObjectMap **a1, HALS_Object *a2, HALS_ObjectMap **a3)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v6 = *a3;
      v7 = *v4;
      v4 = (v4 + 8);
      *a3++ = v7;
      HALS_ObjectMap::RetainObject(v7, a2);
      HALS_ObjectMap::ReleaseObject(v6, v8);
    }

    while (v4 != a2);
    return a2;
  }

  return v4;
}

HALS_ObjectMap **std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(uint64_t a1, HALS_ObjectMap **a2, HALS_ObjectMap **a3, HALS_ObjectMap **a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *v4 = *v6;
      HALS_ObjectMap::RetainObject(v7, a2);
      ++v6;
      v4 = ++v12;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*>>::~__exception_guard_exceptions[abi:ne200100](v9, a2);
  return v4;
}

void ___ZN11HALS_System28CheckForDefaultDeviceChangesEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v9[0] = 0;
        v9[1] = 0;
        HALS_System::GetInstance(&v10, 0, v9);
        v6 = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (v6)
        {
          v8[0] = 0;
          v8[1] = 0;
          HALS_System::GetInstance(&v10, 0, v8);
          v7 = v10;
          std::mutex::lock((v10 + 48));
          if (v11)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

          HALS_DefaultDeviceManager::CheckForChanges(v5);
          std::mutex::unlock((v7 + 48));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void sub_1DE4A3740(void *a1)
{
  std::mutex::unlock((v2 + 48));
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void __destroy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrI25HALS_DefaultDeviceManagerEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrI25HALS_DefaultDeviceManagerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t ___ZN13HALB_WatchdogC2IPFvPKcEPFvU13block_pointerFbPPcPyEEPFvvEEENSt3__110shared_ptrIN9HALHealth8ObserverEEET_T0_T1_b_block_invoke(AMCP::Log::AMCP_Scope_Registry *a1, char **a2, uint64_t *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 4);
  *a3 = 0;
  if (*(v3 + 16) == 1)
  {
    v5 = *(a1 + 6);
    if (v5)
    {
      v5 = std::__shared_weak_count::lock(v5);
      v8 = v5;
      if (v5)
      {
        v9 = *(a1 + 5);
        if (v9)
        {
          v10 = *v9;
          *&buf[8] = 0;
          *&buf[16] = 0;
          *buf = &buf[8];
          v48 = (v10 + 24);
          LODWORD(v49) = HALB_Mutex::Lock((v10 + 24));
          if (buf == (v10 + 128))
          {
LABEL_63:
            HALB_Mutex::Locker::~Locker(&v48);
            v37 = *buf;
            if (*buf == &buf[8])
            {
LABEL_71:
              std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(*&buf[8]);
              v41 = 0;
              v34 = 1;
            }

            else
            {
              while ((*(**(v37 + 4) + 16))(*(v37 + 4)))
              {
                v38 = *(v37 + 1);
                if (v38)
                {
                  do
                  {
                    v39 = v38;
                    v38 = *v38;
                  }

                  while (v38);
                }

                else
                {
                  do
                  {
                    v39 = *(v37 + 2);
                    v25 = *v39 == v37;
                    v37 = v39;
                  }

                  while (!v25);
                }

                v37 = v39;
                if (v39 == &buf[8])
                {
                  goto LABEL_71;
                }
              }

              std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(*&buf[8]);
              v40 = asprintf(a2, "Audio HAL seems to be deadlocked.", v48, v49);
              v34 = 0;
              v41 = 1;
            }

            *a3 = v41;
            v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v42 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v40);
            }

            v44 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v43 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v43)
            {
              atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
              v45 = *v44;
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            }

            else
            {
              v45 = *v44;
            }

            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = "unhealthy";
              *&buf[4] = "HALB_Watchdog.h";
              *buf = 136315650;
              if (v34)
              {
                v46 = "healthy";
              }

              *&buf[12] = 1024;
              *&buf[14] = 79;
              *&buf[18] = 2080;
              *&buf[20] = v46;
              _os_log_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_DEFAULT, "%32s:%-5d watchdog check in, returning %s.", buf, 0x1Cu);
            }

            goto LABEL_82;
          }

          v11 = *(v10 + 128);
          v12 = (v10 + 136);
          if (*&buf[16])
          {
            v13 = *buf;
            *buf = &buf[8];
            *(*&buf[8] + 16) = 0;
            *&buf[8] = 0;
            *&buf[16] = 0;
            if (*(v13 + 8))
            {
              v14 = *(v13 + 8);
            }

            else
            {
              v14 = v13;
            }

            if (v14)
            {
              v15 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v14);
              if (v11 == v12)
              {
                v17 = v14;
              }

              else
              {
                v16 = v11;
                do
                {
                  v17 = v15;
                  v19 = v16[4];
                  v18 = v16[5];
                  if (v18)
                  {
                    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
                  }

                  v20 = v14[5];
                  v14[4] = v19;
                  v14[5] = v18;
                  if (v20)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                  }

                  v21 = *&buf[8];
                  v22 = &buf[8];
                  v23 = &buf[8];
                  if (*&buf[8])
                  {
                    do
                    {
                      while (1)
                      {
                        v22 = v21;
                        if (v14[4] >= v21[4])
                        {
                          break;
                        }

                        v21 = *v21;
                        v23 = v22;
                        if (!*v22)
                        {
                          goto LABEL_23;
                        }
                      }

                      v21 = v21[1];
                    }

                    while (v21);
                    v23 = v22 + 1;
                  }

LABEL_23:
                  *v14 = 0;
                  v14[1] = 0;
                  v14[2] = v22;
                  *v23 = v14;
                  if (**buf)
                  {
                    *buf = **buf;
                    v14 = *v23;
                  }

                  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*&buf[8], v14);
                  ++*&buf[16];
                  if (v15)
                  {
                    v15 = std::__tree<DSP_Host_Types::AudioProcessingType>::_DetachedTreeCache::__detach_next(v15);
                  }

                  else
                  {
                    v15 = 0;
                  }

                  v24 = v16[1];
                  if (v24)
                  {
                    do
                    {
                      v11 = v24;
                      v24 = *v24;
                    }

                    while (v24);
                  }

                  else
                  {
                    do
                    {
                      v11 = v16[2];
                      v25 = *v11 == v16;
                      v16 = v11;
                    }

                    while (!v25);
                  }

                  if (!v17)
                  {
                    break;
                  }

                  v14 = v17;
                  v16 = v11;
                }

                while (v11 != v12);
              }

              std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(v17);
              if (!v15)
              {
                goto LABEL_61;
              }

              for (i = v15[2]; i; i = i[2])
              {
                v15 = i;
              }

              v35 = v15;
            }

            else
            {
              v35 = 0;
            }

            std::__tree<std::shared_ptr<AHAL_DSP::IAudioStream>>::destroy(v35);
          }

LABEL_61:
          if (v11 != v12)
          {
            operator new();
          }

          goto LABEL_63;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = *v32;
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    else
    {
      v33 = *v32;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALB_Watchdog.h";
      *&buf[12] = 1024;
      *&buf[14] = 74;
      _os_log_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_DEFAULT, "%32s:%-5d watchdog check in, but HAL seems to have shut down. returning healthy", buf, 0x12u);
    }

    v34 = 1;
    if (v8)
    {
LABEL_82:
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
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

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "HALB_Watchdog.h";
      *&buf[12] = 1024;
      *&buf[14] = 83;
      _os_log_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_DEFAULT, "%32s:%-5d watchdog check in, returning healthy without consulting real HAL health.", buf, 0x12u);
    }

    return 1;
  }

  return v34;
}

void __destroy_helper_block_e8_40c65_ZTSNSt3__18weak_ptrIN13HALB_Watchdog23HealthObserverContainerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_40c65_ZTSNSt3__18weak_ptrIN13HALB_Watchdog23HealthObserverContainerEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_emplace<HALB_Watchdog::HealthObserverContainer>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<HALB_Watchdog::HealthObserverContainer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALB_Watchdog>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void std::__shared_ptr_emplace<HALB_Watchdog>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972BF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_System::StartScope>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972AB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_System>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972A60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t ___ZN11HALS_System20ReloadServerSettingsEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 1704);
  v3 = *(v1 + 1712);
  while (v2 != v3)
  {
    v4 = *v2++;
    v5 = *(v4 + 13);
    AudioCaptureMode = HALS_IOContext::GetAudioCaptureMode(v4);
    result = (*(*v5 + 568))(v5, AudioCaptureMode);
  }

  return result;
}

HALS_ObjectMap *HALS_System::CopyPlugInByReferenceID(HALS_System *this, HALS_ObjectMap *a2)
{
  v2 = a2;
  if (!a2)
  {
    return v2;
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x4002000000;
  v25 = __Block_byref_object_copy__7820;
  v26 = __Block_byref_object_dispose__7821;
  memset(v27, 0, sizeof(v27));
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = ___ZNK11HALS_System23CopyPlugInByReferenceIDEPv_block_invoke;
  v21[3] = &unk_1E86756D0;
  v21[4] = &v22;
  v21[5] = this;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v21);
  v4 = v23[5];
  v5 = v23[6];
  if (v4 == v5)
  {
LABEL_26:
    v2 = 0;
    goto LABEL_28;
  }

  while (1)
  {
    v6 = *(*v4 + 5);
    v7 = *(*v4 + 6);
    if (v6 == v7)
    {
      if (v6 != 1953656941 && v6 != 1634757735)
      {
        goto LABEL_25;
      }
    }

    else if (v6 != 1634757735 && v6 != 1953656941 && v7 != 1634757735 && v7 != 1953656941)
    {
      goto LABEL_25;
    }

    v13 = (*(**v4 + 208))(*v4);
    v14 = *v4;
    v15 = *(*v4 + 6);
    if (v15)
    {
      CFRetain(v15);
      v16 = *(v14 + 6);
    }

    else
    {
      v16 = 0;
    }

    v19 = v16;
    v20 = 1;
    if (v13 == v2)
    {
      break;
    }

    CACFString::~CACFString(&v19);
LABEL_25:
    if (++v4 == v5)
    {
      goto LABEL_26;
    }
  }

  v2 = *v4;
  HALS_ObjectMap::RetainObject(*v4, v12);
  CACFString::~CACFString(&v19);
LABEL_28:
  _Block_object_dispose(&v22, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v27, v17);
  return v2;
}

void sub_1DE4A4358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  CACFString::~CACFString(&a9);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v16 + 40), v18);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK11HALS_System23CopyPlugInByReferenceIDEPv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4A43E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A43D8);
}

uint64_t ___ZNK11HALS_System17CopyIODeviceByUIDEPK10__CFStringP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4A445C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A444CLL);
}

uint64_t ___ZNK11HALS_System17CopyDeviceByIndexEjNS_14DeviceListKindEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4A44D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A44C0);
}

HALS_ObjectMap *HALS_System::CopyDeviceByObjectID(HALS_System *this, int a2, HALS_Client *a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = __Block_byref_object_copy__7820;
  v16 = __Block_byref_object_dispose__7821;
  memset(v17, 0, sizeof(v17));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = ___ZNK11HALS_System20CopyDeviceByObjectIDEjP11HALS_Client_block_invoke;
  v11[3] = &unk_1E8675928;
  v11[4] = &v12;
  v11[5] = this;
  v5 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v5, v11);
  v6 = v13[5];
  v7 = v13[6];
  while (v6 != v7)
  {
    v8 = HALS_DeviceManager::CopyDeviceByObjectID(*v6, a2, a3);
    if (v8)
    {
      goto LABEL_6;
    }

    ++v6;
  }

  v8 = 0;
LABEL_6:
  _Block_object_dispose(&v12, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v17, v9);
  return v8;
}

void sub_1DE4A4628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v13 + 40), v15);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK11HALS_System20CopyDeviceByObjectIDEjP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4A46A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A4694);
}

void HALS_System::GetRawDeviceListUsingClockDevice(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x4002000000;
  v24 = __Block_byref_object_copy__7820;
  v25 = __Block_byref_object_dispose__7821;
  memset(v26, 0, sizeof(v26));
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 0x40000000;
  v20[2] = ___ZNK11HALS_System32GetRawDeviceListUsingClockDeviceERNSt3__16vectorIjNS0_9allocatorIjEEEEN10applesauce2CF9StringRefE_block_invoke;
  v20[3] = &unk_1E8675978;
  v20[4] = &v21;
  v20[5] = a1;
  v5 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v5, v20);
  v6 = v22[5];
  v7 = v22[6];
  while (v6 != v7)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    HALS_DeviceManager::CopyRawDeviceList(*v6, &v17);
    v9 = v17;
    v10 = v18;
    while (v9 != v10)
    {
      v11 = *v9;
      if (*v9)
      {
        v12 = *a3;
        if (*a3)
        {
          CFRetain(*a3);
        }

        cf = v12;
        v13 = (*(*v11 + 696))(v11, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v13)
        {
          v15 = *(*v9 + 4);
          std::vector<unsigned int>::push_back[abi:ne200100](a2, &v15);
        }
      }

      ++v9;
    }

    HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v17, v8);
    ++v6;
  }

  _Block_object_dispose(&v21, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(v26, v14);
}

void sub_1DE4A4898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v20 + 40), v22);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK11HALS_System32GetRawDeviceListUsingClockDeviceERNSt3__16vectorIjNS0_9allocatorIjEEEEN10applesauce2CF9StringRefE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  memset(v4, 0, sizeof(v4));
  v5 = 1065353216;
  HALS_System::_CopyDeviceManagerList(*(v1 + 1584), *(v1 + 1592), v2 + 40, v4);
  return std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v4);
}

void sub_1DE4A493C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A492CLL);
}

void HALS_System::ClockDeviceArrived(HALS_System *this, const BOOL *a2, uint64_t a3, const __CFString *a4)
{
  if (AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    v8 = *(this + 218);
    if (a4)
    {
      CFRetain(a4);
      v21 = a4;
      v9 = CFGetTypeID(a4);
      if (v9 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v21 = 0;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    HALS_IOContext_Manager::device_arrived(v8, a2, a3, &v21, &v15, 0);
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x4002000000;
  v18 = __Block_byref_object_copy__46;
  v19 = __Block_byref_object_dispose__47;
  memset(v20, 0, sizeof(v20));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZN11HALS_System18ClockDeviceArrivedEjjPK10__CFString_block_invoke;
  v14[3] = &unk_1E86759A0;
  v14[4] = &v15;
  v14[5] = this;
  v11 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v11, v14);
  v12 = v16[5];
  v13 = v16[6];
  while (v12 != v13)
  {
    (*(**(*v12 + 104) + 104))(*(*v12 + 104), a4);
    v12 += 8;
  }

  _Block_object_dispose(&v15, 8);
  v22 = v20;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_1DE4A4B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  *(v14 - 56) = v13;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v14 - 56));
  _Unwind_Resume(a1);
}

void ___ZN11HALS_System18ClockDeviceArrivedEjjPK10__CFString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void HALS_System::ClockDeviceDied(HALS_System *this, const BOOL *a2, uint64_t a3, const __CFString *a4)
{
  v6 = a2;
  if (AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    v8 = *(this + 218);
    if (a4)
    {
      CFRetain(a4);
      v21 = a4;
      v9 = CFGetTypeID(a4);
      if (v9 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    else
    {
      v21 = 0;
    }

    HALS_IOContext_Manager::device_died(v8, v6, a3, &v21);
    if (v21)
    {
      CFRelease(v21);
    }
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x4002000000;
  v18 = __Block_byref_object_copy__46;
  v19 = __Block_byref_object_dispose__47;
  memset(v20, 0, sizeof(v20));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZN11HALS_System15ClockDeviceDiedEjjPK10__CFString_block_invoke;
  v14[3] = &unk_1E86759C8;
  v14[4] = &v15;
  v14[5] = this;
  v11 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v11, v14);
  v12 = v16[5];
  v13 = v16[6];
  while (v12 != v13)
  {
    (*(**(*v12 + 104) + 112))(*(*v12 + 104), a4);
    v12 += 8;
  }

  _Block_object_dispose(&v15, 8);
  v22 = v20;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_1DE4A4DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  *(v14 - 56) = v13;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v14 - 56));
  _Unwind_Resume(a1);
}

void ___ZN11HALS_System15ClockDeviceDiedEjjPK10__CFString_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void ___ZN11HALS_System23ProcessMuteStateChangedEPK11HALS_DeviceP11HALS_Clientb_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(a1[4] + 8) + 40;
  if (v3 != v2 + 1640)
  {
    std::vector<HALS_Releaser<HALS_Client>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_Client>*,HALS_Releaser<HALS_Client>*>(v3, *(v2 + 1640), *(v2 + 1648), (*(v2 + 1648) - *(v2 + 1640)) >> 3);
  }

  v4 = *(a1[5] + 8) + 40;
  if (v4 != v2 + 1704)
  {
    v5 = *(v2 + 1704);
    v6 = *(v2 + 1712);

    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v4, v5, v6, (v6 - v5) >> 3);
  }
}

void HALS_System::DeviceArrived(os_unfair_lock_s **this, HALS_Device *a2)
{
  i = this;
  v91 = *MEMORY[0x1E69E9840];
  if ((AMCP::Feature_Flags::run_hybrid_hal(this, a2) & 1) != 0 && ((*(*a2 + 840))(a2) & 1) == 0)
  {
    HALS_IOContext_Manager::create_stream_info_for_device(buf, i[218], a2);
    v4 = i[218];
    v5 = *(a2 + 4);
    v6 = *(a2 + 7);
    v7 = (*(*a2 + 216))(a2);
    cf = v7;
    if (v7)
    {
      v8 = CFGetTypeID(v7);
      if (v8 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v9 = (*(*a2 + 232))(a2);
    HALS_IOContext_Manager::device_arrived(v4, v5, v6, &cf, buf, v9 ^ 1u);
  }

  v58 = i;
  if (!HALS_Device::GetNumberStreamsExcludingReferenceStreams(a2, 1))
  {
    goto LABEL_60;
  }

  NumberDevices = HALS_System::GetNumberDevices(i, 0, 0, 0);
  if (!NumberDevices)
  {
    goto LABEL_60;
  }

  v10 = 0;
  v59 = MEMORY[0x1E69E9820];
  do
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4002000000;
    v86 = __Block_byref_object_copy__7820;
    v87 = __Block_byref_object_dispose__7821;
    *&v89 = 0;
    v88 = 0uLL;
    v77 = v59;
    v78 = 0x40000000;
    v79 = ___ZNK11HALS_System17CopyDeviceByIndexEjNS_14DeviceListKindEbP11HALS_Client_block_invoke;
    v80 = &unk_1E86758D8;
    v81 = buf;
    v82 = i;
    v11 = (*&(*i)[16]._os_unfair_lock_opaque)(i);
    HALB_CommandGate::ExecuteCommand(v11, &v77);
    v12 = *(*&buf[8] + 40);
    v13 = *(*&buf[8] + 48);
    if (v12 != v13)
    {
      v14 = 0;
      while (2)
      {
        v69 = 0;
        v70 = 0;
        v71 = 0;
        HALS_DeviceManager::CopyDeviceList(*v12, &v69, 0, 0);
        v16 = v69;
        v17 = v70;
        while (v16 != v17)
        {
          if ((*(**v16 + 232))())
          {
            if (v14 == v10)
            {
              v18 = *v16;
              HALS_ObjectMap::RetainObject(v18, v15);
LABEL_21:
              HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v69, v15);
              goto LABEL_22;
            }

            ++v14;
          }

          ++v16;
        }

        if (v14 >= v10)
        {
          v18 = 0;
          goto LABEL_21;
        }

        HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v69, v15);
        if (++v12 != v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_22:
    _Block_object_dispose(buf, 8);
    HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList(&v88, v19);
    if (!v18 || *(a2 + 4) == *(v18 + 4))
    {
      goto LABEL_59;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x5002000000;
    v86 = __Block_byref_object_copy__314;
    v87 = __Block_byref_object_dispose__315;
    v88 = 0u;
    v89 = 0u;
    v90 = 1065353216;
    v69 = MEMORY[0x1E69E9820];
    v70 = 0x40000000;
    v71 = ___ZNK11HALS_Device16CopyClientDSPMapEb_block_invoke;
    v72 = &unk_1E86793D8;
    v73 = buf;
    v74 = v18;
    LOBYTE(v75) = 1;
    v21 = (*(*v18 + 64))(v18);
    HALB_CommandGate::ExecuteCommand(v21, &v69);
    v22 = *&buf[8];
    *__p = 0u;
    v67 = 0u;
    v68 = *(*&buf[8] + 72);
    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(__p, *(*&buf[8] + 48));
    v23 = *(v22 + 56);
    if (!v23)
    {
      goto LABEL_43;
    }

    do
    {
      v24 = *(v23 + 4);
      if (!__p[1])
      {
        goto LABEL_41;
      }

      v25 = vcnt_s8(__p[1]);
      v25.i16[0] = vaddlv_u8(v25);
      if (v25.u32[0] > 1uLL)
      {
        v26 = *(v23 + 4);
        if (__p[1] <= v24)
        {
          v26 = v24 % LODWORD(__p[1]);
        }
      }

      else
      {
        v26 = (LODWORD(__p[1]) - 1) & v24;
      }

      v27 = *(__p[0] + v26);
      if (!v27 || (v28 = *v27) == 0)
      {
LABEL_41:
        operator new();
      }

      while (1)
      {
        v29 = v28[1];
        if (v29 == v24)
        {
          break;
        }

        if (v25.u32[0] > 1uLL)
        {
          if (v29 >= __p[1])
          {
            v29 %= __p[1];
          }
        }

        else
        {
          v29 &= __p[1] - 1;
        }

        if (v29 != v26)
        {
          goto LABEL_41;
        }

LABEL_40:
        v28 = *v28;
        if (!v28)
        {
          goto LABEL_41;
        }
      }

      if (*(v28 + 4) != v24)
      {
        goto LABEL_40;
      }

      v23 = *v23;
    }

    while (v23);
LABEL_43:
    _Block_object_dispose(buf, 8);
    std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::__deallocate_node(v89);
    v30 = v88;
    *&v88 = 0;
    if (v30)
    {
      operator delete(v30);
    }

    v31 = v67;
    for (i = v58; v31; v31 = *v31)
    {
      v32 = HALS_ObjectMap::CopyObjectByObjectID(*(v31 + 4));
      v33 = v32;
      if (v32)
      {
        v69 = 0;
        v70 = &v69;
        v71 = 0x2000000000;
        LOBYTE(v72) = 1;
        v65[0] = 0;
        v65[1] = v65;
        v65[2] = 0x2000000000;
        v65[3] = v32;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x4002000000;
        v86 = __Block_byref_object_copy__311;
        v87 = __Block_byref_object_dispose__312;
        std::set<DSP_Host_Types::AudioProcessingType>::set[abi:ne200100](&v88, v31 + 3);
        v77 = MEMORY[0x1E69E9820];
        v78 = 0x40000000;
        v79 = ___ZN11HALS_Device26MirrorOtherDeviceClientDSPEbPKS__block_invoke;
        v80 = &unk_1E86793B0;
        v81 = &v69;
        v82 = v65;
        v83 = buf;
        v84 = a2;
        v34 = (*(*a2 + 64))(a2);
        HALB_CommandGate::ExecuteCommand(v34, &v77);
        _Block_object_dispose(buf, 8);
        std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(&v88 + 1));
        _Block_object_dispose(v65, 8);
        _Block_object_dispose(&v69, 8);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "HALS_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 6136;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  Can't add invalid client DSP to device.", buf, 0x12u);
      }

      HALS_ObjectMap::ReleaseObject(v33, v35);
    }

    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(0, 0))
    {
      v36 = *(v18 + 78);
      if (v36)
      {
        *buf = &unk_1F598E7E8;
        *&buf[8] = v36;
        *&buf[16] = a2;
        v86 = buf;
        std::mutex::lock((v36 + 32));
        if (*(v36 + 96) != v36 + 104)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](1uLL);
        }

        std::mutex::unlock((v36 + 32));
        i = v58;
        std::__function::__value_func<void ()>::~__value_func[abi:ne200100](buf);
      }
    }

    std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::__deallocate_node(v67);
    v37 = __p[0];
    __p[0] = 0;
    if (v37)
    {
      operator delete(v37);
    }

LABEL_59:
    HALS_ObjectMap::ReleaseObject(v18, v20);
    ++v10;
  }

  while (v10 != NumberDevices);
LABEL_60:
  if ((*(*a2 + 232))(a2) && HALS_MetaManager::sInstance && *(a2 + 5) != 1633773415)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v67 = 0;
    HALS_DeviceManager::CopyDeviceList(HALS_MetaManager::sInstance, __p, 1, 0);
    v39 = __p[0];
    v62 = __p[1];
    if (__p[0] != __p[1])
    {
      v61 = MEMORY[0x1E69E9820];
      do
      {
        v40 = *v39;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x4802000000;
        v86 = __Block_byref_object_copy__6128;
        v87 = __Block_byref_object_dispose__6129;
        v88 = 0u;
        v89 = 0u;
        v77 = 0;
        v78 = &v77;
        v79 = 0x4002000000;
        v80 = __Block_byref_object_copy__1;
        v81 = __Block_byref_object_dispose__2;
        v83 = 0;
        v84 = 0;
        v82 = 0;
        v69 = v61;
        v70 = 0x40000000;
        v71 = ___ZN15HALS_MetaDevice17RealDeviceArrivedEP11HALS_Device_block_invoke;
        v72 = &unk_1E8674A08;
        v75 = v40;
        v76 = a2;
        v73 = buf;
        v74 = &v77;
        v41 = (*(*v40 + 64))(v40);
        HALB_CommandGate::ExecuteCommand(v41, &v69);
        v42 = *(*&buf[8] + 40);
        v43 = *(*&buf[8] + 48);
        if (v42 != v43)
        {
          HALS_Object::PropertiesChanged(v40, v40[4], 0, -1431655765 * ((v43 - v42) >> 2), v42);
        }

        v44 = *(v78 + 40);
        v45 = *(v78 + 48) - v44;
        if ((v45 & 0x1FFFFFFFE0) != 0)
        {
          v46 = 0;
          v47 = 0;
          do
          {
            if (v47 >= v45 >> 5)
            {
              std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
            }

            v48 = v44 + v46;
            v49 = HALS_ObjectMap::CopyObjectByObjectID(*(v44 + v46 + 24));
            v51 = v49;
            v52 = *(v48 + 8);
            if (*v48 != v52 && v49 != 0)
            {
              HALS_Object::PropertiesChanged(v40, *(v49 + 16), 0, -1431655765 * ((v52 - *v48) >> 2), *v48);
            }

            HALS_ObjectMap::ReleaseObject(v51, v50);
            ++v47;
            v44 = *(v78 + 40);
            v45 = *(v78 + 48) - v44;
            v46 += 32;
          }

          while (v47 < (v45 >> 5));
        }

        _Block_object_dispose(&v77, 8);
        v65[0] = &v82;
        std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](v65);
        _Block_object_dispose(buf, 8);
        if (v88)
        {
          *(&v88 + 1) = v88;
          operator delete(v88);
        }

        ++v39;
      }

      while (v39 != v62);
    }

    HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(__p, v38);
    i = v58;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x4002000000;
  v86 = __Block_byref_object_copy__46;
  v87 = __Block_byref_object_dispose__47;
  v88 = 0uLL;
  *&v89 = 0;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 0x40000000;
  v63[2] = ___ZN11HALS_System13DeviceArrivedEP11HALS_Device_block_invoke;
  v63[3] = &unk_1E8675A18;
  v63[4] = buf;
  v63[5] = i;
  v54 = (*&(*i)[16]._os_unfair_lock_opaque)(i);
  HALB_CommandGate::ExecuteCommand(v54, v63);
  v55 = *(*&buf[8] + 40);
  v56 = *(*&buf[8] + 48);
  while (v55 != v56)
  {
    (*(**(*v55 + 104) + 120))(*(*v55 + 104), a2);
    v55 += 8;
  }

  _Block_object_dispose(buf, 8);
  v77 = &v88;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v77);
}

void sub_1DE4A5D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void **a51)
{
  _Block_object_dispose((v51 - 224), 8);
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&a51);
  _Unwind_Resume(a1);
}

void sub_1DE4A5DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, HALS_ObjectMap *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  std::mutex::unlock((a10 + 32));
  if (v37)
  {
    operator delete(v37);
  }

  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](v38 - 224);
  std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::~__hash_table(&a37);
  HALS_ObjectMap::ReleaseObject(a13, v40);
  _Unwind_Resume(a1);
}

void sub_1DE4A5E3C()
{
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v0[4]);
  operator delete(v0);
  JUMPOUT(0x1DE4A5EB4);
}