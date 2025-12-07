void sub_1DE4A5E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(va, 8);
  HALS_ObjectMap::ReleaseObject(v42, v43);
  JUMPOUT(0x1DE4A5F18);
}

void sub_1DE4A5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  _Block_object_dispose(&a51, 8);
  std::vector<CAPropertyAddressList>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Block_object_dispose((v51 - 224), 8);
  v52 = *(v51 - 184);
  if (v52)
  {
    *(v51 - 176) = v52;
    operator delete(v52);
  }

  JUMPOUT(0x1DE4A5E94);
}

void sub_1DE4A5EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::~__hash_table(va);
  _Block_object_dispose((v36 - 224), 8);
  JUMPOUT(0x1DE4A5F1CLL);
}

void sub_1DE4A5ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<DSP_Host_Types::AudioProcessingType>>>>::~__hash_table(&a37);
  HALS_ObjectMap::ReleaseObject(v37, v38);
  JUMPOUT(0x1DE4A5F60);
}

void sub_1DE4A5EE0()
{
  _Block_object_dispose((v0 - 224), 8);
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(v0 - 176));
  JUMPOUT(0x1DE4A5EF8);
}

void sub_1DE4A5F30(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE4A5F40(uint64_t a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(va, a2);
  _Block_object_dispose((v43 - 224), 8);
  HALS_System::BasicDeviceManagerList::~BasicDeviceManagerList((v42 + 40), v44);
  JUMPOUT(0x1DE4A5F60);
}

void ___ZN11HALS_System13DeviceArrivedEP11HALS_Device_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void HALS_System::DeviceDied(HALS_System *this, HALS_Device *a2)
{
  if (AMCP::Feature_Flags::run_hybrid_hal(this, a2))
  {
    v4 = *(this + 218);
    v5 = *(a2 + 4);
    v6 = *(a2 + 7);
    v7 = (*(*a2 + 216))(a2);
    v43[0] = v7;
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

    HALS_IOContext_Manager::device_died(v4, v5, v6, v43);
    if (v43[0])
    {
      CFRelease(v43[0]);
    }
  }

  if ((*(*a2 + 232))(a2))
  {
    v9 = HALS_MetaManager::sInstance;
    if (HALS_MetaManager::sInstance)
    {
      if (*(a2 + 5) != 1633773415)
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        HALS_DeviceManager::CopyDeviceList(HALS_MetaManager::sInstance, &v31, 1, 0);
        v11 = v31;
        v12 = v32;
        if (v31 != v32)
        {
          v13 = MEMORY[0x1E69E9820];
          do
          {
            v14 = *v11;
            v37 = v13;
            v38 = 0x40000000;
            v39 = ___ZN16HALS_MetaManager10DeviceDiedEP11HALS_Device_block_invoke;
            v40 = &__block_descriptor_tmp_11_4423;
            v41 = v14;
            v42[0] = a2;
            v15 = (*(*v9 + 64))(v9);
            HALB_CommandGate::ExecuteCommand(v15, &v37);
            ++v11;
          }

          while (v11 != v12);
        }

        HALS_DeviceManager::BasicDeviceList::~BasicDeviceList(&v31, v10);
      }
    }
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x4002000000;
  v40 = __Block_byref_object_copy__48;
  v41 = __Block_byref_object_dispose__49;
  memset(v42, 0, sizeof(v42));
  v31 = 0;
  v32 = &v31;
  v33 = 0x4002000000;
  v34 = __Block_byref_object_copy__46;
  v35 = __Block_byref_object_dispose__47;
  memset(v36, 0, sizeof(v36));
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 0x40000000;
  v30[2] = ___ZN11HALS_System10DeviceDiedEP11HALS_Device_block_invoke;
  v30[3] = &unk_1E8675A40;
  v30[5] = &v31;
  v30[6] = this;
  v30[4] = &v37;
  v16 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v16, v30);
  v18 = *(v38 + 40);
  v19 = *(v38 + 48);
  if (v18 != v19)
  {
    v20 = MEMORY[0x1E69E9820];
    do
    {
      v21 = *v18;
      v22 = *(a2 + 4);
      v44[0] = v20;
      v44[1] = 0x40000000;
      v44[2] = ___ZN11HALS_Client28StopListeningToAllPropertiesEj_block_invoke;
      v44[3] = &__block_descriptor_tmp_12_3132;
      v44[4] = v21;
      v45 = v22;
      v23 = (*(*v21 + 8))(v21);
      HALB_CommandGate::ExecuteCommand(v23, v44);
      ++v18;
    }

    while (v18 != v19);
  }

  v24 = v32[5];
  v25 = v32[6];
  while (v24 != v25)
  {
    platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(InternalIOContextID);
    if ((*(*platform_behaviors + 16))(platform_behaviors) != 2)
    {
      v27 = *v24;
LABEL_22:
      v28 = (*(*a2 + 208))(a2);
      InternalIOContextID = (*(**(v27 + 13) + 128))(*(v27 + 13), v28);
      goto LABEL_23;
    }

    InternalIOContextID = HALS_Device::GetInternalIOContextID(a2);
    v27 = *v24;
    if (InternalIOContextID != *(*v24 + 4))
    {
      goto LABEL_22;
    }

LABEL_23:
    ++v24;
  }

  _Block_object_dispose(&v31, 8);
  v44[0] = v36;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](v44);
  _Block_object_dispose(&v37, 8);
  v31 = v42;
  std::vector<HALS_Releaser<HALS_Client>>::__destroy_vector::operator()[abi:ne200100](&v31);
}

void sub_1DE4A6430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  __cxa_free_exception(v24);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v25 - 168));
  _Unwind_Resume(a1);
}

void ___ZN11HALS_System10DeviceDiedEP11HALS_Device_block_invoke(void *a1)
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

uint64_t HALS_System::GetCurrentDeviceArrivalTime(HALS_System *this)
{
  v4[0] = 0;
  v4[1] = 0;
  HALS_System::GetInstance(&v5, 0, v4);
  v1 = *(*(v5 + 1776) + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (HALS_System::sIsInitialized == 1)
  {
    mach_absolute_time();
    v3[0] = 0;
    v3[1] = 0;
    HALS_System::GetInstance(&v5, 0, v3);
    v1 = *(*(v5 + 1776) + 48);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  return v1;
}

void HALS_System::CheckForDefaultDeviceChanges(HALS_PlatformBehaviors *a1, uint64_t a2)
{
  platform_behaviors = HALS_PlatformBehaviors::get_platform_behaviors(a1);
  if ((*(*platform_behaviors + 56))(platform_behaviors) == 1 && HALS_System::sIsInitialized == 1)
  {
    v5 = *(a1 + 202);
    v6 = *(a1 + 203);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v14, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v7 = *(a1 + 24);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1174405120;
    v9[2] = ___ZN11HALS_System28CheckForDefaultDeviceChangesERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke;
    v9[3] = &__block_descriptor_tmp_99;
    v9[4] = v5;
    v10 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    __p = 0;
    v12 = 0;
    v13 = 0;
    v8 = v14;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v14, v15, (v15 - v14) >> 2);
    AMCP::Utility::Dispatch_Queue::after(v7, v9);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v8)
    {
      operator delete(v8);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_1DE4A677C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    if (!v15)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v15)
  {
    goto LABEL_3;
  }

  operator delete(v15);
  if (!v14)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  std::__shared_weak_count::__release_weak(v14);
  goto LABEL_5;
}

void sub_1DE4A67B8()
{
  if (!v0)
  {
    JUMPOUT(0x1DE4A6798);
  }

  JUMPOUT(0x1DE4A6790);
}

void ___ZN11HALS_System28CheckForDefaultDeviceChangesERKNSt3__16vectorIjNS0_9allocatorIjEEEE_block_invoke(void *a1)
{
  buf[41] = *MEMORY[0x1E69E9840];
  v1 = a1[5];
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      v3 = v2;
      v4 = a1[4];
      if (v4)
      {
        v54[0] = 0;
        v54[1] = 0;
        HALS_System::GetInstance(buf, 0, v54);
        v5 = buf[0];
        if (buf[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](buf[1]);
        }

        if (v5)
        {
          v53[0] = 0;
          v53[1] = 0;
          HALS_System::GetInstance(buf, 0, v53);
          v6 = buf[0];
          std::mutex::lock((buf[0] + 48));
          if (buf[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](buf[1]);
          }

          if (a1[6] != a1[7])
          {
            if (*(v4 + 106) == 1)
            {
              if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (LODWORD(buf[0]) = 136315394, *(buf + 4) = "HALS_DefaultDeviceManager.cpp", WORD2(buf[1]) = 1024, *(&buf[1] + 6) = 1233, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u), (*(v4 + 106) & 1) != 0))
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf[0]) = 136315394;
                  *(buf + 4) = "HALS_DefaultDeviceManager.cpp";
                  WORD2(buf[1]) = 1024;
                  *(&buf[1] + 6) = 1234;
                  _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges(newdevices):     --->>>", buf, 0x12u);
                }
              }
            }

            v7 = 0;
            v49 = (v4 + 344);
            v50 = v4 + 8;
            v47 = (v4 + 136);
            v48 = (v4 + 240);
            v51 = v4;
            while (1)
            {
              v8 = dword_1DE7581F0[v7];
              v62 = 0;
              v63 = &unk_1F5991188;
              cf = 0;
              memset(v65, 0, 284);
              *&v65[71] = 0x600000005;
              v65[73] = 0;
              LOWORD(v65[74]) = 0;
              v9 = a1[6];
              v10 = a1[7];
              while (v9 != v10)
              {
                DeviceInfo::DeviceInfo(buf, *v9);
                if (v8 > 1934587251)
                {
                  if (v8 != 1936224868)
                  {
                    v11 = 1934587252;
                    goto LABEL_23;
                  }

LABEL_24:
                  if (!LODWORD(buf[39]))
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_27;
                }

                if (v8 != 1682533920)
                {
                  v11 = 1682929012;
LABEL_23:
                  if (v8 != v11)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_24;
                }

                if (!HIDWORD(buf[38]))
                {
                  goto LABEL_29;
                }

LABEL_27:
                if (LODWORD(buf[37]) == 1668506482)
                {
LABEL_29:
                  v62 = buf[0];
                  v12 = cf;
                  cf = buf[2];
                  buf[2] = v12;
                  memcpy(v65, &buf[3], 0x12AuLL);
                  OS::CF::UntypedObject::~UntypedObject(&buf[1]);
                  break;
                }

                OS::CF::UntypedObject::~UntypedObject(&buf[1]);
                ++v9;
              }

              if (!v62 || (v65[74] & 0x100) != 0)
              {
                goto LABEL_32;
              }

              for (i = 0; i != 72; i += 24)
              {
                v14 = &v58 + i;
                *v14 = &unk_1F5991188;
                *(v14 + 1) = 0;
                *(v14 + 4) = 0;
              }

              v55 = &unk_1F5991188;
              v56 = 0;
              v57 = 0;
              buf[0] = v4;
              LODWORD(buf[1]) = HALB_Mutex::Lock(v4);
              switch(v8)
              {
                case 1682533920:
                  v27 = &v58;
                  v28 = v47;
                  v29 = 3;
                  do
                  {
                    v30 = OS::CF::String::operator=(v27, *(v28 - 1));
                    v31 = *v28;
                    v28 += 3;
                    *(v30 + 16) = v31;
                    v27 = (v30 + 24);
                    --v29;
                  }

                  while (v29);
                  v20 = 192;
                  v21 = 208;
                  goto LABEL_48;
                case 1682929012:
                  v22 = &v58;
                  v23 = v48;
                  v24 = 3;
                  do
                  {
                    v25 = OS::CF::String::operator=(v22, *(v23 - 1));
                    v26 = *v23;
                    v23 += 3;
                    *(v25 + 16) = v26;
                    v22 = (v25 + 24);
                    --v24;
                  }

                  while (v24);
                  v20 = 296;
                  v21 = 312;
LABEL_48:
                  OS::CF::String::operator=(&v55, *&v50[v20]);
                  v57 = *(v4 + v21);
                  break;
                case 1934587252:
                  v15 = &v58;
                  v16 = v49;
                  v17 = 3;
                  do
                  {
                    v18 = OS::CF::String::operator=(v15, *(v16 - 1));
                    v19 = *v16;
                    v16 += 3;
                    *(v18 + 16) = v19;
                    v15 = (v18 + 24);
                    --v17;
                  }

                  while (v17);
                  v20 = 400;
                  v21 = 416;
                  goto LABEL_48;
              }

              HALB_Mutex::Locker::~Locker(buf);
              PreferredDefaultDevice = HALS_DefaultDeviceManager::FindPreferredDefaultDevice(v4, &v55, &v58, v8);
              v33 = PreferredDefaultDevice;
              v34 = v56 != 0;
              if (!v56 && PreferredDefaultDevice)
              {
                DeviceInfo::DeviceInfo(buf, PreferredDefaultDevice);
                if (v8 == 1934587252 || v8 == 1682929012)
                {
                  v35 = SLODWORD(buf[39]) < 4;
                  goto LABEL_56;
                }

                if (v8 == 1682533920)
                {
                  v35 = SHIDWORD(buf[38]) < 3;
LABEL_56:
                  v34 = v35;
                }

                else
                {
                  v34 = 0;
                }

                OS::CF::UntypedObject::~UntypedObject(&buf[1]);
              }

              OS::CF::UntypedObject::~UntypedObject(&v55);
              for (j = 48; j != -24; j -= 24)
              {
                OS::CF::UntypedObject::~UntypedObject((&v58 + j));
              }

              v4 = v51;
              if (v33)
              {
                if (v62 != v33)
                {
                  DefaultDevice = HALS_DefaultDeviceManager::GetDefaultDevice(v51, v8);
                  if (v34 || v65[68] == 1651274862 && DefaultDevice == v62)
                  {
                    if (cf)
                    {
                      if (v8 > 1934587251)
                      {
                        if (v8 == 1934587252)
                        {
                          if ((v65[73] & 0x10000) == 0)
                          {
                            goto LABEL_32;
                          }
                        }

                        else if (v8 != 1936224868 || (v65[73] & 0x1000000) == 0)
                        {
                          goto LABEL_32;
                        }
                      }

                      else if (v8 == 1682533920)
                      {
                        if (LOBYTE(v65[73]) != 1)
                        {
                          goto LABEL_32;
                        }
                      }

                      else if (v8 != 1682929012 || (v65[73] & 0x100) == 0)
                      {
                        goto LABEL_32;
                      }

                      if (v62)
                      {
                        v61[0] = HIBYTE(v8);
                        v61[1] = BYTE2(v8);
                        v61[2] = BYTE1(v8);
                        v61[3] = v8;
                        v61[4] = 0;
                        v38 = &v65[69];
                        if (v8 != 1682533920)
                        {
                          v38 = &v65[70];
                        }

                        v39 = *v38;
                        v60[0] = HIBYTE(v39);
                        v60[1] = BYTE2(v39);
                        v60[2] = BYTE1(v39);
                        v60[3] = v39;
                        v60[4] = 0;
                        if (*(v51 + 106) == 1)
                        {
                          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (LODWORD(buf[0]) = 136315394, *(buf + 4) = "HALS_DefaultDeviceManager.cpp", WORD2(buf[1]) = 1024, *(&buf[1] + 6) = 1482, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u), (*(v51 + 106) & 1) != 0))
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                            {
                              LODWORD(buf[0]) = 136315650;
                              *(buf + 4) = "HALS_DefaultDeviceManager.cpp";
                              WORD2(buf[1]) = 1024;
                              *(&buf[1] + 6) = 1483;
                              WORD1(buf[2]) = 2082;
                              *(&buf[2] + 4) = v61;
                              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetTransientDefaultDeviceQuietly: '%{public}s' --->>>", buf, 0x1Cu);
                            }
                          }
                        }

                        if (*(v51 + 105) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                        {
                          LODWORD(buf[0]) = 136316418;
                          *(buf + 4) = "HALS_DefaultDeviceManager.cpp";
                          WORD2(buf[1]) = 1024;
                          *(&buf[1] + 6) = 1484;
                          WORD1(buf[2]) = 2082;
                          *(&buf[2] + 4) = v61;
                          WORD2(buf[3]) = 1024;
                          *(&buf[3] + 6) = v62;
                          WORD1(buf[4]) = 2082;
                          *(&buf[4] + 4) = v65;
                          WORD2(buf[5]) = 2082;
                          *(&buf[5] + 6) = v60;
                          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetTransientDefaultDeviceQuietly: '%{public}s' | %d: '%{public}s'/'%{public}s'", buf, 0x36u);
                        }

                        v58 = v51;
                        v59 = HALB_Mutex::Lock(v51);
                        if (v8 > 1934587251)
                        {
                          OS::CF::UntypedObject::UntypedObject(&v55, cf);
                          v55 = &unk_1F5991188;
                          v42 = v65[70];
                          OS::CF::UntypedObject::UntypedObject(buf, v56);
                          LODWORD(buf[2]) = v42;
                          if (v8 == 1934587252)
                          {
                            v46 = *(v51 + 51);
                            *(v51 + 51) = buf[1];
                            buf[0] = &unk_1F5991188;
                            buf[1] = v46;
                            *(v51 + 104) = v42;
                          }

                          else
                          {
                            v43 = *(v51 + 55);
                            *(v51 + 55) = buf[1];
                            buf[0] = &unk_1F5991188;
                            buf[1] = v43;
                            *(v51 + 112) = v42;
                          }
                        }

                        else
                        {
                          OS::CF::UntypedObject::UntypedObject(&v55, cf);
                          v55 = &unk_1F5991188;
                          if (v8 == 1682533920)
                          {
                            v44 = v65[69];
                            OS::CF::UntypedObject::UntypedObject(buf, v56);
                            LODWORD(buf[2]) = v44;
                            v45 = *(v51 + 25);
                            *(v51 + 25) = buf[1];
                            buf[0] = &unk_1F5991188;
                            buf[1] = v45;
                            *(v51 + 52) = v44;
                          }

                          else
                          {
                            v40 = v65[70];
                            OS::CF::UntypedObject::UntypedObject(buf, v56);
                            LODWORD(buf[2]) = v40;
                            v41 = *(v51 + 38);
                            *(v51 + 38) = buf[1];
                            buf[0] = &unk_1F5991188;
                            buf[1] = v41;
                            *(v51 + 78) = v40;
                          }
                        }

                        v4 = v51;
                        OS::CF::UntypedObject::~UntypedObject(buf);
                        OS::CF::UntypedObject::~UntypedObject(&v55);
                        if (*(v51 + 106) == 1)
                        {
                          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (LODWORD(buf[0]) = 136315650, *(buf + 4) = "HALS_DefaultDeviceManager.cpp", WORD2(buf[1]) = 1024, *(&buf[1] + 6) = 1506, WORD1(buf[2]) = 2082, *(&buf[2] + 4) = v61, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::SetTransientDefaultDeviceQuietly: '%{public}s' <<<---", buf, 0x1Cu), (*(v51 + 106) & 1) != 0))
                          {
                            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                            {
                              LODWORD(buf[0]) = 136315394;
                              *(buf + 4) = "HALS_DefaultDeviceManager.cpp";
                              WORD2(buf[1]) = 1024;
                              *(&buf[1] + 6) = 1507;
                              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u);
                            }
                          }
                        }

                        HALB_Mutex::Locker::~Locker(&v58);
                      }
                    }
                  }
                }
              }

LABEL_32:
              OS::CF::UntypedObject::~UntypedObject(&v63);
              if (++v7 == 4)
              {
                if (*(v4 + 106))
                {
                  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT) || (LODWORD(buf[0]) = 136315394, *(buf + 4) = "HALS_DefaultDeviceManager.cpp", WORD2(buf[1]) = 1024, *(&buf[1] + 6) = 1277, _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_DefaultDeviceManager::CheckForChanges(newdevices):     <<<---", buf, 0x12u), (*(v4 + 106) & 1) != 0))
                  {
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                    {
                      LODWORD(buf[0]) = 136315394;
                      *(buf + 4) = "HALS_DefaultDeviceManager.cpp";
                      WORD2(buf[1]) = 1024;
                      *(&buf[1] + 6) = 1278;
                      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  ===================================", buf, 0x12u);
                    }
                  }
                }

                break;
              }
            }
          }

          HALS_DefaultDeviceManager::CheckForChanges(v4);
          std::mutex::unlock((v6 + 48));
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void sub_1DE4A7484(_Unwind_Exception *a1, int a2)
{
  v5 = v3;
  if (a2)
  {
    std::mutex::unlock((v2 + 48));
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE4A7448);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrI25HALS_DefaultDeviceManagerEE48c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t *__copy_helper_block_e8_32c50_ZTSNSt3__18weak_ptrI25HALS_DefaultDeviceManagerEE48c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(void *a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 6, *(a2 + 48), *(a2 + 56), (*(a2 + 56) - *(a2 + 48)) >> 2);
}

