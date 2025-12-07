BOOL CA::Implementation::EquivalentFormatFlags(CA::Implementation *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v3 = *(this + 3);
  if (*(this + 2) != 1819304813)
  {
    return v3 == a2->mFormatFlags;
  }

  v4 = v3 & 0x7FFFFFFF;
  if ((v3 & 0x7FFFFFFF) == 0)
  {
    v4 = *(this + 3);
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 & 0xFFFFFFBF;
  }

  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    if ((v3 & 0x20) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(this + 7);
    }

    if (v8)
    {
      v6 = 8 * (v6 / v8);
      v9 = *(this + 8);
      v10 = v5 | 8;
      v11 = v6 == v9;
      goto LABEL_17;
    }

    v6 = 0;
    v9 = *(this + 8);
    v10 = v5 | 8;
  }

  else
  {
    v10 = v5 | 8;
    v7 = *(this + 7);
    v9 = *(this + 8);
  }

  v11 = v9 == 0;
LABEL_17:
  if (v11)
  {
    v5 = v10;
  }

  v13 = (v9 & 7) == 0 && v6 == v9;
  v14 = v5 & 0xFFFFFFEF;
  if (!v13)
  {
    v14 = v5;
  }

  if (v14)
  {
    v14 &= ~4u;
  }

  v15 = (v14 & 8) == 0 || v9 > 8;
  v16 = v14 & 2;
  if (v15)
  {
    v16 = v14;
  }

  if (v7 == 1)
  {
    v17 = v16 & 0xFFFFFFDF;
  }

  else
  {
    v17 = v16;
  }

  if (!v17)
  {
    v17 = 0x80000000;
  }

  mFormatFlags = a2->mFormatFlags;
  if (a2->mFormatID != 1819304813)
  {
    return v17 == mFormatFlags;
  }

  v19 = mFormatFlags & 0x7FFFFFFF;
  if ((mFormatFlags & 0x7FFFFFFF) == 0)
  {
    v19 = a2->mFormatFlags;
  }

  if (a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = v19 & 0xFFFFFFBF;
  }

  mBytesPerFrame = a2->mBytesPerFrame;
  if (!mBytesPerFrame)
  {
    v25 = v20 | 8;
    mChannelsPerFrame = a2->mChannelsPerFrame;
    mBitsPerChannel = a2->mBitsPerChannel;
LABEL_50:
    v26 = mBitsPerChannel == 0;
    goto LABEL_51;
  }

  mChannelsPerFrame = a2->mChannelsPerFrame;
  if ((mFormatFlags & 0x20) != 0)
  {
    v23 = 1;
  }

  else
  {
    v23 = a2->mChannelsPerFrame;
  }

  if (!v23)
  {
    mBytesPerFrame = 0;
    mBitsPerChannel = a2->mBitsPerChannel;
    v25 = v20 | 8;
    goto LABEL_50;
  }

  mBytesPerFrame = 8 * (mBytesPerFrame / v23);
  mBitsPerChannel = a2->mBitsPerChannel;
  v25 = v20 | 8;
  v26 = mBytesPerFrame == mBitsPerChannel;
LABEL_51:
  if (v26)
  {
    v20 = v25;
  }

  v27 = (mBitsPerChannel & 7) == 0 && mBytesPerFrame == mBitsPerChannel;
  v28 = v20 & 0xFFFFFFEF;
  if (!v27)
  {
    v28 = v20;
  }

  if (v28)
  {
    v28 &= ~4u;
  }

  v29 = (v28 & 8) == 0 || mBitsPerChannel > 8;
  v30 = v28 & 2;
  if (v29)
  {
    v30 = v28;
  }

  if (mChannelsPerFrame == 1)
  {
    v31 = v30 & 0xFFFFFFDF;
  }

  else
  {
    v31 = v30;
  }

  if (v31)
  {
    mFormatFlags = v31;
  }

  else
  {
    mFormatFlags = 0x80000000;
  }

  return v17 == mFormatFlags;
}

