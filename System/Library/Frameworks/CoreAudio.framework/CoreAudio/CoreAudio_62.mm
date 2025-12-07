void sub_1DE6BDB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, std::runtime_error a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a26);
  std::runtime_error::~runtime_error(&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

void Mock_Power_Manager_System_Interface::~Mock_Power_Manager_System_Interface(const void **this)
{
  Mock_Power_Manager_System_Interface::~Mock_Power_Manager_System_Interface(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598C1B8;
  _Block_release(this[3]);
}

unint64_t HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties::default_output_device()
{
  v3[0] = 0;
  v3[1] = 0;
  HALS_System::GetInstance(&v4, 0, v3);
  v0 = *(v4 + 1616);
  v6 = v0;
  v7 = HALB_Mutex::Lock(v0);
  v1 = v0[54];
  HALB_Mutex::Locker::~Locker(&v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v1 | ((v1 != 0) << 32);
}

void sub_1DE6BDCF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties::find_stream@<X0>(HALS_ObjectMap *this@<X1>, void *a2@<X8>)
{
  result = HALS_ObjectMap::CopyObjectByObjectID(this);
  *a2 = result;
  return result;
}

void HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties::find_stream(char a1@<W2>, int a2@<W3>, uint64_t *a3@<X8>, int a4@<W1>)
{
  HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties::find_device(a4, &v10);
  v8 = v10;
  if (v10)
  {
    v9 = HALS_IODevice::CopyStreamByIndex(v10, a1, a2);
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
  HALS_ObjectMap::ReleaseObject(v8, v7);
}

void HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties::find_device(int a1@<W1>, HALS_ObjectMap **a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  HALS_System::GetInstance(&v6, 0, v5);
  *a2 = HALS_System::CopyDeviceByObjectID(v6, a1, 0);
  v4 = v7;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE6BDE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties,std::allocator<HALS_DSPHostIntegrationPoint_IOContextUtilities::ISystemProperties::create_default(void)::DefaultProperties>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598C2D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void sub_1DE6BE114(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HALS_ObjectMap *a10)
{
  HALS_ObjectMap::ReleaseObject(a10, a2);
  HALS_ObjectMap::ReleaseObject(v11, v13);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t HALS_DSPHostIntegrationPoint_IOContextUtilities::populate_from_stream_info(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *(a1 + 4);
  if (v2)
  {
    for (i = *(v1 + 112); i != *(v1 + 120); i += 128)
    {
      v4 = *(i + 100);
      if (v2 == 3)
      {
        if (v4 == 1)
        {
          goto LABEL_30;
        }
      }

      else if (!v4)
      {
        goto LABEL_30;
      }
    }

    return 0;
  }

  if (*(v1 + 108))
  {
    v5 = *(v1 + 112);
    if (*(v1 + 120) == v5 || v5 == 0)
    {
      if (!*(v1 + 456))
      {
        return 0;
      }
    }

    else if (!*v5)
    {
      return 0;
    }

    v7 = *(v1 + 112);
    if (*(v1 + 120) != v7 && v7 != 0)
    {
      goto LABEL_27;
    }
  }

  else if (!*(v1 + 456))
  {
    return 0;
  }

  v7 = v1 + 456;
LABEL_27:
  v9 = *(*v7 + 88);
  if (v9 && (*(*v9 + 336))(v9) && *((*(*v9 + 336))(v9) + 16))
  {
LABEL_30:
    operator new();
  }

  return 0;
}

void sub_1DE6BED9C(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  HALS_ObjectMap::ReleaseObject(v18, a2);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  HALS_ObjectMap::ReleaseObject(v17, v20);
  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<HALS_DSPAudioStream_IOBufferReference_Context>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F598C378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_DSPHostIntegrationPoint_IOContextUtilities::populate_reference_stream_proxy(uint64_t a1, unint64_t a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0uLL;
  v7 = 0;
  v8 = 0x22A2A2A2ALL;
  v9 = 0;
  LOBYTE(v10) = 0;
  v11 = 0;
  operator new();
}

void sub_1DE6BF424(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HALS_ObjectMap *a10, HALS_ObjectMap *a11, uint64_t a12, uint64_t a13, HALS_ObjectMap *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  HALS_ObjectMap::ReleaseObject(a14, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void HALS_IOA2Manager::_CopyDeviceList(HALS_IOA2Manager *this, HALS_DeviceManager::BasicDeviceList *a2)
{
  v2 = *(this + 86);
  for (i = *(this + 87); v2 != i; v2 += 2)
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

void HALS_IOA2Manager::_CopyIODeviceList(HALS_IOA2Manager *this, HALS_DeviceManager::BasicIODeviceList *a2)
{
  v2 = *(this + 86);
  for (i = *(this + 87); v2 != i; v2 += 2)
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

uint64_t HALS_IOA2Manager::GetMIGDispatchQueue(HALS_IOA2Manager *this)
{
  return this + 352;
}

{
  return this + 352;
}

uint64_t HALS_IOA2Manager::GetCommandGate(HALS_IOA2Manager *this)
{
  return *(this + 42);
}

{
  return *(this + 42);
}

void HALS_IOA2Manager::_Deactivate(HALS_IOA2Manager *this)
{
  *(this + 2) = 0;
  v2 = *(this + 180);
  if (v2)
  {
    IOObjectRelease(v2);
    *(this + 180) = 0;
  }

  v3 = *(this + 89);
  if (v3)
  {
    IONotificationPortDestroy(v3);
    *(this + 89) = 0;
  }
}

void HALS_IOA2Manager::~HALS_IOA2Manager(HALS_IOA2Manager *this)
{
  HALS_IOA2Manager::~HALS_IOA2Manager(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598C3C8;
  v2 = *(this + 86);
  if (v2)
  {
    *(this + 87) = v2;
    operator delete(v2);
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 352));
  v3 = *(this + 43);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  *this = &unk_1F597A098;
  CACFString::~CACFString((this + 48));

  HALS_Object::~HALS_Object(this);
}

void HALS_IOA2Manager::Activate(io_iterator_t *this, HALS_Object *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  HALS_Object::Activate(this, a2);
  mainPort = 0;
  v3 = MEMORY[0x1E12C0860](*MEMORY[0x1E69E99F8], &mainPort);
  if (v3)
  {
    v11 = v3;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "HALS_IOA2Manager.cpp";
      v21 = 1024;
      v22 = 71;
      v23 = 1024;
      v24 = v11;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::Activate: IOMainPort failed, Error: 0x%X", buf, 0x18u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v11;
  }

  v4 = IONotificationPortCreate(mainPort);
  *(this + 89) = v4;
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "HALS_IOA2Manager.cpp";
      v21 = 1024;
      v22 = 75;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::Activate: IONotificationPortCreate failed", buf, 0x12u);
    }

    v13 = __cxa_allocate_exception(0x10uLL);
    *v13 = off_1F5991DD8;
    v13[2] = 2003329396;
  }

  v5 = IOServiceMatching("IOAudio2Device");
  v16 = v5;
  v17 = 257;
  v6 = *(this + 89);
  if (v5)
  {
    CFRetain(v5);
    v7 = v16;
  }

  else
  {
    v7 = 0;
  }

  v8 = IOServiceAddMatchingNotification(v6, "IOServiceFirstPublish", v7, HALS_IOA2Manager::IOServiceMatchingHandler, this[4], this + 180);
  if (v8)
  {
    v14 = v8;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "HALS_IOA2Manager.cpp";
      v21 = 1024;
      v22 = 82;
      v23 = 1024;
      v24 = v14;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::Activate: IOServiceAddMatchingNotification failed, Error: 0x%X", buf, 0x18u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = off_1F5991DD8;
    v15[2] = v14;
  }

  HALS_IOA2Manager::IOServiceMatchingHandler(this[4], this[180]);
  v9 = *(this + 89);
  v10 = (*(*this + 72))(this);
  IONotificationPortSetDispatchQueue(v9, *v10);
  CACFDictionary::~CACFDictionary(&v16);
}

void sub_1DE6BFB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

void HALS_IOA2Manager::IOServiceMatchingHandler(HALS_IOA2Manager *this, void *a2)
{
  v2 = a2;
  v33 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v24 = HALS_ObjectMap::CopyObjectByObjectID(this);
  if (!v24)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "HALS_IOA2Manager.cpp";
      v30 = 1024;
      v31 = 244;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::IOServiceMatchingHandler: no device manager object", &v28, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1852797029;
  }

  iterator = v2;
  v23 = 0;
  v15 = &unk_1F59797D0;
  object = IOIteratorNext(v2);
  connect = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  v19 = 257;
  v20 = 1;
  v21 = 1;
  for (i = object; i; LOBYTE(v20) = 1)
  {
    if (IOObjectConformsTo(i, "IOAudio2Device"))
    {
      v13 = HALS_IOA2UCDevice::CopyDeviceUID(object);
      v14 = 1;
      v6 = HALS_DeviceManager::CopyDeviceByUID(v24, v13, 0);
      if (v6)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(*v6 + 224))(v6);
          LODWORD(buf.isa) = 136315650;
          *(&buf.isa + 4) = "HALS_IOA2Manager.cpp";
          WORD2(buf.info) = 1024;
          *(&buf.info + 6) = 259;
          WORD1(buf.data) = 2082;
          *(&buf.data + 4) = v7;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Manager::IOServiceMatchingHandler: device already exists for uid: %{public}s", &buf, 0x1Cu);
        }

        *(v6 + 2010) = 0;
        HALS_System::DeviceDied(*(v24 + 40), v6);
        (*(*v6 + 464))(v6);
        (*(*v6 + 8))(v6);
        HALS_IOA2Manager::RemoveDevice(v24, v6);
        HALS_ObjectMap::ObjectIsDead(v6, v8);
      }

      LOBYTE(buf.isa) = 0;
      HALB_UCObject::CopyProperty_BOOL(object, @"is private", &buf, v5);
      if ((buf.isa & 1) == 0)
      {
        operator new();
      }

      CACFString::~CACFString(&v13);
    }

    i = IOIteratorNext(iterator);
    if (connect)
    {
      IOServiceClose(connect);
      connect = 0;
    }

    v15[5](&v15);
    object = i;
    v21 = 1;
  }

  v9 = v25;
  if (v25 != v26)
  {
    v10 = *(v24 + 4);
    strcpy(&buf, "#vedbolg");
    BYTE1(buf.info) = 0;
    WORD1(buf.info) = 0;
    HALS_NotificationManager::PropertiesChanged(v10, 0, 1, &buf, v3);
    HALS_System::CheckForDefaultDeviceChanges(*(v24 + 40), &v25);
  }

  HALB_UCObject::~HALB_UCObject(&v15);
  HALB_UCIterator::~HALB_UCIterator(&iterator);
  HALS_ObjectMap::ReleaseObject(v24, v11);
  if (v9)
  {
    operator delete(v9);
  }
}

void sub_1DE6C07C4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE6C07CCLL);
  }

  __clang_call_terminate(a1);
}

void sub_1DE6C07DC(void *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, HALS_ObjectMap *a26, void *__p)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(a26, a2);
    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE6C06CCLL);
  }

  _Unwind_Resume(v27);
}

void HALS_IOA2Manager::RemoveDevice(HALS_IOA2Manager *this, HALS_IOA2Device *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN16HALS_IOA2Manager12RemoveDeviceEP15HALS_IOA2Device_block_invoke;
  v3[3] = &__block_descriptor_tmp_7_18850;
  v3[4] = this;
  v3[5] = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v3);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Manager::IOServiceMatchingHandler(void *,unsigned int)::$_3,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    HALS_System::DeviceDied(*(**(a1 + 8) + 320), **(a1 + 16));
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Manager::IOServiceMatchingHandler(void *,unsigned int)::$_2,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    HALS_IOA2Manager::RemoveDevice(**(a1 + 8), **(a1 + 16));
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Manager::IOServiceMatchingHandler(void *,unsigned int)::$_1,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    (*(***(a1 + 8) + 8))(**(a1 + 8));
  }

  return a1;
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<HALS_IOA2Manager::IOServiceMatchingHandler(void *,unsigned int)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    HALS_ObjectMap::ReleaseObject(**(a1 + 8), v2);
  }

  return a1;
}

void ___ZN16HALS_IOA2Manager9AddDeviceEP15HALS_IOA2Device_block_invoke(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = a1[6];
  v26 = (*(*v3 + 216))(v3);
  v27 = 1;
  v4 = HALS_DeviceManager::CopyDeviceByUID(v2, v26, 0);
  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "HALS_IOA2Manager.cpp";
      v30 = 1024;
      v31 = 187;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOA2Manager::_AddDevice: there is already a device with this UID", buf, 0x12u);
    }

    HALS_ObjectMap::ReleaseObject(v4, v5);
    v6 = 1852797029;
  }

  else
  {
    *&v25 = v3;
    DWORD2(v25) = 0;
    v7 = IOServiceAddInterestNotification(*(v2 + 712), v3[496], "IOGeneralInterest", HALS_IOA2Manager::IOServiceInterestHandler, *(v2 + 16), &v25 + 2);
    if (v7)
    {
      v23 = v7;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v29 = "HALS_IOA2Manager.cpp";
        v30 = 1024;
        v31 = 177;
        v32 = 1024;
        v33 = v23;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::_AddDevice: Cannot add an interest callback., Error: 0x%X", buf, 0x18u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = v23;
    }

    v8 = *(v2 + 712);
    v9 = (*(*v2 + 72))(v2);
    IONotificationPortSetDispatchQueue(v8, *v9);
    v10 = *(v2 + 696);
    v11 = *(v2 + 704);
    if (v10 >= v11)
    {
      v13 = *(v2 + 688);
      v14 = (v10 - v13) >> 4;
      v15 = v14 + 1;
      if ((v14 + 1) >> 60)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v16 = v11 - v13;
      if (v16 >> 3 > v15)
      {
        v15 = v16 >> 3;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFF0)
      {
        v17 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        std::allocator<HALS_IOA2Manager::DeviceInfo>::allocate_at_least[abi:ne200100](v17);
      }

      v18 = (16 * v14);
      *v18 = v25;
      v12 = 16 * v14 + 16;
      v19 = *(v2 + 688);
      v20 = *(v2 + 696) - v19;
      v21 = 16 * v14 - v20;
      memcpy(v18 - v20, v19, v20);
      v22 = *(v2 + 688);
      *(v2 + 688) = v21;
      *(v2 + 696) = v12;
      *(v2 + 704) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v10 = v25;
      v12 = (v10 + 1);
    }

    v6 = 0;
    *(v2 + 696) = v12;
  }

  CACFString::~CACFString(&v26);
  *(*(a1[4] + 8) + 24) = v6;
}

void sub_1DE6C0D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2)
  {
    CACFString::~CACFString(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE6C0C7CLL);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<HALS_IOA2Manager::DeviceInfo>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HALS_IOA2Manager::IOServiceInterestHandler(HALS_ObjectMap *this, HALS_IOA2UCDevice *a2, int a3, unsigned int a4, void *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((a2 - 1) <= 0xFFFFFFFD && a3 == -536870896)
  {
    v7 = HALS_ObjectMap::CopyObjectByObjectID(this);
    if (!v7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14.mSelector = 136315394;
        *&v14.mScope = "HALS_IOA2Manager.cpp";
        v15 = 1024;
        v16 = 342;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Manager::IOServiceInterestHandler: no device manager object", &v14, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    *&v14.mSelector = HALS_IOA2UCDevice::CopyDeviceUID(a2);
    LOBYTE(v14.mElement) = 1;
    v8 = HALS_DeviceManager::CopyDeviceByUID(v7, *&v14.mSelector, 0);
    CACFString::~CACFString(&v14);
    if (v8)
    {
      *(v8 + 2010) = 0;
      HALS_System::DeviceDied(*(v7 + 320), v8);
      (*(*v8 + 464))(v8);
      (*(*v8 + 8))(v8);
      HALS_IOA2Manager::RemoveDevice(v7, v8);
      v10 = *(v7 + 16);
      *&v14.mSelector = 0x676C6F6264657623;
      v14.mElement = 0;
      HALS_NotificationManager::PropertiesChanged(v10, 0, 1, &v14, v11);
      HALS_System::CheckForDefaultDeviceChanges(*(v7 + 320));
    }

    HALS_ObjectMap::ReleaseObject(v8, v9);
    HALS_ObjectMap::ReleaseObject(v7, v12);
  }
}

void sub_1DE6C1054(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE6C1070(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    CACFString::~CACFString(&a9);
    HALS_ObjectMap::ReleaseObject(v9, v11);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE6C0F70);
  }

  JUMPOUT(0x1DE6C1060);
}

void ___ZN16HALS_IOA2Manager12RemoveDeviceEP15HALS_IOA2Device_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = v1[86];
  v3 = v1[87];
  if (v2 != v3)
  {
    v4 = *(result + 40);
    while (*v2 != v4)
    {
      v2 += 16;
      if (v2 == v3)
      {
        return;
      }
    }

    IOObjectRelease(*(v2 + 8));
    *(v2 + 8) = 0;
    *v2 = 0;
    v5 = v1[87];
    v6 = v5 - (v2 + 16);
    if (v5 != v2 + 16)
    {
      memmove(v2, (v2 + 16), v6 - 4);
    }

    v7 = v1[86];
    v8 = (v2 + v6);
    v1[87] = v2 + v6;
    v9 = v1[88];
    if (((v2 + v6 - v7) >> 4) + 20 < ((v9 - v7) >> 4))
    {
      v10 = v9 - v7;
      if (v10 > (v8 - v7))
      {
        v11 = (v8 - v7) >> 4;
        if (v8 != v7)
        {
          std::allocator<HALS_IOA2Manager::DeviceInfo>::allocate_at_least[abi:ne200100]((v8 - v7) >> 4);
        }

        v12 = 0;
        if (v10 >> 4)
        {
          v13 = 16 * v11;
          v14 = v1[87] - v7;
          v15 = 16 * v11 - v14;
          memcpy((v13 - v14), v7, v14);
          v12 = v1[86];
          v1[86] = v15;
          v1[87] = v13;
          v1[88] = 0;
        }

        if (v12)
        {
          operator delete(v12);
        }
      }
    }

    HALS_ObjectMap::ReleaseObject(v4, v7);
  }
}

void sub_1DE6C122C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE6C1204);
}

