uint64_t AmberBlockDeviceRecordPrefetchSequence(amber::BlockDevice *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a1)
  {
    amber::BlockDevice::recordPrefetchSequence(a1, a2);
    return 0;
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceRecordPrefetchSequence", 0x2DA, 0, "invalid device type", a7);
    return 0xFFFFFFFFLL;
  }
}

uint64_t AmberBlockDeviceCreateEncryptionKey(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v25 = *MEMORY[0x29EDCA608];
  v23[0] = &unk_2A1DDFDD8;
  v23[1] = &unk_2A1DDFE08;
  memset(&v23[2], 0, 256);
  v24 = 0;
  amber::ObjectStorePath::ObjectStorePath(v22);
  if ((amber::fromAmberObject(v22, a2, v12, v13, v14, v15, v16) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceCreateEncryptionKey", 0x2EB, 0, "invalid key_path", v17);
  }

  else if (a1)
  {
    if (((*(*a1 + 64))(a1, v22, v23, a6) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceCreateEncryptionKey", 0x2ED, 0, "createEncryptionKey", v18);
    }

    else
    {
      v19 = LODWORD(v23[2]);
      if (LODWORD(v23[2]) <= a3)
      {
        memcpy(a4, &v23[2] + 4, LODWORD(v23[2]));
        v20 = 0;
        goto LABEL_12;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceCreateEncryptionKey", 0x2EE, 0, "insufficient capacity", v18);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceCreateEncryptionKey", 0x2EC, 0, "invalid device type", v17);
  }

  if (a4)
  {
    amber::zero(void *,unsigned long)::memset_func(a4, 0, a3);
  }

  v19 = 0;
  v20 = 0xFFFFFFFFLL;
LABEL_12:
  *a5 = v19;
  amber::ObjectStorePath::~ObjectStorePath(v22);
  return v20;
}

void sub_29698CEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::ObjectStorePath::~ObjectStorePath(va);
  _Unwind_Resume(a1);
}

uint64_t AmberBlockDeviceGetEncryptionKey(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v25 = *MEMORY[0x29EDCA608];
  v23[0] = &unk_2A1DDFDD8;
  v23[1] = &unk_2A1DDFE08;
  memset(&v23[2], 0, 256);
  v24 = 0;
  amber::ObjectStorePath::ObjectStorePath(v22);
  if ((amber::fromAmberObject(v22, a2, v12, v13, v14, v15, v16) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceGetEncryptionKey", 0x302, 0, "invalid key_path", v17);
  }

  else if (a1)
  {
    if (((*(*a1 + 72))(a1, v22, v23, a6) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceGetEncryptionKey", 0x304, 0, "getEncryptionKey", v18);
    }

    else
    {
      v19 = LODWORD(v23[2]);
      if (LODWORD(v23[2]) <= a3)
      {
        memcpy(a4, &v23[2] + 4, LODWORD(v23[2]));
        v20 = 0;
        goto LABEL_12;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceGetEncryptionKey", 0x305, 0, "insufficient capacity", v18);
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceGetEncryptionKey", 0x303, 0, "invalid device type", v17);
  }

  if (a4)
  {
    amber::zero(void *,unsigned long)::memset_func(a4, 0, a3);
  }

  v19 = 0;
  v20 = 0xFFFFFFFFLL;
LABEL_12:
  *a5 = v19;
  amber::ObjectStorePath::~ObjectStorePath(v22);
  return v20;
}

void sub_29698D138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  amber::ObjectStorePath::~ObjectStorePath(va);
  _Unwind_Resume(a1);
}

uint64_t AmberBlockDeviceListContainers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10[110] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    memset(v9, 0, sizeof(v9));
    if (((*(*a1 + 96))(a1, v9, a2, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      operator new();
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceListContainers", 0x315, 0, "list containers", v7);
    v10[0] = v9;
    std::vector<amber::CryptoBlobBase<256u>>::__destroy_vector::operator()[abi:ne200100](v10);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceListContainers", 0x313, 0, "invalid device", a7);
  }

  return 0;
}

void sub_29698D3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  a12 = &a9;
  std::vector<amber::CryptoBlobBase<256u>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void *AmberBlockDeviceListContainerSnapshots(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10[35] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    if (a3 < 0x101)
    {
      amber::CryptoBlobBase<256u>::CryptoBlobBase(v10, a2, a3, a4, a5, a6, a7);
      operator new();
    }

    v7 = "invalid container id";
    v8 = 816;
  }

  else
  {
    v7 = "invalid device";
    v8 = 815;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceListContainerSnapshots", v8, 0, v7, a7);
  return 0;
}

uint64_t AmberBlockDeviceBeginWriteTransaction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v31 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceBeginWriteTransaction", 0x343, 0, "invalid device", a7);
    return 0xFFFFFFFFLL;
  }

  v12 = &unk_2A1DDFDD8;
  v13 = &unk_2A1DDFE08;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  if (a2)
  {
    if (a3 >= 0x101)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceBeginWriteTransaction", 0x347, 0, "invalid container id", a7);
      return 0xFFFFFFFFLL;
    }

    v11[0] = &off_2A1DDFC68;
    v11[1] = a2;
    v11[2] = a3;
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v13, v11, a3, a4, a5, a6, a7);
  }

  return (*(*a1 + 80))(a1, &v12, a4, a5, a5, a6, a7);
}

uint64_t AmberBlockDeviceCommitWriteTransaction(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v30 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceCommitWriteTransaction", 0x354, 0, "invalid device", a7);
    return 0xFFFFFFFFLL;
  }

  v11 = &unk_2A1DDFDD8;
  v12 = &unk_2A1DDFE08;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  if (a2)
  {
    if (a3 >= 0x101)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceCommitWriteTransaction", 0x358, 0, "invalid container id", a7);
      return 0xFFFFFFFFLL;
    }

    v10[0] = &off_2A1DDFC68;
    v10[1] = a2;
    v10[2] = a3;
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(&v12, v10, a3, a4, a5, a6, a7);
  }

  return (*(*a1 + 88))(a1, &v11, a4, a4, a5, a6, a7);
}

uint64_t AmberBlockDeviceProcessSnapshot(amber::BlockDevice *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[75] = *MEMORY[0x29EDCA608];
  if (a1)
  {
    amber::ObjectStorePath::ObjectStorePath(v9);
    amber::BlockDevice::snapshot(a1, v9);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceProcessSnapshot", 0x363, 0, "invalid device", a7);
  return 0xFFFFFFFFLL;
}

uint64_t AmberBlockDeviceProcessPrefetchSequence(amber::BlockDevice *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a1)
  {

    amber::BlockDevice::prefetchSequence(a1);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceProcessPrefetchSequence", 0x36F, 0, "invalid device", a7, v7, v8);
  return 0xFFFFFFFFLL;
}

uint64_t AmberBlockDeviceLoadPrologue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a1)
  {
    v9 = *(*a1 + 136);

    return v9();
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceLoadPrologue", 0x37C, 0, "invalid device", a7, v7, v8);
    return 0xFFFFFFFFLL;
  }
}

uint64_t AmberBlockDeviceLoadObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[75] = *MEMORY[0x29EDCA608];
  amber::ObjectStorePath::ObjectStorePath(v16);
  if ((amber::fromAmberObject(v16, a2, v8, v9, v10, v11, v12) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceLoadObject", 0x389, 0, "invalid object store path", v13);
    v14 = 0xFFFFFFFFLL;
  }

  else
  {
    v14 = (*(*a1 + 120))(a1, v16, a3, a4);
  }

  amber::ObjectStorePath::~ObjectStorePath(v16);
  return v14;
}

uint64_t AmberBlockDeviceStoreObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x29EDCA608];
  amber::ObjectStorePath::ObjectStorePath(v20);
  if ((amber::fromAmberObject(v20, a2, v10, v11, v12, v13, v14) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDevice.cpp", "AmberBlockDeviceStoreObject", 0x396, 0, "invalid object store path", v15);
    v16 = 0xFFFFFFFFLL;
  }

  else
  {
    v19[0] = &off_2A1DDFC68;
    v19[1] = a3;
    v19[2] = a4;
    if (a4 < 0 || !a3 && a4)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v15);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v16 = (*(*a1 + 128))(a1, v20, v19, a5);
  }

  amber::ObjectStorePath::~ObjectStorePath(v20);
  return v16;
}

void sub_29698DD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __cxa_free_exception(v12);
  amber::ObjectStorePath::~ObjectStorePath(va);
  _Unwind_Resume(a1);
}

amber::ObjectStorePath **std::vector<amber::ObjectStorePath>::reserve(amber::ObjectStorePath **result, unint64_t a2)
{
  if (0x2FC962FC962FC963 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x6D3A06D3A06D3BLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amber::ObjectStorePath>>(result, a2);
    }

    std::vector<DERNode>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_29698DEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<amber::ObjectStorePath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<amber::CryptoBlobBase<256u>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 35;
      v7 = v4 - 35;
      do
      {
        (**v7)(v7);
        v6 -= 35;
        v8 = v7 == v2;
        v7 -= 35;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t amber::BlockDeviceCustomEventLogger::eventProc(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1(*(result + 8));
  }

  return result;
}

void amber::BlockDeviceCustomEventLogger::~BlockDeviceCustomEventLogger(amber::BlockDeviceCustomEventLogger *this)
{
  *this = &unk_2A1DE1840;
  if ((amber::BlockDevice::registerEventCallback(0, 0) & 0x80000000) != 0)
  {
    amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceEventLogger.cpp", "~BlockDeviceCustomEventLogger", 0x28, 0, "AmberBlockDeviceEventRegisterCallback", v1);
  }
}

{
  amber::BlockDeviceCustomEventLogger::~BlockDeviceCustomEventLogger(this);

  JUMPOUT(0x29C25C000);
}

void amber::BlockDeviceFileEventLogger::~BlockDeviceFileEventLogger(amber::BlockDeviceFileEventLogger *this)
{
  v4 = *MEMORY[0x29EDCA608];
  *this = &unk_2A1DE1870;
  *(this + 1) = &unk_2A1DE18A8;
  if ((amber::BlockDevice::registerEventCallback(0, 0) & 0x80000000) != 0)
  {
    amber::log(1, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceEventLogger.cpp", "~BlockDeviceFileEventLogger", 0x6F, 0, "AmberBlockDeviceEventRegisterCallback", v2);
  }

  amber::zero(void *,unsigned long)::memset_func(v3, 0, 128);
  amber::SharedQueue<AmberBlockDeviceEvent_s>::insertFirst(this + 40, v3);
}

{
  amber::BlockDeviceFileEventLogger::~BlockDeviceFileEventLogger(this);
}

void sub_29698E5AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void non-virtual thunk toamber::BlockDeviceFileEventLogger::~BlockDeviceFileEventLogger(amber::BlockDeviceFileEventLogger *this)
{
  amber::BlockDeviceFileEventLogger::~BlockDeviceFileEventLogger((this - 8));
}

{
  amber::BlockDeviceFileEventLogger::~BlockDeviceFileEventLogger((this - 8));
}

void amber::BlockDeviceFileEventLogger::run(amber::BlockDeviceFileEventLogger *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v117 = *MEMORY[0x29EDCA608];
  v107[0] = &unk_2A1DDFD28;
  v107[2] = 0;
  v107[3] = 0;
  v107[1] = off_2A1DDFD48;
  v107[5] = 0;
  v107[6] = 0;
  v107[4] = &off_2A1DDFDA8;
  v107[7] = &off_2A1DDFC68;
  v108 = 0u;
  v109 = 0u;
  v110 = 1;
  v111 = 0;
  v102[0] = &unk_2A1DDFD28;
  v102[2] = 0;
  v102[3] = 0;
  v102[1] = off_2A1DDFD48;
  v102[5] = 0;
  v102[6] = 0;
  v102[4] = &off_2A1DDFDA8;
  v102[7] = &off_2A1DDFC68;
  v103 = 0u;
  v104 = 0u;
  v105 = 1;
  v106 = 0;
  if ((amber::Buffer::reserve(v107, *(this + 4) + 128, a3, a4, a5, a6, a7) & 0x80000000) == 0 && (amber::Buffer::reserve(v102, *(this + 4) + 16, v8, v9, v10, v11, v12) & 0x80000000) == 0)
  {
    while (1)
    {
      amber::SharedQueue<AmberBlockDeviceEvent_s>::removeFirst(this + 40, &v115);
      v19 = v116;
      if (v116)
      {
        v99 = &off_2A1DDFDA8;
        __dst = &v115;
        v101 = 128;
        v112 = &off_2A1DDFC68;
        v113 = &v115;
        v114 = 128;
        if ((amber::BufferProtocol<amber::Buffer>::append(v107, &v112, v14, v15, v16, v17, v18) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceEventLogger.cpp", "run", 0x90, 0, "event buffer append", v18);
          goto LABEL_30;
        }
      }

      v20 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v107, v13, v14, v15, v16, v17, v18);
      v27 = *(this + 4);
      if (v27 >= v20)
      {
        v28 = v20;
      }

      else
      {
        v28 = *(this + 4);
      }

      if (!v28)
      {
        goto LABEL_27;
      }

      if (!v19 || v27 <= v20)
      {
        amber::BufferProtocol<amber::Buffer>::assignZero(v102, 0x10, v22, v23, v24, v25, v26);
        if (!*(this + 4))
        {
          goto LABEL_17;
        }

        amber::Buffer::buf(&v112, v102, v29);
        amber::MutableMemoryView::operator+(&v112, *(&v104 + 1), v30, &v99);
        amber::MutableMemoryViewConvertible<amber::Buffer>::first(v107, v28, v31, &v96);
        v112 = &off_2A1DDFC68;
        v113 = v97;
        v114 = v98;
        if ((v98 & 0x8000000000000000) != 0 || !v97 && v98)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v32);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid args");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        v33 = amber::compressionEncode(&v99, &v112, *(this + 4));
        v38 = v33;
        if (v33 >= v28 || v33 < 1)
        {
LABEL_17:
          amber::Buffer::buf(&v112, v102, v29);
          amber::MutableMemoryView::operator+(&v112, *(&v104 + 1), v39, &v99);
          amber::MutableMemoryViewConvertible<amber::Buffer>::first(v107, v28, v40, &v96);
          v112 = &off_2A1DDFC68;
          v113 = v97;
          v114 = v98;
          if ((v98 & 0x8000000000000000) != 0 || !v97 && v98)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v41);
            v93 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C25BE90](v93, "memory invalid args");
            __cxa_throw(v93, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          if (v98 > v101)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v41);
            v95 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x29C25BE90](v95, "memory invalid range");
            __cxa_throw(v95, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
          }

          memcpy(__dst, v97, v98);
          v38 = v28;
        }

        if ((amber::Buffer::grow(v102, v38, v34, v35, v36, v37, v29) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceEventLogger.cpp", "run", 0xA2, 0, "event buffer compression", v45);
          goto LABEL_30;
        }

        v96 = bswap64(v28);
        v99 = &off_2A1DDFDA8;
        __dst = &v96;
        v101 = 8;
        v112 = &off_2A1DDFC68;
        v113 = &v96;
        v114 = 8;
        amber::MutableMemoryViewConvertible<amber::Buffer>::store(v102, &v112, 0, v42, v43, v44, v45);
        v96 = bswap64(v38);
        v99 = &off_2A1DDFDA8;
        __dst = &v96;
        v101 = 8;
        v112 = &off_2A1DDFC68;
        v113 = &v96;
        v114 = 8;
        amber::MutableMemoryViewConvertible<amber::Buffer>::store(v102, &v112, 8uLL, v46, v47, v48, v49);
        v50 = *(this + 50);
        v57 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v102, v51, v52, v53, v54, v55, v56);
        v64 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v102, v58, v59, v60, v61, v62, v63);
        v65 = write(v50, v57, v64);
        if (v65 != amber::ConstMemoryViewConvertible<amber::Buffer>::size(v102, v66, v67, v68, v69, v70, v71))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceEventLogger.cpp", "run", 0xA8, 0, "event buffer write compressed data", v76);
          goto LABEL_30;
        }

        if ((amber::Buffer::consume(v107, v28, v72, v73, v74, v75, v76) & 0x80000000) != 0 || (amber::Buffer::pack(v107, v77, v78, v79, v80, v81, v82) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceEventLogger.cpp", "run", 0xAC, 0, "event buffer update", v82);
          goto LABEL_30;
        }

        amber::Buffer::resize(v102, 0, v83, v84, v85, v86, v82);
LABEL_27:
        if (!v19)
        {
          goto LABEL_30;
        }
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceEventLogger.cpp", "run", 0x87, 0, "event buffer alloc", v12);
LABEL_30:
  amber::Buffer::~Buffer(v102, v21, v22, v23, v24, v25, v26);
  amber::Buffer::~Buffer(v107, v87, v88, v89, v90, v91, v92);
}

void sub_29698ECF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  amber::Buffer::~Buffer(&a16, a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer(&a29, v30, v31, v32, v33, v34, v35);
  _Unwind_Resume(a1);
}

uint64_t AmberBlockDeviceEventLoggerClose(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void amber::SharedQueue<AmberBlockDeviceEvent_s>::~SharedQueue(uint64_t a1)
{
  amber::SharedQueue<AmberBlockDeviceEvent_s>::~SharedQueue(a1);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::SharedQueue<AmberBlockDeviceEvent_s>::~SharedQueue(uint64_t a1)
{
  *a1 = &unk_2A1DE1938;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  std::__list_imp<amber::SharedBlockCache::WriteTask *>::clear(v2);
  return a1;
}

uint64_t amber::SharedQueue<AmberBlockDeviceEvent_s>::removeFirst(uint64_t a1, _OWORD *a2)
{
  v17.__m_ = (a1 + 40);
  v17.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 8);
  if (v4 <= 0)
  {
    do
    {
      std::condition_variable::wait((a1 + 104), &v17);
      v4 = *(a1 + 8);
    }

    while (v4 < 1);
  }

  *(a1 + 8) = v4 - 1;
  v5 = *(a1 + 24);
  v7 = v5[3];
  v6 = v5[4];
  v8 = v5[2];
  *a2 = v5[1];
  a2[1] = v8;
  a2[2] = v7;
  a2[3] = v6;
  v9 = v5[5];
  v10 = v5[6];
  v11 = v5[8];
  a2[6] = v5[7];
  a2[7] = v11;
  a2[4] = v9;
  a2[5] = v10;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v15 = *v12;
  v14 = v12[1];
  *(v15 + 8) = v14;
  *v14 = v15;
  *(a1 + 32) = v13 - 1;
  operator delete(v12);
  if (v17.__owns_)
  {
    std::mutex::unlock(v17.__m_);
  }

  return 0;
}

uint64_t amber::BlockDeviceRequest::getAttribute(amber::BlockDeviceRequest *this, amber::BaseObject *a2, unsigned int a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  v9 = a2;
  v36 = *MEMORY[0x29EDCA608];
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "getAttribute", 9, 0, "invalid attribute encoding", v15);
    return 0xFFFFFFFFLL;
  }

  v29 = 0;
  result = 0xFFFFFFFFLL;
  if (v9 <= 705)
  {
    if (v9 <= 702)
    {
      if (v9 == 701)
      {
        LODWORD(v27) = *(this + 5);
        v30 = &off_2A1DDFDA8;
        v31 = &v27;
        v32 = 4;
        v33 = &off_2A1DDFC68;
        v34 = &v27;
        v35 = 4;
        *a5 = 4;
        v25 = *(a4 + 2);
        if (!v25)
        {
          return 0;
        }

        if (v25 > 3)
        {
          return amber::copy(a4, &v33, v11, v12, v13, v14, v15);
        }
      }

      else
      {
        if (v9 != 702)
        {
          return result;
        }

        LODWORD(v27) = *(this + 6);
        v30 = &off_2A1DDFDA8;
        v31 = &v27;
        v32 = 4;
        v33 = &off_2A1DDFC68;
        v34 = &v27;
        v35 = 4;
        *a5 = 4;
        v25 = *(a4 + 2);
        if (!v25)
        {
          return 0;
        }

        if (v25 > 3)
        {
          return amber::copy(a4, &v33, v11, v12, v13, v14, v15);
        }
      }
    }

    else if (v9 == 703)
    {
      LODWORD(v27) = *(this + 7);
      v30 = &off_2A1DDFDA8;
      v31 = &v27;
      v32 = 4;
      v33 = &off_2A1DDFC68;
      v34 = &v27;
      v35 = 4;
      *a5 = 4;
      v25 = *(a4 + 2);
      if (!v25)
      {
        return 0;
      }

      if (v25 > 3)
      {
        return amber::copy(a4, &v33, v11, v12, v13, v14, v15);
      }
    }

    else
    {
      if (v9 != 704)
      {
        *&v27 = *(this + 5);
        v30 = &off_2A1DDFDA8;
        v31 = &v27;
        v32 = 8;
        v33 = &off_2A1DDFC68;
        v34 = &v27;
        v35 = 8;
        *a5 = 8;
        v18 = *(a4 + 2);
        if (!v18)
        {
          return 0;
        }

        if (v18 > 7)
        {
          return amber::copy(a4, &v33, v11, v12, v13, v14, v15);
        }

LABEL_17:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v15, 8, v18, v27);
        return 0xFFFFFFFFLL;
      }

      LODWORD(v27) = *(this + 8);
      v30 = &off_2A1DDFDA8;
      v31 = &v27;
      v32 = 4;
      v33 = &off_2A1DDFC68;
      v34 = &v27;
      v35 = 4;
      *a5 = 4;
      v25 = *(a4 + 2);
      if (!v25)
      {
        return 0;
      }

      if (v25 > 3)
      {
        return amber::copy(a4, &v33, v11, v12, v13, v14, v15);
      }
    }

LABEL_45:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v15, 4, v25, v27);
    return 0xFFFFFFFFLL;
  }

  if (v9 <= 708)
  {
    if (v9 != 706)
    {
      if (v9 != 707)
      {
        v29 = *(this + 8);
        v30 = &off_2A1DDFDA8;
        v31 = &v29;
        v32 = 8;
        v33 = &off_2A1DDFC68;
        v34 = &v29;
        v35 = 8;
        *a5 = 8;
        v17 = *(a4 + 2);
        if (v17)
        {
          if (v17 > 7)
          {
            return amber::copy(a4, &v33, v11, v12, v13, v14, v15);
          }

          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v15, 8, v17);
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      LODWORD(v27) = *(this + 14);
      v30 = &off_2A1DDFDA8;
      v31 = &v27;
      v32 = 4;
      v33 = &off_2A1DDFC68;
      v34 = &v27;
      v35 = 4;
      *a5 = 4;
      v25 = *(a4 + 2);
      if (!v25)
      {
        return 0;
      }

      if (v25 <= 3)
      {
        goto LABEL_45;
      }

      return amber::copy(a4, &v33, v11, v12, v13, v14, v15);
    }

    *&v27 = *(this + 6);
    v30 = &off_2A1DDFDA8;
    v31 = &v27;
    v32 = 8;
    v33 = &off_2A1DDFC68;
    v34 = &v27;
    v35 = 8;
    *a5 = 8;
    v18 = *(a4 + 2);
    if (!v18)
    {
      return 0;
    }

    if (v18 > 7)
    {
      return amber::copy(a4, &v33, v11, v12, v13, v14, v15);
    }

    goto LABEL_17;
  }

  switch(v9)
  {
    case 711:
      v27 = *(this + 72);
      v30 = &off_2A1DDFDA8;
      v31 = &v27;
      v32 = 16;
      v33 = &off_2A1DDFC68;
      v34 = &v27;
      v35 = 16;
      *a5 = 16;
      v26 = *(a4 + 2);
      if (!v26)
      {
        return 0;
      }

      if (v26 <= 0xF)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v15, 16, v26, v27);
        return 0xFFFFFFFFLL;
      }

      return amber::copy(a4, &v33, v11, v12, v13, v14, v15);
    case 710:
      if ((amber::toAmberObject(this + 688, &v33, v11, v12, v13, v14, v15) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "getAttribute", 0x2D, 0, "invalid snapshot in request", v23);
        return 0xFFFFFFFFLL;
      }

      *&v27 = &off_2A1DDFDA8;
      *(&v27 + 1) = &v33;
      v28 = 544;
      v30 = &off_2A1DDFC68;
      v31 = &v33;
      v32 = 544;
      *a5 = 544;
      v24 = *(a4 + 2);
      if (!v24)
      {
        return 0;
      }

      if (v24 <= 0x21F)
      {
        goto LABEL_24;
      }

      return amber::copy(a4, &v30, v19, v20, v21, v22, v23);
    case 709:
      if ((amber::toAmberObject(this + 88, &v33, v11, v12, v13, v14, v15) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "getAttribute", 0x11, 0, "invalid object path in request", v23);
        return 0xFFFFFFFFLL;
      }

      *&v27 = &off_2A1DDFDA8;
      *(&v27 + 1) = &v33;
      v28 = 544;
      v30 = &off_2A1DDFC68;
      v31 = &v33;
      v32 = 544;
      *a5 = 544;
      v24 = *(a4 + 2);
      if (!v24)
      {
        return 0;
      }

      if (v24 <= 0x21F)
      {
LABEL_24:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v23, 544, v24, v27, v28, v29, v30, v31, v32);
        return 0xFFFFFFFFLL;
      }

      return amber::copy(a4, &v30, v19, v20, v21, v22, v23);
  }

  return result;
}

uint64_t amber::BlockDeviceRequest::setAttribute(amber::BlockDeviceRequest *this, amber::BaseObject *a2, unsigned int a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v93 = *MEMORY[0x29EDCA608];
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "setAttribute", 0x3A, 0, "invalid attribute encoding", v15);
    return 0xFFFFFFFFLL;
  }

  v54 = 0;
  v53 = 0;
  if (a3 == 2)
  {
    if ((amber::storeAttribute<unsigned int>(&v53, a4, v11, v12, v13, v14, v15) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "setAttribute", 0x44, 0, "invalid attribute size", v15);
      return 0xFFFFFFFFLL;
    }
  }

  else if (a3 == 1 && (amber::storeAttribute<unsigned long long>(&v54, a4, v11, v12, v13, v14, v15) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "setAttribute", 0x40, 0, "invalid attribute size", v15);
    return 0xFFFFFFFFLL;
  }

  if (a2 > 708)
  {
    switch(a2)
    {
      case 0x2C5:
        v17 = *(a4 + 2);
        if (v17 != 544)
        {
          goto LABEL_28;
        }

        v18 = *(a4 + 1);
        amber::ObjectStorePath::ObjectStorePath(v55);
        if ((amber::fromAmberObject(v55, v18, v19, v20, v21, v22, v23) & 0x80000000) == 0)
        {
          v16 = amber::BlockDeviceRequest::setObjectStorePath(this, v55, v24, v25, v26, v27, v28);
LABEL_34:
          amber::ObjectStorePath::~ObjectStorePath(v55);
          return v16;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "setAttribute", 0x4B, 0, "invalid AmberObjectStorePath", v28);
        break;
      case 0x2C6:
        v17 = *(a4 + 2);
        if (v17 != 544)
        {
          goto LABEL_28;
        }

        v29 = *(a4 + 1);
        amber::ObjectStorePath::ObjectStorePath(v55);
        if ((amber::fromAmberObject(v55, v29, v30, v31, v32, v33, v34) & 0x80000000) == 0)
        {
          v16 = 0;
          *(this + 180) = v56;
          v36 = v70;
          *(this + 916) = v69;
          *(this + 932) = v36;
          v37 = v66;
          *(this + 852) = v65;
          *(this + 868) = v37;
          v38 = v68;
          *(this + 884) = v67;
          *(this + 900) = v38;
          v39 = v62;
          *(this + 788) = v61;
          *(this + 804) = v39;
          v40 = v64;
          *(this + 820) = v63;
          *(this + 836) = v40;
          v41 = v58;
          *(this + 724) = v57;
          *(this + 740) = v41;
          v42 = v60;
          *(this + 756) = v59;
          *(this + 772) = v42;
          v43 = v72;
          *(this + 948) = v71;
          *(this + 964) = v43;
          *(this + 250) = v73;
          v44 = v87;
          *(this + 1196) = v86;
          *(this + 1212) = v44;
          v45 = v89;
          *(this + 1228) = v88;
          *(this + 1244) = v45;
          v46 = v83;
          *(this + 1132) = v82;
          *(this + 1148) = v46;
          v47 = v85;
          *(this + 1164) = v84;
          *(this + 1180) = v47;
          v48 = v79;
          *(this + 1068) = v78;
          *(this + 1084) = v48;
          v49 = v81;
          *(this + 1100) = v80;
          *(this + 1116) = v49;
          v50 = v75;
          *(this + 1004) = v74;
          *(this + 1020) = v50;
          v51 = v77;
          *(this + 1036) = v76;
          *(this + 1052) = v51;
          *(this + 316) = v90;
          *(this + 159) = v91;
          *(this + 320) = v92;
          goto LABEL_34;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "setAttribute", 0x52, 0, "invalid AmberObjectStorePath", v35);
        break;
      case 0x2C7:
        v17 = *(a4 + 2);
        if (v17 == 16)
        {
          v16 = 0;
          *(this + 72) = **(a4 + 1);
          return v16;
        }

LABEL_28:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "setAttribute", 0x6C, 0, "invalid request attribute: %u (size: %zu)", v15, a2, v17);
        return 0xFFFFFFFFLL;
      default:
LABEL_23:
        v17 = *(a4 + 2);
        goto LABEL_28;
    }

    v16 = 0xFFFFFFFFLL;
    goto LABEL_34;
  }

  if (a2 == 705)
  {
    v16 = 0;
    *(this + 5) = v54;
    return v16;
  }

  if (a2 == 706)
  {
    v16 = 0;
    *(this + 6) = v54;
    return v16;
  }

  if (a2 != 707)
  {
    goto LABEL_23;
  }

  v16 = 0;
  *(this + 14) = v53;
  return v16;
}

void sub_29698FD18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  amber::ObjectStorePath::~ObjectStorePath(va);
  _Unwind_Resume(a1);
}

uint64_t amber::BlockDeviceRequest::setObjectStorePath(amber::BlockDeviceRequest *this, const amber::ObjectStorePath *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *(this + 30) = *(a2 + 8);
  v7 = *(a2 + 36);
  v8 = *(a2 + 52);
  v9 = *(a2 + 68);
  *(this + 172) = *(a2 + 84);
  *(this + 156) = v9;
  *(this + 140) = v8;
  *(this + 124) = v7;
  v10 = *(a2 + 100);
  v11 = *(a2 + 116);
  v12 = *(a2 + 132);
  *(this + 236) = *(a2 + 148);
  *(this + 220) = v12;
  *(this + 204) = v11;
  *(this + 188) = v10;
  v13 = *(a2 + 164);
  v14 = *(a2 + 180);
  v15 = *(a2 + 212);
  *(this + 284) = *(a2 + 196);
  *(this + 300) = v15;
  *(this + 268) = v14;
  *(this + 252) = v13;
  v16 = *(a2 + 228);
  v17 = *(a2 + 244);
  v18 = *(a2 + 276);
  *(this + 348) = *(a2 + 260);
  *(this + 364) = v18;
  *(this + 316) = v16;
  *(this + 332) = v17;
  *(this + 100) = *(a2 + 78);
  v19 = *(a2 + 316);
  v20 = *(a2 + 332);
  v21 = *(a2 + 364);
  *(this + 436) = *(a2 + 348);
  *(this + 452) = v21;
  *(this + 404) = v19;
  *(this + 420) = v20;
  v22 = *(a2 + 380);
  v23 = *(a2 + 396);
  v24 = *(a2 + 428);
  *(this + 500) = *(a2 + 412);
  *(this + 516) = v24;
  *(this + 468) = v22;
  *(this + 484) = v23;
  v25 = *(a2 + 444);
  v26 = *(a2 + 460);
  v27 = *(a2 + 492);
  *(this + 564) = *(a2 + 476);
  *(this + 580) = v27;
  *(this + 532) = v25;
  *(this + 548) = v26;
  v28 = *(a2 + 508);
  v29 = *(a2 + 524);
  v30 = *(a2 + 556);
  *(this + 628) = *(a2 + 540);
  *(this + 644) = v30;
  *(this + 596) = v28;
  *(this + 612) = v29;
  *(this + 166) = *(a2 + 144);
  v31 = *(a2 + 73);
  *(this + 84) = v31;
  v32 = *(a2 + 148);
  *(this + 170) = v32;
  v33 = *(this + 14);
  if (v33)
  {
    if (v32 && v33 != v32)
    {
      v34 = "inconsistent request sizes";
      v35 = 148;
LABEL_10:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "setObjectStorePath", v35, 0, v34, a7);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(this + 14) = v32;
  }

  v36 = *(this + 6);
  if (!v36)
  {
    v37 = 0;
    *(this + 6) = v31;
    return v37;
  }

  v37 = 0;
  if (v31 && v36 != v31)
  {
    v34 = "inconsistent request offsets";
    v35 = 151;
    goto LABEL_10;
  }

  return v37;
}