void HALS_IOA2UCDevice::SetStreamActive(HALS_IOA2UCDevice *this, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  v4 = 1937010544;
  input[0] = a2;
  input[1] = a3;
  v5 = *(this + 3);
  if (!v5 || *(this + 34) != 1 || (v4 = IOConnectCallMethod(v5, 6u, input, 2u, 0, 0, 0, 0, 0, 0), v4))
  {
    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v8 = *(v6 + 8);
    v9 = (v4 << 32) | 0x2E0;
    v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v10 + 16) = 0;
    *(v10 + 20) = 16;
    *(v10 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v10 + 32) = v9;
    *v10 = &unk_1F5963690;
    *(v10 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v8, v10);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::SetStreamActive(unsigned int,BOOL)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::SetStreamActive: got an error when telling the hardware to turn a stream on or off, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::SetStreamActive(unsigned int,BOOL)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

CFTypeRef HALS_IOA2UCDevice::CopyControlDictionaryByID(const __CFDictionary **this, int a2)
{
  theArray = 0;
  HALB_UCObject::CopyProperty_CFArray(this, @"controls", &theArray);
  v9 = theArray;
  v10 = 1;
  v15 = 0;
  if (theArray && (Count = CFArrayGetCount(theArray)) != 0)
  {
    for (i = 0; i < Count; ++i)
    {
      cf = 0;
      v13 = 0;
      CACFArray::GetCACFDictionary(&theArray, i, &cf);
      if (cf && ((v11 = 0, UInt32 = CACFDictionary::GetUInt32(cf, @"control ID", &v11), v11 == a2) ? (v6 = UInt32) : (v6 = 0), v6 == 1 && cf))
      {
        CFRetain(cf);
        v7 = cf;
      }

      else
      {
        v7 = 0;
      }

      CACFDictionary::~CACFDictionary(&cf);
      if (v7)
      {
        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  CACFArray::~CACFArray(&theArray);
  CACFArray::~CACFArray(&v9);
  return v7;
}

void sub_1DE2B3E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  CACFArray::~CACFArray(va1);
  CACFArray::~CACFArray(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOA2UCDevice::GetControlInfo_Value(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v5 = this;
  v6 = 0;
  if (this)
  {
    if (!CACFDictionary::GetUInt32(this, @"value", &v7))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "HALS_IOA2UCDevice.cpp";
        v10 = 1024;
        v11 = 922;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetControlInfoByIndex_Value: there is no control value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = v7;
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v5);
  return v2;
}

void sub_1DE2B3F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

CFTypeRef HALS_IOA2UCDevice::CopySelectorControlInfo_MultiSelectorValue(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  cf = 0;
  v5 = this;
  v6 = 0;
  if (this)
  {
    if ((CACFDictionary::GetArray(this, @"value", &cf) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "HALS_IOA2UCDevice.cpp";
        v10 = 1024;
        v11 = 1035;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::CopySelectorControlInfo_MultiSelectorValue: there is no selector value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = cf;
    CFRetain(cf);
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v5);
  return v2;
}

void sub_1DE2B40E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

CFTypeRef HALS_IOA2UCDevice::CopySelectorControlInfo_SelectorMap(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  cf = 0;
  v5 = this;
  v6 = 0;
  if (this)
  {
    if ((CACFDictionary::GetArray(this, @"selectors", &cf) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "HALS_IOA2UCDevice.cpp";
        v10 = 1024;
        v11 = 1048;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::CopySelectorControlInfoByIndex_SelectorMap: there is no selector map", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = cf;
    CFRetain(cf);
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v5);
  return v2;
}

void sub_1DE2B4240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOA2UCDevice::GetStereoPanControlInfo_LeftValue(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v5 = this;
  v6 = 0;
  if (this)
  {
    if (!CACFDictionary::GetUInt32(this, @"left value", &v7))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "HALS_IOA2UCDevice.cpp";
        v10 = 1024;
        v11 = 1061;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStereoPanControlInfoByIndex_LeftValue: there is no left value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = v7;
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v5);
  return v2;
}

void sub_1DE2B4394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOA2UCDevice::GetStereoPanControlInfo_CenterValue(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v5 = this;
  v6 = 0;
  if (this)
  {
    if (!CACFDictionary::GetUInt32(this, @"center value", &v7))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "HALS_IOA2UCDevice.cpp";
        v10 = 1024;
        v11 = 1073;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStereoPanControlInfoByIndex_CenterValue: there is no center value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = v7;
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v5);
  return v2;
}

void sub_1DE2B44E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_IOA2UCDevice::GetStereoPanControlInfo_RightValue(HALS_IOA2UCDevice *this, const __CFDictionary *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v5 = this;
  v6 = 0;
  if (this)
  {
    if (!CACFDictionary::GetUInt32(this, @"right value", &v7))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "HALS_IOA2UCDevice.cpp";
        v10 = 1024;
        v11 = 1085;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::GetStereoPanControlInfoByIndex_RightValue: there is no right value", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v2 = v7;
  }

  else
  {
    v2 = 0;
  }

  CACFDictionary::~CACFDictionary(&v5);
  return v2;
}

void sub_1DE2B463C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CACFDictionary::~CACFDictionary(va);
  _Unwind_Resume(a1);
}

void HALS_IOA2UCDevice::MoveBlockControlData(HALS_IOA2UCDevice *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  v5 = 1937010544;
  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  v6 = *(this + 3);
  if (!v6 || *(this + 34) != 1 || (v5 = IOConnectCallMethod(v6, 9u, input, 3u, 0, 0, 0, 0, 0, 0), v5))
  {
    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v9 = *(v7 + 8);
    v10 = (v5 << 32) | 0x486;
    v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v11 + 16) = 0;
    *(v11 + 20) = 16;
    *(v11 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v11 + 32) = v10;
    *v11 = &unk_1F59636E8;
    *(v11 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v9, v11);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::MoveBlockControlData(unsigned int,unsigned int,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::MoveBlockControlData: got an error when telling the hardware to move the block control data, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::MoveBlockControlData(unsigned int,unsigned int,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOA2UCDevice::MoveDataExchangeBlockData(HALS_IOA2UCDevice *this, unsigned int a2, unsigned int a3, unsigned int a4)
{
  input[3] = *MEMORY[0x1E69E9840];
  v5 = 1937010544;
  input[0] = a2;
  input[1] = a4;
  input[2] = a3;
  v6 = *(this + 3);
  if (!v6 || *(this + 34) != 1 || (v5 = IOConnectCallMethod(v6, 7u, input, 3u, 0, 0, 0, 0, 0, 0), v5))
  {
    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v9 = *(v7 + 8);
    v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v10 + 16) = 0;
    *(v10 + 20) = 16;
    *(v10 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v10 + 32) = (v5 << 32) | 0x4E4;
    *v10 = &unk_1F5963740;
    *(v10 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v9, v10);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  return v5;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::MoveDataExchangeBlockData(unsigned int,BOOL,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::MoveDataExchangeBlockData: got an error when telling the hardware to move the block control data, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::MoveDataExchangeBlockData(unsigned int,BOOL,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StartIO(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::StartIO: got an error when telling the hardware to start, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StartIO(void)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *HALS_IOA2UCDevice::StartIOWithFlags(HALS_IOA2UCDevice *this, uint64_t a2)
{
  v3 = 1937010544;
  output = 0;
  input = a2;
  outputCnt = 1;
  v4 = *(this + 3);
  if (v4)
  {
    if (*(this + 34) == 1)
    {
      v3 = IOConnectCallMethod(v4, 0xAu, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
      if (!v3)
      {
        return v3;
      }
    }
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v8 = *(v5 + 8);
    v9 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v9 + 16) = 0;
    *(v9 + 20) = 16;
    *(v9 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v9 + 32) = (v3 << 32) | 0x4F8;
    *v9 = &unk_1F59637F0;
    *(v9 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v8, v9);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StartIOWithFlags(unsigned long long)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::StartIOWithFlags: got an error when telling the hardware to start, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StartIOWithFlags(unsigned long long)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StopIO(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::StopIO: got an error when telling the hardware to stop, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StopIO(void)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOA2UCDevice::StopIOWithFlags(HALS_IOA2UCDevice *this, uint64_t a2)
{
  v3 = 1937010544;
  output = 0;
  input = a2;
  outputCnt = 1;
  v4 = *(this + 3);
  if (!v4 || *(this + 34) != 1 || (v3 = IOConnectCallMethod(v4, 0xBu, &input, 1u, 0, 0, &output, &outputCnt, 0, 0), v3))
  {
    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v7 = *(v5 + 8);
      v8 = (v3 << 32) | 0x50C;
      v9 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v9 + 16) = 0;
      *(v9 + 20) = 16;
      *(v9 + 24) = "HALS_IOA2UCDevice.cpp";
      *(v9 + 32) = v8;
      *v9 = &unk_1F59638A0;
      *(v9 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v7, v9);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StopIOWithFlags(unsigned long long)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::StopIOWithFlags: got an error when telling the hardware to stop, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::StopIOWithFlags(unsigned long long)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOA2UCDevice::DoIO(HALS_IOA2UCDevice *this)
{
  result = *(this + 3);
  if (result)
  {
    if (*(this + 34) == 1)
    {
      JUMPOUT(0x1E12C0820);
    }
  }

  return result;
}

uint64_t HALS_IOA2UCDevice::SetStreamCurrentFormat(HALS_IOA2UCDevice *this, unsigned int a2, const AudioStreamBasicDescription *a3)
{
  input[1] = *MEMORY[0x1E69E9840];
  v3 = 1937010544;
  inputStruct = vcvtd_n_s64_f64(a3->mSampleRate - floor(a3->mSampleRate), 0x20uLL) | (vcvtmd_s64_f64(a3->mSampleRate) << 32);
  v11 = *&a3->mFormatID;
  v12 = *&a3->mBytesPerFrame;
  mBitsPerChannel = a3->mBitsPerChannel;
  input[0] = a2;
  v4 = *(this + 3);
  if (!v4 || *(this + 34) != 1 || (v3 = IOConnectCallMethod(v4, 5u, input, 1u, &inputStruct, 0x28uLL, 0, 0, 0, 0), v3))
  {
    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v7 = *(v5 + 8);
    v8 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v8 + 16) = 0;
    *(v8 + 20) = 16;
    *(v8 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v8 + 32) = (v3 << 32) | 0x531;
    *v8 = &unk_1F59638F8;
    *(v8 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v7, v8);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  return v3;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::SetStreamCurrentFormat(unsigned int,AudioStreamBasicDescription const&)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::SetStreamCurrentFormat: got an error when telling the hardware to set the stream format, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::SetStreamCurrentFormat(unsigned int,AudioStreamBasicDescription const&)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOA2UCDevice::SetControlValue(HALS_IOA2UCDevice *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  input[2] = *MEMORY[0x1E69E9840];
  v5 = 1937010544;
  input[0] = a2;
  input[1] = a3;
  output = a3;
  outputCnt = 1;
  v6 = *(this + 3);
  if (v6 && *(this + 34) == 1 && (v5 = IOConnectCallMethod(v6, 2u, input, 2u, 0, 0, &output, &outputCnt, 0, 0), !v5))
  {
    *a4 = output;
  }

  else
  {
    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v10 = *(v8 + 8);
    v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v11 + 16) = 0;
    *(v11 + 20) = 16;
    *(v11 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v11 + 32) = (v5 << 32) | 0x53C;
    *v11 = &unk_1F5963950;
    *(v11 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v10, v11);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  return v5;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::SetControlValue(unsigned int,unsigned int,unsigned int &)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::SetControlValue: got an error when telling the hardware to change a control value, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::SetControlValue(unsigned int,unsigned int,unsigned int &)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOA2UCDevice::SetMultiControlValue(mach_port_t *this, unsigned int a2, const unsigned int *a3, int a4, unsigned int *a5, unsigned int a6, unsigned int *a7)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v11 = 1937010544;
  v12 = 4 * (a4 + 1);
  MEMORY[0x1EEE9AC00](this);
  v14 = v24 - v13;
  *(v24 - v13) = v15;
  memcpy(v24 - v13 + 4, v17, 4 * v16);
  v24[0] = 4 * a6;
  v18 = this[3];
  if (v18 && *(this + 34) == 1 && (v11 = IOConnectCallMethod(v18, 8u, 0, 0, v14, v12, 0, 0, a5, v24), !v11))
  {
    *a7 = v24[0] >> 2;
  }

  else
  {
    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v21 = *(v19 + 8);
    v22 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v22 + 16) = 0;
    *(v22 + 20) = 16;
    *(v22 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v22 + 32) = (v11 << 32) | 0x553;
    *v22 = &unk_1F59639A8;
    *(v22 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v21, v22);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  return v11;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::SetMultiControlValue(unsigned int,unsigned int const*,unsigned int,unsigned int *,unsigned int,unsigned int &)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HAL_IOA2PhysicalDevice::SetMultiControlValue: got an error when telling the hardware to change a multi control value, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::SetMultiControlValue(unsigned int,unsigned int const*,unsigned int,unsigned int *,unsigned int,unsigned int &)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t CACFDictionary::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }
  }

  v5 = *a2;
  *a1 = *a2;
  v6 = *(a2 + 8);
  *(a1 + 8) = v6;
  *(a1 + 9) = *(a2 + 9);
  if (v6 == 1 && v5 != 0)
  {
    CFRetain(v5);
  }

  return a1;
}

caulk::rt_safe_memory_resource *HALS_IOA2UCDevice::PerformConfigChange(uint64_t a1, void *inputStruct)
{
  v3 = 1937010544;
  v4 = *(a1 + 12);
  if (v4)
  {
    if (*(a1 + 34) == 1)
    {
      v3 = IOConnectCallMethod(v4, 3u, 0, 0, inputStruct, 0x20uLL, 0, 0, 0, 0);
      if (!v3)
      {
        return v3;
      }
    }
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v8 = *(v5 + 8);
    v9 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v9 + 16) = 0;
    *(v9 + 20) = 16;
    *(v9 + 24) = "HALS_IOA2UCDevice.cpp";
    *(v9 + 32) = (v3 << 32) | 0x647;
    *v9 = &unk_1F5963A00;
    *(v9 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v8, v9);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::PerformConfigChange(IOAudio2Notification const&)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOA2UCDevice::PerformConfigChange: got an error from the call down to the driver, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOA2UCDevice::PerformConfigChange(IOAudio2Notification const&)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOA2UCDevice::MapEngineStatus(HALB_UCObject *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0;
  result = HALB_UCObject::MapMemory(a1, 0, 1u, &v5);
  if (v5 <= 0x27)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "HALS_IOA2UCDevice.cpp";
      v8 = 1024;
      v9 = 1615;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2UCDevice::MapEngineStatus: Mapped engine status is not large enough.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003329396;
  }

  *a2 = result;
  return result;
}

uint64_t HALS_IOThread::Entry(HALS_IOThread *this, void *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v50 = (this + 16);
  v51 = HALB_Mutex::Lock((this + 16));
  if (*(this + 188))
  {
    pthread_setname_np(this + 188);
  }

  HALB_IOThread::PostStateChange(this, 1920298606);
  v4 = (*(*this + 16))(this, *(this + 43), *(this + 352));
  v5 = v4;
  v6 = AMCP::Utility::configure_syscall_mask_for_normal_priority(v4);
  if (v6)
  {
    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_57;
    }

    v9 = *(v7 + 8);
    v10 = (v6 << 32) | 0xD1;
    v11 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v11 + 16) = 0;
    *(v11 + 20) = 16;
    *(v11 + 24) = "HALS_IOThread.mm";
    *(v11 + 32) = v10;
    *v11 = &unk_1F5963B58;
    *(v11 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v9, v11);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (v5)
  {
    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *(v12 + 8);
    v15 = __error();
    v16 = strerror(*v15);
    v6 = *MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_57;
    }

    v17 = caulk::rt_safe_memory_resource::rt_allocate(v6);
    *(v17 + 16) = 0;
    *(v17 + 20) = 16;
    *(v17 + 24) = "HALS_IOThread.mm";
    *(v17 + 32) = 308;
    *(v17 + 36) = v5;
    *(v17 + 40) = v16;
    *v17 = &unk_1F5963C60;
    *(v17 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v14, v17);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  if (*(this + 42) != 1735552612)
  {
    v2 = buf;
    v18 = *(this + 32);
    if (v18)
    {
      if (!*(v18 + 1))
      {
        v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v6 = *MEMORY[0x1E69E3C08];
        if (!*MEMORY[0x1E69E3C08])
        {
          goto LABEL_57;
        }

        v35 = *(v34 + 8);
        v27 = caulk::rt_safe_memory_resource::rt_allocate(v6);
        *(v27 + 16) = 0;
        *(v27 + 20) = 2;
        *(v27 + 24) = "HALS_IOThread.mm";
        *(v27 + 32) = 717;
        *v27 = &unk_1F5963E68;
        *(v27 + 8) = 0;
        v33 = v35;
        goto LABEL_33;
      }

      v19 = caulk::mach::os_workgroup_managed::join(v18);
      if (!v19)
      {
LABEL_35:
        LOBYTE(v36) = 0;
        v37 = 0;
        v38 = 1;
        while ((HALB_IOThread::HasBeenStopped(this) & 1) == 0 && v38 && !v37)
        {
          v38 = (*(*(this + 45) + 16))();
          v39 = v36;
          if (!(v36 & 1 | (v38 != 1)))
          {
            v39 = HALS_IOThread::WorkgroupStart(this, 0, 0);
          }

          v37 = (*(*(this + 46) + 16))();
          LOBYTE(v36) = 0;
          if (v39)
          {
            v36 = HALS_IOThread::WorkgroupFinish(this) ^ 1;
          }
        }

        v6 = *(this + 32);
        if (!v6)
        {
LABEL_58:
          v46 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v46 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v6);
          }

          v47 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v48 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v48)
          {
            atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
            v49 = *v47;
            AMCP::Log::Scope::get_os_log_t(*v47);
            objc_claimAutoreleasedReturnValue();
            std::__shared_weak_count::__release_shared[abi:ne200100](v48);
          }

          else
          {
            v49 = *v47;
            AMCP::Log::Scope::get_os_log_t(*v47);
            objc_claimAutoreleasedReturnValue();
          }

          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *(v2 + 4) = "HALS_IOThread.mm";
            WORD4(v55) = 1024;
            *(v2 + 14) = 823;
            HIWORD(v55) = 2080;
            *(v2 + 20) = "mWorkgroupInterval != nullptr";
            _os_log_error_impl(&dword_1DE1F9000, v49, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Workgroup must be allocated to leave", buf, 0x1Cu);
          }

          abort();
        }

        if (*(v6 + 1))
        {
          caulk::mach::os_workgroup_managed::leave(v6);
LABEL_54:
          HALB_IOThread::ConfigureThreadForNormalPriority(this);
          HALB_IOThread::PostStateChange(this, 1735552612);
          *(this + 1) = 0;
          goto LABEL_55;
        }

        v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v41 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v6 = *MEMORY[0x1E69E3C08];
        if (*MEMORY[0x1E69E3C08])
        {
          v42 = *(v40 + 8);
          if (*(*(this + 32) + 8))
          {
            v43 = 0x100000341;
          }

          else
          {
            v43 = 833;
          }

          v44 = caulk::rt_safe_memory_resource::rt_allocate(v6);
          *(v44 + 16) = 0;
          *(v44 + 20) = 2;
          *(v44 + 24) = "HALS_IOThread.mm";
          *(v44 + 32) = v43;
          *v44 = &unk_1F59640D0;
          *(v44 + 8) = 0;
          caulk::concurrent::messenger::enqueue(v42, v44);
          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          goto LABEL_54;
        }

LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v20 = v19;
      v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = *(v21 + 8);
      v24 = __error();
      v25 = strerror(*v24);
      v6 = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_57;
      }

      v26 = caulk::rt_safe_memory_resource::rt_allocate(v6);
      v27 = v26;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      *(v26 + 20) = 16;
      *(v26 + 24) = "HALS_IOThread.mm";
      *(v26 + 32) = 711;
      *(v26 + 36) = v20;
      *(v26 + 40) = v25;
      v28 = &unk_1F5963E10;
    }

    else
    {
      memset(v57, 0, sizeof(v57));
      v56 = 0u;
      v55 = 0u;
      *buf = 799564724;
      v29 = os_workgroup_attr_set_telemetry_flavor();
      if (!v29)
      {
        os_workgroup_attr_set_interval_type();
        std::string::basic_string[abi:ne200100]<0>(&v53, "AudioHALS Workgroup");
        std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.coreaudio.hal.iothread");
        caulk::mach::os_workgroup_interval_managed::make_with_workload_id();
        operator new();
      }

      v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = *(v30 + 8);
      v31 = __error();
      v32 = strerror(*v31);
      v6 = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_57;
      }

      v26 = caulk::rt_safe_memory_resource::rt_allocate(v6);
      v27 = v26;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      *(v26 + 20) = 16;
      *(v26 + 24) = "HALS_IOThread.mm";
      *(v26 + 32) = 696;
      *(v26 + 36) = v29;
      *(v26 + 40) = v32;
      v28 = &unk_1F5963DB8;
    }

    *v26 = v28;
    v33 = v23;
LABEL_33:
    caulk::concurrent::messenger::enqueue(v33, v27);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    goto LABEL_35;
  }

LABEL_55:
  HALB_Guard::Locker::~Locker(&v50);
  return 0;
}

void sub_1DE2B6840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, HALB_Mutex *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, uint64_t a35)
{
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&a25);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  HALB_Guard::Locker::~Locker(&a11);
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOThread::Entry(void *)::$_1,std::tuple<char const*,int,char *>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5963D10;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5963CB8;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t HALS_IOThread::WorkgroupStart(HALS_IOThread *this, unint64_t a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  if (!*(this + 32))
  {
LABEL_48:
    v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v38 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      v41 = *v39;
      AMCP::Log::Scope::get_os_log_t(*v39);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    else
    {
      v41 = *v39;
      AMCP::Log::Scope::get_os_log_t(*v39);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42.sig = 136315650;
      *v42.opaque = "HALS_IOThread.mm";
      *&v42.opaque[8] = 1024;
      *&v42.opaque[10] = 737;
      *&v42.opaque[14] = 2080;
      *&v42.opaque[16] = "mWorkgroupInterval != nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Workgroup must be allocated to start", &v42, 0x1Cu);
    }

    abort();
  }

  v5 = this;
  v6 = mach_absolute_time();
  if (v6 < a2)
  {
    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    this = *MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_47;
    }

    v9 = *(v7 + 8);
    v10 = caulk::rt_safe_memory_resource::rt_allocate(this);
    *(v10 + 16) = 0;
    *(v10 + 20) = 16;
    *(v10 + 24) = "HALS_IOThread.mm";
    *(v10 + 32) = 124;
    *(v10 + 40) = v6;
    *(v10 + 48) = a2;
    *v10 = &unk_1F5963AA8;
    *(v10 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v9, v10);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  if (a2 >= v6)
  {
    a2 = v6;
  }

  if (a2 > a3)
  {
    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    this = *MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_47;
    }

    v13 = *(v11 + 8);
    v14 = caulk::rt_safe_memory_resource::rt_allocate(this);
    *(v14 + 16) = 0;
    *(v14 + 20) = 16;
    *(v14 + 24) = "HALS_IOThread.mm";
    *(v14 + 32) = 130;
    *(v14 + 40) = a2;
    *(v14 + 48) = a3;
    *v14 = &unk_1F5963B00;
    *(v14 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v13, v14);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  if (v6 <= a3)
  {
    v6 = a3;
  }

  if (*(*(v5 + 32) + 8))
  {
    v15 = a2 == v6;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    this = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v18 = *(v16 + 8);
      if (*(*(v5 + 32) + 8))
      {
        v19 = 0x1000002FELL;
      }

      else
      {
        v19 = 766;
      }

      v20 = caulk::rt_safe_memory_resource::rt_allocate(this);
      *(v20 + 16) = 0;
      *(v20 + 20) = 2;
      *(v20 + 24) = "HALS_IOThread.mm";
      *(v20 + 32) = v19;
      *v20 = &unk_1F5963F70;
      *(v20 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v18, v20);
      if (!v17)
      {
        return 0;
      }

      v21 = v17;
      goto LABEL_43;
    }

    goto LABEL_47;
  }

  memset(v42.opaque, 0, sizeof(v42.opaque));
  v42.sig = 1386695757;
  *(v5 + 37) = 0;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  v22 = os_workgroup_interval_data_set_telemetry();
  v23 = v22;
  if (v22)
  {
    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = *(v24 + 8);
    v27 = __error();
    v28 = strerror(*v27);
    this = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v29 = caulk::rt_safe_memory_resource::rt_allocate(this);
      v30 = v29;
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      *(v29 + 20) = 16;
      *(v29 + 24) = "HALS_IOThread.mm";
      *(v29 + 32) = 754;
      *(v29 + 36) = v23;
      *(v29 + 40) = v28;
      v31 = &unk_1F5963EC0;
      goto LABEL_41;
    }

    goto LABEL_47;
  }

  v32 = caulk::mach::os_workgroup_interval_managed::start(*(v5 + 32), a2, v6, &v42);
  if (!v32)
  {
    return 1;
  }

  v33 = v32;
  v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = *(v34 + 8);
  v35 = __error();
  v36 = strerror(*v35);
  this = *MEMORY[0x1E69E3C08];
  if (!*MEMORY[0x1E69E3C08])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v29 = caulk::rt_safe_memory_resource::rt_allocate(this);
  v30 = v29;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0;
  *(v29 + 20) = 16;
  *(v29 + 24) = "HALS_IOThread.mm";
  *(v29 + 32) = 760;
  *(v29 + 36) = v33;
  *(v29 + 40) = v36;
  v31 = &unk_1F5963F18;
LABEL_41:
  *v29 = v31;
  caulk::concurrent::messenger::enqueue(v26, v30);
  if (v25)
  {
    v21 = v25;
LABEL_43:
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  return 0;
}

void sub_1DE2B7028(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOThread::WorkgroupFinish(HALS_IOThread *this)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(this + 32);
  if (!v1)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (!v3)
    {
      v23 = *v9;
      AMCP::Log::Scope::get_os_log_t(*v9);
      objc_claimAutoreleasedReturnValue();
      goto LABEL_33;
    }

LABEL_32:
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = *v9;
    AMCP::Log::Scope::get_os_log_t(*v9);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_33:
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24.sig = 136315650;
      *v24.opaque = "HALS_IOThread.mm";
      *&v24.opaque[8] = 1024;
      *&v24.opaque[10] = 781;
      *&v24.opaque[14] = 2080;
      *&v24.opaque[16] = "mWorkgroupInterval != nullptr";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s Workgroup must be allocated to finish", &v24, 0x1Cu);
    }

    abort();
  }

  if (!*(v1 + 8))
  {
    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v13 = *(v9 + 8);
      if (*(*(this + 32) + 8))
      {
        v14 = 0x100000328;
      }

      else
      {
        v14 = 808;
      }

      v15 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v15 + 16) = 0;
      *(v15 + 20) = 2;
      *(v15 + 24) = "HALS_IOThread.mm";
      *(v15 + 32) = v14;
      *v15 = &unk_1F5964078;
      *(v15 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v13, v15);
      if (!v3)
      {
        return 0;
      }

      v16 = v3;
      goto LABEL_23;
    }

    goto LABEL_31;
  }

  memset(v24.opaque, 0, sizeof(v24.opaque));
  v24.sig = 1386695757;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 42) = 0;
  v3 = os_workgroup_interval_data_set_telemetry();
  if (v3)
  {
    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(v4 + 8);
    v7 = __error();
    v8 = strerror(*v7);
    v9 = MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      v11 = v10;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      *(v10 + 20) = 16;
      *(v10 + 24) = "HALS_IOThread.mm";
      *(v10 + 32) = 796;
      *(v10 + 36) = v3;
      *(v10 + 40) = v8;
      v12 = &unk_1F5963FC8;
      goto LABEL_21;
    }

    goto LABEL_31;
  }

  v17 = caulk::mach::os_workgroup_interval_managed::finish(*(this + 32), &v24);
  if (!v17)
  {
    return 1;
  }

  v3 = v17;
  v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v18 + 8);
  v19 = __error();
  v20 = strerror(*v19);
  v9 = MEMORY[0x1E69E3C08];
  if (!*MEMORY[0x1E69E3C08])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  v11 = v10;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 20) = 16;
  *(v10 + 24) = "HALS_IOThread.mm";
  *(v10 + 32) = 802;
  *(v10 + 36) = v3;
  *(v10 + 40) = v20;
  v12 = &unk_1F5964020;
LABEL_21:
  *v10 = v12;
  caulk::concurrent::messenger::enqueue(v6, v11);
  if (v5)
  {
    v16 = v5;
LABEL_23:
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return 0;
}

void sub_1DE2B73E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<HALS_IOThread::Entry(void *)::$_3,std::tuple<char const*,int,char *>>(caulk::concurrent::messenger *a1, _BYTE *a2, __int128 *a3)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v7 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v7 + 16) = 0;
    *v7 = &unk_1F5963D90;
    *(v7 + 8) = 0;
    *(v7 + 20) = *a2;
    v8 = *a3;
    *(v7 + 40) = *(a3 + 2);
    *(v7 + 24) = v8;
    *v7 = &unk_1F5963D38;

    return caulk::concurrent::messenger::enqueue(a1, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOThread::Entry(void *)::$_3,std::tuple<char const*,int,char *>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOThread::Entry(void *)::$_3,std::tuple<char const*,int,char *>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOThread::Entry(void *)::$_3,std::tuple<char const*,int,char *>>::perform(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 136315650;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    v13 = 2080;
    v14 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to change thread to normal priority because of exception - %s", &v9, 0x1Cu);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::Entry(void *)::$_3,std::tuple<char const*,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOThread::Entry(void *)::$_3,std::tuple<char const*,int,char *>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupLeave(void)::$_1,std::tuple<char const*,int,BOOL>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Could not leave an invalid or unjoined workgroup - %d", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupLeave(void)::$_1,std::tuple<char const*,int,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupFinish(void)::$_3,std::tuple<char const*,int,BOOL>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Could not finish an invalid or unstarted workgroup - %d", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupFinish(void)::$_3,std::tuple<char const*,int,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupFinish(void)::$_2,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to finish the workgroup with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupFinish(void)::$_2,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupFinish(void)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to set telemetry data with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupFinish(void)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupStart(unsigned long long,unsigned long long)::$_3,std::tuple<char const*,int,BOOL>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Could not start an invalid or unjoined workgroup - %d", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupStart(unsigned long long,unsigned long long)::$_3,std::tuple<char const*,int,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupStart(unsigned long long,unsigned long long)::$_2,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to start the workgroup with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupStart(unsigned long long,unsigned long long)::$_2,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupStart(unsigned long long,unsigned long long)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to set telemetry data with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupStart(unsigned long long,unsigned long long)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<ValidateWorkgroupIntervalTimestamps(unsigned long long &,unsigned long long &)::$_1,std::tuple<char const*,int,unsigned long long,unsigned long long>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Deadline is prior to Start time - this will cause a workgroup error. Start Time: %llu Deadline Time: %llu", &v11, 0x26u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<ValidateWorkgroupIntervalTimestamps(unsigned long long &,unsigned long long &)::$_1,std::tuple<char const*,int,unsigned long long,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<ValidateWorkgroupIntervalTimestamps(unsigned long long &,unsigned long long &)::$_0,std::tuple<char const*,int,unsigned long long,unsigned long long>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 2048;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Start time is in the future relative to current time - this will cause a workgroup error. Current Mach Time: %llu Provided Start Time: %llu", &v11, 0x26u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<ValidateWorkgroupIntervalTimestamps(unsigned long long &,unsigned long long &)::$_0,std::tuple<char const*,int,unsigned long long,unsigned long long>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupJoin(void)::$_3,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Could not join an invalid workgroup", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupJoin(void)::$_3,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupJoin(void)::$_2,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to join the workgroup with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupJoin(void)::$_2,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupJoin(void)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to set telemetry flavor with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::WorkgroupJoin(void)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<HALS_IOThread::Entry(void *)::$_1,std::tuple<char const*,int,char *>>::perform(caulk::concurrent::message *a1)
{
  caulk::concurrent::details::message_call<HALS_IOThread::Entry(void *)::$_1,std::tuple<char const*,int,char *>>::perform(a1);
  caulk::concurrent::message::~message(a1);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::message_call<HALS_IOThread::Entry(void *)::$_1,std::tuple<char const*,int,char *>>::perform(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 136315650;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    v13 = 2080;
    v14 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to change thread to realtime priority with code because of exception - %s", &v9, 0x1Cu);
  }
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::Entry(void *)::$_1,std::tuple<char const*,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void caulk::concurrent::details::message_call<HALS_IOThread::Entry(void *)::$_1,std::tuple<char const*,int,char *>>::~message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::Entry(void *)::$_0,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to change thread to realtime priority with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::Entry(void *)::$_0,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::ConfigureThreadForRealtimePriorityOnStartup(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOThread::ClearAllSyscallMasks - configure_syscall_mask_for_normal_priority failed, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::ConfigureThreadForRealtimePriorityOnStartup(void)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_IOThread::~HALS_IOThread(HALS_IOThread *this)
{
  HALS_IOThread::~HALS_IOThread(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5963A58;
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 440));
  v2 = *(this + 54);
  *(this + 54) = 0;
  if (v2)
  {
    MEMORY[0x1E12C1730](v2, 0xC400A2AC0F1);
  }

  if (*(this + 431) < 0)
  {
    operator delete(*(this + 51));
  }

  v3 = *(this + 50);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 32);
  *(this + 32) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *this = &unk_1F598C018;
  HALB_Guard::~HALB_Guard((this + 16));
}

caulk::rt_safe_memory_resource *HALS_IOThread::EnableRTSafeSyscallMasks(AMCP::Log::AMCP_Scope_Registry **this)
{
  v23 = *MEMORY[0x1E69E9840];
  IsCurrentThread = HALB_IOThread::IsCurrentThread(this, 1);
  if (!IsCurrentThread)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(IsCurrentThread);
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v4;
      AMCP::Log::Scope::get_os_log_t(*v4);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v6 = *v4;
      AMCP::Log::Scope::get_os_log_t(*v4);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HALS_IOThread.mm";
      v21 = 1024;
      v22 = 216;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOThread::EnableRTSafeSyscallMasks - must be called from on the thread", &v19, 0x12u);
    }
  }

  v7 = this[11];
  v8 = pthread_self();
  if (v7 != v8)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v10;
      AMCP::Log::Scope::get_os_log_t(*v10);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v12 = *v10;
      AMCP::Log::Scope::get_os_log_t(*v10);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HALS_IOThread.mm";
      v21 = 1024;
      v22 = 217;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOThread::EnableRTSafeSyscallMasks - this thread ought to lock the lock", &v19, 0x12u);
    }
  }

  v13 = AMCP::Utility::configure_syscall_mask_for_realtime_priority(v8);
  if (v13)
  {
    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v16 = *(v14 + 8);
    v17 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v17 + 16) = 0;
    *(v17 + 20) = 16;
    *(v17 + 24) = "HALS_IOThread.mm";
    *(v17 + 32) = (v13 << 32) | 0xDDLL;
    *v17 = &unk_1F5963BB0;
    *(v17 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v16, v17);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  return v13;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::EnableRTSafeSyscallMasks(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOThread::EnableRTSafeSyscallMasks - configure_syscall_mask_for_realtime_priority failed, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::EnableRTSafeSyscallMasks(void)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

caulk::rt_safe_memory_resource *HALS_IOThread::ClearAllSyscallMasks(AMCP::Log::AMCP_Scope_Registry **this)
{
  v23 = *MEMORY[0x1E69E9840];
  IsCurrentThread = HALB_IOThread::IsCurrentThread(this, 1);
  if (!IsCurrentThread)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(IsCurrentThread);
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v4;
      AMCP::Log::Scope::get_os_log_t(*v4);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v6 = *v4;
      AMCP::Log::Scope::get_os_log_t(*v4);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HALS_IOThread.mm";
      v21 = 1024;
      v22 = 228;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOThread::ClearAllSyscallMasks - must be called from on the thread", &v19, 0x12u);
    }
  }

  v7 = this[11];
  v8 = pthread_self();
  if (v7 != v8)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v10;
      AMCP::Log::Scope::get_os_log_t(*v10);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v12 = *v10;
      AMCP::Log::Scope::get_os_log_t(*v10);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315394;
      v20 = "HALS_IOThread.mm";
      v21 = 1024;
      v22 = 229;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOThread::ClearAllSyscallMasks - this thread ought to lock the lock", &v19, 0x12u);
    }
  }

  v13 = AMCP::Utility::configure_syscall_mask_for_normal_priority(v8);
  if (v13)
  {
    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v16 = *(v14 + 8);
    v17 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v17 + 16) = 0;
    *(v17 + 20) = 16;
    *(v17 + 24) = "HALS_IOThread.mm";
    *(v17 + 32) = (v13 << 32) | 0xE9;
    *v17 = &unk_1F5963C08;
    *(v17 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v16, v17);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  return v13;
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::ClearAllSyscallMasks(void)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
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
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALS_IOThread::ClearAllSyscallMasks - configure_syscall_mask_for_normal_priority failed, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::ClearAllSyscallMasks(void)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOThread::HasBeenDeactivated(HALS_IOThread *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  v3 = pthread_self();
  if (v2 != v3)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v5;
      AMCP::Log::Scope::get_os_log_t(*v5);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v7 = *v5;
      AMCP::Log::Scope::get_os_log_t(*v5);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_IOThread.mm";
      v11 = 1024;
      v12 = 240;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOThread::HasBeenDeactivated: this thread ought to lock the lock", &v9, 0x12u);
    }
  }

  return *(this + 181);
}