void AMCP::get_enum_string_bimap<AMCP::Wire_Connection_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE520 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ConnectionRequired");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE4F8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ConnectionTransient");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE4F8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C1654(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

uint64_t boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::link(uint64_t result, int a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  if (a2)
  {
    a3[2] = result;
    v6 = a4 + 2;
    v7 = a4[2];
    goto LABEL_5;
  }

  a3[1] = result;
  if (a3 != a4)
  {
    v6 = a4 + 1;
    v7 = a4[1];
LABEL_5:
    if (v7 != a3)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *a4 = *a4 & 1 | result;
  v6 = a4 + 2;
LABEL_8:
  *v6 = result;
LABEL_9:
  *(result + 8) = 0;
  *(result + 16) = 0;
  v8 = (a3 & 0xFFFFFFFFFFFFFFFELL);
  *result = a3 & 0xFFFFFFFFFFFFFFFELL;
  v9 = (*a4 & 0xFFFFFFFFFFFFFFFELL);
  if (v9 != result)
  {
    while (1)
    {
      v10 = *v8;
      if (*v8)
      {
        break;
      }

      v11 = *(v10 + 8);
      if (v11 == v8)
      {
        v11 = *(v10 + 16);
        if (v11 && (*v11 & 1) == 0)
        {
LABEL_18:
          *v8 = v10 | 1;
          *v11 |= 1uLL;
          *(*(*v5 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
          v5 = (*(*v5 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL);
          goto LABEL_25;
        }

        if (v5 == v8[2])
        {
          v16 = a4;
          boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left(v8, &v16);
          v13 = (*v8 & 0xFFFFFFFFFFFFFFFELL);
          v10 = *v13;
          v5 = v8;
        }

        else
        {
          v13 = v8;
          v8 = v5;
        }

        *v13 = v10 | 1;
        *(*(*v8 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
        v15 = *(*v8 & 0xFFFFFFFFFFFFFFFELL);
        v16 = a4;
        result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right((v15 & 0xFFFFFFFFFFFFFFFELL), &v16);
      }

      else
      {
        if (v11 && (*v11 & 1) == 0)
        {
          goto LABEL_18;
        }

        if (v5 == v8[1])
        {
          v16 = a4;
          boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right(v8, &v16);
          v12 = (*v8 & 0xFFFFFFFFFFFFFFFELL);
          v10 = *v12;
          v5 = v8;
        }

        else
        {
          v12 = v8;
          v8 = v5;
        }

        *v12 = v10 | 1;
        *(*(*v8 & 0xFFFFFFFFFFFFFFFELL) & 0xFFFFFFFFFFFFFFFELL) &= ~1uLL;
        v14 = *(*v8 & 0xFFFFFFFFFFFFFFFELL);
        v16 = a4;
        result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left((v14 & 0xFFFFFFFFFFFFFFFELL), &v16);
      }

LABEL_25:
      v9 = (*a4 & 0xFFFFFFFFFFFFFFFELL);
      if (v5 == v9)
      {
        break;
      }

      v8 = (*v5 & 0xFFFFFFFFFFFFFFFELL);
    }
  }

  *v9 |= 1uLL;
  return result;
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_left(unint64_t *result, unint64_t **a2)
{
  v2 = result[2];
  v3 = *(v2 + 8);
  result[2] = v3;
  if (v3)
  {
    *v3 = *v3 & 1 | result;
  }

  *v2 = *result & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  if ((**a2 & 0xFFFFFFFFFFFFFFFELL) == result)
  {
    **a2 = **a2 & 1 | v2;
    v4 = *result;
  }

  else
  {
    v4 = *result;
    v5 = *result & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 8) == result)
    {
      *(v5 + 8) = v2;
    }

    else
    {
      *(v5 + 16) = v2;
    }
  }

  *(v2 + 8) = result;
  *result = v4 & 1 | v2;
  return result;
}

unint64_t *boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::rotate_right(unint64_t *result, unint64_t **a2)
{
  v2 = result[1];
  v3 = *(v2 + 16);
  result[1] = v3;
  if (v3)
  {
    *v3 = *v3 & 1 | result;
  }

  *v2 = *result & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  if ((**a2 & 0xFFFFFFFFFFFFFFFELL) == result)
  {
    **a2 = **a2 & 1 | v2;
    v4 = *result;
  }

  else
  {
    v4 = *result;
    v5 = *result & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 16) == result)
    {
      *(v5 + 16) = v2;
    }

    else
    {
      *(v5 + 8) = v2;
    }
  }

  *(v2 + 16) = result;
  *result = v4 & 1 | v2;
  return result;
}

unint64_t **boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(unint64_t **result)
{
  v1 = *result;
  v2 = **result;
  if ((v2 & 1) == 0 && v1 == (*v2 & 0xFFFFFFFFFFFFFFFELL))
  {
    v4 = v1[2];
  }

  else
  {
    v3 = v1[1];
    if (v3)
    {
      do
      {
        v4 = v3;
        v3 = v3[2];
      }

      while (v3);
    }

    else
    {
      v4 = (v2 & 0xFFFFFFFFFFFFFFFELL);
      if (v1 == v4[1])
      {
        v5 = v4;
        do
        {
          *result = v5;
          v4 = (*v5 & 0xFFFFFFFFFFFFFFFELL);
          v6 = v5 == v4[1];
          v5 = v4;
        }

        while (v6);
      }
    }
  }

  *result = v4;
  return result;
}

void AMCP::get_enum_string_bimap<AMCP::Wire_Resampler_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Wire_Resampler_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE568 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_NeverResample");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Resampler_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE540 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ResampleIfRequired");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Resampler_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE540 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Resampler_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Resampler_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C1E4C(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Wire_Format_Conversion_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Wire_Format_Conversion_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE5B0 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_NeverConvertFormat");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Format_Conversion_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE588 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ConvertFormatIfRequired");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Format_Conversion_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE588 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Format_Conversion_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Format_Conversion_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C228C(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Wire_Drift_Correction_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Wire_Drift_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE5F8 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_NeverDriftCorrect");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Drift_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE5D0 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ShouldDriftCorrect");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Drift_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE5D0 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Drift_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Drift_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C26CC(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Wire_Latency_Correction_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Wire_Latency_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE640 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_NeverLatencyCorrect");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Latency_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE618 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_ShouldLatencyCorrect");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Latency_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE618 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Latency_Correction_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Latency_Correction_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C2B0C(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Node_Clock_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Node_Clock_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE688 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "IsCalculatedFromTerminals");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Clock_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE660 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "IsSetFromClockUID");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Clock_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE660 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "IsAClockSource");
    v1 = 2;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Clock_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE660 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Clock_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Clock_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C2FC8(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Node_Thread_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Node_Thread_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE6D0 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Node_Is_Used_By_One_Thread");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Thread_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE6A8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Node_Is_Shared_Across_Threads");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Thread_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE6A8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Thread_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Thread_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C3408(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Node_Buffer_Size_Change_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Node_Buffer_Size_Change_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE718 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Favor_Input_Buffer_Alignment");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Buffer_Size_Change_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE6F0 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Favor_Output_Buffer_Alignment");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Buffer_Size_Change_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE6F0 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Buffer_Size_Change_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Buffer_Size_Change_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C3848(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Direction>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Direction,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE760 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Out");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Direction,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE738 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "In");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Direction,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE738 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Direction,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C3C88(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Node_Type>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE7A8 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "IOContextNode");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE780 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "DSPNode");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE780 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "ReflectorNode");
    v1 = 2;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE780 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "DeviceNode");
    v1 = 3;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE780 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C41C0(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Terminal_Source_Mix_Policy>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Terminal_Source_Mix_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE7F0 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_SingleSource");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Terminal_Source_Mix_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE7C8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Wire_MultiSource");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Terminal_Source_Mix_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE7C8 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Terminal_Source_Mix_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C4600(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Resampler_Type>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE838 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "RamstadSRC");
    v1 = 2;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE810 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Resampler2");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE810 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "STLI");
    v1 = 1;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE810 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C4ABC(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

void AMCP::get_enum_string_bimap<AMCP::Resampler_Quality>()
{
  {
    applesauce::indestructible<boost::bimaps::bimap<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>>::indestructible<>();
  }

  if (!*(qword_1ECDAE880 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(&v0, "Min");
    v1 = 0;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE858 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Low");
    v1 = 32;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE858 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Medium");
    v1 = 64;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE858 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "High");
    v1 = 96;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE858 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(&v0, "Max");
    v1 = 127;
    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v0.__r_.__value_.__l.__data_, v0.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v0;
    }

    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(qword_1ECDAE858 - 16, &v1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v0.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v0.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::insert_<boost::multi_index::detail::lvalue_tag>(uint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = v4;
  v6 = v4[7] & 0xFFFFFFFFFFFFFFFELL;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v5 = (v6 - 56);
    result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2 + 1, (v6 - 48));
    if ((result & 0x80u) == 0)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    v6 = v5[v7];
  }

  while (v6);
  if (result < 0)
  {
LABEL_8:
    v9 = v4[8];
    if (v9)
    {
      v10 = (v9 - 56);
    }

    else
    {
      v10 = 0;
    }

    if (v5 == v10)
    {
      goto LABEL_18;
    }

    v19 = v5 + 7;
    boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
    if (v19)
    {
      v8 = v19 - 7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = v5;
  }

  result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v8 + 1, a2 + 1);
  if ((result & 0x80) != 0)
  {
LABEL_18:
    v11 = *a2;
    v12 = v4;
    v13 = v4[4] & 0xFFFFFFFFFFFFFFFELL;
    if (!v13)
    {
      goto LABEL_24;
    }

    do
    {
      v12 = (v13 - 32);
      v14 = *(v13 - 32);
      if (v14 <= v11)
      {
        v15 = 6;
      }

      else
      {
        v15 = 5;
      }

      v13 = v12[v15];
    }

    while (v13);
    if (v14 > v11)
    {
LABEL_24:
      v16 = v4[5];
      if (v16)
      {
        v17 = (v16 - 32);
      }

      else
      {
        v17 = 0;
      }

      if (v12 == v17)
      {
        goto LABEL_33;
      }

      v19 = v12 + 4;
      result = boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::decrement(&v19);
      if (v19)
      {
        v18 = v19 - 4;
      }

      else
      {
        v18 = 0;
      }

      v14 = *v18;
    }

    if (v14 >= v11)
    {
      return result;
    }

LABEL_33:
    operator new();
  }

  if (!v8)
  {
    ++*(v3 + 24);
  }

  return result;
}

void sub_1DE6C5070(void *a1)
{
  __cxa_begin_catch(a1);
  operator delete(v1);
  __cxa_rethrow();
}

uint64_t minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(uint64_t result, char *a2, uint64_t *a3)
{
  if (*(result + 4) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = *(v6 + 1);
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }
  }

  return result;
}

void sub_1DE6C57FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6C5824);
}

uint64_t boost::multi_index::detail::ordered_index_node_impl<boost::multi_index::detail::null_augment_policy,std::allocator<char>>::increment(uint64_t result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2)
  {
    do
    {
      *result = v2;
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  else
  {
    v3 = (*v1 & 0xFFFFFFFFFFFFFFFELL);
    if (v1 == v3[2])
    {
      do
      {
        v5 = v3;
        *result = v3;
        v3 = (*v3 & 0xFFFFFFFFFFFFFFFELL);
      }

      while (v5 == v3[2]);
      v4 = v5[2];
    }

    else
    {
      v4 = 0;
    }

    if (v4 != v3)
    {
      *result = v3;
    }
  }

  return result;
}

uint64_t boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0 && *(a1 + 40))
  {
    v2 = 0;
    v3 = 8;
    do
    {
      v4 = *(*(a1 + 32) + v3);
      if (*(v4 + 31) < 0)
      {
        operator delete(*(v4 + 8));
        v4 = *(*(a1 + 32) + v3);
      }

      operator delete(v4);
      ++v2;
      v3 += 16;
    }

    while (v2 < *(a1 + 40));
  }

  if (*(a1 + 24))
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (v9->n128_u64[0] >= v12->n128_u64[0])
        {
          return result;
        }

LABEL_106:
        v126 = *v12;
        *v12 = *v9;
        result = v126;
LABEL_107:
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v58 = v12 + 1;
      v61 = v12[1].n128_u64[0];
      v62 = v12 + 2;
      v63 = v12[2].n128_u64[0];
      if (v61 >= v12->n128_u64[0])
      {
        if (v63 < v61)
        {
          result = *v58;
          *v58 = *v62;
          *v62 = result;
          if (v12[1].n128_u64[0] < v12->n128_u64[0])
          {
            v129 = *v12;
            *v12 = *v58;
            result = v129;
            *v58 = v129;
          }
        }
      }

      else
      {
        if (v63 < v61)
        {
          v127 = *v12;
          *v12 = *v62;
          result = v127;
          goto LABEL_185;
        }

        v131 = *v12;
        *v12 = *v58;
        result = v131;
        *v58 = v131;
        if (v63 < v12[1].n128_u64[0])
        {
          result = *v58;
          *v58 = *v62;
LABEL_185:
          *v62 = result;
        }
      }

      if (v9->n128_u64[0] >= v62->n128_u64[0])
      {
        return result;
      }

      result = *v62;
      *v62 = *v9;
      *v9 = result;
      if (v62->n128_u64[0] >= v58->n128_u64[0])
      {
        return result;
      }

      result = *v58;
      *v58 = *v62;
      *v62 = result;