uint64_t amber::BlockDeviceRequest::setContainerSnapshot(amber::BlockDeviceRequest *this, const amber::ObjectStorePath *a2)
{
  *(this + 180) = *(a2 + 8);
  v2 = *(a2 + 36);
  v3 = *(a2 + 52);
  v4 = *(a2 + 84);
  *(this + 756) = *(a2 + 68);
  *(this + 772) = v4;
  *(this + 724) = v2;
  *(this + 740) = v3;
  v5 = *(a2 + 100);
  v6 = *(a2 + 116);
  v7 = *(a2 + 148);
  *(this + 820) = *(a2 + 132);
  *(this + 836) = v7;
  *(this + 788) = v5;
  *(this + 804) = v6;
  v8 = *(a2 + 164);
  v9 = *(a2 + 180);
  v10 = *(a2 + 212);
  *(this + 884) = *(a2 + 196);
  *(this + 900) = v10;
  *(this + 852) = v8;
  *(this + 868) = v9;
  v11 = *(a2 + 228);
  v12 = *(a2 + 244);
  v13 = *(a2 + 276);
  *(this + 948) = *(a2 + 260);
  *(this + 964) = v13;
  *(this + 916) = v11;
  *(this + 932) = v12;
  *(this + 250) = *(a2 + 78);
  v14 = *(a2 + 316);
  v15 = *(a2 + 332);
  v16 = *(a2 + 364);
  *(this + 1036) = *(a2 + 348);
  *(this + 1052) = v16;
  *(this + 1004) = v14;
  *(this + 1020) = v15;
  v17 = *(a2 + 380);
  v18 = *(a2 + 396);
  v19 = *(a2 + 428);
  *(this + 1100) = *(a2 + 412);
  *(this + 1116) = v19;
  *(this + 1068) = v17;
  *(this + 1084) = v18;
  v20 = *(a2 + 444);
  v21 = *(a2 + 460);
  v22 = *(a2 + 492);
  *(this + 1164) = *(a2 + 476);
  *(this + 1180) = v22;
  *(this + 1132) = v20;
  *(this + 1148) = v21;
  v23 = *(a2 + 508);
  v24 = *(a2 + 524);
  v25 = *(a2 + 556);
  *(this + 1228) = *(a2 + 540);
  *(this + 1244) = v25;
  *(this + 1196) = v23;
  *(this + 1212) = v24;
  *(this + 316) = *(a2 + 144);
  *(this + 159) = *(a2 + 73);
  *(this + 320) = *(a2 + 148);
  return 0;
}

uint64_t amber::BlockDeviceRequest::BlockDeviceRequest(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *a1 = &unk_2A1DE1968;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 20) = a3;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = a4;
  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 56) = a7;
  *(a1 + 64) = a8;
  *(a1 + 72) = a9;
  *(a1 + 80) = a10;
  amber::ObjectStorePath::ObjectStorePath((a1 + 88));
  v15 = amber::ObjectStorePath::ObjectStorePath((a1 + 688));
  *(a1 + 1288) = 0;
  *(a1 + 1296) = 0;
  if ((a3 - 1) <= 1 && a7 && !a8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "BlockDeviceRequest", 0x82, 0, "payload is NULL", v14, v15);
    exception = __cxa_allocate_exception(8uLL);
    *exception = "amber::BlockDeviceRequest::BlockDeviceRequest";
    __cxa_throw(exception, MEMORY[0x29EDC9468], 0);
  }

  amber::BlockDeviceEvent::BlockDeviceEvent(v18, 10, a1);
  amber::BlockDeviceEvent::send(v18);
  amber::BlockDeviceEvent::~BlockDeviceEvent(v18);
  return a1;
}

{
  return amber::BlockDeviceRequest::BlockDeviceRequest(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void sub_2969900C0(_Unwind_Exception *a1)
{
  amber::ObjectStorePath::~ObjectStorePath((v1 + 688));
  amber::ObjectStorePath::~ObjectStorePath((v1 + 88));
  _Unwind_Resume(a1);
}

void amber::BlockDeviceRequest::~BlockDeviceRequest(amber::BlockDeviceRequest *this)
{
  *this = &unk_2A1DE1968;
  amber::BlockDeviceEvent::BlockDeviceEvent(v2, 15, this);
  amber::BlockDeviceEvent::send(v2);
  amber::BlockDeviceEvent::~BlockDeviceEvent(v2);
  amber::ObjectStorePath::~ObjectStorePath((this + 688));
  amber::ObjectStorePath::~ObjectStorePath((this + 88));
}

{
  amber::BlockDeviceRequest::~BlockDeviceRequest(this);

  JUMPOUT(0x29C25C000);
}

uint64_t amber::BlockDeviceRequest::sendReply(amber::BlockDeviceRequest *this, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 4))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "sendReply", 0xAA, 0, "request answered twice!", a7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    *(this + 7) = a2;
    *(this + 8) = a3;
    amber::BlockDeviceEvent::BlockDeviceEvent(v12, 14, this);
    amber::BlockDeviceEvent::send(v12);
    amber::BlockDeviceEvent::~BlockDeviceEvent(v12);
    amber::BlockDeviceEvent::BlockDeviceEvent(v12, 17, this);
    amber::BlockDeviceEvent::sendBegin(v12);
    v9 = *(this + 10);
    if (v9 && (v9(*(this + 9), this) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "sendReply", 0xB5, 0, "reply_proc", v10);
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      *(this + 4) = 1;
      amber::BlockDeviceEvent::sendEnd(v12);
      v7 = 0;
    }

    amber::BlockDeviceEvent::~BlockDeviceEvent(v12);
  }

  return v7;
}

uint64_t amber::BlockDeviceRequest::enqueue(amber::BlockDeviceRequest *this)
{
  if ((amber::BlockDevice::updateStatsAndPrefetchSequence(*(this + 1), this) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceRequest.cpp", "enqueue", 0xC0, 0, "updating stats before enqueue", v2);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v3 = *(**(this + 1) + 152);

    return v3();
  }
}

uint64_t amber::BasicBlockDeviceRequestState::processReply(amber::BasicBlockDeviceRequestState *this, amber::BlockDeviceRequest *a2)
{
  v3 = *(a2 + 7);
  v4 = *(a2 + 8);
  if (v3 == 1)
  {
    if (*(a2 + 5) == 9)
    {
      *(this + 44) = *(a2 + 180);
      v5 = *(a2 + 724);
      v6 = *(a2 + 740);
      v7 = *(a2 + 756);
      *(this + 228) = *(a2 + 772);
      *(this + 212) = v7;
      *(this + 196) = v6;
      *(this + 180) = v5;
      v8 = *(a2 + 788);
      v9 = *(a2 + 804);
      v10 = *(a2 + 836);
      *(this + 276) = *(a2 + 820);
      *(this + 292) = v10;
      *(this + 260) = v9;
      *(this + 244) = v8;
      v11 = *(a2 + 852);
      v12 = *(a2 + 868);
      v13 = *(a2 + 900);
      *(this + 340) = *(a2 + 884);
      *(this + 356) = v13;
      *(this + 308) = v11;
      *(this + 324) = v12;
      v14 = *(a2 + 916);
      v15 = *(a2 + 932);
      v16 = *(a2 + 964);
      *(this + 404) = *(a2 + 948);
      *(this + 420) = v16;
      *(this + 372) = v14;
      *(this + 388) = v15;
      *(this + 114) = *(a2 + 250);
      v17 = *(a2 + 1004);
      v18 = *(a2 + 1020);
      v19 = *(a2 + 1052);
      *(this + 492) = *(a2 + 1036);
      *(this + 508) = v19;
      *(this + 460) = v17;
      *(this + 476) = v18;
      v20 = *(a2 + 1068);
      v21 = *(a2 + 1084);
      v22 = *(a2 + 1116);
      *(this + 556) = *(a2 + 1100);
      *(this + 572) = v22;
      *(this + 524) = v20;
      *(this + 540) = v21;
      v23 = *(a2 + 1132);
      v24 = *(a2 + 1148);
      v25 = *(a2 + 1180);
      *(this + 620) = *(a2 + 1164);
      *(this + 636) = v25;
      *(this + 588) = v23;
      *(this + 604) = v24;
      v26 = *(a2 + 1196);
      v27 = *(a2 + 1212);
      v28 = *(a2 + 1244);
      *(this + 684) = *(a2 + 1228);
      *(this + 700) = v28;
      *(this + 652) = v26;
      *(this + 668) = v27;
      *(this + 180) = *(a2 + 316);
      *(this + 91) = *(a2 + 159);
      *(this + 184) = *(a2 + 320);
    }
  }

  else if (v3 < 0)
  {
    v29 = 0;
    atomic_compare_exchange_strong(this, &v29, 1u);
  }

  if (*(this + 136) == 1)
  {
    free(v4);
  }

  amber::Sem::release((this + 8));
  return 0;
}

void sub_296990568(void *a1)
{
  MEMORY[0x29C25C000](v1, 0x10A1C401E4DC8A3);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296990544);
}

uint64_t AmberBlockDeviceRequestDestroy(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t amber::copy(amber *this, amber::BlockDevice *a2, amber::BaseObject *a3, amber::BlockDevice *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, double), int (*a9)(void *, float), unint64_t a10)
{
  v85 = *MEMORY[0x29EDCA608];
  AttributeUInt64 = amber::BaseObject::getAttributeUInt64(this, 201);
  v18 = amber::BaseObject::getAttributeUInt64(a3, 201);
  v66 = &unk_2A1DDFDD8;
  v67 = &unk_2A1DDFE08;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0u;
  v52 = 0u;
  memset(v53, 0, 30);
  v57[0] = xmmword_296A14210;
  memset(&v57[1], 0, 48);
  v58 = 0;
  v59 = 1018212795;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  *v63 = 0u;
  *v64 = 0u;
  v65 = 0;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v45[0] = xmmword_296A14210;
  memset(&v45[1], 0, 48);
  v46 = 0;
  v47 = 1018212795;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v19 = amber::realTime(v18);
  LODWORD(v53[1]) = amber::BaseObject::getAttributeUInt32(this, 204);
  AttributeUInt32 = amber::BaseObject::getAttributeUInt32(a3, 204);
  DWORD1(v53[1]) = AttributeUInt32;
  v22 = v53[1];
  if (LODWORD(v53[1]) == -1)
  {
    v22 = 1;
    LODWORD(v53[1]) = 1;
  }

  if (AttributeUInt32 == -1)
  {
    AttributeUInt32 = 1;
    DWORD1(v53[1]) = 1;
    if (!a6)
    {
LABEL_11:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x221, 0, "copy: invalid IO size: %u", v21, a6);
LABEL_12:
      v23 = 0xFFFFFFFFLL;
      goto LABEL_13;
    }
  }

  else if (!a6)
  {
    goto LABEL_11;
  }

  if (!v22 || a6 % v22 || !AttributeUInt32 || a6 % AttributeUInt32)
  {
    goto LABEL_11;
  }

  if (AttributeUInt64 < a2 || (v25 = &a5[a2], __CFADD__(a2, a5)) || v25 > AttributeUInt64 || a2 % v22 || v25 != AttributeUInt64 && v25 % v22)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x229, 0, "copy: invalid src offset: %llu", v21, a2);
    goto LABEL_12;
  }

  if (v18 < a4 || (v26 = &a5[a4], __CFADD__(a4, a5)) || v26 > v18 || a4 % AttributeUInt32 || v26 != v18 && v26 % AttributeUInt32)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x231, 0, "copy: invalid dst offset: %llu", v21, a4);
    goto LABEL_12;
  }

  *&v52 = this;
  *(&v52 + 1) = a3;
  *&v53[0] = a2;
  *(&v53[0] + 1) = a4;
  DWORD2(v53[1]) = a6;
  *&v51 = a9;
  *(&v51 + 1) = &v42;
  *&v42 = a5;
  *&v43 = a7;
  *(&v43 + 1) = a8;
  BYTE12(v53[1]) = (amber::BaseObject::getAttributeUInt32(a3, 202) & 8) != 0;
  BYTE13(v53[1]) = (amber::BaseObject::getAttributeUInt32(a3, 202) & 0x20) != 0;
  if ((amber::BaseObject::getAttributeUInt32(this, 202) & 0x40000) != 0)
  {
    v31 = amber::BaseObject::getAttributeUInt32(this, 203);
    if (v31 + 1 < 2 || a2 % v31 || &a5[a2] % v31)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x24B, 0, "invalid src block size", v32);
      goto LABEL_12;
    }

    if (v54 && v31 != v54)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x24D, 0, "block size mismatch in copy", v32);
      goto LABEL_12;
    }

    v54 = v31;
    LOBYTE(v55) = 1;
  }

  if ((amber::BaseObject::getAttributeUInt32(a3, 202) & 0x40000) != 0)
  {
    v33 = amber::BaseObject::getAttributeUInt32(a3, 203);
    if (v33 + 1 < 2 || a4 % v33 || v26 % v33)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x25A, 0, "invalid dst block size", v27);
      goto LABEL_12;
    }

    if (v54 && v33 != v54)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x25C, 0, "block size mismatch in copy", v27);
      goto LABEL_12;
    }

    v54 = v33;
    HIBYTE(v55) = 1;
  }

  else if (!v54)
  {
    v28 = DWORD1(v53[1]);
    if (DWORD1(v53[1]) <= 0x200)
    {
      v28 = 512;
    }

    v54 = v28;
  }

  if (a9 >> 62)
  {
    amber::logMark("Copy", 0);
    amber::logSize("src IO size", LODWORD(v53[1]), 1u);
    amber::logSize("src offset", a2, 1u);
    amber::logSize("dst IO size", DWORD1(v53[1]), 1u);
    amber::logSize("dst offset", a4, 1u);
    amber::logSize("copy IO size", a6, 1u);
    amber::logSize("block size", v54, 1u);
    amber::logSize("copy size", a5, 1u);
  }

  if (a8 && (a8(a7, 0.0) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x271, 0, "user interrupt", v27);
    goto LABEL_12;
  }

  if (a5)
  {
    if (malloc_type_malloc(DWORD2(v53[1]), 0xF93785E2uLL))
    {
      operator new();
    }

    v34 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v34, "malloc", v35);
    v36 = __error();
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x27B, *v36, "malloc", v37);
    goto LABEL_12;
  }

  if (atomic_fetch_add_explicit(&v62 + 1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) >= 1)
  {
    do
    {
      amber::Sem::acquire(v57);
    }

    while (atomic_fetch_add_explicit(&v62 + 1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) > 0);
  }

  if (atomic_fetch_add_explicit(&v50 + 1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) >= 1)
  {
    do
    {
      amber::Sem::acquire(v45);
    }

    while (atomic_fetch_add_explicit(&v50 + 1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed) > 0);
  }

  v29 = atomic_load(&v56);
  if (v29 || (v30 = atomic_load(&v44)) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x28A, 0, "copy requests reported errors", v27);
    goto LABEL_12;
  }

  v38 = amber::BaseObject::getAttributeUInt32(a3, 202);
  if ((v38 & 2) != 0)
  {
    amber::BlockDevice::flush(a3);
  }

  if (a8)
  {
    v38 = a8(a7, 100.0);
    if ((v38 & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "copy", 0x293, 0, "user interrupt", v39);
      goto LABEL_12;
    }
  }

  if (a9 >> 62)
  {
    v40 = amber::realTime(v38);
    amber::logSize("bytes copied", 0, 1u);
    amber::logSize("src read", v63[0], 1u);
    amber::logSize("dst write", v63[1], 1u);
    amber::logSize("dst write zeroes", v64[0], 1u);
    amber::logSize("dst trim", v64[1], 1u);
    amber::logSize("dst skip", v65, 1u);
    amber::logSpeed("copy", 0, v40 - v19);
  }

  v23 = 0;
LABEL_13:
  std::condition_variable::~condition_variable(&v47);
  std::mutex::~mutex((v45 + 8));
  std::condition_variable::~condition_variable(&v59);
  std::mutex::~mutex((v57 + 8));
  return v23;
}

void sub_296990F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  std::condition_variable::~condition_variable((v54 + 112));
  std::mutex::~mutex((v54 + 48));
  std::condition_variable::~condition_variable(&a54);
  std::mutex::~mutex(&a46);
  _Unwind_Resume(a1);
}

uint64_t AmberBlockDeviceCopy(amber *a1, amber::BlockDevice *a2, amber::BaseObject *a3, amber::BlockDevice *a4, const char *a5, uint64_t a6, const char *a7, uint64_t (*a8)(uint64_t, double), int (*a9)(void *, float), unint64_t a10)
{
  if (a1 && a3)
  {

    return amber::copy(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "AmberBlockDeviceCopy", 0x2B4, 0, "invalid device type", a7, a8);
    return 0xFFFFFFFFLL;
  }
}

uint64_t BlockDeviceCopyReadRequestState::processReply(BlockDeviceCopyReadRequestState *this, amber::BlockDeviceRequest *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 7);
  v9 = *(a2 + 8);
  v10 = *(a2 + 6);
  v11 = *(this + 4);
  v12 = *(this + 5);
  v13 = *(a2 + 14);
  v14 = *(this + 16);
  v173[0] = &unk_2A1DDFD28;
  v173[2] = 0;
  v173[3] = 0;
  v173[1] = off_2A1DDFD48;
  v173[5] = 0;
  v173[6] = 0;
  v173[4] = &off_2A1DDFDA8;
  v173[7] = &off_2A1DDFC68;
  v174 = 0u;
  v175 = 0u;
  v176 = 1;
  v177 = 0;
  v168[0] = &unk_2A1DDFD28;
  v168[2] = 0;
  v168[3] = 0;
  v168[1] = off_2A1DDFD48;
  v168[5] = 0;
  v168[6] = 0;
  v168[4] = &off_2A1DDFDA8;
  v168[7] = &off_2A1DDFC68;
  v169 = 0u;
  v170 = 0u;
  v171 = 1;
  v172 = 0;
  if (v8 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "processReply", 0x91, 0, "read request failed", a7);
    goto LABEL_14;
  }

  if (v8 == 2)
  {
    v15 = *this;
    atomic_fetch_add_explicit(this + 26, v13, memory_order_relaxed);
    v165 = v13 + v14 - 1;
    v16 = v165 / v14;
    if ((amber::Buffer::resize(v173, v16, a3, a4, a5, a6, a7) & 0x80000000) != 0 || (amber::Buffer::resize(v168, v16, v17, v18, v19, v20, v21) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "processReply", 0x9A, 0, "malloc", v21);
      goto LABEL_14;
    }

    if (*(this + 68) == 1)
    {
      v163 = v13;
      v27 = v15;
      v15 = *(this + 16);
      v28 = *(this + 2);
      amber::Buffer::buf(v166, v173, v21);
      amber::MutableMemoryView::view(v167, v166, v175, *(&v175 + 1) - v175, v29);
      v30 = (*(*v28 + 32))(v28, v10 / v15, v10 / v15 + v16, v167, 0);
      LOBYTE(v15) = v27;
      v13 = v163;
      if (v30 < 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "processReply", 0x9F, 0, "getBlockState (SRC)", v21);
        goto LABEL_14;
      }
    }

    v31 = v12 + v10 - v11;
    if (*(this + 69) == 1 && (v15 & 2) != 0)
    {
      v32 = *(this + 16);
      v33 = *(this + 3);
      amber::Buffer::buf(v166, v168, v21);
      amber::MutableMemoryView::view(v167, v166, v170, *(&v170 + 1) - v170, v34);
      if (((*(*v33 + 32))(v33, v31 / v32, v31 / v32 + v16, v167, 0) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "processReply", 0xA5, 0, "getBlockState (DST)", v21);
        goto LABEL_14;
      }

      if ((*(this + 69) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (!*(this + 69))
    {
LABEL_51:
      if ((*(this + 69) & 1) != 0 && (*(this + 68) & 1) != 0 && (v15 & 2) != 0)
      {
        if (v14 <= v165)
        {
          v88 = 0;
          do
          {
            v89 = *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v173, v88, v23, v24, v25, v26, v21);
            v95 = amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v168, v88, v90, v91, v92, v93, v94);
            v96 = v89 & 3;
            if (v96)
            {
              v97 = *v95;
              *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v168, v88, v23, v24, v25, v26, v21) = v97 & 0xFC | v96;
            }

            ++v88;
          }

          while (v88 < v16);
        }
      }

      else if (*(this + 68))
      {
        v98 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v168, v22, v23, v24, v25, v26, v21);
        v105 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v173, v99, v100, v101, v102, v103, v104);
        memcpy(v98, v105, v16);
      }

      else
      {
        v106 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v168, v22, v23, v24, v25, v26, v21);
        memset(v106, 2, v16);
      }

      if (v14 <= v165)
      {
        v107 = 0;
        do
        {
          v108 = *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v168, v107, v23, v24, v25, v26, v21);
          if ((v108 & 3) == 2)
          {
            v109 = *(this + 16);
            v110 = &v9[(v109 * v107)];
            v111 = &v110[v109];
            v112 = v9 + v109 * v107;
            while (v110 < v111 && (v112 & 7) != 0)
            {
              v113 = *v110++;
              ++v112;
              if (v113)
              {
                goto LABEL_78;
              }
            }

            while ((v110 + 8) <= v111)
            {
              v114 = *v110;
              v110 += 8;
              if (v114)
              {
                goto LABEL_78;
              }
            }

            while (v110 < v111)
            {
              if (*v110++)
              {
                goto LABEL_78;
              }
            }

            *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v168, v107, v23, v24, v25, v26, v21) = v108 & 0xFC | 1;
          }

LABEL_78:
          ++v107;
        }

        while (v107 < v16);
      }

      if ((*(this + 69) & 1) != 0 && (v116 = *(this + 16), v117 = *(this + 3), amber::Buffer::constBuf(v166, v168, v21), amber::ConstMemoryView::view(v167, v166, v170, *(&v170 + 1) - v170, v118), ((*(*v117 + 40))(v117, v31 / v116, v31 / v116 + v16, v167, 0) & 0x80000000) != 0))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "processReply", 0x141, 0, "setBlockState (DST)", v21);
      }

      else
      {
        v119 = *(this + 13);
        if (*(this + 14) == v119)
        {
          v120 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v168, v22, v23, v24, v25, v26, v21);
          v121 = dstRequestCommand(v120, v16, *(this + 60), *(this + 61));
          switch(v121)
          {
            case 2:
              v122 = 216;
              goto LABEL_118;
            case 4:
              v122 = 232;
              goto LABEL_118;
            case 6:
              v122 = 224;
LABEL_118:
              atomic_fetch_add_explicit((this + v122), v13, memory_order_relaxed);
              goto LABEL_119;
          }

          atomic_fetch_add_explicit(this + 30, v13, memory_order_relaxed);
          if (v121 != -1)
          {
LABEL_119:
            operator new();
          }

          goto LABEL_121;
        }

        v123 = v119 / *(this + 16);
        if (v123 <= 1)
        {
          v124 = 1;
        }

        else
        {
          v124 = v123;
        }

        if (v14 > v165)
        {
          goto LABEL_90;
        }

        v139 = 0;
        while (1)
        {
          v140 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v168, v22, v23, v24, v25, v26, v21);
          if (v16 >= v139 + v124)
          {
            v141 = v139 + v124;
          }

          else
          {
            v141 = v16;
          }

          v148 = dstRequestCommand((v140 + v139), v141 - v139, *(this + 60), *(this + 61));
          do
          {
            v149 = v141;
            if (v141 >= v16)
            {
              break;
            }

            v150 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v168, v142, v143, v144, v145, v146, v147);
            if (v16 >= v141 + v124)
            {
              v141 += v124;
            }

            else
            {
              v141 = v16;
            }
          }

          while (dstRequestCommand((v150 + v149), v141 - v149, *(this + 60), *(this + 61)) == v148);
          v151 = *(this + 16) * (v149 - v139);
          v152 = (this + 224);
          if (v148 == 6 || (v152 = (this + 232), v148 == 4))
          {
            atomic_fetch_add_explicit(v152, v151, memory_order_relaxed);
LABEL_111:
            operator new();
          }

          if (v148 == 2)
          {
            break;
          }

          atomic_fetch_add_explicit(this + 30, v13, memory_order_relaxed);
          if (v148 != -1)
          {
            goto LABEL_111;
          }

          BlockDeviceCopyWriteRequestState::updateProgress(*(this + 1), v151);
          v139 = v149;
          if (v149 >= v16)
          {
            goto LABEL_90;
          }
        }

        atomic_fetch_add_explicit(this + 27, v151, memory_order_relaxed);
        v153 = malloc_type_malloc(v151, 0xF93785E2uLL);
        if (v153)
        {
          memcpy(v153, &v9[*(this + 16) * v139], v151);
          operator new();
        }

        v160 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/.././Memory/./Malloc.hpp", "malloc", 0x1F, *v160, "malloc", v161);
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "processReply", 0x19C, 0, "malloc", v162);
      }

LABEL_14:
      v35 = 1;
      goto LABEL_91;
    }

    if (*(this + 68) == 1 && (v15 & 2) != 0)
    {
      if (v14 > v165)
      {
        goto LABEL_121;
      }

      v164 = v15;
      v36 = 0;
      v37 = 0;
      v38 = 1;
      do
      {
        v39 = *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v173, v36, v23, v24, v25, v26, v21);
        v38 &= (v39 & 3) == 0;
        v45 = (*amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v168, v36, v40, v41, v42, v43, v44) & 3) == 2 && (v39 & 3) == 0;
        v37 |= v45;
        ++v36;
      }

      while (v36 < v16);
      LOBYTE(v15) = v164;
      if (v38)
      {
LABEL_121:
        BlockDeviceCopyWriteRequestState::updateProgress(*(this + 1), v13);
        goto LABEL_90;
      }

      if (v37)
      {
        amber::Buffer::Buffer(v166);
        if ((amber::Buffer::reserveEndCapacity(v166, v13, v46, v47, v48, v49, v50) & 0x80000000) != 0 || (v57 = *(this + 3), v58 = amber::BufferProtocol<amber::Buffer>::end(v166, v51, v52, v53, v54, v55, v56), amber::BlockDevice::read(v57, v58, v13, v31, 0) != v13) || (amber::Buffer::grow(v166, v13, v59, v60, v61, v62, v56) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockDevices/BlockDeviceCopy.cpp", "processReply", 0xDF, 0, "read dst data", v56);
          amber::Buffer::~Buffer(v166, v154, v155, v156, v157, v158, v159);
          goto LABEL_14;
        }

        if (v14 <= v165)
        {
          v68 = 0;
          do
          {
            v69 = *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v173, v68, v64, v65, v66, v67, v56);
            v75 = *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v168, v68, v70, v71, v72, v73, v74) & 3;
            if ((v69 & 3) == 0 && v75 == 2)
            {
              v77 = *(this + 16);
              v78 = amber::MutableMemoryViewConvertible<amber::Buffer>::begin(v166, v63, v64, v65, v66, v67, v56);
              memcpy(&v9[(v77 * v68)], (v78 + (v77 * v68)), *(this + 16));
            }

            ++v68;
          }

          while (v68 < v16);
        }

        amber::Buffer::~Buffer(v166, v63, v64, v65, v66, v67, v56);
      }

      if (v14 <= v165)
      {
        v79 = 0;
        do
        {
          v80 = *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v173, v79, v23, v24, v25, v26, v21);
          v86 = *amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](v168, v79, v81, v82, v83, v84, v85) & 3;
          if ((v80 & 3) == 0 && v86 == 1)
          {
            bzero(&v9[(*(this + 16) * v79)], *(this + 16));
          }

          ++v79;
        }

        while (v79 < v16);
      }
    }

    goto LABEL_51;
  }

LABEL_90:
  v35 = 0;
LABEL_91:
  free(v9);
  amber::Sem::release((this + 80));
  if (v35)
  {
    v131 = 0;
    atomic_compare_exchange_strong(this + 18, &v131, 1u);
  }

  amber::Buffer::~Buffer(v168, v125, v126, v127, v128, v129, v130);
  amber::Buffer::~Buffer(v173, v132, v133, v134, v135, v136, v137);
  return 0;
}

void sub_296991C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  amber::Buffer::~Buffer(&a30, a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer((v30 - 192), v32, v33, v34, v35, v36, v37);
  _Unwind_Resume(a1);
}

uint64_t BlockDeviceCopyWriteRequestState::updateProgress(uint64_t this, unint64_t a2)
{
  atomic_fetch_add_explicit((this + 8), a2, memory_order_relaxed);
  v2 = *(this + 24);
  if (v2)
  {
    v3 = this;
    if (*this)
    {
      this = v2(*(this + 16), (*(this + 8) * 100.0) / *this);
      if ((this & 0x80000000) != 0)
      {
        v4 = 0;
        atomic_compare_exchange_strong((v3 + 32), &v4, 1u);
      }
    }
  }

  return this;
}

uint64_t amber::BufferProtocol<amber::Buffer>::end(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::buf(v11, a1, a7);
  amber::MutableMemoryView::operator+(v11, *(a1 + 88), v8, v10);
  return v10[1];
}

uint64_t dstRequestCommand(char *a1, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *a1++;
      v7 = v6 & 3;
      if (v7 > 1)
      {
        if (v7 != 3)
        {
          return 2;
        }
      }

      else
      {
        if (v7)
        {
          v4 = 1;
        }

        v5 = 0;
      }

      --a2;
    }

    while (a2);
    if (v4)
    {
      v8 = a4 == 0;
      v9 = 6;
      goto LABEL_12;
    }

    if (a3)
    {
      result = 4;
    }

    else
    {
      result = 2;
    }

    if ((v5 & 1) == 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = a3 == 0;
    v9 = 4;
LABEL_12:
    if (v8)
    {
      return 2;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

uint64_t BlockDeviceCopyWriteRequestState::processReply(atomic_uint *this, amber::BlockDeviceRequest *a2)
{
  v4 = *(a2 + 8);
  if ((*(a2 + 7) & 0x80000000) != 0)
  {
    v5 = 0;
    atomic_compare_exchange_strong(this + 8, &v5, 1u);
  }

  free(v4);
  amber::Sem::release((this + 10));
  BlockDeviceCopyWriteRequestState::updateProgress(this, *(a2 + 14));
  return 0;
}

uint64_t amber::getDAWToken(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, const char *a7)
{
  v40[1] = *MEMORY[0x29EDCA608];
  if (*(a5 + 23) < 0)
  {
    **a5 = 0;
    *(a5 + 8) = 0;
    if ((a6 & 8) == 0)
    {
      goto LABEL_3;
    }

LABEL_18:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticatorAuthServices.mm", "getDAWToken", 0x62, 0, "user flags do not allow running AuthenticationServices", a7);
    return 0xFFFFFFFFLL;
  }

  *a5 = 0;
  *(a5 + 23) = 0;
  if ((a6 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v10 = [MEMORY[0x29EDB8E70] URLWithString:{@"https://sso.corp.apple.com/authenticate", a4}];
  v11 = objc_alloc_init(AmberDylibAppleConnectSSOAuthenticator);
  v12 = [MEMORY[0x29EDB84D8] authorizationProviderWithIdentityProviderURL:v10];
  if ([v12 canPerformAuthorization])
  {
    v39 = [v12 createRequest];
    v14 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    if (a1 && *a1)
    {
      v15 = MEMORY[0x29EDBA120];
      v16 = [MEMORY[0x29EDBA0F8] stringWithCString:a1 encoding:4];
      v17 = [v15 queryItemWithName:@"environmentIdentifier" value:v16];
      [v14 addObject:v17];
    }

    if (a2 && *a2)
    {
      v18 = MEMORY[0x29EDBA120];
      v19 = [MEMORY[0x29EDBA0F8] stringWithCString:a2 encoding:4];
      v20 = [v18 queryItemWithName:@"applicationIdentifier" value:v19];
      [v14 addObject:v20];
    }

    v21 = [MEMORY[0x29EDBA120] queryItemWithName:@"interactivity" value:@"0"];
    [v14 addObject:v21];

    v22 = [MEMORY[0x29EDBA120] queryItemWithName:@"DAWRequest" value:@"1"];
    [v14 addObject:v22];

    [v39 setAuthorizationOptions:v14];
    v23 = objc_alloc(MEMORY[0x29EDB84C8]);
    v40[0] = v39;
    v24 = [MEMORY[0x29EDB8D80] arrayWithObjects:v40 count:1];
    v25 = [v23 initWithAuthorizationRequests:v24];

    [v25 setDelegate:v11];
    v26 = amber::realTime([v25 performRequests]) + 30.0;
    while (![(AmberDylibAppleConnectSSOAuthenticator *)v11 done])
    {
      v27 = [MEMORY[0x29EDB8E48] currentRunLoop];
      v28 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSinceNow:0.4];
      [v27 runUntilDate:v28];

      if (amber::realTime(v29) > v26)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticatorAuthServices.mm", "getDAWToken", 0x89, 0, "operation timed out", v30);
        break;
      }
    }

    v32 = [(AmberDylibAppleConnectSSOAuthenticator *)v11 token];
    if (v32 && ([(AmberDylibAppleConnectSSOAuthenticator *)v11 error], v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 == 0, v33, v32, v34))
    {
      v36 = [(AmberDylibAppleConnectSSOAuthenticator *)v11 token];
      v37 = v36;
      MEMORY[0x29C25BF00](a5, [v36 UTF8String]);

      v35 = 0;
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticatorAuthServices.mm", "getDAWToken", 0x8C, 0, "SSO authentication request failed", v31);
      v35 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/HTTP/HTTPAuthenticatorAuthServices.mm", "getDAWToken", 0x67, 0, "appleconnect not supported", v13);
    v35 = 0xFFFFFFFFLL;
  }

  return v35;
}

amber::BlockCache *amber::BlockCache::BlockCache(amber::BlockCache *this, unint64_t a2, int a3)
{
  *this = &unk_2A1DE19B0;
  *(this + 1) = a2;
  *(this + 4) = a3;
  *(this + 24) = xmmword_296A14210;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 15) = 0;
  *(this + 32) = 1065353216;
  *(this + 17) = 0;
  v5 = (this + 136);
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = -1;
  *(this + 21) = -1;
  *(this + 22) = -1;
  std::vector<amber::BlockCache::LocationData>::resize(this + 17, a2);
  *(this + 22) = 0;
  if (a2)
  {
    v6 = (*v5 + 16);
    v7 = 1;
    do
    {
      if (v7 == a2)
      {
        v8 = -1;
      }

      else
      {
        v8 = v7;
      }

      *(v6 - 2) = -1;
      *(v6 - 1) = v8;
      *v6 = -1;
      v6 += 3;
      ++v7;
    }

    while (v7 - a2 != 1);
  }

  return this;
}

void sub_29699279C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 144) = v4;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::~__hash_table(v1 + 96);
  std::mutex::~mutex((v1 + 32));
  _Unwind_Resume(a1);
}