uint64_t HALS_IOThread::CopyWorkgroupIntervalPort(HALS_IOThread *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = (this + 16);
  v15 = HALB_Mutex::Lock((this + 16));
  v2 = *(this + 32);
  if (!v2)
  {
    memset(v19, 0, sizeof(v19));
    v18 = 0u;
    v17 = 0u;
    v16 = 799564724;
    v4 = os_workgroup_attr_set_telemetry_flavor();
    if (!v4)
    {
      os_workgroup_attr_set_interval_type();
      std::string::basic_string[abi:ne200100]<0>(&v13, "AudioHALS Workgroup");
      std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.coreaudio.hal.iothread");
      caulk::mach::os_workgroup_interval_managed::make_with_workload_id();
      operator new();
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(v5 + 8);
    v8 = __error();
    v9 = strerror(*v8);
    if (!*MEMORY[0x1E69E3C08])
    {
      __break(1u);
    }

    v10 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v10 + 16) = 0;
    *(v10 + 20) = 16;
    *(v10 + 24) = "HALS_IOThread.mm";
    *(v10 + 32) = 883;
    *(v10 + 36) = v4;
    *(v10 + 40) = v9;
    *v10 = &unk_1F5964128;
    *(v10 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v7, v10);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    goto LABEL_10;
  }

  if (!*(v2 + 1))
  {
LABEL_10:
    v3 = 0;
    goto LABEL_11;
  }

  v3 = caulk::mach::os_workgroup_managed::copy_mach_port(v2);
LABEL_11:
  HALB_Guard::Locker::~Locker(&v14);
  return v3;
}

void sub_1DE2B9B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, HALB_Mutex *a21, uint64_t a22, char a23)
{
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&a23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  HALB_Guard::Locker::~Locker(&a21);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::CopyWorkgroupIntervalPort(void)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to set telemetry flavor with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::CopyWorkgroupIntervalPort(void)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

__n128 HALS_IOThread::GetIOThreadOSWorkgroup(HALS_IOThread *this, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = (a2 + 16);
  v19 = HALB_Mutex::Lock((a2 + 16));
  v5 = *(a2 + 256);
  if (!v5)
  {
    memset(v23, 0, sizeof(v23));
    v22 = 0u;
    v21 = 0u;
    v20 = 799564724;
    v6 = os_workgroup_attr_set_telemetry_flavor();
    if (v6)
    {
      v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = *(v7 + 8);
      v10 = __error();
      v11 = strerror(*v10);
      if (*MEMORY[0x1E69E3C08])
      {
        v12 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v12 + 16) = 0;
        *(v12 + 20) = 16;
        *(v12 + 24) = "HALS_IOThread.mm";
        *(v12 + 32) = 944;
        *(v12 + 36) = v6;
        *(v12 + 40) = v11;
        *v12 = &unk_1F5964180;
        *(v12 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v9, v12);
        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        std::string::basic_string[abi:ne200100]<0>(v17, "AudioHALS Workgroup");
        std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.coreaudio.hal.iothread");
        caulk::mach::os_workgroup_interval_managed::make_with_workload_id();
        operator new();
      }

      __break(1u);
    }

    os_workgroup_attr_set_interval_type();
    std::string::basic_string[abi:ne200100]<0>(v17, "AudioHALS Workgroup");
    std::string::basic_string[abi:ne200100]<0>(__p, "com.apple.coreaudio.hal.iothread");
    caulk::mach::os_workgroup_interval_managed::make_with_workload_id();
    operator new();
  }

  *this = MEMORY[0x1E69E3C18] + 16;
  *(this + 1) = caulk::mach::details::retain_os_object(*(v5 + 8), v4);
  v13 = *(v5 + 41);
  v14 = *(v5 + 32);
  *(this + 1) = *(v5 + 16);
  *(this + 2) = v14;
  *(this + 41) = v13;
  *this = MEMORY[0x1E69E3C20] + 16;
  *(this + 57) = *(v5 + 57);
  HALB_Guard::Locker::~Locker(&v18);
  return result;
}

void sub_1DE2BA0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, HALB_Mutex *a21, uint64_t a22, char a23)
{
  caulk::mach::os_workgroup_interval_managed::~os_workgroup_interval_managed(&a23);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  HALB_Guard::Locker::~Locker(&a21);
  _Unwind_Resume(a1);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_IOThread::GetIOThreadOSWorkgroup(void)::$_1,std::tuple<char const*,int,int,char *>>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    v4 = *v2;
    AMCP::Log::Scope::get_os_log_t(*v2);
    objc_claimAutoreleasedReturnValue();
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v9 = *(a1 + 40);
    v11 = 136315906;
    v12 = v6;
    v13 = 1024;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 2080;
    v18 = v9;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to set telemetry flavor with code: %d - %s", &v11, 0x22u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_IOThread::GetIOThreadOSWorkgroup(void)::$_1,std::tuple<char const*,int,int,char *>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

AMCP::Utility::Dispatch_Queue **std::unique_ptr<AMCP::Utility::Dispatch_Queue>::~unique_ptr[abi:ne200100](AMCP::Utility::Dispatch_Queue **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v2);
    MEMORY[0x1E12C1730]();
  }

  return a1;
}