LABEL_189:
      if (v12[1].n128_u64[0] < v12->n128_u64[0])
      {
        v132 = *v12;
        *v12 = *v58;
        result = v132;
        *v58 = v132;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,0>(v12, v12 + 1, v12[2].n128_u64, v12[3].n128_u64, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v64 = v12 + 1;
      v66 = v12 == a2 || v64 == a2;
      if (a4)
      {
        if (!v66)
        {
          v67 = 0;
          v68 = v12;
          do
          {
            v69 = v64;
            v70 = v68[1].n128_u64[0];
            if (v70 < v68->n128_u64[0])
            {
              v71 = v68[1].n128_u64[1];
              v72 = v67;
              while (1)
              {
                result = *(v12 + v72);
                *(v12 + v72 + 16) = result;
                if (!v72)
                {
                  break;
                }

                v73 = *(v12[-1].n128_u64 + v72);
                v72 -= 16;
                if (v70 >= v73)
                {
                  v74 = (v12 + v72 + 16);
                  goto LABEL_126;
                }
              }

              v74 = v12;
LABEL_126:
              v74->n128_u64[0] = v70;
              v74->n128_u64[1] = v71;
            }

            v64 = v69 + 1;
            v67 += 16;
            v68 = v69;
          }

          while (&v69[1] != a2);
        }
      }

      else if (!v66)
      {
        do
        {
          v103 = v64;
          v104 = a1[1].n128_u64[0];
          if (v104 < a1->n128_u64[0])
          {
            v105 = a1[1].n128_u64[1];
            v106 = v103;
            do
            {
              result = v106[-1];
              *v106 = result;
              v107 = v106[-2].n128_u64[0];
              --v106;
            }

            while (v104 < v107);
            v106->n128_u64[0] = v104;
            v106->n128_u64[1] = v105;
          }

          v64 = v103 + 1;
          a1 = v103;
        }

        while (&v103[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v75 = (v13 - 2) >> 1;
        v76 = v75;
        do
        {
          v77 = v76;
          if (v75 >= v76)
          {
            v78 = (2 * v76) | 1;
            v79 = &v12[v78];
            if (2 * v77 + 2 >= v13)
            {
              v80 = v79->n128_u64[0];
            }

            else
            {
              v80 = v79[1].n128_u64[0];
              v81 = v79->n128_u64[0] >= v80;
              if (v79->n128_u64[0] < v80)
              {
                ++v79;
              }

              else
              {
                v80 = v79->n128_u64[0];
              }

              if (!v81)
              {
                v78 = 2 * v77 + 2;
              }
            }

            v82 = &v12[v77];
            v83 = v82->n128_u64[0];
            if (v80 >= v82->n128_u64[0])
            {
              v84 = v82->n128_u64[1];
              do
              {
                v85 = v82;
                v82 = v79;
                *v85 = *v79;
                if (v75 < v78)
                {
                  break;
                }

                v86 = (2 * v78) | 1;
                v79 = &v12[v86];
                v78 = 2 * v78 + 2;
                if (v78 >= v13)
                {
                  v87 = v79->n128_u64[0];
                  v78 = v86;
                }

                else
                {
                  v87 = v79->n128_u64[0];
                  if (v79->n128_u64[0] >= v79[1].n128_u64[0])
                  {
                    v78 = v86;
                  }

                  else
                  {
                    v87 = v79[1].n128_u64[0];
                    ++v79;
                  }
                }
              }

              while (v87 >= v83);
              v82->n128_u64[0] = v83;
              v82->n128_u64[1] = v84;
            }
          }

          v76 = v77 - 1;
        }

        while (v77);
        do
        {
          v88 = 0;
          v128 = *v12;
          v89 = v12;
          do
          {
            v90 = &v89[v88];
            v91 = v90 + 1;
            v92 = (2 * v88) | 1;
            v88 = 2 * v88 + 2;
            if (v88 >= v13)
            {
              v88 = v92;
            }

            else
            {
              v94 = v90[2].n128_u64[0];
              v93 = v90 + 2;
              if (v93[-1].n128_u64[0] >= v94)
              {
                v88 = v92;
              }

              else
              {
                v91 = v93;
              }
            }

            *v89 = *v91;
            v89 = v91;
          }

          while (v88 <= ((v13 - 2) >> 1));
          if (v91 == --a2)
          {
            result = v128;
            *v91 = v128;
          }

          else
          {
            *v91 = *a2;
            result = v128;
            *a2 = v128;
            v95 = (v91 - v12 + 16) >> 4;
            v96 = v95 < 2;
            v97 = v95 - 2;
            if (!v96)
            {
              v98 = v97 >> 1;
              v99 = &v12[v98];
              v100 = v91->n128_u64[0];
              if (v99->n128_u64[0] < v91->n128_u64[0])
              {
                v101 = v91->n128_u64[1];
                do
                {
                  v102 = v91;
                  v91 = v99;
                  result = *v99;
                  *v102 = *v99;
                  if (!v98)
                  {
                    break;
                  }

                  v98 = (v98 - 1) >> 1;
                  v99 = &v12[v98];
                }

                while (v99->n128_u64[0] < v100);
                v91->n128_u64[0] = v100;
                v91->n128_u64[1] = v101;
              }
            }
          }

          v96 = v13-- <= 2;
        }

        while (!v96);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = v14;
    v16 = v9->n128_u64[0];
    if (v13 >= 0x81)
    {
      v17 = v14->n128_u64[0];
      if (v14->n128_u64[0] >= v12->n128_u64[0])
      {
        if (v16 < v17)
        {
          v110 = *v14;
          *v14 = *v9;
          *v9 = v110;
          if (v14->n128_u64[0] < v12->n128_u64[0])
          {
            v111 = *v12;
            *v12 = *v14;
            *v14 = v111;
          }
        }
      }

      else
      {
        if (v16 < v17)
        {
          v108 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v114 = *v12;
        *v12 = *v14;
        *v14 = v114;
        if (v9->n128_u64[0] < v14->n128_u64[0])
        {
          v108 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v108;
        }
      }

      v19 = v12 + 1;
      v20 = v14 - 1;
      v21 = v14[-1].n128_u64[0];
      v22 = v10->n128_u64[0];
      if (v21 >= v12[1].n128_u64[0])
      {
        if (v22 < v21)
        {
          v115 = *v20;
          *v20 = *v10;
          *v10 = v115;
          if (v20->n128_u64[0] < v19->n128_u64[0])
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (v10->n128_u64[0] < v20->n128_u64[0])
        {
          v117 = *v20;
          *v20 = *v10;
          v23 = v117;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = v12 + 2;
      v29 = v14[1].n128_u64[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v11->n128_u64[0];
      if (v29 >= v12[2].n128_u64[0])
      {
        if (v30 < v28)
        {
          v118 = *v27;
          *v27 = *v11;
          *v11 = v118;
          if (v27->n128_u64[0] < v26->n128_u64[0])
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 < v28)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (v11->n128_u64[0] < v27->n128_u64[0])
        {
          v119 = *v27;
          *v27 = *v11;
          v31 = v119;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = v15->n128_u64[0];
      v35 = v27->n128_u64[0];
      if (v15->n128_u64[0] >= v20->n128_u64[0])
      {
        if (v35 < v34)
        {
          v121 = *v15;
          *v15 = *v27;
          *v27 = v121;
          if (v15->n128_u64[0] < v20->n128_u64[0])
          {
            v122 = *v20;
            *v20 = *v15;
            *v15 = v122;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v120 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v123 = *v20;
        *v20 = *v15;
        *v15 = v123;
        if (v27->n128_u64[0] < v15->n128_u64[0])
        {
          v120 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v120;
        }
      }

      v124 = *v12;
      *v12 = *v15;
      *v15 = v124;
      goto LABEL_58;
    }

    v18 = v12->n128_u64[0];
    if (v12->n128_u64[0] >= v14->n128_u64[0])
    {
      if (v16 < v18)
      {
        v112 = *v12;
        *v12 = *v9;
        *v9 = v112;
        if (v12->n128_u64[0] < v14->n128_u64[0])
        {
          v113 = *v14;
          *v14 = *v12;
          *v12 = v113;
        }
      }

      goto LABEL_58;
    }

    if (v16 >= v18)
    {
      v116 = *v14;
      *v14 = *v12;
      *v12 = v116;
      if (v9->n128_u64[0] >= v12->n128_u64[0])
      {
        goto LABEL_58;
      }

      v109 = *v12;
      *v12 = *v9;
    }

    else
    {
      v109 = *v14;
      *v14 = *v9;
    }

    *v9 = v109;
LABEL_58:
    --a3;
    if ((a4 & 1) != 0 || v12[-1].n128_u64[0] < v12->n128_u64[0])
    {
      result = *v12;
      v36 = v12->n128_u64[0];
      v37 = v12;
      do
      {
        v38 = v37;
        v39 = v37[1].n128_u64[0];
        ++v37;
      }

      while (v39 < v36);
      v40 = a2;
      if (v38 == v12)
      {
        v40 = a2;
        do
        {
          if (v37 >= v40)
          {
            break;
          }

          v42 = v40[-1].n128_u64[0];
          --v40;
        }

        while (v42 >= v36);
      }

      else
      {
        do
        {
          v41 = v40[-1].n128_u64[0];
          --v40;
        }

        while (v41 >= v36);
      }

      if (v37 < v40)
      {
        v43 = v37;
        v44 = v40;
        do
        {
          v45 = *v43;
          *v43 = *v44;
          *v44 = v45;
          do
          {
            v38 = v43;
            v46 = v43[1].n128_u64[0];
            ++v43;
          }

          while (v46 < v36);
          do
          {
            v47 = v44[-1].n128_u64[0];
            --v44;
          }

          while (v47 >= v36);
        }

        while (v43 < v44);
      }

      if (v38 != v12)
      {
        *v12 = *v38;
      }

      *v38 = result;
      if (v37 < v40)
      {
        goto LABEL_79;
      }

      v48 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(v12, v38, result);
      v12 = v38 + 1;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(&v38[1], a2, v49))
      {
        a2 = v38;
        if (!v48)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v48)
      {
LABEL_79:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,false>(a1, v38, a3, a4 & 1, result);
        a4 = 0;
        v12 = v38 + 1;
      }
    }

    else
    {
      result = *v12;
      v50 = v12->n128_u64[0];
      if (v12->n128_u64[0] >= v9->n128_u64[0])
      {
        n128_u64 = v12[1].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          n128_u64 += 16;
        }

        while (v50 >= v12->n128_u64[0]);
      }

      else
      {
        do
        {
          v51 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v50 >= v51);
      }

      v53 = a2;
      if (v12 < a2)
      {
        v53 = a2;
        do
        {
          v54 = v53[-1].n128_u64[0];
          --v53;
        }

        while (v50 < v54);
      }

      while (v12 < v53)
      {
        v125 = *v12;
        *v12 = *v53;
        *v53 = v125;
        do
        {
          v55 = v12[1].n128_u64[0];
          ++v12;
        }

        while (v50 >= v55);
        do
        {
          v56 = v53[-1].n128_u64[0];
          --v53;
        }

        while (v50 < v56);
      }

      v57 = v12 - 1;
      if (&v12[-1] != a1)
      {
        *a1 = *v57;
      }

      a4 = 0;
      *v57 = result;
    }
  }

  v58 = v12 + 1;
  v59 = v12[1].n128_u64[0];
  v60 = v9->n128_u64[0];
  if (v59 >= v12->n128_u64[0])
  {
    if (v60 >= v59)
    {
      return result;
    }

    result = *v58;
    *v58 = *v9;
    *v9 = result;
    goto LABEL_189;
  }

  if (v60 < v59)
  {
    goto LABEL_106;
  }

  v130 = *v12;
  *v12 = *v58;
  result = v130;
  *v58 = v130;
  if (v9->n128_u64[0] < v12[1].n128_u64[0])
  {
    result = *v58;
    *v58 = *v9;
    goto LABEL_107;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,0>(__n128 *a1, __n128 *a2, unint64_t *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = *a3;
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 < a2->n128_u64[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 < *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 < *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 < a2->n128_u64[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u64[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 < *a1)
      {
        if (v8 >= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u64[0] >= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) < *a1)
      {
        v41 = *a1;
        *a1 = *v6;
        *v6 = v41;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,boost::multi_index::detail::copy_map_entry<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>> *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 >= *a1)
    {
      if (v19 < v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u64[0] < v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 >= v17)
    {
      v38 = *a1;
      *a1 = *v6;
      *v6 = v38;
      if (v19 >= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u64[0] >= v18->n128_u64[0])
    {
      return 1;
    }

    v39 = *v18;
    *v18 = *v20;
    *v20 = v39;
    if (v18->n128_u64[0] >= v6->n128_u64[0])
    {
      return 1;
    }

    v40 = *v6;
    *v6 = *v18;
    *v18 = v40;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u64[0];
    v4 = a2 - 1;
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 >= *a1)
  {
    if (v12 < v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u64[0] < v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 >= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 >= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = v30->n128_u64[0];
    if (v30->n128_u64[0] < v11->n128_u64[0])
    {
      v34 = v30->n128_u64[1];
      v35 = v31;
      while (1)
      {
        *(a1 + v35 + 48) = *(a1 + v35 + 32);
        if (v35 == -32)
        {
          break;
        }

        v36 = *(a1 + v35 + 16);
        v35 -= 16;
        if (v33 >= v36)
        {
          v37 = (a1 + v35 + 48);
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v33;
      v37[1] = v34;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

void minijson::detail::anonymous namespace::adjust_stream_settings(uint64_t *a1)
{
  v2 = (a1 + *(*a1 - 24));
  v3 = std::locale::classic();
  std::ios_base::getloc(v2);
  std::ios_base::imbue(v2, v3);
  std::locale::~locale(&v8);
  rdbuf = v2->__rdbuf_;
  if (rdbuf)
  {
    (*(rdbuf->__locale_ + 2))(rdbuf, v3);
    std::locale::locale(&v7, rdbuf + 1);
    std::locale::operator=(rdbuf + 1, v3);
    std::locale::~locale(&v7);
  }

  std::locale::~locale(&v6);
  v5 = *a1;
  *(a1 + *(*a1 - 24) + 8) &= 0xFFFFF3FF;
  *(a1 + *(v5 - 24) + 8) = *(a1 + *(v5 - 24) + 8) & 0xFFFFFFB5 | 2;
  *(a1 + *(v5 - 24) + 24) = 0;
}

uint64_t minijson::writer::next_field(minijson::writer *this)
{
  v2 = *(this + 1);
  if (v2 == 1)
  {
    v3 = *(this + 1);
    v5 = 44;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v5, 1);
  }

  else if (!v2)
  {
    minijson::writer::write_opening_bracket(*this, *(this + 1));
  }

  result = minijson::writer::write_pretty_print_token(this, 0);
  *(this + 1) = 1;
  return result;
}

void *minijson::writer::write_field_name(std::locale::__imp **this, char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = this[1];
  LOBYTE(v5) = 58;
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, &v5, 1);
  if (*(this + 24) == 1)
  {
    v5 = this[1];
    v7 = 1;
    v6 = 32;
    return std::ostream::write();
  }

  return result;
}

uint64_t minijson::detail::anonymous namespace::write_quoted_string(std::locale::__imp *a1, _BYTE *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 8;
  *(a1 + *(v4 - 24) + 8) = *(a1 + *(v4 - 24) + 8) & 0xFFFFFF4F | 0x80;
  v5 = a1 + *(v4 - 24);
  if (*(v5 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(v4 - 24)));
    v6 = std::locale::use_facet(&v12, MEMORY[0x1E69E5318]);
    v7 = (v6->__vftable[2].~facet_0)(v6, 32);
    std::locale::~locale(&v12);
    *(v5 + 36) = v7;
  }

  *(v5 + 36) = 48;
  v12.__locale_ = a1;
  v14 = 1;
  v13[0] = 34;
  while (1)
  {
    v8 = *a2;
    if (v8 > 0xC)
    {
      switch(v8)
      {
        case 0xDu:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\\r");
          goto LABEL_22;
        case 0x5Cu:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\\\"");
          goto LABEL_22;
        case 0x22u:
          minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\");
          goto LABEL_22;
      }

      goto LABEL_16;
    }

    if (v8 == 9)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\\t");
      goto LABEL_22;
    }

    if (v8 == 10)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\\n");
      goto LABEL_22;
    }

    if (!*a2)
    {
      break;
    }

LABEL_16:
    if (v8 == 127 || v8 - 1 <= 0x1E)
    {
      minijson::detail::buffered_writer<128ul>::operator<<<3ul>(&v12, "\\u");
      std::ostream::write();
      v14 = 0;
      *(a1 + *(*a1 - 24) + 24) = 4;
      MEMORY[0x1E12C1210](a1, *a2);
    }

    else
    {
      v9 = v14;
      if (v14 == 128)
      {
        std::ostream::write();
        v9 = 0;
      }

      v14 = v9 + 1;
      v13[v9] = v8;
    }

LABEL_22:
    ++a2;
  }

  v10 = v14;
  if (v14 == 128)
  {
    std::ostream::write();
    v10 = 0;
  }

  v14 = v10 + 1;
  v13[v10] = 34;
  result = std::ostream::write();
  v14 = 0;
  *(a1 + *(*a1 - 24) + 8) = *(a1 + *(*a1 - 24) + 8) & 0xFFFFFFB5 | 2;
  return result;
}

void *minijson::detail::buffered_writer<128ul>::operator<<<3ul>(void *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 1;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = *(a2 + v4);
    v9 = a1[17];
    if (v9 == 128)
    {
      std::ostream::write();
      v9 = 0;
    }

    v6 = 0;
    a1[17] = v9 + 1;
    *(v5 + v9) = v8;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return a1;
}

void *minijson::writer::write_opening_bracket(minijson::writer *this, void *a2)
{
  if (this)
  {
    v5 = 91;
    v3 = &v5;
  }

  else
  {
    v6 = 123;
    v3 = &v6;
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v3, 1);
}

uint64_t minijson::writer::write_pretty_print_token(uint64_t result, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(result + 24) == 1)
  {
    v2 = result;
    v9 = 0;
    if (a2)
    {
      if (a2 == 2)
      {
        if (*(result + 4))
        {
          goto LABEL_5;
        }
      }

      else
      {
        v9 = 1;
        v8[0] = 32;
      }

      return std::ostream::write();
    }

LABEL_5:
    v3 = *(result + 40);
    v4 = *(result + 16);
    if (!a2)
    {
      ++v4;
    }

    if ((*(result + 40) & 1) == 0)
    {
      v4 *= *(result + 32);
    }

    v9 = 1;
    v8[0] = 10;
    if (v4)
    {
      v5 = v4 - 1;
      v6 = 1;
      while (1)
      {
        v7 = (v3 & 1) != 0 ? 9 : 32;
        if (v6 == 16)
        {
          std::ostream::write();
          v6 = 0;
        }

        v9 = v6 + 1;
        v8[v6] = v7;
        if (!v5)
        {
          break;
        }

        v6 = v9;
        v3 = *(v2 + 40);
        --v5;
      }
    }

    return std::ostream::write();
  }

  return result;
}

uint64_t minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(uint64_t result, char *a2)
{
  if (*(result + 4) != 2)
  {
    v4 = result;
    minijson::writer::next_field(v4);
    if (a2)
    {
      minijson::writer::write_field_name(v4, a2);
    }

    JUMPOUT(0x1E12C1210);
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,false>(void **a1, char *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v253 = (a1 + 5);
  v257 = a1 + 11;
  v244 = a1 - 8;
  v245 = a1 - 13;
  v242 = a1 - 12;
  v243 = a1 - 2;
  v240 = a1 + 92;
  v241 = a1 - 1;
  v261 = a1;
  v239 = a1 + 12;
  while (1)
  {
    v7 = a2;
    v8 = a2 - v261;
    v9 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v261) >> 3);
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v261, (v261 + 13), (a2 - 104), a5);
          return;
        case 4:
          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v261, (v261 + 13), v261 + 13, (a2 - 104), a5);
          return;
        case 5:
          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v261, (v261 + 13), v261 + 13, (v261 + 39), (a2 - 104), a5);
          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      v7 = a2;
      if (v9 == 2)
      {
        *&v272 = a2 - 104;
        *(&v272 + 1) = a2 - 64;
        *&v273 = a2 - 16;
        *(&v273 + 1) = a2 - 12;
        v274 = (a2 - 8);
        v262.n128_u64[0] = v261;
        v262.n128_u64[1] = (v261 + 5);
        *&v263 = v261 + 11;
        *(&v263 + 1) = v261 + 92;
        v264 = v261 + 12;
        v110 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v272, &v262, a5);
        if (v110 < 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(v261, (a2 - 104));
        }

        return;
      }
    }

    if (v8 <= 2495)
    {
      break;
    }

    if (!a3)
    {
      if (v261 != v7)
      {
        v134 = (v9 - 2) >> 1;
        v259 = v134;
        do
        {
          v135 = v134;
          if (v259 >= v134)
          {
            v136 = (2 * v134) | 1;
            v137 = &v261[13 * v136];
            if (2 * v134 + 2 < v9)
            {
              *&v272 = &v261[13 * v136];
              *(&v272 + 1) = v137 + 5;
              *&v273 = v137 + 11;
              *(&v273 + 1) = v137 + 92;
              v274 = v137 + 12;
              v262.n128_u64[0] = (v137 + 13);
              v262.n128_u64[1] = (v137 + 18);
              *&v263 = v137 + 24;
              *(&v263 + 1) = v137 + 196;
              v264 = v137 + 25;
              if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v272, &v262, a5) & 0x80u) != 0)
              {
                v137 += 13;
                v136 = 2 * v135 + 2;
              }
            }

            *&v272 = v137;
            *(&v272 + 1) = v137 + 5;
            v138 = &v261[13 * v135];
            *&v273 = v137 + 11;
            *(&v273 + 1) = v137 + 92;
            v274 = v137 + 12;
            v262.n128_u64[0] = v138;
            v262.n128_u64[1] = (v138 + 5);
            *&v263 = v138 + 11;
            *(&v263 + 1) = v138 + 92;
            v264 = v138 + 12;
            if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v272, &v262, a5) & 0x80) == 0)
            {
              v247 = v135;
              v139 = *v138;
              v140 = *(v138 + 1);
              v274 = v138[4];
              v272 = v139;
              v273 = v140;
              v275 = *(v138 + 5);
              v276 = v138[7];
              v138[5] = 0;
              v138[6] = 0;
              v138[7] = 0;
              v277 = *(v138 + 4);
              v278 = v138[10];
              v138[8] = 0;
              v138[9] = 0;
              v138[10] = 0;
              v141 = v138[11];
              v280 = *(v138 + 96);
              v279 = v141;
              do
              {
                v142 = 0;
                v143 = v137;
                v144 = *v137;
                v145 = *(v137 + 1);
                v138[4] = v137[4];
                *v138 = v144;
                *(v138 + 1) = v145;
                do
                {
                  v146 = &v138[v142];
                  v147 = &v137[v142];
                  std::vector<std::string>::__vdeallocate(&v138[v142 + 5]);
                  v148 = *&v137[v142 + 5];
                  *(v146 + 5) = v148;
                  v146[7] = v137[v142 + 7];
                  v147[5] = 0;
                  v147[6] = 0;
                  v147[7] = 0;
                  v142 += 3;
                }

                while (v142 != 6);
                v149 = v137[11];
                *(v138 + 96) = *(v137 + 96);
                v138[11] = v149;
                if (v259 < v136)
                {
                  break;
                }

                v150 = (2 * v136) | 1;
                v137 = &v261[13 * v150];
                if (2 * v136 + 2 < v9)
                {
                  v262.n128_u64[0] = &v261[13 * v150];
                  v262.n128_u64[1] = (v137 + 5);
                  *&v263 = v137 + 11;
                  *(&v263 + 1) = v137 + 92;
                  v264 = v137 + 12;
                  v281 = v137 + 13;
                  v282 = (v137 + 18);
                  v283 = (v137 + 24);
                  v284 = v137 + 196;
                  v285 = (v137 + 25);
                  if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v148) & 0x80u) != 0)
                  {
                    v137 += 13;
                    v150 = 2 * v136 + 2;
                  }
                }

                v262.n128_u64[0] = v137;
                v262.n128_u64[1] = (v137 + 5);
                *&v263 = v137 + 11;
                *(&v263 + 1) = v137 + 92;
                v264 = v137 + 12;
                v281 = &v272;
                v282 = &v275;
                v283 = &v279;
                v284 = &v279 + 4;
                v285 = &v280;
                v138 = v143;
                v136 = v150;
              }

              while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v148) & 0x80) == 0);
              v151 = 0;
              v152 = v272;
              v153 = v273;
              v143[4] = v274;
              *v143 = v152;
              *(v143 + 1) = v153;
              do
              {
                v154 = &v143[v151];
                v155 = (&v272 + v151 * 8);
                std::vector<std::string>::__vdeallocate(&v143[v151 + 5]);
                *(v154 + 5) = *(&v275 + v151 * 8);
                v154[7] = *(&v276 + v151 * 8);
                v155[5] = 0;
                v155[6] = 0;
                v155[7] = 0;
                v151 += 3;
              }

              while (v151 != 6);
              v156 = v279;
              *(v143 + 96) = v280;
              v143[11] = v156;
              for (i = 64; i != 16; i -= 24)
              {
                v262.n128_u64[0] = &v272 + i;
                std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v262);
              }

              v135 = v247;
            }
          }

          v134 = v135 - 1;
        }

        while (v135);
        v158 = 0x4EC4EC4EC4EC4EC5 * ((a2 - v261) >> 3);
        do
        {
          if (v158 >= 2)
          {
            v159 = 0;
            v160 = v261;
            v161 = *v261;
            v162 = *(v261 + 1);
            v163 = v261[4];
            v265 = *(v261 + 5);
            v266 = v261[7];
            v261[6] = 0;
            v261[7] = 0;
            v261[5] = 0;
            v267 = *(v261 + 4);
            v264 = v163;
            v164 = v261[11];
            v268 = v261[10];
            v261[9] = 0;
            v261[10] = 0;
            v261[8] = 0;
            v270 = *(v261 + 96);
            v269 = v164;
            v262 = v161;
            v263 = v162;
            do
            {
              v165 = &v160[13 * v159];
              v166 = v165 + 13;
              v167 = 2 * v159;
              v159 = (2 * v159) | 1;
              v168 = v167 + 2;
              if (v167 + 2 < v158)
              {
                v169 = v165 + 26;
                *&v272 = v165 + 13;
                *(&v272 + 1) = v165 + 18;
                *&v273 = v165 + 24;
                *(&v273 + 1) = v165 + 196;
                v274 = v165 + 25;
                v281 = v165 + 26;
                v282 = (v165 + 31);
                v283 = (v165 + 37);
                v284 = v165 + 300;
                v285 = (v165 + 38);
                if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v272, &v281, v161) & 0x80u) != 0)
                {
                  v166 = v169;
                  v159 = v168;
                }
              }

              v170 = 0;
              v171 = *v166;
              v172 = *(v166 + 1);
              v160[4] = v166[4];
              *v160 = v171;
              *(v160 + 1) = v172;
              v173 = (v166 + 5);
              do
              {
                v174 = &v160[v170];
                v175 = &v166[v170];
                std::vector<std::string>::__vdeallocate(&v160[v170 + 5]);
                v161 = *&v166[v170 + 5];
                *(v174 + 5) = v161;
                v174[7] = v166[v170 + 7];
                v175[5] = 0;
                v175[6] = 0;
                v175[7] = 0;
                v170 += 3;
              }

              while (v170 != 6);
              v177 = v166 + 11;
              v176 = v166[11];
              *(v160 + 96) = *(v166 + 96);
              v160[11] = v176;
              v160 = v166;
            }

            while (v159 <= ((v158 - 2) >> 1));
            if (v166 == (a2 - 104))
            {
              v212 = v262;
              v213 = v263;
              v166[4] = v264;
              *v166 = v212;
              *(v166 + 1) = v213;
              v214 = &v265;
              v215 = 2;
              do
              {
                std::vector<std::string>::__vdeallocate(v173);
                *&v173->__begin_ = *v214;
                v173->__end_cap_.__value_ = *(v214 + 2);
                *v214 = 0;
                *(v214 + 1) = 0;
                *(v214 + 2) = 0;
                v214 = (v214 + 24);
                ++v173;
                --v215;
              }

              while (v215);
              v216 = v269;
              *(v177 + 8) = v270;
              *v177 = v216;
            }

            else
            {
              v178 = 0;
              v179 = *(a2 - 104);
              v180 = *(a2 - 88);
              v166[4] = *(a2 - 9);
              *v166 = v179;
              *(v166 + 1) = v180;
              do
              {
                v181 = &v166[v178];
                v182 = &a2[v178 * 8];
                std::vector<std::string>::__vdeallocate(&v166[v178 + 5]);
                *(v181 + 5) = *&a2[v178 * 8 - 64];
                v181[7] = *&a2[v178 * 8 - 48];
                *(v182 - 8) = 0;
                *(v182 - 7) = 0;
                *(v182 - 6) = 0;
                v178 += 3;
              }

              while (v178 != 6);
              v183 = 0;
              v184 = *(a2 - 2);
              *(v166 + 96) = *(a2 - 8);
              *v177 = v184;
              v185 = v262;
              v186 = v263;
              *(a2 - 9) = v264;
              *(a2 - 104) = v185;
              *(a2 - 88) = v186;
              do
              {
                v187 = &a2[v183];
                v188 = &v262.n128_u64[v183 / 8];
                std::vector<std::string>::__vdeallocate(&a2[v183 - 64]);
                v189 = *(&v265 + v183);
                *(v187 - 4) = v189;
                *(v187 - 6) = *(&v266 + v183);
                v188[5] = 0;
                v188[6] = 0;
                v188[7] = 0;
                v183 += 24;
              }

              while (v183 != 48);
              v190 = v269;
              *(a2 - 8) = v270;
              *(a2 - 2) = v190;
              v191 = v166 - v261 + 104;
              if (v191 >= 105)
              {
                v192 = (0x4EC4EC4EC4EC4EC5 * (v191 >> 3) - 2) >> 1;
                v193 = &v261[13 * v192];
                *&v272 = v193;
                *(&v272 + 1) = v193 + 5;
                *&v273 = v193 + 11;
                *(&v273 + 1) = v193 + 92;
                v274 = v193 + 12;
                v281 = v166;
                v282 = (v166 + 5);
                v283 = (v166 + 11);
                v284 = v166 + 92;
                v285 = (v166 + 12);
                if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v272, &v281, v189) & 0x80) != 0)
                {
                  v194 = *v166;
                  v195 = *(v166 + 1);
                  v274 = v166[4];
                  v272 = v194;
                  v273 = v195;
                  v275 = *(v166 + 5);
                  v276 = v166[7];
                  v173->__begin_ = 0;
                  v166[6] = 0;
                  v166[7] = 0;
                  v277 = *(v166 + 4);
                  v278 = v166[10];
                  v166[8] = 0;
                  v166[9] = 0;
                  v166[10] = 0;
                  v196 = *v177;
                  v280 = *(v166 + 96);
                  v279 = v196;
                  do
                  {
                    v197 = 0;
                    v198 = v193;
                    v199 = *v193;
                    v200 = *(v193 + 1);
                    v166[4] = v193[4];
                    *v166 = v199;
                    *(v166 + 1) = v200;
                    do
                    {
                      v201 = &v166[v197];
                      v202 = &v193[v197];
                      std::vector<std::string>::__vdeallocate(&v166[v197 + 5]);
                      v203 = *&v193[v197 + 5];
                      *(v201 + 5) = v203;
                      v201[7] = v193[v197 + 7];
                      v202[5] = 0;
                      v202[6] = 0;
                      v202[7] = 0;
                      v197 += 3;
                    }

                    while (v197 != 6);
                    v204 = v193[11];
                    *(v166 + 96) = *(v193 + 96);
                    v166[11] = v204;
                    if (!v192)
                    {
                      break;
                    }

                    v192 = (v192 - 1) >> 1;
                    v193 = &v261[13 * v192];
                    v281 = v193;
                    v282 = (v193 + 5);
                    v283 = (v193 + 11);
                    v284 = v193 + 92;
                    v285 = (v193 + 12);
                    v271[0] = &v272;
                    v271[1] = &v275;
                    v271[2] = &v279;
                    v271[3] = &v279 + 4;
                    v271[4] = &v280;
                    v166 = v198;
                  }

                  while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v281, v271, v203) & 0x80) != 0);
                  v205 = 0;
                  v206 = v272;
                  v207 = v273;
                  v198[4] = v274;
                  *v198 = v206;
                  *(v198 + 1) = v207;
                  do
                  {
                    v208 = &v198[v205];
                    v209 = (&v272 + v205 * 8);
                    std::vector<std::string>::__vdeallocate(&v198[v205 + 5]);
                    *(v208 + 5) = *(&v275 + v205 * 8);
                    v208[7] = *(&v276 + v205 * 8);
                    v209[5] = 0;
                    v209[6] = 0;
                    v209[7] = 0;
                    v205 += 3;
                  }

                  while (v205 != 6);
                  v210 = v279;
                  *(v198 + 96) = v280;
                  v198[11] = v210;
                  for (j = 64; j != 16; j -= 24)
                  {
                    v281 = (&v272 + j);
                    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v281);
                  }
                }
              }
            }

            for (k = 64; k != 16; k -= 24)
            {
              *&v272 = &v262 + k;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v272);
            }
          }

          a2 -= 104;
        }

        while (v158-- > 2);
      }

      return;
    }

    v10 = v9 >> 1;
    v11 = v261;
    v12 = &v261[13 * v10];
    v13 = (v7 - 104);
    v250 = (v7 - 104);
    if (v8 < 0x3401)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v12, v261, v13, a5);
    }

    else
    {
      v254 = a3;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v261, v12, v13, a5);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>((v261 + 13), (v12 - 13), v7 - 13, v14);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(v261 + 13, (v12 + 13), (v7 - 312), v15);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>((v12 - 13), v12, (v12 + 13), v16);
      v17 = 0;
      v18 = *v261;
      v19 = *(v261 + 1);
      v274 = v261[4];
      v272 = v18;
      v273 = v19;
      v275 = *(v261 + 5);
      v276 = v261[7];
      v253->__begin_ = 0;
      v253->__end_ = 0;
      v253->__end_cap_.__value_ = 0;
      v277 = *(v261 + 4);
      v278 = v261[10];
      v261[8] = 0;
      v261[9] = 0;
      v261[10] = 0;
      v20 = *v257;
      v280 = *(v257 + 8);
      v279 = v20;
      v21 = *v12;
      v22 = *(v12 + 1);
      v261[4] = v12[4];
      *v261 = v21;
      *(v261 + 1) = v22;
      do
      {
        v23 = &v261[v17];
        v24 = &v12[v17];
        std::vector<std::string>::__vdeallocate(&v261[v17 + 5]);
        *(v23 + 5) = *&v12[v17 + 5];
        v23[7] = v12[v17 + 7];
        v24[5] = 0;
        v24[6] = 0;
        v24[7] = 0;
        v17 += 3;
      }

      while (v17 != 6);
      v25 = 0;
      v26 = v12[11];
      *(v257 + 8) = *(v12 + 96);
      *v257 = v26;
      v27 = v272;
      v28 = v273;
      v12[4] = v274;
      *v12 = v27;
      *(v12 + 1) = v28;
      do
      {
        v29 = &v12[v25];
        v30 = (&v272 + v25 * 8);
        std::vector<std::string>::__vdeallocate(&v12[v25 + 5]);
        *(v29 + 5) = *(&v275 + v25 * 8);
        v29[7] = *(&v276 + v25 * 8);
        v30[5] = 0;
        v30[6] = 0;
        v30[7] = 0;
        v25 += 3;
      }

      while (v25 != 6);
      v31 = v279;
      *(v12 + 96) = v280;
      v12[11] = v31;
      for (m = 64; m != 16; m -= 24)
      {
        v262.n128_u64[0] = &v272 + m;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v262);
      }

      v7 = a2;
      v11 = v261;
      a3 = v254;
    }

    v255 = a3 - 1;
    if ((a4 & 1) == 0)
    {
      *&v272 = v245;
      *(&v272 + 1) = v244;
      *&v273 = v243;
      *(&v273 + 1) = v242;
      v274 = v241;
      v262.n128_u64[0] = v11;
      v262.n128_u64[1] = v253;
      *&v263 = v257;
      *(&v263 + 1) = v240;
      v264 = v239;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v272, &v262, v33) & 0x80) == 0)
      {
        v74 = (v11 + 5);
        v75 = *(v11 + 5);
        v76 = *(v11 + 1);
        v77 = v11[4];
        v272 = *v11;
        v273 = v76;
        v275 = v75;
        v78 = v11[7];
        v274 = v77;
        v276 = v78;
        v11[5] = 0;
        v11[6] = 0;
        v11[7] = 0;
        v277 = *(v11 + 4);
        v79 = v277;
        v278 = v11[10];
        v11[9] = 0;
        v11[10] = 0;
        v80 = v11[11];
        v11[8] = 0;
        v258 = v11 + 11;
        v280 = *(v11 + 96);
        v279 = v80;
        v262.n128_u64[0] = &v272;
        v262.n128_u64[1] = &v275;
        *&v263 = &v279;
        *(&v263 + 1) = &v279 + 4;
        v264 = &v280;
        v281 = v250;
        v282 = v7 - 64;
        v283 = v7 - 16;
        v284 = v7 - 12;
        v285 = v7 - 8;
        if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v79) & 0x80) != 0)
        {
          v83 = v11;
          do
          {
            a1 = v83 + 13;
            v262.n128_u64[0] = &v272;
            v262.n128_u64[1] = &v275;
            *&v263 = &v279;
            *(&v263 + 1) = &v279 + 4;
            v264 = &v280;
            v281 = v83 + 13;
            v282 = (v83 + 18);
            v283 = (v83 + 24);
            v284 = v83 + 196;
            v285 = (v83 + 25);
            v84 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v81);
            v83 = a1;
          }

          while ((v84 & 0x80) == 0);
        }

        else
        {
          v82 = (v11 + 25);
          do
          {
            a1 = (v82 - 96);
            if (v82 - 96 >= a2)
            {
              break;
            }

            v262.n128_u64[0] = &v272;
            v262.n128_u64[1] = &v275;
            *&v263 = &v279;
            *(&v263 + 1) = &v279 + 4;
            v264 = &v280;
            v281 = (v82 - 96);
            v282 = v82 - 56;
            v283 = v82 - 8;
            v284 = v82 - 4;
            v285 = v82;
            v82 += 104;
          }

          while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v81) & 0x80) == 0);
        }

        v85 = a2;
        if (a1 < a2)
        {
          v86 = a2;
          do
          {
            v85 = (v86 - 104);
            v262.n128_u64[0] = &v272;
            v262.n128_u64[1] = &v275;
            *&v263 = &v279;
            *(&v263 + 1) = &v279 + 4;
            v264 = &v280;
            v281 = (v86 - 104);
            v282 = v86 - 64;
            v283 = v86 - 16;
            v284 = v86 - 12;
            v285 = v86 - 8;
            v87 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v81);
            v86 = v85;
          }

          while (v87 < 0);
        }

        while (a1 < v85)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, v85);
          do
          {
            v262.n128_u64[0] = &v272;
            v262.n128_u64[1] = &v275;
            v89 = a1 + 18;
            v90 = a1 + 24;
            v91 = a1 + 196;
            v92 = a1 + 25;
            a1 += 13;
            *&v263 = &v279;
            *(&v263 + 1) = &v279 + 4;
            v264 = &v280;
            v281 = a1;
            v282 = v89;
            v283 = v90;
            v284 = v91;
            v285 = v92;
          }

          while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v88) & 0x80) == 0);
          do
          {
            v262.n128_u64[0] = &v272;
            v262.n128_u64[1] = &v275;
            v93 = v85 - 4;
            v94 = v85 - 1;
            v95 = v85 - 12;
            v96 = v85 - 8;
            v85 = (v85 - 104);
            *&v263 = &v279;
            *(&v263 + 1) = &v279 + 4;
            v264 = &v280;
            v281 = v85;
            v282 = v93;
            v283 = v94;
            v284 = v95;
            v285 = v96;
          }

          while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v88) & 0x80) != 0);
        }

        v97 = a1 - 13;
        if (a1 - 13 != v261)
        {
          v98 = *v97;
          v99 = *(a1 - 11);
          v261[4] = *(a1 - 9);
          *v261 = v98;
          *(v261 + 1) = v99;
          v100 = a1 - 8;
          v101 = 2;
          do
          {
            std::vector<std::string>::__vdeallocate(v74);
            *&v74->__begin_ = *v100;
            v74->__end_cap_.__value_ = v100[2];
            *v100 = 0;
            v100[1] = 0;
            v100[2] = 0;
            v100 += 3;
            ++v74;
            --v101;
          }

          while (v101);
          v102 = *(a1 - 2);
          *(v258 + 8) = *(a1 - 8);
          *v258 = v102;
        }

        v103 = 0;
        v104 = v272;
        v105 = v273;
        *(a1 - 9) = v274;
        *v97 = v104;
        *(a1 - 11) = v105;
        do
        {
          v106 = &a1[v103];
          v107 = (&v272 + v103 * 8);
          std::vector<std::string>::__vdeallocate(&a1[v103 - 8]);
          *(v106 - 4) = *(&v275 + v103 * 8);
          *(v106 - 6) = *(&v276 + v103 * 8);
          v107[5] = 0;
          v107[6] = 0;
          v107[7] = 0;
          v103 += 3;
        }

        while (v103 != 6);
        v108 = v279;
        *(a1 - 8) = v280;
        *(a1 - 2) = v108;
        for (n = 64; n != 16; n -= 24)
        {
          v262.n128_u64[0] = &v272 + n;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v262);
        }

        a4 = 0;
        a3 = v255;
        goto LABEL_1;
      }
    }

    v34 = 0;
    v35 = *v11;
    v36 = *(v11 + 1);
    v37 = v11[4];
    v275 = *(v11 + 5);
    v38 = v11[7];
    v274 = v37;
    v276 = v38;
    v253->__end_ = 0;
    v253->__end_cap_.__value_ = 0;
    v253->__begin_ = 0;
    v277 = *(v11 + 4);
    v278 = v11[10];
    v11[9] = 0;
    v11[10] = 0;
    v11[8] = 0;
    v39 = *v257;
    v280 = *(v257 + 8);
    v272 = v35;
    v273 = v36;
    v279 = v39;
    do
    {
      v262.n128_u64[0] = &v11[v34 + 13];
      v262.n128_u64[1] = &v11[v34 + 18];
      *&v263 = &v11[v34 + 24];
      *(&v263 + 1) = &v11[v34 + 24] + 4;
      v264 = &v11[v34 + 25];
      v281 = &v272;
      v282 = &v275;
      v283 = &v279;
      v284 = &v279 + 4;
      v285 = &v280;
      v34 += 13;
    }

    while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v35) & 0x80) != 0);
    v40 = &v11[v34];
    v41 = v7;
    if (&v11[v34 - 13] == v11)
    {
      v44 = v7;
      while (v40 < v44)
      {
        v42 = (v44 - 104);
        v262.n128_u64[0] = (v44 - 104);
        v262.n128_u64[1] = (v44 - 64);
        *&v263 = v44 - 16;
        *(&v263 + 1) = v44 - 12;
        v264 = (v44 - 8);
        v281 = &v272;
        v282 = &v275;
        v283 = &v279;
        v284 = &v279 + 4;
        v285 = &v280;
        v45 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v35);
        v44 = v42;
        if (v45 < 0)
        {
          goto LABEL_32;
        }
      }

      v42 = v44;
    }

    else
    {
      do
      {
        v42 = (v41 - 104);
        v262.n128_u64[0] = (v41 - 104);
        v262.n128_u64[1] = (v41 - 64);
        *&v263 = v41 - 16;
        *(&v263 + 1) = v41 - 12;
        v264 = (v41 - 8);
        v281 = &v272;
        v282 = &v275;
        v283 = &v279;
        v284 = &v279 + 4;
        v285 = &v280;
        v43 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v35);
        v41 = v42;
      }

      while ((v43 & 0x80) == 0);
    }