void std::vector<amber::BlockCache::LocationData>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<amber::BlockCache::LocationData>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

void amber::BlockCache::~BlockCache(amber::BlockCache *this)
{
  *this = &unk_2A1DE19B0;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::~__hash_table(this + 96);
  std::mutex::~mutex((this + 32));
}

uint64_t amber::BlockCache::read(amber::BlockCache *this, unint64_t a2, const amber::MutableMemoryView *a3)
{
  v19 = a2;
  std::mutex::lock((this + 32));
  v5 = std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::find<unsigned long long>(this + 12, &v19);
  if (v5)
  {
    v6 = v5[3];
    if (((*(*this + 16))(this, a3, v6 * *(this + 4)) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockCache.cpp", "read", 0x1D, 0, "data read failed", v7);
      v17 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = *(this + 17);
      v9 = (v8 + 24 * v6);
      v10 = *v9;
      v11 = v9[1];
      *&v20 = v9[2];
      v12 = (this + 160);
      if (v10 != -1)
      {
        v12 = (v8 + 24 * v10 + 8);
      }

      *v12 = v11;
      v13 = (v8 + 24 * v11);
      if (v11 == -1)
      {
        v13 = (this + 168);
      }

      *v13 = v10;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__erase_unique<unsigned long long>(this + 12, &v20);
      v14 = v19;
      v15 = *(this + 20);
      v16 = (*(this + 17) + 24 * v6);
      *v16 = -1;
      v16[1] = v15;
      v16[2] = v14;
      *(this + 20) = v6;
      if (*(this + 21) == -1)
      {
        *(this + 21) = v6;
      }

      *&v20 = v14;
      *(&v20 + 1) = v6;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned long>>(this + 12, &v20, &v20);
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock((this + 32));
  return v17;
}

uint64_t amber::BlockCache::write(amber::BlockCache *this, unint64_t a2, const amber::ConstMemoryView *a3)
{
  v22 = a2;
  std::mutex::lock((this + 32));
  if (std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::find<unsigned long long>(this + 12, &v22))
  {
    v6 = 0;
    goto LABEL_18;
  }

  v7 = *(this + 22);
  if (v7 == -1)
  {
    atomic_fetch_add_explicit(this + 3, 1uLL, memory_order_relaxed);
    v8 = (this + 168);
    v7 = *(this + 21);
    if (v7 == -1)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockCache.cpp", "write", 0x32, 0, "invalid cache state", v5);
      goto LABEL_17;
    }

    v9 = *(this + 17);
    v10 = (v9 + 24 * v7);
    v11 = *v10;
    v12 = v10[1];
    *&v23 = v10[2];
    v13 = (this + 160);
    if (v11 != -1)
    {
      v13 = (v9 + 24 * v11 + 8);
    }

    *v13 = v12;
    v14 = (v9 + 24 * v12);
    if (v12 != -1)
    {
      v8 = v14;
    }

    *v8 = v11;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__erase_unique<unsigned long long>(this + 12, &v23);
  }

  else
  {
    *(this + 22) = *(*(this + 17) + 24 * v7 + 8);
  }

  if (((*(*this + 24))(this, a3, v7 * *(this + 4)) & 0x80000000) != 0)
  {
    v19 = *(this + 22);
    v20 = (*(this + 17) + 24 * v7);
    *v20 = -1;
    v20[1] = v19;
    v20[2] = -1;
    *(this + 22) = v7;
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/BlockCache.cpp", "write", 0x39, 0, "writing cache data", v15);
LABEL_17:
    v6 = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v16 = v22;
  v17 = *(this + 20);
  v18 = (*(this + 17) + 24 * v7);
  *v18 = -1;
  v18[1] = v17;
  v18[2] = v16;
  *(this + 20) = v7;
  if (*(this + 21) == -1)
  {
    *(this + 21) = v7;
  }

  *&v23 = v16;
  *(&v23 + 1) = v7;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned long>>(this + 12, &v23, &v23);
  v6 = 1;
LABEL_18:
  std::mutex::unlock((this + 32));
  return v6;
}

uint64_t amber::BlockCache::remove(amber::BlockCache *this, unint64_t a2)
{
  v15 = a2;
  std::mutex::lock((this + 32));
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::find<unsigned long long>(this + 12, &v15);
  if (v3)
  {
    v4 = v3[3];
    v5 = *(this + 17);
    v6 = (v5 + 24 * v4);
    v7 = *v6;
    v8 = v6[1];
    v16 = v6[2];
    v9 = (this + 160);
    if (v7 != -1)
    {
      v9 = (v5 + 24 * v7 + 8);
    }

    *v9 = v8;
    v10 = (v5 + 24 * v8);
    if (v8 == -1)
    {
      v10 = (this + 168);
    }

    *v10 = v7;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__erase_unique<unsigned long long>(this + 12, &v16);
    v11 = *(this + 22);
    v12 = (*(this + 17) + 24 * v4);
    *v12 = -1;
    v12[1] = v11;
    v12[2] = -1;
    *(this + 22) = v4;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock((this + 32));
  return v13;
}

void amber::BlockCache::appendIndices(uint64_t a1, const void **a2)
{
  std::mutex::lock((a1 + 32));
  std::vector<unsigned long long>::reserve(a2, *(a1 + 120) + ((a2[1] - *a2) >> 3));
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = a2[1];
    do
    {
      v6 = a2[2];
      if (v5 >= v6)
      {
        v7 = *a2;
        v8 = v5 - *a2;
        v9 = v8 >> 3;
        v10 = (v8 >> 3) + 1;
        if (v10 >> 61)
        {
          std::vector<DERNode>::__throw_length_error[abi:ne200100]();
        }

        v11 = v6 - v7;
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

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2, v12);
        }

        *(8 * v9) = v4[2];
        v5 = (8 * v9 + 8);
        memcpy(0, v7, v8);
        v13 = *a2;
        *a2 = 0;
        a2[1] = v5;
        a2[2] = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v5 = v4[2];
        v5 += 8;
      }

      a2[1] = v5;
      v4 = *v4;
    }

    while (v4);
  }

  std::mutex::unlock((a1 + 32));
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__erase_unique<unsigned long long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::find<unsigned long long>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,amber::SharedMemoryMessagingBlockDevice::Message *>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned long>>(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void std::vector<amber::BlockCache::LocationData>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      memset(*(a1 + 8), 255, v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<DERNode>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<amber::BlockCache::LocationData>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    memset(v11, 255, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<amber::BlockCache::LocationData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t amber::AEBDContainer::createAndUnlockWithPrologue(amber::AEBDContainer *a1, const amber::ConstMemoryView *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = amber::AEBDContainer::createWithPrologue(a1, a2, a3, a4, a5, a6, a7);
  v11 = v9;
  if (v9)
  {
    if ((amber::EncryptedContainer::invokeEncryptionContextProc(v9, a2, a3) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "createAndUnlockWithPrologue", 0xBB, 0, "user callback error", v12);
LABEL_10:
      (*(*v11 + 8))(v11);
      return 0;
    }

    if (((*(*v11 + 40))(v11) & 0x80000000) != 0)
    {
      v14 = "invalid unlock credentials";
      v15 = 190;
      goto LABEL_9;
    }

    if ((amber::EncryptedContainer::invokeEncryptionContextProc(v11, a2, a3) & 0x80000000) != 0)
    {
      v14 = "user callback error";
      v15 = 193;
LABEL_9:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "createAndUnlockWithPrologue", v15, 0, v14, v13);
      goto LABEL_10;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "createAndUnlockWithPrologue", 0xB8, 0, "invalid profile", v10);
  }

  return v11;
}

unsigned __int8 *amber::AEBDContainer::createWithPrologue(amber::AEBDContainer *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v13 = &off_2A1DDFC68;
  v14 = *(this + 8);
  v8 = amber::AEBDContainer::prologueSizeWithMagic(this, a2, a3, a4, a5, a6, a7);
  v10 = *(this + 2);
  if (v8 == v10 && v10 < 0xFFFFFFFF)
  {
    operator new();
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "createWithPrologue", 0x11C, 0, "invalid prologue", v9);
  return 0;
}

void sub_296993C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::MutableMemoryView::operator amber::ConstMemoryView@<X0>(uint64_t result@<X0>, const char *a2@<X6>, void *a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  *a3 = &off_2A1DDFC68;
  a3[1] = v3;
  a3[2] = v4;
  if (v4 < 0 || (!v3 ? (v5 = v4 == 0) : (v5 = 1), !v5))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a2);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return result;
}

uint64_t amber::AEBDContainer::prologueSizeWithMagic(amber::AEBDContainer *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 2) <= 0xFuLL)
  {
    v7 = "truncated AEBD magic";
    v8 = 359;
LABEL_17:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "prologueSizeWithMagic", v8, 0, v7, a7);
    return -1;
  }

  v30 = &off_2A1DDFDA8;
  v31 = v29;
  v32 = 16;
  *v29 = **(this + 1);
  if (*v29 != 1145193793 || v29[6] > 0x18u || v29[7] > 0x18u)
  {
    goto LABEL_16;
  }

  v9 = (v29 | 0xC);
  v10 = 4;
  while (v10)
  {
    v11 = *v9++;
    --v10;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  amber::AEBDCrypto::init(&v30, v29[4], v29[5], a4, a5, a6, a7);
  if (v12 < 0)
  {
LABEL_16:
    v7 = "invalid magic";
    v8 = 369;
    goto LABEL_17;
  }

  if (v29[4] > 4u || ((1 << v29[4]) & 0x15) == 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = v32 + HIDWORD(v31) + v34;
  }

  if (v29[4] - 3 > 1)
  {
    if (v29[4])
    {
      v16 = 0;
    }

    else
    {
      v16 = HIDWORD(v30);
    }
  }

  else
  {
    v16 = v33;
  }

  v17 = v32 + HIDWORD(v31) + 64;
  if ((v32 + HIDWORD(v31)) >= 0xFFFFFFC0 || (v18 = __CFADD__(v17, HIDWORD(v31) << v29[6]), v19 = v17 + (HIDWORD(v31) << v29[6]), v18) || (v20 = v19 + (v32 << v29[6]), __CFADD__(v19, v32 << v29[6])))
  {
    v7 = "invalid container parameters, root blob size out of range";
    v8 = 404;
    goto LABEL_17;
  }

  v21 = *&v29[8] + 16;
  if (*&v29[8] >= 0xFFFFFFF0 || (v18 = __CFADD__(v21, v14), v22 = v21 + v14, v18) || (v18 = __CFADD__(v22, v16), v23 = v22 + v16, v18) || (v18 = __CFADD__(v23, HIDWORD(v31)), v24 = v23 + HIDWORD(v31), v18) || (v18 = __CFADD__(v24, v35), v25 = v24 + v35, v18) || (v18 = __CFADD__(v25, v20), v26 = v25 + v20, v18))
  {
    v7 = "invalid container parameters, prologue size out of range";
    v8 = 414;
    goto LABEL_17;
  }

  v27 = (1 << v29[7]) - 1;
  v18 = __CFADD__(v26, v27);
  v28 = v26 + v27;
  if (v18 || (result = v28 & -(1 << v29[7]), result == -1))
  {
    v7 = "invalid prologue size";
    v8 = 418;
    goto LABEL_17;
  }

  return result;
}

unint64_t amber::ConstMemoryView::indexOf(amber::ConstMemoryView *this, const amber::ConstMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 1);
  v9 = *(this + 1);
  result = v8 - v9;
  if (v8 < v9 || v8 + *(a2 + 2) > v9 + *(this + 2))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "indexOf", 0x108, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return result;
}

uint64_t amber::ConstMemoryView::loadAssignAndUpdate<amber::KeyValueBlob>(uint64_t *a1, amber::KeyValueBlob *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a1[2] < a3)
  {
    return 0xFFFFFFFFLL;
  }

  v19[7] = v7;
  v19[8] = v8;
  amber::ConstMemoryView::first(v19, a1, a3, a7);
  if ((amber::KeyValueBlob::assign(a2, v19, v13, v14, v15, v16, v17) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v18 = a1[2] - a3;
  a1[1] += a3;
  a1[2] = v18;
  return result;
}

uint64_t amber::ConstMemoryView::loadAssignAndUpdate<amber::SecureBuffer>(uint64_t *a1, amber::Buffer *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a1[2] < a3)
  {
    return 0xFFFFFFFFLL;
  }

  v19[7] = v7;
  v19[8] = v8;
  amber::ConstMemoryView::first(v19, a1, a3, a7);
  if ((amber::BufferProtocol<amber::Buffer>::assign(a2, v19, v13, v14, v15, v16, v17) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v18 = a1[2] - a3;
  a1[1] += a3;
  a1[2] = v18;
  return result;
}

uint64_t amber::ConstMemoryView::loadAssignAndUpdate<amber::CryptoBlobBase<256u>>(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a1[2] < a3)
  {
    return 0xFFFFFFFFLL;
  }

  v19[7] = v7;
  v19[8] = v8;
  amber::ConstMemoryView::first(v19, a1, a3, a7);
  if ((amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a2 + 8, v19, v13, v14, v15, v16, v17) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v18 = a1[2] - a3;
  a1[1] += a3;
  a1[2] = v18;
  return result;
}

uint64_t amber::BufferProtocol<amber::Buffer>::assign(amber::Buffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (amber::Buffer::resize(a1, 0, a3, a4, a5, a6, a7))
  {
    return 0xFFFFFFFFLL;
  }

  if (amber::BufferProtocol<amber::Buffer>::append(a1, a2, v9, v10, v11, v12, v13))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

double amber::SecureBuffer::SecureBuffer(amber::SecureBuffer *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = off_2A1DDFD48;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = &off_2A1DDFDA8;
  *(this + 7) = &off_2A1DDFC68;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 48) = 257;
  *(this + 98) = 0;
  *this = off_2A1DDFC98;
  return result;
}

uint64_t *amber::MutableMemoryViewConvertible<amber::Buffer>::view@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X6>, uint64_t *a5@<X8>)
{
  amber::Buffer::buf(v13, a1, a4);
  amber::MutableMemoryView::view(v12, v13, a1[10], a1[11] - a1[10], v9);
  return amber::MutableMemoryView::view(a5, v12, a2, a3, v10);
}

uint64_t amber::AEBDContainer::unlockNew(amber::AEBDContainer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v143 = *MEMORY[0x29EDCA608];
  v123 = &off_2A1DDFC68;
  v124 = this + 304;
  *&v125 = 16;
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v142, &v123, a3, a4, a5, a6, a7);
  v123 = &unk_2A1DDFDD8;
  v124 = &unk_2A1DDFE08;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0;
  v104 = &unk_2A1DDFDD8;
  v105 = &unk_2A1DDFE08;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0;
  v85 = &unk_2A1DDFDD8;
  v86 = &unk_2A1DDFE08;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0;
  if ((*(this + 4785) & 1) != 0 || (*(this + 4784) & 1) == 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1B1, 0, "invalid container state", v11);
    goto LABEL_8;
  }

  v12 = *(this + 308);
  if ((v12 - 1) < 2)
  {
    if (*(this + 842) != *(this + 37))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1CD, 0, "invalid symmetric key size %zu", v11, *(this + 842));
      goto LABEL_8;
    }

    if (*(this + 982) != *(this + 45))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1CE, 0, "invalid signing public key size %zu", v11, *(this + 982));
      goto LABEL_8;
    }

    if (*(this + 912) != *(this + 43))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1CF, 0, "invalid recipient public key size %zu", v11, *(this + 912));
      goto LABEL_8;
    }

    v37 = amber::AEBDCrypto::DeriveMainKeySymmetric(this + 36, this + 4472, v142, this + 320, this + 3352, this + 3912, this + 600);
    if ((v37 & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1D8, 0, "derive main key: %d", v42, v37);
      goto LABEL_8;
    }
  }

  else if ((v12 - 3) >= 2)
  {
    if (*(this + 308))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1EE, 0, "invalid profile: %u", v11, *(this + 308));
      goto LABEL_8;
    }

    if ((amber::AEBDCrypto::RNGBlob(this + 144, this + 880, *(this + 37), v8, v9, v10, v11) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1BA, 0, "gen key", v43);
      goto LABEL_8;
    }

    if (*(this + 224) != *(this + 49))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1BC, 0, "invalid encryption data size %zu", v43, *(this + 224));
      goto LABEL_8;
    }

    if (*(this + 842))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1BD, 0, "symmetric key not empty", v43);
      goto LABEL_8;
    }

    if (*(this + 982) != *(this + 45))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1BE, 0, "invalid signing public key size %zu", v43, *(this + 982));
      goto LABEL_8;
    }

    if (*(this + 912) != *(this + 43))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1BF, 0, "invalid recipient public key size %zu", v43, *(this + 912));
      goto LABEL_8;
    }

    v45 = amber::AEBDCrypto::DeriveMainKeySymmetric(this + 36, this + 4472, v142, this + 320, this + 880, this + 3912, this + 600);
    if ((v45 & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1C8, 0, "derive main key: %d", v42, v45);
      goto LABEL_8;
    }
  }

  else
  {
    if (*(this + 842))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1DD, 0, "symmetric key not empty", v11);
      goto LABEL_8;
    }

    if (*(this + 982) != *(this + 45))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1DE, 0, "invalid signing public key size %zu", v11, *(this + 982));
      goto LABEL_8;
    }

    if (*(this + 912) != *(this + 43))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1DF, 0, "invalid recipient public key size %zu", v11, *(this + 912));
      goto LABEL_8;
    }

    v44 = amber::AEBDCrypto::DeriveMainKeyDHESender(this + 144, this + 4472, v142, this + 320, this + 880, this + 3632, this + 3912, this + 600);
    if ((v44 & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1E9, 0, "derive main key: %d", v42, v44);
      goto LABEL_8;
    }

    if (*(this + 224) != *(this + 49))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1EC, 0, "invalid encryption credentials", v42);
      goto LABEL_8;
    }
  }

  v46 = *(this + 308);
  if (v46 <= 4 && ((1 << v46) & 0x15) != 0 && (amber::AEBDCrypto::DeriveSignatureKeyWithMainKey(this + 144, this + 4192, this + 4472, v39, v40, v41, v42) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1F3, 0, "derive signature key", v42);
  }

  else
  {
    v47 = *(this + 310);
    if ((amber::BufferProtocol<amber::Buffer>::assignZero((this + 2608), (*(this + 39) << v47), v38, v39, v40, v41, v42) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::assignZero((this + 2712), (*(this + 40) << v47), v48, v49, v50, v51, v52) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::assignZero((this + 2504), (1 << v47), v53, v54, v55, v56, v52) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x1FA, 0, "alloc cluster data", v52);
    }

    else
    {
      amber::MutableMemoryViewConvertible<amber::Buffer>::first(this + 313, *(this + 466), v52, &v82);
      memset(v83, 3, v84);
      v57 = *(this + 466) * *(this + 444);
      if ((amber::BufferProtocol<amber::Buffer>::assignZero((this + 2936), (v57 * *(this + 41)), v58, v59, v60, v61, v62) & 0x80000000) == 0 && (amber::BufferProtocol<amber::Buffer>::assignZero((this + 3040), (v57 * *(this + 39)), v63, v64, v65, v66, v19) & 0x80000000) == 0 && (amber::BufferProtocol<amber::Buffer>::assignZero((this + 3144), (v57 * *(this + 40)), v67, v68, v69, v70, v19) & 0x80000000) == 0 && (amber::BufferProtocol<amber::Buffer>::assignZero((this + 3248), (8 * v57), v71, v72, v73, v74, v19) & 0x80000000) == 0 && (amber::NBitVector<2u>::assignZero(this + 2816, v57 * *(this + 443), v75, v76, v77, v78, v19) & 0x80000000) == 0)
      {
        v20 = 0;
        *(this + 2392) = 256;
        goto LABEL_9;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockNew", 0x204, 0, "alloc segment data", v19);
    }
  }

LABEL_8:
  *(this + 1122) = 0;
  v79 = &off_2A1DDFDA8;
  v80 = this + 4492;
  v81 = 256;
  amber::MutableMemoryView::operator+(&v79, 0, v13, &v82);
  bzero(v83, v84);
  v20 = 0xFFFFFFFFLL;
LABEL_9:
  amber::Buffer::reset((this + 1160), v14, v15, v16, v17, v18, v19);
  amber::Buffer::reset((this + 1264), v21, v22, v23, v24, v25, v26);
  amber::Buffer::reset((this + 1368), v27, v28, v29, v30, v31, v32);
  *(this + 372) = 0;
  v79 = &off_2A1DDFDA8;
  v80 = this + 1492;
  v81 = 256;
  amber::MutableMemoryView::operator+(&v79, 0, v33, &v82);
  bzero(v83, v84);
  *(this + 842) = 0;
  v79 = &off_2A1DDFDA8;
  v80 = this + 3372;
  v81 = 256;
  amber::MutableMemoryView::operator+(&v79, 0, v34, &v82);
  bzero(v83, v84);
  *(this + 912) = 0;
  v79 = &off_2A1DDFDA8;
  v80 = this + 3652;
  v81 = 256;
  amber::MutableMemoryView::operator+(&v79, 0, v35, &v82);
  bzero(v83, v84);
  amber::zero(void *,unsigned long)::memset_func(this + 4768, 0, 16);
  return v20;
}

uint64_t amber::NBitVector<2u>::assignZero(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 < 0x100000000000001)
  {
    v9 = (a2 & 0x1FFFFFFFFFFFFE0) + 32;
    if ((a2 & 0x1F) == 0)
    {
      v9 = a2;
    }

    if ((amber::BufferProtocol<amber::Buffer>::assignZero((a1 + 16), (v9 >> 2), a3, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      result = 0;
      *(a1 + 8) = a2;
      return result;
    }
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "assignZero", 0x133, 0, "invalid block count", a7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::unlockExisting(amber::AEBDContainer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v244 = *MEMORY[0x29EDCA608];
  v8 = this + 304;
  v224 = &off_2A1DDFC68;
  v225 = this + 304;
  *&v226 = 16;
  amber::CryptoBlobBase<256u>::CryptoBlobBase(v243, &v224, a3, a4, a5, a6, a7);
  if ((*(this + 4785) & 1) == 0 && *(this + 4784) != 1)
  {
    v33 = *(this + 308);
    if ((v33 - 1) < 2)
    {
      if (*(this + 842) != *(this + 37) || *(this + 982) != *(this + 45) || *(this + 912) != *(this + 43))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x237, 0, "invalid encryption credentials", v9);
        goto LABEL_4;
      }

      if ((amber::AEBDCrypto::DeriveMainKeySymmetric(this + 36, this + 4472, v243, this + 320, this + 3352, this + 3912, this + 600) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x23F, 0, "derive main key", v40);
        goto LABEL_4;
      }
    }

    else if ((v33 - 3) >= 2)
    {
      if (*(this + 308))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x256, 0, "invalid profile: %u", v9, *(this + 308));
        goto LABEL_4;
      }

      if (*(this + 224) != *(this + 49) || *(this + 842) || *(this + 982) != *(this + 45) || *(this + 912) != *(this + 43))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x227, 0, "invalid encryption credentials", v9);
        goto LABEL_4;
      }

      if ((amber::AEBDCrypto::DeriveMainKeySymmetric(this + 36, this + 4472, v243, this + 320, this + 880, this + 3912, this + 600) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x22F, 0, "derive main key", v40);
        goto LABEL_4;
      }
    }

    else
    {
      if (*(this + 842) || *(this + 982) != *(this + 45) || *(this + 224) != *(this + 49) || *(this + 912) != *(this + 43) || (v34 = *(this + 597)) == 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x249, 0, "invalid encryption credentials", v9);
        goto LABEL_4;
      }

      if ((amber::AEBDCrypto::DeriveMainKeyDHERecipient(this + 36, this + 4472, v243, this + 320, this + 880, this + 3632, *(this + 596), v34, this + 3912, this + 600) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x254, 0, "derive main key", v40);
        goto LABEL_4;
      }
    }

    v41 = *(this + 308);
    v42 = 1;
    if (v41 > 4 || ((1 << v41) & 0x15) == 0)
    {
      goto LABEL_49;
    }

    v224 = &unk_2A1DDFDD8;
    v225 = &unk_2A1DDFE08;
    v226 = 0u;
    v227 = 0u;
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v231 = 0u;
    v232 = 0u;
    v233 = 0u;
    v234 = 0u;
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0;
    v205 = &unk_2A1DDFDD8;
    v206 = &unk_2A1DDFE08;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v223 = 0;
    v187[0] = &unk_2A1DDFDD8;
    v187[1] = &unk_2A1DDFE08;
    v188 = 0u;
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0;
    v185[0] = &unk_2A1DDFDD8;
    v185[1] = &unk_2A1DDFE08;
    memset(&v185[2], 0, 256);
    v186 = 0;
    v43 = *(this + 39);
    v44 = *(this + 40);
    v45 = *(this + 47);
    if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 158, v35, v36, v37, v38, v39, v40) == v44 + v43 + v45 && *(this + 372) == *(this + 46))
    {
      amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(this + 158, v183, v46);
      if ((amber::ConstMemoryView::loadAssignAndUpdate<amber::CryptoBlobBase<256u>>(v183, &v205, *(this + 39), v47, v48, v49, v50) & 0x80000000) != 0 || (amber::ConstMemoryView::loadAssignAndUpdate<amber::CryptoBlobBase<256u>>(v183, v187, *(this + 40), v51, v52, v53, v54) & 0x80000000) != 0 || (amber::ConstMemoryView::loadAssignAndUpdate<amber::CryptoBlobBase<256u>>(v183, v185, *(this + 47), v55, v56, v57, v54) & 0x80000000) != 0 || v184)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x26E, 0, "invalid encrypted signature blob", v54);
      }

      else
      {
        if ((amber::AEBDCrypto::DeriveSignatureAEADKeyWithMainKey(this + 144, &v224, this + 4472, &v205, v58, v59, v54) & 0x80000000) == 0)
        {
          v182[0] = &off_2A1DDFDA8;
          v182[1] = &v185[2] + 4;
          v182[2] = LODWORD(v185[2]);
          v181[1] = 0;
          v181[2] = 0;
          v181[0] = &off_2A1DDFC68;
          if ((amber::AEBDCrypto::AEADDecrypt(this + 144, v182, v187, &v224, v181) & 0x80000000) == 0 && (amber::AEBDCrypto::DSVerify(this + 144, v185, this + 3912, this + 1472) & 0x80000000) == 0)
          {
            v60 = 0;
            v42 = 1;
            goto LABEL_46;
          }
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x274, 0, "signature verification failed", v10);
      }
    }

    else
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x266, 0, "invalid encrypted signature blob size", v46);
    }

    v42 = 0;
    v60 = 4;
LABEL_46:
    if (v60)
    {
      if (!v42)
      {
        goto LABEL_4;
      }

LABEL_48:
      v16 = 0;
      goto LABEL_5;
    }

LABEL_49:
    amber::SecureBuffer::SecureBuffer(v187);
    v224 = &unk_2A1DDFDD8;
    v225 = &unk_2A1DDFE08;
    v226 = 0u;
    v227 = 0u;
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v231 = 0u;
    v232 = 0u;
    v233 = 0u;
    v234 = 0u;
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0;
    v205 = &unk_2A1DDFDD8;
    v206 = &unk_2A1DDFE08;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v67 = *(this + 310);
    v221 = 0u;
    v222 = 0u;
    v68 = *(this + 39) * (1 << v67);
    v223 = 0;
    if ((v68 & 0xFFFFFFFF00000000) != 0 || (v69 = __CFADD__(v68, 64), v70 = v68 + 64, v69) || (v71 = *(this + 40) * (1 << v67), (v71 & 0xFFFFFFFF00000000) != 0) || __CFADD__(v71, v70) || amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 145, v61, v62, v63, v64, v65, v66) != v71 + v70)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x285, 0, "invalid encrypted root blob sizes", v66);
    }

    else
    {
      v77 = amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::size(this + 1, v72, v73, v74, v75, v76, v66);
      v84 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(this + 171, v78, v79, v80, v81, v82, v83);
      if (__CFADD__(v84, v77) || (amber::Buffer::reserve(v187, v84 + v77, v85, v86, v87, v88, v89) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::operator amber::ConstMemoryView(this + 1, v89, v185), (amber::BufferProtocol<amber::Buffer>::append(v187, v185, v90, v91, v92, v93, v94) & 0x80000000) != 0) || (amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(this + 171, v183, v89), (amber::BufferProtocol<amber::Buffer>::append(v187, v183, v95, v96, v97, v98, v99) & 0x80000000) != 0))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x28E, 0, "prepare aux buffer for root decryption", v89);
      }

      else if ((amber::AEBDCrypto::DerivePrologueKeyWithMainKey(this + 144, &v224, this + 4472, v100, v101, v102, v89) & 0x80000000) != 0 || (amber::AEBDCrypto::DeriveRootAEADKeyWithPrologueKey(this + 144, &v205, &v224, this + 1880, v103, v104, v105) & 0x80000000) != 0 || (amber::MutableMemoryViewConvertible<amber::Buffer>::zMutableMemoryView(this + 145, v105, v185), amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(v187, v183, v106), (amber::AEBDCrypto::AEADDecrypt(this + 144, v185, this + 2160, &v205, v183) & 0x80000000) != 0))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x297, 0, "root decryption", v105);
      }

      else
      {
        amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(this + 145, v185, v105);
        v183[0] = &off_2A1DDFDA8;
        v183[1] = this + 1752;
        v184 = 64;
        amber::ConstMemoryView::first(v182, v185, 0x40uLL, v107);
        amber::copy(v183, v182, v108, v109, v110, v111, v112);
        if (!amber::AEBDContainer::rootHeaderIsValid(v8, this + 1752, v113, v114, v115, v116, v117) || ((*(*this + 120))(this) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x2A1, 0, "invalid root header", v118);
        }

        else
        {
          amber::ConstMemoryView::operator+=(v185, 0x40uLL, v119, v120, v121, v122, v118);
          v123 = (*(this + 39) << v67);
          amber::ConstMemoryView::first(v183, v185, v123, v124);
          if ((amber::BufferProtocol<amber::Buffer>::assign((this + 2608), v183, v125, v126, v127, v128, v129) & 0x80000000) != 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x2A7, 0, "alloc cluster data", v134);
          }

          else
          {
            amber::ConstMemoryView::operator+=(v185, v123, v130, v131, v132, v133, v134);
            amber::ConstMemoryView::first(v183, v185, (*(this + 40) << v67), v135);
            if ((amber::BufferProtocol<amber::Buffer>::assign((this + 2712), v183, v136, v137, v138, v139, v140) & 0x80000000) != 0)
            {
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x2AD, 0, "alloc cluster data", v145);
            }

            else
            {
              if ((amber::BufferProtocol<amber::Buffer>::assignZero((this + 2504), (1 << v67), v141, v142, v143, v144, v145) & 0x80000000) == 0)
              {
                amber::Buffer::~Buffer(v187, v146, v147, v148, v149, v150, v151);
                v152 = *(this + 466) * *(this + 444);
                if ((amber::BufferProtocol<amber::Buffer>::assignZero((this + 2936), (v152 * *(this + 41)), v153, v154, v155, v156, v157) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::assignZero((this + 3040), (v152 * *(this + 39)), v158, v159, v160, v161, v10) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::assignZero((this + 3144), (v152 * *(this + 40)), v162, v163, v164, v165, v10) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::assignZero((this + 3248), (8 * v152), v166, v167, v168, v169, v10) & 0x80000000) != 0 || (amber::NBitVector<2u>::assignZero(this + 2816, v152 * *(this + 443), v170, v171, v172, v173, v10) & 0x80000000) != 0)
                {
                  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x2BB, 0, "alloc segment data", v10);
                  goto LABEL_4;
                }

                v174 = *(this + 308);
                if (v174 <= 4 && ((1 << v174) & 0x15) != 0 && (amber::AEBDCrypto::DeriveSignatureKeyWithMainKey(this + 144, this + 4192, this + 4472, v13, v14, v15, v10) & 0x80000000) != 0)
                {
                  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x2C0, 0, "derive signature key", v10);
                  goto LABEL_4;
                }

                *(this + 2392) = 256;
                if (!v42)
                {
                  goto LABEL_4;
                }

                goto LABEL_48;
              }

              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x2B1, 0, "alloc cluster data", v151);
            }
          }
        }
      }
    }

    amber::Buffer::~Buffer(v187, v175, v176, v177, v178, v179, v180);
    goto LABEL_4;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unlockExisting", 0x21E, 0, "invalid container state", v9);