void HALB_Mutex::Locker::~Locker(HALB_Mutex **this)
{
  if (!*(this + 2))
  {
    HALB_Mutex::Unlock(*this);
  }
}

uint64_t HALS_IOEngineInfo::engine_is_running_for_reference_stream(HALS_IOEngineInfo *this)
{
  result = *(this + 11);
  if (result)
  {
    return (*(*result + 696))();
  }

  return result;
}

uint64_t HALS_IOEngineInfo::engine_has_time_and_anchored_for_reference_stream(HALS_IOEngineInfo *this)
{
  if (*(this + 505) != 1)
  {
    return 0;
  }

  result = *(this + 11);
  if (result)
  {
    result = (*(*result + 696))(result);
    if (result)
    {
      return *(*(this + 46) + 96) != 0;
    }
  }

  return result;
}

uint64_t HALS_IOEngineInfo::engine_has_time_for_reference_stream(HALS_IOEngineInfo *this)
{
  result = *(this + 11);
  if (result)
  {
    result = (*(*result + 696))(result);
    if (result)
    {
      return *(*(this + 46) + 96) != 0;
    }
  }

  return result;
}

uint64_t HALS_IOEngineInfo::max_procesor_frame_size(HALS_IOEngineInfo *this, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  if ((*(*this + 176))(this))
  {
    v7 = 0;
    do
    {
      v8 = (*(*this + 184))(this, a2, v7);
      if ((*(*v8 + 24))(v8))
      {
        v9 = (*(*v8 + 16))(v8, a2 != 0, a3);
        if (v9 <= v6)
        {
          v6 = v6;
        }

        else
        {
          v6 = v9;
        }
      }

      v7 = (v7 + 1);
    }

    while (v7 < (*(*this + 176))(this, a2));
  }

  return v6;
}

uint64_t HALS_IOEngineInfo::should_fetch_buffer_size_from_processors(HALS_IOEngineInfo *this, uint64_t a2)
{
  if (!(*(*this + 176))(this))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = (*(*this + 184))(this, a2, v4);
    v6 = (*(*v5 + 24))(v5);
    if (v6)
    {
      break;
    }

    v4 = (v4 + 1);
  }

  while (v4 < (*(*this + 176))(this, a2));
  return v6;
}

uint64_t HALS_IOEngineInfo::match_buffer_size_in_directions_without_streams(HALS_IOEngineInfo *this, int a2)
{
  if ((*(*this + 200))(this) && ((*(*this + 208))(this) & 1) == 0)
  {
    if (a2)
    {
      result = (*(*this + 216))(this);
      if (result)
      {
        return result;
      }
    }

    v6 = 0;
    v5 = 1;
  }

  else
  {
    result = (*(*this + 200))(this);
    if (result)
    {
      return result;
    }

    result = (*(*this + 208))(this);
    if (!result)
    {
      return result;
    }

    v5 = 0;
    v6 = 1;
  }

  v7 = (*(*this + 152))(this, v6);
  v8 = *(*this + 280);

  return v8(this, v5, v7);
}

uint64_t HALS_IOEngineInfo::update_io_buffer_frame_size(HALS_IOEngineInfo *this, uint64_t a2, double a3, int a4, uint64_t a5)
{
  if ((*(*this + 296))(this, a5))
  {
    v10 = *this;
    if (a4)
    {
      a2 = (*(v10 + 304))(this, a5, a2);
    }

    else
    {
      v11 = (*(v10 + 192))(this, a5);
      a2 = (a2 * a3 + fmod(v11, a2 * a3) / (a2 * a3));
    }
  }

  v12 = *(*this + 280);

  return v12(this, a5, a2);
}

uint64_t HALS_IOEngineInfo::must_begin_and_end_writing(HALS_IOEngineInfo *this)
{
  if ((*(*this + 16))(this) && (*(this + 830) & 1) == 0)
  {
    v2 = *(this + 832);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t HALS_IOEngineInfo::must_begin_and_end_reading(HALS_IOEngineInfo *this)
{
  if ((*(*this + 16))(this) && (*(this + 830) & 1) == 0)
  {
    if (*(this + 831))
    {
      v2 = 1;
    }

    else
    {
      v2 = *(this + 846);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t HALS_IOEngineInfo::processor(HALS_IOEngineInfo *this, unsigned int a2, unsigned int a3)
{
  v3 = this + 24 * a2;
  v4 = *(v3 + 98);
  v5 = *(v3 + 97);
  if (a3 >= ((v4 - v5) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v5 + 8 * a3);
  }
}

double HALS_IOEngineInfo::update_cycle_info(HALS_IOEngineInfo *this, unsigned int a2, double a3, double a4)
{
  *(this + 64) = a2;
  *(this + 130) = *(this + 190);
  *(this + 146) = 3;
  HALS_IOClock::GetCurrentTime(*(this + 46), (this + 528));
  *(this + 90) = a3;
  v7 = *(this + 46);
  *(this + 91) = *(v7 + 40 * *(v7 + 192) + 200);
  v8 = *(this + 456);
  *&v21.mSampleTime = *(this + 440);
  *&v21.mRateScalar = v8;
  v9 = *(this + 488);
  *&v21.mSMPTETime.mSubframes = *(this + 472);
  *&v21.mSMPTETime.mHours = v9;
  v21.mFlags = 1;
  DWORD1(v8) = HIDWORD(v21.mSampleTime);
  LODWORD(v8) = *(this + 99);
  *&v9 = v21.mSampleTime + *(this + 93) - v8;
  v10 = *(this + 101);
  *&v8 = v10;
  LODWORD(v8) = *(this + 105);
  *&v8 = v8;
  *&v9 = *&v9 - v10 - *&v8;
  LODWORD(v8) = *(this + 190);
  v21.mSampleTime = *&v9 - v8;
  memset(&v19, 0, sizeof(v19));
  v19.mFlags = 3;
  HALS_IOClock::TranslateTime(v7, &v21, &v19);
  v11 = *&v19.mRateScalar;
  *(this + 37) = *&v19.mSampleTime;
  *(this + 38) = v11;
  v12 = *&v19.mSMPTETime.mHours;
  *(this + 39) = *&v19.mSMPTETime.mSubframes;
  *(this + 40) = v12;
  v13 = *(this + 456);
  *&v21.mSampleTime = *(this + 440);
  *&v21.mRateScalar = v13;
  v14 = *(this + 488);
  *&v21.mSMPTETime.mSubframes = *(this + 472);
  *&v21.mSMPTETime.mHours = v14;
  v21.mFlags = 1;
  DWORD1(v13) = HIDWORD(v21.mSampleTime);
  LODWORD(v13) = *(this + 98);
  *&v14 = v21.mSampleTime + *(this + 92) + v13;
  v15 = *(this + 100);
  *&v13 = v15;
  LODWORD(v13) = *(this + 104);
  *&v13 = v13;
  *&v14 = *&v14 + v15 + *&v13;
  LODWORD(v13) = *(this + 190);
  v21.mSampleTime = *&v14 + round(v13 * a4);
  memset(&v20, 0, sizeof(v20));
  v20.mFlags = 3;
  HALS_IOClock::TranslateTime(*(this + 46), &v21, &v20);
  v16 = *&v20.mRateScalar;
  *(this + 41) = *&v20.mSampleTime;
  *(this + 42) = v16;
  result = *&v20.mSMPTETime.mSubframes;
  v18 = *&v20.mSMPTETime.mHours;
  *(this + 43) = *&v20.mSMPTETime.mSubframes;
  *(this + 44) = v18;
  return result;
}

uint64_t HALS_IOEngineInfo::process_output_stream_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 88);
  v10 = (*(*a2 + 112))(a2);
  v11 = *(*v9 + 864);

  return v11(v9, v10, a3, a1, a4, a5);
}

uint64_t HALS_IOEngineInfo::process_input_stream_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 88);
  v10 = (*(*a2 + 112))(a2);
  v11 = *(*v9 + 856);

  return v11(v9, v10, a3, a1, a4, a5);
}

uint64_t HALS_IOEngineInfo::end_writing(HALS_IOEngineInfo *this)
{
  result = (*(*this + 232))(this);
  if (result)
  {
    v3 = *(**(this + 11) + 840);

    return v3();
  }

  return result;
}

uint64_t HALS_IOEngineInfo::begin_writing(HALS_IOEngineInfo *this)
{
  result = (*(*this + 232))(this);
  if (result)
  {
    v3 = *(**(this + 11) + 816);

    return v3();
  }

  return result;
}

uint64_t HALS_IOEngineInfo::end_reading(HALS_IOEngineInfo *this)
{
  result = (*(*this + 224))(this);
  if (result)
  {
    v3 = *(**(this + 11) + 808);

    return v3();
  }

  return result;
}

uint64_t HALS_IOEngineInfo::begin_reading(HALS_IOEngineInfo *this)
{
  result = (*(*this + 224))(this);
  if (result)
  {
    v3 = *(**(this + 11) + 760);

    return v3();
  }

  return result;
}

uint64_t HALS_IOEngineInfo::end_io_cycle(HALS_IOEngineInfo *this)
{
  result = (*(*this + 16))(this);
  if (result)
  {
    v3 = *(**(this + 11) + 752);

    return v3();
  }

  return result;
}

uint64_t HALS_IOEngineInfo::has_device(HALS_IOEngineInfo *this)
{
  result = *(this + 11);
  if (result)
  {
    return (*(*result + 336))(result) != 0;
  }

  return result;
}

void HALS_IOEngineInfo::~HALS_IOEngineInfo(HALS_IOEngineInfo *this)
{
  HALS_IOEngineInfo::~HALS_IOEngineInfo(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5987808;
  for (i = 800; i != 752; i -= 24)
  {
    if (*(this + i))
    {
      std::vector<std::unique_ptr<HALS_IOProcessor>>::clear[abi:ne200100]((this + i));
      operator delete(*(this + i));
    }
  }

  v3 = *(this + 46);
  *(this + 46) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  CACFString::~CACFString((this + 96));
  for (j = 48; j != -32; j -= 40)
  {
    caulk::concurrent::shared_spin_lock::~shared_spin_lock((this + j));
  }
}

void caulk::concurrent::shared_spin_lock::~shared_spin_lock(caulk::concurrent::shared_spin_lock *this)
{
  if (atomic_load(this))
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }
}

void *std::vector<std::unique_ptr<HALS_IOProcessor>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

atomic_uint *HALS_IOEngineInfo::write_volume_target_info_potentially_blocking(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v4 = a1 + 40 * a2;
  caulk::concurrent::shared_spin_lock::lock((v4 + 8));
  v5 = *a3;
  *(v4 + 32) = *(a3 + 2);
  *(v4 + 16) = v5;
  *(v4 + 40) = 1;
  return caulk::concurrent::shared_spin_lock::unlock((v4 + 8));
}

atomic_uint *caulk::concurrent::shared_spin_lock::lock(atomic_uint *this)
{
  v1 = 0;
  atomic_compare_exchange_strong(this, &v1, 0x80000000);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    do
    {
      if (v3 >= 0x65)
      {
        v4 = mach_absolute_time();
        this = mach_wait_until(v4 + 24000);
      }

      v5 = 0;
      ++v3;
      atomic_compare_exchange_strong(v2, &v5, 0x80000000);
    }

    while (v5);
  }

  return this;
}

atomic_uint *caulk::concurrent::shared_spin_lock::unlock(atomic_uint *this)
{
  v1 = 0x80000000;
  atomic_compare_exchange_strong(this, &v1, 0);
  if (v1 != 0x80000000)
  {
    _os_assert_log();
    this = _os_crash();
    __break(1u);
  }

  return this;
}

void ADS::StereoPanControl::SetPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, _DWORD *a9, uint64_t a10, unsigned __int8 a11)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a4 == 1936745315)
  {
    if (a7 != 8)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_StereoPanControl.cpp";
        v25 = 1024;
        v26 = 144;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::StereoPanControl::SetPropertyData: wrong size for the data for kAudioStereoPanControlPropertyPanningChannels", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 561211770;
    }

    v17 = *(a1 + 120);
    v16 = (a1 + 120);
    *buf = a1 + 120;
    v18 = (*(v17 + 16))(a1 + 120, a2, a3);
    buf[8] = v18;
    v16[23] = *a8;
    v16[24] = a8[1];
    *a9 = 1;
    v19 = *(v16 - 1);
    LODWORD(v22) = 1936745315;
    HIDWORD(v22) = v19;
    v23 = 0;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, &v22);
    if (v18)
    {
      (*(*v16 + 24))(v16);
    }
  }

  else if (*a4 == 1936745334)
  {
    if (a7 != 4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ADS_StereoPanControl.cpp";
        v25 = 1024;
        v26 = 131;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ADS::StereoPanControl::SetPropertyData: wrong size for the data for kAudioStereoPanControlPropertyValue", buf, 0x12u);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      *v20 = off_1F5991DD8;
      v20[2] = 561211770;
    }

    v13 = *(a1 + 120);
    v12 = (a1 + 120);
    *buf = a1 + 120;
    v14 = (*(v13 + 16))(a1 + 120, a2, a3);
    buf[8] = v14;
    v12[22] = *a8;
    *a9 = 1;
    v15 = *(v12 - 1);
    LODWORD(v22) = 1936745334;
    HIDWORD(v22) = v15;
    v23 = 0;
    std::vector<AudioObjectPropertyAddress>::push_back[abi:ne200100](a10, &v22);
    if (v14)
    {
      (*(*v12 + 24))(v12);
    }
  }

  else
  {

    ADS::BaseObject::SetPropertyData(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }
}

void sub_1DE2BB974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ADS::StereoPanControl::GetPropertyData(ADS::StereoPanControl *this, uint64_t a2, uint64_t a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, unsigned int a7, unsigned int *a8, char *a9)
{
  if (a4->mSelector == 1936745315)
  {
    v13 = (this + 120);
    v14 = (*(*(this + 15) + 16))(this + 120, a2, a3);
    *a9 = v13[23];
    *(a9 + 1) = v13[24];
    if (v14)
    {
      (*(*v13 + 24))(v13);
    }

    v12 = 8;
    goto LABEL_9;
  }

  if (a4->mSelector == 1936745334)
  {
    v10 = (this + 120);
    v11 = (*(*(this + 15) + 16))(this + 120, a2, a3);
    *a9 = v10[22];
    if (v11)
    {
      (*(*v10 + 24))(v10);
    }

    v12 = 4;
LABEL_9:
    *a8 = v12;
    return;
  }

  ADS::Control::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ADS::StereoPanControl::GetPropertyDataSize(ADS::StereoPanControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6)
{
  mSelector = a4->mSelector;
  v7 = 4;
  if (a4->mSelector <= 1936745314)
  {
    if (mSelector != 1667591277 && mSelector != 1668506480)
    {
      return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
    }

    return v7;
  }

  if (mSelector == 1936745334)
  {
    return v7;
  }

  if (mSelector == 1936745315)
  {
    return 8;
  }

  return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
}

uint64_t ADS::StereoPanControl::IsPropertySettable(ADS::StereoPanControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  if (a4->mSelector > 1936745314)
  {
    if (mSelector == 1936745315 || mSelector == 1936745334)
    {
      return 1;
    }
  }

  else if (mSelector == 1667591277 || mSelector == 1668506480)
  {
    return 0;
  }

  return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
}

BOOL ADS::StereoPanControl::HasProperty(ADS::StereoPanControl *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  mSelector = a4->mSelector;
  if (a4->mSelector > 1936745314)
  {
    v5 = mSelector == 1936745315;
    v6 = 1936745334;
  }

  else
  {
    v5 = mSelector == 1667591277;
    v6 = 1668506480;
  }

  return v5 || mSelector == v6 || ADS::BaseObject::HasProperty(this, a2, a3, a4);
}

void ADS::StereoPanControl::~StereoPanControl(ADS::StereoPanControl *this)
{
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));
  ADS::BaseObject::~BaseObject(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5984F18;
  CADeprecated::CAMutex::~CAMutex((this + 120));

  ADS::BaseObject::~BaseObject(this);
}