LABEL_32:
    v248 = v40;
    a1 = v40;
    if (v40 < v42)
    {
      v46 = v42;
      do
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, v46);
        do
        {
          v48 = a1 + 18;
          v49 = a1 + 24;
          v50 = a1 + 196;
          v51 = a1 + 25;
          a1 += 13;
          v262.n128_u64[0] = a1;
          v262.n128_u64[1] = v48;
          *&v263 = v49;
          *(&v263 + 1) = v50;
          v264 = v51;
          v281 = &v272;
          v282 = &v275;
          v283 = &v279;
          v284 = &v279 + 4;
          v285 = &v280;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v47) & 0x80) != 0);
        do
        {
          v52 = v46 - 4;
          v53 = v46 - 1;
          v54 = v46 - 12;
          v55 = v46 - 1;
          v46 = (v46 - 104);
          v262.n128_u64[0] = v46;
          v262.n128_u64[1] = v52;
          *&v263 = v53;
          *(&v263 + 1) = v54;
          v264 = v55;
          v281 = &v272;
          v282 = &v275;
          v283 = &v279;
          v284 = &v279 + 4;
          v285 = &v280;
        }

        while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v47) & 0x80) == 0);
      }

      while (a1 < v46);
    }

    v56 = a1 - 13;
    v251 = (a1 - 13);
    if (a1 - 13 != v261)
    {
      v57 = *v56;
      v58 = *(a1 - 11);
      v261[4] = *(a1 - 9);
      *v261 = v57;
      *(v261 + 1) = v58;
      v59 = a1 - 8;
      v60 = v253;
      v61 = 2;
      do
      {
        std::vector<std::string>::__vdeallocate(v60);
        *&v60->__begin_ = *v59;
        v60->__end_cap_.__value_ = v59[2];
        *v59 = 0;
        v59[1] = 0;
        v59[2] = 0;
        v59 += 3;
        ++v60;
        --v61;
      }

      while (v61);
      v62 = *(a1 - 2);
      *(v257 + 8) = *(a1 - 8);
      *v257 = v62;
      v56 = a1 - 13;
    }

    v63 = 0;
    v64 = v272;
    v65 = v273;
    v56[4] = v274;
    *v56 = v64;
    *(v56 + 1) = v65;
    do
    {
      v66 = &a1[v63];
      v67 = (&v272 + v63 * 8);
      std::vector<std::string>::__vdeallocate(&a1[v63 - 8]);
      *(v66 - 4) = *(&v275 + v63 * 8);
      *(v66 - 6) = *(&v276 + v63 * 8);
      v67[5] = 0;
      v67[6] = 0;
      v67[7] = 0;
      v63 += 3;
    }

    while (v63 != 6);
    v68 = v279;
    *(a1 - 8) = v280;
    *(a1 - 2) = v68;
    for (ii = 64; ii != 16; ii -= 24)
    {
      v262.n128_u64[0] = &v272 + ii;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v262);
    }

    v71 = v248 >= v42;
    a3 = v255;
    if (!v71)
    {
      goto LABEL_52;
    }

    v72 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *>(v261, v251, v70);
    if (!std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *>(a1, a2, v73))
    {
      if (v72)
      {
        goto LABEL_1;
      }

LABEL_52:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,false>(v261, v251, v255, a4 & 1);
      a4 = 0;
      goto LABEL_1;
    }

    a2 = (a1 - 13);
    if (v72)
    {
      return;
    }
  }

  if (a4)
  {
    if (v261 != v7)
    {
      v111 = v261 + 13;
      if (v261 + 13 != a2)
      {
        v112 = 0;
        v113 = v261;
        do
        {
          v114 = v111;
          *&v272 = v111;
          *(&v272 + 1) = v113 + 18;
          *&v273 = v113 + 24;
          *(&v273 + 1) = v113 + 196;
          v274 = v113 + 25;
          v262.n128_u64[0] = v113;
          v262.n128_u64[1] = (v113 + 5);
          *&v263 = v113 + 11;
          *(&v263 + 1) = v113 + 92;
          v264 = v113 + 12;
          if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v272, &v262, a5) & 0x80) != 0)
          {
            v115 = *(v114 + 1);
            v116 = v114[4];
            v272 = *v114;
            v273 = v115;
            v275 = *(v113 + 9);
            v117 = v113[20];
            v274 = v116;
            v276 = v117;
            v113[19] = 0;
            v113[20] = 0;
            v113[18] = 0;
            v277 = *(v113 + 21);
            v278 = v113[23];
            v113[21] = 0;
            v113[22] = 0;
            v113[23] = 0;
            v118 = v113[24];
            v280 = *(v113 + 200);
            v249 = v114;
            v252 = v112;
            v119 = v112;
            v279 = v118;
            while (1)
            {
              v120 = v113;
              v121 = *(v113 + 1);
              *v114 = *v113;
              *(v114 + 1) = v121;
              v114[4] = v113[4];
              v122 = v119;
              v123 = 2;
              do
              {
                v124 = (v261 + v122);
                std::vector<std::string>::__vdeallocate((v261 + v122 + 144));
                v125 = *(v261 + v122 + 40);
                v124[9] = v125;
                v124[10].n128_u64[0] = v124[3].n128_u64[1];
                v124[3].n128_u64[0] = 0;
                v124[3].n128_u64[1] = 0;
                v124[2].n128_u64[1] = 0;
                v122 += 24;
                --v123;
              }

              while (v123);
              v114[11] = v120[11];
              *(v114 + 96) = *(v120 + 96);
              if (v120 == v261)
              {
                break;
              }

              v113 = v120 - 13;
              v262.n128_u64[0] = &v272;
              v262.n128_u64[1] = &v275;
              *&v263 = &v279;
              *(&v263 + 1) = &v279 + 4;
              v264 = &v280;
              v281 = v120 - 13;
              v282 = (v120 - 8);
              v283 = (v120 - 2);
              v284 = v120 - 12;
              v285 = (v120 - 1);
              v119 -= 104;
              v114 = v120;
              if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v125) & 0x80) == 0)
              {
                v126 = v120;
                goto LABEL_94;
              }
            }

            v126 = v261;