LABEL_4:
  *(this + 1122) = 0;
  v205 = &off_2A1DDFDA8;
  v206 = this + 4492;
  *&v207 = 256;
  amber::MutableMemoryView::operator+(&v205, 0, v10, &v224);
  bzero(v225, v226);
  v16 = 0xFFFFFFFFLL;
LABEL_5:
  amber::Buffer::reset((this + 1160), v11, v12, v13, v14, v15, v10);
  amber::Buffer::reset((this + 1264), v17, v18, v19, v20, v21, v22);
  amber::Buffer::reset((this + 1368), v23, v24, v25, v26, v27, v28);
  *(this + 372) = 0;
  v205 = &off_2A1DDFDA8;
  v206 = this + 1492;
  *&v207 = 256;
  amber::MutableMemoryView::operator+(&v205, 0, v29, &v224);
  bzero(v225, v226);
  *(this + 842) = 0;
  v205 = &off_2A1DDFDA8;
  v206 = this + 3372;
  *&v207 = 256;
  amber::MutableMemoryView::operator+(&v205, 0, v30, &v224);
  bzero(v225, v226);
  *(this + 912) = 0;
  v205 = &off_2A1DDFDA8;
  v206 = this + 3652;
  *&v207 = 256;
  amber::MutableMemoryView::operator+(&v205, 0, v31, &v224);
  bzero(v225, v226);
  amber::zero(void *,unsigned long)::memset_func(this + 4768, 0, 16);
  return v16;
}

BOOL amber::AEBDContainer::rootHeaderIsValid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v24[0] = &off_2A1DDFC68;
  v24[1] = a1;
  v24[2] = 16;
  if (amber::AEBDContainer::prologueSizeWithMagic(v24, a2, a3, a4, a5, a6, a7) < 0)
  {
    return 0;
  }

  amber::AEBDCrypto::init(v25, *(a1 + 4), *(a1 + 5), v9, v10, v11, v12);
  if (v13 < 0)
  {
    return 0;
  }

  v14 = *(a2 + 16);
  if ((v14 - 262145) < 0xFFFC00FF || ((v14 + 0x7FFFF) & v14) != 0)
  {
    return 0;
  }

  result = 0;
  v16 = *(a2 + 20);
  if (v16 && (v16 & 0x1F) == 0 && v16 * v14 <= 0x10000000)
  {
    if ((*(a2 + 24) - 1048577) < 0xFFF00000 || *a2 % v14)
    {
      return 0;
    }

    v17 = *(a2 + 28);
    if (((v17 - 45) > 0x39 || ((1 << (v17 - 45)) & 0x320000000000081) == 0) && v17 != 122 && v17 != 120)
    {
      return 0;
    }

    if (*(a2 + 29) > 1u)
    {
      return 0;
    }

    v18 = (2 - a2) & 7;
    v19 = v18 + 30;
    v20 = (a2 + 30);
    result = 0;
    while (v18)
    {
      v21 = *v20++;
      --v18;
      if (v21)
      {
        return result;
      }
    }

    while (v19 < 0x39)
    {
      result = 0;
      v22 = *(a2 + v19);
      v19 += 8;
      if (v22)
      {
        return result;
      }
    }

    do
    {
      result = v19 > 0x3F;
      if (v19 > 0x3F)
      {
        break;
      }
    }

    while (!*(a2 + v19++));
  }

  return result;
}

uint64_t amber::ConstMemoryView::operator+=(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = *(result + 16);
  v8 = v7 >= a2;
  v9 = v7 - a2;
  if (!v8)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *(result + 8) += a2;
  *(result + 16) = v9;
  return result;
}

uint64_t amber::BufferProtocol<amber::CryptoBlobBase<256u>>::end(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9[0] = &off_2A1DDFDA8;
  v9[1] = a1 + 12;
  v9[2] = 256;
  amber::MutableMemoryView::operator+(v9, *(a1 + 8), a7, v8);
  return v8[1];
}

uint64_t amber::AEBDContainer::updateWithEncryptedCluster(amber::AEBDContainer *this, uint64_t a2, const amber::MutableMemoryView *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v166 = *MEMORY[0x29EDCA608];
  if (*(this + 4785))
  {
    v148[0] = &unk_2A1DDFDD8;
    v148[1] = &unk_2A1DDFE08;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0;
    v130[0] = &unk_2A1DDFDD8;
    v130[1] = &unk_2A1DDFE08;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0;
    v112[0] = &unk_2A1DDFDD8;
    v112[1] = &unk_2A1DDFE08;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0;
    v108 = 0;
    v109 = 0;
    v107 = &off_2A1DDFDA8;
    v105 = &off_2A1DDFDA8;
    v106 = 0uLL;
    v104 = 0uLL;
    v103 = &off_2A1DDFDA8;
    v101 = &off_2A1DDFDA8;
    v102 = 0uLL;
    v100 = 0uLL;
    v99 = &off_2A1DDFDA8;
    v97 = &off_2A1DDFC68;
    v98 = 0uLL;
    if (*(this + 466) <= a2 || *(a3 + 2) != *(this + 458) || (amber::AEBDContainer::loadClusterState(this, a2, v130, v112, a5, a6, a7) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "updateWithEncryptedCluster", 0x33E, 0, "invalid cluster id/size", a7);
    }

    else
    {
      v10 = *(this + 444);
      v90 = (*(this + 460) * v10);
      v11 = (v90 + 8 * v10 + *(this + 41) * v10 + *(this + 39) * v10 + *(this + 40) * v10);
      v12 = 1 << *(this + 311);
      v13 = __CFADD__(v11, v12 - 1);
      v14 = (v11 + v12 - 1) & -v12;
      if (v13)
      {
        v14 = -1;
      }

      if (v14 == *(this + 458))
      {
        v15 = (*(this + 39) * v10);
        v16 = (*(this + 41) * v10);
        v17 = (*(this + 40) * v10);
        amber::Buffer::buf(&v110, this + 354, a7);
        amber::MutableMemoryView::view(&v91, &v110, *(this + 364), *(this + 365) - *(this + 364), v18);
        amber::MutableMemoryView::view(&v94, &v91, (v90 * a2), v90, v19);
        v108 = v95;
        v109 = v96;
        v89 = (8 * v10);
        amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 406, (8 * v10 * a2), v89, v20, &v110);
        v106 = v111;
        amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 367, (v16 * a2), v16, v21, &v110);
        v104 = v111;
        amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 380, (v15 * a2), v15, v22, &v110);
        v102 = v111;
        amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 393, (v17 * a2), v17, v23, &v110);
        v100 = v111;
        if ((amber::AEBDCrypto::DeriveClusterAEADKeyWithMainKey(this + 144, v148, this + 4472, a2, v130, v24, v25) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }

        amber::MutableMemoryView::first(&v110, a3, v11, v26);
        amber::MutableMemoryView::operator+(a3, v11, v27, &v91);
        v94 = &off_2A1DDFC68;
        v95 = v92;
        v96 = v93;
        if (v93 < 0 || !v92 && v93)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v28, v89);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid args");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        if ((amber::AEBDCrypto::AEADDecrypt(this + 144, &v110, v112, v148, &v94) & 0x80000000) != 0)
        {
LABEL_22:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "updateWithEncryptedCluster", 0x356, 0, "cluster decryption", v26, v89);
        }

        else
        {
          amber::MutableMemoryView::first(&v94, a3, v11, v26);
          amber::MutableMemoryView::operator amber::ConstMemoryView(&v94, v29, &v110);
          v98 = v111;
          amber::ConstMemoryView::first(&v110, &v97, v90, v30);
          amber::copy(&v107, &v110, v31, v32, v33, v34, v35);
          amber::ConstMemoryView::operator+=(&v97, v90, v36, v37, v38, v39, v40);
          amber::ConstMemoryView::first(&v110, &v97, v89, v41);
          amber::copy(&v105, &v110, v42, v43, v44, v45, v46);
          amber::ConstMemoryView::operator+=(&v97, v89, v47, v48, v49, v50, v51);
          amber::ConstMemoryView::first(&v110, &v97, v16, v52);
          amber::copy(&v103, &v110, v53, v54, v55, v56, v57);
          amber::ConstMemoryView::operator+=(&v97, v16, v58, v59, v60, v61, v62);
          amber::ConstMemoryView::first(&v110, &v97, v15, v63);
          amber::copy(&v101, &v110, v64, v65, v66, v67, v68);
          amber::ConstMemoryView::operator+=(&v97, v15, v69, v70, v71, v72, v73);
          amber::ConstMemoryView::first(&v110, &v97, v17, v74);
          amber::copy(&v99, &v110, v75, v76, v77, v78, v79);
          amber::ConstMemoryView::operator+=(&v97, v17, v80, v81, v82, v83, v84);
          if (!*(&v98 + 1))
          {
            v86 = 0;
            goto LABEL_19;
          }

          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "updateWithEncryptedCluster", 0x35F, 0, "cluster data size mismatch", v85);
        }
      }

      else
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "updateWithEncryptedCluster", 0x348, 0, "cluster size mismatch", a7);
      }
    }

    v86 = 0xFFFFFFFFLL;
LABEL_19:
    bzero(*(a3 + 1), *(a3 + 2));
    return v86;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "updateWithEncryptedCluster", 0x327, 0, "container is not unlocked", a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::loadClusterState(unsigned int *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a1[466] <= a2)
  {
    v13 = "invalid cluster_id";
    v14 = 2113;
  }

  else
  {
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>(a1 + 326, a3, a1[39], a1[39] * a2, a5, a6, a7) & 0x80000000) == 0 && (amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>(a1 + 339, a4, a1[40], a1[40] * a2, v10, v11, a7) & 0x80000000) == 0)
    {
      return 0;
    }

    v13 = "loading cluster state";
    v14 = 2117;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "loadClusterState", v14, 0, v13, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::updateWithPadding(amber::AEBDContainer *this, const amber::MutableMemoryView *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!*(a2 + 2))
  {
    return 0;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "updateWithPadding", 0x369, 0, "invalid AEBD padding size", a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::getEncryptedPrologue(amber::AEBDContainer *this, amber::Buffer *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v305 = *MEMORY[0x29EDCA608];
  if (*(this + 4785))
  {
    v233[2] = 0;
    v233[3] = 0;
    v233[1] = off_2A1DDFD48;
    v233[5] = 0;
    v233[6] = 0;
    v233[4] = &off_2A1DDFDA8;
    v233[7] = &off_2A1DDFC68;
    v234 = 0u;
    v235 = 0u;
    v236 = 257;
    v237 = 0;
    v233[0] = off_2A1DDFC98;
    v287[0] = &unk_2A1DDFDD8;
    v287[1] = &unk_2A1DDFE08;
    v288 = 0u;
    v289 = 0u;
    v290 = 0u;
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    v294 = 0u;
    v295 = 0u;
    v296 = 0u;
    v297 = 0u;
    v298 = 0u;
    v299 = 0u;
    v300 = 0u;
    v301 = 0u;
    v302 = 0u;
    v303 = 0u;
    v304 = 0;
    v269[0] = &unk_2A1DDFDD8;
    v269[1] = &unk_2A1DDFE08;
    v270 = 0u;
    v271 = 0u;
    v272 = 0u;
    v273 = 0u;
    v274 = 0u;
    v275 = 0u;
    v276 = 0u;
    v277 = 0u;
    v278 = 0u;
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    v282 = 0u;
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v286 = 0;
    amber::Buffer::resize(a2, 0, a3, a4, a5, a6, a7);
    if ((amber::Buffer::reserve(a2, *(this + 454), v9, v10, v11, v12, v13) & 0x80000000) != 0)
    {
      v121 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x382, *v121, "malloc", v122);
      goto LABEL_25;
    }

    v261 = &off_2A1DDFDA8;
    v262 = this + 304;
    *&__n[0] = 16;
    v265 = &off_2A1DDFC68;
    v266 = this + 304;
    *v267 = 16;
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, &v265, v14, v15, v16, v17, v18) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x385, 0, "insufficient prologue capacity", v19);
      goto LABEL_25;
    }

    amber::Buffer::constBuf(&v265, this + 5, v19);
    amber::ConstMemoryView::view(&v261, &v265, *(this + 15), *(this + 16) - *(this + 15), v20);
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, &v261, v21, v22, v23, v24, v25) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x388, 0, "insufficient prologue capacity", v31);
      goto LABEL_25;
    }

    v37 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v26, v27, v28, v29, v30, v31);
    v38 = 0;
    v39 = *(this + 308);
    if (v39 <= 4 && ((1 << v39) & 0x15) != 0)
    {
      v38 = (*(this + 40) + *(this + 39) + *(this + 47));
      if ((amber::BufferProtocol<amber::Buffer>::appendValue(a2, 0, v38, v33, v34, v35, v36) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x390, 0, "insufficient prologue capacity", v36);
        goto LABEL_25;
      }
    }

    v40 = *(this + 224);
    v265 = &off_2A1DDFC68;
    v266 = this + 900;
    *v267 = v40;
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, &v265, v32, v33, v34, v35, v36) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x394, 0, "insufficient prologue capacity", v45);
      goto LABEL_25;
    }

    v46 = *(this + 154);
    v265 = &off_2A1DDFC68;
    v266 = this + 620;
    *v267 = v46;
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, &v265, v41, v42, v43, v44, v45) & 0x80000000) != 0 || (v52 = *(this + 84), v261 = &off_2A1DDFC68, v262 = this + 340, *&__n[0] = v52, (amber::BufferProtocol<amber::Buffer>::append(a2, &v261, v47, v48, v49, v50, v51) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x398, 0, "insufficient prologue capacity", v51);
      goto LABEL_25;
    }

    v58 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v53, v54, v55, v56, v57, v51);
    if ((amber::BufferProtocol<amber::Buffer>::appendValue(a2, 0, *(this + 39), v59, v60, v61, v62) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x39C, 0, "insufficient prologue capacity", v68);
      goto LABEL_25;
    }

    v69 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v63, v64, v65, v66, v67, v68);
    if ((amber::BufferProtocol<amber::Buffer>::appendValue(a2, 0, *(this + 40), v70, v71, v72, v73) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3A0, 0, "insufficient prologue capacity", v79);
      goto LABEL_25;
    }

    v80 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v74, v75, v76, v77, v78, v79);
    v261 = &off_2A1DDFDA8;
    v262 = this + 1752;
    *&__n[0] = 64;
    amber::MutableMemoryView::operator amber::ConstMemoryView(&v261, v81, &v265);
    if ((amber::BufferProtocol<amber::Buffer>::append(a2, &v265, v82, v83, v84, v85, v86) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(this + 326, v259, v87), (amber::BufferProtocol<amber::Buffer>::append(a2, v259, v88, v89, v90, v91, v92) & 0x80000000) != 0) || (amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(this + 339, &v256, v87), (amber::BufferProtocol<amber::Buffer>::append(a2, &v256, v93, v94, v95, v96, v97) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3A7, 0, "insufficient prologue capacity", v87);
      goto LABEL_25;
    }

    v226 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v98, v99, v100, v101, v102, v87);
    if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v103, v104, v105, v106, v107, v108) > *(this + 454))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3AB, 0, "prologue size mismatch", v114);
LABEL_25:
      amber::Buffer::resize(a2, 0, v115, v116, v117, v118, v119);
      v120 = 0xFFFFFFFFLL;
LABEL_26:
      amber::Buffer::~Buffer(v233, v123, v115, v116, v117, v118, v119);
      return v120;
    }

    v125 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v109, v110, v111, v112, v113, v114);
    v138 = *(this + 454) - v125;
    if (amber::BufferProtocol<amber::Buffer>::endCapacity(a2, v126, v127, v128, v129, v130, v131) < v138 || (v139 = amber::BufferProtocol<amber::Buffer>::end(a2, v132, v133, v134, v135, v136, v137), amber::MutableMemoryView::MutableMemoryView(&v265, v139, v138, v140, v141, v142, v143), (amber::AEBDCrypto::RNGBytes((this + 144), &v265) & 0x80000000) != 0) || (amber::Buffer::grow(a2, v138, v144, v145, v146, v147, v137) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3B3, 0, "prologue padding", v137);
      goto LABEL_25;
    }

    if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(a2, v148, v149, v150, v151, v152, v137) != *(this + 454))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3B6, 0, "padded prologue size mismatch", v158);
      goto LABEL_25;
    }

    v159 = amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::size(this + 1, v153, v154, v155, v156, v157, v158);
    if (__CFADD__(v159, v138) || (amber::Buffer::reserve(v233, v159 + v138, v160, v161, v162, v163, v164) & 0x80000000) != 0 || (amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::operator amber::ConstMemoryView(this + 1, v164, &v265), (amber::BufferProtocol<amber::Buffer>::append(v233, &v265, v165, v166, v167, v168, v169) & 0x80000000) != 0) || (amber::MutableMemoryViewConvertible<amber::Buffer>::view(a2, v125, v138, v164, v259), amber::MutableMemoryView::operator amber::ConstMemoryView(v259, v170, &v261), (amber::BufferProtocol<amber::Buffer>::append(v233, &v261, v171, v172, v173, v174, v175) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3BD, 0, "prologue aux data", v164);
      goto LABEL_25;
    }

    if ((amber::AEBDCrypto::RNGSalt(this + 144, this + 1880, v176, v177, v178, v179, v164) & 0x80000000) != 0 || (amber::AEBDCrypto::DerivePrologueKeyWithMainKey(this + 144, v287, this + 4472, v180, v181, v182, v183) & 0x80000000) != 0 || (amber::AEBDCrypto::DeriveRootAEADKeyWithPrologueKey(this + 144, v269, v287, this + 1880, v184, v185, v183) & 0x80000000) != 0 || (amber::MutableMemoryViewConvertible<amber::Buffer>::view(a2, v80, v226 - v80, v183, &v265), amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(v233, &v261, v186), (amber::AEBDCrypto::AEADEncrypt(this + 144, &v265, this + 2160, v269, &v261) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3C7, 0, "root encryption", v183);
      goto LABEL_25;
    }

    v190 = *(this + 474);
    v265 = &off_2A1DDFC68;
    v266 = this + 1900;
    *v267 = v190;
    if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store(a2, &v265, v58, v187, v188, v189, v183) & 0x80000000) != 0 || (v194 = *(this + 544), v261 = &off_2A1DDFC68, v262 = this + 2180, *&__n[0] = v194, (amber::MutableMemoryViewConvertible<amber::Buffer>::store(a2, &v261, v69, v191, v192, v193, v119) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3CC, 0, "prologue salt/hmac update", v119);
      goto LABEL_25;
    }

    v120 = 0;
    v195 = *(this + 308);
    if (v195 > 4 || ((1 << v195) & 0x15) == 0)
    {
      goto LABEL_26;
    }

    if (!*(this + 595))
    {
LABEL_72:
      v120 = 0;
      goto LABEL_26;
    }

    v232 = 0;
    v265 = &unk_2A1DDFDD8;
    v266 = &unk_2A1DDFE08;
    memset(v267, 0, sizeof(v267));
    v268 = 0;
    v261 = &unk_2A1DDFDD8;
    v262 = &unk_2A1DDFE08;
    memset(__n, 0, sizeof(__n));
    v264 = 0;
    v259[0] = &unk_2A1DDFDD8;
    v259[1] = &unk_2A1DDFE08;
    memset(&v259[2], 0, 256);
    v260 = 0;
    v256 = &unk_2A1DDFDD8;
    v257[0] = &unk_2A1DDFE08;
    memset(&v257[1], 0, 256);
    v258 = 0;
    v238[0] = &unk_2A1DDFDD8;
    v238[1] = &unk_2A1DDFE08;
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v251 = 0u;
    v252 = 0u;
    v253 = 0u;
    v254 = 0u;
    v255 = 0;
    amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(a2, &v229, v119);
    if ((amber::AEBDCrypto::DSDigest(this + 144, &v265, &v229) & 0x80000000) != 0 || ((v227 = *(this + 595), v202 = *(this + 594), v203 = *(this + 308), v204 = v267[0], v205 = *(this + 982), v206 = amber::BufferProtocol<amber::CryptoBlobBase<256u>>::end(v257, v196, v197, v198, v199, v200, v201), v203 >= 5) ? (v207 = 0xFFFFFFFFLL) : (v207 = v203), (v227(v202, v207, &v267[1], v204, this + 3932, v205, 256, v206, &v232) & 0x80000000) != 0 || v232 != *(this + 47) || (amber::CryptoBlobBase<256u>::grow(&v256, v232, v208, v209, v210, v211, v201) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3E6, 0, "signing failed %zu", v201, v232);
    }

    else if ((amber::AEBDCrypto::RNGSalt(this + 144, &v261, v212, v213, v214, v215, v201) & 0x80000000) != 0 || (amber::AEBDCrypto::DeriveSignatureAEADKeyWithMainKey(this + 144, v238, this + 4472, &v261, v216, v217, v218) & 0x80000000) != 0 || (v229 = &off_2A1DDFDA8, v230 = &v257[1] + 4, v231 = LODWORD(v257[1]), v228[1] = 0, v228[2] = 0, v228[0] = &off_2A1DDFC68, (amber::AEBDCrypto::AEADEncrypt(this + 144, &v229, v259, v238, v228) & 0x80000000) != 0))
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3F0, 0, "signature encryption failed", v218);
    }

    else
    {
      amber::MutableMemoryViewConvertible<amber::Buffer>::view(a2, v37, v38, v218, &v229);
      v219 = LODWORD(__n[0]);
      if (v231 >= LODWORD(__n[0]))
      {
        memcpy(v230, __n + 4, LODWORD(__n[0]));
        v220 = &v230[v219];
        v230 += v219;
        v231 -= v219;
        v221 = LODWORD(v259[2]);
        if (v231 >= LODWORD(v259[2]))
        {
          memcpy(v220, &v259[2] + 4, LODWORD(v259[2]));
          v222 = &v230[v221];
          v230 += v221;
          v231 -= v221;
          v223 = LODWORD(v257[1]);
          if (v231 >= LODWORD(v257[1]))
          {
            memcpy(v222, &v257[1] + 4, LODWORD(v257[1]));
            v225 = v231 - v223;
            v224 = v231 == v223;
            v230 += v223;
            v231 -= v223;
            if (v224)
            {
LABEL_71:
              if (v225)
              {
                goto LABEL_25;
              }

              goto LABEL_72;
            }
          }
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x3F8, 0, "prologue signature update", v119);
    }

    v225 = 1;
    goto LABEL_71;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getEncryptedPrologue", 0x36F, 0, "container is not unlocked", a7);
  return 0xFFFFFFFFLL;
}

void sub_2969978B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::BufferProtocol<amber::Buffer>::endCapacity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::buf(v11, a1, a7);
  amber::MutableMemoryView::operator+(v11, *(a1 + 88), v8, v10);
  return v10[2];
}