void AMCP::Object::~Object(AMCP::Object *this)
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

uint64_t AMCP::Object::Object(uint64_t a1, uint64_t a2, unsigned int a3)
{
  AMCP::Core::Broker::fetch_core(v9, *(**a2 + 16), a3);
  *a1 = &unk_1F5964268;
  v5 = v9[0];
  if (v9[0])
  {
    v6 = *v9[0];
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = v6;
  v7 = v9[1];
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 32) = a2;
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    *(a1 + 32) = a2;
  }

  return a1;
}

{
  AMCP::Core::Broker::fetch_core(v9, *(**a2 + 16), a3);
  *a1 = &unk_1F5964268;
  v5 = v9[0];
  if (v9[0])
  {
    v6 = *v9[0];
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = v6;
  v7 = v9[1];
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 32) = a2;
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    *(a1 + 32) = a2;
  }

  return a1;
}

uint64_t AMCP::Object::Object(uint64_t result, uint64_t a2, int **a3)
{
  *result = &unk_1F5964268;
  v3 = *a3;
  if (*a3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  *(result + 8) = v4;
  v5 = a3[1];
  *(result + 16) = v3;
  *(result + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
  }

  *(result + 32) = a2;
  return result;
}

{
  *result = &unk_1F5964268;
  v3 = *a3;
  if (*a3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  *(result + 8) = v4;
  v5 = a3[1];
  *(result + 16) = v3;
  *(result + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1uLL, memory_order_relaxed);
  }

  *(result + 32) = a2;
  return result;
}

uint64_t AMCP::Object::has_property(AMCP::Object *this, const AMCP::Address *a2)
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
    has_property = AMCP::Core::Core::has_property(v7, a2);
  }

  else
  {
    has_property = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return has_property;
}

uint64_t AMCP::Object::is_property_settable(AMCP::Object *this, const AMCP::Address *a2)
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
    is_property_settable = AMCP::Core::Core::is_property_settable(v7, a2);
  }

  else
  {
    is_property_settable = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return is_property_settable;
}

uint64_t AMCP::Core::Core::is_property_settable(int8x8_t *this, const AMCP::Address *a2)
{
  v3 = this;
  v40 = *MEMORY[0x1E69E9840];
  if (!AMCP::Core::Core::has_property(this, a2))
  {
    goto LABEL_14;
  }

  AMCP::Core::Core::find_operation(&v22, v3, a2);
  v4 = v22;
  if (v22)
  {
    Is_Property_Settable = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, Is_Property_Settable))
    {
      v6 = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>>();
      v7 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v6);
      if (!v7)
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
          *buf = 136315394;
          *&buf[4] = "Operation.h";
          v35 = 1024;
          v36 = 154;
          _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v33);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v25, "Operation does not have requested function", v21);
        std::runtime_error::runtime_error(&v26, &v25);
        std::runtime_error::runtime_error(&v27, &v26);
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = -1;
        v27.__vftable = &unk_1F5992170;
        v28 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v27);
        v37 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <AMCP::Core::Is_Property_Settable_Function>]";
        v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v39 = 154;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
      }

      v8 = v7;
      if (!*(v7 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>>(), (v7 = (*(v8 + 7))(4, v8 + 24, 0, buf)) == 0))
      {
        v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v12 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
          v35 = 1024;
          v36 = 161;
          _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v33);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v25, "Invalid cast", v20);
        std::runtime_error::runtime_error(&v26, &v25);
        std::runtime_error::runtime_error(&v27, &v26);
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = -1;
        v27.__vftable = &unk_1F5992170;
        v28 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v27);
        v37 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <AMCP::Core::Is_Property_Settable_Function>]";
        v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
        v39 = 161;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
      }

      v9 = *(v7 + 3);
      if (!v9)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      LOBYTE(v3) = (*(*v9 + 48))(v9, buf);
    }

    else
    {
      v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
      LOBYTE(v3) = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v10) != 0;
    }
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (!v4)
  {
LABEL_14:
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

void sub_1DE2BC5CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
    std::runtime_error::~runtime_error(&a24);
    if (a23 < 0)
    {
      operator delete(a18);
    }

    if (v26)
    {
      __cxa_free_exception(v25);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Is_Property_Settable_Function)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 69);
}

unint64_t AMCP::Object::get_property_type_hint(AMCP::Object *this, const AMCP::Address *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (v3 && (v5 = std::__shared_weak_count::lock(v3)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      if (AMCP::Core::Core::has_property(v7, a2))
      {
        AMCP::Core::Core::find_operation(&v30, v7, a2);
        v8 = v30;
        if (v30 && (v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>(), std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9)))
        {
          Property_Type_Hint = AMCP::Implementation::get_type_marker<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>();
          v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, Property_Type_Hint);
          if (!v11)
          {
            v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v24 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
              *buf = 136315394;
              *&buf[4] = "Operation.h";
              *&buf[12] = 1024;
              *&buf[14] = 154;
              _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(&v33, "Operation does not have requested function", v29);
            std::runtime_error::runtime_error(&v34, &v33);
            std::runtime_error::runtime_error(&v35, &v34);
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = -1;
            v35.__vftable = &unk_1F5992170;
            v36 = &unk_1F5992198;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
            v43 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Property_Type_Hint, Argument_Types = <AMCP::Core::Get_Property_Type_Hint_Function>]";
            v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
            v45 = 154;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
          }

          v12 = v11;
          if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
          {
            v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v20 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
              *buf = 136315394;
              *&buf[4] = "Operation.h";
              *&buf[12] = 1024;
              *&buf[14] = 161;
              _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(&v33, "Invalid cast", v28);
            std::runtime_error::runtime_error(&v34, &v33);
            std::runtime_error::runtime_error(&v35, &v34);
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = -1;
            v35.__vftable = &unk_1F5992170;
            v36 = &unk_1F5992198;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v35);
            v43 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Property_Type_Hint, Argument_Types = <AMCP::Core::Get_Property_Type_Hint_Function>]";
            v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
            v45 = 161;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
          }

          v13 = *(v11 + 3);
          if (!v13)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          v14 = (*(*v13 + 48))(v13, buf);
          v15 = v14;
          v16 = v14 & 0xFFFFFFFF00000000;
        }

        else
        {
          AMCP::get_property_traits(buf, *a2);
          v15 = v44;
          if (*&buf[8])
          {
            operator delete(*&buf[8]);
          }

          v16 = 0;
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        v18 = v16 | v15;
      }

      else
      {
        v18 = 0;
      }

      v17 = v18 & 0xFFFFFFFF00000000;
      v7 = v18;
    }

    else
    {
      v17 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    v7 = 0;
    v17 = 0;
  }

  return v17 | v7;
}

void sub_1DE2BCC4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
    std::runtime_error::~runtime_error(&a24);
    if (a23 < 0)
    {
      operator delete(a18);
    }

    if (v26)
    {
      __cxa_free_exception(v25);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<AMCP::Property_Type_Hint ()(AMCP::Core::Get_Property_Type_Hint_Function)>>()
{
  v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
  {
    v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    if (v2)
    {
      v0 = HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall;
    }
  }

  return *(v0 + 34);
}

void AMCP::Object::get_property_value(AMCP::Object *this@<X0>, uint64_t a2@<X8>, const AMCP::Address *a3@<X1>)
{
  v5 = *(this + 3);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(this + 2);
    if (v9)
    {
      AMCP::Core::Core::get_property_value(a2, v9, a3);
    }

    else
    {
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

double AMCP::Core::Core::get_property_value(AMCP::Core::Core *this, const AMCP::Address *a2, const AMCP::Address *a3)
{
  if (!AMCP::Core::Core::has_property(a2, a3))
  {
    goto LABEL_9;
  }

  AMCP::Core::Core::find_operation(&v10, a2, a3);
  v7 = v10;
  if (v10 && (v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>(), std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8)))
  {
    AMCP::Core::Operation::call_function<AMCP::Thing>(this, v7);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v9)
  {
LABEL_9:
    *(this + 4) = 0;
    result = 0.0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  return result;
}

void AMCP::Object::get_property_value(AMCP::Object *this@<X0>, const AMCP::Address *a2@<X1>, const AMCP::Thing *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(this + 3);
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = *(this + 2);
      if (v10)
      {
        AMCP::Core::Core::get_property_value(a4, v10, a2, a3);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v11 = *(a3 + 4);
  if (v11)
  {
    v11(1, a3, a4, 0);
  }

  if (v9)
  {
    goto LABEL_9;
  }
}

void AMCP::Core::Core::get_property_value(AMCP::Core::Core *this, const AMCP::Address *a2, const AMCP::Thing *a3, uint64_t a4)
{
  if (!AMCP::Core::Core::has_property(a2, a3))
  {
    goto LABEL_9;
  }

  AMCP::Core::Core::find_operation(&v12, a2, a3);
  v8 = v12;
  if (v12 && (v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>(), std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9)))
  {
    AMCP::Core::Operation::call_function<AMCP::Thing>(this, v8);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v10)
  {
LABEL_9:
    *(this + 4) = 0;
    *this = 0u;
    *(this + 1) = 0u;
    v11 = *(a4 + 32);
    if (v11)
    {
      v11(1, a4, this, 0);
    }
  }
}

uint64_t AMCP::Object::set_property_value(AMCP::Object *this, const AMCP::Address *a2, const AMCP::Thing *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(this + 2);
  if (!v9 || !AMCP::Core::Core::is_property_settable(v9, a2))
  {
    goto LABEL_13;
  }

  AMCP::Core::Core::find_operation(&v15, v9, a2);
  v10 = v15;
  if (v15 && (v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>(), std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v10, v11)))
  {
    AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v10, a3);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if ((v12 & 1) == 0)
  {
    v13 = 1;
  }

  else
  {
LABEL_13:
    v13 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  return v13;
}

void sub_1DE2BD148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17)
{
  if (a2)
  {
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    v19 = __cxa_begin_catch(exception_object);
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v19);
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

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24.i32[0] = bswap32(*v17);
      v25 = vzip1_s8(v24, v24);
      v26.i64[0] = 0x1F0000001FLL;
      v26.i64[1] = 0x1F0000001FLL;
      v27.i64[0] = 0x5F0000005FLL;
      v27.i64[1] = 0x5F0000005FLL;
      v28 = vbsl_s8(vmovn_s32(vcgtq_u32(v27, vsraq_n_s32(v26, vshlq_n_s32(vmovl_u16(v25), 0x18uLL), 0x18uLL))), v25, 0x2E002E002E002ELL);
      a15 = 4;
      LODWORD(__p) = vuzp1_s8(v28, v28).u32[0];
      BYTE4(__p) = 0;
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "Core.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 311;
      WORD1(a17) = 2080;
      *(&a17 + 4) = &__p;
      _os_log_debug_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_DEBUG, "%32s:%-5d Caught exception trying to set property value %s", &buf, 0x1Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2BD100);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
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
    v32 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Thing &>]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v34 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
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
    v32 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Thing &>]";
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

void sub_1DE2BD734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

uint64_t AMCP::Object::set_property_value_and_wait(AMCP::Object *this, const AMCP::Address *a2, const AMCP::Thing *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(this + 2);
  if (!v9 || !AMCP::Core::Core::is_property_settable(v9, a2))
  {
    goto LABEL_13;
  }

  AMCP::Core::Core::find_operation(&v15, v9, a2);
  v10 = v15;
  if (v15 && (v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>(), std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v10, v11)))
  {
    AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v10, a3);
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if ((v12 & 1) == 0)
  {
    v13 = 1;
  }

  else
  {
LABEL_13:
    v13 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  return v13;
}

void sub_1DE2BD8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, __int128 buf, __int128 a17)
{
  if (a2)
  {
    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }

    v19 = __cxa_begin_catch(exception_object);
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v19);
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

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24.i32[0] = bswap32(*v17);
      v25 = vzip1_s8(v24, v24);
      v26.i64[0] = 0x1F0000001FLL;
      v26.i64[1] = 0x1F0000001FLL;
      v27.i64[0] = 0x5F0000005FLL;
      v27.i64[1] = 0x5F0000005FLL;
      v28 = vbsl_s8(vmovn_s32(vcgtq_u32(v27, vsraq_n_s32(v26, vshlq_n_s32(vmovl_u16(v25), 0x18uLL), 0x18uLL))), v25, 0x2E002E002E002ELL);
      a15 = 4;
      LODWORD(__p) = vuzp1_s8(v28, v28).u32[0];
      BYTE4(__p) = 0;
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "Core.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 332;
      WORD1(a17) = 2080;
      *(&a17 + 4) = &__p;
      _os_log_debug_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_DEBUG, "%32s:%-5d Caught exception trying to set property value %s", &buf, 0x1Cu);
      if (a15 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE2BD898);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Object::get_property_value_with_qualifier(AMCP::Object *this@<X0>, const AMCP::Address *a2@<X1>, const AMCP::Thing *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(this + 3);
  if (v6 && (v9 = std::__shared_weak_count::lock(v6)) != 0)
  {
    v10 = v9;
    v11 = *(this + 2);
    if (v11)
    {
      AMCP::Core::Core::call_operation_function<AMCP::Thing,AMCP::Thing const&>(a4, v11, a2, a3);
    }

    else
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  else
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }
}

void AMCP::Core::Core::call_operation_function<AMCP::Thing,AMCP::Thing const&>(AMCP::Log::AMCP_Scope_Registry *a1, int8x8_t *a2, unsigned int *a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a3 == 707406378 || a3[1] == 707406378 || a3[2] == -1)
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
      *&buf[4] = "Core.h";
      v45 = 1024;
      v46 = 198;
      v47 = 2080;
      v48 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v32, a2, a3);
  v8 = v32;
  if (!v32)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v45 = 1024;
      v46 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Operation does not have requested function", v30);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = AMCP::Thing, Argument_Types = <const AMCP::Thing &>]";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v51 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(AMCP::Thing const&)>>();
  v10 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9);
  if (!v10)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v45 = 1024;
      v46 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Operation does not have requested function", v31);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Thing, Argument_Types = <const AMCP::Thing &>]";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v51 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v11 = v10;
  if (!*(v10 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(AMCP::Thing const&)>>(), (v10 = (*(v11 + 7))(4, v11 + 24, 0, buf)) == 0))
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v45 = 1024;
      v46 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "Invalid cast", v29);
    std::runtime_error::runtime_error(&v36, &v35);
    std::runtime_error::runtime_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5992170;
    v38 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v37);
    v49 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Thing, Argument_Types = <const AMCP::Thing &>]";
    v50 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v51 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v12 = *(v10 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v12 + 48))(v12, a4);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }
}

void sub_1DE2BE24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

__objc2_prop_list *AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(AMCP::Thing const&)>>()
{
  v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
  {
    v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    if (v2)
    {
      v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    }
  }

  return v0[3].inst_props;
}