LABEL_94:
            v127 = 0;
            v128 = v272;
            v129 = v273;
            v126[4] = v274;
            *v126 = v128;
            *(v126 + 1) = v129;
            v114 = v249;
            do
            {
              v130 = &v120[v127];
              v131 = (&v272 + v127 * 8);
              std::vector<std::string>::__vdeallocate(&v120[v127 + 5]);
              *(v130 + 5) = *(&v275 + v127 * 8);
              v130[7] = *(&v276 + v127 * 8);
              v131[5] = 0;
              v131[6] = 0;
              v131[7] = 0;
              v127 += 3;
            }

            while (v127 != 6);
            v132 = v279;
            *(v120 + 96) = v280;
            v120[11] = v132;
            for (jj = 64; jj != 16; jj -= 24)
            {
              v262.n128_u64[0] = &v272 + jj;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v262);
            }

            v112 = v252;
          }

          v111 = v114 + 13;
          v112 += 104;
          v113 = v114;
        }

        while (v114 + 13 != a2);
      }
    }
  }

  else if (v261 != v7)
  {
    v219 = v261 + 13;
    if (v261 + 13 != a2)
    {
      do
      {
        v220 = v219;
        v221 = v261;
        *&v272 = v219;
        *(&v272 + 1) = v261 + 18;
        *&v273 = v261 + 24;
        *(&v273 + 1) = v261 + 196;
        v274 = v261 + 25;
        v262.n128_u64[0] = v261;
        v262.n128_u64[1] = (v261 + 5);
        *&v263 = v261 + 11;
        *(&v263 + 1) = v261 + 92;
        v264 = v261 + 12;
        if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v272, &v262, a5) & 0x80) != 0)
        {
          v222 = *(v220 + 1);
          v223 = v220[4];
          v272 = *v220;
          v273 = v222;
          v275 = *(v261 + 9);
          v224 = v261[20];
          v274 = v223;
          v276 = v224;
          v261[19] = 0;
          v261[20] = 0;
          v261[18] = 0;
          v277 = *(v261 + 21);
          v278 = v261[23];
          v261[21] = 0;
          v261[22] = 0;
          v261[23] = 0;
          v225 = v261[24];
          v280 = *(v261 + 200);
          v256 = v220;
          v279 = v225;
          do
          {
            v226 = 0;
            v227 = v221;
            v228 = *(v221 + 1);
            *v220 = *v221;
            *(v220 + 1) = v228;
            v220[4] = v221[4];
            do
            {
              v229 = &v221[v226];
              std::vector<std::string>::__vdeallocate(&v221[v226 + 18]);
              v230 = *&v221[v226 + 5];
              v229[9] = v230;
              v229[10].n128_u64[0] = v229[3].n128_u64[1];
              v229[3].n128_u64[0] = 0;
              v229[3].n128_u64[1] = 0;
              v229[2].n128_u64[1] = 0;
              v226 += 3;
            }

            while (v226 != 6);
            v231 = v221 + 11;
            v220[11] = v221[11];
            *(v220 + 96) = *(v221 + 96);
            v221 -= 13;
            v262.n128_u64[0] = &v272;
            v262.n128_u64[1] = &v275;
            *&v263 = &v279;
            *(&v263 + 1) = &v279 + 4;
            v264 = &v280;
            v281 = v227 - 13;
            v282 = (v227 - 8);
            v283 = (v227 - 2);
            v284 = v227 - 12;
            v285 = (v227 - 1);
            v220 = v227;
          }

          while ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v262, &v281, v230) & 0x80) != 0);
          v232 = 0;
          v233 = v272;
          v234 = v273;
          v227[4] = v274;
          *v227 = v233;
          *(v227 + 1) = v234;
          do
          {
            v235 = &v221[v232];
            v236 = (&v272 + v232 * 8);
            std::vector<std::string>::__vdeallocate(&v221[v232 + 18]);
            *(v235 + 9) = *(&v275 + v232 * 8);
            v235[20] = *(&v276 + v232 * 8);
            v236[5] = 0;
            v236[6] = 0;
            v236[7] = 0;
            v232 += 3;
          }

          while (v232 != 6);
          v237 = v279;
          *(v231 + 8) = v280;
          *v231 = v237;
          for (kk = 64; kk != 16; kk -= 24)
          {
            v262.n128_u64[0] = &v272 + kk;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v262);
          }

          v220 = v256;
        }

        v219 = v220 + 13;
        v261 = v220;
      }

      while (v220 + 13 != a2);
    }
  }
}

uint64_t **AMCP::write_json_object_array<AMCP::Terminal_Description>(uint64_t a1, char *a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  minijson::writer::next_field(a1);
  minijson::writer::write_field_name(a1, v5);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v20 = *(a1 + 24);
  v21 = *(a1 + 40);
  LOBYTE(v17) = 1;
  HIDWORD(v17) = 0;
  v18 = v7;
  v19 = v6 + 1;
  v8 = *a3;
  if (*a3 != a3[1])
  {
    minijson::writer::next_field(&v17);
    v9 = v18;
    v15 = v20;
    v16 = v21;
    LOBYTE(v12) = 0;
    HIDWORD(v12) = 0;
    v13 = v18;
    v14 = v19 + 1;
    std::string::basic_string[abi:ne200100]<0>(buf, "Format");
    if (v23 >= 0)
    {
      v10 = buf;
    }

    else
    {
      v10 = *buf;
    }

    minijson::writer::next_field(&v12);
    minijson::writer::write_field_name(&v12, v10);
    v27 = v15;
    v28 = v16;
    LOBYTE(v24) = 0;
    HIDWORD(v24) = 0;
    v25 = v13;
    v26 = v14 + 1;
    minijson::writer::next_field(&v24);
    minijson::writer::write_field_name(&v24, "SampleRate");
    if ((*v8 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      MEMORY[0x1E12C11E0](v25);
    }

    else
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "null", 4);
    }

    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v24, "FormatID");
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v24, "FormatFlags");
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v24, "BytesPerPacket");
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v24, "FramesPerPacket");
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v24, "BytesPerFrame");
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v24, "ChannelsPerFrame");
    minijson::writer::write_helper<unsigned int,minijson::default_value_writer<unsigned int,void>>(&v24, "BitsPerChannel");
    minijson::writer::close(&v24);
    if (v23 < 0)
    {
      operator delete(*buf);
    }

    std::string::basic_string[abi:ne200100]<0>(&v24, "PublishTags");
    AMCP::write_json_array<std::string>(&v12, &v24, (v8 + 40));
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v24);
    }

    std::string::basic_string[abi:ne200100]<0>(&v24, "SubscribeToTags");
    AMCP::write_json_array<std::string>(&v12, &v24, (v8 + 64));
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v24);
    }

    AMCP::get_enum_string_bimap<AMCP::Terminal_Source_Mix_Policy>();
    v25 = &v27 + 1;
    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Terminal_Source_Mix_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Terminal_Source_Mix_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container(&v26);
  }

  return minijson::writer::close(&v17);
}

void sub_1DE6C8E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, char a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a28)
  {
    operator delete(a28);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v46 - 240);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a43);
  MEMORY[0x1E12C0F00](&a41);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (v44)
  {
    __cxa_free_exception(v43);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v46 - 241));
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(v45 + 16);
  _Unwind_Resume(a1);
}

uint64_t **minijson::writer::close(uint64_t **this)
{
  if (*(this + 1) != 2)
  {
    v8 = v1;
    v9 = v2;
    v3 = this;
    if (!*(v3 + 1))
    {
      minijson::writer::write_opening_bracket(*v3, *(v3 + 1));
    }

    minijson::writer::write_pretty_print_token(v3, 2);
    v4 = *(v3 + 1);
    if (*v3 == 1)
    {
      v6 = 93;
      v5 = &v6;
    }

    else
    {
      v7 = 125;
      v5 = &v7;
    }

    this = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, 1);
    *(v3 + 1) = 2;
  }

  return this;
}

uint64_t **AMCP::write_json_array<std::string>(uint64_t a1, char *a2, uint64_t **a3)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  minijson::writer::next_field(a1);
  minijson::writer::write_field_name(a1, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 40);
  LOBYTE(v11[0]) = 1;
  HIDWORD(v11[0]) = 0;
  v11[1] = v6;
  v11[2] = (v7 + 1);
  v8 = *a3;
  v9 = a3[1];
  while (v8 != v9)
  {
    minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(v11, 0, v8);
    v8 += 3;
  }

  return minijson::writer::close(v11);
}

uint64_t minijson::writer::write_helper<int,minijson::default_value_writer<int,void>>(uint64_t result, char *a2)
{
  if (*(result + 4) != 2)
  {
    v4 = result;
    minijson::writer::next_field(v4);
    if (a2)
    {
      minijson::writer::write_field_name(v4, a2);
    }

    JUMPOUT(0x1E12C1200);
  }

  return result;
}