uint64_t amber::AEBDContainer::encryptCluster(amber::AEBDContainer *this, uint64_t a2, amber::Buffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v176 = *MEMORY[0x29EDCA608];
  if (*(this + 4785))
  {
    v158[0] = &unk_2A1DDFDD8;
    v158[1] = &unk_2A1DDFE08;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0;
    v140[0] = &unk_2A1DDFDD8;
    v140[1] = &unk_2A1DDFE08;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0;
    v122[0] = &unk_2A1DDFDD8;
    v122[1] = &unk_2A1DDFE08;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0;
    v117 = 0uLL;
    v116 = &off_2A1DDFC68;
    v114 = &off_2A1DDFDA8;
    v115 = 0uLL;
    v113 = 0uLL;
    v112 = &off_2A1DDFDA8;
    v110 = &off_2A1DDFDA8;
    v111 = 0uLL;
    v109 = 0uLL;
    v108 = &off_2A1DDFDA8;
    if (*(this + 466) <= a2)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptCluster", 0x419, 0, "invalid cluster id", a7);
    }

    else
    {
      amber::Buffer::resize(a3, 0, a3, a4, a5, a6, a7);
      if ((amber::Buffer::reserve(a3, *(this + 458), v10, v11, v12, v13, v14) & 0x80000000) != 0)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptCluster", 0x41D, 0, "insufficient cluster capacity", v15);
      }

      else
      {
        v16 = *(this + 444);
        v17 = *(this + 460);
        v18 = *(this + 40);
        v19 = *(this + 41);
        v20 = *(this + 39);
        amber::Buffer::buf(&v120, this + 354, v15);
        amber::MutableMemoryView::view(&v104, &v120, *(this + 364), *(this + 365) - *(this + 364), v21);
        amber::MutableMemoryView::view(&v106, &v104, (v17 * v16 * a2), (v17 * v16), v22);
        v118 = &off_2A1DDFC68;
        v119 = v107;
        if ((*(&v107 + 1) & 0x8000000000000000) != 0 || !v107 && *(&v107 + 1))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v23);
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](exception, "memory invalid args");
          __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        v117 = v119;
        amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 406, (8 * v16 * a2), (8 * v16), v23, &v120);
        v115 = v121;
        amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 367, (v19 * v16 * a2), (v19 * v16), v24, &v120);
        v113 = v121;
        amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 380, (v20 * v16 * a2), (v20 * v16), v25, &v120);
        v111 = v121;
        amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 393, (v18 * v16 * a2), (v18 * v16), v26, &v120);
        v109 = v121;
        v32 = *(this + 444);
        v33 = v32 * a2;
        v34 = v32 + v33;
        if (v34 >= *(this + 232))
        {
          v35 = *(this + 232);
        }

        else
        {
          v35 = v34;
        }

        if (v33 < v35)
        {
          v36 = v33;
          do
          {
            v37 = v36 + 1;
            if (((*(*this + 112))(this, v36) & 1) == 0)
            {
              if (v37 >= v35)
              {
                v38 = 1;
              }

              else
              {
                v38 = v35 - v36;
                v39 = 1;
                while (((*(*this + 112))(this, v36 + v39) & 1) == 0)
                {
                  ++v39;
                  if (!(v36 - v35 + v39))
                  {
                    v37 = v36 + v39;
                    goto LABEL_20;
                  }
                }

                v37 = v36 + v39;
                v38 = v39;
              }

LABEL_20:
              v40 = v36 - v33;
              amber::MutableMemoryView::view(&v120, &v114, 8 * v40, 8 * v38, v31);
              bzero(v121, *(&v121 + 1));
              amber::MutableMemoryView::view(&v120, &v112, v40 * *(this + 41), v38 * *(this + 41), v41);
              bzero(v121, *(&v121 + 1));
              amber::MutableMemoryView::view(&v120, &v110, v40 * *(this + 39), v38 * *(this + 39), v42);
              bzero(v121, *(&v121 + 1));
              amber::MutableMemoryView::view(&v120, &v108, v40 * *(this + 40), v38 * *(this + 40), v43);
              bzero(v121, *(&v121 + 1));
            }

            v36 = v37;
          }

          while (v37 < v35);
        }

        if ((amber::BufferProtocol<amber::Buffer>::append(a3, &v116, v27, v28, v29, v30, v31) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        v120 = &off_2A1DDFC68;
        v121 = v115;
        if ((*(&v115 + 1) & 0x8000000000000000) != 0 || !v115 && *(&v115 + 1))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v48);
          v100 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v100, "memory invalid args");
          __cxa_throw(v100, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        if ((amber::BufferProtocol<amber::Buffer>::append(a3, &v120, v44, v45, v46, v47, v48) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        v118 = &off_2A1DDFC68;
        v119 = v113;
        if ((*(&v113 + 1) & 0x8000000000000000) != 0 || !v113 && *(&v113 + 1))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v48);
          v101 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v101, "memory invalid args");
          __cxa_throw(v101, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        if ((amber::BufferProtocol<amber::Buffer>::append(a3, &v118, v49, v50, v51, v52, v48) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        v106 = &off_2A1DDFC68;
        v107 = v111;
        if ((*(&v111 + 1) & 0x8000000000000000) != 0 || !v111 && *(&v111 + 1))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v48);
          v102 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v102, "memory invalid args");
          __cxa_throw(v102, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        if ((amber::BufferProtocol<amber::Buffer>::append(a3, &v106, v53, v54, v55, v56, v48) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }

        v104 = &off_2A1DDFC68;
        v105 = v109;
        if ((*(&v109 + 1) & 0x8000000000000000) != 0 || !v109 && *(&v109 + 1))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v48, v104, v105, v106, v107, v108);
          v103 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v103, "memory invalid args");
          __cxa_throw(v103, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        if ((amber::BufferProtocol<amber::Buffer>::append(a3, &v104, v57, v58, v59, v60, v48) & 0x80000000) != 0)
        {
LABEL_43:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptCluster", 0x443, 0, "append segment elements", v48, v104, v105, v106, v107, v108);
        }

        else if (amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, v61, v62, v63, v64, v65, v48) <= *(this + 458))
        {
          v78 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(a3, v66, v67, v68, v69, v70, v71);
          v79 = *(this + 458);
          amber::Buffer::buf(&v120, a3, v80);
          amber::MutableMemoryView::operator+(&v120, *(a3 + 11), v81, &v118);
          v83 = v79 - v78;
          if (*(&v119 + 1) < v83 || (amber::BufferProtocol<amber::Buffer>::endView(a3, v83, v82, &v120), (amber::AEBDCrypto::RNGBytes((this + 144), &v120) & 0x80000000) != 0) || (amber::Buffer::grow(a3, v83, v84, v85, v86, v87, v82) & 0x80000000) != 0)
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptCluster", 0x44E, 0, "cluster padding", v82, v104, v105, v106, v107, v108);
          }

          else if ((amber::AEBDCrypto::RNGSalt(this + 144, v158, v88, v89, v90, v91, v82) & 0x80000000) != 0 || (amber::AEBDCrypto::DeriveClusterAEADKeyWithMainKey(this + 144, v122, this + 4472, a2, v158, v92, v93) & 0x80000000) != 0 || (amber::MutableMemoryViewConvertible<amber::Buffer>::first(a3, v78, v93, &v120), amber::MutableMemoryViewConvertible<amber::Buffer>::operator+(a3, v78, v94, &v106), amber::MutableMemoryView::operator amber::ConstMemoryView(&v106, v95, &v118), (amber::AEBDCrypto::AEADEncrypt(this + 144, &v120, v140, v122, &v118) & 0x80000000) != 0))
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptCluster", 0x457, 0, "cluster encryption", v93, v104, v105, v106, v107, v108);
          }

          else
          {
            if ((amber::AEBDContainer::storeClusterState(this, a2, v158, v140, v96, v97, v93) & 0x80000000) == 0)
            {
              return 0;
            }

            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptCluster", 0x45A, 0, "storing cluster state", v98, v104, v105, v106, v107, v108);
          }
        }

        else
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptCluster", 0x446, 0, "cluster size mismatch", v71, v104, v105, v106, v107, v108);
        }
      }
    }

    amber::Buffer::resize(a3, 0, v72, v73, v74, v75, v76);
  }

  else
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptCluster", 0x405, 0, "container is not unlocked", a7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::storeClusterState(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a1 + 1864) <= a2)
  {
    v17 = "invalid cluster_id";
    v18 = 2095;
  }

  else
  {
    v8 = *(a1 + 156);
    v9 = *(a3 + 16);
    if (v9 == v8 && *(a4 + 16) == *(a1 + 160))
    {
      v20[0] = &off_2A1DDFC68;
      v20[1] = a3 + 20;
      v20[2] = v9;
      if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store((a1 + 2608), v20, v8 * a2, a4, a5, a6, a7) & 0x80000000) == 0)
      {
        v15 = *(a4 + 16);
        v19[0] = &off_2A1DDFC68;
        v19[1] = a4 + 20;
        v19[2] = v15;
        if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store((a1 + 2712), v19, *(a1 + 160) * a2, v12, v13, v14, a7) & 0x80000000) == 0)
        {
          return 0;
        }
      }

      v17 = "storing cluster state";
      v18 = 2103;
    }

    else
    {
      v17 = "invalid cluster state sizes";
      v18 = 2099;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "storeClusterState", v18, 0, v17, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::encryptSegment(amber::AEBDContainer *this, unint64_t a2, const amber::ConstMemoryView *a3, amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v182 = *MEMORY[0x29EDCA608];
  if (*(this + 4785))
  {
    v164[0] = &unk_2A1DDFDD8;
    v164[1] = &unk_2A1DDFE08;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0u;
    v180 = 0u;
    v181 = 0;
    v146[0] = &unk_2A1DDFDD8;
    v146[1] = &unk_2A1DDFE08;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0;
    v128[0] = &unk_2A1DDFDD8;
    v128[1] = &unk_2A1DDFE08;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    v144 = 0u;
    v145 = 0;
    v110[0] = &unk_2A1DDFDD8;
    v110[1] = &unk_2A1DDFE08;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0;
    v108 = 0;
    v103[2] = 0;
    v103[3] = 0;
    v103[1] = off_2A1DDFD48;
    v103[5] = 0;
    v103[6] = 0;
    v103[4] = &off_2A1DDFDA8;
    v103[7] = &off_2A1DDFC68;
    v104 = 0u;
    v105 = 0u;
    v106 = 257;
    v107 = 0;
    v103[0] = off_2A1DDFC98;
    v11 = *(this + 232);
    if (v11 <= a2)
    {
      LODWORD(v12) = -1;
    }

    else
    {
      v12 = *(this + 459);
      if (a2 + 1 == v11)
      {
        v13 = v12 * a2;
        v12 += v12 * a2;
        if (*(this + 219) < v12)
        {
          v12 = *(this + 219);
        }

        LODWORD(v12) = v12 - v13;
      }
    }

    if (*(a3 + 2) != v12)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptSegment", 0x474, 0, "invalid raw segment size", a7);
      goto LABEL_43;
    }

    amber::Buffer::resize(a4, 0, a3, a4, a5, a6, a7);
    if ((amber::Buffer::reserveEndCapacity(a4, *(this + 459), v15, v16, v17, v18, v19) & 0x80000000) != 0)
    {
      v73 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptSegment", 0x478, *v73, "malloc", v74);
      goto LABEL_43;
    }

    if (((*(*this + 112))(this, a2) & 1) == 0)
    {
      if ((amber::AEBDContainer::clearSegmentState(this, a2, v20, v21, v22, v23, v24) & 0x80000000) == 0)
      {
        v61 = (this + 2440);
        std::mutex::lock((this + 2440));
        v67 = amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](this + 313, 0, v76, v77, v78, v79, v80);
        goto LABEL_31;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptSegment", 0x47E, 0, "update segment state", v75);
LABEL_43:
      amber::Buffer::resize(a4, 0, v68, v69, v70, v71, v72);
      v14 = 0xFFFFFFFFLL;
      goto LABEL_44;
    }

    if ((amber::AEBDCrypto::SegmentDigest(this + 144, v164, a3) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptSegment", 0x487, 0, "computing segment digest", v27);
      goto LABEL_43;
    }

    if ((amber::AEBDContainer::packSegment(this, a2, a3, v103, v25, v26, v27) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptSegment", 0x48A, 0, "packing segment", v28);
      goto LABEL_43;
    }

    if (*(this + 1780) == 45)
    {
LABEL_15:
      amber::Buffer::buf(v109, a4, v28);
      amber::MutableMemoryView::operator+(v109, *(a4 + 11), v29, v102);
      amber::Buffer::constBuf(v109, v103, v30);
      amber::ConstMemoryView::view(v100, v109, v105, *(&v105 + 1) - v105, v31);
      if (__n > v102[2])
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./MemoryOperations.hpp", "copy", 0x20, 0, "memory invalid range", v32);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      memcpy(v102[1], v100[1], __n);
      v43 = amber::ConstMemoryViewConvertible<amber::Buffer>::size(v103, v33, v34, v35, v36, v37, v38);
LABEL_17:
      if ((amber::Buffer::grow(a4, v43, v39, v40, v41, v42, v28) & 0x80000000) != 0)
      {
        v90 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptSegment", 0x498, *v90, "malloc", v91);
      }

      else
      {
        v49 = amber::AEBDContainer::paddedSegmentSize(this, v43);
        v50 = v49 - v43;
        if (v49 > v43 && ((amber::Buffer::reserveEndCapacity(a4, v50, v44, v45, v46, v47, v48) & 0x80000000) != 0 || (amber::BufferProtocol<amber::Buffer>::endView(a4, v50, v48, v109), (amber::AEBDCrypto::RNGBytes((this + 144), v109) & 0x80000000) != 0) || (amber::Buffer::grow(a4, v50, v51, v52, v53, v54, v48) & 0x80000000) != 0))
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptSegment", 0x4A2, 0, "adding random padding", v48);
        }

        else
        {
          v55 = *(this + 444);
          if ((amber::AEBDCrypto::RNGSalt(this + 144, v146, v44, v45, v46, v47, v48) & 0x80000000) != 0 || (v57 = a2 / v55, (amber::AEBDCrypto::DeriveSegmentAEADKeyWithMainKey(this + 144, v110, this + 4472, a2 / v55, (a2 % v55), v146, v56) & 0x80000000) != 0) || (amber::MutableMemoryViewConvertible<amber::Buffer>::first(a4, v43, v56, v109), amber::MutableMemoryViewConvertible<amber::Buffer>::operator+(a4, v43, v58, v100), amber::MutableMemoryView::operator amber::ConstMemoryView(v100, v59, v102), (amber::AEBDCrypto::AEADEncrypt(this + 144, v109, v128, v110, v102) & 0x80000000) != 0))
          {
            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptSegment", 0x4AF, 0, "segment encryption", v56);
          }

          else
          {
            v108 = __PAIR64__(v49, v43);
            if ((amber::AEBDContainer::storeSegmentState(this, a2, v164, v146, v128, &v108, v56) & 0x80000000) == 0)
            {
              v61 = (this + 2440);
              std::mutex::lock((this + 2440));
              v67 = amber::MutableMemoryViewConvertible<amber::Buffer>::operator[](this + 313, v57, v62, v63, v64, v65, v66);
LABEL_31:
              *v67 |= 2u;
              std::mutex::unlock(v61);
              v14 = 0;
LABEL_44:
              amber::Buffer::~Buffer(v103, v81, v82, v83, v84, v85, v86);
              return v14;
            }

            amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptSegment", 0x4B5, 0, "update segment state", v60);
          }
        }
      }

      goto LABEL_43;
    }

    amber::BufferProtocol<amber::Buffer>::zMutableEndView(a4, v28, v109);
    amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(v103, v102, v87);
    v88 = *(this + 1780);
    if (v88 <= 0x64)
    {
      switch(v88)
      {
        case '-':
          v89 = 0;
          goto LABEL_58;
        case '4':
          v89 = 5;
          goto LABEL_58;
        case 'b':
          v89 = 4;
          goto LABEL_58;
      }
    }

    else if (*(this + 1780) > 0x77u)
    {
      if (v88 == 122)
      {
        v89 = 2;
        goto LABEL_58;
      }

      if (v88 == 120)
      {
        v89 = 1;
        goto LABEL_58;
      }
    }

    else
    {
      if (v88 == 101)
      {
        v89 = 3;
        goto LABEL_58;
      }

      if (v88 == 102)
      {
        v89 = 6;
LABEL_58:
        v93 = amber::compressionEncode(v109, v102, v89);
        v43 = v93;
        if (!HIDWORD(v93) && v93 && amber::ConstMemoryViewConvertible<amber::Buffer>::size(v103, v94, v95, v96, v97, v98, v28) > v93)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }
    }

    v89 = 0xFFFFFFFFLL;
    goto LABEL_58;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "encryptSegment", 0x466, 0, "container is not unlocked", a7);
  return 0xFFFFFFFFLL;
}

void sub_296998E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::AEBDContainer::clearSegmentState(amber::AEBDContainer *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 232) <= a2)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "clearSegmentState", 0x80D, 0, "invalid segment_id", a7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 367, *(this + 41) * a2, *(this + 41), a7, v16);
    bzero(v16[1], v16[2]);
    amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 380, *(this + 39) * a2, *(this + 39), v9, v15);
    bzero(v15[1], v15[2]);
    amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 393, *(this + 40) * a2, *(this + 40), v10, v14);
    bzero(v14[1], v14[2]);
    amber::MutableMemoryViewConvertible<amber::Buffer>::view(this + 406, 8 * a2, 8, v11, v13);
    bzero(v13[1], v13[2]);
    return 0;
  }
}

uint64_t amber::AEBDContainer::packSegment(amber::AEBDContainer *this, unint64_t a2, const amber::ConstMemoryView *a3, amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 232) <= a2)
  {
    v42 = "invalid segment_id";
    v43 = 1961;
    v44 = 0;
LABEL_29:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "packSegment", v43, v44, v42, a7);
    return 0xFFFFFFFFLL;
  }

  v10 = *(this + 443);
  v11 = v10 * a2;
  v12 = v10 * a2 + v10;
  if (*(this + 231) >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(this + 231);
  }

  v14 = *(a3 + 2);
  amber::Buffer::resize(a4, 0, a3, a4, a5, a6, a7);
  if ((amber::Buffer::reserveEndCapacity(a4, v14, v15, v16, v17, v18, v19) & 0x80000000) != 0)
  {
    v44 = *__error();
    v42 = "malloc";
    v43 = 1969;
    goto LABEL_29;
  }

  if (v11 >= v13)
  {
    return 0;
  }

  v25 = 0;
  v26 = 1;
  while (1)
  {
    if (*(this + 353) <= v11)
    {
      amber::ConstMemoryView::view(&v48, a3, v25, *(this + 442), v24);
LABEL_15:
      v35 = v49;
      v36 = &v49[v50];
      v37 = v49;
      while (v37 < v36 && (v35 & 7) != 0)
      {
        v38 = *v37++;
        ++v35;
        if (v38)
        {
LABEL_31:
          v47 = v11;
          v45 = "block %llu is not 0";
          v46 = 1981;
          goto LABEL_32;
        }
      }

      while ((v37 + 8) <= v36)
      {
        v39 = *v37;
        v37 += 8;
        if (v39)
        {
          goto LABEL_31;
        }
      }

      while (v37 < v36)
      {
        if (*v37++)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_25;
    }

    v27 = (amber::ConstMemoryViewConvertible<amber::Buffer>::operator[](this + 354, (v11 >> 2) & 0x1FFFFFFFFFFFFFFFLL, v20, v21, v22, v23, v24) >> ((2 * v11) & 6)) & 3;
    amber::ConstMemoryView::view(&v48, a3, v25, *(this + 442), v28);
    if (v27 != 2)
    {
      goto LABEL_15;
    }

    v29 = *(this + 442);
    if (v29 + v25 > v14)
    {
      break;
    }

    amber::Buffer::buf(v52, a4, v24);
    amber::MutableMemoryView::operator+(v52, *(a4 + 11), v30, v51);
    if (v51[2] < v29 || (amber::BufferProtocol<amber::Buffer>::append(a4, &v48, v31, v32, v33, v34, v24) & 0x80000000) != 0)
    {
      v45 = "insufficient capacity";
      v46 = 1987;
      goto LABEL_32;
    }

LABEL_25:
    result = 0;
    ++v11;
    v25 += *(this + 442);
    v26 = v11 < v13;
    if (v11 == v13)
    {
      return result;
    }
  }

  v45 = "invalid raw size";
  v46 = 1984;
LABEL_32:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "packSegment", v46, 0, v45, v24, v47);
  return (v26 << 31 >> 31);
}

uint64_t amber::AEBDContainer::paddedSegmentSize(amber::AEBDContainer *this, unsigned int a2)
{
  v2 = *(this + 459);
  if (v2 < a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    LODWORD(v5) = 0;
    goto LABEL_17;
  }

  if (!*(this + 1781))
  {
    goto LABEL_7;
  }

  if (*(this + 1781) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 < 8)
  {
LABEL_7:
    v4 = 1;
    goto LABEL_8;
  }

  v10 = __clz(a2);
  v11 = __clz(v10 ^ 0x1F) - (v10 | 0x20);
  if (v11 < 0xFFFFFFE1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 1 << (v11 + 31);
LABEL_8:
  LODWORD(v5) = a2;
  v6 = 1 << *(this + 311);
  if (v4 > v6)
  {
    v6 = v4;
  }

  if (((v6 - 1) & a2) != 0)
  {
    v7 = v6 - ((v6 - 1) & a2);
    v8 = __CFADD__(a2, v7);
    v9 = a2 + v7;
    v5 = v8 ? -1 : v9;
    if (HIDWORD(v5))
    {
      return 0xFFFFFFFFLL;
    }
  }

LABEL_17:
  if (v2 >= v5)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t amber::AEBDContainer::storeSegmentState(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a1 + 1856) <= a2)
  {
    v26 = "invalid segment_id";
    v27 = 2044;
  }

  else
  {
    v8 = *(a1 + 164);
    v9 = *(a3 + 16);
    if (v9 == v8 && *(a4 + 16) == *(a1 + 156) && *(a5 + 16) == *(a1 + 160))
    {
      v31[0] = &off_2A1DDFC68;
      v31[1] = a3 + 20;
      v31[2] = v9;
      if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store((a1 + 2936), v31, v8 * a2, a4, a5, a6, a7) & 0x80000000) == 0)
      {
        v17 = *(a4 + 16);
        v30[0] = &off_2A1DDFC68;
        v30[1] = a4 + 20;
        v30[2] = v17;
        if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store((a1 + 3040), v30, *(a1 + 156) * a2, v14, v15, v16, a7) & 0x80000000) == 0)
        {
          v21 = *(a5 + 16);
          v29[0] = &off_2A1DDFC68;
          v29[1] = a5 + 20;
          v29[2] = v21;
          if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store((a1 + 3144), v29, *(a1 + 160) * a2, v18, v19, v20, a7) & 0x80000000) == 0)
          {
            v28[0] = &off_2A1DDFC68;
            v28[1] = a6;
            v28[2] = 8;
            if ((amber::MutableMemoryViewConvertible<amber::Buffer>::store((a1 + 3248), v28, 8 * a2, v22, v23, v24, a7) & 0x80000000) == 0)
            {
              return 0;
            }
          }
        }
      }

      v26 = "storing segment state";
      v27 = 2054;
    }

    else
    {
      v26 = "invalid segment state sizes";
      v27 = 2048;
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "storeSegmentState", v27, 0, v26, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::decryptSegment(amber::AEBDContainer *this, unint64_t a2, const amber::MutableMemoryView *a3, amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v180 = *MEMORY[0x29EDCA608];
  if (*(this + 4785))
  {
    v162[0] = &unk_2A1DDFDD8;
    v162[1] = &unk_2A1DDFE08;
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    v178 = 0u;
    v179 = 0;
    v144[0] = &unk_2A1DDFDD8;
    v144[1] = &unk_2A1DDFE08;
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v155 = 0u;
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0;
    v126[0] = &unk_2A1DDFDD8;
    v126[1] = &unk_2A1DDFE08;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0;
    v108[0] = &unk_2A1DDFDD8;
    v108[1] = &unk_2A1DDFE08;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0;
    v90[0] = &unk_2A1DDFDD8;
    v90[1] = &unk_2A1DDFE08;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0;
    v84[2] = 0;
    v84[3] = 0;
    v84[1] = off_2A1DDFD48;
    v84[5] = 0;
    v84[6] = 0;
    v84[4] = &off_2A1DDFDA8;
    v84[7] = &off_2A1DDFC68;
    v85 = 0u;
    v86 = 0u;
    v87 = 257;
    v88 = 0;
    v84[0] = off_2A1DDFC98;
    if (*(this + 232) <= a2 || (amber::AEBDContainer::loadSegmentState(this, a2, v162, v126, v108, v89, a7) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x4D9, 0, "invalid segment index", a7);
      goto LABEL_11;
    }

    v15 = v89[0];
    v16 = v89[1];
    v17 = amber::AEBDContainer::packedSegmentSize(this, a2, v11, v12, v13, v14, a7);
    v19 = v17;
    v20 = *(this + 232);
    if (v20 <= a2)
    {
      LODWORD(v21) = -1;
    }

    else
    {
      v21 = *(this + 459);
      if (a2 + 1 == v20)
      {
        v22 = v21 * a2 + v21;
        if (*(this + 219) < v22)
        {
          v22 = *(this + 219);
        }

        LODWORD(v21) = v22 - v21 * a2;
      }
    }

    if (v15 > v17 || v15 > v16 || v17 > v21)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x4E3, 0, "segment size mismatch", v18);
      goto LABEL_11;
    }

    if (*(a3 + 2) != v16)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x4E4, 0, "invalid encrypted size", v18);
      goto LABEL_11;
    }

    if ((amber::AEBDCrypto::DeriveSegmentAEADKeyWithMainKey(this + 144, v90, this + 4472, a2 / *(this + 444), a2 % *(this + 444), v126, v18) & 0x80000000) != 0)
    {
      goto LABEL_34;
    }

    amber::MutableMemoryView::first(v83, a3, v15, v36);
    amber::MutableMemoryView::operator+(a3, v15, v37, &v79);
    v82[0] = &off_2A1DDFC68;
    v82[1] = v80;
    v82[2] = v81;
    if (v81 < 0 || !v80 && v81)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v38);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if ((amber::AEBDCrypto::AEADDecrypt(this + 144, v83, v108, v90, v82) & 0x80000000) != 0)
    {
LABEL_34:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x4EF, 0, "segment decryption", v36);
      goto LABEL_11;
    }

    if ((amber::Buffer::reserveEndCapacity(v84, *(this + 459), v39, v40, v41, v42, v36) & 0x80000000) != 0)
    {
      v48 = __error();
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x4F2, *v48, "malloc", v49);
      goto LABEL_11;
    }

    if (*(this + 1780) == 45 || v15 >= v19)
    {
      if (v15 != v19)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x500, 0, "non compressed segment size mismatch", v43);
        goto LABEL_11;
      }

      amber::MutableMemoryView::first(v82, a3, v15, v43);
      amber::MutableMemoryView::operator amber::ConstMemoryView(v82, v50, v83);
      if ((amber::BufferProtocol<amber::Buffer>::assign(v84, v83, v51, v52, v53, v54, v55) & 0x80000000) != 0)
      {
        v57 = __error();
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x501, *v57, "malloc", v58);
        goto LABEL_11;
      }

      goto LABEL_54;
    }

    amber::BufferProtocol<amber::Buffer>::zMutableEndView(v84, v43, v83);
    amber::MutableMemoryView::first(&v79, a3, v15, v44);
    amber::MutableMemoryView::operator amber::ConstMemoryView(&v79, v45, v82);
    v46 = *(this + 1780);
    if (v46 <= 0x64)
    {
      switch(v46)
      {
        case '-':
          v47 = 0;
          goto LABEL_52;
        case '4':
          v47 = 5;
          goto LABEL_52;
        case 'b':
          v47 = 4;
          goto LABEL_52;
      }
    }

    else if (*(this + 1780) > 0x77u)
    {
      if (v46 == 122)
      {
        v47 = 2;
        goto LABEL_52;
      }

      if (v46 == 120)
      {
        v47 = 1;
        goto LABEL_52;
      }
    }

    else
    {
      if (v46 == 101)
      {
        v47 = 3;
        goto LABEL_52;
      }

      if (v46 == 102)
      {
        v47 = 6;
LABEL_52:
        v59 = amber::compressionDecode(v83, v82, v47);
        if (v59 != v19 || (amber::Buffer::grow(v84, v59, v60, v61, v62, v63, v56) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x4FB, 0, "segment decompression failed", v56);
          goto LABEL_11;
        }

LABEL_54:
        amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(v84, v83, v56);
        if ((amber::AEBDContainer::unpackSegment(this, a2, v83, a4, v64, v65, v66) & 0x80000000) != 0 || amber::ConstMemoryViewConvertible<amber::Buffer>::size(a4, v67, v68, v69, v70, v71, v72) != v21)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x507, 0, "packing segment", v72);
        }

        else
        {
          amber::ConstMemoryViewConvertible<amber::Buffer>::operator amber::ConstMemoryView(a4, v83, v72);
          if ((amber::AEBDCrypto::SegmentDigest(this + 144, v144, v83) & 0x80000000) == 0 && amber::CryptoBlobBase<256u>::equals(v162, v144, v73, v74, v75, v76, v77))
          {
            v23 = 0;
            goto LABEL_12;
          }

          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x50C, 0, "invalid segment digest", v77);
        }

LABEL_11:
        amber::Buffer::resize(a4, 0, v24, v25, v26, v27, v28);
        v23 = 0xFFFFFFFFLL;
LABEL_12:
        bzero(*(a3 + 1), *(a3 + 2));
        amber::Buffer::~Buffer(v84, v29, v30, v31, v32, v33, v34);
        return v23;
      }
    }

    v47 = 0xFFFFFFFFLL;
    goto LABEL_52;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "decryptSegment", 0x4C7, 0, "container is not unlocked", a7);
  return 0xFFFFFFFFLL;
}

void sub_296999E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  amber::Buffer::~Buffer(va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t amber::AEBDContainer::loadSegmentState(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(a1 + 1856) <= a2)
  {
    v20 = "invalid segment_id";
    v21 = 2079;
  }

  else
  {
    if ((amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>((a1 + 2936), a3, *(a1 + 164), *(a1 + 164) * a2, a5, a6, a7) & 0x80000000) == 0 && (amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>((a1 + 3040), a4, *(a1 + 156), *(a1 + 156) * a2, v12, v13, a7) & 0x80000000) == 0 && (amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>((a1 + 3144), a5, *(a1 + 160), *(a1 + 160) * a2, v14, v15, a7) & 0x80000000) == 0)
    {
      v22[0] = &off_2A1DDFDA8;
      v22[1] = a6;
      v22[2] = 8;
      if ((amber::ConstMemoryViewConvertible<amber::Buffer>::load((a1 + 3248), v22, 8 * a2, v16, v17, v18, a7) & 0x80000000) == 0)
      {
        return 0;
      }
    }

    v20 = "loading segment state";
    v21 = 2085;
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "loadSegmentState", v21, 0, v20, a7);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::packedSegmentSize(amber::AEBDContainer *this, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 232) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *(this + 442) * amber::NBitVector<2u>::countMatching(this + 2816, *(this + 443) * a2, *(this + 443) * a2 + *(this + 443), 2u, a5, a6, a7);
  }
}

uint64_t amber::AEBDContainer::unpackSegment(amber::AEBDContainer *this, unint64_t a2, const amber::ConstMemoryView *a3, amber::Buffer *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 232) <= a2)
  {
    v46 = "invalid segment_id";
    v47 = 2001;
LABEL_28:
    v48 = 0;
LABEL_31:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "unpackSegment", v47, v48, v46, a7);
    return 0xFFFFFFFFLL;
  }

  v10 = *(this + 443);
  v11 = v10 * a2;
  v12 = v10 * a2 + v10;
  if (*(this + 231) >= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(this + 231);
  }

  v14 = *(a3 + 4);
  amber::Buffer::resize(a4, 0, a3, a4, a5, a6, a7);
  if ((amber::Buffer::reserveEndCapacity(a4, *(this + 459), v15, v16, v17, v18, v19) & 0x80000000) != 0)
  {
    v48 = *__error();
    v46 = "malloc";
    v47 = 2008;
    goto LABEL_31;
  }

  if (v11 >= v13)
  {
    return 0;
  }

  v24 = 0;
  while (2)
  {
    v25 = 2 * v11 + 2;
    v26 = v11;
    while (*(this + 353) <= v26 || ((amber::ConstMemoryViewConvertible<amber::Buffer>::operator[](this + 354, (v26 >> 2) & 0x1FFFFFFFFFFFFFFFLL, v20, v21, v22, v23, a7) >> ((2 * v26) & 6)) & 3) != 2)
    {
      v31 = *(this + 442);
      amber::Buffer::buf(v51, a4, a7);
      amber::MutableMemoryView::operator+(v51, *(a4 + 11), v32, v49);
      if (v50 < v31 || (amber::BufferProtocol<amber::Buffer>::appendValue(a4, 0, *(this + 442), v33, v34, v35, a7) & 0x80000000) != 0)
      {
        v46 = "insufficient capacity";
        v47 = 2016;
        goto LABEL_28;
      }

      ++v26;
      v25 += 2;
      if (v26 >= v13)
      {
        return 0;
      }
    }

    v11 = v26 + 1;
    v36 = 1;
    if (v26 + 1 < v13)
    {
      while (*(this + 353) > v26 + v36)
      {
        if (((amber::ConstMemoryViewConvertible<amber::Buffer>::operator[](this + 354, v25 >> 3, v27, v28, v29, v30, a7) >> (v25 & 6)) & 3) == 2)
        {
          v11 = ++v36 + v26;
          v25 += 2;
          if (v36 + v26 < v13)
          {
            continue;
          }
        }

        v11 = v26 + v36;
        break;
      }
    }

    v37 = v36 * *(this + 442);
    amber::Buffer::buf(v51, a4, a7);
    amber::MutableMemoryView::operator+(v51, *(a4 + 11), v38, v49);
    v39 = v37 > v50 || v37 + v24 > v14;
    if (v39 || (amber::ConstMemoryView::view(v51, a3, v24, v37, a7), (amber::BufferProtocol<amber::Buffer>::append(a4, v51, v40, v41, v42, v43, v44) & 0x80000000) != 0))
    {
      v46 = "invalid packed size";
      v47 = 2030;
      goto LABEL_28;
    }

    result = 0;
    v24 += v37;
    if (v11 < v13)
    {
      continue;
    }

    return result;
  }
}

BOOL amber::CryptoBlobBase<256u>::equals(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = 0;
  v8 = a1 + 20;
  v9 = a2 + 20;
  v10 = -8;
  do
  {
    v28 = 0;
    v25 = &off_2A1DDFDA8;
    v26 = &v28;
    v27 = 8;
    v19 = &off_2A1DDFC68;
    v20 = v8;
    v21 = 256;
    amber::ConstMemoryView::operator+(&v19, v10 + 8, a7, &v22);
    if (v24 < 8 || v27 <= 7)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v11);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    *v26 = *v23;
    v25 = &off_2A1DDFDA8;
    v26 = &v18;
    v27 = 8;
    v18 = 0;
    v19 = &off_2A1DDFC68;
    v20 = v9;
    v21 = 256;
    amber::ConstMemoryView::operator+(&v19, v10 + 8, v11, &v22);
    if (v24 < 8 || v27 <= 7)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", a7);
      v15 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v15, "memory invalid range");
      __cxa_throw(v15, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    *v26 = *v23;
    v7 |= v18 ^ v28;
    v10 += 8;
  }

  while (v10 < 0xF8);
  return !v7 && *(a1 + 16) == *(a2 + 16);
}

uint64_t amber::AEBDContainer::kmsObjectStorePath(amber::AEBDContainer *this, amber::ObjectStorePath *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *(this + 84);
  v22[0] = &off_2A1DDFC68;
  v22[1] = this + 340;
  v22[2] = v9;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a2 + 24, v22, a3, a4, a5, a6, a7);
  v14 = amber::AEBDCrypto::DeriveKMSStorageKey(this + 144, a2 + 296, this + 320, this + 600, v10, v11, v12);
  if (v14 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "kmsObjectStorePath", 0x520, 0, "derive prologue key", v13);
    amber::ObjectStorePath::clear(a2, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    *(a2 + 144) = 4;
    *(a2 + 148) = 0;
    *(a2 + 73) = 0;
  }

  return (v14 >> 31);
}

uint64_t amber::AEBDContainer::prologueObjectStorePath(amber::AEBDContainer *this, amber::ObjectStorePath *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v9 = *(this + 84);
  v22[0] = &off_2A1DDFC68;
  v22[1] = this + 340;
  v22[2] = v9;
  amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a2 + 24, v22, a3, a4, a5, a6, a7);
  v14 = amber::AEBDCrypto::DerivePrologueStorageKeyWithMainKey(this + 144, a2 + 296, this + 4472, this + 2160, v10, v11, v12);
  if (v14 < 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "prologueObjectStorePath", 0x53A, 0, "derive prologue key", v13);
    amber::ObjectStorePath::clear(a2, v15, v16, v17, v18, v19, v20);
  }

  else
  {
    *(a2 + 144) = 1;
    *(a2 + 148) = *(this + 454);
    *(a2 + 73) = 0;
  }

  return (v14 >> 31);
}

uint64_t amber::AEBDContainer::clusterObjectStorePath(amber::AEBDContainer *this, uint64_t a2, amber::ObjectStorePath *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v52 = *MEMORY[0x29EDCA608];
  v34[0] = &unk_2A1DDFDD8;
  v34[1] = &unk_2A1DDFE08;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  if (*(this + 466) <= a2 || (amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>(this + 339, v34, *(this + 40), (*(this + 40) * a2), a5, a6, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "clusterObjectStorePath", 0x550, 0, "loading cluster HMAC", a7);
  }

  else
  {
    v14 = *(this + 84);
    v33[0] = &off_2A1DDFC68;
    v33[1] = this + 340;
    v33[2] = v14;
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a3 + 24, v33, v10, v11, v12, v13, a7);
    if ((amber::AEBDCrypto::DeriveClusterStorageKeyWithMainKey(this + 144, a3 + 296, this + 4472, a2, v34, v15, v16) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "clusterObjectStorePath", 0x55A, 0, "derive storage key", v17);
    }

    else
    {
      *(a3 + 144) = 2;
      v18 = *(this + 458);
      *(a3 + 148) = v18;
      v19 = *(this + 444) * a2;
      if (is_mul_ok(v19, *(this + 459)))
      {
        v20 = v19 * *(this + 459);
        v21 = *(this + 454);
        v22 = __CFADD__(v20, v21);
        v23 = v20 + v21;
        if (!v22)
        {
          v24 = v18 * a2;
          v22 = __CFADD__(v24, v23);
          v25 = v24 + v23;
          if (!v22)
          {
            result = 0;
            *(a3 + 73) = v25;
            return result;
          }
        }
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "clusterObjectStorePath", 0x567, 0, "invalid offset", v17);
    }
  }

  amber::ObjectStorePath::clear(a3, v26, v27, v28, v29, v30, v31);
  return 0xFFFFFFFFLL;
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::loadAndAssign<amber::CryptoBlobBase<256u>>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::constBuf(v17, a1, a7);
  amber::ConstMemoryView::view(v16, v17, a1[10], a1[11] - a1[10], v11);
  return amber::ConstMemoryView::loadAndAssign<amber::CryptoBlobBase<256u>>(v16, a2, a3, a4, v12, v13, v14);
}