void sub_1DE4A75EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK11HALS_System20CopyClientByBundleIDERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = *(v2 + 1640);
  while (v4 != *(v2 + 1648))
  {
    v5 = *v4;
    v6 = *(*v4 + 31);
    if (!v6)
    {
      cf = 0;
LABEL_26:
      v5 = 0;
      ++v4;
      goto LABEL_27;
    }

    CFRetain(v6);
    v7 = *(v5 + 31);
    cf = v7;
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (!cf)
    {
      goto LABEL_26;
    }

    applesauce::CF::convert_to<std::string,0>(__p, cf);
    v10 = *(v3 + 23);
    if (v10 >= 0)
    {
      v11 = *(v3 + 23);
    }

    else
    {
      v11 = v3[1];
    }

    v12 = v19;
    v13 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v12 = __p[1];
    }

    if (v11 == v12)
    {
      if (v10 >= 0)
      {
        v14 = v3;
      }

      else
      {
        v14 = *v3;
      }

      if ((v19 & 0x80u) == 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      v16 = memcmp(v14, v15, v11) == 0;
      if ((v13 & 0x80000000) == 0)
      {
LABEL_23:
        if (!v16)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v16 = 0;
      if ((v19 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    operator delete(__p[0]);
    if (!v16)
    {
      goto LABEL_26;
    }

LABEL_24:
    HALS_ObjectMap::RetainObject(v5, v9);
LABEL_27:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      goto LABEL_32;
    }
  }

  v5 = 0;
LABEL_32:
  *(*(a1[4] + 8) + 24) = v5;
}

void sub_1DE4A778C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_System::CopyClientByObjectID(HALS_System *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_System20CopyClientByObjectIDEj_block_invoke;
  v5[3] = &unk_1E8675B40;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void ___ZNK11HALS_System20CopyClientByObjectIDEj_block_invoke(uint64_t a1, HALS_Object *a2)
{
  v3 = *(a1 + 40);
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
      if (*(*v4 + 4) == *(a1 + 48))
      {
        break;
      }

      if (++v4 == v5)
      {
        goto LABEL_4;
      }
    }
  }

  HALS_ObjectMap::RetainObject(v6, a2);
  *(*(*(a1 + 32) + 8) + 24) = v6;
}

void sub_1DE4A7920(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A7908);
}

void HALS_System::ProcessPropertyChanged(HALS_System *this, int a2, int a3, int a4, int a5)
{
  if (a5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___ZN11HALS_System22ProcessPropertyChangedEjjjjb_block_invoke;
    v11[3] = &__block_descriptor_tmp_113_8135;
    v11[4] = this;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    v15 = 0;
    v5 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v5, v11);
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = ___ZN11HALS_System22ProcessPropertyChangedEjjjjb_block_invoke_2;
    v6[3] = &__block_descriptor_tmp_115_8136;
    v6[4] = this;
    v7 = a2;
    v8 = a3;
    v9 = a4;
    v10 = 0;
    AMCP::Utility::Dispatch_Queue::async(this + 880, v6);
  }
}

void ___ZN11HALS_System22ProcessPropertyChangedEjjjjb_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11HALS_System22ProcessPropertyChangedEjjjjb_block_invoke_3;
  v3[3] = &__block_descriptor_tmp_114;
  v3[4] = v1;
  v4 = *(a1 + 40);
  v2 = (*(*v1 + 64))(v1);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

void HALS_System::_ProcessPropertyChanged(HALS_ObjectMap **this, HALS_Object *a2, int a3, int a4, int a5, int a6)
{
  v16 = *MEMORY[0x1E69E9840];
  if (this != a2)
  {
    v10 = this;
    v11 = this;
    while (1)
    {
      v12 = *v11;
      if (*(*v11 + 16) == a3)
      {
        break;
      }

      v11 = (v11 + 8);
      if (v11 == a2)
      {
        return;
      }
    }

    do
    {
      v13 = *v10;
      HALS_ObjectMap::RetainObject(*v10, a2);
      v15[0] = a4;
      v15[1] = a5;
      v15[2] = a6;
      (*(*v13 + 168))(v13, v12, 0, 1, v15);
      HALS_ObjectMap::ReleaseObject(v13, v14);
      ++v10;
    }

    while (v10 != a2);
  }
}

uint64_t HALS_System::CopyTapByUUID(HALS_System *this, const __CFString *a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK11HALS_System13CopyTapByUUIDEPK10__CFString_block_invoke;
  v5[3] = &unk_1E8675CD8;
  v5[4] = &v6;
  v5[5] = this;
  v5[6] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void ___ZNK11HALS_System13CopyTapByUUIDEPK10__CFString_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    CFRetain(*(a1 + 48));
    cf = v2;
    v4 = CFGetTypeID(v2);
    if (v4 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    CFRetain(v2);
    v7 = v2;
    v5 = HALS_System::_CopyTapByUID(v3, &v7, 0);
    CFRelease(v2);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v5 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
}

void sub_1DE4A7DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

void sub_1DE4A7F68(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HALS_ObjectMap *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  HALS_ObjectMap::ReleaseObject(v21, a2);
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 __Block_byref_object_copy__164(void *a1, uint64_t a2)
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

void ___ZNK11HALS_System23UpdateTapsForNewContextEP14HALS_IOContext_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 1664);
  for (i = *(v1 + 1672); v2 != i; ++v2)
  {
    v5 = *v2;
    v16 = v5;
    v7 = *(v5 + 33);
    v6 = *(v5 + 34);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_lock((v7 + 96));
    v8 = *(v7 + 120);
    v14 = 0;
    v15 = 0;
    v13 = 0;
    v9 = 0;
    if (v8)
    {
      v10 = v8;
      do
      {
        ++v9;
        v10 = *v10;
      }

      while (v10);
    }

    std::vector<unsigned int>::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>,std::__hash_const_iterator<std::__hash_node<unsigned int,void *> *>>(&v13, v8, v9);
    os_unfair_lock_unlock((v7 + 96));
    v11 = v13;
    if (v13 != v14)
    {
      std::vector<HALS_Device *>::push_back[abi:ne200100](*(*(a1 + 32) + 8) + 40, &v16);
      HALS_ObjectMap::RetainObject(v5, v12);
    }

    if (v11)
    {
      operator delete(v11);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void sub_1DE4A8104(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

HALS_ObjectMap ***HALS_ArrayReleaser<HALS_Tap>::~HALS_ArrayReleaser(HALS_ObjectMap ***a1, HALS_Object *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      HALS_ObjectMap::ReleaseObject(*v3++, a2);
    }

    while (v3 != v4);
    v3 = *a1;
  }

  if (v3)
  {
    a1[1] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t std::vector<HALS_Releaser<HALS_IOContext>>::__emplace_back_slow_path<HALS_Releaser<HALS_IOContext>>(HALS_ObjectMap ***a1, HALS_ObjectMap **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = v5 + 1;
  if ((v5 + 1) >> 61)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  v18 = a1;
  if (v9)
  {
    std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v9);
  }

  v15 = 0;
  v16 = (8 * v5);
  *v16 = *a2;
  *a2 = 0;
  v17 = (8 * v5 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALS_Releaser<HALS_IOContext>>,HALS_Releaser<HALS_IOContext>*>(a1, v3, v4, 0);
  v10 = *a1;
  *a1 = 0;
  v11 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v10;
  *(&v17 + 1) = v11;
  v15 = v10;
  v16 = v10;
  std::__split_buffer<HALS_Releaser<HALS_IOContext>>::~__split_buffer(&v15, v12);
  return v14;
}

void sub_1DE4A8294(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::__split_buffer<HALS_Releaser<HALS_IOContext>>::~__split_buffer(va, a2);
  _Unwind_Resume(a1);
}

void sub_1DE4A82CC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_System::SetIOContextIsRunning(HALS_System *this, int a2, char a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (HALS_System::sIsInitialized)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___ZN11HALS_System21SetIOContextIsRunningEjb_block_invoke;
    v7[3] = &__block_descriptor_tmp_152;
    v7[4] = this;
    v8 = a2;
    v9 = a3;
    AMCP::Utility::Dispatch_Queue::async(this + 208, v7);
  }

  else
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
      *buf = 136315394;
      v11 = "HALS_System.cpp";
      v12 = 1024;
      v13 = 3266;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Cannot send IO Context Is Running on an uninitialized system.", buf, 0x12u);
    }
  }
}

void ___ZN11HALS_System21SetIOContextIsRunningEjb_block_invoke(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v6 = HALS_ObjectMap::CopyObjectByObjectID(v4);
  v8 = v6;
  if (v6)
  {
    v10 = HALS_ObjectMap::CopyObjectByObjectID(**(v6 + 72));
    if (v10)
    {
      v11 = HALS_ObjectMap::CopyObjectByObjectID(v4);
      v13 = v11;
      if (v11 && (*(*v11 + 232))(v11))
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2000000000;
        v33 = 0;
        v23 = MEMORY[0x1E69E9820];
        v24 = 0x40000000;
        v25 = ___ZN11HALS_Client46UpdateStartCountAndMaybeNotifyProcessIsRunningEjb_block_invoke;
        v26 = &unk_1E8673998;
        v27 = &v30;
        v28 = v10;
        v29 = v5;
        v14 = (*(*v10 + 64))(v10);
        HALB_CommandGate::ExecuteCommand(v14, &v23);
        if (*(v31 + 24) == 1)
        {
          v20[0] = 0;
          v20[1] = 0;
          HALS_System::GetInstance(&v21, 0, v20);
          if (v21)
          {
            HALS_System::ProcessPropertyChanged(v21, v10[4], 1885958719, 1735159650, 1);
          }

          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }
        }

        _Block_object_dispose(&v30, 8);
      }

      HALS_ObjectMap::ReleaseObject(v13, v12);
    }

    HALS_ObjectMap::ReleaseObject(v10, v9);
  }

  HALS_ObjectMap::ReleaseObject(v8, v7);
  ServerBooleanSetting = HALS_SettingsManager::ReadServerBooleanSetting(v3[222], @"AllowStackShotsDuringIO", 0);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  LOBYTE(v26) = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2000000000;
  v33 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v17[2] = ___ZN11HALS_System21SetIOContextIsRunningEjb_block_invoke_2;
  v17[3] = &unk_1E8675DA8;
  v17[5] = &v30;
  v17[6] = v3;
  v18 = *(a1 + 44);
  v19 = ServerBooleanSetting;
  v17[4] = &v23;
  v16 = (*(*v3 + 8))(v3);
  HALB_CommandGate::ExecuteCommand(v16, v17);
  if (*(v24 + 24) == 1)
  {
    TellKernelAudioIOIsRunning(*(v31 + 24));
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v23, 8);
}

void sub_1DE4A86F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  _Block_object_dispose((v24 - 112), 8);
  HALS_ObjectMap::ReleaseObject(v23, v26);
  HALS_ObjectMap::ReleaseObject(v22, v27);
  HALS_ObjectMap::ReleaseObject(v21, v28);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE4A86D8);
}

uint64_t ___ZN11HALS_System21SetIOContextIsRunningEjb_block_invoke_2(uint64_t result)
{
  v1 = *(result + 48);
  v2 = *(v1 + 1728);
  if (*(result + 56) == 1)
  {
    *(v1 + 1728) = v2 + 1;
    if (!v2 && (*(result + 57) & 1) == 0)
    {
      *(*(*(result + 32) + 8) + 24) = 1;
      *(*(*(result + 40) + 8) + 24) = 1;
LABEL_12:
      *(v1 + 1736) = *(*(*(result + 40) + 8) + 24);
      return result;
    }
  }

  else
  {
    v3 = v2 - 1;
    *(v1 + 1728) = v3;
    if (!v3 && (*(result + 57) & 1) == 0)
    {
      *(*(*(result + 32) + 8) + 24) = 1;
      *(*(*(result + 40) + 8) + 24) = 0;
      goto LABEL_12;
    }
  }

  if (*(v1 + 1736) == 1 && *(result + 57) == 1)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *(*(*(result + 40) + 8) + 24) = 0;
    *(v1 + 1736) = 0;
  }

  return result;
}

void ___ZN11HALS_System37IsUnderlyingIOContextRunningForDeviceEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void ___ZNK11HALS_System46CountRunningIOContextsForDeviceExcludingClientEjP11HALS_Client_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void ___ZNK11HALS_System32GetSmallestActiveBufferFrameSizeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void ___ZNK11HALS_System23GetActiveIOContextsInfoEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

void std::vector<IOContextInfo>::__destroy_vector::operator()[abi:ne200100](void ****a1)
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
        v6 = *(v4 - 17);
        v4 -= 5;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void HALS_System::RemoveTapFromAllContexts(uint64_t a1, uint64_t *a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x4002000000;
  v13 = __Block_byref_object_copy__46;
  v14 = __Block_byref_object_dispose__47;
  memset(v15, 0, sizeof(v15));
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___ZNK11HALS_System24RemoveTapFromAllContextsENSt3__110shared_ptrI13HALS_MultiTapEE_block_invoke;
  v9[3] = &unk_1E8675EB8;
  v9[4] = &v10;
  v9[5] = a1;
  v3 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v3, v9);
  v4 = v11[5];
  for (i = v11[6]; v4 != i; ++v4)
  {
    v6 = *v4;
    v7 = *a2;
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOContext::RemoveTap(*(v6 + 104), v7, v8);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  _Block_object_dispose(&v10, 8);
  v16 = v15;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100](&v16);
}

void sub_1DE4A8B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  *(v16 - 56) = v15;
  std::vector<HALS_Releaser<HALS_IOContext>>::__destroy_vector::operator()[abi:ne200100]((v16 - 56));
  _Unwind_Resume(a1);
}

void ___ZNK11HALS_System24RemoveTapFromAllContextsENSt3__110shared_ptrI13HALS_MultiTapEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8) + 40;
  if (v2 != v1 + 1704)
  {
    std::vector<HALS_Releaser<HALS_IOContext>>::__assign_with_size[abi:ne200100]<HALS_Releaser<HALS_IOContext>*,HALS_Releaser<HALS_IOContext>*>(v2, *(v1 + 1704), *(v1 + 1712), (*(v1 + 1712) - *(v1 + 1704)) >> 3);
  }
}

uint64_t ___ZN11HALS_System31ServerHighPriorityAsyncDispatchENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

void sub_1DE4A8BBC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t AMCP::DAL::Container::get_data_handler(AMCP::DAL *a1, uint64_t a2, double a3)
{
  AMCP::DAL::demand_map(a1);
  if (!*(&AMCP::DAL::demand_map(void)::s_map + 1))
  {
    goto LABEL_17;
  }

  v5 = *(a2 + 8);
  v6 = vcnt_s8(*(&AMCP::DAL::demand_map(void)::s_map + 8));
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *(a2 + 8);
    if (*(&AMCP::DAL::demand_map(void)::s_map + 1) <= v5)
    {
      v7 = v5 % DWORD2(AMCP::DAL::demand_map(void)::s_map);
    }
  }

  else
  {
    v7 = (DWORD2(AMCP::DAL::demand_map(void)::s_map) - 1) & v5;
  }

  v8 = *(AMCP::DAL::demand_map(void)::s_map + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_17:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v5)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *(&AMCP::DAL::demand_map(void)::s_map + 1))
      {
        v10 %= *(&AMCP::DAL::demand_map(void)::s_map + 1);
      }
    }

    else
    {
      v10 &= *(&AMCP::DAL::demand_map(void)::s_map + 1) - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_17;
    }

LABEL_16:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  if (*(v9 + 4) != v5)
  {
    goto LABEL_16;
  }

  v13 = a3;
  v11 = v9[6];
  if (!v11)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v11 + 48))(v11, a2, &v13);
}

void sub_1DE4A8DA0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void AMCP::DAL::demand_map(AMCP::DAL *this)
{
  {
    if (this)
    {
      AMCP::DAL::demand_map(void)::s_map = 0u;
      *&qword_1EE013208 = 0u;
      dword_1EE013218 = 1065353216;
    }
  }

  if ((AMCP::DAL::demand_map(void)::hasBeenInitialized & 1) == 0)
  {
    AMCP::DAL::demand_map(void)::hasBeenInitialized = 1;

    AMCP::DAL::DALSupport::initialize_data_handlers(this);
  }
}

void std::__shared_ptr_emplace<AMCP::DAL::Default_Data_Handler>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<AMCP::DAL::Default_Data_Handler>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5972E50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::DAL::DALSupport::initialize_data_handlers(AMCP::DAL::DALSupport *this)
{
  v5 = *MEMORY[0x1E69E9840];
  MEMORY[0x1E12C0B90](this);
  v2 = &unk_1F5972EA0;
  v4 = &v2;
  AMCP::DAL::Container::set_data_handler_format(0x6C70636D, &v2);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v2);
  v2 = &unk_1F5972F80;
  v4 = &v2;
  AMCP::DAL::Container::set_data_handler_format(0x73707673, &v2);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v2);
  v2 = &unk_1F5973050;
  v4 = &v2;
  AMCP::DAL::Container::set_data_handler_format(0x616C6163, &v2);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v2);
  v2 = &unk_1F5973120;
  v4 = &v2;
  AMCP::DAL::Container::set_data_handler_format(0x63616333, &v2);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v2);
  v2 = &unk_1F59731A0;
  v4 = &v2;
  AMCP::DAL::Container::set_data_handler_format(0x61632D33, &v2);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v2);
  v2 = &unk_1F5973220;
  v3 = AMCP::DAL::PCM_File_Factory;
  v4 = &v2;
  AMCP::DAL::File::set_file_handler_format(0x6C70636D, &v2);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](&v2);
  v2 = &unk_1F5973220;
  v3 = AMCP::DAL::Packetized_File_Factory;
  v4 = &v2;
  AMCP::DAL::File::set_file_handler_format(0x616C6163, &v2);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](&v2);
  v2 = &unk_1F5973220;
  v3 = AMCP::DAL::Packetized_File_Factory;
  v4 = &v2;
  AMCP::DAL::File::set_file_handler_format(0x63616333, &v2);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](&v2);
  v2 = &unk_1F5973220;
  v3 = AMCP::DAL::Packetized_File_Factory;
  v4 = &v2;
  AMCP::DAL::File::set_file_handler_format(0x61632D33, &v2);
  return std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](&v2);
}

void sub_1DE4A9180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::Container::set_data_handler_format(AMCP::DAL *a1, uint64_t a2)
{
  v3 = a1;
  v16[3] = *MEMORY[0x1E69E9840];
  AMCP::DAL::demand_map(a1);
  if (!*(&AMCP::DAL::demand_map(void)::s_map + 1))
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(*(&AMCP::DAL::demand_map(void)::s_map + 8));
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v3;
    if (*(&AMCP::DAL::demand_map(void)::s_map + 1) <= v3)
    {
      v5 = v3 % DWORD2(AMCP::DAL::demand_map(void)::s_map);
    }
  }

  else
  {
    v5 = (DWORD2(AMCP::DAL::demand_map(void)::s_map) - 1) & v3;
  }

  v6 = *(AMCP::DAL::demand_map(void)::s_map + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v3)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *(&AMCP::DAL::demand_map(void)::s_map + 1))
      {
        v8 %= *(&AMCP::DAL::demand_map(void)::s_map + 1);
      }
    }

    else
    {
      v8 &= *(&AMCP::DAL::demand_map(void)::s_map + 1) - 1;
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

  if (*(v7 + 4) != v3)
  {
    goto LABEL_17;
  }

  v9 = *(a2 + 24);
  if (v9)
  {
    if (v9 == a2)
    {
      v15 = &v14;
      (*(*v9 + 24))(v9, &v14);
    }

    else
    {
      v15 = (*(*v9 + 16))(v9);
    }
  }

  else
  {
    v15 = 0;
  }

  v10 = v7 + 3;
  if (v7 + 3 != &v14)
  {
    v11 = v15;
    v12 = v7[6];
    if (v15 == &v14)
    {
      if (v12 == v10)
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = 0;
        (*(*v7[6] + 24))(v7[6], &v14);
        (*(*v7[6] + 32))(v7[6]);
        v7[6] = 0;
        v15 = &v14;
        (*(v16[0] + 24))(v16, v7 + 3);
        (*(v16[0] + 32))(v16);
      }

      else
      {
        (*(*v15 + 24))();
        (*(*v15 + 32))(v15);
        v15 = v7[6];
      }

      v7[6] = v10;
    }

    else if (v12 == v10)
    {
      (*(*v12 + 24))(v7[6], &v14);
      (*(*v7[6] + 32))(v7[6]);
      v7[6] = v15;
      v15 = &v14;
    }

    else
    {
      v15 = v7[6];
      v7[6] = v11;
    }
  }

  return std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](&v14);
}