uint64_t **minijson::writer::write_helper<BOOL,minijson::default_value_writer<BOOL,void>>(uint64_t **result, char *a2, _BYTE *a3)
{
  if (*(result + 1) != 2)
  {
    v6 = result;
    minijson::writer::next_field(v6);
    if (a2)
    {
      minijson::writer::write_field_name(v6, a2);
    }

    v7 = v6[1];
    if (*a3 == 1)
    {
      v8 = "true";
      v9 = 4;
    }

    else
    {
      v8 = "false";
      v9 = 5;
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
  }

  return result;
}

void sub_1DE6C9838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6C9860);
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(*a1 + 8);
  v8 = v7 != 0;
  v9 = *(*a2 + 8);
  if (!v7)
  {
    LOBYTE(v14) = 0;
LABEL_22:
    v10 = v7 == 1819304813;
    v12 = v9 == 1819304813;
    goto LABEL_23;
  }

  v10 = v7 == 1819304813;
  if (v9)
  {
    v11 = v7 == v9;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v16 = v9 != 1819304813 && v7 < v9;
    LOBYTE(v14) = v7 == 1819304813 || v16;
    goto LABEL_22;
  }

  v12 = v9 == 1819304813;
  if (v7 == 1819304813 && v9 == 1819304813)
  {
    v50 = *(v6 + 12);
    LOBYTE(v14) = (v50 & 0x40) == 0;
    if ((*(v5 + 12) & 0x40) != 0)
    {
      v12 = 1;
      v10 = 1;
      v8 = (v50 & 0x40) == 0;
    }

    else
    {
      if ((v50 & 0x40) != 0)
      {
        goto LABEL_53;
      }

      LOBYTE(v14) = 0;
      v8 = 0;
      v12 = 1;
      v10 = 1;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v8 = 0;
  }

LABEL_23:
  v18 = !v10 || v8 || !v12;
  if (!v18 && (*(v5 + 12) & 1) != (*(v6 + 12) & 1))
  {
    v14 = *(v6 + 12);
    LOBYTE(v8) = 1;
  }

  if (!v8)
  {
    v19 = *(v5 + 32);
    if (!v19 || ((v20 = *(v6 + 32)) != 0 ? (v21 = v19 == v20) : (v21 = 1), v21))
    {
      v22 = *v5;
      if (*v5 != 0.0 && *v6 != 0.0 && v22 != *v6)
      {
        if (v22 > *v6)
        {
          return 255;
        }

        goto LABEL_52;
      }

      v24 = *(v5 + 28);
      if (v24)
      {
        v25 = *(v6 + 28);
        v11 = v24 == v25;
        v26 = v24 < v25;
        if (!v11 && v25 != 0)
        {
          LOBYTE(v14) = v26;
        }

        if (v14)
        {
          return 255;
        }

        goto LABEL_52;
      }
    }

    else
    {
      LOBYTE(v14) = v19 > v20;
    }
  }

  if (v14)
  {
    return 255;
  }

LABEL_52:
  if (!v9)
  {
    v33 = 0;
    v32 = 0;
LABEL_73:
    v28 = v9 == 1819304813;
    v30 = v7 == 1819304813;
    goto LABEL_74;
  }

LABEL_53:
  v28 = v9 == 1819304813;
  if (v7)
  {
    v29 = v9 == v7;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v35 = v7 != 1819304813 && v9 < v7;
    v33 = 1;
    v32 = v9 == 1819304813 || v35;
    goto LABEL_73;
  }

  v11 = v7 == 1819304813;
  v30 = v7 == 1819304813;
  if (v11 && v9 == 1819304813)
  {
    v52 = *(v5 + 12);
    v32 = (v52 & 0x40) == 0;
    if ((*(v6 + 12) & 0x40) != 0)
    {
      v30 = 1;
      v28 = 1;
      v33 = (v52 & 0x40) == 0;
    }

    else
    {
      if ((v52 & 0x40) != 0)
      {
        goto LABEL_120;
      }

      v32 = 0;
      v33 = 0;
      v30 = 1;
      v28 = 1;
    }
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

LABEL_74:
  if (v30 && v28 && !v33)
  {
    if ((*(v6 + 12) & 1) == (*(v5 + 12) & 1))
    {
      v39 = v33;
    }

    else
    {
      v32 = *(v5 + 12);
      v39 = 1;
    }

    v38 = v32;
    if (v39)
    {
      goto LABEL_118;
    }
  }

  else
  {
    v38 = v32;
    if (v33)
    {
      goto LABEL_118;
    }
  }

  v40 = *(v6 + 32);
  if (!v40 || (v41 = *(v5 + 32), v42 = v40 == v41, v38 = v40 > v41, !v41) || v42)
  {
    v43 = *v6;
    if (*v6 == 0.0 || ((v38 = v43 > *v5, *v5 != 0.0) ? (v44 = v43 == *v5) : (v44 = 1), v44))
    {
      v45 = *(v6 + 28);
      if (v45)
      {
        v46 = *(v5 + 28);
        v11 = v45 == v46;
        v47 = v45 < v46;
        if (v11 || v46 == 0)
        {
          v49 = v32;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          return 1;
        }

        goto LABEL_120;
      }

      v38 = v32;
    }
  }

LABEL_118:
  if (v38)
  {
    return 1;
  }

LABEL_120:
  v53 = 0;
  v54 = a1[1];
  v55 = a2[1];
  do
  {
    v56 = _ZNSt3__145__lexicographical_compare_three_way_fast_pathB8ne200100INS_11__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESB_SB_SE_SE_RT1_(*(v54 + v53), *(v54 + v53 + 8), *(v55 + v53), *(v55 + v53 + 8));
    if (v56)
    {
      return (v56 >> 31) | 1u;
    }

    v53 += 24;
  }

  while (v53 != 48);
  v57 = *a1[2];
  v58 = *a2[2];
  if (v57 < v58)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 1;
  }

  if (v57 == v58)
  {
    v59 = *a1[3];
    v60 = *a2[3];
    result = v59 < v60 ? 0xFFFFFFFFLL : 1;
    if (v59 == v60)
    {
      v61 = *a1[4];
      v62 = *a2[4];
      v63 = v61 == v62;
      if (v61 < v62)
      {
        v64 = -1;
      }

      else
      {
        v64 = 1;
      }

      if (v63)
      {
        return 0;
      }

      else
      {
        return v64;
      }
    }
  }

  return result;
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(__int128 *a1, __int128 *a2)
{
  v4 = 0;
  v5 = a1[1];
  v19 = *a1;
  v20 = v5;
  v21 = *(a1 + 4);
  v22 = *(a1 + 40);
  v23 = *(a1 + 7);
  *(a1 + 40) = 0uLL;
  v24 = a1[4];
  v6 = *(a1 + 10);
  *(a1 + 56) = 0uLL;
  *(a1 + 72) = 0uLL;
  v27 = *(a1 + 96);
  v8 = a1 + 88;
  v7 = *(a1 + 11);
  v25 = v6;
  v26 = v7;
  v9 = *a2;
  v10 = a2[1];
  *(a1 + 4) = *(a2 + 4);
  *a1 = v9;
  a1[1] = v10;
  do
  {
    v11 = a1 + v4;
    v12 = (a2 + v4);
    std::vector<std::string>::__vdeallocate((a1 + v4 + 40));
    *(v11 + 40) = *(a2 + v4 + 40);
    *(v11 + 7) = *(a2 + v4 + 56);
    v12[5] = 0;
    v12[6] = 0;
    v12[7] = 0;
    v4 += 24;
  }

  while (v4 != 48);
  v13 = 0;
  v14 = *(a2 + 11);
  v8[8] = *(a2 + 96);
  *v8 = v14;
  v15 = v20;
  *a2 = v19;
  a2[1] = v15;
  *(a2 + 4) = v21;
  do
  {
    v16 = a2 + v13;
    v17 = (&v19 + v13);
    std::vector<std::string>::__vdeallocate((a2 + v13 + 40));
    *(v16 + 40) = *(&v22 + v13);
    *(v16 + 7) = *(&v23 + v13);
    v17[6] = 0;
    v17[7] = 0;
    v17[5] = 0;
    v13 += 24;
  }

  while (v13 != 48);
  *(a2 + 11) = v26;
  *(a2 + 96) = v27;
  for (i = 64; i != 16; i -= 24)
  {
    v28 = (&v19 + i);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  }
}

void std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __n128 a4)
{
  v25 = a2;
  v26 = a2 + 40;
  v19 = a2 + 40;
  v20 = a1;
  v7 = a2 + 88;
  v8 = a2 + 92;
  v9 = a2 + 6;
  v27 = a2 + 88;
  v28 = a2 + 92;
  v29 = a2 + 6;
  v17 = a1 + 88;
  v18 = a1 + 40;
  v21 = a1 + 40;
  v22 = a1 + 88;
  v15 = a1 + 6;
  v16 = a1 + 92;
  v23 = a1 + 92;
  v24 = a1 + 6;
  if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v25, &v20, a4) & 0x80) != 0)
  {
    v25 = a3;
    v26 = a3 + 40;
    v27 = a3 + 88;
    v28 = a3 + 92;
    v29 = a3 + 6;
    v20 = a2;
    v21 = v19;
    v22 = v7;
    v23 = v8;
    v24 = v9;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v25, &v20, v10) & 0x80) != 0)
    {
      v12 = a1;
    }

    else
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, a2);
      v25 = a3;
      v26 = a3 + 40;
      v27 = a3 + 88;
      v28 = a3 + 92;
      v29 = a3 + 6;
      v20 = a2;
      v21 = v19;
      v22 = v7;
      v23 = v8;
      v24 = v9;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v25, &v20, v14) & 0x80) == 0)
      {
        return;
      }

      v12 = a2;
    }

    v13 = a3;
  }

  else
  {
    v25 = a3;
    v26 = a3 + 40;
    v27 = a3 + 88;
    v28 = a3 + 92;
    v29 = a3 + 6;
    v20 = a2;
    v21 = v19;
    v22 = v7;
    v23 = v8;
    v24 = v9;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v25, &v20, v10) & 0x80) == 0)
    {
      return;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a2, a3);
    v25 = a2;
    v26 = v19;
    v27 = v7;
    v28 = v8;
    v29 = v9;
    v20 = a1;
    v21 = v18;
    v22 = v17;
    v23 = v16;
    v24 = v15;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v25, &v20, v11) & 0x80) == 0)
    {
      return;
    }

    v12 = a1;
    v13 = a2;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(v12, v13);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __n128 a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, a2, a3, a5);
  v17 = a4;
  v18 = a4 + 40;
  v19 = a4 + 88;
  v20 = a4 + 92;
  v21 = a4 + 6;
  v12 = a3;
  v13 = a3 + 40;
  v14 = a3 + 88;
  v15 = a3 + 92;
  v16 = a3 + 6;
  if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v17, &v12, v9) & 0x80) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a3, a4);
    v17 = a3;
    v18 = a3 + 40;
    v19 = a3 + 88;
    v20 = a3 + 92;
    v21 = a3 + 6;
    v12 = a2;
    v13 = a2 + 40;
    v14 = a2 + 88;
    v15 = a2 + 92;
    v16 = a2 + 6;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v17, &v12, v10) & 0x80) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a2, a3);
      v17 = a2;
      v18 = a2 + 40;
      v19 = a2 + 88;
      v20 = a2 + 92;
      v21 = a2 + 6;
      v12 = a1;
      v13 = a1 + 40;
      v14 = a1 + 88;
      v15 = a1 + 92;
      v16 = a1 + 6;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v17, &v12, v11) & 0x80) != 0)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, __n128 a6)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, a2, a3, a4, a6);
  v20 = a5;
  v21 = a5 + 40;
  v22 = a5 + 88;
  v23 = a5 + 92;
  v24 = a5 + 6;
  v15 = a4;
  v16 = a4 + 40;
  v17 = a4 + 88;
  v18 = a4 + 92;
  v19 = a4 + 6;
  if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v20, &v15, v11) & 0x80) != 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a4, a5);
    v20 = a4;
    v21 = a4 + 40;
    v22 = a4 + 88;
    v23 = a4 + 92;
    v24 = a4 + 6;
    v15 = a3;
    v16 = a3 + 40;
    v17 = a3 + 88;
    v18 = a3 + 92;
    v19 = a3 + 6;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v20, &v15, v12) & 0x80) != 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a3, a4);
      v20 = a3;
      v21 = a3 + 40;
      v22 = a3 + 88;
      v23 = a3 + 92;
      v24 = a3 + 6;
      v15 = a2;
      v16 = a2 + 40;
      v17 = a2 + 88;
      v18 = a2 + 92;
      v19 = a2 + 6;
      if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v20, &v15, v13) & 0x80) != 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a2, a3);
        v20 = a2;
        v21 = a2 + 40;
        v22 = a2 + 88;
        v23 = a2 + 92;
        v24 = a2 + 6;
        v15 = a1;
        v16 = a1 + 40;
        v17 = a1 + 88;
        v18 = a1 + 92;
        v19 = a1 + 6;
        if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v20, &v15, v14) & 0x80) != 0)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *>(__int128 *a1, char *a2, __n128 a3)
{
  v3 = a2;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v5 <= 2)
  {
    if (v5 >= 2)
    {
      if (v5 == 2)
      {
        *&v36 = a2 - 104;
        *(&v36 + 1) = a2 - 64;
        *&v37 = a2 - 16;
        *(&v37 + 1) = a2 - 12;
        v38 = a2 - 8;
        v46 = a1;
        v47 = a1 + 40;
        v48 = a1 + 88;
        v49 = a1 + 92;
        v50 = a1 + 6;
        if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v36, &v46, a3) & 0x80) != 0)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<AMCP::Terminal_Description *&,AMCP::Terminal_Description *&>(a1, (v3 - 104));
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v5)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, (a1 + 104), (a2 - 104), a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, (a1 + 104), a1 + 13, (a2 - 104), a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, (a1 + 104), a1 + 13, (a1 + 312), (a2 - 104), a3);
      return 1;
  }

LABEL_11:
  v6 = a1 + 13;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Terminal_Description *,0>(a1, (a1 + 104), a1 + 13, a3);
  v8 = (a1 + 312);
  if ((a1 + 312) == v3)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  v33 = v3;
  while (1)
  {
    *&v36 = v8;
    *(&v36 + 1) = v8 + 40;
    *&v37 = v8 + 88;
    *(&v37 + 1) = v8 + 92;
    v38 = (v8 + 6);
    v46 = v6;
    v47 = v6 + 40;
    v48 = v6 + 88;
    v49 = v6 + 92;
    v50 = v6 + 6;
    if ((std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v36, &v46, v7) & 0x80) != 0)
    {
      v34 = v10;
      v11 = v8[1];
      v36 = *v8;
      v37 = v11;
      v38 = *(v8 + 4);
      v39 = *(v8 + 40);
      v40 = *(v8 + 7);
      *(v8 + 6) = 0;
      *(v8 + 7) = 0;
      *(v8 + 5) = 0;
      v41 = v8[4];
      v42 = *(v8 + 10);
      *(v8 + 8) = 0;
      *(v8 + 9) = 0;
      *(v8 + 10) = 0;
      v12 = *(v8 + 11);
      v44 = *(v8 + 96);
      v35 = v9;
      v13 = v9;
      v14 = v8;
      v43 = v12;
      while (1)
      {
        v15 = v6;
        v16 = v13;
        v17 = v6[1];
        *v14 = *v6;
        v14[1] = v17;
        *(v14 + 4) = *(v6 + 4);
        v18 = v13;
        v19 = 2;
        do
        {
          v20 = (a1 + v18);
          std::vector<std::string>::__vdeallocate((a1 + v18 + 352));
          v21 = *(a1 + v18 + 248);
          v20[22] = v21;
          v20[23].n128_u64[0] = v20[16].n128_u64[1];
          v20[16].n128_u64[0] = 0;
          v20[16].n128_u64[1] = 0;
          v20[15].n128_u64[1] = 0;
          v18 += 24;
          --v19;
        }

        while (v19);
        v22 = v15 + 88;
        *(v14 + 11) = *(v15 + 11);
        *(v14 + 96) = *(v15 + 96);
        if (v15 == a1)
        {
          break;
        }

        v6 = (v15 - 104);
        v46 = &v36;
        v47 = &v39;
        v48 = &v43;
        v49 = &v43 + 4;
        v50 = &v44;
        v45[0] = v15 - 104;
        v45[1] = (v15 - 4);
        v45[2] = (v15 - 1);
        v45[3] = v15 - 12;
        v45[4] = v15 - 8;
        v23 = std::__tuple_compare_three_way[abi:ne200100]<CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,CA::StreamDescription const&,AMCP::Index_Group<std::vector<std::string>,AMCP::Terminal_Tag_Type> const&,AMCP::Terminal_Source_Mix_Policy const&,int const&,BOOL const&,0ul,1ul,2ul,3ul,4ul>(&v46, v45, v21);
        v13 = v16 - 104;
        v14 = v15;
        if ((v23 & 0x80) == 0)
        {
          goto LABEL_21;
        }
      }

      v15 = a1;
LABEL_21:
      v24 = 0;
      v25 = v36;
      v26 = v37;
      *(v15 + 4) = v38;
      *v15 = v25;
      v15[1] = v26;
      v27 = a1 + v16;
      do
      {
        v28 = &v27[v24];
        v29 = (&v36 + v24);
        std::vector<std::string>::__vdeallocate(&v27[v24 + 248]);
        *(v28 + 248) = *(&v39 + v24);
        *(v28 + 33) = *(&v40 + v24);
        v29[6] = 0;
        v29[7] = 0;
        v29[5] = 0;
        v24 += 24;
      }

      while (v24 != 48);
      v30 = v43;
      v22[8] = v44;
      *v22 = v30;
      v10 = v34 + 1;
      v31 = 64;
      v9 = v35;
      do
      {
        v46 = (&v36 + v31);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v46);
        v31 -= 24;
      }

      while (v31 != 16);
      v3 = v33;
      if (v34 == 7)
      {
        return (v8 + 104) == v33;
      }
    }

    v6 = v8;
    v9 += 104;
    v8 = (v8 + 104);
    if (v8 == v3)
    {
      return 1;
    }
  }
}

uint64_t _ZNSt3__145__lexicographical_compare_three_way_fast_pathB8ne200100INS_11__wrap_iterIPKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEESA_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESB_SB_SE_SE_RT1_(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  v5 = (a4 - a3) >> 3;
  v6 = 0xAAAAAAAAAAAAAAABLL * v5;
  if ((0xAAAAAAAAAAAAAAABLL * v5) >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * v5;
  }

  if (v7 < 1)
  {
LABEL_8:
    if (v4 < v6)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (v4 == v6)
    {
      return 0;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    v8 = a3;
    v9 = a1;
    while (1)
    {
      result = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9, v8);
      if (result)
      {
        break;
      }

      v9 += 3;
      v8 += 3;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

void sub_1DE6CAD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CAD98);
}

void sub_1DE6CB488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CB4B0);
}

void sub_1DE6CBBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CBBC8);
}

void sub_1DE6CC2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CC2E0);
}

void AMCP::write_json_object<AMCP::Terminal_Identifier>(uint64_t a1, char *a2, uint64_t *a3)
{
  v15[4] = *MEMORY[0x1E69E9840];
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  minijson::writer::next_field(a1);
  minijson::writer::write_field_name(a1, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 40);
  LOBYTE(v8) = 0;
  HIDWORD(v8) = 0;
  v9 = v6;
  v10 = v7 + 1;
  minijson::writer::write_helper<std::string,minijson::default_value_writer<std::string,void>>(&v8, "node", a3);
  if (HIDWORD(v8) != 2)
  {
    minijson::writer::next_field(&v8);
    minijson::writer::write_field_name(&v8, "terminal_index");
    MEMORY[0x1E12C1220](v9, a3[3]);
  }

  AMCP::get_enum_string_bimap<AMCP::Direction>();
  v13 = v15;
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Direction,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container(&v14);
}

void sub_1DE6CC700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, char a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v40 - 192);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a37);
  MEMORY[0x1E12C0F00](&a35);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (v39)
  {
    __cxa_free_exception(v37);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v40 - 193));
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(v38 + 16);
  _Unwind_Resume(a1);
}

void AMCP::enum_to_string<AMCP::Resampler_Type>(std::string *a1, int *a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  AMCP::get_enum_string_bimap<AMCP::Resampler_Type>();
  v2 = v4;
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container(&v3);
}

void sub_1DE6CCAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&a35);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v37)
  {
    __cxa_free_exception(v35);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a34);
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(v36 + 16);
  _Unwind_Resume(a1);
}

void AMCP::enum_to_string<AMCP::Resampler_Quality>(std::string *a1, int *a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  AMCP::get_enum_string_bimap<AMCP::Resampler_Quality>();
  v2 = v4;
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Resampler_Quality,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Resampler_Quality const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container(&v3);
}

void sub_1DE6CCEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(&a35);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v37)
  {
    __cxa_free_exception(v35);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a34);
  boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(v36 + 16);
  _Unwind_Resume(a1);
}

void sub_1DE6CD668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CD690);
}

void sub_1DE6CDD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CDDA8);
}

void sub_1DE6CE498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CE4C0);
}

void sub_1DE6CEBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CEBD8);
}

void sub_1DE6CF2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CF2F0);
}

void sub_1DE6CF9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6CFA08);
}

void sub_1DE6D00F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  boost::multi_index::detail::copy_map<boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::ordered_index_node<boost::multi_index::detail::null_augment_policy,boost::multi_index::detail::index_node_base<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>>>,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Direction const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~copy_map(va);
  JUMPOUT(0x1DE6D0120);
}

uint64_t boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::~multi_index_container(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 56);
  if ((v2 & 0xFFFFFFFFFFFFFFFELL) != 0)
  {
    v3 = (v2 & 0xFFFFFFFFFFFFFFFELL) - 56;
  }

  else
  {
    v3 = 0;
  }

  boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<std::string>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(v3);
  operator delete(*(a1 + 8));
  return a1;
}

void boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<std::string>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = v2 - 56;
    }

    else
    {
      v3 = 0;
    }

    boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<std::string>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(v3);
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = v4 - 56;
    }

    else
    {
      v5 = 0;
    }

    boost::multi_index::detail::ordered_index_impl<boost::multi_index::member<boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>,std::string,&boost::bimaps::relation::detail::relation_storage<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,true>::right>,std::less<std::string>,boost::multi_index::detail::nth_layer<1,boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Wire_Connection_Policy,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Wire_Connection_Policy const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>,boost::mpl::v_item<boost::bimaps::relation::member_at::right,boost::mpl::vector0<mpl_::na>,0>,boost::multi_index::detail::ordered_unique_tag,boost::multi_index::detail::null_augment_policy>::delete_all_nodes(v5);
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    operator delete(a1);
  }
}