uint64_t amber::AEBDContainer::segmentObjectStorePath(amber::AEBDContainer *this, unint64_t a2, amber::ObjectStorePath *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v93 = *MEMORY[0x29EDCA608];
  v75[0] = &unk_2A1DDFDD8;
  v75[1] = &unk_2A1DDFE08;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0;
  v57[0] = &unk_2A1DDFDD8;
  v57[1] = &unk_2A1DDFE08;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0;
  v39[0] = &unk_2A1DDFDD8;
  v39[1] = &unk_2A1DDFE08;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0;
  if ((amber::AEBDContainer::loadSegmentState(this, a2, v75, v57, v39, v37, a7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "segmentObjectStorePath", 0x57D, 0, "invalid segment_id", v14);
  }

  else
  {
    v15 = *(this + 444);
    v16 = *(this + 84);
    v36[0] = &off_2A1DDFC68;
    v36[1] = this + 340;
    v36[2] = v16;
    amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a3 + 24, v36, v10, v11, v12, v13, v14);
    if ((amber::AEBDCrypto::DeriveSegmentStorageKeyWithMainKey(this + 144, a3 + 296, this + 4472, a2 / v15, (a2 % v15), v39, v17) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "segmentObjectStorePath", 0x58B, 0, "derive storage key", v18);
      return 0xFFFFFFFFLL;
    }

    *(a3 + 144) = 3;
    v19 = (*(*this + 112))(this, a2);
    v21 = v38;
    if (!v19)
    {
      v21 = 0;
    }

    *(a3 + 148) = v21;
    if (is_mul_ok(a2, *(this + 459)))
    {
      v22 = *(this + 458);
      v23 = a2 * *(this + 459);
      v24 = *(this + 454) + v22;
      v25 = __CFADD__(v23, v24);
      v26 = v23 + v24;
      if (!v25)
      {
        v27 = (a2 / v15) * v22;
        v25 = __CFADD__(v27, v26);
        v28 = v27 + v26;
        if (!v25)
        {
          result = 0;
          *(a3 + 73) = v28;
          return result;
        }
      }
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "segmentObjectStorePath", 0x59B, 0, "invalid offset", v20);
  }

  amber::ObjectStorePath::clear(a3, v29, v30, v31, v32, v33, v34);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::getAttribute(amber::AEBDContainer *this, amber::BaseObject *a2, unsigned int a3, const amber::MutableMemoryView *a4, unint64_t *a5, uint64_t a6, const char *a7)
{
  v58 = *MEMORY[0x29EDCA608];
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getAttribute", 0x5B1, 0, "invalid attribute encoding: %u", v12, a2);
    return 0xFFFFFFFFLL;
  }

  if ((*(*this + 128))(this, a2))
  {
    v18 = -1;
    v19 = 1;
    switch(a2)
    {
      case 101:
        if (*(this + 308) >= 5u)
        {
          v19 = -1;
        }

        else
        {
          v19 = *(this + 308);
        }

        goto LABEL_49;
      case 102:
        v19 = *(this + 309);
        goto LABEL_56;
      case 103:
        v37 = *(this + 310);
        goto LABEL_42;
      case 104:
        v37 = *(this + 311);
LABEL_42:
        v19 = 1 << v37;
        goto LABEL_49;
      case 105:
        v18 = *(this + 219);
        goto LABEL_55;
      case 106:
        v18 = *(this + 234);
        goto LABEL_55;
      case 107:
        v18 = *(this + 228);
        goto LABEL_55;
      case 108:
        v18 = *(this + 220);
        goto LABEL_55;
      case 109:
        v19 = *(this + 442);
        goto LABEL_56;
      case 110:
        v19 = *(this + 443);
        goto LABEL_56;
      case 111:
        v19 = *(this + 444);
        goto LABEL_56;
      case 112:
        v44 = *(this + 1780);
        if (v44 <= 0x64)
        {
          if (v44 != 45)
          {
            if (v44 == 52)
            {
              v18 = -1;
              v19 = 5;
              goto LABEL_56;
            }

            if (v44 == 98)
            {
              v18 = -1;
              v19 = 4;
              goto LABEL_56;
            }

LABEL_81:
            v18 = -1;
LABEL_55:
            v19 = -1;
LABEL_56:
            if (a3 == 2)
            {
              LODWORD(v50[0]) = v19;
              v52 = &off_2A1DDFDA8;
              v53 = v50;
              v54 = 4;
              v55 = &off_2A1DDFC68;
              v56 = v50;
              v57 = 4;
              *a5 = 4;
              v46 = *(a4 + 2);
              if (!v46)
              {
                return 0;
              }

              if (v46 > 3)
              {
                v20 = 0;
                **(a4 + 1) = v19;
                return v20;
              }

              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v17, 4, v46);
            }

            else if (a3 == 1)
            {
              v50[0] = v18;
              v52 = &off_2A1DDFDA8;
              v53 = v50;
              v54 = 8;
              v55 = &off_2A1DDFC68;
              v56 = v50;
              v57 = 8;
              *a5 = 8;
              v45 = *(a4 + 2);
              if (v45)
              {
                if (v45 > 7)
                {
                  v20 = 0;
                  **(a4 + 1) = v18;
                  return v20;
                }

                amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v17, 8, v45);
                return 0xFFFFFFFFLL;
              }

              return 0;
            }

            return 0xFFFFFFFFLL;
          }

          v19 = 0;
        }

        else
        {
          if (*(this + 1780) <= 0x77u)
          {
            if (v44 == 101)
            {
              v18 = -1;
              v19 = 3;
              goto LABEL_56;
            }

            if (v44 == 102)
            {
              v18 = -1;
              v19 = 6;
              goto LABEL_56;
            }

            goto LABEL_81;
          }

          if (v44 == 122)
          {
            v18 = -1;
            v19 = 2;
            goto LABEL_56;
          }

          if (v44 != 120)
          {
            goto LABEL_81;
          }
        }

LABEL_49:
        v18 = -1;
        goto LABEL_56;
      case 113:
        if (*(this + 1781) == 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = -1;
        }

        if (!*(this + 1781))
        {
          v19 = 0;
        }

        goto LABEL_49;
      case 115:
        goto LABEL_56;
      case 116:
        v19 = *(this + 4785);
        goto LABEL_49;
      case 117:
        v18 = *(this + 231);
        goto LABEL_55;
      case 118:
        v18 = *(this + 232);
        goto LABEL_55;
      case 119:
        v19 = *(this + 466);
        goto LABEL_56;
      case 120:
        v19 = *(this + 454);
        goto LABEL_56;
      case 121:
        v19 = *(this + 458);
        goto LABEL_56;
      case 122:
        v19 = *(this + 459);
        goto LABEL_56;
      case 123:
        v22 = *(this + 84);
        v55 = &off_2A1DDFC68;
        v56 = this + 340;
        v57 = v22;
        *a5 = v22;
        v23 = *(a4 + 2);
        if (!v23)
        {
          return 0;
        }

        if (v23 < v22)
        {
          goto LABEL_13;
        }

        return amber::copy(a4, &v55, v13, v14, v15, v16, v17);
      case 125:
        v38 = amber::ObjectStorePath::ObjectStorePath(&v55);
        if (((*(*this + 80))(this, &v55, v38) & 0x80000000) != 0 || (amber::toAmberObject(&v55, &v52, v39, v40, v41, v42, v43) & 0x80000000) != 0)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getAttribute", 0x5D8, 0, "can't get storage attributes", v43);
          goto LABEL_71;
        }

        v47 = &off_2A1DDFDA8;
        v48 = &v52;
        v49 = 544;
        amber::MutableMemoryView::operator amber::ConstMemoryView(&v47, v43, v50);
        v35 = v51;
        *a5 = v51;
        v36 = *(a4 + 2);
        if (!v36)
        {
          goto LABEL_78;
        }

        if (v36 < v35)
        {
          goto LABEL_24;
        }

        goto LABEL_86;
      case 126:
        v24 = amber::ObjectStorePath::ObjectStorePath(&v55);
        if (((*(*this + 72))(this, &v55, v24) & 0x80000000) == 0 && (amber::toAmberObject(&v55, &v52, v25, v26, v27, v28, v29) & 0x80000000) == 0)
        {
          v47 = &off_2A1DDFDA8;
          v48 = &v52;
          v49 = 544;
          amber::MutableMemoryView::operator amber::ConstMemoryView(&v47, v29, v50);
          v35 = v51;
          *a5 = v51;
          v36 = *(a4 + 2);
          if (v36)
          {
            if (v36 < v35)
            {
LABEL_24:
              amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v34, v35, v36);
LABEL_71:
              v20 = 0xFFFFFFFFLL;
              goto LABEL_72;
            }

LABEL_86:
            v20 = amber::copy(a4, v50, v30, v31, v32, v33, v34);
          }

          else
          {
LABEL_78:
            v20 = 0;
          }

LABEL_72:
          amber::ObjectStorePath::~ObjectStorePath(&v55);
          return v20;
        }

        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getAttribute", 0x5E2, 0, "can't get storage attributes", v29);
        goto LABEL_71;
      case 129:
        v22 = *(this + 1052);
        v55 = &off_2A1DDFC68;
        v56 = this + 4212;
        v57 = v22;
        *a5 = v22;
        v23 = *(a4 + 2);
        if (!v23)
        {
          return 0;
        }

        if (v23 < v22)
        {
LABEL_13:
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././BaseObject.hpp", "loadAttribute", 0x13, 0, "insufficient capacity, expected: %zu, actual: %zu", v17, v22, v23);
          return 0xFFFFFFFFLL;
        }

        return amber::copy(a4, &v55, v13, v14, v15, v16, v17);
      default:
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "getAttribute", 0x5E9, 0, "invalid attribute: %u", v17, a2);
        return 0xFFFFFFFFLL;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::setAttribute(amber::AEBDContainer *this, amber::BaseObject *a2, unsigned int a3, const amber::ConstMemoryView *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (!amber::BaseObject::attributeEncodingIsValid(a2, a3, a3, a4, a5, a6, a7))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x5FD, 0, "invalid attribute encoding: %u", v11, a2);
    return 0xFFFFFFFFLL;
  }

  if (((*(*this + 136))(this, a2) & 1) == 0)
  {
    v32 = a2;
    v20 = "attribute is not accessible (set): %u";
    v21 = 1534;
    goto LABEL_11;
  }

  v35 = -1;
  v17 = -1;
  v34 = -1;
  if (a3 == 2)
  {
    if ((amber::storeAttribute<unsigned int>(&v34, a4, v12, v13, v14, v15, v16) & 0x80000000) == 0)
    {
      v18 = __clz(__rbit64(v34));
      if (1 << v18 != v34)
      {
        v18 = -1;
      }

      v19 = v34 == 0;
      goto LABEL_17;
    }

    v20 = "invalid attribute size";
    v21 = 1546;
LABEL_11:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", v21, 0, v20, v16, v32);
    return 0xFFFFFFFFLL;
  }

  if (a3 != 1)
  {
    goto LABEL_20;
  }

  if ((amber::storeAttribute<unsigned long long>(&v35, a4, v12, v13, v14, v15, v16) & 0x80000000) != 0)
  {
    v20 = "invalid attribute size";
    v21 = 1541;
    goto LABEL_11;
  }

  v18 = __clz(__rbit64(v35));
  if (1 << v18 != v35)
  {
    v18 = -1;
  }

  v19 = v35 == 0;
LABEL_17:
  if (v19)
  {
    v17 = -1;
  }

  else
  {
    v17 = v18;
  }

LABEL_20:
  switch(a2)
  {
    case 103:
      if (v17 >= 0x19)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x635, 0, "Attribute value out of range %u: %u", v16, 103, v34);
        return 0xFFFFFFFFLL;
      }

      *(this + 310) = v17;
      goto LABEL_88;
    case 104:
      if (v17 >= 0x19)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x63A, 0, "Attribute value out of range %u: %u", v16, 104, v34);
        return 0xFFFFFFFFLL;
      }

      *(this + 311) = v17;
      goto LABEL_88;
    case 105:
      if (!v35 || v35 > *(this + 228) || v35 % *(this + 442))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x641, 0, "Size out of range or not aligned %u: %llu", v16, 105, v35);
        return 0xFFFFFFFFLL;
      }

      *(this + 219) = v35;
      goto LABEL_88;
    case 108:
      *(this + 220) = v35;
      goto LABEL_88;
    case 109:
      if (v34 < 0x100 || (v17 & 0x80000000) != 0 || *(this + 219) % v34)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x617, 0, "Block size value invalid / out of range %u: %u", v16, 109, v34);
        return 0xFFFFFFFFLL;
      }

      *(this + 442) = v34;
      goto LABEL_88;
    case 110:
      if (!v34 || (v34 & 0x1F) != 0 || *(this + 442) * v34 >= 0x10000001)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x61E, 0, "Blocks per segment value invalid / out of range %u: %u", v16, 110, v34);
        return 0xFFFFFFFFLL;
      }

      *(this + 443) = v34;
      goto LABEL_88;
    case 111:
      if ((v34 - 1048577) >> 20 != 4095)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x630, 0, "Attribute value out of range %u: %u", v16, 111, v34);
        return 0xFFFFFFFFLL;
      }

      *(this + 444) = v34;
      goto LABEL_88;
    case 112:
      if (v34 < 7)
      {
        *(this + 1780) = 0x663462657A782DuLL >> (8 * v34);
        goto LABEL_88;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x651, 0, "Invalid compression algorithm %u: %u", v16, 112, v34);
      return 0xFFFFFFFFLL;
    case 113:
      if (v34 >= 2)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x65E, 0, "Invalid padding mode %u: %u", v16, 113, v34);
        return 0xFFFFFFFFLL;
      }

      if (v34 == 1)
      {
        v29 = 1;
      }

      else
      {
        v29 = -1;
      }

      if (v34)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      *(this + 1781) = v30;
      goto LABEL_88;
    case 122:
      v24 = *(this + 442);
      if (v24 > v34 || ((v25 = v34 / v24, v19 = v34 % v24 == 0, v26 = (v34 / v24) & 0x1F, v19) ? (v27 = v34 > 0x10000000) : (v27 = 1), !v27 ? (v28 = v26 == 0) : (v28 = 0), !v28))
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x628, 0, "Segment size value invalid / out of range %u: %u", v16, 122, v34);
        return 0xFFFFFFFFLL;
      }

      *(this + 443) = v25;
      goto LABEL_88;
    case 123:
      if ((amber::storeAttributeCryptoBlob(this + 320, a4, *(this + 48), v13, v14, v15, v16) & 0x80000000) == 0)
      {
        goto LABEL_88;
      }

      v20 = "invalid container ID size";
      v21 = 1636;
      goto LABEL_11;
    case 127:
      if ((amber::storeAttributeCryptoBlob(this + 3352, a4, *(this + 37), v13, v14, v15, v16) & 0x80000000) == 0)
      {
        goto LABEL_88;
      }

      v20 = "invalid symmetric key size";
      v21 = 1639;
      goto LABEL_11;
    case 129:
      if ((amber::storeAttributeCryptoBlob(this + 4192, a4, *(this + 37), v13, v14, v15, v16) & 0x80000000) == 0)
      {
        goto LABEL_88;
      }

      v20 = "invalid signature key size";
      v21 = 1648;
      goto LABEL_11;
    case 130:
      if ((amber::storeAttributeCryptoBlob(this + 3912, a4, *(this + 45), v13, v14, v15, v16) & 0x80000000) == 0)
      {
        goto LABEL_88;
      }

      v20 = "invalid signing public key size";
      v21 = 1642;
      goto LABEL_11;
    case 131:
      if ((amber::storeAttributeCryptoBlob(this + 3632, a4, *(this + 43), v13, v14, v15, v16) & 0x80000000) == 0)
      {
        goto LABEL_88;
      }

      v20 = "invalid recipient public key size";
      v21 = 1645;
      goto LABEL_11;
    case 132:
      if (*(a4 + 2) == 16)
      {
        v23 = 4752;
        goto LABEL_76;
      }

      v20 = "invalid signing callback size";
      v21 = 1651;
      goto LABEL_11;
    case 133:
      if (*(a4 + 2) != 16)
      {
        v20 = "invalid dh callback size";
        v21 = 1655;
        goto LABEL_11;
      }

      v23 = 4768;
LABEL_76:
      v33[0] = &off_2A1DDFDA8;
      v33[1] = this + v23;
      v33[2] = 16;
      amber::copy(v33, a4, v12, v13, v14, v15, v16);
LABEL_88:
      if (*(this + 4784) != 1 || ((*(*this + 120))(this) & 0x80000000) == 0)
      {
        return 0;
      }

      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x681, 0, "invalid attribute: %u", v31, a2);
      break;
    default:
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "setAttribute", 0x67C, 0, "invalid Attribute: %u", v16, a2);
      return 0xFFFFFFFFLL;
  }

  return 0xFFFFFFFFLL;
}

uint64_t amber::storeAttributeCryptoBlob(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v8 = *(a2 + 16);
  if (v8 == a3)
  {
    if ((amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a1 + 8, a2, a3, a4, a5, a6, a7) & 0x80000000) == 0)
    {
      return 0;
    }

    v8 = *(a2 + 16);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././BaseObject.hpp", "storeAttributeCryptoBlob", 0x3E, 0, "attribute size mismatch, expected %zu, actual %zu", a7, a3, v8);
  return 0xFFFFFFFFLL;
}

uint64_t amber::NBitVector<2u>::setValues(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a3 < a2 || *(a1 + 8) < a3)
  {
    v9 = "invalid range";
    v10 = 383;
    goto LABEL_6;
  }

  if (*(a4 + 16) < a3 - a2)
  {
    v9 = "source view is too small";
    v10 = 384;
LABEL_6:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "setValues", v10, 0, v9, a7);
    return 0xFFFFFFFFLL;
  }

  v12 = a2;
  v60 = &off_2A1DDFC68;
  v61 = *(a4 + 8);
  v13 = a2 & 0xF;
  if ((a2 & 0xF) != 0)
  {
    v14 = a2 >> 2;
    if ((a2 & 0xFFFFFFFFFFFFFFF0) + 16 <= a3)
    {
      v15 = 16 - v13;
    }

    else
    {
      v15 = a3 - a2;
    }

    v59 = 0u;
    amber::MutableMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), v14 & 0x1FFFFFFFFFFFFFFCLL, a7, &v53);
    v56 = &off_2A1DDFC68;
    __dst = v54;
    __n = v55;
    if ((v55 & 0x8000000000000000) != 0 || !v54 && v55)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v16);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid args");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (v55 <= 3)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "load16", 0x69, 0, "memory invalid range", v16);
      v47 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v47, "memory invalid range");
      __cxa_throw(v47, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v17.i32[0] = v54->i32[0];
    v18.i64[0] = 0x303030303030303;
    v18.i64[1] = 0x303030303030303;
    v59 = vandq_s8(vshlq_u8(vqtbl1q_s8(v17, xmmword_296A151C0), xmmword_296A151D0), v18);
    v53 = &off_2A1DDFDA8;
    v54 = &v59;
    v55 = 16;
    amber::MutableMemoryView::view(&v56, &v53, v13, v15, v16);
    v20 = __n;
    if (__n <= *(&v61 + 1))
    {
      memcpy(__dst, v61, __n);
      *&v61 = v61 + v20;
      *(&v61 + 1) -= v20;
    }

    amber::MutableMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), v14 & 0x1FFFFFFFFFFFFFFCLL, v19, &v56);
    if (__n <= 3)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "store16", 0x71, 0, "memory invalid range", a7);
      v48 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v48, "memory invalid range");
      __cxa_throw(v48, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v21.i64[0] = 0x303030303030303;
    v21.i64[1] = 0x303030303030303;
    v22 = vshlq_u8(vandq_s8(v59, v21), xmmword_296A151E0);
    v21.i16[0] = v22.u8[0];
    v21.i16[1] = v22.u8[4];
    v21.i16[2] = v22.u8[8];
    v21.i16[3] = v22.u8[12];
    v23.i16[0] = v22.u8[2];
    v23.i16[1] = v22.u8[6];
    v23.i16[2] = v22.u8[10];
    v23.i16[3] = v22.u8[14];
    v24.i16[0] = v22.u8[1];
    v24.i16[1] = v22.u8[5];
    v24.i16[2] = v22.u8[9];
    *v21.i8 = vorr_s8(*v21.i8, v23);
    v24.i16[3] = v22.u8[13];
    v23.i16[0] = v22.u8[3];
    v23.i16[1] = v22.u8[7];
    v23.i16[2] = v22.u8[11];
    v23.i16[3] = v22.u8[15];
    *v22.i8 = vorr_s8(*v21.i8, vorr_s8(v24, v23));
    *__dst = vuzp1_s8(*v22.i8, *v22.i8).u32[0];
    v12 += v15;
  }

  if (v12 < a3)
  {
    while (1)
    {
      v25 = v12 + 16;
      if (v12 + 16 > a3)
      {
        break;
      }

      if (*(&v61 + 1) <= 0xFuLL)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "operator unsigned char const * __attribute__((ext_vector_type(16)))", 0xE3, 0, "memory invalid range", a7);
        v45 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v45, "memory invalid range");
        goto LABEL_38;
      }

      v52 = *v61;
      amber::MutableMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (v12 >> 2) & 0x1FFFFFFFFFFFFFFFLL, a7, &v56);
      if (__n <= 3)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "store16", 0x71, 0, "memory invalid range", a7);
        v44 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v44, "memory invalid range");
        __cxa_throw(v44, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v26.i64[0] = 0x303030303030303;
      v26.i64[1] = 0x303030303030303;
      v27 = vshlq_u8(vandq_s8(v52, v26), xmmword_296A151E0);
      v28.i16[0] = v27.u8[0];
      v28.i16[1] = v27.u8[4];
      v28.i16[2] = v27.u8[8];
      v28.i16[3] = v27.u8[12];
      v29.i16[0] = v27.u8[2];
      v29.i16[1] = v27.u8[6];
      v29.i16[2] = v27.u8[10];
      v29.i16[3] = v27.u8[14];
      v30.i16[0] = v27.u8[1];
      v30.i16[1] = v27.u8[5];
      v30.i16[2] = v27.u8[9];
      v30.i16[3] = v27.u8[13];
      v31.i16[0] = v27.u8[3];
      v31.i16[1] = v27.u8[7];
      v31.i16[2] = v27.u8[11];
      v31.i16[3] = v27.u8[15];
      *v27.i8 = vorr_s8(vorr_s8(v28, v29), vorr_s8(v30, v31));
      *__dst = vuzp1_s8(*v27.i8, *v27.i8).u32[0];
      if (*(&v61 + 1) <= 0xFuLL)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "increment", 0x10E, 0, "memory invalid range", a7);
        v45 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v45, "memory invalid range");
LABEL_38:
        __cxa_throw(v45, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      *&v61 = v61 + 16;
      *(&v61 + 1) -= 16;
      v12 += 16;
      if (v25 >= a3)
      {
        return 0;
      }
    }

    amber::MutableMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (v12 >> 2) & 0x1FFFFFFFFFFFFFFFLL, a7, &v53);
    v56 = &off_2A1DDFC68;
    __dst = v54;
    __n = v55;
    if ((v55 & 0x8000000000000000) != 0 || !v54 && v55)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v32, 0x604020006040200, 0x604020006040200);
      v49 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v49, "memory invalid args");
      __cxa_throw(v49, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (v55 <= 3)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "load16", 0x69, 0, "memory invalid range", v32);
      v50 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v50, "memory invalid range");
      __cxa_throw(v50, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v33.i32[0] = v54->i32[0];
    v34.i64[0] = 0x303030303030303;
    v34.i64[1] = 0x303030303030303;
    v59 = vandq_s8(vshlq_u8(vqtbl1q_s8(v33, xmmword_296A151C0), xmmword_296A151D0), v34);
    v53 = &off_2A1DDFDA8;
    v54 = &v59;
    v55 = 16;
    amber::MutableMemoryView::first(&v56, &v53, a3 - v12, v32);
    v36 = __n;
    if (__n <= *(&v61 + 1))
    {
      memcpy(__dst, v61, __n);
      *&v61 = v61 + v36;
      *(&v61 + 1) -= v36;
    }

    amber::MutableMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (v12 >> 2) & 0x1FFFFFFFFFFFFFFFLL, v35, &v56);
    if (__n <= 3)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "store16", 0x71, 0, "memory invalid range", v37);
      v51 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v51, "memory invalid range");
      __cxa_throw(v51, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v38.i64[0] = 0x303030303030303;
    v38.i64[1] = 0x303030303030303;
    v39 = vshlq_u8(vandq_s8(v59, v38), xmmword_296A151E0);
    v40.i16[0] = v39.u8[0];
    v40.i16[1] = v39.u8[4];
    v40.i16[2] = v39.u8[8];
    v40.i16[3] = v39.u8[12];
    v41.i16[0] = v39.u8[2];
    v41.i16[1] = v39.u8[6];
    v41.i16[2] = v39.u8[10];
    v41.i16[3] = v39.u8[14];
    v42.i16[0] = v39.u8[1];
    v42.i16[1] = v39.u8[5];
    v42.i16[2] = v39.u8[9];
    v42.i16[3] = v39.u8[13];
    v39.i16[0] = v39.u8[3];
    v39.i16[1] = v39.u8[7];
    v39.i16[2] = v39.u8[11];
    v39.i16[3] = v39.u8[15];
    v43 = vorr_s8(vorr_s8(v40, v41), vorr_s8(v42, *v39.i8));
    *__dst = vuzp1_s8(v43, v43).u32[0];
  }

  return 0;
}

uint64_t amber::NBitVector<2u>::setValues(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a3 < a2 || *(a1 + 8) < a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "setValues", 0x1AD, 0, "invalid range", a7);
    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = a2;
    __src = vdupq_n_s8(a4);
    v10 = a2 & 0xF;
    if ((a2 & 0xF) != 0)
    {
      v11 = a2 >> 2;
      if ((a2 & 0xFFFFFFFFFFFFFFF0) + 16 <= a3)
      {
        v12 = 16 - v10;
      }

      else
      {
        v12 = a3 - a2;
      }

      v60 = 0u;
      amber::MutableMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), v11 & 0x1FFFFFFFFFFFFFFCLL, a7, &v54);
      v57 = &off_2A1DDFC68;
      __dst = v55;
      v59 = v56;
      if ((v56 & 0x8000000000000000) != 0 || !v55 && v56)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v13);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid args");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      if (v56 <= 3)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "load16", 0x69, 0, "memory invalid range", v13);
        v42 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v42, "memory invalid range");
        __cxa_throw(v42, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v14.i32[0] = v55->i32[0];
      v15.i64[0] = 0x303030303030303;
      v15.i64[1] = 0x303030303030303;
      v60 = vandq_s8(vshlq_u8(vqtbl1q_s8(v14, xmmword_296A151C0), xmmword_296A151D0), v15);
      v54 = &off_2A1DDFDA8;
      v55 = &v60;
      v56 = 16;
      amber::MutableMemoryView::operator+(&v54, v10, v13, &v57);
      v49.i64[0] = &off_2A1DDFDA8;
      v49.i64[1] = &__src;
      v50 = 16;
      v51 = &off_2A1DDFC68;
      p_src = &__src;
      v53 = 16;
      if (v12 > 0x10 || v59 < v12)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v16);
        v43 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v43, "memory invalid range");
        __cxa_throw(v43, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      memcpy(__dst, &__src, v12);
      amber::MutableMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), v11 & 0x1FFFFFFFFFFFFFFCLL, v17, &v57);
      if (v59 <= 3)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "store16", 0x71, 0, "memory invalid range", a7);
        v44 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v44, "memory invalid range");
        __cxa_throw(v44, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v18.i64[0] = 0x303030303030303;
      v18.i64[1] = 0x303030303030303;
      v19 = vshlq_u8(vandq_s8(v60, v18), xmmword_296A151E0);
      v18.i16[0] = v19.u8[0];
      v18.i16[1] = v19.u8[4];
      v18.i16[2] = v19.u8[8];
      v18.i16[3] = v19.u8[12];
      v20.i16[0] = v19.u8[2];
      v20.i16[1] = v19.u8[6];
      v20.i16[2] = v19.u8[10];
      v20.i16[3] = v19.u8[14];
      v21.i16[0] = v19.u8[1];
      v21.i16[1] = v19.u8[5];
      v21.i16[2] = v19.u8[9];
      *v18.i8 = vorr_s8(*v18.i8, v20);
      v21.i16[3] = v19.u8[13];
      v20.i16[0] = v19.u8[3];
      v20.i16[1] = v19.u8[7];
      v20.i16[2] = v19.u8[11];
      v20.i16[3] = v19.u8[15];
      *v19.i8 = vorr_s8(*v18.i8, vorr_s8(v21, v20));
      *__dst = vuzp1_s8(*v19.i8, *v19.i8).u32[0];
      v9 += v12;
    }

    if (v9 < a3)
    {
      while (1)
      {
        v22 = v9 + 16;
        if (v9 + 16 > a3)
        {
          break;
        }

        amber::MutableMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (v9 >> 2) & 0x1FFFFFFFFFFFFFFFLL, a7, &v57);
        if (v59 <= 3)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "store16", 0x71, 0, "memory invalid range", a7);
          v40 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v40, "memory invalid range");
          __cxa_throw(v40, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        v23.i64[0] = 0x303030303030303;
        v23.i64[1] = 0x303030303030303;
        v24 = vshlq_u8(vandq_s8(__src, v23), xmmword_296A151E0);
        v23.i16[0] = v24.u8[0];
        v23.i16[1] = v24.u8[4];
        v23.i16[2] = v24.u8[8];
        v23.i16[3] = v24.u8[12];
        v25.i16[0] = v24.u8[2];
        v25.i16[1] = v24.u8[6];
        v25.i16[2] = v24.u8[10];
        v25.i16[3] = v24.u8[14];
        v26.i16[0] = v24.u8[1];
        v26.i16[1] = v24.u8[5];
        v26.i16[2] = v24.u8[9];
        v26.i16[3] = v24.u8[13];
        v27.i16[0] = v24.u8[3];
        v27.i16[1] = v24.u8[7];
        v27.i16[2] = v24.u8[11];
        v27.i16[3] = v24.u8[15];
        *v24.i8 = vorr_s8(vorr_s8(*v23.i8, v25), vorr_s8(v26, v27));
        *__dst = vuzp1_s8(*v24.i8, *v24.i8).u32[0];
        v9 += 16;
        if (v22 >= a3)
        {
          return 0;
        }
      }

      amber::MutableMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (v9 >> 2) & 0x1FFFFFFFFFFFFFFFLL, a7, &v54);
      v57 = &off_2A1DDFC68;
      __dst = v55;
      v59 = v56;
      if ((v56 & 0x8000000000000000) != 0 || !v55 && v56)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v29, 0x604020006040200, 0x604020006040200, *&v49, v50, v51, p_src, v53);
        v45 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v45, "memory invalid args");
        __cxa_throw(v45, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      if (v56 <= 3)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "load16", 0x69, 0, "memory invalid range", v29);
        v46 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v46, "memory invalid range");
        __cxa_throw(v46, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v30.i32[0] = v55->i32[0];
      v31.i64[0] = 0x303030303030303;
      v31.i64[1] = 0x303030303030303;
      v49 = vandq_s8(vshlq_u8(vqtbl1q_s8(v30, xmmword_296A151C0), xmmword_296A151D0), v31);
      v57 = &off_2A1DDFDA8;
      __dst = &v49;
      v59 = 16;
      v51 = &off_2A1DDFDA8;
      p_src = &__src;
      v53 = 16;
      v54 = &off_2A1DDFC68;
      v55 = &__src;
      v56 = 16;
      if (a3 - v9 >= 0x11)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./MemoryOperations.hpp", "copy", 0x2F, 0, "memory invalid range", v29);
        v47 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v47, "memory invalid range");
        __cxa_throw(v47, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      memcpy(&v49, &__src, a3 - v9);
      amber::MutableMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (v9 >> 2) & 0x1FFFFFFFFFFFFFFFLL, v32, &v57);
      if (v59 <= 3)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "store16", 0x71, 0, "memory invalid range", v33);
        v48 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v48, "memory invalid range");
        __cxa_throw(v48, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v34.i64[0] = 0x303030303030303;
      v34.i64[1] = 0x303030303030303;
      v35 = vshlq_u8(vandq_s8(v49, v34), xmmword_296A151E0);
      v36.i16[0] = v35.u8[0];
      v36.i16[1] = v35.u8[4];
      v36.i16[2] = v35.u8[8];
      v36.i16[3] = v35.u8[12];
      v37.i16[0] = v35.u8[2];
      v37.i16[1] = v35.u8[6];
      v37.i16[2] = v35.u8[10];
      v37.i16[3] = v35.u8[14];
      v38.i16[0] = v35.u8[1];
      v38.i16[1] = v35.u8[5];
      v38.i16[2] = v35.u8[9];
      v38.i16[3] = v35.u8[13];
      v35.i16[0] = v35.u8[3];
      v35.i16[1] = v35.u8[7];
      v35.i16[2] = v35.u8[11];
      v35.i16[3] = v35.u8[15];
      v39 = vorr_s8(vorr_s8(v36, v37), vorr_s8(v38, *v35.i8));
      *__dst = vuzp1_s8(v39, v39).u32[0];
    }

    return 0;
  }
}