void AMCP::Object::get_property_value_with_qualifier(AMCP::Object *this@<X0>, const AMCP::Address *a2@<X1>, const AMCP::Thing *a3@<X2>, const AMCP::Thing *a4@<X3>, uint64_t a5@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = *(this + 3);
  if (v8)
  {
    v11 = std::__shared_weak_count::lock(v8);
    v12 = v11;
    if (v11)
    {
      v13 = *(this + 2);
      if (v13)
      {
        if (*a2 == 707406378 || *(a2 + 1) == 707406378 || *(a2 + 2) == -1)
        {
          v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v18 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
            *v22 = 136315650;
            *&v22[4] = "Core.h";
            *&v22[12] = 1024;
            *&v22[14] = 186;
            v23 = 2080;
            v24 = "!in_address.has_wildcards()";
            _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", v22, 0x1Cu);
          }

          abort();
        }

        AMCP::Core::Core::find_operation(v22, v13, a2);
        v14 = *v22;
        if (*v22)
        {
          v15 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(AMCP::Thing const&)>>();
          LOBYTE(v14) = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v14, v15) != 0;
        }

        if (*&v22[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v22[8]);
        }

        if (v14)
        {
          AMCP::Core::Core::call_operation_function<AMCP::Thing,AMCP::Thing const&>(a5, v13, a2, a3);
        }

        else
        {
          *(a5 + 32) = 0;
          *a5 = 0u;
          *(a5 + 16) = 0u;
          v17 = *(a4 + 4);
          if (v17)
          {
            v17(1, a4, a5, 0);
          }
        }

LABEL_17:

        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        return;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  *(a5 + 32) = 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v16 = *(a4 + 4);
  if (v16)
  {
    v16(1, a4, a5, 0);
  }

  if (v12)
  {
    goto LABEL_17;
  }
}

void sub_1DE2BE600(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Object::set_property_value_with_qualifier(AMCP::Object *this, const AMCP::Address *a2, const AMCP::Thing *a3, const AMCP::Thing *a4)
{
  v5 = *(this + 3);
  if (!v5)
  {
    return 0;
  }

  v9 = std::__shared_weak_count::lock(v5);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *(this + 2);
  if (v11)
  {
    AMCP::Core::Core::call_operation_function<void,AMCP::Thing const&,AMCP::Thing const&>(v11, a2, a3, a4);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  return v12;
}

void AMCP::Core::Core::call_operation_function<void,AMCP::Thing const&,AMCP::Thing const&>(AMCP::Address *a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || a2[1] == 707406378 || a2[2] == -1)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *&buf[4] = "Core.h";
      v46 = 1024;
      v47 = 198;
      v48 = 2080;
      v49 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

    abort();
  }

  operation = AMCP::Core::Core::find_operation(&v33, a1, a2);
  v9 = v33;
  if (!v33)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
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
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v46 = 1024;
      v47 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v36, "Operation does not have requested function", v31);
    std::runtime_error::runtime_error(&v37, &v36);
    std::runtime_error::runtime_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5992170;
    v39 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
    v50 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Thing &, const AMCP::Thing &>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v52 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&,AMCP::Thing const&)>>();
  v11 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10);
  if (!v11)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v46 = 1024;
      v47 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v36, "Operation does not have requested function", v32);
    std::runtime_error::runtime_error(&v37, &v36);
    std::runtime_error::runtime_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5992170;
    v39 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Thing &, const AMCP::Thing &>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v12 = v11;
  if (!*(v11 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&,AMCP::Thing const&)>>(), (v11 = (*(v12 + 7))(4, v12 + 24, 0, buf)) == 0))
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v46 = 1024;
      v47 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v44);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v36, "Invalid cast", v30);
    std::runtime_error::runtime_error(&v37, &v36);
    std::runtime_error::runtime_error(&v38, &v37);
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v38.__vftable = &unk_1F5992170;
    v39 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v38);
    v50 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const AMCP::Thing &, const AMCP::Thing &>]";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v52 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
  }

  v13 = *(v11 + 3);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v13 + 48))(v13, a3, a4);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

void sub_1DE2BEE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, std::runtime_error a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a25);
  std::runtime_error::~runtime_error(&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void *AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&,AMCP::Thing const&)>>()
{
  v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
  {
    v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    if (v2)
    {
      v0 = &OBJC_PROTOCOL___HAL_DSP_HostCallbacks;
    }
  }

  return v0[4].isa;
}

uint64_t AMCP::Object::set_property_value_with_qualifier_and_wait(AMCP::Object *this, const AMCP::Address *a2, const AMCP::Thing *a3, const AMCP::Thing *a4)
{
  v5 = *(this + 3);
  if (!v5)
  {
    return 0;
  }

  v9 = std::__shared_weak_count::lock(v5);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *(this + 2);
  if (v11)
  {
    AMCP::Core::Core::call_operation_function<void,AMCP::Thing const&,AMCP::Thing const&>(v11, a2, a3, a4);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  return v12;
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Object::get_stock_class_id(AMCP::Object *this)
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
    simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Object::get_class_id(AMCP::Object *this)
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
    simple_required = AMCP::Core::Core::get_simple_required_property<1668047219u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Core::Core::get_simple_required_property<1668047219u>(AMCP::Core::Core *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  strcpy(buf, "salcbolg");
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
      strcpy(__p, "clas");
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

void sub_1DE2BF218(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Object::get_owner(AMCP::Object *this)
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
    simple_required = AMCP::Core::Core::get_simple_required_property<1870098034u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Core::Core::get_simple_required_property<1870098034u>(AMCP::Core::Core *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  strcpy(buf, "rnwobolg");
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
      strcpy(__p, "ownr");
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

void sub_1DE2BF3F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Object::get_creator(AMCP::Object *this@<X0>, void *a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (!v7)
    {
      goto LABEL_8;
    }

    strcpy(buf, "glpobolg");
    buf[9] = 0;
    *&buf[10] = 0;
    AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&cf, v7, buf);
    if ((v17 & 1) == 0)
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
        strcpy(__p, "oplg");
        *buf = 136316418;
        *&buf[4] = "Core.h";
        v19 = 1024;
        v20 = 391;
        v21 = 2080;
        v22 = "optional_value.operator BOOL() == true";
        v23 = 2080;
        v24 = __p;
        v25 = 1024;
        v26 = 1735159650;
        v27 = 1024;
        v28 = 0;
        _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }
      }

      abort();
    }

    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
      *a2 = v9;
      CFRelease(v9);
    }

    else
    {
LABEL_8:
      *a2 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_1DE2BF60C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::Object::get_owned_object_list(AMCP::Object *this@<X0>, uint64_t *a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#nwobolg");
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
          strcpy(__p, "own#");
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

void sub_1DE2BF848(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Object::get_name(AMCP::Object *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626C6E616DLL;
      v9 = 0;
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a2, v7, &v8);
    }

    else
    {
      *a2 = 0;
      a2[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }
}

void AMCP::Object::get_name(AMCP::Object *this@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 3);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 2);
      if (v8)
      {
        v10 = 0x676C6F626C6E616DLL;
        v11 = 0;
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a3, v8, &v10, a2);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *a3 = v9;
  if (v7)
  {
    goto LABEL_9;
  }
}

void AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(void *a1, AMCP::Core::Core *this, AMCP::Address *a3, const void **a4)
{
  if (!AMCP::Core::Core::has_property(this, a3))
  {
LABEL_13:
    v12 = *a4;
    if (v12)
    {
      CFRetain(v12);
    }

    *a1 = v12;
    return;
  }

  AMCP::Core::Core::find_operation(&v15, this, a3);
  v8 = v15;
  if (v15)
  {
    v9 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::StringRef ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
    {
      AMCP::Core::Operation::call_function<applesauce::CF::StringRef>(a1, v8);
LABEL_5:
      v10 = 0;
      goto LABEL_10;
    }

    v11 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v13, v8);
      AMCP::Thing::convert_to<applesauce::CF::StringRef>(a1, v13);
      if (v14)
      {
        v14(0, v13, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v10 = 1;
LABEL_10:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v10)
  {
    goto LABEL_13;
  }
}

void AMCP::Object::get_model_name(AMCP::Object *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626C6D6F64;
      v9 = 0;
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a2, v7, &v8);
    }

    else
    {
      *a2 = 0;
      a2[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }
}

void AMCP::Object::get_model_name(AMCP::Object *this@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 3);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 2);
      if (v8)
      {
        v10 = 0x676C6F626C6D6F64;
        v11 = 0;
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a3, v8, &v10, a2);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *a3 = v9;
  if (v7)
  {
    goto LABEL_9;
  }
}

void AMCP::Object::get_manufacturer_name(AMCP::Object *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626C6D616BLL;
      v9 = 0;
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a2, v7, &v8);
    }

    else
    {
      *a2 = 0;
      a2[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }
}

void AMCP::Object::get_manufacturer_name(AMCP::Object *this@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 3);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 2);
      if (v8)
      {
        v10 = 0x676C6F626C6D616BLL;
        v11 = 0;
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a3, v8, &v10, a2);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *a3 = v9;
  if (v7)
  {
    goto LABEL_9;
  }
}

void AMCP::Object::get_icon(AMCP::Object *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F6269636F6ELL;
      v9 = 0;
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::URLRef,std::enable_if<true,void>>(a2, v7, &v8);
    }

    else
    {
      *a2 = 0;
      a2[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }
}

void AMCP::Core::Core::get_typed_property_value<applesauce::CF::URLRef,std::enable_if<true,void>>(_BYTE *a1, AMCP::Core::Core *this, AMCP::Address *a3)
{
  if (!AMCP::Core::Core::has_property(this, a3))
  {
LABEL_13:
    *a1 = 0;
    a1[8] = 0;
    return;
  }

  AMCP::Core::Core::find_operation(&v13, this, a3);
  v6 = v13;
  if (!v13)
  {
    goto LABEL_9;
  }

  v7 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::URLRef ()(void)>>();
  if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7))
  {
    AMCP::Core::Operation::call_function<applesauce::CF::URLRef>(v11, v6);
    v8 = 0;
    *a1 = v11[0];
    a1[8] = 1;
    goto LABEL_10;
  }

  v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v9))
  {
    AMCP::Core::Operation::call_function<AMCP::Thing>(v11, v6);
    AMCP::Thing::convert_to<applesauce::CF::URLRef>(&v10, v11);
    *a1 = v10;
    a1[8] = 1;
    if (v12)
    {
      v12(0, v11, 0, 0);
    }

    v8 = 0;
  }

  else
  {
LABEL_9:
    v8 = 1;
  }

LABEL_10:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v8)
  {
    goto LABEL_13;
  }
}

uint64_t AMCP::Core::Operation::call_function<applesauce::CF::URLRef>(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::URLRef ()(void)>>();
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
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = applesauce::CF::URLRef, Argument_Types = <>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::URLRef ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
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
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = applesauce::CF::URLRef, Argument_Types = <>]";
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

void sub_1DE2C03F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
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

CFTypeRef *AMCP::Thing::convert_to<applesauce::CF::URLRef>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_16;
  }

  v4 = AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>();
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
      v7 = *result;
      if (*result)
      {
        result = CFRetain(*result);
      }

      *a1 = v7;
      return result;
    }

LABEL_16:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>();
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

  v8 = *result;
  if (*result)
  {
    result = CFRetain(*result);
  }

  *a1 = v8;
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE2C0650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<applesauce::CF::URLRef>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[359];
}

uint64_t AMCP::Implementation::get_type_marker<std::function<applesauce::CF::URLRef ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[124];
}

void AMCP::Object::get_icon(AMCP::Object *this@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 3);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 2);
      if (v8)
      {
        v10 = 0x676C6F6269636F6ELL;
        v11 = 0;
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::URLRef,std::enable_if<true,void>>(a3, v8, &v10, a2);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *a3 = v9;
  if (v7)
  {
    goto LABEL_9;
  }
}

void AMCP::Core::Core::get_typed_property_value<applesauce::CF::URLRef,std::enable_if<true,void>>(void *a1, AMCP::Core::Core *this, AMCP::Address *a3, const void **a4)
{
  if (!AMCP::Core::Core::has_property(this, a3))
  {
LABEL_13:
    v12 = *a4;
    if (v12)
    {
      CFRetain(v12);
    }

    *a1 = v12;
    return;
  }

  AMCP::Core::Core::find_operation(&v15, this, a3);
  v8 = v15;
  if (v15)
  {
    v9 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::URLRef ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
    {
      AMCP::Core::Operation::call_function<applesauce::CF::URLRef>(a1, v8);
LABEL_5:
      v10 = 0;
      goto LABEL_10;
    }

    v11 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v13, v8);
      AMCP::Thing::convert_to<applesauce::CF::URLRef>(a1, v13);
      if (v14)
      {
        v14(0, v13, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v10 = 1;
LABEL_10:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v10)
  {
    goto LABEL_13;
  }
}

void AMCP::Object::get_configuration_app(AMCP::Object *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F6263617070;
      v9 = 0;
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a2, v7, &v8);
    }

    else
    {
      *a2 = 0;
      a2[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }
}

void AMCP::Object::get_configuration_app(AMCP::Object *this@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 3);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 2);
      if (v8)
      {
        v10 = 0x676C6F6263617070;
        v11 = 0;
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a3, v8, &v10, a2);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *a3 = v9;
  if (v7)
  {
    goto LABEL_9;
  }
}

void AMCP::Object::get_serial_number(AMCP::Object *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F62736E756DLL;
      v9 = 0;
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a2, v7, &v8);
    }

    else
    {
      *a2 = 0;
      a2[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }
}

void AMCP::Object::get_serial_number(AMCP::Object *this@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 3);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 2);
      if (v8)
      {
        v10 = 0x676C6F62736E756DLL;
        v11 = 0;
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a3, v8, &v10, a2);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *a3 = v9;
  if (v7)
  {
    goto LABEL_9;
  }
}

void AMCP::Object::get_firmware_version(AMCP::Object *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F626677766ELL;
      v9 = 0;
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a2, v7, &v8);
    }

    else
    {
      *a2 = 0;
      a2[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }
}

void AMCP::Object::get_firmware_version(AMCP::Object *this@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 3);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 2);
      if (v8)
      {
        v10 = 0x676C6F626677766ELL;
        v11 = 0;
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a3, v8, &v10, a2);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *a3 = v9;
  if (v7)
  {
    goto LABEL_9;
  }
}

void AMCP::Object::get_element_name(AMCP::Object *this@<X0>, const AMCP::Address *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(this + 3);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(this + 2);
    if (v9)
    {
      v10 = 1818454126;
      v11 = *(a2 + 4);
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a3, v9, &v10);
    }

    else
    {
      *a3 = 0;
      a3[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a3 = 0;
    a3[8] = 0;
  }
}

void AMCP::Object::get_element_name(AMCP::Object *this@<X0>, const AMCP::Address *a2@<X1>, const void **a3@<X2>, void *a4@<X8>)
{
  v7 = *(this + 3);
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = *(this + 2);
      if (v10)
      {
        v12 = 1818454126;
        v13 = *(a2 + 4);
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a4, v10, &v12, a3);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *a3;
  if (v11)
  {
    CFRetain(v11);
  }

  *a4 = v11;
  if (v9)
  {
    goto LABEL_9;
  }
}

void AMCP::Object::get_element_category_name(AMCP::Object *this@<X0>, const AMCP::Address *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(this + 3);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(this + 2);
    if (v9)
    {
      v10 = 1818452846;
      v11 = *(a2 + 4);
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a3, v9, &v10);
    }

    else
    {
      *a3 = 0;
      a3[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a3 = 0;
    a3[8] = 0;
  }
}