void AMCP::write_json(uint64_t a1, AMCP::Node_Description **a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<AMCP::Node_Description>::__init_with_size[abi:ne200100]<AMCP::Node_Description*,AMCP::Node_Description*>(&v19, *a2, a2[1], 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 3));
  v4 = 126 - 2 * __clz(0xEEEEEEEEEEEEEEEFLL * ((v20 - v19) >> 3));
  if (v20 == v19)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,false>(v19, v20, v5, 1);
  p_p = &__p;
  std::string::basic_string[abi:ne200100]<0>(&__p, "nodes");
  v15 = a2;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  minijson::writer::next_field(a1);
  minijson::writer::write_field_name(a1, p_p);
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v31 = *(a1 + 24);
  v32 = *(a1 + 40);
  LOBYTE(v28) = 1;
  HIDWORD(v28) = 0;
  v29 = v8;
  v30 = v7 + 1;
  if (v19 != v20)
  {
    minijson::writer::next_field(&v28);
    v26 = v31;
    v27 = v32;
    v22[0] = 0;
    v23 = 0;
    v24 = v29;
    v25 = v30 + 1;
    AMCP::get_enum_string_bimap<AMCP::Node_Type>();
    v33[1] = &v35 + 1;
    boost::multi_index::multi_index_container<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>,boost::bimaps::detail::bimap_core<AMCP::Node_Type,std::string,mpl_::na,mpl_::na,mpl_::na>::core_indices,std::allocator<boost::bimaps::relation::mutant_relation<boost::bimaps::tags::tagged<AMCP::Node_Type const,boost::bimaps::relation::member_at::left>,boost::bimaps::tags::tagged<std::string const,boost::bimaps::relation::member_at::right>,mpl_::na,true>>>::multi_index_container(&v34);
  }

  minijson::writer::close(&v28);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  memset(&__p, 0, sizeof(__p));
  std::vector<AMCP::Wire_Description>::__init_with_size[abi:ne200100]<AMCP::Wire_Description*,AMCP::Wire_Description*>(&__p, v15[3], v15[4], 0xAAAAAAAAAAAAAAABLL * ((v15[4] - v15[3]) >> 6));
  v9 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 6));
  if (__p.__r_.__value_.__l.__size_ == __p.__r_.__value_.__r.__words[0])
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Wire_Description *,false>(__p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_, v10, 1);
  v11 = &v16;
  std::string::basic_string[abi:ne200100]<0>(&v16, "wires");
  if (v17 < 0)
  {
    v11 = v16.__vftable;
  }

  minijson::writer::next_field(a1);
  minijson::writer::write_field_name(a1, v11);
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  v31 = *(a1 + 24);
  v32 = *(a1 + 40);
  LOBYTE(v28) = 1;
  HIDWORD(v28) = 0;
  v29 = v13;
  v30 = v12 + 1;
  v14 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
  {
    minijson::writer::next_field(&v28);
    v26 = v31;
    v27 = v32;
    v22[0] = 0;
    v23 = 0;
    v24 = v29;
    v25 = v30 + 1;
    std::string::basic_string[abi:ne200100]<0>(v33, "Source");
    AMCP::write_json_object<AMCP::Terminal_Identifier>(v22, v33, v14);
  }

  minijson::writer::close(&v28);
  if (v17 < 0)
  {
    operator delete(v16.__vftable);
  }

  v33[0] = &__p;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](v33);
  v33[0] = &v19;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](v33);
}

void sub_1DE6D2320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, char a59, uint64_t a60, char *a61)
{
  a61 = &a18;
  std::vector<AMCP::Wire_Description>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = &a24;
  std::vector<AMCP::Node_Description>::__destroy_vector::operator()[abi:ne200100](&a61);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,false>(_DWORD *a1, char *a2, uint64_t a3, char a4)
{
  while (2)
  {
    v183 = (a2 - 120);
    v175 = (a2 - 360);
    v176 = (a2 - 240);
    v7 = a1;
    while (1)
    {
      while (1)
      {
        a1 = v7;
        v8 = &a2[-v7];
        v9 = 0xEEEEEEEEEEEEEEEFLL * (&a2[-v7] >> 3);
        if (v9 > 2)
        {
          switch(v9)
          {
            case 3uLL:

              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(v7, (v7 + 120), v183);
              return;
            case 4uLL:
              std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(v7, (v7 + 120), (v7 + 240));
              if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v183, v7 + 240))
              {
                return;
              }

              std::swap[abi:ne200100]<AMCP::Node_Description>((v7 + 240), v183);
              if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>((v7 + 240), v7 + 120))
              {
                return;
              }

              std::swap[abi:ne200100]<AMCP::Node_Description>((v7 + 120), (v7 + 240));
              if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>((v7 + 120), v7))
              {
                return;
              }

              v56 = (v7 + 120);
              v55 = v7;
              goto LABEL_94;
            case 5uLL:

              std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(v7, (v7 + 120), (v7 + 240), (v7 + 360), v183);
              return;
          }
        }

        else
        {
          if (v9 < 2)
          {
            return;
          }

          if (v9 == 2)
          {
            if (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v183, v7))
            {
              return;
            }

            v55 = v7;
            v56 = v183;
LABEL_94:

            std::swap[abi:ne200100]<AMCP::Node_Description>(v55, v56);
            return;
          }
        }

        if (v8 <= 2879)
        {
          if (a4)
          {
            if (v7 != a2)
            {
              v57 = (v7 + 120);
              if ((v7 + 120) != a2)
              {
                v58 = 0;
                v59 = v7;
                do
                {
                  v60 = v57;
                  if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v57, v59))
                  {
                    v61 = a2;
                    LODWORD(v199) = *v60;
                    v62 = *(v59 + 152);
                    v201 = *(v59 + 144);
                    v63 = *(v59 + 184);
                    v204 = *(v59 + 176);
                    v200 = *(v59 + 128);
                    *(v59 + 128) = 0;
                    *(v59 + 136) = 0;
                    *(v59 + 144) = 0;
                    __p = *(v59 + 160);
                    *(v59 + 160) = 0;
                    *(v59 + 168) = 0;
                    *(v59 + 176) = 0;
                    v202 = v62;
                    v205 = v63;
                    v206 = *(v59 + 192);
                    v207 = *(v59 + 208);
                    *(v59 + 192) = 0;
                    *(v59 + 200) = 0;
                    v208 = *(v59 + 216);
                    v209 = *(v59 + 232);
                    *(v59 + 208) = 0;
                    *(v59 + 216) = 0;
                    v64 = v58;
                    v184 = v60;
                    *(v59 + 224) = 0;
                    *(v59 + 232) = 0;
                    while (1)
                    {
                      v65 = v59;
                      v66 = v59 + 8;
                      *v60 = *v59;
                      if (*(v60 + 31) < 0)
                      {
                        operator delete(*(v60 + 1));
                      }

                      *(v60 + 2) = *v66;
                      *(v60 + 3) = *(v59 + 24);
                      *(v59 + 31) = 0;
                      *(v59 + 8) = 0;
                      *(v60 + 4) = *(v59 + 32);
                      if (*(v60 + 63) < 0)
                      {
                        operator delete(*(v60 + 5));
                      }

                      *(v60 + 10) = *(v59 + 40);
                      *(v60 + 7) = *(v59 + 56);
                      *(v59 + 63) = 0;
                      *(v59 + 40) = 0;
                      *(v60 + 8) = *(v59 + 64);
                      v67 = v64;
                      v68 = 2;
                      do
                      {
                        v69 = a1 + v67;
                        std::vector<AMCP::Terminal_Description>::__vdeallocate((a1 + v67 + 192));
                        *(v69 + 12) = *(v69 + 72);
                        *(v69 + 26) = *(v69 + 11);
                        *(v69 + 10) = 0;
                        *(v69 + 11) = 0;
                        *(v69 + 9) = 0;
                        v67 += 24;
                        --v68;
                      }

                      while (v68);
                      if (v65 == a1)
                      {
                        break;
                      }

                      v59 = v65 - 120;
                      v64 -= 120;
                      v60 = v65;
                      if ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v65 - 120) & 1) == 0)
                      {
                        v70 = v65;
                        goto LABEL_120;
                      }
                    }

                    v70 = a1;
LABEL_120:
                    *v70 = v199;
                    a2 = v61;
                    if (*(v70 + 31) < 0)
                    {
                      operator delete(*v66);
                    }

                    v71 = v200;
                    *(v66 + 16) = v201;
                    *v66 = v71;
                    HIBYTE(v201) = 0;
                    LOBYTE(v200) = 0;
                    *(v70 + 4) = v202;
                    if (*(v70 + 63) < 0)
                    {
                      operator delete(*(v65 + 40));
                    }

                    v72 = 0;
                    v73 = __p;
                    *(v65 + 56) = v204;
                    *(v65 + 40) = v73;
                    HIBYTE(v204) = 0;
                    LOBYTE(__p) = 0;
                    *(v70 + 8) = v205;
                    do
                    {
                      v74 = v65 + v72;
                      v75 = &(&v199)[v72 / 8];
                      std::vector<AMCP::Terminal_Description>::__vdeallocate((v65 + v72 + 72));
                      *(v74 + 72) = *(&v206 + v72);
                      *(v74 + 88) = *(&v207 + v72);
                      v75[9] = 0;
                      v75[10] = 0;
                      v75[11] = 0;
                      v72 += 24;
                    }

                    while (v72 != 48);
                    for (i = 12; i != 6; i -= 3)
                    {
                      v187 = &(&v199)[i];
                      std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v187);
                    }

                    v60 = v184;
                    if (SHIBYTE(v204) < 0)
                    {
                      operator delete(__p);
                    }

                    if (SHIBYTE(v201) < 0)
                    {
                      operator delete(v200);
                    }
                  }

                  v57 = v60 + 30;
                  v58 += 120;
                  v59 = v60;
                }

                while (v60 + 30 != a2);
              }
            }
          }

          else if (v7 != a2)
          {
            v160 = (v7 + 120);
            if ((v7 + 120) != a2)
            {
              do
              {
                v161 = v160;
                if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v160, a1))
                {
                  LODWORD(v199) = *v161;
                  v162 = *(a1 + 19);
                  v201 = *(a1 + 18);
                  v163 = *(a1 + 23);
                  v204 = *(a1 + 22);
                  v200 = *(a1 + 8);
                  *(a1 + 16) = 0;
                  *(a1 + 17) = 0;
                  *(a1 + 18) = 0;
                  __p = *(a1 + 10);
                  *(a1 + 20) = 0;
                  *(a1 + 21) = 0;
                  *(a1 + 22) = 0;
                  v202 = v162;
                  v205 = v163;
                  v206 = *(a1 + 12);
                  v207 = *(a1 + 26);
                  *(a1 + 24) = 0;
                  *(a1 + 25) = 0;
                  v208 = *(a1 + 54);
                  v209 = *(a1 + 29);
                  *(a1 + 26) = 0;
                  *(a1 + 27) = 0;
                  v164 = v161;
                  *(a1 + 28) = 0;
                  *(a1 + 29) = 0;
                  do
                  {
                    v165 = a1;
                    v166 = a1 + 2;
                    *v164 = *a1;
                    if (*(v164 + 31) < 0)
                    {
                      operator delete(*(v164 + 1));
                    }

                    *(v164 + 2) = *v166;
                    *(v164 + 3) = *(a1 + 3);
                    *(a1 + 31) = 0;
                    *(a1 + 8) = 0;
                    *(v164 + 4) = *(a1 + 4);
                    if (*(v164 + 63) < 0)
                    {
                      operator delete(*(v164 + 5));
                    }

                    v167 = 0;
                    *(v164 + 10) = *(a1 + 10);
                    *(v164 + 7) = *(a1 + 7);
                    *(a1 + 63) = 0;
                    *(a1 + 40) = 0;
                    *(v164 + 8) = *(a1 + 8);
                    do
                    {
                      v168 = &a1[v167];
                      std::vector<AMCP::Terminal_Description>::__vdeallocate(&a1[v167 + 48]);
                      *(v168 + 12) = *(v168 + 18);
                      *(v168 + 26) = *(v168 + 11);
                      *(v168 + 10) = 0;
                      *(v168 + 11) = 0;
                      *(v168 + 9) = 0;
                      v167 += 6;
                    }

                    while (v167 != 12);
                    a1 -= 30;
                    v164 = v165;
                  }

                  while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, (v165 - 30)) & 1) != 0);
                  *v165 = v199;
                  if (*(v165 + 31) < 0)
                  {
                    operator delete(*v166);
                  }

                  v169 = v200;
                  *(v166 + 2) = v201;
                  *v166 = v169;
                  HIBYTE(v201) = 0;
                  LOBYTE(v200) = 0;
                  *(v165 + 4) = v202;
                  if (*(v165 + 63) < 0)
                  {
                    operator delete(*(v165 + 5));
                  }

                  v170 = 0;
                  v171 = __p;
                  *(v165 + 7) = v204;
                  *(v165 + 10) = v171;
                  HIBYTE(v204) = 0;
                  LOBYTE(__p) = 0;
                  *(v165 + 8) = v205;
                  do
                  {
                    v172 = &a1[v170 / 4];
                    v173 = &(&v199)[v170 / 8];
                    std::vector<AMCP::Terminal_Description>::__vdeallocate(&a1[v170 / 4 + 48]);
                    *(v172 + 12) = *(&v206 + v170);
                    *(v172 + 26) = *(&v207 + v170);
                    v173[9] = 0;
                    v173[10] = 0;
                    v173[11] = 0;
                    v170 += 24;
                  }

                  while (v170 != 48);
                  for (j = 12; j != 6; j -= 3)
                  {
                    v187 = &(&v199)[j];
                    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v187);
                  }

                  if (SHIBYTE(v204) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v201) < 0)
                  {
                    operator delete(v200);
                  }
                }

                v160 = v161 + 30;
                a1 = v161;
              }

              while (v161 + 30 != a2);
            }
          }

          return;
        }

        if (!a3)
        {
          if (v7 != a2)
          {
            v177 = &a2[-v7];
            v178 = a2;
            v77 = (v9 - 2) >> 1;
            v185 = v77;
            do
            {
              v78 = v77;
              if (v185 >= v77)
              {
                v181 = v77;
                v79 = (2 * v77) | 1;
                v80 = &a1[30 * v79];
                v81 = 2 * v77 + 2;
                if (v81 < v9 && std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&a1[30 * v79], (v80 + 30)))
                {
                  v80 += 30;
                  v79 = v81;
                }

                v78 = v181;
                v82 = &a1[30 * v181];
                if ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v80, v82) & 1) == 0)
                {
                  LODWORD(v199) = *v82;
                  v83 = *(v82 + 2);
                  v201 = *(v82 + 3);
                  v200 = v83;
                  *(v82 + 2) = 0;
                  *(v82 + 3) = 0;
                  *(v82 + 1) = 0;
                  v202 = *(v82 + 4);
                  v84 = *(v82 + 10);
                  v204 = *(v82 + 7);
                  __p = v84;
                  *(v82 + 6) = 0;
                  *(v82 + 7) = 0;
                  *(v82 + 5) = 0;
                  v205 = *(v82 + 8);
                  v206 = *(v82 + 18);
                  v207 = *(v82 + 11);
                  *(v82 + 9) = 0;
                  *(v82 + 10) = 0;
                  *(v82 + 11) = 0;
                  v208 = *(v82 + 6);
                  v209 = *(v82 + 14);
                  *(v82 + 12) = 0;
                  *(v82 + 13) = 0;
                  *(v82 + 14) = 0;
                  do
                  {
                    v85 = v80;
                    v86 = v80 + 2;
                    *v82 = *v80;
                    if (*(v82 + 31) < 0)
                    {
                      operator delete(*(v82 + 1));
                    }

                    v87 = *v86;
                    *(v82 + 3) = *(v80 + 3);
                    *(v82 + 2) = v87;
                    *(v80 + 31) = 0;
                    *(v80 + 8) = 0;
                    *(v82 + 4) = *(v80 + 4);
                    if (*(v82 + 63) < 0)
                    {
                      operator delete(*(v82 + 5));
                    }

                    v88 = 0;
                    v89 = *(v85 + 10);
                    *(v82 + 7) = *(v85 + 7);
                    *(v82 + 10) = v89;
                    *(v85 + 63) = 0;
                    *(v85 + 40) = 0;
                    *(v82 + 8) = *(v85 + 8);
                    do
                    {
                      v90 = &v82[v88];
                      v91 = &v85[v88];
                      std::vector<AMCP::Terminal_Description>::__vdeallocate(&v82[v88 + 18]);
                      *(v90 + 18) = *&v85[v88 + 18];
                      *(v90 + 11) = *&v85[v88 + 22];
                      v91[9] = 0;
                      v91[10] = 0;
                      v91[11] = 0;
                      v88 += 6;
                    }

                    while (v88 != 12);
                    if (v185 < v79)
                    {
                      break;
                    }

                    v92 = (2 * v79) | 1;
                    v80 = &a1[30 * v92];
                    v93 = 2 * v79 + 2;
                    if (v93 < v9 && std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&a1[30 * v92], (v80 + 30)))
                    {
                      v80 += 30;
                      v92 = v93;
                    }

                    v82 = v85;
                    v79 = v92;
                  }

                  while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v80, &v199));
                  *v85 = v199;
                  if (*(v85 + 31) < 0)
                  {
                    operator delete(*v86);
                  }

                  v94 = v200;
                  *(v86 + 2) = v201;
                  *v86 = v94;
                  HIBYTE(v201) = 0;
                  LOBYTE(v200) = 0;
                  *(v85 + 4) = v202;
                  if (*(v85 + 63) < 0)
                  {
                    operator delete(*(v85 + 5));
                  }

                  v95 = 0;
                  v96 = __p;
                  *(v85 + 7) = v204;
                  *(v85 + 10) = v96;
                  HIBYTE(v204) = 0;
                  LOBYTE(__p) = 0;
                  *(v85 + 8) = v205;
                  a2 = v178;
                  do
                  {
                    v97 = &v85[v95 / 4];
                    v98 = &(&v199)[v95 / 8];
                    std::vector<AMCP::Terminal_Description>::__vdeallocate(&v85[v95 / 4 + 18]);
                    *(v97 + 18) = *(&v206 + v95);
                    *(v97 + 11) = *(&v207 + v95);
                    v98[9] = 0;
                    v98[10] = 0;
                    v98[11] = 0;
                    v95 += 24;
                  }

                  while (v95 != 48);
                  for (k = 12; k != 6; k -= 3)
                  {
                    v187 = &(&v199)[k];
                    std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v187);
                  }

                  v78 = v181;
                  if (SHIBYTE(v204) < 0)
                  {
                    operator delete(__p);
                  }

                  if (SHIBYTE(v201) < 0)
                  {
                    operator delete(v200);
                  }
                }
              }

              v77 = v78 - 1;
            }

            while (v78);
            v100 = 0xEEEEEEEEEEEEEEEFLL * (v177 >> 3);
            do
            {
              v101 = v100 - 2;
              if (v100 >= 2)
              {
                v186 = v100;
                v179 = a2;
                v102 = 0;
                v103 = *a1;
                v104 = *(a1 + 3);
                v105 = *(a1 + 4);
                v188 = *(a1 + 2);
                v189 = v104;
                *(a1 + 2) = 0;
                *(a1 + 3) = 0;
                *(a1 + 1) = 0;
                v106 = *(a1 + 10);
                v107 = *(a1 + 8);
                v192 = *(a1 + 7);
                v182 = v103;
                LODWORD(v187) = v103;
                v191 = v106;
                *(a1 + 6) = 0;
                *(a1 + 7) = 0;
                *(a1 + 5) = 0;
                v190 = v105;
                v193 = v107;
                v194 = *(a1 + 18);
                v195 = *(a1 + 11);
                *(a1 + 9) = 0;
                *(a1 + 10) = 0;
                *(a1 + 11) = 0;
                v196 = *(a1 + 6);
                v197 = *(a1 + 14);
                *(a1 + 12) = 0;
                *(a1 + 13) = 0;
                v108 = v101 >> 1;
                v109 = a1;
                *(a1 + 14) = 0;
                do
                {
                  v110 = &v109[30 * v102];
                  v111 = (v110 + 30);
                  v112 = 2 * v102;
                  v102 = (2 * v102) | 1;
                  v113 = v112 + 2;
                  if (v112 + 2 < v186)
                  {
                    v114 = (v110 + 60);
                    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v110 + 30, (v110 + 60)))
                    {
                      v111 = v114;
                      v102 = v113;
                    }
                  }

                  v115 = (v111 + 8);
                  *v109 = *v111;
                  if (*(v109 + 31) < 0)
                  {
                    operator delete(*(v109 + 1));
                  }

                  v116 = *v115;
                  *(v109 + 3) = *(v111 + 24);
                  *(v109 + 2) = v116;
                  *(v111 + 31) = 0;
                  *(v111 + 8) = 0;
                  *(v109 + 4) = *(v111 + 32);
                  if (*(v109 + 63) < 0)
                  {
                    operator delete(*(v109 + 5));
                  }

                  v117 = 0;
                  v118 = *(v111 + 40);
                  *(v109 + 7) = *(v111 + 56);
                  *(v109 + 10) = v118;
                  *(v111 + 63) = 0;
                  *(v111 + 40) = 0;
                  *(v109 + 8) = *(v111 + 64);
                  v119 = (v111 + 72);
                  do
                  {
                    v120 = &v109[v117];
                    v121 = (v111 + v117 * 4);
                    std::vector<AMCP::Terminal_Description>::__vdeallocate(&v109[v117 + 18]);
                    *(v120 + 18) = *(v111 + v117 * 4 + 72);
                    *(v120 + 11) = *(v111 + v117 * 4 + 88);
                    v121[9] = 0;
                    v121[10] = 0;
                    v121[11] = 0;
                    v117 += 6;
                  }

                  while (v117 != 12);
                  v109 = v111;
                }

                while (v102 <= v108);
                a2 = v179;
                if (v111 == v179 - 120)
                {
                  *v111 = v182;
                  if (*(v111 + 31) < 0)
                  {
                    operator delete(*v115);
                  }

                  v154 = v188;
                  *(v111 + 24) = v189;
                  *v115 = v154;
                  HIBYTE(v189) = 0;
                  LOBYTE(v188) = 0;
                  *(v111 + 32) = v190;
                  if (*(v111 + 63) < 0)
                  {
                    operator delete(*(v111 + 40));
                  }

                  v155 = v191;
                  *(v111 + 56) = v192;
                  *(v111 + 40) = v155;
                  HIBYTE(v192) = 0;
                  LOBYTE(v191) = 0;
                  *(v111 + 64) = v193;
                  v156 = &v194;
                  v157 = 2;
                  do
                  {
                    std::vector<AMCP::Terminal_Description>::__vdeallocate(v119);
                    *v119 = *v156;
                    v119[2] = *(v156 + 2);
                    *v156 = 0;
                    *(v156 + 1) = 0;
                    *(v156 + 2) = 0;
                    v156 = (v156 + 24);
                    v119 += 3;
                    --v157;
                  }

                  while (v157);
                }

                else
                {
                  *v111 = *(v179 - 30);
                  if (*(v111 + 31) < 0)
                  {
                    operator delete(*v115);
                  }

                  v122 = (v179 - 112);
                  v123 = *(v179 - 7);
                  *(v111 + 24) = *(v179 - 12);
                  *v115 = v123;
                  *(v179 - 89) = 0;
                  *(v179 - 112) = 0;
                  *(v111 + 32) = *(v179 - 11);
                  if (*(v111 + 63) < 0)
                  {
                    operator delete(*(v111 + 40));
                  }

                  v124 = 0;
                  v125 = (v179 - 80);
                  v126 = *(v179 - 5);
                  *(v111 + 56) = *(v179 - 8);
                  *(v111 + 40) = v126;
                  *(v179 - 57) = 0;
                  *(v179 - 80) = 0;
                  *(v111 + 64) = *(v179 - 7);
                  do
                  {
                    v127 = v111 + v124;
                    v128 = &v179[v124];
                    std::vector<AMCP::Terminal_Description>::__vdeallocate((v111 + v124 + 72));
                    *(v127 + 72) = *&v179[v124 - 48];
                    *(v127 + 88) = *&v179[v124 - 32];
                    *(v128 - 6) = 0;
                    *(v128 - 5) = 0;
                    *(v128 - 4) = 0;
                    v124 += 24;
                  }

                  while (v124 != 48);
                  *(v179 - 30) = v187;
                  if (*(v179 - 89) < 0)
                  {
                    operator delete(*v122);
                  }

                  v129 = v188;
                  *(v179 - 12) = v189;
                  *v122 = v129;
                  HIBYTE(v189) = 0;
                  LOBYTE(v188) = 0;
                  *(v179 - 11) = v190;
                  if (*(v179 - 57) < 0)
                  {
                    operator delete(*v125);
                  }

                  v130 = 0;
                  v131 = v111 + 120;
                  v132 = v191;
                  *(v179 - 8) = v192;
                  *v125 = v132;
                  HIBYTE(v192) = 0;
                  LOBYTE(v191) = 0;
                  *(v179 - 7) = v193;
                  do
                  {
                    v133 = &v179[v130];
                    v134 = &(&v187)[v130 / 8];
                    std::vector<AMCP::Terminal_Description>::__vdeallocate(&v179[v130 - 48]);
                    *(v133 - 3) = *(&v194 + v130);
                    *(v133 - 4) = *(&v195 + v130);
                    v134[9] = 0;
                    v134[10] = 0;
                    v134[11] = 0;
                    v130 += 24;
                  }

                  while (v130 != 48);
                  if (v131 - a1 >= 121)
                  {
                    v135 = (-2 - 0x1111111111111111 * ((v131 - a1) >> 3)) >> 1;
                    v136 = &a1[30 * v135];
                    if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v136, v111))
                    {
                      LODWORD(v199) = *v111;
                      v137 = *(v111 + 24);
                      v200 = *v115;
                      v201 = v137;
                      *(v111 + 16) = 0;
                      *(v111 + 24) = 0;
                      *v115 = 0;
                      v138 = *(v111 + 32);
                      v139 = *(v111 + 40);
                      v140 = *(v111 + 64);
                      v204 = *(v111 + 56);
                      __p = v139;
                      *(v111 + 48) = 0;
                      *(v111 + 56) = 0;
                      *(v111 + 40) = 0;
                      v202 = v138;
                      v205 = v140;
                      v206 = *(v111 + 72);
                      v207 = *(v111 + 88);
                      *v119 = 0;
                      *(v111 + 80) = 0;
                      *(v111 + 88) = 0;
                      v208 = *(v111 + 96);
                      v209 = *(v111 + 112);
                      *(v111 + 96) = 0;
                      *(v111 + 104) = 0;
                      *(v111 + 112) = 0;
                      do
                      {
                        v141 = v136;
                        v142 = v136 + 2;
                        *v111 = *v136;
                        if (*(v111 + 31) < 0)
                        {
                          operator delete(*(v111 + 8));
                        }

                        v143 = *v142;
                        *(v111 + 24) = *(v136 + 3);
                        *(v111 + 8) = v143;
                        *(v136 + 31) = 0;
                        *(v136 + 8) = 0;
                        *(v111 + 32) = *(v136 + 4);
                        if (*(v111 + 63) < 0)
                        {
                          operator delete(*(v111 + 40));
                        }

                        v144 = 0;
                        v145 = *(v141 + 10);
                        *(v111 + 56) = *(v141 + 7);
                        *(v111 + 40) = v145;
                        *(v141 + 63) = 0;
                        *(v141 + 40) = 0;
                        *(v111 + 64) = *(v141 + 8);
                        do
                        {
                          v146 = v111 + v144 * 4;
                          v147 = &v141[v144];
                          std::vector<AMCP::Terminal_Description>::__vdeallocate((v111 + v144 * 4 + 72));
                          *(v146 + 72) = *&v141[v144 + 18];
                          *(v146 + 88) = *&v141[v144 + 22];
                          v147[9] = 0;
                          v147[10] = 0;
                          v147[11] = 0;
                          v144 += 6;
                        }

                        while (v144 != 12);
                        if (!v135)
                        {
                          break;
                        }

                        v135 = (v135 - 1) >> 1;
                        v136 = &a1[30 * v135];
                        v111 = v141;
                      }

                      while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v136, &v199) & 1) != 0);
                      *v141 = v199;
                      if (*(v141 + 31) < 0)
                      {
                        operator delete(*v142);
                      }

                      v148 = v200;
                      *(v142 + 2) = v201;
                      *v142 = v148;
                      HIBYTE(v201) = 0;
                      LOBYTE(v200) = 0;
                      *(v141 + 4) = v202;
                      if (*(v141 + 63) < 0)
                      {
                        operator delete(*(v141 + 5));
                      }

                      v149 = 0;
                      v150 = __p;
                      *(v141 + 7) = v204;
                      *(v141 + 10) = v150;
                      HIBYTE(v204) = 0;
                      LOBYTE(__p) = 0;
                      *(v141 + 8) = v205;
                      do
                      {
                        v151 = &v141[v149 / 4];
                        v152 = &(&v199)[v149 / 8];
                        std::vector<AMCP::Terminal_Description>::__vdeallocate(&v141[v149 / 4 + 18]);
                        *(v151 + 18) = *(&v206 + v149);
                        *(v151 + 11) = *(&v207 + v149);
                        v152[9] = 0;
                        v152[10] = 0;
                        v152[11] = 0;
                        v149 += 24;
                      }

                      while (v149 != 48);
                      for (m = 12; m != 6; m -= 3)
                      {
                        v198 = &(&v199)[m];
                        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v198);
                      }

                      if (SHIBYTE(v204) < 0)
                      {
                        operator delete(__p);
                      }

                      if (SHIBYTE(v201) < 0)
                      {
                        operator delete(v200);
                      }
                    }
                  }
                }

                for (n = 12; n != 6; n -= 3)
                {
                  v199 = &(&v187)[n];
                  std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v199);
                }

                if (SHIBYTE(v192) < 0)
                {
                  operator delete(v191);
                }

                if (SHIBYTE(v189) < 0)
                {
                  operator delete(v188);
                }

                v100 = v186;
              }

              a2 -= 120;
            }

            while (v100-- > 2);
          }

          return;
        }

        if (v8 < 0x3C01)
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>((v7 + 120 * (v9 >> 1)), v7, v183);
        }

        else
        {
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>(v7, (v7 + 120 * (v9 >> 1)), v183);
          v10 = 120 * (v9 >> 1);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>((v7 + 120), (v10 + v7 - 120), v176);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>((v7 + 240), (v7 + 120 + v10), v175);
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,0>((v10 + v7 - 120), (v7 + v10), (v7 + 120 + v10));
          std::swap[abi:ne200100]<AMCP::Node_Description>(v7, (v7 + v10));
        }

        --a3;
        if (a4 & 1) != 0 || (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>((v7 - 120), v7))
        {
          break;
        }

        LODWORD(v199) = *v7;
        v34 = *(v7 + 24);
        v35 = *(v7 + 32);
        v200 = *(v7 + 8);
        v201 = v34;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *(v7 + 8) = 0;
        v36 = *(v7 + 40);
        v37 = *(v7 + 64);
        v204 = *(v7 + 56);
        __p = v36;
        *(v7 + 48) = 0;
        *(v7 + 56) = 0;
        *(v7 + 40) = 0;
        v202 = v35;
        v205 = v37;
        v38 = (v7 + 72);
        v206 = *(v7 + 72);
        v207 = *(v7 + 88);
        *(v7 + 72) = 0;
        *(v7 + 80) = 0;
        *(v7 + 88) = 0;
        v208 = *(v7 + 96);
        v209 = *(v7 + 112);
        *(v7 + 96) = 0;
        *(v7 + 104) = 0;
        *(v7 + 112) = 0;
        if (std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v183))
        {
          do
          {
            v7 += 120;
          }

          while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v7) & 1) == 0);
        }

        else
        {
          v39 = v7 + 120;
          do
          {
            v7 = v39;
            if (v39 >= a2)
            {
              break;
            }

            v40 = std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v39);
            v39 = v7 + 120;
          }

          while (!v40);
        }

        v41 = a2;
        if (v7 < a2)
        {
          v41 = a2;
          do
          {
            v41 -= 30;
          }

          while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v41) & 1) != 0);
        }

        while (v7 < v41)
        {
          std::swap[abi:ne200100]<AMCP::Node_Description>(v7, v41);
          do
          {
            v7 += 120;
          }

          while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v7));
          do
          {
            v41 -= 30;
          }

          while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(&v199, v41) & 1) != 0);
        }

        if ((v7 - 120) != a1)
        {
          *a1 = *(v7 - 120);
          if (*(a1 + 31) < 0)
          {
            operator delete(*(a1 + 1));
          }

          v42 = *(v7 - 112);
          *(a1 + 3) = *(v7 - 96);
          *(a1 + 2) = v42;
          *(v7 - 89) = 0;
          *(v7 - 112) = 0;
          *(a1 + 4) = *(v7 - 88);
          if (*(a1 + 63) < 0)
          {
            operator delete(*(a1 + 5));
          }

          v43 = *(v7 - 80);
          *(a1 + 7) = *(v7 - 64);
          *(a1 + 10) = v43;
          *(v7 - 57) = 0;
          *(v7 - 80) = 0;
          *(a1 + 8) = *(v7 - 56);
          v44 = v7 - 48;
          v45 = 2;
          do
          {
            std::vector<AMCP::Terminal_Description>::__vdeallocate(v38);
            *v38 = *v44;
            v38[2] = *(v44 + 16);
            *v44 = 0;
            *(v44 + 8) = 0;
            *(v44 + 16) = 0;
            v44 += 24;
            v38 += 3;
            --v45;
          }

          while (v45);
        }

        *(v7 - 120) = v199;
        v46 = (v7 - 112);
        if (*(v7 - 89) < 0)
        {
          operator delete(*v46);
        }

        v47 = v200;
        *(v7 - 96) = v201;
        *v46 = v47;
        HIBYTE(v201) = 0;
        LOBYTE(v200) = 0;
        *(v7 - 88) = v202;
        v48 = (v7 - 80);
        if (*(v7 - 57) < 0)
        {
          operator delete(*v48);
        }

        v49 = 0;
        v50 = __p;
        *(v7 - 64) = v204;
        *v48 = v50;
        HIBYTE(v204) = 0;
        LOBYTE(__p) = 0;
        *(v7 - 56) = v205;
        do
        {
          v51 = v7 + v49;
          v52 = &(&v199)[v49 / 8];
          std::vector<AMCP::Terminal_Description>::__vdeallocate((v7 + v49 - 48));
          *(v51 - 48) = *(&v206 + v49);
          *(v51 - 32) = *(&v207 + v49);
          v52[9] = 0;
          v52[10] = 0;
          v52[11] = 0;
          v49 += 24;
        }

        while (v49 != 48);
        for (ii = 12; ii != 6; ii -= 3)
        {
          v187 = &(&v199)[ii];
          std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v187);
        }

        if (SHIBYTE(v204) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v201) < 0)
        {
          operator delete(v200);
        }