void sub_1DE4A98C4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> (*)(AMCP::DAL::DAL_Settings const&),std::allocator<std::shared_ptr<AMCP::DAL::DAL_File_Handler> (*)(AMCP::DAL::DAL_Settings const&)>,std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "PFNSt3__110shared_ptrIN4AMCP3DAL16DAL_File_HandlerEEERKNS2_12DAL_SettingsEE"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<std::shared_ptr<AMCP::DAL::DAL_File_Handler> (*)(AMCP::DAL::DAL_Settings const&),std::allocator<std::shared_ptr<AMCP::DAL::DAL_File_Handler> (*)(AMCP::DAL::DAL_Settings const&)>,std::shared_ptr<AMCP::DAL::DAL_File_Handler> ()(AMCP::DAL::DAL_Settings const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5973220;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_4,std::allocator<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_4>,std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL10DALSupport24initialize_data_handlersEvE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1DE4A9C24(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Packetized_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::Packetized_Data_Handler>,std::allocator<AMCP::DAL::Packetized_Data_Handler>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_Data_HandlerEE27__shared_ptr_default_deleteIS3_NS2_23Packetized_Data_HandlerEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::Packetized_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::Packetized_Data_Handler>,std::allocator<AMCP::DAL::Packetized_Data_Handler>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::Packetized_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::Packetized_Data_Handler>,std::allocator<AMCP::DAL::Packetized_Data_Handler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_3,std::allocator<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_3>,std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL10DALSupport24initialize_data_handlersEvE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_2,std::allocator<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_2>,std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL10DALSupport24initialize_data_handlersEvE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_1,std::allocator<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_1>,std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL10DALSupport24initialize_data_handlersEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1DE4AA19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<AMCP::DAL::AUParameter_Data_Handler>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AMCP::DAL::AUParameter_Data_Handler>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::~__hash_table((v2 + 56));
    MEMORY[0x1E12C1730](v2, 0x10A1C40768A9574);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::~__hash_table(uint64_t *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::__deallocate_node(a1, a1[3]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *> *> *>>::deallocate[abi:ne200100](a1[2], v2, a1[1]);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::__deallocate_node(uint64_t result, void *a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      v4 = *v2;
      std::vector<AMCP::DAL::Audio_Samples<float>,caulk::rt_allocator<AMCP::DAL::Audio_Samples<float>>>::__destroy_vector::operator()[abi:ne200100]((v2 + 4));
      result = std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,void *>>>::deallocate[abi:ne200100](*(v3 + 32), v2);
      v2 = v4;
    }

    while (v4);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::AUParameter_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::AUParameter_Data_Handler>,std::allocator<AMCP::DAL::AUParameter_Data_Handler>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_Data_HandlerEE27__shared_ptr_default_deleteIS3_NS2_24AUParameter_Data_HandlerEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::AUParameter_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::AUParameter_Data_Handler>,std::allocator<AMCP::DAL::AUParameter_Data_Handler>>::__on_zero_shared(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    std::__hash_table<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::__unordered_map_hasher<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::hash<AMCP::DAL::AUParameterKey>,std::equal_to<void>,true>,std::__unordered_map_equal<AMCP::DAL::AUParameterKey,std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>,std::equal_to<void>,std::hash<AMCP::DAL::AUParameterKey>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<AMCP::DAL::AUParameterKey,caulk::rt::vector<AMCP::DAL::AU_Stream_Parameter>>>>::~__hash_table((v1 + 56));

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::AUParameter_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::AUParameter_Data_Handler>,std::allocator<AMCP::DAL::AUParameter_Data_Handler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::function<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::function<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::~__value_func[abi:ne200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_0,std::allocator<AMCP::DAL::DALSupport::initialize_data_handlers(void)::$_0>,std::shared_ptr<AMCP::DAL::DAL_Data_Handler> ()(CA::StreamDescription const&,AMCP::DAL::Sample_Time)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3DAL10DALSupport24initialize_data_handlersEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::PCM_Data_Handler>,std::allocator<AMCP::DAL::PCM_Data_Handler>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrIN4AMCP3DAL16DAL_Data_HandlerEE27__shared_ptr_default_deleteIS3_NS2_16PCM_Data_HandlerEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AMCP::DAL::PCM_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::PCM_Data_Handler>,std::allocator<AMCP::DAL::PCM_Data_Handler>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AMCP::DAL::PCM_Data_Handler *,std::shared_ptr<AMCP::DAL::DAL_Data_Handler>::__shared_ptr_default_delete<AMCP::DAL::DAL_Data_Handler,AMCP::DAL::PCM_Data_Handler>,std::allocator<AMCP::DAL::PCM_Data_Handler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *AMCP::DAL::Container::Container(void *a1, uint64_t a2, double a3)
{
  *a1 = 0;
  a1[1] = 0;
  AMCP::DAL::Container::get_data_handler(&v7, a2, a3);
  v4 = v7;
  v7 = 0uLL;
  v5 = a1[1];
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }
  }

  return a1;
}

void sub_1DE4AA890(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Container::erase_range(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = 0;
    (*(*a1 + 96))(a1, &v1);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

void sub_1DE4AA908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Container::copy_from_this_container(uint64_t *a1, uint64_t a2, uint64_t *a3, double *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (*a1)
  {
    v8 = *a3;
    is_compatible = AMCP::DAL::Container::container_is_compatible(*a1, *a3);
    if (!is_compatible)
    {
      v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v12 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(is_compatible);
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
        *buf = 136315650;
        v32 = "Container.cpp";
        v33 = 1024;
        v34 = 142;
        v35 = 2080;
        v36 = "not (container_is_compatible(dest_container))";
        _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Container::copy_from_this_container: Containers Are Not Compatible", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v22, "Container::copy_from_this_container: Containers Are Not Compatible", v16);
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
      v37 = "void AMCP::DAL::Container::copy_from_this_container(const Sample_Time_Range &, const Container &, const Sample_Time_Range &, DAL_Operation_Context_Ref)";
      v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.cpp";
      v39 = 142;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
    }

    v10 = a3[1];
    v19 = v8;
    v20 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *a4;
    v17 = 0;
    v18 = 0;
    (*(*v4 + 80))(v4, a2, &v19, &v17, v11);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }
}

void sub_1DE4AAC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL AMCP::DAL::Container::container_is_compatible(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    memset(v7, 0, 40);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(&v6, 0, sizeof(v6));
    mSampleRate = 0.0;
    return *v7 == mSampleRate && DWORD2(v7[0]) == v6.mFormatID && *&v7[1] == *&v6.mBytesPerPacket && *(&v7[1] + 12) == *&v6.mChannelsPerFrame && CA::Implementation::EquivalentFormatFlags(v7, &v6, 0);
  }

  v2 = *(a1 + 24);
  v7[0] = *(a1 + 8);
  v7[1] = v2;
  *&v7[2] = *(a1 + 40);
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(a2 + 24);
  *&v6.mSampleRate = *(a2 + 8);
  *&v6.mBytesPerPacket = v3;
  *&v6.mBitsPerChannel = *(a2 + 40);
  mSampleRate = v6.mSampleRate;
  return *v7 == mSampleRate && DWORD2(v7[0]) == v6.mFormatID && *&v7[1] == *&v6.mBytesPerPacket && *(&v7[1] + 12) == *&v6.mChannelsPerFrame && CA::Implementation::EquivalentFormatFlags(v7, &v6, 0);
}

double AMCP::Graph::Converter_Cross_Timebase_Processor::calculate_samples_through_processor(AMCP::Graph::Converter **a1, int a2, double *a3, double a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = floor(a4);
  if (a4 != v4)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *buf = 136315650;
      *&buf[4] = "Converter.cpp";
      v26 = 1024;
      v27 = 557;
      v28 = 2080;
      v29 = "not (samples.get_double() == samples.floor().get_double())";
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v16, "We should have no fractional samples", v14);
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
    v30 = "virtual AMCP::DAL::Sample_Time AMCP::Graph::Converter_Cross_Timebase_Processor::calculate_samples_through_processor(Buffer_Alignment, AMCP::DAL::Sample_Time, AMCP::DAL::Sample_Time &) const";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    v32 = 557;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v6 = v4;
  if (a2)
  {
    required_input_samples_for_output_samples = AMCP::Graph::Converter::get_required_input_samples_for_output_samples(a1[1], v6);
  }

  else
  {
    *buf = v4;
    required_input_samples_for_output_samples = AMCP::Graph::Converter::get_expected_output_samples_for_input_samples(a1[1], v6, buf);
    *a3 = *buf;
  }

  return required_input_samples_for_output_samples;
}

void sub_1DE4AB08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
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

uint64_t AMCP::Graph::Converter::get_expected_output_samples_for_input_samples(AMCP::Graph::Converter *this, uint64_t a2, unint64_t *a3)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "scale");
  v6 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(this + 6, &__p);
  if (v6)
  {
    v7 = AMCP::Thing::convert_to<BOOL>((v6 + 5));
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p);
    if (!v7)
    {
      return a2;
    }
  }

  else if (!v7)
  {
    return a2;
  }

  v37[0] = 0;
  v37[1] = 0;
  AMCP::DAL::DAL_Settings::DAL_Settings(&__p, v37);
  std::string::basic_string[abi:ne200100]<0>(v37, "expected output samples for input samples");
  AMCP::DAL::DAL_Settings::add<unsigned long long>(&__p, v37, a2);
  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v9 = *(this + 14);
  v8 = *(this + 15);
  v43 = *(this + 13);
  v44 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = (*(*v8 + 136))(v8, &v43, &__p);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v36[0] = 0;
  v36[1] = 0;
  AMCP::DAL::DAL_Settings::DAL_Settings(v37, v36);
  if (v49 == v40 || (*(*v49 + 32))(v49))
  {
    if (v50)
    {
      std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__deallocate_node(&__p, v48);
      v48 = 0;
      v11 = v46;
      if (v46)
      {
        v12 = 0;
        do
        {
          *(__p + v12++) = 0;
        }

        while (v11 != v12);
      }

      v50 = 0;
    }

    v13 = v37[0];
    v37[0] = 0;
    v14 = __p;
    __p = v13;
    if (v14)
    {
      std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>>::deallocate[abi:ne200100](v47, v14, v46);
    }

    v15 = v37[1];
    v37[1] = 0;
    v50 = v41;
    v51 = v42;
    v46 = v15;
    v48 = v39;
    if (v41)
    {
      v16 = v39[1];
      if ((v15 & (v15 - 1)) != 0)
      {
        if (v16 >= v15)
        {
          v16 %= v15;
        }
      }

      else
      {
        v16 &= v15 - 1;
      }

      *(__p + v16) = &v48;
      v39 = 0;
      v41 = 0;
    }
  }

  else
  {
    v51 = v42;
    v17 = v46;
    if (v46)
    {
      v18 = 0;
      do
      {
        *(__p + v18++) = 0;
      }

      while (v17 != v18);
      v19 = v48;
      v50 = 0;
      v48 = 0;
      for (i = v39; ; i = v22)
      {
        v21 = v19;
        if (!v19 || !v41)
        {
          break;
        }

        v22 = *i;
        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::remove(&v54, v37, i);
        v24 = v54;
        if (*(v21 + 39) < 0)
        {
          operator delete(v21[2]);
        }

        v25 = *(v24 + 16);
        v21[4] = *(v24 + 32);
        *(v21 + 1) = v25;
        *(v24 + 39) = 0;
        *(v24 + 16) = 0;
        AMCP::swap((v24 + 40), (v21 + 5), v23);
        v26 = v54;
        v54 = 0;
        if (v26)
        {
          std::__hash_node_destructor<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *>>>::operator()[abi:ne200100](v55, v26);
        }

        v19 = *v21;
        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__node_insert_multi(&__p, v21);
      }

      std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__deallocate_node(&__p, v19);
    }

    if (v41)
    {
      v27 = v39;
      do
      {
        v28 = *v27;
        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::remove(&v52, v37, v27);
        v29 = v52;
        v30 = (*(*v49 + 16))(v49, 80, 8);
        v55[0] = &v49;
        v55[1] = 1;
        *v30 = 0;
        v30[1] = 0;
        v56 = v29 + 40;
        std::pair<std::string const,AMCP::Thing>::pair[abi:ne200100]<std::string&&,AMCP::Thing&&,0ul,0ul>((v30 + 2), (v29 + 16), &v56);
        v30[1] = std::__string_hash<char>::operator()[abi:ne200100]((v30 + 2));
        v52 = 0;
        if (v29)
        {
          std::__hash_node_destructor<std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *>>>::operator()[abi:ne200100](&v53, v29);
        }

        std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__node_insert_multi(&__p, v30);
        v27 = v28;
      }

      while (v41);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(v37);
  std::string::basic_string[abi:ne200100]<0>(v37, "actual input samples consumed");
  AMCP::DAL::DAL_Settings::add<unsigned long long>(&__p, v37, a2);
  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  v32 = *(this + 14);
  v31 = *(this + 15);
  v34 = *(this + 13);
  v35 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a3 = (*(*v31 + 136))(v31, &v34, &__p);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&__p);
  return v10;
}

void sub_1DE4AB584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&a25);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Converter::get_required_input_samples_for_output_samples(AMCP::Graph::Converter *this, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v4 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(this + 6, __p);
  if (v4)
  {
    v5 = AMCP::Thing::convert_to<BOOL>((v4 + 5));
  }

  else
  {
    v5 = 0;
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return a2;
    }
  }

  else if (!v5)
  {
    return a2;
  }

  v11[0] = 0;
  v11[1] = 0;
  AMCP::DAL::DAL_Settings::DAL_Settings(__p, v11);
  std::string::basic_string[abi:ne200100]<0>(v11, "required input samples for output samples");
  AMCP::DAL::DAL_Settings::add<unsigned long long>(__p, v11, a2);
  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  v7 = *(this + 14);
  v6 = *(this + 15);
  v9 = *(this + 13);
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  a2 = (*(*v6 + 136))(v6, &v9, __p);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(__p);
  return a2;
}

void sub_1DE4AB784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&a17);
  _Unwind_Resume(a1);
}

void sub_1DE4AB7C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE4AB7BCLL);
}

void AMCP::DAL::DAL_Settings::add<unsigned long long>(float *a1, __int128 *a2, uint64_t a3)
{
  v4[0] = a3;
  memset(&v4[1], 0, 24);
  v5 = AMCP::Implementation::In_Place_Storage<unsigned long long>::dispatch;
  std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&__p, a2, v4);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(a1, &__p, &__p);
  if (v8)
  {
    v8(0, &v7, 0, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    v5(0, v4, 0, 0);
  }
}

void sub_1DE4AB88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::pair<std::string,AMCP::Thing>::~pair(va1);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(std::string *this, __int128 *a2, uint64_t a3)
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

  *&this[1].__r_.__value_.__l.__data_ = 0u;
  this[2].__r_.__value_.__l.__size_ = 0;
  *&this[1].__r_.__value_.__r.__words[2] = 0u;
  v6 = *(a3 + 32);
  if (v6)
  {
    v6(2, a3);
  }

  return this;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(float *a1, void *a2, __int128 *a3)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a2);
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
      v13 = *v12;
      if (*v12)
      {
        do
        {
          v14 = v13[1];
          if (v14 == v8)
          {
            result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v13 + 2, a2);
            if (result)
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

          v13 = *v13;
        }

        while (v13);
      }
    }
  }

  v16 = (*(**(a1 + 4) + 16))(*(a1 + 4), 80, 8);
  *v16 = 0;
  v16[1] = v8;
  v26 = a3 + 24;
  result = std::pair<std::string const,AMCP::Thing>::pair[abi:ne200100]<std::string&&,AMCP::Thing&&,0ul,0ul>((v16 + 2), a3, &v26);
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

    result = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__rehash<true>(a1, v22);
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

  v23 = *a1;
  v24 = *(*a1 + 8 * v3);
  if (v24)
  {
    *v16 = *v24;
LABEL_38:
    *v24 = v16;
    goto LABEL_39;
  }

  *v16 = *(a1 + 3);
  *(a1 + 3) = v16;
  *(v23 + 8 * v3) = a1 + 6;
  if (*v16)
  {
    v25 = *(*v16 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v25 >= v9)
      {
        v25 %= v9;
      }
    }

    else
    {
      v25 &= v9 - 1;
    }

    v24 = (*a1 + 8 * v25);
    goto LABEL_38;
  }

LABEL_39:
  ++*(a1 + 5);
  return result;
}

uint64_t std::pair<std::string const,AMCP::Thing>::pair[abi:ne200100]<std::string&&,AMCP::Thing&&,0ul,0ul>(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v5 = *a3;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  v6 = *(v5 + 32);
  if (v6)
  {
    v6(2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::remove(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 3)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[5];
  *result = a3;
  *(result + 8) = a2 + 4;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

size_t std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__node_insert_multi(uint64_t a1, void *a2)
{
  v2 = a2;
  result = std::__string_hash<char>::operator()[abi:ne200100]((a2 + 2));
  v5 = result;
  v2[1] = result;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 40) + 1);
  v8 = *(a1 + 48);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    if (v12 == 1)
    {
      v12 = 2;
    }

    else if ((v12 & (v12 - 1)) != 0)
    {
      result = std::__next_prime(v12);
      v12 = result;
      v6 = *(a1 + 8);
    }

    v40 = v5;
    v41 = v2;
    if (v12 > v6)
    {
LABEL_13:
      result = std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>::allocate[abi:ne200100](a1 + 16, v12);
      v13 = *a1;
      *a1 = result;
      if (v13)
      {
        result = std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v13, *(a1 + 8));
      }

      v14 = 0;
      *(a1 + 8) = v12;
      do
      {
        *(*a1 + 8 * v14++) = 0;
      }

      while (v12 != v14);
      v15 = *(a1 + 24);
      if (v15)
      {
        v16 = v15[1];
        v17 = vcnt_s8(v12);
        v17.i16[0] = vaddlv_u8(v17);
        v18 = v17.u32[0];
        if (v17.u32[0] > 1uLL)
        {
          if (v16 >= v12)
          {
            v16 %= v12;
          }
        }

        else
        {
          v16 &= v12 - 1;
        }

        *(*a1 + 8 * v16) = a1 + 24;
        v21 = *v15;
        if (*v15)
        {
          v39 = v17.u32[0];
          do
          {
            v22 = v21[1];
            if (v18 > 1)
            {
              if (v22 >= v12)
              {
                v22 %= v12;
              }
            }

            else
            {
              v22 &= v12 - 1;
            }

            if (v22 == v16)
            {
              v15 = v21;
            }

            else
            {
              v23 = *a1;
              if (*(*a1 + 8 * v22))
              {
                v24 = *v21;
                if (*v21)
                {
                  v25 = v21;
                  while (1)
                  {
                    v26 = v24;
                    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v21 + 2, v24 + 2);
                    if (!result)
                    {
                      break;
                    }

                    v24 = *v26;
                    v25 = v26;
                    if (!*v26)
                    {
                      goto LABEL_45;
                    }
                  }

                  v24 = v26;
                  v26 = v25;
LABEL_45:
                  v18 = v39;
                }

                else
                {
                  v26 = v21;
                }

                *v15 = v24;
                *v26 = **(v23 + 8 * v22);
                **(v23 + 8 * v22) = v21;
              }

              else
              {
                *(v23 + 8 * v22) = v15;
                v15 = v21;
                v16 = v22;
              }
            }

            v21 = *v15;
          }

          while (*v15);
        }
      }

      goto LABEL_57;
    }

    if (v12 < v6)
    {
      result = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 48));
      if (v6 < 3 || (v19 = vcnt_s8(v6), v19.i16[0] = vaddlv_u8(v19), v19.u32[0] > 1uLL))
      {
        result = std::__next_prime(result);
      }

      else
      {
        v20 = 1 << -__clz(result - 1);
        if (result >= 2)
        {
          result = v20;
        }
      }

      if (v12 <= result)
      {
        v12 = result;
      }

      if (v12 < v6)
      {
        if (v12)
        {
          goto LABEL_13;
        }

        v27 = *a1;
        *a1 = 0;
        if (v27)
        {
          result = std::allocator_traits<std::pmr::polymorphic_allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<std::string,AMCP::Thing>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v27, *(a1 + 8));
        }

        *(a1 + 8) = 0;
      }
    }