void AMCP::Object::get_element_category_name(AMCP::Object *this@<X0>, const AMCP::Address *a2@<X1>, const void **a3@<X2>, void *a4@<X8>)
{
  v7 = *(this + 3);
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = *(this + 2);
      if (v10)
      {
        v12 = 1818452846;
        v13 = *(a2 + 4);
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a4, v10, &v12, a3);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *a3;
  if (v11)
  {
    CFRetain(v11);
  }

  *a4 = v11;
  if (v9)
  {
    goto LABEL_9;
  }
}

void AMCP::Object::get_element_number_name(AMCP::Object *this@<X0>, const AMCP::Address *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(this + 3);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(this + 2);
    if (v9)
    {
      v10 = 1818455662;
      v11 = *(a2 + 4);
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a3, v9, &v10);
    }

    else
    {
      *a3 = 0;
      a3[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a3 = 0;
    a3[8] = 0;
  }
}

void AMCP::Object::get_element_number_name(AMCP::Object *this@<X0>, const AMCP::Address *a2@<X1>, const void **a3@<X2>, void *a4@<X8>)
{
  v7 = *(this + 3);
  if (v7)
  {
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      v10 = *(this + 2);
      if (v10)
      {
        v12 = 1818455662;
        v13 = *(a2 + 4);
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(a4, v10, &v12, a3);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *a3;
  if (v11)
  {
    CFRetain(v11);
  }

  *a4 = v11;
  if (v9)
  {
    goto LABEL_9;
  }
}

void AMCP::Object::get_resource_bundle_url(AMCP::Object *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      v8 = 0x676C6F6272737263;
      v9 = 0;
      AMCP::Core::Core::get_typed_property_value<applesauce::CF::URLRef,std::enable_if<true,void>>(a2, v7, &v8);
    }

    else
    {
      *a2 = 0;
      a2[8] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }
}

void AMCP::Object::get_resource_bundle_url(AMCP::Object *this@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 3);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 2);
      if (v8)
      {
        v10 = 0x676C6F6272737263;
        v11 = 0;
        AMCP::Core::Core::get_typed_property_value<applesauce::CF::URLRef,std::enable_if<true,void>>(a3, v8, &v10, a2);
LABEL_9:

        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = *a2;
  if (v9)
  {
    CFRetain(v9);
  }

  *a3 = v9;
  if (v7)
  {
    goto LABEL_9;
  }
}

void AMCP::Object::get_localized_string(AMCP::Object *this@<X0>, CFStringRef *a2@<X1>, CFTypeRef *a3@<X2>, CFStringRef *a4@<X3>, CFStringRef *a5@<X4>, const __CFString **a6@<X8>)
{
  v11 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
    cf = v11;
  }

  else
  {
    v11 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    cf = v11;
    if (!v11)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  AMCP::Object::get_resource_bundle_url(this, &bundleURL);
  if (v23 != 1)
  {
    *a6 = v11;
    return;
  }

  v12 = CFBundleCreate(0, bundleURL);
  mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::BundleRef_Traits>::BasicRef(&bundle, v12);
  *a6 = 0;
  v26 = 0;
  if (!bundle)
  {
    goto LABEL_23;
  }

  if (*a2)
  {
    v13 = CFBundleCopyLocalizedString(bundle, *a2, 0, *a5);
    v14 = v13;
    v25 = v13;
    if (v13)
    {
      v15 = CFGetTypeID(v13);
      if (v15 != CFStringGetTypeID())
      {
        v19 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v19, "Could not construct");
        __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }
    }

    v26 = v14;
    if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v14, a2))
    {
      *a6 = v14;
      if (v14)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v26 = 0;
      if (v14)
      {
        CFRelease(v14);
      }
    }
  }

  if (!*a4)
  {
    goto LABEL_23;
  }

  v16 = CFBundleCopyLocalizedString(bundle, *a4, 0, *a5);
  v14 = v16;
  v25 = v16;
  if (v16)
  {
    v17 = CFGetTypeID(v16);
    if (v17 != CFStringGetTypeID())
    {
      v20 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v20, "Could not construct");
      __cxa_throw(v20, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  v26 = v14;
  if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v14, a4) == kCFCompareEqualTo)
  {
    v26 = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_23;
  }

  *a6 = v14;
  if (!v14)
  {
LABEL_23:
    *a6 = v11;
    CFRetain(v11);
    goto LABEL_24;
  }

LABEL_20:
  CFRetain(v14);
  CFRelease(v14);
LABEL_24:
  if (bundle)
  {
    CFRelease(bundle);
  }

  if ((v23 & 1) != 0 && bundleURL)
  {
    CFRelease(bundleURL);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1DE2C15FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, const void *a15)
{
  __cxa_free_exception(v16);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a14);
  applesauce::CF::StringRef::~StringRef(&a15);
  applesauce::CF::StringRef::~StringRef(v15);
  __clang_call_terminate(a1);
}

void *mcp_applesauce::CF::BasicRef<mcp_applesauce::CF::BundleRef_Traits>::BasicRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFBundleGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  return a1;
}

void sub_1DE2C171C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFBundle *>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

const void **applesauce::CF::ObjectRef<__CFBundle *>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t AMCP::Object::constructed_correct_class(AMCP::Object *this, AMCP *a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return 1;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = *(this + 2);
  if (v7)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(v7);
    is_base_of = AMCP::is_base_of(a2, simple_required);
  }

  else
  {
    is_base_of = 1;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return is_base_of;
}

void AMCP::Object::get_control_list(AMCP::Object *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *(this + 3);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(this + 2);
    if (v9)
    {
      memset(v10, 0, sizeof(v10));
      v11[0] = 1668575852;
      v11[1] = a2;
      v11[2] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(a3, v9, v11, v10);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(uint64_t *a1, AMCP::Core::Core *this, AMCP::Address *a3, uint64_t a4)
{
  if (!AMCP::Core::Core::has_property(this, a3))
  {
LABEL_13:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
    return;
  }

  AMCP::Core::Core::find_operation(&v14, this, a3);
  v8 = v14;
  if (v14)
  {
    v9 = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
    {
      AMCP::Core::Operation::call_function<std::vector<unsigned int>>(a1, v8);
LABEL_5:
      v10 = 0;
      goto LABEL_10;
    }

    v11 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v12, v8);
      AMCP::Thing::convert_to<std::vector<unsigned int>>(a1, v12);
      if (v13)
      {
        v13(0, v12, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v10 = 1;
LABEL_10:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (v10)
  {
    goto LABEL_13;
  }
}

uint64_t AMCP::Object::get_control(AMCP::System_Context **this, int a2, int a3, int a4)
{
  AMCP::Object::get_control_list(this, a3, &__p);
  v8 = __p;
  v9 = v21;
  if (__p == v21)
  {
    v10 = 0;
    if (!__p)
    {
      return v10;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v10 = *v8;
    AMCP::Control::Control(v18, this[4], *v8);
    class_id = AMCP::Object::get_class_id(v18);
    scope = AMCP::Control::get_scope(v18);
    element = AMCP::Control::get_element(v18);
    v14 = class_id == a2 && scope == a3;
    v15 = v14 && element == a4;
    v16 = !v15;
    v18[0] = &unk_1F5964268;
    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    if (!v16)
    {
      break;
    }

    if (++v8 == v9)
    {
      v10 = 0;
      break;
    }
  }

  v8 = __p;
  if (__p)
  {
LABEL_17:
    v21 = v8;
    operator delete(v8);
  }

  return v10;
}

uint64_t HALS_ReferenceStreamControlPropertyHandler::GetReferenceStreamControlValue(void *a1)
{
  v2 = *(a1[1] + 60);
  if (v2)
  {
    if (v2 != 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = "HALS_ReferenceStreamControlPropertyHandler::GetReferenceStreamControlValue: unknown control type";
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    v3 = *(*a1 + 56);
  }

  else
  {
    v3 = *(*a1 + 48);
  }

  return v3();
}

void HALS_ReferenceStreamControlPropertyHandler::SetSoftwareReferenceStreamControlValue(HALS_ReferenceStreamControlPropertyHandler *this, HALS_Client *a2, char a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = HALS_ObjectMap::CopyObjectByObjectID(*(*(this + 1) + 56));
  v7 = v6;
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_ReferenceStreamControlPropertyHandler.cpp";
      v13 = 1024;
      v14 = 120;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_ReferenceStreamControlPropertyHandler::SetSoftwareReferenceStreamControlValue: owning device is missing", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  *(this + 16) = a3;
  if (a2)
  {
    v8 = *(a2 + 4);
  }

  else
  {
    v8 = 0;
  }

  (*(*v6 + 976))(v6, 1, v8);
  HALS_ObjectMap::ReleaseObject(v7, v9);
}

void sub_1DE2C1D20(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void HALS_ReferenceStreamControlPropertyHandler::SetHardwareReferenceStreamControlValue(HALS_ReferenceStreamControlPropertyHandler *this, HALS_Client *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = HALS_ObjectMap::CopyObjectByObjectID(*(*(this + 1) + 56));
  if (!v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "HALS_ReferenceStreamControlPropertyHandler.cpp";
      v11 = 1024;
      v12 = 107;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_ReferenceStreamControlPropertyHandler::SetHardwareReferenceStreamControlValue: owning device is missing", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  (*(**(this + 1) + 224))(*(this + 1), a2, a3);
  (*(*v6 + 984))(v6, a2, *(*(this + 1) + 16));
  HALS_ObjectMap::ReleaseObject(v6, v7);
}

void sub_1DE2C1EEC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t HALS_ReferenceStreamControlPropertyHandler::SetReferenceStreamControlValue(void *a1)
{
  v2 = *(a1[1] + 60);
  if (v2)
  {
    if (v2 != 1)
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = "HALS_ReferenceStreamControlPropertyHandler::SetReferenceStreamControlValue: unknown control type";
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    v3 = *(*a1 + 32);
  }

  else
  {
    v3 = *(*a1 + 24);
  }

  return v3();
}

void HALS_ReferenceStreamControlPropertyHandler::SetReferenceStreamControlPropertyData(HALS_ReferenceStreamControlPropertyHandler *this, HALS_Client *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 15) >= 2u)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "HALS_ReferenceStreamControlPropertyHandler::SetReferenceStreamControlPropertyData: unknown control type";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v4 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 14));
  if (!v4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "HALS_ReferenceStreamControlPropertyHandler.cpp";
      v21 = 1024;
      v22 = 44;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_ReferenceStreamControlPropertyHandler::SetReferenceStreamControlPropertyData: owning device is missing", buf, 0x12u);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    *v17 = off_1F5991DD8;
    v17[2] = 560947818;
  }

  if (a2)
  {
    v5 = *(a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  *buf = 0x696E70746F757470;
  do
  {
    v7 = (*(*v4 + 648))(v4, 1702259059, *&buf[v6], 0);
    v8 = v7;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == 4;
    }

    v6 += 4;
  }

  while (!v9);
  v18[0] = v7;
  v10 = HALS_ObjectMap::CopyObjectByObjectID(v5);
  v12 = v10;
  if (v8)
  {
    HALS_ObjectMap::RetainObject(v10, v11);
    v19[0] = &unk_1F598E620;
    v19[1] = v18;
    v19[3] = v19;
    HALS_ObjectMap::RetainObject(v12, v13);
    v18[12] = 0;
    operator new();
  }

  HALS_ObjectMap::ReleaseObject(v10, v11);
  HALS_ObjectMap::ReleaseObject(v18[0], v14);
  HALS_ObjectMap::ReleaseObject(v4, v15);
}

void sub_1DE2C23E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HALS_ObjectMap *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a11);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v25 - 112);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&a16);
  HALS_ObjectMap::ReleaseObject(v24, v27);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a19);
  HALS_ObjectMap::ReleaseObject(0, v28);
  std::__function::__value_func<void ()(HALS_Client *,BOOL)>::~__value_func[abi:ne200100](va);
  HALS_ObjectMap::ReleaseObject(v23, v29);
  HALS_ObjectMap::ReleaseObject(v23, v30);
  HALS_ObjectMap::ReleaseObject(a10, v31);
  HALS_ObjectMap::ReleaseObject(v22, v32);
  _Unwind_Resume(a1);
}