LABEL_53:
        a4 = 0;
      }

      LODWORD(v199) = *v7;
      v11 = *(v7 + 24);
      v12 = *(v7 + 32);
      v200 = *(v7 + 8);
      v201 = v11;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      v13 = *(v7 + 40);
      v14 = *(v7 + 64);
      v204 = *(v7 + 56);
      __p = v13;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      v202 = v12;
      v205 = v14;
      v15 = (v7 + 72);
      v206 = *(v7 + 72);
      v207 = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v208 = *(v7 + 96);
      v209 = *(v7 + 112);
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      v16 = v7;
      *(v7 + 112) = 0;
      do
      {
        v17 = v16;
        v16 += 30;
      }

      while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v16, &v199) & 1) != 0);
      v18 = a2;
      if (v17 == v7)
      {
        do
        {
          if (v16 >= a2)
          {
            break;
          }

          a2 -= 120;
        }

        while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a2, &v199) & 1) == 0);
      }

      else
      {
        do
        {
          a2 -= 120;
        }

        while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(a2, &v199));
      }

      v7 = v16;
      if (v16 < a2)
      {
        v19 = a2;
        do
        {
          std::swap[abi:ne200100]<AMCP::Node_Description>(v7, v19);
          do
          {
            v7 += 120;
          }

          while ((std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v7, &v199) & 1) != 0);
          do
          {
            v19 -= 30;
          }

          while (!std::__less<void,void>::operator()[abi:ne200100]<AMCP::Node_Description,AMCP::Node_Description>(v19, &v199));
        }

        while (v7 < v19);
      }

      if ((v7 - 120) != a1)
      {
        *a1 = *(v7 - 120);
        if (*(a1 + 31) < 0)
        {
          operator delete(*(a1 + 1));
        }

        v20 = *(v7 - 112);
        *(a1 + 3) = *(v7 - 96);
        *(a1 + 2) = v20;
        *(v7 - 89) = 0;
        *(v7 - 112) = 0;
        *(a1 + 4) = *(v7 - 88);
        if (*(a1 + 63) < 0)
        {
          operator delete(*(a1 + 5));
        }

        v21 = *(v7 - 80);
        *(a1 + 7) = *(v7 - 64);
        *(a1 + 10) = v21;
        *(v7 - 57) = 0;
        *(v7 - 80) = 0;
        *(a1 + 8) = *(v7 - 56);
        v22 = v7 - 48;
        v23 = 2;
        do
        {
          std::vector<AMCP::Terminal_Description>::__vdeallocate(v15);
          *v15 = *v22;
          v15[2] = *(v22 + 16);
          *v22 = 0;
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          v22 += 24;
          v15 += 3;
          --v23;
        }

        while (v23);
      }

      *(v7 - 120) = v199;
      v24 = (v7 - 112);
      if (*(v7 - 89) < 0)
      {
        operator delete(*v24);
      }

      v25 = v200;
      *(v7 - 96) = v201;
      *v24 = v25;
      HIBYTE(v201) = 0;
      LOBYTE(v200) = 0;
      *(v7 - 88) = v202;
      v26 = (v7 - 80);
      if (*(v7 - 57) < 0)
      {
        operator delete(*v26);
      }

      v27 = 0;
      v28 = __p;
      *(v7 - 64) = v204;
      *v26 = v28;
      HIBYTE(v204) = 0;
      LOBYTE(__p) = 0;
      *(v7 - 56) = v205;
      do
      {
        v29 = v7 + v27;
        v30 = &(&v199)[v27 / 8];
        std::vector<AMCP::Terminal_Description>::__vdeallocate((v7 + v27 - 48));
        *(v29 - 48) = *(&v206 + v27);
        *(v29 - 32) = *(&v207 + v27);
        v30[9] = 0;
        v30[10] = 0;
        v30[11] = 0;
        v27 += 24;
      }

      while (v27 != 48);
      for (jj = 12; jj != 6; jj -= 3)
      {
        v187 = &(&v199)[jj];
        std::vector<AMCP::Terminal_Description>::__destroy_vector::operator()[abi:ne200100](&v187);
      }

      if (SHIBYTE(v204) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v201) < 0)
      {
        operator delete(v200);
      }

      v32 = v16 >= a2;
      a2 = v18;
      if (!v32)
      {
LABEL_52:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *,false>(a1, (v7 - 120), a3, a4 & 1);
        goto LABEL_53;
      }

      v33 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *>(a1, (v7 - 120));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,AMCP::Node_Description *>(v7, v18))
      {
        break;
      }

      if (!v33)
      {
        goto LABEL_52;
      }
    }

    a2 = (v7 - 120);
    if (!v33)
    {
      continue;
    }

    break;
  }
}