uint64_t amber::NBitVector<2u>::getValues(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a3 < a2 || *(a1 + 8) < a3)
  {
    v10 = "invalid range";
    v11 = 329;
    goto LABEL_6;
  }

  v9 = *(a4 + 16);
  if (v9 < a3 - a2)
  {
    v10 = "destination view is too small";
    v11 = 330;
LABEL_6:
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "getValues", v11, 0, v10, a7);
    return 0xFFFFFFFFLL;
  }

  v13 = a2;
  v14 = *(a4 + 8);
  v41 = &off_2A1DDFDA8;
  v42 = v14;
  v43 = v9;
  v15 = a2 & 0xF;
  if ((a2 & 0xF) != 0)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFF0) + 16 <= a3)
    {
      v16 = 16 - v15;
    }

    else
    {
      v16 = a3 - a2;
    }

    v40 = 0u;
    amber::ConstMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (a2 >> 2) & 0x1FFFFFFFFFFFFFFCLL, a7, &v37);
    if (v39 <= 3)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "load16", 0x69, 0, "memory invalid range", v17);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v18.i32[0] = *v38;
    v19.i64[0] = 0x303030303030303;
    v19.i64[1] = 0x303030303030303;
    v40 = vandq_s8(vshlq_u8(vqtbl1q_s8(v18, xmmword_296A151C0), xmmword_296A151D0), v19);
    v31 = &off_2A1DDFDA8;
    v32 = &v40;
    v33 = 16;
    amber::MutableMemoryView::view(&v34, &v31, v15, v16, v17);
    v20 = v36;
    v37 = &off_2A1DDFC68;
    v38 = v35;
    v39 = v36;
    if ((v36 & 0x8000000000000000) != 0 || !v35 && v36)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", a7);
      v28 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v28, "memory invalid args");
      __cxa_throw(v28, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (v36 <= v43)
    {
      memcpy(v42, v35, v36);
      v42 = (v42 + v20);
      v43 -= v20;
    }

    v13 += v16;
  }

  if (v13 < a3)
  {
    while (1)
    {
      amber::ConstMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (v13 >> 2) & 0x1FFFFFFFFFFFFFFFLL, a7, &v37);
      if (v39 <= 3)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "load16", 0x69, 0, "memory invalid range", a7);
        v26 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v26, "memory invalid range");
        __cxa_throw(v26, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v21.i32[0] = *v38;
      v22.i64[0] = 0x303030303030303;
      v22.i64[1] = 0x303030303030303;
      v23 = vandq_s8(vshlq_u8(vqtbl1q_s8(v21, xmmword_296A151C0), xmmword_296A151D0), v22);
      v40 = v23;
      v24 = v13 + 16;
      if (v13 + 16 > a3)
      {
        break;
      }

      if (v43 <= 0xF)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./MutableMemoryView.hpp", "operator unsigned char * __attribute__((ext_vector_type(16)))", 0xF1, 0, "memory invalid range", a7);
        v27 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v27, "memory invalid range");
        goto LABEL_34;
      }

      *v42 = v23;
      if (v43 <= 0xF)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./MutableMemoryView.hpp", "increment", 0x122, 0, "memory invalid range", a7);
        v27 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](v27, "memory invalid range");
LABEL_34:
        __cxa_throw(v27, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      ++v42;
      v43 -= 16;
      v13 += 16;
      if (v24 >= a3)
      {
        return 0;
      }
    }

    v31 = &off_2A1DDFDA8;
    v32 = &v40;
    v33 = 16;
    amber::MutableMemoryView::first(&v34, &v31, a3 - v13, a7);
    v37 = &off_2A1DDFC68;
    v38 = v35;
    v39 = v36;
    if ((v36 & 0x8000000000000000) != 0 || !v35 && v36)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./ConstMemoryView.hpp", "ConstMemoryView", 0x17, 0, "memory invalid args", v25, 0xFAFCFE00FAFCFE00, 0xFAFCFE00FAFCFE00, 0x101010100000000, 0x303030302020202);
      v30 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](v30, "memory invalid args");
      __cxa_throw(v30, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    if (v36 <= v43)
    {
      memcpy(v42, v35, v36);
    }
  }

  return 0;
}

BOOL amber::NBitVector<2u>::hasAnyMatching(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 > a3 || *(a1 + 8) < a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "hasAnyMatching", 0x1D8, 0, "invalid range", a7);
    return 0;
  }

  else
  {
    v9 = a2;
    v25 = vdupq_n_s8(a4);
    v10 = a2 & 0xF;
    if ((a2 & 0xF) == 0)
    {
      goto LABEL_8;
    }

    amber::ConstMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (a2 >> 2) & 0x1FFFFFFFFFFFFFFCLL, a7, &v26);
    if (v28 <= 3)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "load16", 0x69, 0, "memory invalid range", a7);
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x29C25BE90](exception, "memory invalid range");
      __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
    }

    v11.i32[0] = *v27;
    v12.i64[0] = 0x303030303030303;
    v12.i64[1] = 0x303030303030303;
    v13 = vandq_s8(vceqq_s8(vandq_s8(vshlq_u8(vqtbl1q_s8(v11, xmmword_296A151C0), xmmword_296A151D0), v12), v25), vcgtq_u8(xmmword_296A151F0, vdupq_n_s8(v10)));
    v9 = (v9 & 0xFFFFFFFFFFFFFFF0) + 16;
    if (v9 > a3)
    {
      v13 = vandq_s8(v13, vcgtq_u8(vdupq_n_s8(a3 & 0xF), xmmword_296A15200));
    }

    if ((vmaxvq_u8(vcltzq_s8(vshlq_n_s8(v13, 7uLL))) & 0x80) != 0)
    {
      return 1;
    }

    else
    {
LABEL_8:
      v24 = vcgtq_u8(vdupq_n_s8(a3 & 0xF), xmmword_296A15200);
      v14.i64[1] = 0x303030302020202;
      v14.i64[0] = a3;
      v23 = v14;
      do
      {
        v15 = v9 < a3;
        if (v9 >= a3)
        {
          break;
        }

        amber::ConstMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (v9 >> 2) & 0x1FFFFFFFFFFFFFFFLL, a7, &v26);
        if (v28 <= 3)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "load16", 0x69, 0, "memory invalid range", a7);
          v21 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v21, "memory invalid range");
          __cxa_throw(v21, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        v16.i32[0] = *v27;
        v17.i64[0] = 0x303030303030303;
        v17.i64[1] = 0x303030303030303;
        v18 = vandq_s8(vshlq_u8(vqtbl1q_s8(v16, xmmword_296A151C0), xmmword_296A151D0), v17);
        v9 += 16;
        v17.i64[0] = v9;
        v19 = vdupq_lane_s64(vcgtq_u64(v17, v23).i64[0], 0);
      }

      while ((vmaxvq_u8(vandq_s8(vceqq_s8(v18, v25), vornq_s8(vandq_s8(v24, v19), v19))) & 0x80) == 0);
    }
  }

  return v15;
}

uint64_t amber::NBitVector<2u>::countMatching(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (a2 > a3 || *(a1 + 8) < a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "countMatching", 0x22C, 0, "invalid range", a7);
    return 0;
  }

  else
  {
    v9 = a2;
    v31 = vdupq_n_s8(a4);
    v10 = a2 & 0xF;
    if ((a2 & 0xF) != 0)
    {
      amber::ConstMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (a2 >> 2) & 0x1FFFFFFFFFFFFFFCLL, a7, &v33);
      if (v35 <= 3)
      {
        amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "load16", 0x69, 0, "memory invalid range", a7);
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x29C25BE90](exception, "memory invalid range");
        __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
      }

      v11.i32[0] = *v34;
      v12.i64[0] = 0x303030303030303;
      v12.i64[1] = 0x303030303030303;
      v13 = vandq_s8(vceqq_s8(vandq_s8(vshlq_u8(vqtbl1q_s8(v11, xmmword_296A151C0), xmmword_296A151D0), v12), v31), vcgtq_u8(xmmword_296A151F0, vdupq_n_s8(v10)));
      v9 = (v9 & 0xFFFFFFFFFFFFFFF0) + 16;
      if (v9 > a3)
      {
        v13 = vandq_s8(v13, vcgtq_u8(vdupq_n_s8(a3 & 0xF), xmmword_296A15200));
      }

      v14 = vcltzq_s8(vshlq_n_s8(v13, 7uLL));
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v14 = 0uLL;
    }

    if (v9 >= a3)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v30 = vcgtq_u8(vdupq_n_s8(a3 & 0xF), xmmword_296A15200);
      v17.i64[1] = 0x303030302020202;
      v17.i64[0] = a3;
      v29 = v17;
      do
      {
        v32 = v14;
        amber::ConstMemoryViewConvertible<amber::Buffer>::operator+((a1 + 16), (v9 >> 2) & 0x1FFFFFFFFFFFFFFFLL, a7, &v33);
        if (v35 <= 3)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././NBitVector.hpp", "load16", 0x69, 0, "memory invalid range", a7);
          v27 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x29C25BE90](v27, "memory invalid range");
          __cxa_throw(v27, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
        }

        v18.i32[0] = *v34;
        v19.i64[0] = 0x303030303030303;
        v19.i64[1] = 0x303030303030303;
        v20 = vandq_s8(vshlq_u8(vqtbl1q_s8(v18, xmmword_296A151C0), xmmword_296A151D0), v19);
        v9 += 16;
        v19.i64[0] = v9;
        v21 = vdupq_lane_s64(vcgtq_u64(v19, v29).i64[0], 0);
        v14 = vaddq_s8(v32, vandq_s8(vceqq_s8(v20, v31), vornq_s8(vandq_s8(v30, v21), v21)));
        if (v15 > 98)
        {
          v15 = 0;
          v22 = vshrq_n_s16(vqtbl1q_s8(v14, xmmword_296A15220), 8uLL);
          v23 = vshrq_n_s16(vqtbl1q_s8(v14, xmmword_296A15210), 8uLL);
          v16 -= vaddv_s16(vadd_s16(vadd_s16(vadd_s16(*v23.i8, *v22.i8), *&vextq_s8(v23, v23, 8uLL)), *&vextq_s8(v22, v22, 8uLL)));
          v14 = 0uLL;
        }

        else
        {
          ++v15;
        }
      }

      while (v9 < a3);
    }

    if (v15 >= 1)
    {
      v24 = vshrq_n_s16(vqtbl1q_s8(v14, xmmword_296A15220), 8uLL);
      v25 = vshrq_n_s16(vqtbl1q_s8(v14, xmmword_296A15210), 8uLL);
      v16 -= vaddv_s16(vadd_s16(vadd_s16(vadd_s16(*v25.i8, *v24.i8), *&vextq_s8(v25, v25, 8uLL)), *&vextq_s8(v24, v24, 8uLL)));
    }
  }

  return v16;
}

uint64_t amber::AEBDContainer::clusterIsModified(amber::AEBDContainer *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (*(this + 466) <= a2)
  {
    return 0;
  }

  else
  {
    return (amber::ConstMemoryViewConvertible<amber::Buffer>::operator[](this + 313, a2, a3, a4, a5, a6, a7) >> 1) & 1;
  }
}

uint64_t amber::AEBDContainer::updateComputedValues(amber::AEBDContainer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::size(this + 1, a2, a3, a4, a5, a6, a7) >> 32)
  {
    v14 = "invalid auth data";
    v15 = 1794;
  }

  else
  {
    *(this + 78) = amber::ConstMemoryViewConvertible<amber::KeyValueBlob>::size(this + 1, v8, v9, v10, v11, v12, v13);
    v49 = &off_2A1DDFDA8;
    v50 = this + 304;
    v51 = 16;
    v52[0] = &off_2A1DDFC68;
    v52[1] = this + 304;
    v52[2] = 16;
    v22 = amber::AEBDContainer::prologueSizeWithMagic(v52, v16, v17, v18, v19, v20, v21);
    if (v22 < 0)
    {
      v14 = "invalid container attributes";
      v15 = 1797;
    }

    else
    {
      *(this + 454) = v22;
      v23 = *(this + 442);
      v24 = *(this + 443);
      v25 = v23 * v24;
      *(this + 459) = v25;
      if ((v25 & 0xFFFFFFFF00000000) != 0)
      {
        v14 = "segment_size overflow";
        v15 = 1802;
      }

      else
      {
        v26 = *(this + 444);
        v27 = v26 * v25;
        v28 = 1 << *(this + 310);
        *(this + 228) = v27 * v28;
        if (is_mul_ok(v27, v28))
        {
          v29 = 2 * v24 + 7;
          if ((v29 & 0x38) != 0)
          {
            v14 = "bitmaps are too large or blocks_per_segment is not multiple of 32 ";
            v15 = 1812;
          }

          else
          {
            v30 = v29 >> 3;
            *(this + 460) = v30;
            v31 = *(this + 39);
            v32 = __CFADD__(v31, 8);
            v33 = v31 + 8;
            if (v32 || (v34 = *(this + 40), v32 = __CFADD__(v33, v34), v35 = v33 + v34, v32) || (v36 = *(this + 41), v32 = __CFADD__(v35, v36), v37 = v35 + v36, v32) || (v32 = __CFADD__(v37, v30), v38 = v37 + v30, v32) || (v39 = v26 * v38, *(this + 458) = v39, (v39 & 0xFFFFFFFF00000000) != 0))
            {
              v14 = "cluster header size overflow";
              v15 = 1823;
            }

            else
            {
              v41 = 1 << *(this + 311);
              v32 = __CFADD__(v39, v41 - 1);
              LODWORD(v39) = (v39 + v41 - 1) & -v41;
              if (v32)
              {
                v39 = 0xFFFFFFFFLL;
              }

              else
              {
                v39 = v39;
              }

              *(this + 458) = v39;
              if (v39 == -1)
              {
                v14 = "cluster size too large";
                v15 = 1825;
              }

              else if (v23 && v24 && v26)
              {
                v42 = (v23 + *(this + 219) - 1) / v23;
                *(this + 231) = v42;
                v43 = (v24 + v42 - 1) / v24;
                *(this + 232) = v43;
                v44 = (v26 + v43 - 1) / v26;
                if (HIDWORD(v44))
                {
                  v14 = "cluster count overflow";
                  v15 = 1835;
                }

                else
                {
                  *(this + 466) = v44;
                  if (is_mul_ok(v43, v25))
                  {
                    v45 = v43 * v25;
                    v32 = __CFADD__(v45, v22);
                    v46 = v45 + v22;
                    if (!v32)
                    {
                      v47 = v44 * v39;
                      v32 = __CFADD__(v47, v46);
                      v48 = v47 + v46;
                      if (!v32)
                      {
                        result = 0;
                        *(this + 234) = v48;
                        return result;
                      }
                    }
                  }

                  v14 = "storage size overflow";
                  v15 = 1840;
                }
              }

              else
              {
                v14 = "invalid root header fields, division by 0";
                v15 = 1830;
              }
            }
          }
        }

        else
        {
          v14 = "max size overflow";
          v15 = 1808;
        }
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/AEBDContainer.cpp", "updateComputedValues", v15, 0, v14, v13, v49, v50, v51);
  return 0xFFFFFFFFLL;
}

uint64_t amber::AEBDContainer::canGetAttribute(amber::AEBDContainer *this, int a2)
{
  v2 = a2 - 101;
  if ((a2 - 101) > 0x1C)
  {
    goto LABEL_9;
  }

  v3 = 1;
  if (((1 << v2) & 0x3F5FF0) == 0)
  {
    v4 = 1 << v2;
    if ((v4 & 0x2C0800F) != 0)
    {
      return v3 & 1;
    }

    if ((v4 & 0x11000000) != 0)
    {
LABEL_7:
      v3 = *(this + 4785);
      return v3 & 1;
    }

LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if ((*(this + 4784) & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t amber::AEBDContainer::canSetAttribute(amber::AEBDContainer *this, int a2)
{
  v2 = 0;
  v3 = a2 - 103;
  if ((a2 - 103) <= 0x1E)
  {
    if (((1 << v3) & 0x3807C7) != 0)
    {
      if (*(this + 4784) != 1)
      {
        v2 = 0;
        return v2 & 1;
      }

LABEL_6:
      v2 = *(this + 4785) ^ 1;
      return v2 & 1;
    }

    if (((1 << v3) & 0x7D000000) != 0)
    {
      goto LABEL_6;
    }

    if (a2 == 108)
    {
      if (*(this + 4784))
      {
        v2 = 1;
      }

      else
      {
        v2 = *(this + 4785);
      }
    }
  }

  return v2 & 1;
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::load(uint64_t *a1, const amber::MutableMemoryView *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::Buffer::constBuf(v17, a1, a7);
  amber::ConstMemoryView::view(v16, v17, a1[10], a1[11] - a1[10], v10);
  return amber::ConstMemoryView::load(v16, a2, a3, v11, v12, v13, v14);
}

void amber::AEBDContainer::~AEBDContainer(amber::AEBDContainer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  amber::AEBDContainer::~AEBDContainer(this, a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE19F0;
  *(this + 559) = &unk_2A1DDFDD8;
  *(this + 560) = &unk_2A1DDFE08;
  *(this + 4492) = 0u;
  *(this + 4508) = 0u;
  *(this + 4524) = 0u;
  *(this + 4540) = 0u;
  *(this + 4556) = 0u;
  *(this + 4572) = 0u;
  *(this + 4588) = 0u;
  *(this + 4604) = 0u;
  *(this + 4620) = 0u;
  *(this + 4636) = 0u;
  *(this + 4652) = 0u;
  *(this + 4668) = 0u;
  *(this + 4684) = 0u;
  *(this + 4700) = 0u;
  *(this + 4716) = 0u;
  *(this + 4732) = 0u;
  *(this + 524) = &unk_2A1DDFDD8;
  *(this + 525) = &unk_2A1DDFE08;
  *(this + 4212) = 0u;
  *(this + 4228) = 0u;
  *(this + 4244) = 0u;
  *(this + 4260) = 0u;
  *(this + 4276) = 0u;
  *(this + 4292) = 0u;
  *(this + 4308) = 0u;
  *(this + 4324) = 0u;
  *(this + 4340) = 0u;
  *(this + 4356) = 0u;
  *(this + 4372) = 0u;
  *(this + 4388) = 0u;
  *(this + 4404) = 0u;
  *(this + 4420) = 0u;
  *(this + 4436) = 0u;
  *(this + 4452) = 0u;
  *(this + 489) = &unk_2A1DDFDD8;
  *(this + 490) = &unk_2A1DDFE08;
  *(this + 4156) = 0u;
  *(this + 4172) = 0u;
  *(this + 4124) = 0u;
  *(this + 4140) = 0u;
  *(this + 4092) = 0u;
  *(this + 4108) = 0u;
  *(this + 4060) = 0u;
  *(this + 4076) = 0u;
  *(this + 4028) = 0u;
  *(this + 4044) = 0u;
  *(this + 3996) = 0u;
  *(this + 4012) = 0u;
  *(this + 3964) = 0u;
  *(this + 3980) = 0u;
  *(this + 3932) = 0u;
  *(this + 3948) = 0u;
  *(this + 454) = &unk_2A1DDFDD8;
  *(this + 455) = &unk_2A1DDFE08;
  *(this + 3876) = 0u;
  *(this + 3892) = 0u;
  *(this + 3844) = 0u;
  *(this + 3860) = 0u;
  *(this + 3812) = 0u;
  *(this + 3828) = 0u;
  *(this + 3780) = 0u;
  *(this + 3796) = 0u;
  *(this + 3748) = 0u;
  *(this + 3764) = 0u;
  *(this + 3716) = 0u;
  *(this + 3732) = 0u;
  *(this + 3684) = 0u;
  *(this + 3700) = 0u;
  *(this + 3652) = 0u;
  *(this + 3668) = 0u;
  *(this + 419) = &unk_2A1DDFDD8;
  *(this + 420) = &unk_2A1DDFE08;
  *(this + 3596) = 0u;
  *(this + 3612) = 0u;
  *(this + 3564) = 0u;
  *(this + 3580) = 0u;
  *(this + 3532) = 0u;
  *(this + 3548) = 0u;
  *(this + 3500) = 0u;
  *(this + 3516) = 0u;
  *(this + 3468) = 0u;
  *(this + 3484) = 0u;
  *(this + 3436) = 0u;
  *(this + 3452) = 0u;
  *(this + 3404) = 0u;
  *(this + 3420) = 0u;
  *(this + 3372) = 0u;
  *(this + 3388) = 0u;
  amber::Buffer::~Buffer(this + 406, a2, a3, a4, a5, a6, a7);
  amber::Buffer::~Buffer(this + 393, v8, v9, v10, v11, v12, v13);
  amber::Buffer::~Buffer(this + 380, v14, v15, v16, v17, v18, v19);
  amber::Buffer::~Buffer(this + 367, v20, v21, v22, v23, v24, v25);
  *(this + 352) = &unk_2A1DE1AA8;
  amber::Buffer::~Buffer(this + 354, v26, v27, v28, v29, v30, v31);
  amber::Buffer::~Buffer(this + 339, v32, v33, v34, v35, v36, v37);
  amber::Buffer::~Buffer(this + 326, v38, v39, v40, v41, v42, v43);
  amber::Buffer::~Buffer(this + 313, v44, v45, v46, v47, v48, v49);
  std::mutex::~mutex((this + 2440));
  *(this + 270) = &unk_2A1DDFDD8;
  *(this + 271) = &unk_2A1DDFE08;
  *(this + 2180) = 0u;
  *(this + 2196) = 0u;
  *(this + 2212) = 0u;
  *(this + 2228) = 0u;
  *(this + 2244) = 0u;
  *(this + 2260) = 0u;
  *(this + 2276) = 0u;
  *(this + 2292) = 0u;
  *(this + 2308) = 0u;
  *(this + 2324) = 0u;
  *(this + 2340) = 0u;
  *(this + 2356) = 0u;
  *(this + 2372) = 0u;
  *(this + 2388) = 0u;
  *(this + 2404) = 0u;
  *(this + 2420) = 0u;
  *(this + 235) = &unk_2A1DDFDD8;
  *(this + 236) = &unk_2A1DDFE08;
  *(this + 2124) = 0u;
  *(this + 2140) = 0u;
  *(this + 2092) = 0u;
  *(this + 2108) = 0u;
  *(this + 2060) = 0u;
  *(this + 2076) = 0u;
  *(this + 2028) = 0u;
  *(this + 2044) = 0u;
  *(this + 1996) = 0u;
  *(this + 2012) = 0u;
  *(this + 1964) = 0u;
  *(this + 1980) = 0u;
  *(this + 1932) = 0u;
  *(this + 1948) = 0u;
  *(this + 1900) = 0u;
  *(this + 1916) = 0u;
  *(this + 184) = &unk_2A1DDFDD8;
  *(this + 185) = &unk_2A1DDFE08;
  *(this + 1716) = 0u;
  *(this + 1732) = 0u;
  *(this + 1684) = 0u;
  *(this + 1700) = 0u;
  *(this + 1652) = 0u;
  *(this + 1668) = 0u;
  *(this + 1620) = 0u;
  *(this + 1636) = 0u;
  *(this + 1588) = 0u;
  *(this + 1604) = 0u;
  *(this + 1556) = 0u;
  *(this + 1572) = 0u;
  *(this + 1524) = 0u;
  *(this + 1540) = 0u;
  *(this + 1492) = 0u;
  *(this + 1508) = 0u;
  amber::Buffer::~Buffer(this + 171, v50, v51, v52, v53, v54, v55);
  amber::Buffer::~Buffer(this + 158, v56, v57, v58, v59, v60, v61);
  amber::Buffer::~Buffer(this + 145, v62, v63, v64, v65, v66, v67);
  *(this + 110) = &unk_2A1DDFDD8;
  *(this + 111) = &unk_2A1DDFE08;
  *(this + 900) = 0u;
  *(this + 916) = 0u;
  *(this + 932) = 0u;
  *(this + 948) = 0u;
  *(this + 964) = 0u;
  *(this + 980) = 0u;
  *(this + 996) = 0u;
  *(this + 1012) = 0u;
  *(this + 1028) = 0u;
  *(this + 1044) = 0u;
  *(this + 1060) = 0u;
  *(this + 1076) = 0u;
  *(this + 1092) = 0u;
  *(this + 1108) = 0u;
  *(this + 1124) = 0u;
  *(this + 1140) = 0u;
  *(this + 75) = &unk_2A1DDFDD8;
  *(this + 76) = &unk_2A1DDFE08;
  *(this + 844) = 0u;
  *(this + 860) = 0u;
  *(this + 812) = 0u;
  *(this + 828) = 0u;
  *(this + 780) = 0u;
  *(this + 796) = 0u;
  *(this + 748) = 0u;
  *(this + 764) = 0u;
  *(this + 716) = 0u;
  *(this + 732) = 0u;
  *(this + 684) = 0u;
  *(this + 700) = 0u;
  *(this + 652) = 0u;
  *(this + 668) = 0u;
  *(this + 620) = 0u;
  *(this + 636) = 0u;
  *(this + 40) = &unk_2A1DDFDD8;
  *(this + 41) = &unk_2A1DDFE08;
  *(this + 564) = 0u;
  *(this + 580) = 0u;
  *(this + 532) = 0u;
  *(this + 548) = 0u;
  *(this + 500) = 0u;
  *(this + 516) = 0u;
  *(this + 468) = 0u;
  *(this + 484) = 0u;
  *(this + 436) = 0u;
  *(this + 452) = 0u;
  *(this + 404) = 0u;
  *(this + 420) = 0u;
  *(this + 372) = 0u;
  *(this + 388) = 0u;
  *(this + 340) = 0u;
  *(this + 356) = 0u;
  *this = &unk_2A1DE29B8;
  amber::KeyValueBlob::~KeyValueBlob(this + 1, v68, v69, v70, v71, v72, v73);
}

amber::AEBDContainer *amber::AEBDContainer::AEBDContainer(amber::AEBDContainer *this)
{
  *this = &unk_2A1DE29B8;
  amber::KeyValueBlob::KeyValueBlob((this + 8));
  *this = &unk_2A1DE19F0;
  *(this + 40) = &unk_2A1DDFDD8;
  *(this + 41) = &unk_2A1DDFE08;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 0;
  *(this + 75) = &unk_2A1DDFDD8;
  *(this + 76) = &unk_2A1DDFE08;
  *(this + 616) = 0u;
  *(this + 632) = 0u;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 760) = 0u;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 808) = 0u;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 856) = 0u;
  *(this + 218) = 0;
  *(this + 110) = &unk_2A1DDFDD8;
  *(this + 111) = &unk_2A1DDFE08;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 65) = 0u;
  *(this + 66) = 0u;
  *(this + 67) = 0u;
  *(this + 68) = 0u;
  *(this + 69) = 0u;
  *(this + 70) = 0u;
  *(this + 71) = 0u;
  *(this + 288) = 0;
  *(this + 146) = off_2A1DDFD48;
  *(this + 1176) = 0u;
  *(this + 149) = &off_2A1DDFDA8;
  *(this + 75) = 0u;
  *(this + 152) = &off_2A1DDFC68;
  *(this + 1224) = 0u;
  *(this + 1240) = 0u;
  *(this + 628) = 257;
  *(this + 1258) = 0;
  *(this + 145) = off_2A1DDFC98;
  *(this + 159) = off_2A1DDFD48;
  *(this + 80) = 0u;
  *(this + 162) = &off_2A1DDFDA8;
  *(this + 1304) = 0u;
  *(this + 165) = &off_2A1DDFC68;
  *(this + 84) = 0u;
  *(this + 83) = 0u;
  *(this + 680) = 257;
  *(this + 1362) = 0;
  *(this + 158) = off_2A1DDFC98;
  *(this + 172) = off_2A1DDFD48;
  *(this + 1384) = 0u;
  *(this + 175) = &off_2A1DDFDA8;
  *(this + 88) = 0u;
  *(this + 178) = &off_2A1DDFC68;
  *(this + 1432) = 0u;
  *(this + 1448) = 0u;
  *(this + 732) = 257;
  *(this + 1466) = 0;
  *(this + 171) = off_2A1DDFC98;
  *(this + 184) = &unk_2A1DDFDD8;
  *(this + 185) = &unk_2A1DDFE08;
  *(this + 436) = 0;
  *(this + 108) = 0u;
  *(this + 107) = 0u;
  *(this + 106) = 0u;
  *(this + 105) = 0u;
  *(this + 104) = 0u;
  *(this + 103) = 0u;
  *(this + 102) = 0u;
  *(this + 101) = 0u;
  *(this + 100) = 0u;
  *(this + 99) = 0u;
  *(this + 98) = 0u;
  *(this + 97) = 0u;
  *(this + 96) = 0u;
  *(this + 95) = 0u;
  *(this + 94) = 0u;
  *(this + 93) = 0u;
  *(this + 235) = &unk_2A1DDFDD8;
  *(this + 236) = &unk_2A1DDFE08;
  *(this + 1896) = 0u;
  *(this + 1912) = 0u;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 1960) = 0u;
  *(this + 1976) = 0u;
  *(this + 1992) = 0u;
  *(this + 2008) = 0u;
  *(this + 2024) = 0u;
  *(this + 2040) = 0u;
  *(this + 2056) = 0u;
  *(this + 2072) = 0u;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *(this + 2120) = 0u;
  *(this + 2136) = 0u;
  *(this + 538) = 0;
  *(this + 270) = &unk_2A1DDFDD8;
  *(this + 271) = &unk_2A1DDFE08;
  *(this + 136) = 0u;
  *(this + 137) = 0u;
  *(this + 138) = 0u;
  *(this + 139) = 0u;
  *(this + 140) = 0u;
  *(this + 141) = 0u;
  *(this + 142) = 0u;
  *(this + 143) = 0u;
  *(this + 144) = 0u;
  *(this + 145) = 0u;
  *(this + 146) = 0u;
  *(this + 147) = 0u;
  *(this + 148) = 0u;
  *(this + 149) = 0u;
  *(this + 150) = 0u;
  *(this + 151) = 0u;
  *(this + 608) = 0;
  *(this + 305) = 850045863;
  *(this + 153) = 0u;
  *(this + 154) = 0u;
  *(this + 155) = 0u;
  *(this + 312) = 0;
  *(this + 314) = off_2A1DDFD48;
  *(this + 2520) = 0u;
  *(this + 317) = &off_2A1DDFDA8;
  *(this + 159) = 0u;
  *(this + 320) = &off_2A1DDFC68;
  *(this + 2568) = 0u;
  *(this + 2584) = 0u;
  *(this + 1300) = 257;
  *(this + 2602) = 0;
  *(this + 313) = off_2A1DDFC98;
  *(this + 327) = off_2A1DDFD48;
  *(this + 164) = 0u;
  *(this + 330) = &off_2A1DDFDA8;
  *(this + 2648) = 0u;
  *(this + 333) = &off_2A1DDFC68;
  *(this + 167) = 0u;
  *(this + 168) = 0u;
  *(this + 1352) = 257;
  *(this + 2706) = 0;
  *(this + 326) = off_2A1DDFC98;
  *(this + 340) = off_2A1DDFD48;
  *(this + 2728) = 0u;
  *(this + 343) = &off_2A1DDFDA8;
  *(this + 172) = 0u;
  *(this + 346) = &off_2A1DDFC68;
  *(this + 2776) = 0u;
  *(this + 2792) = 0u;
  *(this + 1404) = 257;
  *(this + 2810) = 0;
  *(this + 339) = off_2A1DDFC98;
  amber::NBitVector<2u>::NBitVector(this + 2816);
  *(this + 368) = off_2A1DDFD48;
  *(this + 2952) = 0u;
  *(this + 371) = &off_2A1DDFDA8;
  *(this + 186) = 0u;
  *(this + 374) = &off_2A1DDFC68;
  *(this + 3000) = 0u;
  *(this + 3016) = 0u;
  *(this + 1516) = 257;
  *(this + 3034) = 0;
  *(this + 367) = off_2A1DDFC98;
  *(this + 381) = off_2A1DDFD48;
  *(this + 191) = 0u;
  *(this + 384) = &off_2A1DDFDA8;
  *(this + 3080) = 0u;
  *(this + 387) = &off_2A1DDFC68;
  *(this + 195) = 0u;
  *(this + 194) = 0u;
  *(this + 1568) = 257;
  *(this + 3138) = 0;
  *(this + 380) = off_2A1DDFC98;
  *(this + 394) = off_2A1DDFD48;
  *(this + 3160) = 0u;
  *(this + 397) = &off_2A1DDFDA8;
  *(this + 199) = 0u;
  *(this + 400) = &off_2A1DDFC68;
  *(this + 3208) = 0u;
  *(this + 3224) = 0u;
  *(this + 1620) = 257;
  *(this + 3242) = 0;
  *(this + 393) = off_2A1DDFC98;
  *(this + 407) = off_2A1DDFD48;
  *(this + 204) = 0u;
  *(this + 410) = &off_2A1DDFDA8;
  *(this + 3288) = 0u;
  *(this + 413) = &off_2A1DDFC68;
  *(this + 208) = 0u;
  *(this + 207) = 0u;
  *(this + 1672) = 257;
  *(this + 3346) = 0;
  *(this + 406) = off_2A1DDFC98;
  *(this + 419) = &unk_2A1DDFDD8;
  *(this + 420) = &unk_2A1DDFE08;
  *(this + 3368) = 0u;
  *(this + 3384) = 0u;
  *(this + 3400) = 0u;
  *(this + 3416) = 0u;
  *(this + 3432) = 0u;
  *(this + 3448) = 0u;
  *(this + 3464) = 0u;
  *(this + 3480) = 0u;
  *(this + 3496) = 0u;
  *(this + 3512) = 0u;
  *(this + 3528) = 0u;
  *(this + 3544) = 0u;
  *(this + 3560) = 0u;
  *(this + 3576) = 0u;
  *(this + 3592) = 0u;
  *(this + 3608) = 0u;
  *(this + 906) = 0;
  *(this + 454) = &unk_2A1DDFDD8;
  *(this + 455) = &unk_2A1DDFE08;
  *(this + 228) = 0u;
  *(this + 229) = 0u;
  *(this + 230) = 0u;
  *(this + 231) = 0u;
  *(this + 232) = 0u;
  *(this + 233) = 0u;
  *(this + 234) = 0u;
  *(this + 235) = 0u;
  *(this + 236) = 0u;
  *(this + 237) = 0u;
  *(this + 238) = 0u;
  *(this + 239) = 0u;
  *(this + 240) = 0u;
  *(this + 241) = 0u;
  *(this + 242) = 0u;
  *(this + 243) = 0u;
  *(this + 976) = 0;
  *(this + 489) = &unk_2A1DDFDD8;
  *(this + 490) = &unk_2A1DDFE08;
  *(this + 3928) = 0u;
  *(this + 3944) = 0u;
  *(this + 3960) = 0u;
  *(this + 3976) = 0u;
  *(this + 3992) = 0u;
  *(this + 4008) = 0u;
  *(this + 4024) = 0u;
  *(this + 4040) = 0u;
  *(this + 4056) = 0u;
  *(this + 4072) = 0u;
  *(this + 4088) = 0u;
  *(this + 4104) = 0u;
  *(this + 4120) = 0u;
  *(this + 4136) = 0u;
  *(this + 4152) = 0u;
  *(this + 4168) = 0u;
  *(this + 1046) = 0;
  *(this + 524) = &unk_2A1DDFDD8;
  *(this + 525) = &unk_2A1DDFE08;
  *(this + 263) = 0u;
  *(this + 264) = 0u;
  *(this + 265) = 0u;
  *(this + 266) = 0u;
  *(this + 267) = 0u;
  *(this + 268) = 0u;
  *(this + 269) = 0u;
  *(this + 270) = 0u;
  *(this + 271) = 0u;
  *(this + 272) = 0u;
  *(this + 273) = 0u;
  *(this + 274) = 0u;
  *(this + 275) = 0u;
  *(this + 276) = 0u;
  *(this + 277) = 0u;
  *(this + 278) = 0u;
  *(this + 1116) = 0;
  *(this + 559) = &unk_2A1DDFDD8;
  *(this + 560) = &unk_2A1DDFE08;
  *(this + 4488) = 0u;
  *(this + 4504) = 0u;
  *(this + 4520) = 0u;
  *(this + 4536) = 0u;
  *(this + 4552) = 0u;
  *(this + 4568) = 0u;
  *(this + 4584) = 0u;
  *(this + 4600) = 0u;
  *(this + 4616) = 0u;
  *(this + 4632) = 0u;
  *(this + 4648) = 0u;
  *(this + 4664) = 0u;
  *(this + 4680) = 0u;
  *(this + 4696) = 0u;
  *(this + 4712) = 0u;
  *(this + 4728) = 0u;
  *(this + 1186) = 0;
  return this;
}

uint64_t amber::NBitVector<2u>::~NBitVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *a1 = &unk_2A1DE1AA8;
  amber::Buffer::~Buffer((a1 + 16), a2, a3, a4, a5, a6, a7);
  return a1;
}

double amber::NBitVector<2u>::NBitVector(uint64_t a1)
{
  *a1 = &unk_2A1DE1AA8;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_2A1DDFD28;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = off_2A1DDFD48;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = &off_2A1DDFDA8;
  *(a1 + 72) = &off_2A1DDFC68;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  *(a1 + 114) = 0;
  return result;
}

void amber::NBitVector<2u>::~NBitVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *a1 = &unk_2A1DE1AA8;
  amber::Buffer::~Buffer((a1 + 16), a2, a3, a4, a5, a6, a7);

  JUMPOUT(0x29C25C000);
}

void *amber::MutableMemoryView::MutableMemoryView(void *this, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  *this = &off_2A1DDFDA8;
  this[1] = a2;
  this[2] = a3;
  if (a3 < 0 || !a2 && a3)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Memory/./MutableMemoryView.hpp", "MutableMemoryView", 0xE9, 0, "memory invalid args", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid args");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  return this;
}