LABEL_57:
    v6 = *(a1 + 8);
    v5 = v40;
    v2 = v41;
  }

  v28 = vcnt_s8(v6);
  v28.i16[0] = vaddlv_u8(v28);
  v29 = v28.u32[0];
  if (v28.u32[0] > 1uLL)
  {
    v30 = v5;
    if (v6 <= v5)
    {
      v30 = v5 % v6;
    }
  }

  else
  {
    v30 = (v6 - 1) & v5;
  }

  v31 = *(*a1 + 8 * v30);
  v42 = *a1;
  if (v31)
  {
    v32 = *v31;
    if (*v31)
    {
      v33 = 0;
      do
      {
        v34 = v32;
        v35 = v32[1];
        if (v29 > 1)
        {
          v36 = v35;
          if (v35 >= v6)
          {
            v36 = v35 % v6;
          }
        }

        else
        {
          v36 = v35 & (v6 - 1);
        }

        if (v36 != v30)
        {
          break;
        }

        result = v35 == v5 && std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v34 + 2, v2 + 2);
        if ((v33 & (result != (v33 & 1))) != 0)
        {
          break;
        }

        v33 |= result != (v33 & 1);
        v32 = *v34;
        v31 = v34;
      }

      while (*v34);
    }
  }

  v37 = v2[1];
  if (v29 > 1)
  {
    if (v37 >= v6)
    {
      v37 %= v6;
    }
  }

  else
  {
    v37 &= v6 - 1;
  }

  if (!v31)
  {
    *v2 = *(a1 + 24);
    *(a1 + 24) = v2;
    *(v42 + 8 * v37) = a1 + 24;
    if (!*v2)
    {
      goto LABEL_93;
    }

    v38 = *(*v2 + 8);
    if (v29 > 1)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

LABEL_92:
    *(*a1 + 8 * v38) = v2;
    goto LABEL_93;
  }

  *v2 = *v31;
  *v31 = v2;
  if (*v2)
  {
    v38 = *(*v2 + 8);
    if (v29 > 1)
    {
      if (v38 >= v6)
      {
        v38 %= v6;
      }
    }

    else
    {
      v38 &= v6 - 1;
    }

    if (v38 != v37)
    {
      goto LABEL_92;
    }
  }

LABEL_93:
  ++*(a1 + 40);
  return result;
}

void AMCP::Graph::Converter_Cross_Timebase_Processor::process(uint64_t a1@<X0>, AMCP::Log::AMCP_Scope_Registry **a2@<X1>, double *a3@<X2>, void *a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 24);
  if (round(v12) != 0.0)
  {
    if (*a2)
    {
      v13 = (*(**a2 + 48))(*a2);
      v12 = *(a1 + 24);
    }

    else
    {
      v13 = 0.0;
    }

    if (round(*a3) != round(fmod(v12, v13)))
    {
      v42 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v42 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v14);
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

      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Converter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 543;
        v67 = 2080;
        v68 = "not (m_current_source == 0_S or source_local_range.start() == (m_current_source % source_container.get_length_in_frames()))";
        _os_log_error_impl(&dword_1DE1F9000, v45, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Discontiguous source ranges", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v65);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v57, "Discontiguous source ranges", v52);
      std::logic_error::logic_error(&v58, &v57);
      v58.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v59, &v58);
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = -1;
      v59.__vftable = &unk_1F5991430;
      v60 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
      v69 = "virtual std::pair<Object_ID, AMCP::DAL::Sample_Time_Range> AMCP::Graph::Converter_Cross_Timebase_Processor::process(AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &, AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &) const";
      v70 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
      v71 = 543;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v56);
    }
  }

  v15 = *(a1 + 32);
  if (round(v15) != 0.0)
  {
    if (*a4)
    {
      v16 = (*(**a4 + 48))(*a4);
      v15 = *(a1 + 32);
    }

    else
    {
      v16 = 0.0;
    }

    if (round(*a5) != round(fmod(v15, v16)))
    {
      v46 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v46 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v17);
      }

      v48 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v47 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v47)
      {
        atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        v49 = *v48;
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }

      else
      {
        v49 = *v48;
      }

      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Converter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 544;
        v67 = 2080;
        v68 = "not (m_current_dest == 0_S or dest_local_range.start() == (m_current_dest % dest_container.get_length_in_frames()))";
        _os_log_error_impl(&dword_1DE1F9000, v49, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Discontiguous source ranges", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v65);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v57, "Discontiguous source ranges", v53);
      std::logic_error::logic_error(&v58, &v57);
      v58.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v59, &v58);
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = -1;
      v59.__vftable = &unk_1F5991430;
      v60 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
      v69 = "virtual std::pair<Object_ID, AMCP::DAL::Sample_Time_Range> AMCP::Graph::Converter_Cross_Timebase_Processor::process(AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &, AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &) const";
      v70 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
      v71 = 544;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v56);
    }
  }

  v18 = *(a1 + 8);
  v19 = *(v18 + 104);
  v55 = v19;
  if (v19.__imp_.__imp_)
  {
    atomic_fetch_add_explicit(v19.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
  }

  v20 = *a2;
  if (*a2)
  {
    if (*a4)
    {
      v21 = *(*a4 + 16);
    }

    else
    {
      v21 = 0;
    }

    if (*(v20 + 4) != v21)
    {
      v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v34 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v20);
      }

      v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        v37 = *v36;
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      else
      {
        v37 = *v36;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Container.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 129;
        v67 = 2080;
        v68 = "not (get_format().mFormatID == dest_container.get_format().mFormatID)";
        _os_log_error_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Container::dal_operation_apply: Containers Are Not Compatible", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v65);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v57, "Container::dal_operation_apply: Containers Are Not Compatible", v51);
      std::logic_error::logic_error(&v58, &v57);
      v58.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v59, &v58);
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v64 = -1;
      v59.__vftable = &unk_1F5991430;
      v60 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
      v69 = "Sample_Time_Range AMCP::DAL::Container::dal_operation_apply(const Sample_Time_Range &, const Container &, const Sample_Time_Range &, const DAL_Settings &, DAL_Operation_Context_Ref)";
      v70 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Container.cpp";
      v71 = 129;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v56);
    }

    v24 = a4[1];
    *buf = *a4;
    *&buf[8] = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v25 = *a5;
    v26 = a5[1];
    v59 = v55;
    v22 = (*(*v20 + 128))(v20, a3, buf, v18 + 48, &v59, v25, v26);
    v23 = v27;
    if (v59.__imp_.__imp_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v59.__imp_.__imp_);
    }

    v55 = 0;
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  else
  {
    v22 = *a5;
    v23 = a5[1];
  }

  imp = v55.__imp_.__imp_;
  if (v55.__imp_.__imp_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55.__imp_.__imp_);
  }

  if (round(v22) != round(*a5))
  {
    v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v30 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(imp);
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

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Converter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 548;
      v67 = 2080;
      v68 = "not (result_range.start() == dest_local_range.start())";
      _os_log_error_impl(&dword_1DE1F9000, v33, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v65);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v57, "", v50);
    std::logic_error::logic_error(&v58, &v57);
    v58.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v59, &v58);
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = -1;
    v59.__vftable = &unk_1F5991430;
    v60 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
    v69 = "virtual std::pair<Object_ID, AMCP::DAL::Sample_Time_Range> AMCP::Graph::Converter_Cross_Timebase_Processor::process(AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &, AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &) const";
    v70 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    v71 = 548;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v56);
  }

  v29 = v23 - a5[1];
  if (round(v29) < 0.0)
  {
    v29 = 0.0 - v29;
  }

  if (round(v29) >= 2.0 && round(v23 - v22) != round(a3[1] - *a3))
  {
    v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v38 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(imp);
    }

    v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      v41 = *v40;
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    else
    {
      v41 = *v40;
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Converter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 549;
      v67 = 2080;
      v68 = "not ((abs(result_range.end() - dest_local_range.end()) < 2_S) or result_range.length() == source_local_range.length())";
      _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v65);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v57, "", v54);
    std::logic_error::logic_error(&v58, &v57);
    v58.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v59, &v58);
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = -1;
    v59.__vftable = &unk_1F5991430;
    v60 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v59);
    v69 = "virtual std::pair<Object_ID, AMCP::DAL::Sample_Time_Range> AMCP::Graph::Converter_Cross_Timebase_Processor::process(AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &, AMCP::DAL::Container, const AMCP::DAL::Sample_Time_Range &) const";
    v70 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    v71 = 549;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v56);
  }

  *a6 = *(a1 + 16);
  *(a6 + 8) = v22;
  *(a6 + 16) = v23;
}

void sub_1DE4ACE9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25, std::__shared_weak_count *a26)
{
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v28 = *(v26 - 152);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Converter::Converter(AMCP::Graph::Converter *this, const AMCP::Graph::Graph_Wire::Conversion_Info *a2, const AMCP::Graph::Graph_Wire::Wire_Info *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  std::string::basic_string[abi:ne200100]<0>(this + 2, "converter");
  *(this + 10) = *(a3 + 50);
  *&buf.__r_.__value_.__l.__data_ = 0uLL;
  AMCP::DAL::DAL_Settings::DAL_Settings((this + 48), &buf);
  v7 = *(a2 + 19);
  v8 = *(a2 + 21);
  if (v7 && v8)
  {
    v9 = (*(*v7 + 16))(v7);
    v10 = (*(**(a2 + 21) + 16))(*(a2 + 21));
    v11 = *(v9 + 23);
    if (v11 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = *(v9 + 8);
    }

    v13 = *(v10 + 23);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v10 + 8);
    }

    if (v12 == v13)
    {
      v15 = v11 >= 0 ? v9 : *v9;
      v16 = v14 >= 0 ? v10 : *v10;
      if (!memcmp(v15, v16, v12))
      {
LABEL_38:
        if (*a2 == 1)
        {
          v24 = *(a2 + 6);
          if (*(a2 + 1) != v24)
          {
            caulk::make_string(&buf, " - %s (%0.f -> %0.f)", v6, "scale", *(a2 + 1), *&v24);
            v25 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
            v26 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(buf.__r_.__value_.__r.__words[2]) : buf.__r_.__value_.__l.__size_;
            std::string::append((this + 16), v25, v26);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          std::string::basic_string[abi:ne200100]<0>(&buf, "scale");
          AMCP::DAL::DAL_Settings::add<BOOL>(this + 12, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "resampler type");
          v45 = 0u;
          v46 = 0u;
          LODWORD(v45) = *(a2 + 22);
          v47 = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Type>::dispatch;
          std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&buf, __p, &v45);
          std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(this + 12, &buf, &buf);
          if (v50)
          {
            v50(0, v49, 0, 0);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v47)
          {
            (v47)(0, &v45, 0, 0);
          }

          if (v44 < 0)
          {
            operator delete(__p[0]);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, "resampler quality");
          v45 = 0u;
          v46 = 0u;
          LODWORD(v45) = *(a2 + 23);
          v47 = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Quality>::dispatch;
          std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&buf, __p, &v45);
          std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(this + 12, &buf, &buf);
          if (v50)
          {
            v50(0, v49, 0, 0);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (v47)
          {
            (v47)(0, &v45, 0, 0);
          }

          if (v44 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (*(a2 + 2) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "map channels");
          AMCP::DAL::DAL_Settings::add<BOOL>(this + 12, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&v45, " - ");
          v27 = std::string::append(&v45, "map channels", 0xCuLL);
          v28 = *&v27->__r_.__value_.__l.__data_;
          buf.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
          *&buf.__r_.__value_.__l.__data_ = v28;
          v27->__r_.__value_.__l.__size_ = 0;
          v27->__r_.__value_.__r.__words[2] = 0;
          v27->__r_.__value_.__r.__words[0] = 0;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = buf.__r_.__value_.__l.__size_;
          }

          std::string::append((this + 16), p_buf, size);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v46) < 0)
          {
            operator delete(v45);
          }
        }

        if (*(a2 + 3) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "convert format");
          AMCP::DAL::DAL_Settings::add<BOOL>(this + 12, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&v45, " - ");
          v31 = std::string::append(&v45, "convert format", 0xEuLL);
          v32 = *&v31->__r_.__value_.__l.__data_;
          buf.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
          *&buf.__r_.__value_.__l.__data_ = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = &buf;
          }

          else
          {
            v33 = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v34 = buf.__r_.__value_.__l.__size_;
          }

          std::string::append((this + 16), v33, v34);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v46) < 0)
          {
            operator delete(v45);
          }
        }

        if (*(a2 + 4) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "mix channels to mono");
          AMCP::DAL::DAL_Settings::add<BOOL>(this + 12, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&v45, " - ");
          v35 = std::string::append(&v45, "mix channels to mono", 0x14uLL);
          v36 = *&v35->__r_.__value_.__l.__data_;
          buf.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
          *&buf.__r_.__value_.__l.__data_ = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = &buf;
          }

          else
          {
            v37 = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v38 = buf.__r_.__value_.__l.__size_;
          }

          std::string::append((this + 16), v37, v38);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v46) < 0)
          {
            operator delete(v45);
          }
        }

        if (*(a2 + 5) == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&buf, "volume processing");
          AMCP::DAL::DAL_Settings::add<BOOL>(this + 12, &buf, 1);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          std::string::basic_string[abi:ne200100]<0>(&v45, " - ");
          v39 = std::string::append(&v45, "volume processing", 0x11uLL);
          v40 = *&v39->__r_.__value_.__l.__data_;
          buf.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
          *&buf.__r_.__value_.__l.__data_ = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = &buf;
          }

          else
          {
            v41 = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v42 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v42 = buf.__r_.__value_.__l.__size_;
          }

          std::string::append((this + 16), v41, v42);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SBYTE7(v46) < 0)
          {
            operator delete(v45);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&buf, "source timebase");
        AMCP::DAL::DAL_Settings::add<std::shared_ptr<AMCP::Graph::Timebase>>(this + 12, &buf, *(a2 + 19), *(a2 + 20));
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&buf, "dest timebase");
        AMCP::DAL::DAL_Settings::add<std::shared_ptr<AMCP::Graph::Timebase>>(this + 12, &buf, *(a2 + 21), *(a2 + 22));
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(&buf, "source format");
        AMCP::DAL::DAL_Settings::add<CA::StreamDescription>(this + 48, &buf, a2 + 8);
      }
    }
  }

  else if (!(v7 | v8))
  {
    goto LABEL_38;
  }

  (*(**(a2 + 19) + 24))(&v45);
  v17 = SBYTE7(v46);
  v18 = v45;
  (*(**(a2 + 21) + 24))(__p);
  v20 = &v45;
  if (v17 < 0)
  {
    v20 = v18;
  }

  if (v44 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  caulk::make_string(&buf, " timebase(%s -> %s)", v19, v20, v21);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &buf;
  }

  else
  {
    v22 = buf.__r_.__value_.__r.__words[0];
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v23 = buf.__r_.__value_.__l.__size_;
  }

  std::string::append((this + 16), v22, v23);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v46) < 0)
  {
    operator delete(v45);
  }

  if ((*a2 & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&buf, "change clock with drift correction disabled");
    AMCP::DAL::DAL_Settings::add<BOOL>(this + 12, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  goto LABEL_38;
}

void sub_1DE4AE610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, void *a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, std::__shared_weak_count *a51, int a52, __int16 a53, char a54, char a55)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a51);
  }

  v58 = *(v56 - 184);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  v59 = *(v55 + 160);
  *(v55 + 160) = 0;
  if (v59)
  {
    (*(*v59 + 8))(v59, a2, a3, a4, a5, a6, a7, a8);
  }

  v60 = *(v55 + 152);
  *(v55 + 152) = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60, a2, a3, a4, a5, a6, a7, a8);
  }

  v61 = *(v55 + 144);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v62 = *(v55 + 128);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  v63 = *(v55 + 112);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table((v55 + 48));
  if (*(v55 + 39) < 0)
  {
    operator delete(*(v55 + 16));
  }

  v64 = *(v55 + 8);
  if (v64)
  {
    std::__shared_weak_count::__release_weak(v64);
  }

  _Unwind_Resume(a1);
}

__n128 AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Timebase>>(__n128 *a1, void *a2, void *a3, __n128 *a4)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, a3);
  if (v6)
  {

    AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Timebase>>(a1, (v6 + 5));
  }

  else
  {
    result = *a4;
    *a1 = *a4;
    a4->n128_u64[0] = 0;
    a4->n128_u64[1] = 0;
  }

  return result;
}

void AMCP::Graph::Converter::update_settings(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5)
{
  v61 = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  v10 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((a1 + 48), __p);
  if (v10)
  {
    v11 = AMCP::Thing::convert_to<BOOL>((v10 + 5));
  }

  else
  {
    v11 = 0;
  }

  if (SBYTE3(v56) < 0)
  {
    operator delete(*__p);
    if (!v11)
    {
      return;
    }
  }

  else if (!v11)
  {
    return;
  }

  if ((*(**a2 + 152))() != *a4)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      v53 = 1024;
      v54 = 284;
      v55 = 2080;
      v56 = "not (source_timebase->get_sample_rate() == source_format.mSampleRate)";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s source sample rate differs from source timebase rate", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v43, "source sample rate differs from source timebase rate", v36);
    std::logic_error::logic_error(&v44, &v43);
    v44.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v45, &v44);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5991430;
    v46 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v45);
    v57 = "void AMCP::Graph::Converter::update_settings(const Timebase_Ref &, const Timebase_Ref &, const CA::StreamDescription &, const CA::StreamDescription &) const";
    v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    v59 = 284;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  if ((*(**a3 + 152))() != *a5)
  {
    v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v24 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v13);
    }

    v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      v53 = 1024;
      v54 = 285;
      v55 = 2080;
      v56 = "not (dest_timebase->get_sample_rate() == dest_format.mSampleRate)";
      _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s dest sample rate differs from source timebase rate", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v43, "dest sample rate differs from source timebase rate", v37);
    std::logic_error::logic_error(&v44, &v43);
    v44.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v45, &v44);
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = -1;
    v45.__vftable = &unk_1F5991430;
    v46 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v45);
    v57 = "void AMCP::Graph::Converter::update_settings(const Timebase_Ref &, const Timebase_Ref &, const CA::StreamDescription &, const CA::StreamDescription &) const";
    v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    v59 = 285;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  v14 = (*(**a2 + 48))();
  if (v14 == (*(**a3 + 48))() && (*(**a2 + 48))() && (v15 = (*(**a2 + 152))(), v15 == (*(**a3 + 152))()))
  {
    v19 = 1.0;
  }

  else
  {
    if ((*(**a2 + 152))() != *a4)
    {
      v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v28 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v16);
      }

      v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        v31 = *v30;
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      else
      {
        v31 = *v30;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "Converter.cpp";
        v53 = 1024;
        v54 = 291;
        v55 = 2080;
        v56 = "not (source_timebase->get_sample_rate() == source_format.mSampleRate)";
        _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v43, "", v38);
      std::logic_error::logic_error(&v44, &v43);
      v44.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v45, &v44);
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = -1;
      v45.__vftable = &unk_1F5991430;
      v46 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v45);
      v57 = "void AMCP::Graph::Converter::update_settings(const Timebase_Ref &, const Timebase_Ref &, const CA::StreamDescription &, const CA::StreamDescription &) const";
      v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
      v59 = 291;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
    }

    if ((*(**a3 + 152))() != *a5)
    {
      v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v32 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v17);
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
        *__p = 136315650;
        *&__p[4] = "Converter.cpp";
        v53 = 1024;
        v54 = 292;
        v55 = 2080;
        v56 = "not (dest_timebase->get_sample_rate() == dest_format.mSampleRate)";
        _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v51);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v43, "", v39);
      std::logic_error::logic_error(&v44, &v43);
      v44.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v45, &v44);
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = -1;
      v45.__vftable = &unk_1F5991430;
      v46 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v45);
      v57 = "void AMCP::Graph::Converter::update_settings(const Timebase_Ref &, const Timebase_Ref &, const CA::StreamDescription &, const CA::StreamDescription &) const";
      v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
      v59 = 292;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
    }

    v18 = (*(**a3 + 72))();
    v19 = v18 / (*(**a2 + 72))();
  }

  std::string::basic_string[abi:ne200100]<0>(v41, "scale ratio");
  v45.__imp_.__imp_ = 0;
  v46 = 0;
  *&v45.__vftable = v19;
  v47 = 0;
  v48 = AMCP::Implementation::In_Place_Storage<double>::dispatch;
  std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(__p, v41, &v45);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>((a1 + 48), __p, __p);
  if (v60)
  {
    v60(0, &v56 + 4, 0, 0);
  }

  if (SBYTE3(v56) < 0)
  {
    operator delete(*__p);
  }

  if (v48)
  {
    v48(0, &v45, 0, 0);
  }

  if (v42 < 0)
  {
    operator delete(v41[0]);
  }
}