BOOL HALS_ReferenceStreamControlPropertyHandler::GetReferenceStreamControlPropertyData(HALS_ReferenceStreamControlPropertyHandler *this, const HALS_Client *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(this + 15) >= 2u)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = "HALS_ReferenceStreamControlPropertyHandler::GetReferenceStreamControlPropertyData: unknown control type";
    __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
  }

  v3 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 14));
  v4 = v3;
  if (!v3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_ReferenceStreamControlPropertyHandler.cpp";
      v13 = 1024;
      v14 = 69;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_ReferenceStreamControlPropertyHandler::GetReferenceStreamControlPropertyData: owning device is missing", &v11, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    *v10 = off_1F5991DD8;
    v10[2] = 560947818;
  }

  if (a2)
  {
    v5 = *(a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  ReferenceStreamStateForClient = HALS_ReferenceStreamStateManager::GetReferenceStreamStateForClient(*(v3 + 448), v5);
  HALS_ObjectMap::ReleaseObject(v4, v7);
  return ReferenceStreamStateForClient;
}

void sub_1DE2C2658(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void IOProcessorHookForDSP::Process(IOProcessorHookForDSP *this, __n128 a2, const unsigned __int8 *a3, unsigned __int8 *a4, int a5)
{
  if (*(this + 24) == 1)
  {
    v9 = *(this + 7);
    if (v9)
    {
      v10 = *(this + 21);
      v11 = *v10;
      if (v11 != (*(this + 22) - v10 - 8) >> 4)
      {
LABEL_31:
        CAAssertRtn();
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (!v11)
      {
        goto LABEL_33;
      }

      *(v10 + 2) = a4;
      v12 = *(this + 32) * a5;
      v10[2] = *(this + 33);
      v10[3] = v12;
      v13 = *(this + 1);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(this + 18);
      v17 = v15 - v14;
      if (v15 != v14)
      {
        v18 = *v16;
        if (v18 == (*(this + 19) - v16 - 8) >> 4)
        {
          v19 = 0;
          v20 = v17 >> 7;
          if ((v17 >> 7) <= 1)
          {
            v20 = 1;
          }

          v21 = v16 + 4;
          v22 = v18 << 7;
          while (v22 != v19)
          {
            if (v14 + v19 == *(this + 2))
            {
              *v21 = a3;
              *(v21 - 1) = *(this + 22) * a5;
              v26 = (this + 92);
            }

            else
            {
              v23 = v14 + v19;
              v24 = *(v14 + v19 + 104);
              v25 = *(v14 + v19 + 48);
              if (v24)
              {
                *v21 = *(v23 + 32) + v25;
                *(v21 - 1) = *(v24 + 48) * a5;
                v26 = (v24 + 52);
              }

              else
              {
                *v21 = *(v23 + 16) + v25;
                *(v21 - 1) = *(v23 + 80) * a5;
                v26 = (v23 + 84);
              }
            }

            *(v21 - 2) = *v26;
            v21 += 2;
            v19 += 128;
            if (!--v20)
            {
              goto LABEL_17;
            }
          }

LABEL_33:
          exception = __cxa_allocate_exception(0x10uLL);
          std::out_of_range::out_of_range[abi:ne200100](exception, "accessing a CA::BufferList with an out-of-range index");
          __cxa_throw(exception, off_1E8672F68, MEMORY[0x1E69E5280]);
        }

        goto LABEL_31;
      }

LABEL_17:
      v35 = v10;
      v36 = v16;
      v34 = a5;
      (*(*v9 + 48))(v9, &v36, &v35, &v34, a2);
    }

    else
    {
      v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_32;
      }

      v29 = *(v27 + 8);
      v30 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v30 + 16) = 0;
      *(v30 + 20) = 2;
      *(v30 + 24) = "HALS_IODSPInfo.cpp";
      *(v30 + 32) = 286;
      *(v30 + 40) = this;
      *v30 = &unk_1F5964410;
      *(v30 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v29, v30);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v31 = (*(this + 22) * a5 * *(this + 23));
      v32 = (*(this + 32) * a5 * *(this + 33));
      if (v31 == v32)
      {

        memcpy(a4, a3, v31);
      }

      else
      {

        bzero(a4, v32);
      }
    }
  }
}

uint64_t caulk::concurrent::details::rt_message_call<IOProcessorHookForDSP::Process(double,unsigned char const*,unsigned char *,unsigned int)::$_0,std::tuple<char const*,int,IOProcessorHookForDSP*>>::perform(uint64_t a1)
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
    v8 = *(a1 + 40);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2048;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [hal_dsp] %p Fallback processing from custom IOProcessor hook without a DSP callback, may copy or silence output.", &v10, 0x1Cu);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<IOProcessorHookForDSP::Process(double,unsigned char const*,unsigned char *,unsigned int)::$_0,std::tuple<char const*,int,IOProcessorHookForDSP*>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t IOProcessorHookForDSP::Init(IOProcessorHookForDSP *this, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v5 = *&a2->mSampleRate;
  v6 = *&a2->mBytesPerPacket;
  *(this + 12) = *&a2->mBitsPerChannel;
  *(this + 4) = v5;
  *(this + 5) = v6;
  v7 = *&a3->mBitsPerChannel;
  v8 = *&a3->mBytesPerPacket;
  *(this + 104) = *&a3->mSampleRate;
  *(this + 17) = v7;
  *(this + 120) = v8;
  *&v8 = *(this + 8);
  *&v6 = *(this + 13);
  *(this + 24) = *&v8 == *&v6;
  if (*&v8 == *&v6)
  {
    v23 = v3;
    v24 = v4;
    v10 = *(*(this + 1) + 8) - **(this + 1);
    v11 = v10 >> 7;
    v12 = (v10 >> 3) & 0xFFFFFFFF0 | 8;
    __x = 0;
    v13 = *(this + 18);
    v14 = (this + 144);
    v15 = *(this + 19) - v13;
    if (v12 <= v15)
    {
      if (v12 < v15)
      {
        *(this + 19) = v13 + v12;
      }
    }

    else
    {
      std::vector<char>::__append(this + 6, v12 - v15, &__x);
      v13 = *v14;
    }

    *v13 = v11;
    v17 = *(this + 21);
    v18 = *(this + 22);
    v22 = 0;
    v19 = v18 - v17;
    if (v19 > 0x17)
    {
      if (v19 != 24)
      {
        *(this + 22) = v17 + 6;
      }
    }

    else
    {
      std::vector<char>::__append(this + 7, 24 - v19, &v22);
      v17 = *(this + 21);
    }

    *v17 = 1;
    v16 = *(this + 24);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void std::vector<char>::__append(std::vector<char> *this, std::vector<char>::size_type __n, std::vector<char>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (value - end >= __n)
  {
    if (__n)
    {
      memset(this->__end_, *__x, __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v8 = (end - this->__begin_);
    v9 = &v8[__n];
    if (&v8[__n] < 0)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = end - this->__begin_;
    memset(v8, *__x, __n);
    memcpy(&v8[begin - end], begin, v12);
    this->__begin_ = &v8[begin - end];
    this->__end_ = &v8[__n];
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void IOProcessorHookForDSP::~IOProcessorHookForDSP(IOProcessorHookForDSP *this)
{
  IOProcessorHookForDSP::~IOProcessorHookForDSP(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59643C8;
  v2 = *(this + 21);
  if (v2)
  {
    *(this + 22) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  std::__function::__value_func<void ()(AudioBufferList *,AudioBufferList *,unsigned int)>::~__value_func[abi:ne200100](this + 32);
}

uint64_t std::__function::__value_func<void ()(AudioBufferList *,AudioBufferList *,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1DE2C3120(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1E12C15F0](v1);
  _Unwind_Resume(a1);
}

void CA::StreamDescription::AsString(std::string *this, void *a2, double a3, int8x8_t a4)
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  if (v6 == 1718773105)
  {
    caulk::make_string(this, "%2u ch, %6.0f Hz, 'freq'", a2, *(a2 + 7), *a2);
    return;
  }

  if (v6 != 1819304813)
  {
    goto LABEL_19;
  }

  if (*(a2 + 5) != 1)
  {
    goto LABEL_19;
  }

  v7 = *(a2 + 6);
  if (v7 != *(a2 + 4))
  {
    goto LABEL_19;
  }

  v8 = *(a2 + 8);
  if (v7 < v8 >> 3)
  {
    goto LABEL_19;
  }

  v9 = *(a2 + 7);
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = *(a2 + 3);
  if ((v10 & 0x20) == 0)
  {
    v15 = v7 == v7 / v9 * v9;
    v7 /= v9;
    if (!v15)
    {
      goto LABEL_19;
    }
  }

  if ((v10 & 2) != 0 || 8 * v7 != v8)
  {
    goto LABEL_19;
  }

  if (v10)
  {
    if ((v10 & 0x1F84) == 0)
    {
      if (v7 == 4)
      {
        v12 = 1;
        goto LABEL_163;
      }

      v15 = v7 == 8;
      v56 = v7 == 8;
      if (v15)
      {
        v12 = 4 * v56;
        goto LABEL_163;
      }
    }

LABEL_19:
    v13 = *(a2 + 7);
    v14 = *a2;
    if (v13)
    {
      v15 = 0;
    }

    else
    {
      v15 = v6 == 0;
    }

    if (v15 && v14 == 0.0)
    {
      caulk::make_string(this, "%2u ch, %6.0f Hz", a2, 0, *a2);
      return;
    }

    a4.i32[0] = bswap32(v6);
    v16 = vzip1_s8(a4, *&v14);
    v17.i64[0] = 0x1F0000001FLL;
    v17.i64[1] = 0x1F0000001FLL;
    v18.i64[0] = 0x5F0000005FLL;
    v18.i64[1] = 0x5F0000005FLL;
    *(&v61.__r_.__value_.__s + 23) = 4;
    LODWORD(v61.__r_.__value_.__l.__data_) = vuzp1_s8(vbsl_s8(vmovn_s32(vcgtq_u32(v18, vsraq_n_s32(v17, vshlq_n_s32(vmovl_u16(v16), 0x18uLL), 0x18uLL))), v16, 0x2E002E002E002ELL), *&v14).u32[0];
    v61.__r_.__value_.__s.__data_[4] = 0;
    caulk::make_string(&v59, "%2u ch, %6.0f Hz, %s (0x%08X) ", a2, v13, *&v14, &v61, *(a2 + 3));
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v20 = *(a2 + 2);
    if (v20 <= 1819304812)
    {
      if (v20 != 1634492771 && v20 != 1634497332 && v20 != 1718378851)
      {
LABEL_70:
        caulk::make_string(&v61, "%u bits/channel, %u bytes/packet, %u frames/packet, %u bytes/frame", v19, *(a2 + 8), *(a2 + 4), *(a2 + 5), *(a2 + 6));
        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v59;
        }

        else
        {
          v33 = v59.__r_.__value_.__r.__words[0];
        }

        if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v59.__r_.__value_.__l.__size_;
        }

LABEL_62:
        v35 = std::string::insert(&v61, 0, v33, size);
        v36 = *&v35->__r_.__value_.__l.__data_;
        this->__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&this->__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_65;
        }

        v37 = v61.__r_.__value_.__r.__words[0];
LABEL_64:
        operator delete(v37);
LABEL_65:
        if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v59.__r_.__value_.__l.__data_);
        }

        return;
      }

LABEL_45:
      v29 = *(a2 + 3);
      if ((v29 - 1) < 4 || !v29 && (v20 == 1634497332 || v20 == 1936487278 || v20 == 1936487267))
      {
        caulk::make_string(&v61, "from %u-bit source, ", v19, CA::StreamDescription::AsString(void)const::kSourceBits[v29]);
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v61;
        }

        else
        {
          v30 = v61.__r_.__value_.__r.__words[0];
        }

        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v61.__r_.__value_.__l.__size_;
        }

        std::string::append(&v59, v30, v31);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::append(&v59, "from UNKNOWN source bit depth, ", 0x1FuLL);
      }

      caulk::make_string(&v61, "%u frames/packet", v32, *(a2 + 5));
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v59;
      }

      else
      {
        v33 = v59.__r_.__value_.__r.__words[0];
      }

      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v59.__r_.__value_.__l.__size_;
      }

      goto LABEL_62;
    }

    if (v20 == 1936487278 || v20 == 1936487267)
    {
      goto LABEL_45;
    }

    if (v20 != 1819304813)
    {
      goto LABEL_70;
    }

    v21 = *(a2 + 3);
    v22 = *(a2 + 6);
    v23 = v21 & 0x20;
    v24 = "";
    if (!v22)
    {
      goto LABEL_37;
    }

    if ((v21 & 0x20) != 0)
    {
      v25 = 1;
    }

    else
    {
      v25 = *(a2 + 7);
      if (!v25)
      {
        v23 = 0;
LABEL_37:
        v26 = " signed";
        if ((v21 & 4) == 0)
        {
          v26 = " unsigned";
        }

        if (v21)
        {
          v27 = "float";
        }

        else
        {
          v27 = "integer";
        }

        if (v21)
        {
          v28 = "";
        }

        else
        {
          v28 = v26;
        }

LABEL_102:
        v61.__r_.__value_.__s.__data_[0] = 0;
        if (v23)
        {
          v42 = ", deinterleaved";
        }

        else
        {
          v42 = "";
        }

        v39 = "";
        v43 = "";
        goto LABEL_106;
      }
    }

    v38 = v22 / v25;
    if (v22 / v25 < 2)
    {
      v41 = " signed";
      if ((v21 & 4) == 0)
      {
        v41 = " unsigned";
      }

      if (v21)
      {
        v27 = "float";
      }

      else
      {
        v27 = "integer";
      }

      if (v21)
      {
        v28 = "";
      }

      else
      {
        v28 = v41;
      }

      if (v25 > v22)
      {
        goto LABEL_102;
      }

      v38 = 1;
      v39 = "";
    }

    else
    {
      if ((v21 & 2) != 0)
      {
        v39 = " big-endian";
      }

      else
      {
        v39 = " little-endian";
      }

      v40 = " unsigned";
      if ((v21 & 4) != 0)
      {
        v40 = " signed";
      }

      if (v21)
      {
        v27 = "float";
      }

      else
      {
        v27 = "integer";
      }

      if (v21)
      {
        v28 = "";
      }

      else
      {
        v28 = v40;
      }
    }

    v44 = *(a2 + 7);
    if ((v21 & 0x20) != 0)
    {
      v45 = 1;
    }

    else
    {
      v45 = *(a2 + 7);
    }

    if (v45)
    {
      v45 = 8 * (v22 / v45);
    }

    if (v45 == *(a2 + 8))
    {
      v61.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      if ((v21 & 8) != 0)
      {
        v46 = "";
      }

      else
      {
        v46 = "un";
      }

      snprintf(&v61, 0x20uLL, "%spacked in %u bytes", v46, v38);
      v22 = *(a2 + 6);
      v21 = *(a2 + 3);
      if (!v22)
      {
        v47 = 0;
        v23 = *(a2 + 3) & 0x20;
        goto LABEL_128;
      }

      v44 = *(a2 + 7);
      v23 = *(a2 + 3) & 0x20;
    }

    if (v23)
    {
      v47 = 1;
    }

    else
    {
      v47 = v44;
    }

    if (v47)
    {
      v47 = 8 * (v22 / v47);
    }

LABEL_128:
    v48 = *(a2 + 8);
    v49 = " high-aligned";
    if ((v21 & 0x10) == 0)
    {
      v49 = " low-aligned";
    }

    if ((v48 & 7) == 0 && v47 == v48)
    {
      v43 = "";
    }

    else
    {
      v43 = v49;
    }

    if (v23)
    {
      v42 = ", deinterleaved";
    }

    else
    {
      v42 = "";
    }

    if (v61.__r_.__value_.__s.__data_[0])
    {
      v24 = ", ";
LABEL_141:
      if (((v21 >> 7) & 0x3F) != 0)
      {
        snprintf(__str, 0x14uLL, "%u.%u");
      }

      else
      {
        snprintf(__str, 0x14uLL, "%u");
      }

      caulk::make_string(&v58, "%s-bit%s%s %s%s%s%s%s", v51, __str, v39, v28, v27, v24, &v61, v43, v42);
      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v52 = &v59;
      }

      else
      {
        v52 = v59.__r_.__value_.__r.__words[0];
      }

      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v53 = v59.__r_.__value_.__l.__size_;
      }

      v54 = std::string::insert(&v58, 0, v52, v53);
      v55 = *&v54->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }

      v37 = v58.__r_.__value_.__r.__words[0];
      goto LABEL_64;
    }

LABEL_106:
    if (*v43)
    {
      v24 = ", ";
    }

    goto LABEL_141;
  }

  if ((v10 & 4) == 0)
  {
    goto LABEL_19;
  }

  v11 = (v10 >> 7) & 0x3F;
  if (v11 != 24 || v7 != 4)
  {
    if (!v11 && v7 == 4)
    {
      v12 = 5;
      goto LABEL_163;
    }

    if (!v11 && v7 == 2)
    {
      v12 = 2;
      goto LABEL_163;
    }

    goto LABEL_19;
  }

  v12 = 3;
LABEL_163:
  if ((v10 & 0x20) != 0)
  {
    v57 = ", deinterleaved";
  }

  else
  {
    v57 = ", interleaved";
  }

  if (v9 == 1)
  {
    v57 = "";
  }

  caulk::make_string(this, "%2u ch, %6.0f Hz, %s%s", a2, v9, *a2, *(&off_1E86736E0 + v12), v57);
}

void sub_1DE2C3878(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](void *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1E12C15F0](a1 + 128);
  return a1;
}

{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

__n128 HALS_IODSPInfo::GetClientFormat(HALS_IODSPInfo *this, uint64_t *a2)
{
  if (a2[1] == *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *a2;
  }

  v3 = a2 + 27;
  if ((a2[32] & 1) == 0 && v2)
  {
    v4 = *(v2 + 56);
    v5 = *(v2 + 72);
    a2[31] = *(v2 + 88);
    *v3 = v4;
    *(a2 + 29) = v5;
    *(a2 + 256) = 1;
  }

  {
    v13 = this;
    v11 = a2 + 27;
    v12 = a2;
    v3 = v11;
    a2 = v12;
    v10 = v9;
    this = v13;
    if (v10)
    {
      HALS_IODSPInfo::GetClientFormat(void)const::kDummyFormat = 0x40E5888000000000;
      unk_1ECDAB138 = xmmword_1DE757E70;
      unk_1ECDAB148 = xmmword_1DE757E80;
      v3 = v11;
      a2 = v12;
      this = v13;
    }
  }

  if (*(a2 + 256))
  {
    v6 = v3;
  }

  else
  {
    v6 = &HALS_IODSPInfo::GetClientFormat(void)const::kDummyFormat;
  }

  result = *v6;
  v8 = *(v6 + 1);
  *this = *v6;
  *(this + 1) = v8;
  *(this + 4) = v6[4];
  return result;
}