uint64_t amber::ConstMemoryView::loadAndAssign<amber::CryptoBlobBase<256u>>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v7 = a4 + a3;
  if (__CFADD__(a4, a3))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/AEBD/.././Range.hpp", "createWithOffsetAndLength", 0x1E, 0, "memory invalid range", a7);
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C25BE90](exception, "memory invalid range");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  if (v7 <= a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  if (v7 <= a4)
  {
    v7 = 0;
  }

  v18[0] = v8;
  v18[1] = v7;
  if (v7 > a1[2])
  {
    return 0xFFFFFFFFLL;
  }

  amber::ConstMemoryView::view(v17, a1, v18, a7);
  return amber::BufferProtocol<amber::CryptoBlobBase<256u>>::assign(a2 + 8, v17, v11, v12, v13, v14, v15);
}

uint64_t amber::ConstMemoryViewConvertible<amber::Buffer>::operator+@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, const char *a3@<X6>, void *a4@<X8>)
{
  amber::Buffer::constBuf(v11, a1, a3);
  amber::ConstMemoryView::view(v10, v11, a1[10], a1[11] - a1[10], v7);
  return amber::ConstMemoryView::operator+(v10, a2, v8, a4);
}

amber::KnoxURL *amber::KnoxURL::KnoxURL(amber::KnoxURL *this, const amber::KnoxURL *a2)
{
  *this = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v6;
  }

  *(this + 5) = *(a2 + 5);
  *(this + 24) = *(a2 + 24);
  *(this + 13) = *(a2 + 13);
  *(this + 14) = *(a2 + 14);
  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v7 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v7;
  }

  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  amber::KnoxURL::update(this);
  return this;
}

void sub_29699F79C(_Unwind_Exception *exception_object)
{
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *amber::KnoxURL::update(std::string *this)
{
  v23 = *MEMORY[0x29EDCA608];
  if (SHIBYTE(this[6].__r_.__value_.__r.__words[2]) < 0)
  {
    *this[6].__r_.__value_.__l.__data_ = 0;
    this[6].__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this[6].__r_.__value_.__s.__data_[0] = 0;
    *(&this[6].__r_.__value_.__s + 23) = 0;
  }

  std::string::append(this + 6, "knox://");
  v2 = this[1].__r_.__value_.__s.__data_[7];
  if (v2 >= 0)
  {
    size = &this->__r_.__value_.__s.__data_[8];
  }

  else
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (v2 >= 0)
  {
    v4 = this[1].__r_.__value_.__s.__data_[7];
  }

  else
  {
    v4 = this->__r_.__value_.__r.__words[2];
  }

  std::string::append(this + 6, size, v4);
  std::string::append(this + 6, "/");
  v5 = LODWORD(this->__r_.__value_.__l.__data_) - 1;
  if (v5 <= 2)
  {
    std::string::append(this + 6, off_29EE501D8[v5]);
  }

  v6 = this[2].__r_.__value_.__s.__data_[7];
  if (v6 >= 0)
  {
    v7 = &this[1].__r_.__value_.__s.__data_[8];
  }

  else
  {
    v7 = this[1].__r_.__value_.__l.__size_;
  }

  if (v6 >= 0)
  {
    v8 = this[2].__r_.__value_.__s.__data_[7];
  }

  else
  {
    v8 = this[1].__r_.__value_.__r.__words[2];
  }

  result = std::string::append(this + 6, v7, v8);
  if (LODWORD(this->__r_.__value_.__l.__data_) == 3)
  {
    snprintf(__str, 0xC8uLL, "/size:%llu;io-size:%u;seed:0x%llx", this[3].__r_.__value_.__r.__words[2], LODWORD(this[4].__r_.__value_.__l.__data_), this[3].__r_.__value_.__l.__size_);
    result = std::string::append(this + 6, __str);
  }

  else
  {
    v10 = this[3].__r_.__value_.__s.__data_[7];
    if ((v10 & 0x8000000000000000) != 0)
    {
      v10 = this[2].__r_.__value_.__r.__words[2];
    }

    if (v10)
    {
      std::string::append(this + 6, "/");
      v11 = this[3].__r_.__value_.__s.__data_[7];
      if (v11 >= 0)
      {
        v12 = &this[2].__r_.__value_.__s.__data_[8];
      }

      else
      {
        v12 = this[2].__r_.__value_.__l.__size_;
      }

      if (v11 >= 0)
      {
        v13 = this[3].__r_.__value_.__s.__data_[7];
      }

      else
      {
        v13 = this[2].__r_.__value_.__r.__words[2];
      }

      result = std::string::append(this + 6, v12, v13);
    }
  }

  v14 = this[4].__r_.__value_.__l.__size_;
  if (v14 == -1)
  {
    v15 = 63;
  }

  else
  {
    snprintf(__str, 0xC8uLL, "%cmemory-cache-alloc-size=%llu", 63, v14);
    result = std::string::append(this + 6, __str);
    v15 = 38;
  }

  v16 = this[4].__r_.__value_.__r.__words[2];
  if ((v16 & 0x80000000) == 0)
  {
    snprintf(__str, 0xC8uLL, "%cno-permutation=%u", v15, v16);
    result = std::string::append(this + 6, __str);
    v15 = 38;
  }

  v17 = HIDWORD(this[4].__r_.__value_.__r.__words[2]);
  if ((v17 & 0x80000000) == 0)
  {
    snprintf(__str, 0xC8uLL, "%cno-prefetch=%u", v15, v17);
    result = std::string::append(this + 6, __str);
  }

  v18 = SHIBYTE(this[5].__r_.__value_.__r.__words[2]);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v18 = this[5].__r_.__value_.__l.__size_;
  }

  if (v18)
  {
    std::string::append(this + 6, "#");
    v19 = SHIBYTE(this[5].__r_.__value_.__r.__words[2]);
    if (v19 >= 0)
    {
      data = this + 5;
    }

    else
    {
      data = this[5].__r_.__value_.__l.__data_;
    }

    if (v19 >= 0)
    {
      v21 = HIBYTE(this[5].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = this[5].__r_.__value_.__l.__size_;
    }

    return std::string::append(this + 6, data, v21);
  }

  return result;
}

void sub_2969A0824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

uint64_t amber::KnoxFileCreationAttributes::jsonParse(amber::KnoxFileCreationAttributes *this, __n128 *a2)
{
  amber::KnoxFileCreationAttributes::clear(this);
  v40 = -1;
  *__s1 = 0u;
  *v42 = 0u;
  if ((amber::JSONInputStream::read(a2, &v40, v4, v5, v6, v7, v8) & 0x80000000) == 0)
  {
    v14 = -1;
    do
    {
      if (v14 == -1)
      {
        v14 = v43;
      }

      if (v43 == v14)
      {
        if (!v40)
        {
          goto LABEL_30;
        }

        if (v40 == 2)
        {
          return 0;
        }
      }

      if (v43 != v14 + 1)
      {
        goto LABEL_36;
      }

      if (v40 == 3)
      {
        v26 = __s1[0];
        if (!__s1[0])
        {
          goto LABEL_36;
        }

        if (!strcmp(__s1[0], "pointer_name") || !strcmp(v26, "file_name"))
        {
          v29 = v42[1];
          v30 = this + 120;
LABEL_27:
          MEMORY[0x29C25BF00](v30, v29);
          goto LABEL_30;
        }

        if (!strcmp(v26, "file_digest"))
        {
          v29 = v42[1];
          v30 = this + 144;
          goto LABEL_27;
        }

        if (!strcmp(v26, "file_digest_algorithm"))
        {
          v29 = v42[1];
          v30 = this + 168;
          goto LABEL_27;
        }

        if (!strcmp(v26, "file_mime_type"))
        {
          v29 = v42[1];
          v30 = this + 192;
          goto LABEL_27;
        }

        if (strcmp(v26, "compression_algorithm"))
        {
          goto LABEL_36;
        }

        v28 = amber::parseCompressionAlgorithmString(v42[1], v27);
        if (v28 == -1)
        {
          amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "jsonParse", 0x46, 0, "invalid compression algorithm: %s", v13, v42[1]);
          goto LABEL_38;
        }

        *(this + 54) = v28;
      }

      else
      {
        if (v40)
        {
          goto LABEL_36;
        }

        v15 = __s1[0];
        if (!__s1[0])
        {
          goto LABEL_36;
        }

        if (strcmp(__s1[0], "upload_attributes"))
        {
          if (strcmp(v15, "pointer_fields") && strcmp(v15, "fields"))
          {
LABEL_36:
            v39 = v44;
            v36 = "invalid KnoxFileCreationAttributes line %d";
            v37 = 77;
            goto LABEL_37;
          }

          amber::JSONInputStream::unread(a2, &v40, v21, v22, v23, v24, v13);
          if ((v25 & 0x80000000) == 0)
          {
            amber::JSONInputStream::captureDict(a2, this + 4);
          }

          v36 = "parsing fields";
          v37 = 39;
          goto LABEL_37;
        }

        amber::JSONInputStream::unread(a2, &v40, v16, v17, v18, v19, v20);
        if (v35 < 0 || (amber::KnoxUploadAttributes::jsonParse((this + 8), a2, v31, v32, v33, v34, v13) & 0x80000000) != 0)
        {
          v36 = "parsing upload attributes";
          v37 = 30;
          goto LABEL_37;
        }
      }

LABEL_30:
      v40 = -1;
      *__s1 = 0u;
      *v42 = 0u;
    }

    while ((amber::JSONInputStream::read(a2, &v40, v9, v10, v11, v12, v13) & 0x80000000) == 0);
  }

  v36 = "read token";
  v37 = 14;
LABEL_37:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "jsonParse", v37, 0, v36, v13, v39);
LABEL_38:
  amber::KnoxFileCreationAttributes::clear(this);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxFileCreationAttributes::clear(uint64_t this)
{
  if (*(this + 39) < 0)
  {
    **(this + 16) = 0;
    *(this + 24) = 0;
  }

  else
  {
    *(this + 16) = 0;
    *(this + 39) = 0;
  }

  *(this + 48) = *(this + 40);
  *(this + 72) = *(this + 64);
  *(this + 88) = -1;
  if (*(this + 119) < 0)
  {
    **(this + 96) = 0;
    *(this + 104) = 0;
  }

  else
  {
    *(this + 96) = 0;
    *(this + 119) = 0;
  }

  if (*(this + 143) < 0)
  {
    **(this + 120) = 0;
    *(this + 128) = 0;
  }

  else
  {
    *(this + 120) = 0;
    *(this + 143) = 0;
  }

  if (*(this + 167) < 0)
  {
    **(this + 144) = 0;
    *(this + 152) = 0;
  }

  else
  {
    *(this + 144) = 0;
    *(this + 167) = 0;
  }

  if (*(this + 191) < 0)
  {
    **(this + 168) = 0;
    *(this + 176) = 0;
  }

  else
  {
    *(this + 168) = 0;
    *(this + 191) = 0;
  }

  if (*(this + 215) < 0)
  {
    **(this + 192) = 0;
    *(this + 200) = 0;
  }

  else
  {
    *(this + 192) = 0;
    *(this + 215) = 0;
  }

  *(this + 216) = 0;
  return this;
}

uint64_t amber::KnoxFileCreationAttributes::jsonSerialize(amber::KnoxFileCreationAttributes *this, const void **a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if ((amber::JSONOutputStream::beginDict(a2, a3, a3, a4, a5, a6, a7) & 0x80000000) != 0 || ((*(*(this + 1) + 24))(this + 8, a2, "upload_attributes") & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

  v15 = this + 96;
  if (*(this + 119) < 0)
  {
    if (!*(this + 13))
    {
      goto LABEL_9;
    }

    v15 = *v15;
  }

  else if (!*(this + 119))
  {
    goto LABEL_9;
  }

  v38[0] = v15;
  v38[1] = strlen(v15);
  if ((amber::JSONOutputStream::appendJSON(a2, "pointer_fields", v38, v16, v17, v18, v19) & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_9:
  v20 = (this + 120);
  v21 = *(this + 143);
  if (v21 < 0)
  {
    v21 = *(this + 16);
    if (!v21)
    {
      goto LABEL_15;
    }

    v20 = *v20;
  }

  else if (!*(this + 143))
  {
    goto LABEL_15;
  }

  v37[0] = v20;
  v37[1] = v21;
  if ((amber::JSONOutputStream::append(a2, "pointer_name", v37, v12, v13, v14, v9) & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_15:
  v22 = (this + 144);
  v23 = *(this + 167);
  if (v23 < 0)
  {
    v23 = *(this + 19);
    if (!v23)
    {
      goto LABEL_21;
    }

    v22 = *v22;
  }

  else if (!*(this + 167))
  {
    goto LABEL_21;
  }

  v36[0] = v22;
  v36[1] = v23;
  if ((amber::JSONOutputStream::append(a2, "file_digest", v36, v12, v13, v14, v9) & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_21:
  v24 = (this + 168);
  v25 = *(this + 191);
  if (v25 < 0)
  {
    v25 = *(this + 22);
    if (!v25)
    {
      goto LABEL_27;
    }

    v24 = *v24;
  }

  else if (!*(this + 191))
  {
    goto LABEL_27;
  }

  v35[0] = v24;
  v35[1] = v25;
  if ((amber::JSONOutputStream::append(a2, "file_digest_algorithm", v35, v12, v13, v14, v9) & 0x80000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  v26 = (this + 192);
  v27 = *(this + 215);
  if (v27 < 0)
  {
    v27 = *(this + 25);
    if (!v27)
    {
      goto LABEL_33;
    }

    v26 = *v26;
LABEL_32:
    v34[0] = v26;
    v34[1] = v27;
    if ((amber::JSONOutputStream::append(a2, "file_mime_type", v34, v12, v13, v14, v9) & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_33;
  }

  if (*(this + 215))
  {
    goto LABEL_32;
  }

LABEL_33:
  v28 = *(this + 54);
  if (!v28 || (v39[0] = amber::compressionAlgorithmString(v28), v39[1] = strlen(v39[0]), (amber::JSONOutputStream::append(a2, "compression_algorithm", v39, v29, v30, v31, v32) & 0x80000000) == 0))
  {
    if ((amber::JSONOutputStream::end(a2, v10, v11, v12, v13, v14, v9) & 0x80000000) == 0)
    {
      return 0;
    }
  }

LABEL_37:
  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "jsonSerialize", 0x60, 0, "serialize KnoxFileCreationAttributes", v9);
  return 0xFFFFFFFFLL;
}

uint64_t amber::KnoxContext::fileCreate(amber::KnoxContext *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v82 = *MEMORY[0x29EDCA608];
  v59[0] = &unk_2A1DDFD28;
  v59[3] = 0;
  v59[1] = off_2A1DDFD48;
  v59[2] = 0;
  v59[6] = 0;
  v59[4] = &off_2A1DDFDA8;
  v59[5] = 0;
  v59[7] = &off_2A1DDFC68;
  v60 = 0u;
  v61 = 0u;
  v62 = 1;
  v63 = 0;
  v54[0] = &unk_2A1DDFD28;
  v54[2] = 0;
  v54[3] = 0;
  v54[1] = off_2A1DDFD48;
  v54[5] = 0;
  v54[6] = 0;
  v54[4] = &off_2A1DDFDA8;
  v54[7] = &off_2A1DDFC68;
  v55 = 0u;
  v56 = 0u;
  v57 = 1;
  v58 = 0;
  v64[35] = &unk_2A1DDFDD8;
  v64[36] = &unk_2A1DDFE08;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0;
  memset(v53, 0, sizeof(v53));
  v48[2] = 0;
  v48[3] = 0;
  v48[1] = off_2A1DDFD48;
  v48[5] = 0;
  v48[6] = 0;
  v48[4] = &off_2A1DDFDA8;
  v48[7] = &off_2A1DDFC68;
  v49 = 0u;
  v50 = 0u;
  v51 = 257;
  v52 = 0;
  v47[5] = 0;
  v48[0] = off_2A1DDFC98;
  v47[3] = &off_2A1DDFC68;
  v47[4] = 0;
  memset(v47, 0, 24);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  memset(&v43, 0, sizeof(v43));
  __p = 0;
  v41 = 0;
  v42 = 0;
  *(a6 + 16) = 0;
  v39[0] = &off_2A1DDFDA8;
  v39[1] = a6 + 20;
  v39[2] = 256;
  amber::MutableMemoryView::operator+(v39, 0, a7, v64);
  bzero(v64[1], v64[2]);
  v10 = *(a2 + 119);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 104);
  }

  if (v10)
  {
    v11 = *(a2 + 167);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a2 + 152);
    }

    if (v11 >= 0x10)
    {
      v12 = *(a2 + 191);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 176);
      }

      if (v12)
      {
        v13 = *(a2 + 39);
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(a2 + 24);
        }

        if (v13 && *(a2 + 40) != *(a2 + 48) && *(a2 + 64) != *(a2 + 72))
        {
          amber::KnoxPointer::clear(a5);
          amber::KnoxUploadAttributes::operator=(a5 + 8, a2 + 8);
          std::string::operator=((a5 + 96), (a2 + 96));
          std::string::operator=((a5 + 120), (a2 + 120));
          std::string::operator=((a5 + 152), (a2 + 144));
          *(a5 + 224) = *(a3 + 16);
          amber::Buffer::resize(v54, 0, v14, v15, v16, v17, v18);
          amber::JSONOutputStream::JSONOutputStream(v64, v54, 0);
        }
      }
    }
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "fileCreate", 0xC0, 0, "incomplete file creation attributes", v9);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  v64[0] = v47;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v64);
  amber::Buffer::~Buffer(v48, v19, v20, v21, v22, v23, v24);
  v64[0] = v53;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v64);
  amber::Buffer::~Buffer(v54, v25, v26, v27, v28, v29, v30);
  amber::Buffer::~Buffer(v59, v31, v32, v33, v34, v35, v36);
  return 0xFFFFFFFFLL;
}

void sub_2969A2A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  a46 = &a52;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a46);
  amber::Buffer::~Buffer(&a58, v67, v68, v69, v70, v71, v72);
  a58 = &a65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a58);
  amber::Buffer::~Buffer(&a66, v73, v74, v75, v76, v77, v78);
  amber::Buffer::~Buffer(&STACK[0x228], v79, v80, v81, v82, v83, v84);
  _Unwind_Resume(a1);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t amber::JSONOutputStream::appendArray<std::string>(const void **a1, const char *a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v15 = amber::JSONOutputStream::beginArray(a1, a2, a3, a4, a5, a6, a7) >> 31;
  for (i = *a3; i != a3[1]; i += 24)
  {
    v17 = *(i + 23);
    if (v17 < 0)
    {
      v18 = *i;
      v17 = *(i + 8);
    }

    else
    {
      v18 = i;
    }

    v20[0] = v18;
    v20[1] = v17;
    if (amber::JSONOutputStream::append(a1, 0, v20, v11, v12, v13, v14))
    {
      v15 = -1;
    }
  }

  if (amber::JSONOutputStream::end(a1, v9, v10, v11, v12, v13, v14) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v15;
  }
}

uint64_t amber::KnoxContext::fileDownload(amber::KnoxContext *this, const char *a2, void **a3, int a4)
{
  v4 = a4;
  v59 = *MEMORY[0x29EDCA608];
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  v40 = 0;
  v41[0] = &unk_2A1DDFDD8;
  v41[1] = &unk_2A1DDFE08;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  v33[0] = &unk_2A1DDFD28;
  v33[2] = 0;
  v33[3] = 0;
  v33[1] = off_2A1DDFD48;
  v33[5] = 0;
  v33[6] = 0;
  v33[4] = &off_2A1DDFDA8;
  v33[7] = &off_2A1DDFC68;
  v34 = 0u;
  v35 = 0u;
  v36 = 1;
  v37 = 0;
  v30[0] = v30;
  v30[1] = v30;
  v30[2] = 0;
  v31 = 0;
  if (a4)
  {
    v7 = a3;
  }

  else
  {
    v7 = v33;
  }

  v32 = -1;
  if ((amber::KnoxContext::fileDecryptionComponents(this, a2, __p, &v38, v41) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "fileDownload", 0x217, 0, "Knox decryption components", v12);
  }

  else if ((amber::Buffer::reserve(v33, v38, v8, v9, v10, v11, v12) & 0x80000000) != 0 || (v40 >= 0 ? (v14 = __p) : (v14 = __p[0]), v29[0] = v29, v29[1] = v29, v29[2] = 0, v28[1] = 0, v28[2] = 0, v28[0] = &off_2A1DDFC68, v15 = amber::HTTPContext::httpPerformBase(this, 1, v14, v29, v28, v7, v30, &amber::HTTPContext::FullRange, 1u), std::__list_imp<std::string>::clear(v29), v15 < 0))
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "fileDownload", 0x21D, 0, "Knox GET %d", v13, v32);
  }

  else
  {
    if ((v4 & 1) != 0 || (amber::aeaDecrypt(v41, v33, a3, v16, v17, v18, v13) & 0x80000000) == 0)
    {
      v20 = 0;
      goto LABEL_16;
    }

    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "fileDownload", 0x224, 0, "AEA decrypt", v19);
  }

  v20 = 0xFFFFFFFFLL;
LABEL_16:
  std::__list_imp<std::string>::clear(v30);
  amber::Buffer::~Buffer(v33, v21, v22, v23, v24, v25, v26);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  return v20;
}

void sub_2969A3028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  std::__list_imp<std::string>::clear(&a16);
  amber::Buffer::~Buffer(&a20, v40, v41, v42, v43, v44, v45);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t amber::KnoxContext::fileDecryptionComponents(amber::KnoxContext *a1, const std::string::value_type *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v23[0] = &unk_2A1DDFD28;
  v23[2] = 0;
  v23[3] = 0;
  v23[1] = off_2A1DDFD48;
  v23[5] = 0;
  v23[6] = 0;
  v23[4] = &off_2A1DDFDA8;
  v23[7] = &off_2A1DDFC68;
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  v27 = 0;
  memset(&v22, 0, sizeof(v22));
  std::string::append(&v22, "files/");
  std::string::append(&v22, a2);
  std::string::append(&v22, "/decryption-components");
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v22;
  }

  else
  {
    v10 = v22.__r_.__value_.__r.__words[0];
  }

  v21[1] = 0;
  v21[2] = 0;
  v21[0] = &off_2A1DDFC68;
  if ((amber::KnoxContext::knoxPerform(a1, 3, v10, v21, v23) & 0x80000000) == 0)
  {
    amber::KnoxContext::parseDecryptionComponents(v23, a3, a4, a5, v11, v12, v13);
  }

  amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "fileDecryptionComponents", 0x239, 0, "GET decryption-components", v13);
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  amber::Buffer::~Buffer(v23, v14, v15, v16, v17, v18, v19);
  return 0xFFFFFFFFLL;
}

void sub_2969A3270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  amber::Buffer::~Buffer(&a19, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxFileCreationAttributesParseJSON(uint64_t a1, amber::Stream *a2)
{
  v12[0] = &unk_2A1DE1AD8;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v12[1] = &unk_2A1DE1008;
  v17 = 0;
  v18 = -1;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  amber::JSONInputStream::JSONInputStream(v11, a2);
  if ((amber::KnoxFileCreationAttributes::jsonParse(v12, v11) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxFileCreationAttributesParseJSON", 0x248, 0, "JSON parse AmberKnoxFileCreationAttributes", v7);
LABEL_6:
    v9 = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

  if ((amber::toAmberObject(v12, a1, v3, v4, v5, v6, v7) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxFileCreationAttributesParseJSON", 0x249, 0, "invalid object", v8);
    goto LABEL_6;
  }

  v9 = 0;
LABEL_7:
  amber::JSONInputStream::~JSONInputStream(v11);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(v12);
  return v9;
}

void sub_2969A33CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  amber::JSONInputStream::~JSONInputStream(&a10);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxFileCreationAttributesSerializeJSON(uint64_t a1, amber::Stream *a2)
{
  v20[0] = &unk_2A1DE1AD8;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20[1] = &unk_2A1DE1008;
  v25 = 0;
  v26 = -1;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  if ((amber::fromAmberObject(v20, a1) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxFileCreationAttributesSerializeJSON", 0x250, 0, "invalid object", v6);
    v17 = 0xFFFFFFFFLL;
  }

  else
  {
    amber::JSONOutputStream::JSONOutputStream(v19, a2, 1, v3, v4, v5, v6);
    if ((amber::KnoxFileCreationAttributes::jsonSerialize(v20, v19, 0, v7, v8, v9, v10) & 0x80000000) != 0)
    {
      amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxFileCreationAttributesSerializeJSON", 0x254, 0, "JSON serializate AmberKnoxFileCreationAttributes", v16);
      v17 = 0xFFFFFFFFLL;
    }

    else
    {
      v17 = 0;
    }

    amber::JSONOutputStream::~JSONOutputStream(v19, v11, v12, v13, v14, v15, v16);
  }

  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(v20);
  return v17;
}

void sub_2969A3538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const char *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  amber::JSONOutputStream::~JSONOutputStream(va, a2, a3, a4, a5, a6, a7);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes((v8 - 240));
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxContextFileCreate(amber::KnoxContext *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6, const char *a7)
{
  v81 = *MEMORY[0x29EDCA608];
  v48[0] = &unk_2A1DE1AD8;
  v48[1] = &unk_2A1DE1008;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  v54 = -1;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  memset(v61, 0, sizeof(v61));
  amber::ProxyBuffer::ProxyBuffer(&v45, a3, a4, a4, a5, a6, a7);
  v29[0] = &unk_2A1DE0CE8;
  v29[1] = &unk_2A1DE1008;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v35 = -1;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v63[0] = &unk_2A1DDFDD8;
  v63[1] = &unk_2A1DDFE08;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0;
  if ((amber::fromAmberObject(v48, a2) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxContextFileCreate", 0x267, 0, "invalid AmberKnoxFileCreationAttributes", v11);
LABEL_8:
    v20 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  amber::Buffer::constBuf(v62, &v45, v11);
  amber::ConstMemoryView::view(v28, v62, v46, v47 - v46, v12);
  if ((amber::KnoxContext::fileCreate(a1, v48, v28, HIWORD(a6) & 1, v29, v63, v13) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxContextFileCreate", 0x268, 0, "file creation failed", v18);
    goto LABEL_8;
  }

  if ((amber::toAmberObject(v29, a5, v14, v15, v16, v17, v18) & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxContextFileCreate", 0x269, 0, "invalid KnoxPointer", v19);
    goto LABEL_8;
  }

  v20 = 0;
LABEL_9:
  amber::KnoxPointer::~KnoxPointer(v29);
  amber::Buffer::~Buffer(&v45, v21, v22, v23, v24, v25, v26);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(v48);
  return v20;
}

void sub_2969A386C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, ...)
{
  va_start(va, a55);
  amber::KnoxPointer::~KnoxPointer(&a13);
  amber::Buffer::~Buffer(&a43, v56, v57, v58, v59, v60, v61);
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(va);
  _Unwind_Resume(a1);
}

uint64_t AmberKnoxContextFileDownload(amber::KnoxContext *a1, const char *a2, amber::Buffer *this, unint64_t a4, uint64_t a5, uint64_t a6, const char *a7)
{
  v10 = HIWORD(a4) & 1;
  amber::Buffer::resize(this, 0, this, a4, a5, a6, a7);
  v12 = amber::KnoxContext::fileDownload(a1, a2, this, v10);
  if ((v12 & 0x80000000) != 0)
  {
    amber::log(2, "/Library/Caches/com.apple.xbs/Sources/Amber/Amber/Source/Knox/KnoxFile.cpp", "AmberKnoxContextFileDownload", 0x27A, 0, "file download failed", v11);
  }

  return v12;
}

void amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(void **this)
{
  amber::KnoxFileCreationAttributes::~KnoxFileCreationAttributes(this);

  JUMPOUT(0x29C25C000);
}

{
  *this = &unk_2A1DE1AD8;
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  this[1] = &unk_2A1DE1008;
  v2 = this[8];
  if (v2)
  {
    this[9] = v2;
    operator delete(v2);
  }

  v3 = this[5];
  if (v3)
  {
    this[6] = v3;
    operator delete(v3);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  amber::JSONCodable::~JSONCodable((this + 1));

  amber::JSONCodable::~JSONCodable(this);
}