void sub_1DE4AF7C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, void *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::DAL_Settings::add<BOOL>(float *a1, __int128 *a2, char a3)
{
  memset(v4, 0, sizeof(v4));
  LOBYTE(v4[0]) = a3;
  v5 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
  std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&__p, a2, v4);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(a1, &__p, &__p);
  if (v8)
  {
    v8(0, &v7, 0, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v5)
  {
    v5(0, v4, 0, 0);
  }
}

void sub_1DE4AF980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::pair<std::string,AMCP::Thing>::~pair(va);
  AMCP::Thing::~Thing(&a9);
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Settings::add<std::shared_ptr<AMCP::Graph::Timebase>>(float *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5[2] = 0;
  v5[3] = 0;
  v5[0] = a3;
  v5[1] = a4;
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Timebase>>::dispatch;
  std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&__p, a2, v5);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(a1, &__p, &__p);
  if (v9)
  {
    v9(0, &v8, 0, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    v6(0, v5, 0, 0);
  }
}

void sub_1DE4AFA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::pair<std::string,AMCP::Thing>::~pair(va1);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Settings::add<CA::StreamDescription>(unint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = AMCP::Implementation::Outboard_Storage<CA::StreamDescription>::dispatch;
  operator new();
}

void sub_1DE4AFB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::pair<std::string,AMCP::Thing>::~pair(va1);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::DAL::DAL_Settings::add<std::string>(float *a1, __int128 *a2, __int128 *a3)
{
  v5 = 0u;
  v6 = 0u;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v5, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *&v6 = *(a3 + 2);
  }

  v7 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
  std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<std::string const&,AMCP::Thing,0>(&__p, a2, &v5);
  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::__emplace_unique_key_args<std::string,std::pair<std::string,AMCP::Thing>>(a1, &__p, &__p);
  if (v10)
  {
    v10(0, &v9, 0, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    v7(0, &v5, 0, 0);
  }
}

void sub_1DE4AFC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::pair<std::string,AMCP::Thing>::~pair(va);
  AMCP::Thing::~Thing(&a9);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v9 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
        result = 0;
        *a4 = v9;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v18 = 0;
      memset(v17, 0, sizeof(v17));
      AMCP::swap(v17, a3, a3);
      if (v18)
      {
        v18(0, v17, 0, 0);
      }

      return 0;
    }

    v10 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
    v11 = *(a2 + 32);
    *&v17[0] = 0;
    if (v11)
    {
      v11(3, a2, 0, v17);
      v11 = *&v17[0];
    }

    if (v11 != v10)
    {
      goto LABEL_31;
    }

    v12 = *(a3 + 4);
    v19 = 0;
    if (v12)
    {
      v12(3, a3, 0, &v19);
      v12 = v19;
    }

    if (v12 == v10)
    {
      if (*(a2 + 32))
      {
        *&v17[0] = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
        v13 = (*(a2 + 32))(4, a2, 0, v17);
      }

      else
      {
        v13 = 0;
      }

      *&v17[0] = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
      if (*v13 == *(*(a3 + 4))(4, a3, 0, v17))
      {
        return 1;
      }
    }

    else
    {
LABEL_31:
      AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(v17, a2);
      AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(&v19, a3);
      v15 = *&v17[0];
      v16 = v19;
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if (*(&v17[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v17[0] + 1));
      }

      if (v15 == v16)
      {
        return 1;
      }
    }

    return 0;
  }

  if (!result)
  {
    v8 = *(a2 + 8);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
LABEL_18:
    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result != 1)
  {
    if (result != 2)
    {
      return result;
    }

    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    *a3 = *a2;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>::dispatch;
    *(a2 + 32) = 0;
    goto LABEL_18;
  }

  *a3 = 0u;
  *(a3 + 1) = 0u;
  *a3 = *a2;
  v14 = *(a2 + 8);
  *(a3 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  result = 0;
  *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>::dispatch;
  return result;
}

uint64_t AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[128];
}

void *AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_15;
  }

  v4 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = result[1];
      *a1 = *result;
      a1[1] = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      return result;
    }

LABEL_15:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = result[1];
  *a1 = *result;
  a1[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE4B0170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Quality>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, __objc2_meth_list **a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        *a3 = *a2;
        *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Quality>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 1) = 0u;
      *a3 = *a2;
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Quality>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      AMCP::swap(v14, a3, a3);
      if (v15)
      {
        v15(0, v14, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>();
    v10 = *(a2 + 32);
    *&v14[0] = 0;
    if (v10)
    {
      (v10)(3, a2, 0, v14);
      v10 = *&v14[0];
    }

    if (v10 != v9)
    {
      goto LABEL_27;
    }

    v11 = *(a3 + 4);
    v16 = 0;
    if (v11)
    {
      (v11)(3, a3, 0, &v16);
      v11 = v16;
    }

    if (v11 == v9)
    {
      if (*(a2 + 32))
      {
        *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>();
        v12 = (*(a2 + 32))(4, a2, 0, v14);
      }

      else
      {
        v12 = 0;
      }

      *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>();
      if (*v12 == *(*(a3 + 4))(4, a3, 0, v14))
      {
        return 1;
      }
    }

    else
    {
LABEL_27:
      v13 = AMCP::Thing::convert_to<AMCP::Resampler_Quality>(a2);
      if (v13 == AMCP::Thing::convert_to<AMCP::Resampler_Quality>(a3))
      {
        return 1;
      }
    }

    return 0;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Resampler_Quality>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Type>::dispatch(uint64_t result, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        *a3 = 0u;
        *(a3 + 1) = 0u;
        *a3 = *a2;
        *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Type>::dispatch;
        return result;
      }

      if (result != 2)
      {
        return result;
      }

      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 1) = 0u;
      *a3 = *a2;
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<AMCP::Resampler_Type>::dispatch;
      *(a2 + 32) = 0;
    }

    else
    {
      result = 0;
      *(a2 + 32) = 0;
      v7 = 0uLL;
    }

    *a2 = v7;
    *(a2 + 16) = v7;
    return result;
  }

  if (result > 4)
  {
    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      v15 = 0;
      memset(v14, 0, sizeof(v14));
      AMCP::swap(v14, a3, a3);
      if (v15)
      {
        v15(0, v14, 0, 0);
      }

      return 0;
    }

    v9 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
    v10 = *(a2 + 32);
    *&v14[0] = 0;
    if (v10)
    {
      v10(3, a2, 0, v14);
      v10 = *&v14[0];
    }

    if (v10 != v9)
    {
      goto LABEL_27;
    }

    v11 = *(a3 + 4);
    v16 = 0;
    if (v11)
    {
      v11(3, a3, 0, &v16);
      v11 = v16;
    }

    if (v11 == v9)
    {
      if (*(a2 + 32))
      {
        *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
        v12 = (*(a2 + 32))(4, a2, 0, v14);
      }

      else
      {
        v12 = 0;
      }

      *&v14[0] = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
      if (*v12 == *(*(a3 + 4))(4, a3, 0, v14))
      {
        return 1;
      }
    }

    else
    {
LABEL_27:
      v13 = AMCP::Thing::convert_to<AMCP::Resampler_Type>(a2);
      if (v13 == AMCP::Thing::convert_to<AMCP::Resampler_Type>(a3))
      {
        return 1;
      }
    }

    return 0;
  }

  if (result == 3)
  {
    v8 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
    result = 0;
    *a4 = v8;
  }

  else if (*a4 == AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>())
  {
    return a2;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[130];
}

uint64_t AMCP::Thing::convert_to<AMCP::Resampler_Type>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  v2 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == v2)
  {
    *&v15[0] = v2;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<AMCP::Resampler_Type>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = v2;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE4B0830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void *std::__function::__value_func<void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE4B0B58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_7"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  std::string::basic_string[abi:ne200100]<0>(v10, "scale");
  v2 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((v1 + 48), v10);
  if (v2)
  {
    v3 = AMCP::Thing::convert_to<BOOL>((v2 + 5));
  }

  else
  {
    v3 = 0;
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
    if (v3)
    {
      goto LABEL_6;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

LABEL_6:
  __p[0] = 0;
  __p[1] = 0;
  AMCP::DAL::DAL_Settings::DAL_Settings(v10, __p);
  std::string::basic_string[abi:ne200100]<0>(__p, "get latency");
  AMCP::DAL::DAL_Settings::add<BOOL>(v10, __p, 1);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(v1 + 112);
  v4 = *(v1 + 120);
  __p[0] = *(v1 + 104);
  __p[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*v4 + 136))(v4, __p, v10);
  if (__p[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(v10);
  return v6;
}

void sub_1DE4B0D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void sub_1DE4B0D8C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1DE4B0D84);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59736E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59736E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_7,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_7>,long long ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F59736E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5973658;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::~__func(void *a1)
{
  *a1 = &unk_1F5973658;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_6,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_6>,unsigned long long ()(unsigned long long,unsigned long long &)>::~__func(void *a1)
{
  *a1 = &unk_1F5973658;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59735C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F59735C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_5,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_5>,unsigned long long ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_1F59735C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 208) - 1;
  *(v1 + 208) = v2;
  if (!v2)
  {
    v3 = *(v1 + 144);
    *(v1 + 136) = 0;
    *(v1 + 144) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5973548;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5973548;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_4,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_4>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5973548;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59734C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59734C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_3,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_3>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59734C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::operator()(AMCP::Log::AMCP_Scope_Registry *a1, int *a2, uint64_t a3, AMCP::DAL::DAL_Time **a4, uint64_t *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = *a4;
  if (a4[1] - *a4 != 88)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *&buf[4] = "Converter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 117;
      *&buf[18] = 2080;
      *&buf[20] = "not (sources.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Converter nodes should never be connected to more than one incoming buffer", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v40, "Converter nodes should never be connected to more than one incoming buffer", v29);
    std::logic_error::logic_error(&v42, &v40);
    v42.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v42);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    __p.__vftable = &unk_1F5991430;
    v33 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v44 = "auto AMCP::Graph::Converter::get_proc()::(anonymous class)::operator()(Object_ID, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &) const";
    *(&v44 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    LODWORD(v45) = 117;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v31);
  }

  v7 = *a5;
  if (a5[1] - *a5 != 88)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Converter.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 118;
      *&buf[18] = 2080;
      *&buf[20] = "not (dests.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Converter nodes should never be connected to more than one outgoing buffer", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v40, "Converter nodes should never be connected to more than one outgoing buffer", v30);
    std::logic_error::logic_error(&v42, &v40);
    v42.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v42);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    __p.__vftable = &unk_1F5991430;
    v33 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v44 = "auto AMCP::Graph::Converter::get_proc()::(anonymous class)::operator()(Object_ID, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &) const";
    *(&v44 + 1) = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    LODWORD(v45) = 118;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v31);
  }

  v10 = *a2;
  v11 = *(a1 + 1);
  v12 = *(v5 + 4);
  v31[0] = *(v5 + 3);
  v31[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(v7 + 32);
  v42.__vftable = *(v7 + 24);
  v42.__imp_.__imp_ = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Timed_Segment::get_format(&v41, *(v5 + 10));
  AMCP::DAL::DAL_Timed_Segment::get_format(&v40, *(v7 + 80));
  AMCP::Graph::Converter::update_settings(v11, v31, &v42, &v41, &v40);
  std::string::basic_string[abi:ne200100]<0>(buf, "volume processing");
  v14 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((v11 + 48), buf);
  if (v14 && AMCP::Thing::convert_to<BOOL>((v14 + 5)))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "volume connection");
    v15 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>((v11 + 48), &__p) != 0;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p.__vftable);
    }
  }

  else
  {
    v15 = 0;
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v15)
    {
      goto LABEL_29;
    }
  }

  else if (!v15)
  {
    goto LABEL_29;
  }

  std::string::basic_string[abi:ne200100]<0>(buf, "volume connection");
  __p.__vftable = 0;
  __p.__imp_.__imp_ = 0;
  AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(&v39, (v11 + 48), buf, &__p);
  if (__p.__imp_.__imp_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__imp_.__imp_);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v16 = v39.n128_u64[0];
  caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(&__p, v39.n128_u64[0]);
  if ((v38 & 1) == 0 && *&__p.__imp_.__imp_ == 0.0)
  {
    sample_time = AMCP::DAL::DAL_Time::get_sample_time(v5);
    caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(buf, v16);
    v44 = 0u;
    v45 = 0u;
    *&buf[16] = 0u;
    *&buf[8] = sample_time;
    v46 = 1;
    caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::store(v16, buf);
  }

  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = AMCP::DAL::DAL_Time::get_sample_time(v5);
  v19 = AMCP::DAL::DAL_Time::get_sample_time((v5 + 40));
  caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(buf, v16);
  v47 = v18;
  v48 = v19;
  caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::store(v16, buf);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v39.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39.n128_u64[1]);
  }

LABEL_29:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v20 = *(v11 + 136);
  if (v20)
  {
    AMCP::DAL::create_timestamp_data(buf, (a3 + 80), *(*a4 + 3), *(*a4 + 4));
    (*(**v20 + 16))(*v20, buf, *a4);
    std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table(buf);
  }

  *buf = &unk_1F59732E0;
  *&buf[8] = v11;
  *&buf[16] = v10;
  *&buf[24] = 0;
  *&v44 = 0;
  AMCP::Graph::process_once_across_timebases(*(v11 + 40), a4, a5, buf);
}

void sub_1DE4B1F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, std::__shared_weak_count *a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::process_once_across_timebases(int a1, AMCP::DAL::DAL_Time **a2, void *a3, uint64_t a4)
{
  v276 = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = *(*a2 + 2);
  v10 = *(*a2 + 3);
  *&v247.__r_.__value_.__l.__data_ = **a2;
  v247.__r_.__value_.__r.__words[2] = v9;
  *&v248 = v10;
  v11 = *(v8 + 4);
  *(&v248 + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(v8 + 7);
  v13 = *(v8 + 8);
  v249 = *(v8 + 40);
  v250 = v12;
  *&v251 = v13;
  v14 = *(v8 + 9);
  *(&v251 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = (*(*a4 + 32))(a4);
  memset(&__p[8], 0, 32);
  *__p = 0;
  LODWORD(v267) = 0;
  (*(*v15 + 96))(v15, __p, &v247, 0);
  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  v219 = v247;
  v220 = v248;
  if (*(&v248 + 1))
  {
    atomic_fetch_add_explicit((*(&v248 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v221 = v249;
  v222 = v250;
  v223 = v251;
  if (*(&v251 + 1))
  {
    atomic_fetch_add_explicit((*(&v251 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v15 + 160))(__p, v15, &v219);
  if (*(&v223 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v223 + 1));
  }

  if (*(&v220 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v220 + 1));
  }

  *&v214.__r_.__value_.__r.__words[1] = 0u;
  v215 = 0u;
  LODWORD(v214.__r_.__value_.__l.__data_) = 0;
  LODWORD(v216) = 0;
  AMCP::DAL::Writable_Range::pad_and_receive_data(__p, &v214, *a2);
  memset(&v197, 0, sizeof(v197));
  v242 = v247;
  v243 = v248;
  if (*(&v248 + 1))
  {
    atomic_fetch_add_explicit((*(&v248 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v244 = v249;
  v245 = v250;
  v246 = v251;
  if (*(&v251 + 1))
  {
    atomic_fetch_add_explicit((*(&v251 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  (*(*v15 + 144))(&v235, v15, &v242);
  v16 = 0x2E8BA2E8BA2E8BA3 * ((v197.__r_.__value_.__l.__size_ - v197.__r_.__value_.__r.__words[0]) >> 3);
  v17 = v16 + 1;
  if ((v16 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((v197.__r_.__value_.__r.__words[2] - v197.__r_.__value_.__r.__words[0]) >> 3) > v17)
  {
    v17 = 0x5D1745D1745D1746 * ((v197.__r_.__value_.__r.__words[2] - v197.__r_.__value_.__r.__words[0]) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((v197.__r_.__value_.__r.__words[2] - v197.__r_.__value_.__r.__words[0]) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v18 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v18 = v17;
  }

  v209 = &v197;
  if (v18)
  {
    v18 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Readable_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>>(v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = (v18 + 88 * v16);
  *&v207 = v18;
  *(&v207 + 1) = v20;
  *(&v208 + 1) = v18 + 88 * v19;
  v21 = v235;
  *(v20 + 2) = *v236;
  *v20 = v21;
  *(v20 + 24) = *&v236[8];
  *&v236[16] = 0;
  *&v236[8] = 0;
  v22 = v237;
  *(v20 + 7) = *v238;
  *(v20 + 40) = v22;
  *(v20 + 4) = *&v238[8];
  *&v238[8] = 0uLL;
  *(v20 + 10) = v239;
  *&v208 = v20 + 88;
  v23 = &v20[v197.__r_.__value_.__r.__words[0] - v197.__r_.__value_.__l.__size_];
  std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>,AMCP::DAL::Readable_Range*>(v197.__r_.__value_.__l.__data_, v197.__r_.__value_.__l.__size_, v23);
  v24 = v197.__r_.__value_.__r.__words[0];
  v25 = v197.__r_.__value_.__r.__words[2];
  v197.__r_.__value_.__r.__words[0] = v23;
  v186 = v208;
  *&v197.__r_.__value_.__r.__words[1] = v208;
  *&v208 = v24;
  *(&v208 + 1) = v25;
  *&v207 = v24;
  *(&v207 + 1) = v24;
  std::__split_buffer<AMCP::DAL::Readable_Range,caulk::rt_allocator<AMCP::DAL::Readable_Range> &>::~__split_buffer(&v207);
  v197.__r_.__value_.__l.__size_ = v186;
  if (*&v238[16])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v238[16]);
  }

  if (*&v236[16])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v236[16]);
  }

  if (*(&v246 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v246 + 1));
  }

  if (*(&v243 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v243 + 1));
  }

  v202 = v197;
  memset(&v197, 0, sizeof(v197));
  v203 = 1;
  v235.__vftable = &v197;
  std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](&v235);
  if (SBYTE7(v215) < 0)
  {
    operator delete(v214.__r_.__value_.__l.__size_);
  }

  if (*&v268[16])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v268[16]);
  }

  if (*&__p[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
  }

  if (*(&v251 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v251 + 1));
  }

  v26 = *(&v248 + 1);
  if (*(&v248 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v248 + 1));
  }

  if (v203)
  {
    v27 = &v202;
  }

  else
  {
    v27 = a2;
  }

  p_size = &v202.__r_.__value_.__l.__size_;
  if (!v203)
  {
    p_size = (a2 + 1);
  }

  if (*p_size - v27->__r_.__value_.__r.__words[0] != 88)
  {
    v117 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v117 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v26);
    }

    v119 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v118 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v118)
    {
      atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
      v120 = *v119;
      std::__shared_weak_count::__release_shared[abi:ne200100](v118);
    }

    else
    {
      v120 = *v119;
    }

    if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 619;
      *&__p[18] = 2080;
      *&__p[20] = "not (sources.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v120, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Converter should have one source range", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v207);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v219, "Converter should have one source range", v169);
    std::logic_error::logic_error(&v214, &v219);
    v214.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v235, &v214);
    *&v236[16] = 0;
    *&v236[8] = 0;
    *&v237 = 0;
    DWORD2(v237) = -1;
    v235.__vftable = &unk_1F5991430;
    *v236 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v235);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v267) = 619;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v242);
  }

  v29 = *a3;
  if (a3[1] - *a3 != 88)
  {
    v121 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v121 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v26);
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
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 620;
      *&__p[18] = 2080;
      *&__p[20] = "not (dests.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v124, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Converter should have one dest range", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v207);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v219, "Converter should have one dest range", v170);
    std::logic_error::logic_error(&v214, &v219);
    v214.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v235, &v214);
    *&v236[16] = 0;
    *&v236[8] = 0;
    *&v237 = 0;
    DWORD2(v237) = -1;
    v235.__vftable = &unk_1F5991430;
    *v236 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v235);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v267) = 620;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v242);
  }

  v30 = *(v29 + 16);
  v31 = *(v29 + 24);
  *&v197.__r_.__value_.__l.__data_ = *v29;
  v197.__r_.__value_.__r.__words[2] = v30;
  *&v198 = v31;
  v32 = *(v29 + 32);
  *(&v198 + 1) = v32;
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = *(v29 + 56);
  v34 = *(v29 + 64);
  v199 = *(v29 + 40);
  v200 = v33;
  *&v201 = v34;
  v35 = *(v29 + 72);
  *(&v201 + 1) = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(v196, *(v27->__r_.__value_.__r.__words[0] + 80), v27->__r_.__value_.__r.__words[0]);
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v197);
  AMCP::DAL::DAL_Time::get_sample_time(&v199);
  v37 = AMCP::DAL::DAL_Time::get_sample_time(&v197);
  AMCP::DAL::DAL_Time::get_sample_time(&v199);
  if (sample_time != floor(v37))
  {
    v125 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v125 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v38);
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
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 625;
      *&__p[18] = 2080;
      *&__p[20] = "not (dest_range.get_range().start().get_double() == dest_range.get_range().start().floor().get_double())";
      _os_log_error_impl(&dword_1DE1F9000, v128, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v207);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v219, "We should have no fractional samples", v171);
    std::logic_error::logic_error(&v214, &v219);
    v214.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v235, &v214);
    *&v236[16] = 0;
    *&v236[8] = 0;
    *&v237 = 0;
    DWORD2(v237) = -1;
    v235.__vftable = &unk_1F5991430;
    *v236 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v235);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v267) = 625;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v242);
  }

  AMCP::DAL::DAL_Time::get_sample_time(&v197);
  v39 = AMCP::DAL::DAL_Time::get_sample_time(&v199);
  AMCP::DAL::DAL_Time::get_sample_time(&v197);
  if (v39 != floor(AMCP::DAL::DAL_Time::get_sample_time(&v199)))
  {
    v129 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v129 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v40);
    }

    v131 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v130 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v130)
    {
      atomic_fetch_add_explicit(&v130->__shared_owners_, 1uLL, memory_order_relaxed);
      v132 = *v131;
      std::__shared_weak_count::__release_shared[abi:ne200100](v130);
    }

    else
    {
      v132 = *v131;
    }

    if (os_log_type_enabled(v132, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 626;
      *&__p[18] = 2080;
      *&__p[20] = "not (dest_range.get_range().end().get_double() == dest_range.get_range().end().floor().get_double())";
      _os_log_error_impl(&dword_1DE1F9000, v132, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v207);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v219, "We should have no fractional samples", v172);
    std::logic_error::logic_error(&v214, &v219);
    v214.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v235, &v214);
    *&v236[16] = 0;
    *&v236[8] = 0;
    *&v237 = 0;
    DWORD2(v237) = -1;
    v235.__vftable = &unk_1F5991430;
    *v236 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v235);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v267) = 626;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v242);
  }

  v41 = v27->__r_.__value_.__r.__words[0];
  v42 = AMCP::DAL::DAL_Time::get_sample_time(v27->__r_.__value_.__l.__data_);
  AMCP::DAL::DAL_Time::get_sample_time((v41 + 40));
  v43 = v27->__r_.__value_.__r.__words[0];
  v44 = AMCP::DAL::DAL_Time::get_sample_time(v27->__r_.__value_.__l.__data_);
  AMCP::DAL::DAL_Time::get_sample_time((v43 + 40));
  if (v42 != floor(v44))
  {
    v133 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v133 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v45);
    }

    v135 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v134 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v134)
    {
      atomic_fetch_add_explicit(&v134->__shared_owners_, 1uLL, memory_order_relaxed);
      v136 = *v135;
      std::__shared_weak_count::__release_shared[abi:ne200100](v134);
    }

    else
    {
      v136 = *v135;
    }

    if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 627;
      *&__p[18] = 2080;
      *&__p[20] = "not (sources[0].get_time_range().get_range().start().get_double() == sources[0].get_time_range().get_range().start().floor().get_double())";
      _os_log_error_impl(&dword_1DE1F9000, v136, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v207);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v219, "We should have no fractional samples", v173);
    std::logic_error::logic_error(&v214, &v219);
    v214.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v235, &v214);
    *&v236[16] = 0;
    *&v236[8] = 0;
    *&v237 = 0;
    DWORD2(v237) = -1;
    v235.__vftable = &unk_1F5991430;
    *v236 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v235);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v267) = 627;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v242);
  }

  v46 = v27->__r_.__value_.__r.__words[0];
  AMCP::DAL::DAL_Time::get_sample_time(v27->__r_.__value_.__l.__data_);
  v47 = AMCP::DAL::DAL_Time::get_sample_time((v46 + 40));
  v48 = v27->__r_.__value_.__r.__words[0];
  AMCP::DAL::DAL_Time::get_sample_time(v27->__r_.__value_.__l.__data_);
  if (v47 != floor(AMCP::DAL::DAL_Time::get_sample_time((v48 + 40))))
  {
    v137 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v137 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v49);
    }

    v139 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v138 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v138)
    {
      atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
      v140 = *v139;
      std::__shared_weak_count::__release_shared[abi:ne200100](v138);
    }

    else
    {
      v140 = *v139;
    }

    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 628;
      *&__p[18] = 2080;
      *&__p[20] = "not (sources[0].get_time_range().get_range().end().get_double() == sources[0].get_time_range().get_range().end().floor().get_double())";
      _os_log_error_impl(&dword_1DE1F9000, v140, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should have no fractional samples", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v207);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v219, "We should have no fractional samples", v174);
    std::logic_error::logic_error(&v214, &v219);
    v214.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v235, &v214);
    *&v236[16] = 0;
    *&v236[8] = 0;
    *&v237 = 0;
    DWORD2(v237) = -1;
    v235.__vftable = &unk_1F5991430;
    *v236 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v235);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v267) = 628;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v242);
  }

  v50 = v196[0];
  if ((v196[1] - v196[0]) != 96)
  {
    v141 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v141 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v49);
    }

    v143 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v142 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v142)
    {
      atomic_fetch_add_explicit(&v142->__shared_owners_, 1uLL, memory_order_relaxed);
      v144 = *v143;
      std::__shared_weak_count::__release_shared[abi:ne200100](v142);
    }

    else
    {
      v144 = *v143;
    }

    if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 630;
      *&__p[18] = 2080;
      *&__p[20] = "not (source_ranges.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v144, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We should only ever have one source after copying from the ring buffer into the temp fixed buffer.", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v207);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v219, "We should only ever have one source after copying from the ring buffer into the temp fixed buffer.", v175);
    std::logic_error::logic_error(&v214, &v219);
    v214.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v235, &v214);
    *&v236[16] = 0;
    *&v236[8] = 0;
    *&v237 = 0;
    DWORD2(v237) = -1;
    v235.__vftable = &unk_1F5991430;
    *v236 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v235);
    *&__p[32] = "void AMCP::Graph::process_once_across_timebases(AMCP::Object_ID, Buffer_Alignment, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &, const Cross_Timebase_Processor &)";
    *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v267) = 630;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v242);
  }

  v187 = *a3;
  v191 = v197;
  v192 = v198;
  if (*(&v198 + 1))
  {
    atomic_fetch_add_explicit((*(&v198 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v193 = v199;
  v194 = v200;
  v195 = v201;
  if (*(&v201 + 1))
  {
    atomic_fetch_add_explicit((*(&v201 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  (*(**(v27->__r_.__value_.__r.__words[0] + 80) + 56))(&v189);
  (*(**(*a3 + 80) + 56))(&v188);
  v207 = *(v50 + 1);
  v51 = *(v50 + 5);
  *&v208 = v50[4];
  *(&v208 + 1) = v51;
  v52 = *(v50 + 6);
  v209 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v210 = *(v50 + 7);
  v53 = *(v50 + 10);
  v211 = *(v50 + 9);
  v212 = v53;
  v54 = *(v50 + 11);
  v213 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1)
  {
    AMCP::DAL::DAL_Time::operator-(v204, &v193, &v191);
    if ((v204[0] & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(v204);
    }

    v247.__r_.__value_.__r.__words[0] = 0;
    v55 = (*(*a4 + 24))(a4, 1, &v247, round(v205));
    v56 = v55 + AMCP::DAL::DAL_Time::get_sample_time((v50 + 2));
    v57 = *(v50 + 5);
    v58 = *(v50 + 6);
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v235.__vftable) = 2;
    *&v235.__imp_.__imp_ = v56;
    *v236 = 0;
    *&v236[8] = v57;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(__p, (v50 + 2), &v235);
    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    v59 = *&__p[32];
    v207 = *__p;
    v60 = *&__p[24];
    *&__p[32] = 0;
    *&__p[24] = 0;
    *&v208 = *&__p[16];
    *(&v208 + 1) = v60;
    v209 = v59;
    if (v52)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    }

    v210 = v267;
    v61 = *&v268[8];
    v211 = *v268;
    v62 = *&v268[16];
    *&v268[8] = 0uLL;
    v212 = v61;
    v213 = v62;
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      if (*&v268[16])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v268[16]);
      }
    }

    if (*&__p[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
    }

    if (v206)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v206);
    }

    v52 = v59;
    v54 = v62;
  }

  else
  {
    AMCP::DAL::DAL_Time::operator-(&v235, (v50 + 7), (v50 + 2));
    if ((v235.__vftable & 2) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(&v235);
    }

    imp = v235.__imp_.__imp_;
    if (*&v236[16])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v236[16]);
    }

    v247.__r_.__value_.__r.__words[0] = imp;
    v64 = (*(*a4 + 24))(a4, 0, &v247, *&imp);
    v65 = v64 + AMCP::DAL::DAL_Time::get_sample_time(&v191);
    v66 = v192;
    v67 = *(&v192 + 1);
    if (*(&v192 + 1))
    {
      atomic_fetch_add_explicit((*(&v192 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    LODWORD(v235.__vftable) = 2;
    *&v235.__imp_.__imp_ = v65;
    *v236 = 0;
    *&v236[8] = v66;
    AMCP::DAL::DAL_Time_Range::DAL_Time_Range(__p, &v191, &v235);
    if (v67)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
    }

    v68 = *&__p[24];
    v69 = *(&v192 + 1);
    v191 = *__p;
    *&__p[32] = 0;
    *&__p[24] = 0;
    v192 = v68;
    if (v69)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }

    v193 = v267;
    v194 = *v268;
    v70 = *&v268[8];
    *&v268[8] = 0uLL;
    v71 = *(&v195 + 1);
    v195 = v70;
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
      if (*&v268[16])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v268[16]);
      }
    }

    if (*&__p[32])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[32]);
    }
  }

  v73 = *(&v192 + 1);
  v72 = v192;
  if (*(&v192 + 1))
  {
    v74 = 1;
    atomic_fetch_add_explicit((*(&v192 + 1) + 8), 1uLL, memory_order_relaxed);
    v75 = *(&v192 + 1);
    v76 = v192;
    if (*(&v192 + 1))
    {
      v74 = 0;
      atomic_fetch_add_explicit((*(&v192 + 1) + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v75 = 0;
    v74 = 1;
    v76 = v192;
  }

  v77 = (v72 | v76) == 0;
  if (!v72 || !v76)
  {
LABEL_121:
    if (v74)
    {
      goto LABEL_123;
    }

    goto LABEL_122;
  }

  v78 = (*(*v72 + 16))(v72);
  v72 = (*(*v76 + 16))(v76);
  v79 = *(v78 + 23);
  if (v79 >= 0)
  {
    v80 = *(v78 + 23);
  }

  else
  {
    v80 = *(v78 + 8);
  }

  v81 = *(v72 + 23);
  v82 = v81;
  if ((v81 & 0x80u) != 0)
  {
    v81 = *(v72 + 8);
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
      v84 = v72;
    }

    else
    {
      v84 = *v72;
    }

    v72 = memcmp(v83, v84, v80);
    v77 = v72 == 0;
    goto LABEL_121;
  }

  v77 = 0;
  if ((v74 & 1) == 0)
  {
LABEL_122:
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

LABEL_123:
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  if (!v77)
  {
    v145 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v145 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v72);
    }

    v147 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v146 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v146)
    {
      atomic_fetch_add_explicit(&v146->__shared_owners_, 1uLL, memory_order_relaxed);
      v148 = *v147;
      std::__shared_weak_count::__release_shared[abi:ne200100](v146);
    }

    else
    {
      v148 = *v147;
    }

    if (os_log_type_enabled(v148, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 516;
      *&__p[18] = 2080;
      *&__p[20] = "not (is_same_timebase(destination_range.start().get_clock(), destination_range.start().get_clock()))";
      _os_log_error_impl(&dword_1DE1F9000, v148, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v272);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v219, "", v176);
    std::logic_error::logic_error(&v214, &v219);
    v214.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(&v235, &v214);
    *&v236[16] = 0;
    *&v236[8] = 0;
    *&v237 = 0;
    DWORD2(v237) = -1;
    v235.__vftable = &unk_1F5991430;
    *v236 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v235);
    *&__p[32] = "Process_Range_Results AMCP::Graph::process_variable_size_range(Buffer_Alignment, const Cross_Timebase_Processor &, const AMCP::DAL::Buffer_Time_Translator::Translation_Range &, AMCP::DAL::Writable_Range &, DAL::DAL_Time_Range, const DAL::Container, DAL::Container)";
    *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v267) = 516;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v242);
  }

  v85 = v189;
  v86 = v190;
  if (v190)
  {
    atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v183 = v188;
  v87 = *(&v188 + 1);
  if (*(&v188 + 1))
  {
    atomic_fetch_add_explicit((*(&v188 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v185 = v87;
  AMCP::DAL::DAL_Timed_Segment::translate_range(&v253, *(v187 + 80), &v191);
  if (0xAAAAAAAAAAAAAAABLL * ((v254 - v253) >> 5) >= 2)
  {
    v184 = v86;
    v88 = (*(*a4 + 40))(a4);
    memset(&__p[8], 0, 32);
    *__p = 0;
    LODWORD(v267) = 0;
    (*(*v88 + 96))(v88, __p, &v191, 0);
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    v242 = v191;
    v243 = v192;
    if (*(&v192 + 1))
    {
      atomic_fetch_add_explicit((*(&v192 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v244 = v193;
    v245 = v194;
    v246 = v195;
    if (*(&v195 + 1))
    {
      atomic_fetch_add_explicit((*(&v195 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    (*(*v88 + 160))(&v247, v88, &v242);
    if (*(&v246 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v246 + 1));
    }

    if (*(&v243 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v243 + 1));
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(v241, v252, &v191);
    v90 = v241[0];
    if ((v241[1] - v241[0]) == 96)
    {
      v91 = *(v241[0] + 1);
      v92 = *(v241[0] + 4);
      v93 = *(v241[0] + 5);
      v235 = *v241[0];
      *v236 = v91;
      *&v236[16] = v92;
      *&v237 = v93;
      v94 = *(v241[0] + 6);
      *(&v237 + 1) = v94;
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v95 = *(v90 + 9);
      v96 = *(v90 + 10);
      *v238 = *(v90 + 7);
      *&v238[16] = v95;
      v239 = v96;
      v97 = *(v90 + 11);
      v240 = v97;
      if (v97)
      {
        atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v234 = v235;
      (*(*v88 + 56))(&v232, v88);
      v230 = v85;
      v231 = v184;
      if (v184)
      {
        atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v228 = v232;
      v229 = v233;
      if (v233)
      {
        atomic_fetch_add_explicit(&v233->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*a4 + 16))(__p, a4, &v230, v50, &v228, &v234);
      v98 = *__p;
      v99 = *&__p[8];
      v100 = *&__p[16];
      if (v229)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v229);
      }

      if (v231)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v231);
      }

      v101 = AMCP::DAL::DAL_Time::get_sample_time(&v191);
      v103 = round(AMCP::DAL::DAL_Time::get_sample_time(&v193) - v101);
      v104 = round(v100 - v99);
      if (v103 != v104)
      {
        v153 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v153 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v102);
        }

        v155 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v154 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v154)
        {
          atomic_fetch_add_explicit(&v154->__shared_owners_, 1uLL, memory_order_relaxed);
          v156 = *v155;
          std::__shared_weak_count::__release_shared[abi:ne200100](v154);
        }

        else
        {
          v156 = *v155;
        }

        if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315650;
          *&__p[4] = "Converter.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 466;
          *&__p[18] = 2080;
          *&__p[20] = "not (destination_range.get_range().length() == processed_range.length())";
          _os_log_error_impl(&dword_1DE1F9000, v156, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v256);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(v272, "", v178);
        std::logic_error::logic_error(v224, v272);
        *v224 = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v219, v224);
        v220 = 0uLL;
        *&v221 = 0;
        DWORD2(v221) = -1;
        v219.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v219.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v219);
        *&__p[32] = "Process_Range_Results AMCP::Graph::process_data_into_destination(const Cross_Timebase_Processor &, const DAL::DAL_Time_Range &, const AMCP::DAL::Buffer_Time_Translator::Translation_Range &, AMCP::DAL::Writable_Range &, const DAL::Container, DAL::Container)";
        *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
        DWORD2(v267) = 466;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v259);
      }

      if (round(*&v235.__imp_.__imp_ - *&v235.__vftable) != v104)
      {
        v157 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v157 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v102);
        }

        v159 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v158 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v158)
        {
          atomic_fetch_add_explicit(&v158->__shared_owners_, 1uLL, memory_order_relaxed);
          v160 = *v159;
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
        }

        else
        {
          v160 = *v159;
        }

        if (os_log_type_enabled(v160, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315650;
          *&__p[4] = "Converter.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 467;
          *&__p[18] = 2080;
          *&__p[20] = "not (temp_buffer_translated_range.m_local_range.length() == processed_range.length())";
          _os_log_error_impl(&dword_1DE1F9000, v160, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", __p, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v256);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(v272, "", v179);
        std::logic_error::logic_error(v224, v272);
        *v224 = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v219, v224);
        v220 = 0uLL;
        *&v221 = 0;
        DWORD2(v221) = -1;
        v219.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v219.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v219);
        *&__p[32] = "Process_Range_Results AMCP::Graph::process_data_into_destination(const Cross_Timebase_Processor &, const DAL::DAL_Time_Range &, const AMCP::DAL::Buffer_Time_Translator::Translation_Range &, AMCP::DAL::Writable_Range &, const DAL::Container, DAL::Container)";
        *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
        DWORD2(v267) = 467;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v259);
      }

      (*(*v88 + 56))(&v227, v88);
      *__p = v235;
      *&__p[16] = *v236;
      *&__p[32] = *&v236[16];
      *&v267 = v93;
      *(&v267 + 1) = v94;
      if (v94)
      {
        atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *v268 = *v238;
      *&v268[16] = *&v238[16];
      v269 = v96;
      v270 = v97;
      if (v97)
      {
        atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v271 = v227;
      v227 = 0uLL;
      *&v224[8] = 0u;
      v225 = 0u;
      *v224 = v98;
      v226 = 0;
      AMCP::DAL::Writable_Range::commit_direct_write(v252, v224, __p);
      v214 = v191;
      v215 = v192;
      if (*(&v192 + 1))
      {
        atomic_fetch_add_explicit((*(&v192 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v216 = v193;
      v217 = v194;
      v218 = v195;
      if (*(&v195 + 1))
      {
        atomic_fetch_add_explicit((*(&v195 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v88 + 144))(&v219, v88, &v214);
      v86 = v184;
      v105 = AMCP::DAL::DAL_Time::operator<(&v221, &v219);
      if (v105)
      {
        v161 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v161 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v105);
        }

        v163 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v162 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v162)
        {
          atomic_fetch_add_explicit(&v162->__shared_owners_, 1uLL, memory_order_relaxed);
          v164 = *v163;
          std::__shared_weak_count::__release_shared[abi:ne200100](v162);
        }

        else
        {
          v164 = *v163;
        }

        if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
        {
          *v272 = 136315650;
          *&v272[4] = "DAL_Timed_Segment.cpp";
          *&v272[12] = 1024;
          *&v272[14] = 181;
          *&v272[18] = 2080;
          *&v272[20] = "not (incoming_data.get_time_range().end() >= incoming_data.get_time_range().start())";
          _os_log_error_impl(&dword_1DE1F9000, v164, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Writable_Range::RecieveData: Bad time range", v272, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v265);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v257, "Writable_Range::RecieveData: Bad time range", v180);
        std::logic_error::logic_error(&v258, &v257);
        v258.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v259, &v258);
        v262 = 0;
        v261 = 0;
        v263 = 0;
        v264 = -1;
        v259.__vftable = &unk_1F5991430;
        v260 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v272, &v259);
        v273 = "void AMCP::DAL::Writable_Range::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
        v274 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v275 = 181;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v255);
      }

      AMCP::DAL::DAL_Time::operator-(v272, &v193, &v191);
      AMCP::DAL::DAL_Time::operator-(&v259, &v221, &v219);
      v106 = AMCP::DAL::DAL_Time_Delta::operator==(v272, &v259);
      if (v262)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v262);
      }

      v107 = v273;
      if (v273)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v273);
      }

      if (!v106)
      {
        v165 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v165 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v107);
        }

        v167 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v166 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v166)
        {
          atomic_fetch_add_explicit(&v166->__shared_owners_, 1uLL, memory_order_relaxed);
          v168 = *v167;
          std::__shared_weak_count::__release_shared[abi:ne200100](v166);
        }

        else
        {
          v168 = *v167;
        }

        if (os_log_type_enabled(v168, OS_LOG_TYPE_ERROR))
        {
          *v272 = 136315650;
          *&v272[4] = "DAL_Timed_Segment.cpp";
          *&v272[12] = 1024;
          *&v272[14] = 182;
          *&v272[18] = 2080;
          *&v272[20] = "not (write_range.length() == incoming_data.get_time_range().length())";
          _os_log_error_impl(&dword_1DE1F9000, v168, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v272, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v265);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v257, "", v181);
        std::logic_error::logic_error(&v258, &v257);
        v258.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v259, &v258);
        v262 = 0;
        v261 = 0;
        v263 = 0;
        v264 = -1;
        v259.__vftable = &unk_1F5991430;
        v260 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v272, &v259);
        v273 = "void AMCP::DAL::Writable_Range::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
        v274 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
        v275 = 182;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v255);
      }

      (*(**(v187 + 80) + 32))(*(v187 + 80), v224, &v219, &v191);
      if (*(&v223 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v223 + 1));
      }

      if (*(&v220 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v220 + 1));
      }

      if (*(&v218 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v218 + 1));
      }

      if (*(&v215 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v215 + 1));
      }

      if (SBYTE7(v225) < 0)
      {
        operator delete(*&v224[8]);
      }

      if (*(&v271 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v271 + 1));
      }

      if (v270)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v270);
      }

      if (*(&v267 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v267 + 1));
      }

      if (v233)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v233);
      }

      if (v97)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v97);
      }

      if (v94)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v94);
      }

      *__p = v241;
      std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](__p);
      if (*(&v251 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v251 + 1));
      }

      v108 = *(&v248 + 1);
      if (!*(&v248 + 1))
      {
        goto LABEL_229;
      }

LABEL_228:
      std::__shared_weak_count::__release_shared[abi:ne200100](v108);
      goto LABEL_229;
    }

LABEL_287:
    v149 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v149 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v89);
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
      *__p = 136315650;
      *&__p[4] = "Converter.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 456;
      *&__p[18] = 2080;
      *&__p[20] = "not (temp_buffer_translated_ranges.size() == 1)";
      _os_log_error_impl(&dword_1DE1F9000, v152, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s temp_buffer local range needs to be contiguous!", __p, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v224);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v214, "temp_buffer local range needs to be contiguous!", v177);
    std::logic_error::logic_error(&v259, &v214);
    v259.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v235, &v259);
    *&v236[16] = 0;
    *&v236[8] = 0;
    *&v237 = 0;
    DWORD2(v237) = -1;
    v235.__vftable = &unk_1F5991430;
    *v236 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v235);
    *&__p[32] = "Process_Range_Results AMCP::Graph::process_data_into_destination(const Cross_Timebase_Processor &, const DAL::DAL_Time_Range &, const AMCP::DAL::Buffer_Time_Translator::Translation_Range &, AMCP::DAL::Writable_Range &, const DAL::Container, DAL::Container)";
    *&v267 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Converter.cpp";
    DWORD2(v267) = 456;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v272);
  }

  if (v254 - v253 != 96)
  {
    goto LABEL_286;
  }

  v219.__r_.__value_.__r.__words[0] = v85;
  v219.__r_.__value_.__l.__size_ = v86;
  if (v86)
  {
    atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v242.__r_.__value_.__l.__data_ = v183;
  if (v185)
  {
    atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a4 + 16))(__p, a4, &v219, v50, &v242);
  v109 = *__p;
  v182 = *&__p[8];
  if (v242.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v242.__r_.__value_.__l.__size_);
  }

  if (v219.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v219.__r_.__value_.__l.__size_);
  }

  v110 = v253;
  if (v254 == v253)
  {
LABEL_286:
    v89 = CAAssertRtn();
    goto LABEL_287;
  }

  v112 = *(v253 + 4);
  v111 = *(v253 + 5);
  *v236 = *(v253 + 1);
  *&v236[16] = v112;
  *&v237 = v111;
  v113 = *(v253 + 6);
  *(&v237 + 1) = v113;
  if (v113)
  {
    atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v115 = *(v110 + 9);
  v114 = *(v110 + 10);
  *v238 = *(v110 + 7);
  *&v238[16] = v115;
  v239 = v114;
  v116 = *(v110 + 11);
  v240 = v116;
  if (v116)
  {
    atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v235 = v182;
  if (v185)
  {
    atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *__p = v235;
  *&__p[16] = *v236;
  *&__p[32] = *&v236[16];
  *&v267 = v111;
  *(&v267 + 1) = v113;
  if (v113)
  {
    atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *v268 = *v238;
  *&v268[16] = *&v238[16];
  v269 = v114;
  v270 = v116;
  if (v116)
  {
    atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v271 = v183;
  *&v247.__r_.__value_.__r.__words[1] = 0u;
  v248 = 0u;
  LODWORD(v247.__r_.__value_.__l.__data_) = v109;
  LODWORD(v249) = 0;
  AMCP::DAL::Writable_Range::commit_direct_write(*(v187 + 80), &v247, __p);
  if (SBYTE7(v248) < 0)
  {
    operator delete(v247.__r_.__value_.__l.__size_);
  }

  if (*(&v271 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v271 + 1));
  }

  if (v270)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v270);
  }

  if (*(&v267 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v267 + 1));
  }

  if (v116)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v116);
  }

  if (v113)
  {
    v108 = v113;
    goto LABEL_228;
  }

LABEL_229:
  *__p = &v253;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v185)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v185);
  }

  if (v86)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v86);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  if (*(&v188 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v188 + 1));
  }

  if (v190)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v190);
  }

  if (*(&v195 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v195 + 1));
  }

  if (*(&v192 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v192 + 1));
  }

  *__p = v196;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (*(&v201 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v201 + 1));
  }

  if (*(&v198 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v198 + 1));
  }

  if (v203 == 1)
  {
    *__p = &v202;
    std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](__p);
  }
}

void sub_1DE4B4F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (STACK[0x310])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x310]);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a55);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a21);
  STACK[0x4D0] = &a32;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4D0]);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a35);
  if (a48 == 1)
  {
    STACK[0x4D0] = &a45;
    std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x4D0]);
  }

  _Unwind_Resume(a1);
}

void AMCP::DAL::Writable_Range::Direct_Write_Range::~Direct_Write_Range(AMCP::DAL::Writable_Range::Direct_Write_Range *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void AMCP::DAL::Buffer_Time_Translator::Translation_Range::~Translation_Range(AMCP::DAL::Buffer_Time_Translator::Translation_Range *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

__n128 AMCP::DAL::DAL_Settings::at_or<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(__n128 *a1, void *a2, void *a3, __n128 *a4)
{
  v6 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a2, a3);
  if (v6)
  {

    AMCP::Thing::convert_to<std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>(a1, (v6 + 5));
  }

  else
  {
    result = *a4;
    *a1 = *a4;
    a4->n128_u64[0] = 0;
    a4->n128_u64[1] = 0;
  }

  return result;
}

double caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::load(uint64_t a1, unsigned int *a2)
{
  v16 = 0;
  v3 = atomic_load(a2);
  if ((v3 & 2) != 0)
  {
    v5 = a2 + 16;
    while (1)
    {
      v6 = (v3 >> 2) & 1;
      v7 = &v5[48 * ((v3 & 4) == 0)];
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      if ((explicit & 1) == 0 || (v7 = &v5[48 * v6], explicit = atomic_load_explicit(v7, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v9 = *(v7 + 30);
        *(a1 + 96) = *(v7 + 26);
        *(a1 + 112) = v9;
        v10 = *(v7 + 38);
        *(a1 + 128) = *(v7 + 34);
        *(a1 + 144) = v10;
        v11 = *(v7 + 14);
        *(a1 + 32) = *(v7 + 10);
        *(a1 + 48) = v11;
        v12 = *(v7 + 22);
        *(a1 + 64) = *(v7 + 18);
        *(a1 + 80) = v12;
        v13 = *(v7 + 2);
        v14 = *(v7 + 6);
        *a1 = v13;
        *(a1 + 16) = v14;
        __dmb(9u);
        if (explicit == atomic_load_explicit(v7, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v16);
      v3 = atomic_load(a2);
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *a1 = 1065353216;
    *&v13 = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
    *(a1 + 64) = 1;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0;
    *(a1 + 128) = 1;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  return *&v13;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5973448;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5973448;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_2,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_2>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5973448;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F59733B8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59733B8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_1,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__func(void *a1)
{
  *a1 = &unk_1F59733B8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZNK4AMCP5Graph9Converter8get_procEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::operator()(AMCP::Graph::File_Capture_Settings *a1)
{
  v29[9] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 1);
  v2 = *(v1 + 208);
  *(v1 + 208) = v2 + 1;
  if (!v2)
  {
    AMCP::Graph::File_Capture_Settings::instance(a1);
    if (HIBYTE(AMCP::Graph::File_Capture_Settings::instance(void)::s_instance) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v11, "write");
      v12 = 0u;
      v13 = 0u;
      LOBYTE(v12) = 1;
      v14 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v15, "create unique name");
      v16 = 0u;
      v17 = 0u;
      LOBYTE(v16) = 1;
      v18 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      std::string::basic_string[abi:ne200100]<0>(v19, "write time stamps");
      v20 = 0u;
      v21 = 0u;
      LOBYTE(v20) = 1;
      v22 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
      get_audio_capture_folder(__p);
      std::string::basic_string[abi:ne200100]<0>(v23, "file location");
      v24 = *__p;
      v25 = v8;
      v26 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v8 = 0;
      v27 = AMCP::Implementation::In_Place_Storage<std::string>::dispatch;
      std::pair<std::string,AMCP::Thing>::pair[abi:ne200100]<char const* const&,std::string const&,0>(v28, "name", (v1 + 16));
      asbd_to_dictionary(&cf, (v1 + 168));
      std::string::basic_string[abi:ne200100]<0>(v29, "asbd");
      v29[3] = cf;
      memset(&v29[4], 0, 24);
      cf = 0;
      v29[7] = AMCP::Implementation::In_Place_Storage<applesauce::CF::DictionaryRef>::dispatch;
      v9[0] = v11;
      v9[1] = 6;
      AMCP::DAL::DAL_Settings::DAL_Settings(v10, v9);
      v3 = 48;
      while (1)
      {
        v4 = &v11[v3];
        v5 = v10[v3 + 6];
        if (v5)
        {
          v5(0, v4 - 5, 0, 0);
        }

        if (*(v4 - 41) < 0)
        {
          operator delete(*(v4 - 8));
        }

        v3 -= 8;
        if (!(v3 * 8))
        {
          if (cf)
          {
            CFRelease(cf);
          }

          if (SHIBYTE(v8) < 0)
          {
            operator delete(__p[0]);
          }

          std::allocate_shared[abi:ne200100]<AMCP::DAL::File,std::allocator<AMCP::DAL::File>,CA::StreamDescription const&,AMCP::DAL::DAL_Settings &,0>(v11, v1 + 168, v10);
        }
      }
    }
  }
}

void sub_1DE4B5EA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5973338;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5973338;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Converter::get_proc(void)::$_0,std::allocator<AMCP::Graph::Converter::get_proc(void)::$_0>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5973338;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_emplace<AMCP::Graph::Node_Proc>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 368);
  if (v2)
  {
    std::function<void ()>::operator()(v2, 0);
  }

  v3 = *(a1 + 608);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 568);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 536);
  std::__function::__value_func<unsigned long long ()(unsigned long long,unsigned long long &)>::~__value_func[abi:ne200100](a1 + 504);
  std::__function::__value_func<unsigned long long ()(unsigned long long)>::~__value_func[abi:ne200100](a1 + 472);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](a1 + 440);
  std::__function::__value_func<long long ()(void)>::~__value_func[abi:ne200100](a1 + 408);
  std::__function::__value_func<void ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](a1 + 376);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 344);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 312);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](a1 + 280);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](a1 + 248);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](a1 + 216);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 184);
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a1 + 152);
  std::__function::__value_func<std::shared_ptr<AMCP::IO_Core::Device_Connection> ()(void)>::~__value_func[abi:ne200100](a1 + 120);
  std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::~__value_func[abi:ne200100](a1 + 88);
  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__value_func[abi:ne200100](a1 + 56);

  return std::__function::__value_func<void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__value_func[abi:ne200100](a1 + 24);
}

uint64_t std::__function::__value_func<void ()(unsigned long,unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<AMCP::Graph::Node_Proc>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5988158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t CAStreamRangedDescription::Sorter(CAStreamRangedDescription *this, const AudioStreamRangedDescription *a2, const AudioStreamRangedDescription *a3)
{
  v3 = *(this + 2);
  v4 = v3 != 0;
  mFormatID = a2->mFormat.mFormatID;
  if (!v3)
  {
    v10 = 0;
LABEL_22:
    v6 = v3 == 1819304813;
    v8 = mFormatID == 1819304813;
    goto LABEL_23;
  }

  v6 = v3 == 1819304813;
  if (mFormatID)
  {
    v7 = v3 == mFormatID;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v12 = mFormatID != 1819304813 && v3 < mFormatID;
    v10 = v3 == 1819304813 || v12;
    goto LABEL_22;
  }

  v8 = mFormatID == 1819304813;
  if (v3 == 1819304813 && mFormatID == 1819304813)
  {
    mFormatFlags = a2->mFormat.mFormatFlags;
    v4 = (mFormatFlags & 0x40) == 0;
    if ((*(this + 12) & 0x40) != 0)
    {
      v10 = 0;
      v8 = 1;
    }

    else
    {
      v8 = 1;
      if ((mFormatFlags & 0x40) != 0)
      {
        return v8 & 1;
      }

      v10 = 0;
      v4 = 0;
    }

    v6 = 1;
  }

  else
  {
    v10 = 0;
    v4 = 0;
  }

LABEL_23:
  v14 = !v6 || v4 || v8 == 0;
  if (!v14 && (*(this + 3) & 1) != (a2->mFormat.mFormatFlags & 1))
  {
    v10 = a2->mFormat.mFormatFlags;
    LOBYTE(v4) = 1;
  }

  LOBYTE(v8) = v10;
  if (!v4)
  {
    v8 = *(this + 8);
    if (!v8 || (mBitsPerChannel = a2->mFormat.mBitsPerChannel, v16 = v8 == mBitsPerChannel, LOBYTE(v8) = v8 > mBitsPerChannel, !mBitsPerChannel) || v16)
    {
      v17 = *(this + 5);
      if (v17 != 0.0)
      {
        v18 = *(this + 6);
        if (v18 != 0.0)
        {
          mMinimum = a2->mSampleRateRange.mMinimum;
          if (mMinimum != 0.0)
          {
            mMaximum = a2->mSampleRateRange.mMaximum;
            if (mMaximum != 0.0)
            {
              if (v18 < mMinimum)
              {
                if (v17 >= mMinimum)
                {
                  LOBYTE(v8) = 1;
                  return v8 & 1;
                }

                goto LABEL_55;
              }

              if (v17 < mMinimum && v18 >= mMinimum && v18 <= mMaximum || v17 < mMinimum && v18 > mMaximum || v17 != mMinimum || v18 != mMaximum)
              {
                if (v17 >= mMinimum)
                {
                  LOBYTE(v8) = v18 != mMaximum || v17 != mMinimum;
                  return v8 & 1;
                }

LABEL_55:
                LOBYTE(v8) = 0;
                return v8 & 1;
              }
            }
          }
        }
      }

      v22 = *this;
      if (*this == 0.0 || (mSampleRate = a2->mFormat.mSampleRate, a2->mFormat.mSampleRate == 0.0) || v22 == mSampleRate)
      {
        v8 = *(this + 7);
        if (v8)
        {
          mChannelsPerFrame = a2->mFormat.mChannelsPerFrame;
          v7 = v8 == mChannelsPerFrame;
          LOBYTE(v8) = v8 < mChannelsPerFrame;
          if (v7 || mChannelsPerFrame == 0)
          {
            LOBYTE(v8) = v10;
          }
        }

        else
        {
          LOBYTE(v8) = v10;
        }
      }

      else
      {
        LOBYTE(v8) = v22 > mSampleRate;
      }
    }
  }

  return v8 & 1;
}

uint64_t HALS_IOProcessorFactory::dsp_processor_factory_worker(HALS_IOProcessorFactory *this)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F5973950;
  v2[3] = v2;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
}

void sub_1DE4B66AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StaticContainer<anonymous namespace::FactoryStaticsObjects>::init_statics(uint64_t a1)
{
  {
    v9 = &v7;
    v8 = &v9;
  }

  if ((v2 & 1) == 0)
  {
    v3 = atomic_load(StaticContainerBase::s_statics_initializable);
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        v6 = *(a1 + 24);
        if (!v6)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v6 + 48))(v6);
      }

      std::mutex::unlock(v4);
    }
  }
}

uint64_t anonymous namespace::DSP_IOProcessorFactory::owning_engine_info(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    __assert_rtn("owning_engine_info", "HALS_IOProcessorFactory.cpp", 501, "engine_index.has_value()");
  }

  v4 = *(a2 + 112);
  if (a3 >= (*(a2 + 120) - v4) >> 7)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  return *(v4 + (a3 << 7));
}

void anonymous namespace::DSP_IOProcessorFactory::set_processor(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    __assert_rtn("set_processor", "HALS_IOProcessorFactory.cpp", 486, "engine_index.has_value()");
  }

  v5 = *(a2 + 112);
  if (a4 >= (*(a2 + 120) - v5) >> 7)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  *(v5 + (a4 << 7) + 104) = a3;
}

void *anonymous namespace::DSP_IOProcessorFactory::set_initial_volume(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a5 & 1) == 0)
  {
    __assert_rtn("set_initial_volume", "HALS_IOProcessorFactory.cpp", 471, "engine_index.has_value()");
  }

  v7 = **((*(*a1 + 72))(a1, a3, a4, a5) + 88);
  (*(v7 + 280))();
  v8 = *(a3 + 112);
  if (a4 >= (*(a3 + 120) - v8) >> 7)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  return HALS_IOProcessor::Volume_RampTo(*(v8 + (a4 << 7) + 104));
}

uint64_t anonymous namespace::DSP_IOProcessorFactory::io_processor_custom_unit(uint64_t a1, void *a2, unint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    __assert_rtn("io_processor_custom_unit", "HALS_IOProcessorFactory.cpp", 457, "engine_index.has_value()");
  }

  v4 = a2[14];
  if (a3 >= (a2[15] - v4) >> 7)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = v4 + (a3 << 7);
  v8 = a2[22];
  v6 = a2 + 22;
  v7 = v8;
  if (v8)
  {
    v9 = v6;
    do
    {
      v10 = *(v7 + 28);
      v11 = v10 >= 6;
      v12 = v10 < 6;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *(v7 + 8 * v12);
    }

    while (v7);
    if (v9 != v6)
    {
      v13 = *(v9 + 7) <= 6u && *(v5 + 100) == 0;
      if (v13 && !*(v5 + 112))
      {
        operator new();
      }
    }
  }

  return *(v5 + 112);
}

void sub_1DE4B6B74(_Unwind_Exception *a1)
{
  v4 = *(v2 + 144);
  if (v4)
  {
    *(v2 + 152) = v4;
    operator delete(v4);
  }

  std::__function::__value_func<void ()(AudioBufferList *,AudioBufferList *,unsigned int)>::~__value_func[abi:ne200100](v2 + 32);
  MEMORY[0x1E12C1730](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::DSP_IOProcessorFactory::is_reference_stream(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    __assert_rtn("is_reference_stream", "HALS_IOProcessorFactory.cpp", 429, "engine_index.has_value()");
  }

  v6 = *(a2 + 112);
  if (a3 >= (*(a2 + 120) - v6) >> 7)
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = **((*(*a1 + 72))(a1, a2, a3) + 88);
  result = (*(v7 + 336))();
  if (result)
  {
    result = HALS_IODevice::CopyStreamByIndex(result, *(a2 + 8), *(v6 + (a3 << 7) + 96));
    if (result)
    {
      if (*(result + 56) == 1)
      {
        return 1;
      }

      else
      {

        return HALS_Stream::IsHardwareReferenceStream(result);
      }
    }
  }

  return result;
}

double anonymous namespace::DSP_IOProcessorFactory::local_format@<D0>(uint64_t a1@<X1>, unsigned int a2@<W2>, char a3@<W3>, uint64_t a4@<X8>)
{
  if ((a3 & 1) == 0)
  {
    __assert_rtn("local_format", "HALS_IOProcessorFactory.cpp", 395, "engine_index.has_value()");
  }

  if (*(a1 + 108))
  {
    v4 = *(a1 + 112);
    if (a2 >= ((*(a1 + 120) - v4) >> 7))
    {
      *(a4 + 32) = 0;
      *&v6 = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return *&v6;
    }

    v5 = v4 + (a2 << 7);
    v6 = *(v5 + 56);
    v7 = *(v5 + 72);
    *a4 = v6;
    *(a4 + 16) = v7;
    v8 = *(v5 + 88);
  }

  else
  {
    v6 = *(a1 + 416);
    v9 = *(a1 + 432);
    *a4 = v6;
    *(a4 + 16) = v9;
    v8 = *(a1 + 448);
  }

  *(a4 + 32) = v8;
  return *&v6;
}

uint64_t anonymous namespace::DSP_IOProcessorFactory::allocate_output_processor(_anonymous_namespace_::DSP_IOProcessorFactory *this, const HALS_IOProcessorFactory *a2, HALS_IOStreamInfo *a3, const HALS_IOStackDescription *a4)
{
  if (*(a3 + 15) != *(a3 + 14))
  {
    v8 = 0;
    do
    {
      HALS_IOProcessorFactoryWorker::do_allocate_processor(this, a2, a3, v8++, 1, a4);
    }

    while (v8 < (*(a3 + 15) - *(a3 + 14)) >> 7);
  }

  return 0;
}

uint64_t HALS_IOProcessorFactoryWorker::do_allocate_processor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, HALS_IOStackDescription *a6)
{
  v26 = *MEMORY[0x1E69E9840];
  result = (*(*a1 + 72))(a1, a3, a4, a5);
  if (*(result + 88) && *(a2 + 8))
  {
    memset(&v20, 0, sizeof(v20));
    (*(*a1 + 32))(&v20, a1, a3, a4, a5);
    v12 = *(a2 + 8);
    if (a6)
    {
      memset(&v19, 0, sizeof(v19));
      HALS_IOStackDescription::GetFormat(a6, &v19);
      v13 = *(a2 + 8);
    }

    else
    {
      v19 = v20;
      v13 = v12;
    }

    v19.mSampleRate = (*(**(v13 + 88) + 344))(*(v13 + 88));
    if (*(a2 + 16))
    {
      v14 = (*(**(*(a2 + 8) + 88) + 344))(*(*(a2 + 8) + 88));
      if (v14 != v20.mSampleRate)
      {
        v16 = HALS_ObjectMap::CopyObjectByObjectID(*(a2 + 16));
        if (v16)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v17 = *(a2 + 20);
            buf[0] = 136315650;
            *&buf[1] = "HALS_IOProcessorFactory.cpp";
            v22 = 1024;
            v23 = 311;
            v24 = 1024;
            v25 = v17;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOProcessorFactoryWorker::do_allocate_processor: sample rate conversion no longer enables drift correction by default [IOC: %u]", buf, 0x18u);
          }
        }

        HALS_ObjectMap::ReleaseObject(v16, v15);
      }
    }

    (*(*a1 + 40))(a1, a3, a4, a5);
    (*(*a1 + 48))(a1, a3, a4, a5);
    operator new();
  }

  return result;
}

void sub_1DE4B72DC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::DSP_IOProcessorFactory::allocate_processor(_anonymous_namespace_::DSP_IOProcessorFactory *this, const HALS_IOProcessorFactory *a2, HALS_IOStreamInfo *a3)
{
  v103[19] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 14);
  v80 = (a3 + 112);
  v6 = *(a3 + 15);
  if (v6 != v5)
  {
    v8 = this;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = v5 + v9;
      if (*(v5 + v9 + 100) == 4)
      {
        *(v11 + 104) = 0;
        *(v11 + 112) = 0;
      }

      else
      {
        v3 = v3 & 0xFFFFFFFFFFFFFF00 | 1;
        this = HALS_IOProcessorFactoryWorker::do_allocate_processor(v8, a2, a3, v10, v3, 0);
        v5 = *(a3 + 14);
        v6 = *(a3 + 15);
      }

      ++v10;
      v9 += 128;
    }

    while (v10 < (v6 - v5) >> 7);
  }

  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23))
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v87);
      v79 = v15;
      if (*(a3 + 23) == 1)
      {
        v16 = a3 + 176;
        v17 = *(a3 + 22);
        if (!v17)
        {
          goto LABEL_23;
        }

        v18 = a3 + 176;
        do
        {
          v19 = *(v17 + 7);
          v20 = v19 >= 9;
          v21 = v19 < 9;
          if (v20)
          {
            v18 = v17;
          }

          v17 = *&v17[8 * v21];
        }

        while (v17);
        if (v18 == v16 || *(v18 + 7) >= 0xAu)
        {
LABEL_23:
          v18 = a3 + 176;
        }

        v84 = v16 != v18;
      }

      else
      {
        v84 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "[hal_dsp] HALS_IODSPInfo::GetDebugDescription() ", 48);
      v22 = MEMORY[0x1E12C11C0](&v88, v80);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ":", 1);
      std::ios_base::getloc((v22 + *(*v22 - 24)));
      v23 = std::locale::use_facet(v100, MEMORY[0x1E69E5318]);
      (v23->__vftable[2].~facet_0)(v23, 10);
      std::locale::~locale(v100);
      std::ostream::put();
      std::ostream::flush();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "[hal_dsp] Adapted: ", 19);
      if (*(a3 + 272))
      {
        v24 = "OK";
      }

      else
      {
        v24 = "PENDING/FAILED";
      }

      if (*(a3 + 272))
      {
        v25 = 2;
      }

      else
      {
        v25 = 14;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, v24, v25);
      if (*(a3 + 273))
      {
        v26 = " (bypass)";
      }

      else
      {
        v26 = "";
      }

      if (*(a3 + 273))
      {
        v27 = 9;
      }

      else
      {
        v27 = 0;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, v26, v27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, " | Frame Count: ", 16);
      v28 = MEMORY[0x1E12C1210](&v88, *(a3 + 69));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " | Isolated Use Case ID: ", 25);
      if (*(a3 + 228) == 1)
      {
        v29.i32[0] = bswap32(*(a3 + 56));
        v30 = vzip1_s8(v29, v29);
        v31.i64[0] = 0x1F0000001FLL;
        v31.i64[1] = 0x1F0000001FLL;
        v32.i64[0] = 0x5F0000005FLL;
        v32.i64[1] = 0x5F0000005FLL;
        v33 = vbsl_s8(vmovn_s32(vcgtq_u32(v32, vsraq_n_s32(v31, vshlq_n_s32(vmovl_u16(v30), 0x18uLL), 0x18uLL))), v30, 0x2E002E002E002ELL);
        v34 = 4;
        v100[23] = 4;
        *v100 = vuzp1_s8(v33, v33).u32[0];
        v100[4] = 0;
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(v100, "N/A");
        v34 = v100[23];
      }

      if ((v34 & 0x80u) == 0)
      {
        v35 = v100;
      }

      else
      {
        v35 = *v100;
      }

      if ((v34 & 0x80u) == 0)
      {
        v36 = v34;
      }

      else
      {
        v36 = *&v100[8];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v35, v36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " | DSP Offloads: ", 17);
      v37 = *(a3 + 24);
      if (v37)
      {
        DSP_Host_OffloadDictionary::get_debug_string(__p, v37);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "N/A");
      }

      if ((SBYTE7(v94) & 0x80u) == 0)
      {
        v38 = __p;
      }

      else
      {
        v38 = __p[0];
      }

      if ((SBYTE7(v94) & 0x80u) == 0)
      {
        v39 = BYTE7(v94);
      }

      else
      {
        v39 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v38, v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " | Latency: ", 12);
      if (*(a3 + 164) == 1)
      {
        std::to_string(&v99, *(a3 + 40));
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v99, "(missing)");
      }

      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &v99;
      }

      else
      {
        v40 = v99.__r_.__value_.__r.__words[0];
      }

      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v99.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v40, size);
      std::ios_base::getloc((v28 + *(*v28 - 24)));
      v42 = std::locale::use_facet(&v98, MEMORY[0x1E69E5318]);
      (v42->__vftable[2].~facet_0)(v42, 10);
      std::locale::~locale(&v98);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v94) < 0)
      {
        operator delete(__p[0]);
      }

      if ((v100[23] & 0x80000000) != 0)
      {
        operator delete(*v100);
      }

      v43 = *(a3 + 14);
      v44 = *(a3 + 15);
      if (v43 != v44)
      {
        v45 = 0;
        v46 = v43 + 56;
        v82 = *(MEMORY[0x1E69E54D8] + 64);
        v83 = *MEMORY[0x1E69E54D8];
        v81 = *(MEMORY[0x1E69E54D8] + 72);
        do
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "[hal_dsp] ", 10);
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v100);
          CA::StreamDescription::AsString(&v99, v46, v47, v48);
          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v98, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
            if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v97, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
              goto LABEL_78;
            }
          }

          else
          {
            v98 = v99;
          }

          v97 = v99;
LABEL_78:
          v49 = *(v46 + 48);
          if (v49)
          {
            v50 = *(v49 + 40);
            *__p = *(v49 + 24);
            v94 = v50;
            v95 = *(v49 + 56);
            CA::StreamDescription::AsString(&v96, __p, *__p, *&v50);
            if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v98.__r_.__value_.__l.__data_);
            }

            v98 = v96;
            v51 = *(v46 + 48);
            v52 = *(v51 + 80);
            *__p = *(v51 + 64);
            v94 = v52;
            v95 = *(v51 + 96);
            CA::StreamDescription::AsString(&v96, __p, *__p, *&v52);
            if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v97.__r_.__value_.__l.__data_);
            }

            v97 = v96;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100[16], "DSP IO Stream #", 15);
          MEMORY[0x1E12C1220](&v100[16], v45);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100[16], " | device ID ", 13);
          MEMORY[0x1E12C1210](&v100[16], *(v46 - 48));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100[16], " | stream index ", 16);
          MEMORY[0x1E12C1210](&v100[16], *(v46 + 40));
          v53 = "    ";
          if ((*(v46 + 44) - 1) < 2)
          {
            v53 = " (/)";
          }

          if (v84)
          {
            v54 = " (=)";
          }

          else
          {
            v54 = v53;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100[16], v54, 4);
          if (*(v46 + 48))
          {
            if (*(v46 + 56))
            {
              v55 = " (^)";
            }

            else
            {
              v55 = "    ";
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100[16], v55, 4);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100[16], " | shared ", 10);
            if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = &v98;
            }

            else
            {
              v56 = v98.__r_.__value_.__r.__words[0];
            }

            if ((v98.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v57 = HIBYTE(v98.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v57 = v98.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100[16], v56, v57);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100[16], " | local ", 9);
            v58 = HIBYTE(v97.__r_.__value_.__r.__words[2]);
            v60 = v97.__r_.__value_.__l.__size_;
            v59 = v97.__r_.__value_.__r.__words[0];
            v61 = (v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
            v62 = &v97;
          }

          else
          {
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100[16], " | engine ", 10);
            v58 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
            v60 = v99.__r_.__value_.__l.__size_;
            v59 = v99.__r_.__value_.__r.__words[0];
            v61 = (v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
            v62 = &v99;
          }

          if (v61)
          {
            v63 = v59;
          }

          else
          {
            v63 = v62;
          }

          if (v61)
          {
            v64 = v60;
          }

          else
          {
            v64 = v58;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100[16], v63, v64);
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v85, v100);
          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v99.__r_.__value_.__l.__data_);
          }

          *v100 = v83;
          *&v100[*(v83 - 24)] = v82;
          *&v100[16] = v81;
          *&v100[24] = MEMORY[0x1E69E5548] + 16;
          if (v102 < 0)
          {
            operator delete(v101[7].__locale_);
          }

          *&v100[24] = MEMORY[0x1E69E5538] + 16;
          std::locale::~locale(v101);
          std::iostream::~basic_iostream();
          MEMORY[0x1E12C15F0](v103);
          if ((v86 & 0x80u) == 0)
          {
            v65 = v85;
          }

          else
          {
            v65 = v85[0];
          }

          if ((v86 & 0x80u) == 0)
          {
            v66 = v86;
          }

          else
          {
            v66 = v85[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, v65, v66);
          std::ios_base::getloc((&v88 + *(v88 - 24)));
          v67 = std::locale::use_facet(v100, MEMORY[0x1E69E5318]);
          (v67->__vftable[2].~facet_0)(v67, 10);
          std::locale::~locale(v100);
          std::ostream::put();
          std::ostream::flush();
          if (v86 < 0)
          {
            operator delete(v85[0]);
          }

          v68 = v46 + 72;
          v46 += 128;
          ++v45;
        }

        while (v68 != v44);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "[hal_dsp] Client-Facing", 23);
      v69 = MEMORY[0x1E69E54D8];
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, " | format ", 10);
      *&v70 = HALS_IODSPInfo::GetClientFormat(v100, v80).n128_u64[0];
      CA::StreamDescription::AsString(__p, v100, v70, v71);
      if ((SBYTE7(v94) & 0x80u) == 0)
      {
        v72 = __p;
      }

      else
      {
        v72 = __p[0];
      }

      if ((SBYTE7(v94) & 0x80u) == 0)
      {
        v73 = BYTE7(v94);
      }

      else
      {
        v73 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, v72, v73);
      if (SBYTE7(v94) < 0)
      {
        operator delete(__p[0]);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, " | spatial layout ", 18);
      if (*(a3 + 264))
      {
        v74 = "specified";
      }

      else
      {
        v74 = "<empty>";
      }

      if (*(a3 + 264))
      {
        v75 = 9;
      }

      else
      {
        v75 = 7;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, v74, v75);
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__p, v87);
      v87[0] = *v69;
      v76 = v69[9];
      *(v87 + *(v87[0] - 24)) = v69[8];
      v88 = v76;
      v89 = MEMORY[0x1E69E5548] + 16;
      if (v91 < 0)
      {
        operator delete(v90[7].__locale_);
      }

      v89 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v90);
      std::iostream::~basic_iostream();
      MEMORY[0x1E12C15F0](&v92);
      v15 = v79;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "[hal_dsp] HALS_IODSPInfo::GetDebugDescription(): No DSP assigned to this stream.");
    }

    v77 = __p;
    if (SBYTE7(v94) < 0)
    {
      v77 = __p[0];
    }

    *v100 = 136315651;
    *&v100[4] = "HALS_IOProcessorFactory.cpp";
    *&v100[12] = 1024;
    *&v100[14] = 362;
    *&v100[18] = 2081;
    *&v100[20] = v77;
    _os_log_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_DEFAULT, "%32s:%-5d %{private}s", v100, 0x1Cu);
    if (SBYTE7(v94) < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1DE4B7FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::NonDSP_IOProcessorFactory::owning_engine_info(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    __assert_rtn("owning_engine_info", "HALS_IOProcessorFactory.cpp", 494, "not engine_index.has_value()");
  }

  if (!*(a2 + 108) || ((v4 = *(a2 + 112), *(a2 + 120) != v4) ? (v5 = v4 == 0) : (v5 = 1), v5))
  {
    v4 = a2 + 456;
  }

  return *v4;
}

void anonymous namespace::NonDSP_IOProcessorFactory::set_processor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    __assert_rtn("set_processor", "HALS_IOProcessorFactory.cpp", 479, "not engine_index.has_value()");
  }

  *(a2 + 96) = a3;
}

void *anonymous namespace::NonDSP_IOProcessorFactory::set_initial_volume(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    __assert_rtn("set_initial_volume", "HALS_IOProcessorFactory.cpp", 463, "not engine_index.has_value()");
  }

  v6 = **((*(*a1 + 72))(a1, a3, a4, a5) + 88);
  (*(v6 + 280))();
  return HALS_IOProcessor::Volume_RampTo(*(a3 + 96));
}

uint64_t anonymous namespace::NonDSP_IOProcessorFactory::io_processor_custom_unit(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    __assert_rtn("io_processor_custom_unit", "HALS_IOProcessorFactory.cpp", 450, "not engine_index.has_value()");
  }

  return 0;
}

uint64_t anonymous namespace::NonDSP_IOProcessorFactory::is_reference_stream(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    __assert_rtn("is_reference_stream", "HALS_IOProcessorFactory.cpp", 402, "not engine_index.has_value()");
  }

  v6 = *((*(*a1 + 72))(a1, a2, a3) + 88);
  if (!v6)
  {
    return 0;
  }

  DeviceIDFromEngineID = HALS_IOContextDescription::GetDeviceIDFromEngineID(*(v6 + 16), v5);
  v8 = HALS_ObjectMap::CopyObjectByObjectID(DeviceIDFromEngineID);
  v10 = v8;
  if (v8)
  {
    v11 = HALS_IODevice::CopyStreamByIndex(v8, *(a2 + 8), *(a2 + 12));
    v13 = v11;
    if (v11)
    {
      if (*(v11 + 14) == 1)
      {
        IsHardwareReferenceStream = 1;
      }

      else
      {
        IsHardwareReferenceStream = HALS_Stream::IsHardwareReferenceStream(v11);
      }
    }

    else
    {
      IsHardwareReferenceStream = 0;
    }

    HALS_ObjectMap::ReleaseObject(v13, v12);
  }

  else
  {
    IsHardwareReferenceStream = 0;
  }

  HALS_ObjectMap::ReleaseObject(v10, v9);
  return IsHardwareReferenceStream;
}

void sub_1DE4B8378(_Unwind_Exception *a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(v3, a2);
  HALS_ObjectMap::ReleaseObject(v2, v5);
  _Unwind_Resume(a1);
}

__n128 anonymous namespace::NonDSP_IOProcessorFactory::local_format@<Q0>(uint64_t a1@<X1>, char a2@<W3>, uint64_t a3@<X8>)
{
  if (a2)
  {
    __assert_rtn("local_format", "HALS_IOProcessorFactory.cpp", 388, "not engine_index.has_value()");
  }

  if (*(a1 + 108))
  {
    v4 = (a1 + 112);

    result.n128_u64[0] = HALS_IODSPInfo::GetClientFormat(a3, v4).n128_u64[0];
  }

  else
  {
    result = *(a1 + 416);
    v6 = *(a1 + 432);
    *a3 = result;
    *(a3 + 16) = v6;
    *(a3 + 32) = *(a1 + 448);
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::FactoryStatics::dsp_io_processor_factory(void)::{lambda(void)#1},std::allocator<anonymous namespace::FactoryStatics::dsp_io_processor_factory(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN12_GLOBAL__N_114FactoryStatics24dsp_io_processor_factoryEvEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_IOProcessorFactory::non_dsp_processor_factory_worker(HALS_IOProcessorFactory *this)
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F59738D0;
  v2[3] = v2;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
}

void sub_1DE4B85D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<anonymous namespace::FactoryStatics::non_dsp_io_processor_factory(void)::{lambda(void)#1},std::allocator<anonymous namespace::FactoryStatics::non_dsp_io_processor_factory(void)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN12_GLOBAL__N_114FactoryStatics28non_dsp_io_processor_factoryEvEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void HALS_IOProcessorFactory::free_processor(HALS_IOProcessorFactory *this, HALS_IOStreamInfo *a2)
{
  v2 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(this + 12);
  if (v3)
  {
    v4 = v3[8];
    if (v4 == v2)
    {
      if (!*(this + 27) || ((v10 = *(this + 14), *(this + 15) != v10) ? (v11 = v10 == 0) : (v11 = 1), v11))
      {
        v10 = (this + 456);
      }

      HALS_IOProcessorList::DestroyProcessor((*v10 + 24 * *(this + 8) + 776), v3);
      *(this + 12) = 0;
    }

    else
    {
      v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v5 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
        v12 = "output";
        v15 = "HALS_IOProcessorFactory.cpp";
        v16 = 1024;
        v17 = 193;
        if (v2)
        {
          v13 = "input";
        }

        else
        {
          v13 = "output";
        }

        v14 = 136315906;
        v18 = 2082;
        v19 = v13;
        if (v4)
        {
          v12 = "input";
        }

        v20 = 2082;
        v21 = v12;
        _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOProcessorFactoryWorker::free_processor: trying to free %{public}s processor but it is for %{public}s", &v14, 0x26u);
      }
    }
  }
}