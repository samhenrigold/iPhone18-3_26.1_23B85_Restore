uint64_t H16ISP::H16ISPBufferReceiver::startNoBufferAvailableTimer(H16ISP::H16ISPBufferReceiver *this)
{
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPBufferReceiver::startNoBufferAvailableTimer(v2);
  }

  result = pthread_mutex_lock((this + 88));
  if (!*(this + 19))
  {
    context.version = 0;
    context.info = this;
    memset(&context.retain, 0, 24);
    Current = CFAbsoluteTimeGetCurrent();
    v5 = CFRunLoopTimerCreate(0, Current + 0.01, 0.0, 0, 0, H16ISP::H16ISPBufferReceiver::TryToTopOffFirmwareBufferPools, &context);
    *(this + 19) = v5;
    if (v5)
    {
      CFRunLoopAddTimer(*(this + 1), v5, *MEMORY[0x277CBF058]);
    }

    return pthread_mutex_unlock((this + 88));
  }

  return result;
}

uint64_t H16ISP::H16ISPBufferReceiver::TryToTopOffFirmwareBufferPools(H16ISP::H16ISPBufferReceiver *this, __CFRunLoopTimer *a2, void *a3)
{
  MEMORY[0x28223BE20](this);
  v4 = v3;
  v30 = *MEMORY[0x277D85DE8];
  v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v5 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
  }

  pixelBuffer = 0;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    buf[0] = 136315138;
    *&buf[1] = "TryToTopOffFirmwareBufferPools";
    _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_DEFAULT, "%s - \n", buf, 0xCu);
  }

  pthread_mutex_lock((v4 + 256));
  H16ISP::H16ISPBufferReceiver::stopNoBufferAvailableTimer(v4);
  v6 = *(v4 + 384);
  v7 = *(v4 + 392);
  v8 = (v6 + 8 * (*(v4 + 408) >> 9));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + 8 * (*(v4 + 408) & 0x1FFLL);
  }

  v10 = 0;
  while (1)
  {
    if (v7 == v6)
    {
      v12 = 0;
    }

    else
    {
      v11 = *(v4 + 416) + *(v4 + 408);
      v12 = *(v6 + ((v11 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v11 & 0x1FF);
    }

    if (v9 == v12)
    {
      break;
    }

    v13 = *v9;
    if (*(*v9 + 112) > *(*v9 + 120) && (*(v4 + 352) & 1) == 0 && (*(v13 + 144) & 1) == 0)
    {
      H16ISP::H16ISPFrameReceiverBufferPool::allocateBuffer(v13, &pixelBuffer, 0);
      if (pixelBuffer)
      {
        operator new();
      }

      v14 = *(v13 + 120);
      if (v14 < *(v13 + 112))
      {
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v15 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(v13 + 20);
          v17 = "noBuffer";
          if (v14)
          {
            v17 = "lowBuffer";
          }

          buf[0] = 136315906;
          *&buf[1] = "TryToTopOffFirmwareBufferPools";
          v24 = 2080;
          v25 = v17;
          v26 = 1024;
          v27 = v16;
          v28 = 1024;
          v29 = v14;
          _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "%s - %s on receiver PoolID 0x%x, FW has %d buffers\n", buf, 0x22u);
        }

        v18 = *(v4 + 176);
        if (v18)
        {
          v18(v14 != 0, 0, *(v13 + 16), v13, v4, *(v4 + 184));
        }

        v10 = 1;
      }
    }

    v9 += 8;
    if (v9 - *v8 == 4096)
    {
      v19 = v8[1];
      ++v8;
      v9 = v19;
    }

    v6 = *(v4 + 384);
    v7 = *(v4 + 392);
  }

  if (v10)
  {
    H16ISP::H16ISPBufferReceiver::startNoBufferAvailableTimer(v4);
  }

  else
  {
    v20 = *(v4 + 176);
    if (v20)
    {
      v20(2, 0, 0, 0, v4, *(v4 + 184));
    }
  }

  return pthread_mutex_unlock((v4 + 256));
}

uint64_t H16ISP::H16ISPBufferReceiver::stopNoBufferAvailableTimer(H16ISP::H16ISPBufferReceiver *this)
{
  pthread_mutex_lock((this + 88));
  v2 = *(this + 19);
  if (v2)
  {
    CFRunLoopTimerInvalidate(v2);
    CFRelease(*(this + 19));
    *(this + 19) = 0;
  }

  return pthread_mutex_unlock((this + 88));
}

void std::deque<H16ISP::H16ISPBufferReceiverAllocatedBufferStruct *>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<H16ISP::H16ISPBufferReceiverAllocatedBufferStruct *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

uint64_t H16ISP::CreateH16ISPBufferReceiver(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = 0;
  H16ISP::H16ISPThreadReadySyncer::H16ISPThreadReadySyncer(&v13);
  v8 = 0;
  v2 = *(a1 + 32);
  v9 = *(a1 + 16);
  v10 = v2;
  v11 = *(a1 + 8);
  v12 = &v13;
  v6 = 48;
  pthread_attr_init(&v14);
  pthread_attr_setschedparam(&v14, &v6);
  pthread_attr_setdetachstate(&v14, 2);
  pthread_create(&v7, &v14, H16ISP::H16ISPBufferReceiverRTThreadMain, &v8);
  pthread_attr_destroy(&v14);
  H16ISP::H16ISPThreadReadySyncer::wait(&v13);
  v3 = v8;
  **a1 = v8;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3758097084;
  }

  H16ISP::H16ISPThreadReadySyncer::~H16ISPThreadReadySyncer(&v13);
  return v4;
}

void H16ISP::H16ISPBufferReceiverRTThreadMain(uint64_t a1)
{
  pthread_setname_np("H16ISPBufferReceiverRealTimeThread");
  H16ISP::H16ISPThreadReadySyncer::lock(*(a1 + 48));
  operator new();
}

uint64_t H16ISP::DestroyH16ISPBufferReceiver(H16ISP *this, H16ISP::H16ISPBufferReceiver *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  CFRetain(v3);
  v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v5 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v4 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "DestroyH16ISPBufferReceiver";
    _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "%s - Stopping\n", buf, 0xCu);
  }

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v7 = *MEMORY[0x277CBF058];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN6H16ISP27DestroyH16ISPBufferReceiverEPNS_20H16ISPBufferReceiverE_block_invoke;
  block[3] = &__block_descriptor_tmp_11;
  block[4] = this;
  block[5] = v3;
  block[6] = v6;
  CFRunLoopPerformBlock(v3, v7, block);
  CFRunLoopWakeUp(v3);
  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v5)
  {
    v8 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "DestroyH16ISPBufferReceiver";
    _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "%s - Stopped\n", buf, 0xCu);
  }

  dispatch_release(v6);
  CFRelease(v3);
  return 0;
}

void ___ZN6H16ISP27DestroyH16ISPBufferReceiverEPNS_20H16ISPBufferReceiverE_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "DestroyH16ISPBufferReceiver_block_invoke";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "%s - Stopping in the runloop\n", &v4, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    H16ISP::H16ISPBufferReceiver::~H16ISPBufferReceiver(v3);
    MEMORY[0x22AA55B60]();
  }

  CFRunLoopStop(*(a1 + 40));
  dispatch_group_leave(*(a1 + 48));
}

void std::deque<H16ISP::H16ISPBufferReceiverAllocatedBufferStruct *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::allocator<__CVBuffer **>::allocate_at_least[abi:ne200100](a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<__CVBuffer **>::emplace_back<__CVBuffer **&>(a1, &v9);
}

void sub_22493C04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x18u);
}

void BayerArray::BayerArray(BayerArray *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0x43F800000;
}

{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0x43F800000;
}

void BayerArray::BayerArray(BayerArray *this, const unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 8) = 1.0 / (a5 * a4);
  *(this + 9) = a6;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 8) = 1.0 / (a5 * a4);
  *(this + 9) = a6;
}

float BayerArray::Average(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a1 + 8);
    v6 = *a1 + 2 * v5 * ((a2 + (a2 >> 31)) >> 1) + 2 * (a2 % 2);
    v7 = 4 * v5;
    do
    {
      if (*(a1 + 16))
      {
        v8 = 0;
        v9 = *(a1 + 16);
        do
        {
          v4 += *(v6 + v8) >> 4;
          v8 += 4;
          --v9;
        }

        while (v9);
      }

      v6 += v7;
      ++v3;
    }

    while (v3 != v2);
    v10 = v4;
  }

  else
  {
    v10 = 0.0;
  }

  return *(a1 + 32) * v10;
}

float BayerArray::Average(BayerArray *this, float *a2, float *a3, float *a4, float *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *this;
    v12 = *(this + 1);
    v13 = v12;
    v14 = 4 * v12;
    do
    {
      v15 = v11;
      for (i = *(this + 2); i; --i)
      {
        v6 += *v15;
        v7 += v15[1];
        v8 += v15[v13];
        v9 += v15[v13 + 1];
        v15 += 2;
      }

      ++v10;
      v11 = (v11 + v14);
    }

    while (v10 != v5);
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  v17 = *(this + 9);
  *a2 = *(this + 8) * (v6 >> v17);
  *a3 = *(this + 8) * (v7 >> v17);
  *a4 = *(this + 8) * (v8 >> v17);
  result = *(this + 8) * (v9 >> v17);
  *a5 = result;
  return result;
}

uint64_t BayerArray::DefineSubBayerArray(BayerArray *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, BayerArray *a6, int a7)
{
  if (!a7)
  {
    goto LABEL_7;
  }

  v7 = 0;
  if (((a3 | a2) & 0x8000000000000000) == 0 && ((a5 | a4) & 0x80000000) == 0)
  {
    if ((a4 + a2) > *(this + 2) || (a5 + a3) > *(this + 3))
    {
      return 0;
    }

LABEL_7:
    v8 = *(this + 1);
    v9 = *(this + 9);
    *a6 = *this + 4 * (a2 + v8 * a3);
    *(a6 + 1) = v8;
    *(a6 + 2) = a4;
    *(a6 + 3) = a5;
    *(a6 + 8) = 1.0 / (a5 * a4);
    *(a6 + 9) = v9;
    return 1;
  }

  return v7;
}

uint64_t BayerArray::Dump(uint64_t this, unsigned int a2)
{
  if (a2)
  {
    v2 = this;
    if (*this && *(this + 16) && (v3 = *(this + 24)) != 0)
    {
      this = printf("[base=%p, width = %zd, height = %zd]\n", *this, *(this + 16), v3);
      if (*(v2 + 24))
      {
        v5 = 0;
        v6 = 0;
        if (a2 == 1)
        {
          v7 = "";
        }

        else
        {
          v7 = "/";
        }

        if (a2 >= 4)
        {
          v8 = "/";
        }

        else
        {
          v8 = "";
        }

        if (a2 >= 8)
        {
          v9 = "/";
        }

        else
        {
          v9 = "";
        }

        for (i = 2; ; i += 4)
        {
          v13 = v6;
          if (*(v2 + 16))
          {
            break;
          }

LABEL_29:
          this = putchar(10);
          v6 = v13 + 1;
          v5 += 4;
          if ((v13 + 1) >= *(v2 + 24))
          {
            return this;
          }
        }

        v11 = 0;
        v12 = 0;
        while (1)
        {
          if (a2)
          {
            printf("%5d%s", *(*v2 + v5 * *(v2 + 8) + v11) >> *(v2 + 36), v7);
            if ((a2 & 2) == 0)
            {
LABEL_20:
              if ((a2 & 4) != 0)
              {
                goto LABEL_27;
              }

              goto LABEL_21;
            }
          }

          else if ((a2 & 2) == 0)
          {
            goto LABEL_20;
          }

          printf("%5d%s", *(*v2 + v5 * *(v2 + 8) + v11 + 2) >> *(v2 + 36), v8);
          if ((a2 & 4) != 0)
          {
LABEL_27:
            printf("%5d%s", *(*v2 + i * *(v2 + 8) + v11) >> *(v2 + 36), v9);
            if ((a2 & 8) == 0)
            {
              goto LABEL_23;
            }

LABEL_22:
            printf("%5d  ", *(*v2 + i * *(v2 + 8) + v11 + 2) >> *(v2 + 36));
            goto LABEL_23;
          }

LABEL_21:
          if ((a2 & 8) != 0)
          {
            goto LABEL_22;
          }

LABEL_23:
          ++v12;
          v11 += 4;
          if (v12 >= *(v2 + 16))
          {
            goto LABEL_29;
          }
        }
      }
    }

    else
    {

      return puts("BayerArray::Dump -- empty array");
    }
  }

  return this;
}

uint64_t BayerArray::GetPackedPixel(BayerArray *this, unint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  if (a4 == 14)
  {
    v5 = *this + ((a5 * a3) & 0xFFFFFFFFFFFFFFFCLL) + 28 * (a2 >> 4);
    switch(a2 & 0xF)
    {
      case 1uLL:
        v13 = *v5;
        v14 = 0xFFFFFFFAFFFFFFFELL;
        goto LABEL_53;
      case 2uLL:
        v13 = *v5;
        v14 = 0xFFFFFFF4FFFFFFF6;
        goto LABEL_53;
      case 3uLL:
        v11 = vshr_n_u32(*v5, 0x12uLL);
        goto LABEL_54;
      case 4uLL:
        v13 = *(v5 + 4);
        v14 = 0xFFFFFFE8FFFFFFEELL;
        goto LABEL_53;
      case 5uLL:
        v18 = vand_s8(vshl_u32(*(v5 + 8), 0x200000006), 0x3C00003FC0);
        v19 = v18.i16[2];
        LODWORD(v5) = v18.i32[0] | (*(v5 + 8) >> 30);
        goto LABEL_51;
      case 6uLL:
        v13 = *(v5 + 8);
        v14 = 0xFFFFFFFCFFFFFFFELL;
        goto LABEL_53;
      case 7uLL:
        v11 = vshr_n_u32(*(v5 + 8), 0xAuLL);
        goto LABEL_54;
      case 8uLL:
        v13 = *(v5 + 12);
        v14 = 0xFFFFFFF0FFFFFFF6;
        goto LABEL_53;
      case 9uLL:
        v13 = *(v5 + 12);
        v14 = 0xFFFFFFEAFFFFFFEELL;
        goto LABEL_53;
      case 0xAuLL:
        v20 = vand_s8(vshl_u32(*(v5 + 16), 0x400000006), 0x3000003FC0);
        v19 = v20.i16[2];
        LODWORD(v5) = v20.i32[0] | (*(v5 + 16) >> 28);
LABEL_51:
        LOWORD(v5) = v5 | v19;
        return v5;
      case 0xBuLL:
        v11 = vshr_n_u32(*(v5 + 16), 2uLL);
        goto LABEL_54;
      case 0xCuLL:
        v13 = *(v5 + 20);
        v14 = 0xFFFFFFF8FFFFFFFELL;
        goto LABEL_53;
      case 0xDuLL:
        v13 = *(v5 + 20);
        v14 = 0xFFFFFFF2FFFFFFF6;
        goto LABEL_53;
      case 0xEuLL:
        v13 = *(v5 + 20);
        v14 = 0xFFFFFFECFFFFFFEELL;
LABEL_53:
        v11 = vshl_u32(v13, v14);
LABEL_54:
        v12 = 0x3F00003FC0;
        goto LABEL_61;
      case 0xFuLL:
        HIDWORD(v17) = *(v5 + 24);
        LODWORD(v17) = HIDWORD(v17);
        return (v17 >> 26) & 0x3FFF;
      default:
        LODWORD(v5) = *(v5 + 4) & 0x3F | (*v5 << 6);
        return v5;
    }
  }

  if (a4 != 12)
  {
    if (a4 == 10)
    {
      v5 = *this + ((a5 * a3) & 0xFFFFFFFFFFFFFFFCLL) + 20 * (a2 >> 4);
      switch(a2 & 0xF)
      {
        case 1uLL:
          v15 = *v5;
          v16 = 0xFFFFFFFEFFFFFFFALL;
          goto LABEL_60;
        case 2uLL:
          v15 = *v5;
          v16 = 0xFFFFFFFCFFFFFFF2;
          goto LABEL_60;
        case 3uLL:
          v15 = *v5;
          v16 = 0xFFFFFFFAFFFFFFEALL;
          goto LABEL_60;
        case 4uLL:
          v15 = *(v5 + 4);
          v16 = 0xFFFFFFF8FFFFFFFALL;
          goto LABEL_60;
        case 5uLL:
          v15 = *(v5 + 4);
          v16 = 0xFFFFFFF6FFFFFFF2;
          goto LABEL_60;
        case 6uLL:
          v15 = *(v5 + 4);
          v16 = 0xFFFFFFF4FFFFFFEALL;
          goto LABEL_60;
        case 7uLL:
          v6 = *(v5 + 8);
          LOWORD(v5) = v6 >> 14;
          goto LABEL_58;
        case 8uLL:
          v15 = *(v5 + 8);
          v16 = 0xFFFFFFF0FFFFFFF2;
          goto LABEL_60;
        case 9uLL:
          v15 = *(v5 + 8);
          v16 = 0xFFFFFFEEFFFFFFEALL;
          goto LABEL_60;
        case 0xAuLL:
          v6 = *(v5 + 12);
          LODWORD(v5) = (v6 >> 20) & 3;
          goto LABEL_58;
        case 0xBuLL:
          LODWORD(v5) = (*(v5 + 12) >> 6) & 0x3FC | (*(v5 + 12) >> 22) & 3;
          return v5;
        case 0xCuLL:
          v15 = *(v5 + 12);
          v16 = 0xFFFFFFE8FFFFFFEALL;
LABEL_60:
          v11 = vshl_u32(v15, v16);
          v12 = 0x3000003FCLL;
          goto LABEL_61;
        case 0xDuLL:
          v6 = *(v5 + 16);
          LODWORD(v5) = (v6 >> 26) & 3;
          goto LABEL_58;
        case 0xEuLL:
          LODWORD(v5) = (*(v5 + 16) >> 6) & 0x3FC | (*(v5 + 16) >> 28) & 3;
          return v5;
        case 0xFuLL:
          LODWORD(v5) = (*(v5 + 16) >> 14) & 0x3FC | (*(v5 + 16) >> 30);
          return v5;
        default:
          v6 = *v5;
          LODWORD(v5) = *(v5 + 4) & 3;
LABEL_58:
          LOWORD(v5) = v5 & 0xFC03 | (4 * v6);
          break;
      }
    }

    else
    {
      LOWORD(v5) = 0;
    }

    return v5;
  }

  v7 = a2 & 7;
  v5 = *this + ((a5 * a3) & 0xFFFFFFFFFFFFFFFCLL) + 12 * (a2 >> 3);
  if (v7 > 3)
  {
    if ((a2 & 7) > 5)
    {
      if (v7 == 6)
      {
        LODWORD(v5) = (*(v5 + 8) >> 4) & 0xFF0 | HIBYTE(*(v5 + 8)) & 0xF;
      }

      else
      {
        LODWORD(v5) = (*(v5 + 8) >> 12) & 0xFF0 | (*(v5 + 8) >> 28);
      }

      return v5;
    }

    if (v7 == 4)
    {
      LODWORD(v5) = *(v5 + 8) & 0xF | (16 * *(v5 + 6));
      return v5;
    }

    v9 = *(v5 + 4);
    v10 = 0xFFFFFFFCFFFFFFECLL;
  }

  else
  {
    if ((a2 & 7) <= 1)
    {
      if ((a2 & 7) != 0)
      {
        LODWORD(v5) = (*v5 >> 4) & 0xFF0 | (*v5 >> 20) & 0xF;
        return v5;
      }

      v8 = *v5;
      LODWORD(v5) = HIWORD(*v5) & 0xF;
LABEL_24:
      LOWORD(v5) = v5 & 0xF00F | (16 * v8);
      return v5;
    }

    if (v7 != 2)
    {
      v8 = *(v5 + 4);
      LOWORD(v5) = v8 >> 12;
      goto LABEL_24;
    }

    v9 = *v5;
    v10 = 0xFFFFFFF8FFFFFFECLL;
  }

  v11 = vshl_u32(v9, v10);
  v12 = 0xF00000FF0;
LABEL_61:
  v21 = vand_s8(v11, v12);
  LOWORD(v5) = vorr_s8(vdup_lane_s32(v21, 1), v21).u16[0];
  return v5;
}

void H16ISP::H16ISPMotionManager::~H16ISPMotionManager(H16ISP::H16ISPMotionManager *this)
{
  v3 = 0;
  v2 = *(this + 7);
  if (v2)
  {
    pthread_join(v2, &v3);
  }

  if (*(this + 1))
  {
    if (objc_opt_respondsToSelector())
    {
      [*(this + 1) setSidebandTimeSyncHandler:0];
    }

    *(this + 1) = 0;
  }

  pthread_mutex_destroy(this + 1);
}

void GMCProcessorInternal::GMCProcessorInternal(GMCProcessorInternal *this)
{
  *this = dispatch_queue_create("com.apple.gmc.postprocess", 0);
}

{
  *this = dispatch_queue_create("com.apple.gmc.postprocess", 0);
}

void GMCProcessorInternal::~GMCProcessorInternal(dispatch_queue_t *this)
{
  dispatch_sync(*this, &__block_literal_global_9);
  dispatch_release(*this);
  *this = 0;
}

{
  dispatch_sync(*this, &__block_literal_global_9);
  dispatch_release(*this);
  *this = 0;
}

uint64_t GMCProcessorInternal::updatePCECalibWithISF(dispatch_queue_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  v49 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = &v29;
  v31 = 0xE6002000000;
  v32 = __Block_byref_object_copy__3;
  v33 = __Block_byref_object_dispose__3;
  v15 = fopen("/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin", "rb");
  if (v15)
  {
    fread(&v34, 0xE38uLL, 1uLL, v15);
    fclose(v15);
  }

  else
  {
    v34 = 1;
    v35 = 1;
  }

  v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v17 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v16 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v45 = "updatePCECalibWithISF";
    _os_log_impl(&dword_2247DB000, v16, OS_LOG_TYPE_DEFAULT, "%s - ISF\n", buf, 0xCu);
  }

  kdebug_trace();
  PearlIRIsf::PearlIRIsf(v28);
  v18 = PearlIRIsf::Run(v28, (v30 + 40), &v26, a3, a4, a5, a6);
  kdebug_trace();
  v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v17)
  {
    v19 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v45 = "updatePCECalibWithISF";
    v46 = 1024;
    v47 = v18;
    _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "%s - ISF status: %d\n", buf, 0x12u);
  }

  Isf::getHistoryStatistics(v28, buf);
  bzero((a2 + 116), 0x78uLL);
  v20 = 0;
  *(a2 + 112) = *buf > 0;
  do
  {
    v21 = a2 + 116 + v20;
    v22 = *&v48[v20];
    *v21 = *(&v45 + v20 + 4);
    *(v21 + 16) = v22;
    *(v21 + 32) = *&v48[v20 + 16];
    v20 += 40;
  }

  while (v20 != 120);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 0x40000000;
  v25[2] = ___ZN20GMCProcessorInternal21updatePCECalibWithISFEddddP22H16ISPAnalyticsGMCInfoRK26sCIspCmdChPearlCalibrationRS2__block_invoke;
  v25[3] = &unk_278531CA0;
  v25[4] = &v29;
  dispatch_async(*a1, v25);
  if (!v18)
  {
    PearlIRIsf::updatePCECalib(v28, v30 + 40, a8);
    v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v17)
    {
      v23 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 136315906;
      v37 = "updatePCECalibWithISF";
      v38 = 2048;
      v39 = v26.i64[0];
      v40 = 2048;
      v41 = v26.i64[1];
      v42 = 2048;
      v43 = v27;
      _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "%s - GMC post-ISF rotation angles, rotX: %.5lf, rotY: %.5lf, rotZ: %.5lf\n", v36, 0x2Au);
    }
  }

  PearlIRIsf::~PearlIRIsf(v28);
  _Block_object_dispose(&v29, 8);
  return v18;
}

void sub_22493CE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN20GMCProcessorInternal21updatePCECalibWithISFEddddP22H16ISPAnalyticsGMCInfoRK26sCIspCmdChPearlCalibrationRS2__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v3 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "updatePCECalibWithISF_block_invoke";
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "%s - Writing GMC ISF file\n", &v9, 0xCu);
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = fopen("/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin.bak", "wb");
  if (v5)
  {
    v6 = v5;
    fwrite((v4 + 40), 0xE38uLL, 1uLL, v5);
    fclose(v6);
    rename("/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin.bak", "/var/mobile/Library/ISP/Pearl/IsfIRHistory.bin", v7);
  }

  v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
  {
    v8 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v8;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "updatePCECalibWithISF_block_invoke";
    _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "%s - OK\n", &v9, 0xCu);
  }
}

double GMCProcessorInternal::updatePCECalibWithGMCResults(dispatch_queue_t *a1, __int128 *a2, double *a3, int a4, void *__src, char *__dst, uint64_t a7, int a8)
{
  v46 = *MEMORY[0x277D85DE8];
  memcpy(__dst, __src, 0x3400uLL);
  v34 = 0uLL;
  v35 = 0.0;
  GeomUtils::CalcRotationAngleFromMatrix<double>(a2, &v34);
  *(a7 + 32) = v34;
  *(a7 + 48) = v35;
  *(a7 + 56) = 0;
  v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v16 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v15 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *a3;
    *buf = 136316162;
    v37 = "updatePCECalibWithGMCResults";
    v38 = 2048;
    v39 = v34;
    v40 = 2048;
    v41 = *(&v34 + 1);
    v42 = 2048;
    v43 = v35;
    v44 = 2048;
    v45 = v17;
    _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "%s - GMC raw rotation angles, rotX: %.5lf, rotY: %.5lf, rotZ: %.5lf, spatial_coverage: %.3lf\n", buf, 0x34u);
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (a3[47] < 0.0 || (a4 & 1) == 0)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v16)
    {
      v18 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    v37 = "updatePCECalibWithGMCResults";
    v38 = 1024;
    LODWORD(v39) = a4;
    v22 = "%s - Front camera supports auto-focus: %d\n";
    v23 = v18;
    goto LABEL_20;
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v16)
  {
    v18 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v37 = "updatePCECalibWithGMCResults";
    _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_DEFAULT, "%s - GMC controller succeeded and front camera supports auto-focus, running ISF...\n", buf, 0xCu);
  }

  mach_timebase_info(&info);
  v33 = mach_absolute_time();
  updated = GMCProcessorInternal::updatePCECalibWithISF(a1, a7, *&v34, *(&v34 + 1), v35, *a3, v19, __dst);
  *a7 = ((mach_absolute_time() - v33) * info.numer / info.denom / 0x3E8) / 1000.0;
  *(a7 + 56) = 1;
  *(a7 + 16) = *a3;
  if (updated)
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v16)
    {
      v21 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v21;
    }

    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    *buf = 136315394;
    v37 = "updatePCECalibWithGMCResults";
    v38 = 1024;
    LODWORD(v39) = updated;
    v22 = "%s - ISF run failed, status: %d, using raw/unfiltered GMC results.\n";
    v23 = v21;
LABEL_20:
    _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, 0x12u);
LABEL_21:
    v24 = a2[1];
    v25 = a2[2];
    v26 = a2[3];
    *(__dst + 1657) = *(a2 + 8);
    v27 = *a2;
    *(__dst + 13224) = v25;
    *(__dst + 13240) = v26;
    *(__dst + 13192) = v27;
    *(__dst + 13208) = v24;
  }

  if ((a8 & 0xFFFFFFFE) == 0xA)
  {
    *(__dst + 1658) = *(a2 + 10);
    v28 = -*(a2 + 9);
  }

  else
  {
    *(__dst + 1658) = *(a2 + 9);
    v28 = *(a2 + 10);
  }

  *(__dst + 1659) = v28;
  *(__dst + 1660) = *(a2 + 11);
  v29 = *(a2 + 12) * *(__src + 1116);
  *(__dst + 1117) = v29;
  *(__dst + 1110) = v29;
  result = *(a7 + 64);
  *(__dst + 1112) = result;
  return result;
}

void GMCInitializer::GMCInitializer(GMCInitializer *this, H16ISP::H16ISPDevice *a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 24) = 0;
  GMCInitializer::refresh(this);
  v3 = this;
  std::thread::thread<void (&)(void *),GMCInitializer *,0>(&v4.__t_, RefreshOnPowerThread, &v3);
}

uint64_t GMCInitializer::refresh(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(this + 8);
  v4 = (*(v3 + 538) + 16);
  v5 = 6;
  v6 = 6;
  do
  {
    if (*(v4 - 2))
    {
      v7 = *v4;
      if (*v4 == 1718186595)
      {
        v8 = v2;
      }

      else
      {
        v8 = v5;
      }

      if (v7 == 1718776695 || v7 == 1718775412)
      {
        v6 = v2;
      }

      else
      {
        v5 = v8;
      }
    }

    ++v2;
    v4 += 26;
  }

  while (v2 != 6);
  if (v6 != 6)
  {
    bzero(v10, 0x190uLL);
    v11 = 269;
    v12 = v6;
    this = H16ISP::H16ISPDevice::ISP_SendCommand(v3, v10, 0x190u, 0, 0xFFFFFFFF);
    if (!this)
    {
      *(v1 + 4) = v13 & 1;
    }
  }

  if (v5 != 6)
  {
    bzero(v10, 0x68uLL);
    v11 = 1565;
    v12 = v5;
    this = H16ISP::H16ISPDevice::ISP_SendCommand(*(v1 + 8), v10, 0x68u, 0, 0xFFFFFFFF);
    if (!this)
    {
      *v1 = v14;
    }
  }

  return this;
}

uint64_t RefreshOnPowerThread(H16ISP::H16ISPDevice **a1)
{
  result = H16ISP::H16ISPDevice::ISP_IsPowered(a1[1]);
  if (result)
  {
LABEL_5:
    if (!*a1)
    {

      return GMCInitializer::refresh(a1);
    }
  }

  else
  {
    while (!*a1 && (a1[3] & 1) == 0)
    {
      usleep(0x7A120u);
      result = H16ISP::H16ISPDevice::ISP_IsPowered(a1[1]);
      if (result)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

void GMCInitializer::~GMCInitializer(GMCInitializer *this)
{
  *(this + 24) = 1;
  std::thread::join(this + 2);
  std::thread::~thread(this + 2);
}

void GMCProcessor::GMCProcessor(GMCProcessor *this, const GMCInitializer *a2)
{
  *(this + 1) = 0xBFF0000000000000;
  *(this + 2) = -1;
  *(this + 3) = 0xBFF0000000000000;
  *(this + 4) = -1;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 64) = 0;
  *(this + 17) = 4;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 72) = _Q0;
  *(this + 88) = _Q0;
  *(this + 13) = 0xBFF0000000000000;
  *(this + 120) = 0;
  *(this + 248) = 0;
  operator new();
}

void GMCProcessor::~GMCProcessor(dispatch_queue_t **this)
{
  v1 = *this;
  if (*this)
  {
    dispatch_sync(*v1, &__block_literal_global_9);
    dispatch_release(*v1);
    *v1 = 0;
    MEMORY[0x22AA55B60](v1, 0x20C4093837F09);
  }
}

uint64_t GMCProcessor::run(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v1;
  v40 = *MEMORY[0x277D85DE8];
  v6 = v2[6];
  if (v3 < 3 || *v6 == 5)
  {
    if (*(v6 + 68))
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v6 + 68);
        v34 = 136315394;
        v35 = "run";
        v36 = 1024;
        v37 = v8;
        v9 = "%s - Unexpected GMC type %d\n";
LABEL_8:
        v10 = v7;
        v11 = 18;
LABEL_21:
        _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_DEFAULT, v9, &v34, v11);
      }
    }

    else if (*(v1 + 244))
    {
      if (v3 == 6)
      {
        operator new[]();
      }

      if (v3 == 3)
      {
        v12 = *v2;
        v13 = (*v2 + 64);
        v18 = v2[3];
        GMC_Verbose = 0;
        v19 = *(v6 + 52);
        v20.i64[0] = v19;
        v20.i64[1] = SHIDWORD(v19);
        v21 = vcvtq_f64_s64(v20);
        v22 = *(v6 + 60);
        v20.i64[0] = v22;
        v20.i64[1] = HIDWORD(v22);
        v32 = v21;
        v33 = vcvtq_f64_u64(v20);
        if ((*(v6 + 48) & 1) == 0)
        {
          __asm { FMOV            V0.2D, #-1.0 }

          v33 = _Q0;
          v32 = _Q0;
        }

        mach_timebase_info(&info);
        v28 = mach_absolute_time();
        *(v6 + 76) = *(v6 + 40);
        v31 = v28;
        v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v29 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v29;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 136315138;
          v35 = "run";
          _os_log_impl(&dword_2247DB000, v29, OS_LOG_TYPE_DEFAULT, "%s - Running GMC\n", &v34, 0xCu);
        }

        kdebug_trace();
        runGmcOnGmsBuffer(v13, *v12, v18, (v6 + 76), v6 + 8, v32.f64, (v6 + 116), *(v5 + 244));
      }

      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136315394;
        v35 = "run";
        v36 = 1024;
        v37 = v4;
        v9 = "%s - Number of buffers is not 3 or 6 (%d)\n";
        goto LABEL_8;
      }
    }

    else
    {
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v16 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v34 = 136315138;
        v35 = "run";
        v9 = "%s - Couldn't understand which projector is on this device.\n";
        v10 = v16;
        v11 = 12;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *v6;
      v34 = 136315650;
      v35 = "run";
      v36 = 1024;
      v37 = 5;
      v38 = 1024;
      v39 = v15;
      v9 = "%s - expected GMC parameters buffer v%d, got v%d\n";
      v10 = v14;
      v11 = 24;
      goto LABEL_21;
    }
  }

  return 3;
}

uint64_t GMCProcessor::populateGMSBuffer(GMCProcessor *this, unint64_t *a2, int a3, int a4, unsigned int a5, const unsigned __int16 *a6, int a7, const unsigned __int16 *a8, int a9, const unsigned __int8 *a10, int a11, int a12)
{
  result = 0;
  if (a5 >= 1 && a3 >= 1)
  {
    v13 = 0;
    result = 0;
    v15 = a5;
    do
    {
      if (a4 >= 1)
      {
        v16 = 0;
        do
        {
          if (a10[v16] >= a12)
          {
            v17 = *a2 & 0xFFFFFFFFF0000000 | v16 | ((v13 & 0xFFF) << 16);
            *a2 = v17;
            v18 = v17 & 0xFFFFFC000FFFFFFFLL | ((a6[v16] & 0x3FFF) << 28);
            *a2 = v18;
            v19 = v18 & 0xFF0003FFFFFFFFFFLL | ((a8[v16] & 0x3FFF) << 42);
            *a2 = v19;
            *a2++ = v19 & 0xFFFFFFFFFFFFFFLL | (a10[v16] << 56);
            result = (result + 1);
            if (result >= a3)
            {
              break;
            }
          }

          ++v16;
        }

        while (a4 != v16);
      }

      if (++v13 >= v15)
      {
        break;
      }

      a10 += a11;
      a8 += a9 / 2;
      a6 += a7 / 2;
    }

    while (result < a3);
  }

  return result;
}

void GMCProcessor::postProcessProjectorGMC(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v17 = *MEMORY[0x277D85DE8];
  v10 = *v1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12GMCProcessor23postProcessProjectorGMCE26sCIspCmdChPearlCalibrationS0_j18GMCInnerStatisticsyb_block_invoke;
  block[3] = &__block_descriptor_tmp_3_2;
  block[4] = v1;
  memcpy(v13, v11, sizeof(v13));
  memcpy(v14, v5, sizeof(v14));
  v15 = v7;
  memcpy(v16, v9, 0x3400uLL);
  v16[13312] = v3;
  dispatch_async(*v10, block);
}

void ___ZN12GMCProcessor23postProcessProjectorGMCE26sCIspCmdChPearlCalibrationS0_j18GMCInnerStatisticsyb_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v4 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "postProcessProjectorGMC_block_invoke";
    _os_log_impl(&dword_2247DB000, v3, OS_LOG_TYPE_DEFAULT, "%s - projector GMC reporting analytics\n", &v7, 0xCu);
  }

  reportProjectorGmcResults(a1 + 40, a1 + 13352, *(a1 + 13944), a1 + 13948, (v2 + 8));
  if (*(a1 + 27260) == 1 && *(a1 + 13728) >= 0.0)
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
    {
      v5 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "postProcessProjectorGMC_block_invoke";
      _os_log_impl(&dword_2247DB000, v5, OS_LOG_TYPE_DEFAULT, "%s - Updating PCECalib on disk\n", &v7, 0xCu);
    }

    kdebug_trace();
    PCECalibration::save();
  }

  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v4)
  {
    v6 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "postProcessProjectorGMC_block_invoke";
    _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_DEFAULT, "%s - Projector-GMC post processing done\n", &v7, 0xCu);
  }
}

void sub_22493E780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),GMCInitializer *>>(const void **a1)
{
  v5 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (v5[1])(v5[2]);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),GMCInitializer *>>::~unique_ptr[abi:ne200100](&v5);
  return 0;
}

void sub_22493E810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),GMCInitializer *>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (*)(void *),GMCInitializer *>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x22AA55B60](v3, 0xA0C40A8488062);
  }

  return a1;
}

uint64_t H16ISP::H16ISPGraphExclaveSensorMetadataNode::H16ISPGraphExclaveSensorMetadataNode(uint64_t a1, H16ISP::H16ISPDevice *this, int a3, int a4)
{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(a1, 26, this, a3, a4);
  *result = &unk_283814700;
  *(result + 96) = 0;
  return result;
}

uint64_t H16ISP::H16ISPGraphExclaveSensorMetadataNode::onMessageProcessing(H16ISP::H16ISPGraphExclaveSensorMetadataNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v2 = 3758097136;
  if (!a2)
  {
    return 3758097090;
  }

  if ((*(a2 + 9) & (1 << H16ISP::H16ISPFilterGraphNode::GetType(this))) == 0)
  {
    return 3758097130;
  }

  pthread_mutex_lock((a2 + 8));
  v5 = *(a2 + 47);
  *(this + 96) = *(a2 + 388);
  pthread_mutex_unlock((a2 + 8));
  if (!v5)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveSensorMetadataNode::onMessageProcessing(this, v9);
    }

    return v2;
  }

  v6 = H16ISP::H16ISPGraphExclaveSensorMetadataNode::computePTS(this, *(v5 + 4));
  *(v5 + 4) = FigHostTimeToNanoseconds();
  pthread_mutex_lock((a2 + 8));
  *(a2 + 11) = v6;
  pthread_mutex_unlock((a2 + 8));
  v7 = *(*this + 80);

  return v7(this, v5);
}

unint64_t H16ISP::H16ISPGraphExclaveSensorMetadataNode::computePTS(H16ISP::H16ISPGraphExclaveSensorMetadataNode *this, uint64_t a2)
{
  v11 = 0.0;
  v9 = 0;
  v4 = H16ISP::H16ISPExclaveGraphNode::ISPDevice(this);
  if (H16ISP::H16ISPDevice::ISP_GetCameraTime(v4, outputStruct))
  {
    v5 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v5;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveSensorMetadataNode::computePTS();
    }
  }

  else
  {
    v6 = H16ISP::H16ISPExclaveGraphNode::ISPDevice(this);
    if (H16ISP::H16ISPDevice::GetISPCounterFrequency(v6, &v9, &v11))
    {
      v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v7 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPGraphExclaveSensorMetadataNode::computePTS();
      }
    }

    else
    {
      return (outputStruct[0] - (outputStruct[1] - a2) * v11);
    }
  }

  return a2;
}

uint64_t H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::H16ISPGraphExclaveRGBSensorMetadataNode(H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 26, a2, a3, 1);
  *(result + 96) = 0;
  *result = &unk_283814768;
  return result;
}

{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 26, a2, a3, 1);
  *(result + 96) = 0;
  *result = &unk_283814768;
  return result;
}

uint64_t H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::sendSensorMetadata(uint64_t a1, int *a2)
{
  v78 = *MEMORY[0x277D85DE8];
  if (*(a2 + 102) <= 1u)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 102);
  }

  v5 = BinningModeToFactor(*(a2 + 100));
  v6 = BinningModeToFactor(*(a2 + 101));
  v7 = H16ISP::H16ISPExclaveGraphNode::Verbose(a1);
  v8 = MEMORY[0x277D86220];
  if (v7)
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a2[31];
      v11 = *(a2 + 128);
      v12 = *(a2 + 100);
      v13 = *(a2 + 101);
      v14 = a2[29];
      v15 = a2[30];
      v16 = *a2;
      *buf = 136316930;
      v39 = "sendSensorMetadata";
      v40 = 2048;
      v41 = v10;
      v42 = 1024;
      v43 = v11;
      v44 = 1024;
      v45 = v12;
      v46 = 1024;
      v47 = v13;
      v48 = 1024;
      v49 = v14;
      v50 = 1024;
      v51 = v15;
      v52 = 1024;
      v53 = v16;
      _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "%s - focalLength=%f, isValid=%hhu, modeBinW=%hhu, modeBinH=%hhu, centerX=%u, centerY=%u, requestID=0x%08X\n", buf, 0x3Au);
    }
  }

  H16ISP::H16ISPExclaveGraphNode::GetModuleParams(a1, buf);
  v17 = 1.0 / v54;
  v18 = ComputeLensPSF(v5, v6, v4, *(a2 + 46), *(a2 + 47), *(a2 + 48), *(a2 + 49));
  v19 = v18;
  if (*(a2 + 128))
  {
    v20 = a2[31] * 0.0000152587891 * 1000.0 * v17 * v18;
  }

  else
  {
    v21 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v8)
    {
      v21 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v21;
    }

    v20 = 1.0;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::sendSensorMetadata(v21);
    }
  }

  v22 = ComputeOpticalCenter(v5, v6, v4, *(a2 + 46), *(a2 + 47), *(a2 + 48), *(a2 + 49), v19, v17, a2[29], *(a2 + 1), a2[30], 0);
  v24 = v23;
  bzero(&v39, 0x268uLL);
  *buf = 196609;
  v55 = H16ISP::H16ISPExclaveGraphNode::Channel(a1);
  v56 = *a2;
  v57 = *(a2 + 1);
  v58 = *(a2 + 3);
  v59 = *(a2 + 10);
  v60 = *(a2 + 3);
  *&v25 = *(a2 + 4);
  *(&v25 + 1) = *(a2 + 11);
  v61 = v25;
  v62 = *(a2 + 13);
  v63 = *(a2 + 15);
  v64 = *(a2 + 17);
  v65 = a2[19];
  v26 = *(a1 + 96);
  v67 = *(a1 + 96);
  v66 = *(a2 + 20);
  v68 = v20;
  v69 = 0;
  v70 = v22;
  v71 = 0;
  v72 = v20;
  v73 = v24;
  v74 = 0;
  v75 = 0x3F80000000000000;
  *&v25 = *(a2 + 21);
  *(&v25 + 1) = *(a2 + 13);
  v76 = v25;
  v77 = a2[28];
  if (H16ISP::H16ISPExclaveGraphNode::Verbose(a1))
  {
    v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v8)
    {
      v27 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v27;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 67109632;
      v33 = v55;
      v34 = 1024;
      v35 = v56;
      v36 = 1024;
      v37 = v26;
      _os_log_impl(&dword_2247DB000, v27, OS_LOG_TYPE_DEFAULT, "sending sensor metadata channel=%u frameid=%u concurrentmode=%d \n", v32, 0x14u);
    }
  }

  kdebug_trace();
  v28 = ispExclaveKitCommand();
  kdebug_trace();
  if (!v28)
  {
    return 0;
  }

  v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v8)
  {
    v29 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v29;
  }

  v30 = 3758097084;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::sendSensorMetadata();
  }

  return v30;
}

uint64_t BinningModeToFactor(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v2 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v2;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      BinningModeToFactor();
    }

    LOBYTE(v1) = 1;
  }

  else
  {
    return (0x40201u >> (8 * (a1 & 0x1F)));
  }

  return v1;
}

uint64_t H16ISP::H16ISPGraphExclaveIRSensorMetadataNode::H16ISPGraphExclaveIRSensorMetadataNode(H16ISP::H16ISPGraphExclaveIRSensorMetadataNode *this, H16ISP::H16ISPDevice *a2, int a3)
{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 26, a2, a3, 0);
  *(result + 96) = 0;
  *result = &unk_2838147D0;
  return result;
}

{
  result = H16ISP::H16ISPExclaveGraphNode::H16ISPExclaveGraphNode(this, 26, a2, a3, 0);
  *(result + 96) = 0;
  *result = &unk_2838147D0;
  return result;
}

uint64_t H16ISP::H16ISPGraphExclaveIRSensorMetadataNode::sendSensorMetadata(H16ISP::H16ISPDevice **a1, int *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  if (*(a2 + 102) <= 1u)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 102);
  }

  v5 = BinningModeToFactor(*(a2 + 100));
  v6 = BinningModeToFactor(*(a2 + 101));
  H16ISP::H16ISPExclaveGraphNode::GetModuleParams(a1, &v27);
  v7 = 1.0 / v28[36];
  v8 = ComputeLensPSF(v5, v6, v4, *(a2 + 46), *(a2 + 47), *(a2 + 48), *(a2 + 49));
  v9 = ComputeOpticalCenter(v5, v6, v4, *(a2 + 46), *(a2 + 47), *(a2 + 48), *(a2 + 49), v8, v7, a2[29], *(a2 + 1), a2[30], 0);
  v11 = v10;
  bzero(v28, 0x268uLL);
  v27 = 196609;
  v29 = H16ISP::H16ISPExclaveGraphNode::Channel(a1);
  v30 = *a2;
  v31 = *(a2 + 1);
  v32 = *(a2 + 3);
  v33 = *(a2 + 10);
  v34 = *(a2 + 3);
  *&v12 = *(a2 + 4);
  *(&v12 + 1) = *(a2 + 11);
  v35 = v12;
  v36 = *(a2 + 13);
  v37 = *(a2 + 15);
  v38 = *(a2 + 17);
  v39 = a2[19];
  v13 = *(a1 + 96);
  v41 = *(a1 + 96);
  v40 = *(a2 + 20);
  v42 = 1065353216;
  v43 = v9;
  v44 = 0x3F80000000000000;
  v45 = v11;
  v46 = 0;
  v47 = 0x3F80000000000000;
  *&v12 = *(a2 + 21);
  *(&v12 + 1) = *(a2 + 13);
  v48 = v12;
  v49 = a2[28];
  v14 = H16ISP::H16ISPExclaveGraphNode::Verbose(a1);
  v15 = MEMORY[0x277D86220];
  if (v14)
  {
    v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "exclaves");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v16;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      v22 = v29;
      v23 = 1024;
      v24 = v30;
      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_2247DB000, v16, OS_LOG_TYPE_DEFAULT, "sending sensor metadata channel=%u frameid=%u concurrentmode=%d\n", buf, 0x14u);
    }
  }

  kdebug_trace();
  v17 = ispExclaveKitCommand();
  kdebug_trace();
  if (!v17)
  {
    return 0;
  }

  v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == v15)
  {
    v18 = os_log_create("com.apple.isp", "exclaves");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v18;
  }

  v19 = 3758097084;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPGraphExclaveIRSensorMetadataNode::sendSensorMetadata();
  }

  return v19;
}

void H16ISP::H16ISPGraphExclaveRGBSensorMetadataNode::~H16ISPGraphExclaveRGBSensorMetadataNode(NSObject **this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void H16ISP::H16ISPGraphExclaveIRSensorMetadataNode::~H16ISPGraphExclaveIRSensorMetadataNode(NSObject **this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t H16ISP::H16ISPDevice::GetUnitInfoPropertyDict(H16ISP::H16ISPDevice *this, __CFDictionary **a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = 3758097085;
  err = 0;
  if (!a2 || *a2)
  {
    return 3758097090;
  }

  if (byte_28100312A)
  {
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], @"/usr/local/share/firmware/isp/ISPUnitInfo.plist", kCFURLPOSIXPathStyle, 0);
  if (v6)
  {
    v7 = v6;
    format = 0;
    v8 = CFReadStreamCreateWithFile(v5, v6);
    if (v8)
    {
      v9 = v8;
      if (CFReadStreamOpen(v8))
      {
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        v10 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v17 = "GetUnitInfoPropertyDict";
          _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - Parsing ISPUnitInfo.plist\n", buf, 0xCu);
        }

        v11 = CFPropertyListCreateWithStream(v5, v9, 0, 0, &format, &err);
        if (err)
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v10)
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPDevice::GetUnitInfoPropertyDict();
          }

          v12 = CFErrorCopyDescription(err);
          if (v12)
          {
            v13 = v12;
            CFShow(v12);
            CFRelease(v13);
          }
        }

        else
        {
          v2 = 0;
          *a2 = v11;
        }
      }

      else
      {
        v2 = 3758097136;
      }

      CFReadStreamClose(v9);
      CFRelease(v9);
    }

    CFRelease(v7);
  }

  return v2;
}

uint64_t H16ISP::H16ISPDevice::CreateISPUnitInfoDictionary(H16ISP::H16ISPDevice *this, __CFDictionary **a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v5 = v2;
  v100 = *MEMORY[0x277D85DE8];
  v6 = 3758097085;
  length = 40960;
  if (!H16ISP::H16ISPDevice::ISP_IsPowered(v2))
  {
    Mutable = 0;
    v6 = 3758097123;
    goto LABEL_10;
  }

  v7 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    length_4 = *(v5 + 1074);
    v9 = CFNumberCreate(0, kCFNumberIntType, &length_4);
    CFDictionarySetValue(Mutable, @"PlatformID", v9);
    CFRelease(v9);
    v10 = MGCopyAnswer();
    if (v10)
    {
      v11 = v10;
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v11))
      {
        CFDictionarySetValue(Mutable, @"iOSBuildVersion", v11);
      }

      CFRelease(v11);
    }

    bzero(v92, 0xACuLL);
    v93 = 6;
    v13 = H16ISP::H16ISPDevice::ISP_SendCommand(v5, v92, 0xACu, 0, 0xFFFFFFFF);
    if (v13)
    {
      v6 = v13;
      CFRelease(Mutable);
      Mutable = 0;
      goto LABEL_10;
    }

    v15 = CFStringCreateWithCString(0, v94, 0);
    if (v15)
    {
      v16 = v15;
      CFDictionarySetValue(Mutable, @"FirmwareName", v15);
      CFRelease(v16);
    }

    v17 = CFStringCreateWithCString(0, v95, 0);
    if (v17)
    {
      v18 = v17;
      CFDictionarySetValue(Mutable, @"FirmwareLinkDate", v17);
      CFRelease(v18);
    }

    v19 = CFStringCreateWithCString(0, v96, 0);
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(Mutable, @"FirmwareReleaseVersion", v19);
      CFRelease(v20);
    }

    v21 = CFStringCreateWithCString(0, v97, 0);
    if (v21)
    {
      v22 = v21;
      CFDictionarySetValue(Mutable, @"FirmwareToolchainName", v21);
      CFRelease(v22);
    }

    v23 = CFStringCreateWithCString(0, v98, 0);
    if (v23)
    {
      v24 = v23;
      CFDictionarySetValue(Mutable, @"FirmwareToolchainVersion", v23);
      CFRelease(v24);
    }

    v25 = *MEMORY[0x277CD28A0];
    v26 = IOServiceNameMatching("AppleARMPE");
    MatchingService = IOServiceGetMatchingService(v25, v26);
    v28 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"IOPlatformSerialNumber", v7, 3u);
    if (v28)
    {
      v29 = v28;
      CFDictionarySetValue(Mutable, @"DeviceSerialNumber", v28);
      CFRelease(v29);
    }

    theDict = 0;
    H16ISP::H16ISPDevice::GetUnitInfoPropertyDict(v28, &theDict);
    v30 = IORegistryEntrySearchCFProperty(*(v5 + 1084), "IOService", @"multi-camera-cal-wide", v7, 3u);
    Value = v30;
    if (v30 || theDict && (Value = CFDictionaryGetValue(theDict, @"MultiCameraCalWide")) != 0)
    {
      v32 = CFDataGetLength(Value);
      BytePtr = CFDataGetBytePtr(Value);
      if (BytePtr)
      {
        v34 = CFDataCreate(0, BytePtr, v32);
        CFDictionarySetValue(Mutable, @"MultiCameraCalWide", v34);
        CFRelease(v34);
      }

      if (v30)
      {
        CFRelease(v30);
      }
    }

    v35 = IORegistryEntrySearchCFProperty(*(v5 + 1084), "IOService", @"multi-camera-cal-swide", v7, 3u);
    v36 = v35;
    if (v35 || theDict && (v36 = CFDictionaryGetValue(theDict, @"MultiCameraCalSwide")) != 0)
    {
      v37 = CFDataGetLength(v36);
      v38 = CFDataGetBytePtr(v36);
      if (v38)
      {
        v39 = CFDataCreate(0, v38, v37);
        CFDictionarySetValue(Mutable, @"MultiCameraCalSwide", v39);
        CFRelease(v39);
      }

      if (v35)
      {
        CFRelease(v35);
      }
    }

    v40 = IORegistryEntrySearchCFProperty(*(v5 + 1084), "IOService", @"front-camera-cal-swide", v7, 3u);
    v41 = v40;
    if (v40)
    {
      goto LABEL_38;
    }

    if (!theDict)
    {
LABEL_47:
      length_4 = v99;
      v45 = CFNumberCreate(0, kCFNumberIntType, &length_4);
      CFDictionarySetValue(Mutable, @"MetadataVersion", v45);
      CFRelease(v45);
      v46 = CFArrayCreateMutable(v7, *(v5 + 1167), MEMORY[0x277CBF128]);
      if (!v46)
      {
        goto LABEL_67;
      }

      v47 = v46;
      v76 = v4;
      if (!*(v5 + 1167))
      {
        goto LABEL_66;
      }

      v48 = 0;
      v49 = MEMORY[0x277CBF138];
      v50 = MEMORY[0x277CBF150];
      while (1)
      {
        v51 = CFDictionaryCreateMutable(v7, 0, v49, v50);
        if (v51)
        {
          v52 = v51;
          length_4 = v48;
          v53 = CFNumberCreate(0, kCFNumberIntType, &length_4);
          CFDictionarySetValue(v52, @"Index", v53);
          CFRelease(v53);
          if (!H16ISP::H16ISPDevice::ISP_GetModuleParams(v5, v48, v84))
          {
            if (v84[4] == 1)
            {
              length_4 = v85;
              v54 = CFNumberCreate(0, kCFNumberIntType, &length_4);
              CFDictionarySetValue(v52, @"SensorID", v54);
              CFRelease(v54);
              length_4 = v86;
              v55 = CFNumberCreate(0, kCFNumberIntType, &length_4);
              CFDictionarySetValue(v52, @"ModuleIntegrator", v55);
              CFRelease(v55);
              length_4 = v87;
              v56 = CFNumberCreate(0, kCFNumberIntType, &length_4);
              CFDictionarySetValue(v52, @"ModuleLensID", v56);
              CFRelease(v56);
              length_4 = v90;
              v57 = CFNumberCreate(0, kCFNumberIntType, &length_4);
              CFDictionarySetValue(v52, @"ModuleIRFilterID", v57);
              CFRelease(v57);
              length = 40960;
              if (H16ISP::H16ISPDevice::GetSensorNVMBytes(v5, v48, bytes, 0, &length))
              {
                goto LABEL_66;
              }

              v58 = CFDataCreate(0, bytes, length);
              CFDictionarySetValue(v52, @"NVM", v58);
              CFRelease(v58);
              if (v88 == 1)
              {
                valuePtr = v89;
                v59 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
                CFDictionarySetValue(v52, @"SetfileVersion", v59);
                CFRelease(v59);
                v79 = 0;
                if (!H16ISP::H16ISPDevice::ISP_GetSetfileSize(v5, v48, &v79))
                {
                  operator new[]();
                }
              }
            }

            LOWORD(valuePtr) = 0;
            LOWORD(v79) = 0;
            *v78 = 0;
            if (H16ISP::H16ISPDevice::GetColorCalData(v5, v48, &valuePtr, &v79, &v78[1], v78))
            {
              goto LABEL_66;
            }

            v60 = CFDictionaryCreateMutable(v7, 0, v49, v50);
            if (!v60)
            {
              goto LABEL_66;
            }

            v61 = v60;
            v62 = v47;
            v63 = v50;
            v64 = v49;
            length_4 = valuePtr;
            v65 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v61, @"LowCCTrgBias", v65);
            CFRelease(v65);
            length_4 = v79;
            v66 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v61, @"LowCCTbgBias", v66);
            CFRelease(v66);
            length_4 = v78[1];
            v67 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v61, @"HiCCTrgBias", v67);
            CFRelease(v67);
            length_4 = v78[0];
            v68 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v61, @"HiCCTbgBias", v68);
            CFRelease(v68);
            CFDictionarySetValue(v52, @"ColorCalibrationData", v61);
            CFRelease(v61);
            v77 = 0;
            if (H16ISP::H16ISPDevice::GetAbsoluteColorCal(v5, v48, &valuePtr, &v79, &v78[1], v78, &v77) || (v69 = CFDictionaryCreateMutable(v7, 0, v64, v63)) == 0)
            {
              v47 = v62;
LABEL_66:
              CFDictionarySetValue(Mutable, @"ChannelArray", v47);
              CFRelease(v47);
              v4 = v76;
LABEL_67:
              v6 = 0;
              goto LABEL_10;
            }

            v70 = v69;
            length_4 = valuePtr;
            v71 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v70, @"LowCCTrgAbs", v71);
            CFRelease(v71);
            length_4 = v79;
            v72 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v70, @"LowCCTbgAbs", v72);
            CFRelease(v72);
            length_4 = v78[1];
            v73 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v70, @"HiCCTrgAbs", v73);
            CFRelease(v73);
            length_4 = v78[0];
            v74 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v70, @"HiCCTbgAbs", v74);
            CFRelease(v74);
            length_4 = v77;
            v75 = CFNumberCreate(0, kCFNumberIntType, &length_4);
            CFDictionarySetValue(v70, @"AbsoluteColorCalFlags", v75);
            CFRelease(v75);
            CFDictionarySetValue(v52, @"AbsoluteColorCalibrationData", v70);
            CFRelease(v70);
            v49 = v64;
            v50 = v63;
            v47 = v62;
          }

          CFArraySetValueAtIndex(v47, v48, v52);
          CFRelease(v52);
        }

        if (++v48 >= *(v5 + 1167))
        {
          goto LABEL_66;
        }
      }
    }

    v41 = CFDictionaryGetValue(theDict, @"FrontCameraCalSwide");
    if (v41)
    {
LABEL_38:
      v42 = CFDataGetLength(v41);
      v43 = CFDataGetBytePtr(v41);
      if (v43)
      {
        v44 = CFDataCreate(0, v43, v42);
        CFDictionarySetValue(Mutable, @"FrontCameraCalSwide", v44);
        CFRelease(v44);
      }

      if (v40)
      {
        CFRelease(v40);
      }
    }

    if (theDict)
    {
      CFRelease(theDict);
      theDict = 0;
    }

    goto LABEL_47;
  }

LABEL_10:
  *v4 = Mutable;
  return v6;
}

uint64_t H16ISP::H16ISPDevice::GetSensorNVMBytes(H16ISP::H16ISPDevice *this, uint64_t a2, unsigned __int8 *a3, unsigned int a4, unsigned int *a5)
{
  v5 = 3758097090;
  if (*(this + 4))
  {
    if (*(this + 1167) > a2)
    {
      v6 = (*(this + 5) + 432 * a2);
      if (*v6)
      {
        v7 = v6[18];
        if (v7 > a4)
        {
          v8 = *a5;
          if (*a5 >= v7)
          {
            v8 = v7;
          }

          if (v8 + a4 <= v7)
          {
            v9 = v8;
          }

          else
          {
            v9 = v7 - a4;
          }

          if (v9)
          {
            operator new[]();
          }
        }
      }

      else
      {
        return 3758097088;
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v5 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetSensorNVMBytes();
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetSetfileSize(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int *a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  output = 0;
  input[0] = a2;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v3, 0x14u, input, 1u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_CopySetfile(H16ISP::H16ISPDevice *this, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v5 = IOConnectCallScalarMethod(v4, 0x38u, v7, 3u, 0, 0);
  if (v5)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_CopySetfile();
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::GetColorCalData(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  bzero(v13, 0x14uLL);
  v14 = 2053;
  v15 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v16;
    *a4 = v17;
    *a5 = v18;
    *a6 = v19;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAbsoluteColorCal(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int8 *a7)
{
  bzero(v15, 0x18uLL);
  v16 = 2056;
  v17 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v18;
    *a4 = v19;
    *a5 = v20;
    *a6 = v21;
    *a7 = v22;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetLSCCoefficients(uint64_t a1, uint64_t a2, unsigned int a3, void *__dst)
{
  v4 = 3758097090;
  if (*(a1 + 4))
  {
    if (*(a1 + 4668) > a2)
    {
      v5 = *(a1 + 40) + 432 * a2;
      if (*v5 > a3)
      {
        memmove(__dst, (*(v5 + 24) + 72 * a3), 0x48uLL);
        return 0;
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v4 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetLSCCoefficients();
    }
  }

  return v4;
}

uint64_t H16ISP::H16ISPDevice::AllExpectedSensorsDetected(H16ISP::H16ISPDevice *this)
{
  v1 = *(this + 1167);
  if (v1)
  {
    if (*(this + 4) == 1)
    {
      v2 = *(this + 538);
      if (v2)
      {
        v3 = (v2 + 12);
        for (i = 44; ; i += 432)
        {
          v5 = *v3;
          v3 += 26;
          if (v5)
          {
            if (!*(*(this + 5) + i))
            {
              break;
            }
          }

          if (!--v1)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::SetStillFESConfig(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, char a4, int a5, int a6, uint64_t a7, uint64_t a8)
{
  bzero(v17, 0x2CuLL);
  v19 = a2;
  v18 = 2308;
  v20 = a4;
  v21 = a3;
  v22 = a7;
  v23 = a8;
  v24 = a5;
  v25 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v17, 0x2Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableVisPipeOutput(uint64_t a1)
{
  v8 = MEMORY[0x28223BE20](a1);
  v26 = *MEMORY[0x277D85DE8];
  result = 3758097090;
  if (v7 <= 4)
  {
    v10 = v1;
    if (*(v8 + 1167) > v1)
    {
      v11 = v7;
      v12 = v6;
      v13 = v5;
      v14 = v4;
      v15 = v3;
      v16 = v2;
      v17 = HIDWORD(v3);
      v18 = HIDWORD(v2);
      bzero(v19, 0x1CuLL);
      v20 = 20488;
      v21 = v10;
      v22 = v16;
      v24 = v15;
      v25 = v17;
      v23 = v18;
      result = H16ISP::H16ISPDevice::ISP_SendCommand(v8, v19, 0x1Cu, 0, 0xFFFFFFFF);
      if (!result)
      {
        bzero(v19, 0x14uLL);
        v21 = v10;
        v20 = 20489;
        LOWORD(v22) = v13;
        HIWORD(v22) = v12;
        v23 = v11;
        result = H16ISP::H16ISPDevice::ISP_SendCommand(v8, v19, 0x14u, 0, 0xFFFFFFFF);
        if (!result)
        {
          bzero(v19, 0x10uLL);
          v21 = v10;
          v20 = 20487;
          LOBYTE(v22) = v14;
          return H16ISP::H16ISPDevice::ISP_SendCommand(v8, v19, 0x10u, 0, 0xFFFFFFFF);
        }
      }
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ConfigureProResRawOutput(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v8 = 365;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StopCamera(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v3 = 3758097112;
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  if (*(this + 4))
  {
    v6[0] = a2;
    return IOConnectCallScalarMethod(v4, 0x37u, v6, 1u, 0, 0);
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::StopCamera();
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::ReturnAllUnusedBuffers(H16ISP::H16ISPDevice *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v10 = *MEMORY[0x277D85DE8];
  if (*(v1 + 4))
  {
    v4 = v1;
    bzero(v7, 0xCuLL);
    v9 = v3;
    v8 = 260;
    return H16ISP::H16ISPDevice::ISP_SendCommand(v4, v7, 0xCu, 0, 0xFFFFFFFF);
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v5 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ReturnAllUnusedBuffers();
    }
  }

  return v5;
}

uint64_t H16ISP::H16ISPDevice::ReturnAllBuffersInPool(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 347;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ReturnAllSharedBuffersInPool(H16ISP::H16ISPDevice *this, __int16 a2, __int16 a3, int a4)
{
  bzero(v9, 0x10uLL);
  v10 = 13323;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StartFaceDetect(H16ISP::H16ISPDevice *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v17 = *MEMORY[0x277D85DE8];
  bzero(v11, 0x1CuLL);
  v13 = v7;
  v12 = 3330;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(v8, v11, 0x1Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    v10 = v15;
    bzero(v11, 0x18uLL);
    v12 = 3331;
    v13 = v7;
    v14 = v10;
    LOBYTE(v15) = v5 & 1;
    BYTE1(v15) = (v5 & 2) != 0;
    BYTE2(v15) = (v5 & 4) != 0;
    HIBYTE(v15) = (v5 & 8) == 0;
    v16 = (v5 & 0x10) == 0;
    result = H16ISP::H16ISPDevice::ISP_SendCommand(v8, v11, 0x18u, 0, 0xFFFFFFFF);
    if (!result)
    {
      bzero(v11, 0x10uLL);
      v13 = v7;
      v12 = 3333;
      LOBYTE(v14) = v3;
      result = H16ISP::H16ISPDevice::ISP_SendCommand(v8, v11, 0x10u, 0, 0xFFFFFFFF);
      if (!result)
      {
        bzero(v11, 0xCuLL);
        v13 = v7;
        v12 = 3328;
        return H16ISP::H16ISPDevice::ISP_SendCommand(v8, v11, 0xCu, 0, 0xFFFFFFFF);
      }
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ReconfigureFaceDetect(H16ISP::H16ISPDevice *this, int a2, char a3, int a4)
{
  bzero(v9, 0x18uLL);
  v10 = 3331;
  v11 = a2;
  v12 = a4;
  v13 = a3 & 1;
  v14 = (a3 & 2) != 0;
  v15 = (a3 & 4) != 0;
  v16 = (a3 & 8) == 0;
  v17 = (a3 & 0x10) == 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StopFaceDetect(H16ISP::H16ISPDevice *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v4 = v1;
  v9 = *MEMORY[0x277D85DE8];
  bzero(v6, 0xCuLL);
  v8 = v3;
  v7 = 3329;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(v4, v6, 0xCu, 0, 0xFFFFFFFF);
  if (!result)
  {
    bzero(v6, 0xCuLL);
    v8 = v3;
    v7 = 3332;
    return H16ISP::H16ISPDevice::ISP_SendCommand(v4, v6, 0xCu, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetExclaveMaximumFrameRate(H16ISP::H16ISPDevice *this, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = 3758097084;
  if (*(this + 1086))
  {
    v4 = a2;
    if (*(this + 1167) <= a2)
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ISP_SetExclaveMaximumFrameRate();
      }
    }

    else
    {
      bzero(&v11, 0x208uLL);
      v13 = a3;
      v12 = v4;
      kdebug_trace();
      v6 = ispExclaveKitCommand();
      kdebug_trace();
      if (byte_281003130 == 1)
      {
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v7 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v15 = v12;
          v16 = 1024;
          v17 = v13;
          _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "AE max framerate: channel=%u, maxfps=%u\n", buf, 0xEu);
        }
      }

      if (v6)
      {
        v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v8 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPDevice::ISP_SetExclaveMaximumFrameRate();
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::SetMaximumFrameRateForAllocation(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 369;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_SetExclaveMinimumFrameRate(H16ISP::H16ISPDevice *this, uint64_t a2, int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = 3758097084;
  if (*(this + 1086))
  {
    v4 = a2;
    if (*(this + 1167) <= a2)
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "exclaves");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ISP_SetExclaveMinimumFrameRate();
      }
    }

    else
    {
      bzero(&v11, 0x208uLL);
      v13 = a3;
      v12 = v4;
      kdebug_trace();
      v6 = ispExclaveKitCommand();
      kdebug_trace();
      if (byte_281003130 == 1)
      {
        v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v7 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v7;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v15 = v12;
          v16 = 1024;
          v17 = v13;
          _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_INFO, "AE min framerate: channel=%u, minfps=%u\n", buf, 0xEu);
        }
      }

      if (v6)
      {
        v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog == MEMORY[0x277D86220])
        {
          v8 = os_log_create("com.apple.isp", "exclaves");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_exclavesLog = v8;
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPDevice::ISP_SetExclaveMinimumFrameRate();
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::GetMinimumFrameRate(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3)
{
  if ((*(this + 1073) >> a2))
  {
    result = 0;
    *a3 = 0;
  }

  else
  {
    bzero(v7, 0x10uLL);
    v8 = 521;
    v9 = a2;
    result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
    if (!result)
    {
      *a3 = v10;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetExternalSyncConfigFrameRate(H16ISP::H16ISPDevice *a1, int a2, unint64_t a3)
{
  v3 = a3;
  v6 = HIDWORD(a3);
  bzero(v8, 0x14uLL);
  v9 = 371;
  v10 = a2;
  v11 = v3;
  v12 = v6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetRationalFrameRateRange(H16ISP::H16ISPDevice *a1, int a2, int a3, void *a4, void *a5)
{
  bzero(v12, 0x20uLL);
  v13 = 608;
  v14 = a2;
  v15 = a3;
  if (a3)
  {
    result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v12, 0x20u, 0, 0xFFFFFFFF);
    if (!result)
    {
      if (a3)
      {
        result = 0;
        v11 = v16;
        *a4 = *(&v16 + 1);
        *a5 = v11;
      }
    }
  }

  else
  {
    v16 = *a5;
    return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v12, 0x20u, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetDeviceNVMBytes(H16ISP::H16ISPDevice *a1, int a2, int a3, void *a4, int a5, _DWORD *a6)
{
  if (*a6)
  {
    operator new[]();
  }

  return 3758097090;
}

uint64_t H16ISP::H16ISPDevice::ReloadNVMBytes(H16ISP::H16ISPDevice *this, uint64_t a2)
{
  v2 = a2;
  v3 = 3758097112;
  if (*(this + 4))
  {
    if (*(this + 1167) <= a2)
    {
      return 3758097090;
    }

    else
    {
      v5 = *(this + 5);
      if (*(v5 + 432 * a2))
      {
        v6 = a2;
        bzero(v8, 0x14uLL);
        v9 = 1282;
        v10 = v2;
        v11 = 0;
        v12 = *(v5 + 432 * v6 + 72);
        v3 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v8, 0x14u, 0, 0xFFFFFFFF);
        if (!v3)
        {
          return H16ISP::H16ISPDevice::CacheDeviceConfigs(this);
        }
      }

      else
      {
        return 3758097088;
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ReloadNVMBytes();
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::EnableAE(H16ISP::H16ISPDevice *this, unsigned int a2, int a3)
{
  if (*(this + 1167) <= a2)
  {
    return 3758097090;
  }

  v13 = v3;
  v14 = v4;
  if (a3)
  {
    bzero(v10, 0xCuLL);
    v11 = 512;
    v12 = a2;
    v7 = this;
    v8 = 12;
  }

  else
  {
    bzero(v10, 0x10uLL);
    v11 = 513;
    v12 = a2;
    v7 = this;
    v8 = 16;
  }

  return H16ISP::H16ISPDevice::ISP_SendCommand(v7, v10, v8, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAWB(H16ISP::H16ISPDevice *this, unsigned int a2, int a3)
{
  if (*(this + 1167) <= a2)
  {
    return 3758097090;
  }

  v12 = v3;
  v13 = v4;
  if (a3)
  {
    bzero(v9, 0xCuLL);
    v7 = 768;
  }

  else
  {
    bzero(v9, 0xCuLL);
    v7 = 769;
  }

  v10 = v7;
  v11 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetFaceDetectionWindowParam(H16ISP::H16ISPDevice *a1, int a2, uint64_t a3)
{
  bzero(v7, 0x14uLL);
  v8 = 3340;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetFaceDetectionWindowParam(H16ISP::H16ISPDevice *a1, int a2, void *a3)
{
  bzero(v7, 0x14uLL);
  v8 = 3341;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetLensTemperature(H16ISP::H16ISPDevice *this, int a2, int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1961;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableHighFrameRateAF(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1038;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableReplaySifDMA(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 355;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::WritePropertyValue(H16ISP::H16ISPDevice *this, int a2, int a3, int a4, unsigned int a5)
{
  bzero(v15, 0x14uLL);
  v16 = 290;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v10 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x14u, 0, a5);
  v11 = v10;
  if (a3 == 6914 && !v10)
  {
    if (*(this + 1167))
    {
      v12 = 0;
      while (1)
      {
        updated = H16ISP::H16ISPDevice::UpdateChannelConfigCache(this, v12);
        if (updated)
        {
          break;
        }

        if (++v12 >= *(this + 1167))
        {
          return 0;
        }
      }

      v11 = updated;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::WritePropertyValue();
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t H16ISP::H16ISPDevice::ReadPropertyValue(H16ISP::H16ISPDevice *this, int a2, int a3, unsigned int *a4, unsigned int a5)
{
  bzero(v11, 0x14uLL);
  v12 = 291;
  v13 = a2;
  v14 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x14u, 0, a5);
  if (!result)
  {
    *a4 = v15;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SendFirmwareObjectSpecialFunc(H16ISP::H16ISPDevice *this, int a2, const char **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 != 6)
  {
    return 3758097090;
  }

  bzero(v13, 0x40uLL);
  v14 = 5;
  strncpy(v16, a3[1], 0x20uLL);
  v5 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x40u, 1u, 0xFFFFFFFF);
  if (v5)
  {
    v6 = v5;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::SendFirmwareObjectSpecialFunc();
    }
  }

  else
  {
    v7 = v21;
    v8 = strtoul(a3[2], 0, 0);
    v9 = strtoul(a3[3], 0, 0);
    v10 = strtoul(a3[4], 0, 0);
    v11 = strtoul(a3[5], 0, 0);
    printf("Special function: name: %s, parameters %llu %llu %llu %llu\n", v16, v8, v9, v10, v11);
    bzero(v13, 0x38uLL);
    v14 = 28;
    v15 = 1;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x38u, 1u, 0xFFFFFFFF);
  }

  return v6;
}

uint64_t H16ISP::H16ISPDevice::SetBinningMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1293;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetFocusMode(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31734;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAFMatrixModeConfig(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int16 *a7)
{
  bzero(v15, 0x18uLL);
  v16 = -31732;
  v17 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v18;
    *a4 = v19;
    *a5 = v20;
    *a6 = v21;
    *a7 = v22;
  }

  return result;
}

float H16ISP::H16ISPDevice::GetLSCStrength(H16ISP::H16ISPDevice *this, int a2, float *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2637;
  v9 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF))
  {
    result = v10;
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::LTMUpdateSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 8194;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LTMUpdateResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 8195;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LTMStateSet(H16ISP::H16ISPDevice *this, int a2, int a3, __int16 a4)
{
  bzero(v9, 0x14uLL);
  v10 = 8201;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LTMHWConfigSet(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2633;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LSCIdealPercentSet(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2638;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::CLRProcGammaConfigSet(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2634;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LSCModulationSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x10uLL);
  v6 = 2610;
  v7 = a2;
  v8 = 1;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LSCModulationResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x10uLL);
  v6 = 2610;
  v7 = a2;
  v8 = 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTNRAlgorithm(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16103;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetOISPosition(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1856;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetOISPosition(H16ISP::H16ISPDevice *this, int a2, int *a3, int *a4, __int16 *a5, __int16 *a6)
{
  bzero(v14, 0x18uLL);
  v15 = 1857;
  v16 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v14, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v13 = v18;
    *a3 = v17;
    *a4 = v13;
    *a5 = v19;
    *a6 = v20;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetOISParams(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1858;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetOISMode(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1862;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetOISTemperature(H16ISP::H16ISPDevice *this, int a2, __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1860;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetOISStatus(H16ISP::H16ISPDevice *this, int a2, int *a3, __int16 *a4, __int16 *a5, __int16 *a6, __int16 *a7, __int16 *a8)
{
  bzero(v17, 0x1CuLL);
  v18 = 1861;
  v19 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v17, 0x1Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v20;
    *a4 = v21;
    *a5 = v22;
    *a6 = v23;
    *a7 = v24;
    *a8 = v25;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetOISContactStop(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1872;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableRawAverageMetadata(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16361;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableLocalHistogram(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16358;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetVISParams(H16ISP::H16ISPDevice *this, int a2, int a3, int a4, int a5, int a6)
{
  bzero(v13, 0x1CuLL);
  v14 = 18177;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DisableHardwareBlock(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32511;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableHardwareBlock(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32512;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetFlickerFrequencyHint(H16ISP::H16ISPDevice *this, int a2, double a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32238;
  v9 = a2;
  v10 = vcvtd_n_u64_f64(a3, 0x10uLL);
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetFlickerFrequency(H16ISP::H16ISPDevice *a1, uint64_t a2)
{
  bzero(v12, 0xD8uLL);
  v4 = 0;
  v13 = 20;
  v14 = v14 & 0x7FFF0000 | 0x80000000;
  v5 = *(a2 + 4);
  v15 = *a2;
  v16 = v5;
  v6 = vcvtd_n_s64_f64(*(a2 + 72), 0x10uLL);
  v7 = *(a2 + 104);
  v17 = *(a2 + 108);
  v20 = v6;
  v22 = v7;
  v21 = *(a2 + 80);
  v8 = 1;
  do
  {
    v9 = v8;
    v18[v4] = vcvtd_n_u64_f64(*(a2 + 8 + 8 * v4), 0x10uLL);
    *(&v18[2] + v4) = *(a2 + 24 + 8 * v4);
    *(&v18[3] + v4) = vcvtd_n_s64_f64(*(a2 + 40 + 8 * v4), 8uLL);
    v4 = 1;
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  v19 = vmovn_s64(vcvtq_n_s64_f64(*(a2 + 56), 0x10uLL));
  v10 = *(a2 + 132);
  v23 = *(a2 + 116);
  v24 = v10;
  v25 = *(a2 + 148);
  v26 = *(a2 + 164);
  v29 = *(a2 + 204);
  v30 = *(a2 + 220);
  v31[0] = *(a2 + 236);
  *(v31 + 14) = *(a2 + 250);
  v27 = *(a2 + 172);
  v28 = *(a2 + 188);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v12, 0xD8u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SuspendAEHdrRatioUpdate(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 570;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ResumeAEHdrRatioUpdate(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 571;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetHDRRatioManual(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15608;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableMotionCaptureControl(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 17920;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SendAccelerometerSampleToFirmware(H16ISP::H16ISPDevice *this, uint64_t a2, int a3, int a4, int a5)
{
  bzero(v11, 0x1CuLL);
  v12 = 17921;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SendDeviceImpactSamples(H16ISP::H16ISPDevice *a1, const void *a2, unsigned int a3)
{
  bzero(v7, 0xE8uLL);
  v8 = 1971;
  memcpy(&v10, a2, 20 * a3);
  v9 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0xE8u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableRowColSumStats(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16359;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetRowColSumWindow(H16ISP::H16ISPDevice *a1, int a2, uint64_t a3)
{
  bzero(v7, 0x14uLL);
  v8 = -16360;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEPanoMaxExpAdjustment(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 568;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAEPanoMaxExpAdjustment(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 569;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableHITH(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x14uLL);
  v14 = 8206;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableWSEG(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, __int16 a5, __int16 a6, int a7)
{
  bzero(v15, 0x18uLL);
  v16 = 8208;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableSemanticMasks(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5, char a6)
{
  bzero(v13, 0x10uLL);
  v14 = 2842;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableBand0Modulation(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16100;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::TNRSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -16108;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAWBMultiIlluminant(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31959;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableANSTThumbnail(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2848;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMaxCurrentTorch(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1560;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMaxCurrentFlashLight(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1562;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMaxCurrentPreFlash(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1558;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMaxCurrentMainFlash(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1559;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::OverrideTotalStrobeMaxCurrent(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1561;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTorchManualLevel(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v10, 0x10uLL);
  v11 = 1541;
  v12 = a2;
  v13 = a3;
  v6 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x10u, 0, 0xFFFFFFFF);
  H16ISP::H16ISPDevice::GetTorchCurrents(this, a2, &v9, &v8);
  return v6;
}

uint64_t H16ISP::H16ISPDevice::GetTorchCurrents(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  bzero(v16, 0x10uLL);
  *&v16[4] = 1543;
  *&v16[8] = a2;
  v8 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v16, 0x10u, 0, 0xFFFFFFFF);
  if (!v8)
  {
    if (*(this + 4640) == 1)
    {
      v9 = *(*(this + 9) + 72);
      if (v9)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN6H16ISP12H16ISPDevice16GetTorchCurrentsEjPtS1__block_invoke;
        block[3] = &__block_descriptor_tmp_121;
        block[4] = this;
        v15 = *v16;
        dispatch_async(v9, block);
      }
    }

    if (*(this + 4656) == 1)
    {
      v10 = *(*(this + 9) + 72);
      if (v10)
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 0x40000000;
        v12[2] = ___ZN6H16ISP12H16ISPDevice16GetTorchCurrentsEjPtS1__block_invoke_2;
        v12[3] = &__block_descriptor_tmp_122;
        v12[4] = this;
        v13 = *v16;
        dispatch_async(v10, v12);
      }
    }

    *a3 = *&v16[12];
    *a4 = *&v16[14];
  }

  return v8;
}

uint64_t H16ISP::H16ISPDevice::SetTorchColorMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v12, 0x10uLL);
  v13 = 1542;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v8 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v12, 0x10u, 0, 0xFFFFFFFF);
  H16ISP::H16ISPDevice::GetTorchCurrents(this, a2, &v11, &v10);
  return v8;
}

uint64_t H16ISP::H16ISPDevice::SetIndividualTorchLEDLevels(H16ISP::H16ISPDevice *this, int a2, unsigned int a3)
{
  bzero(v14, 0x10uLL);
  v15 = 1554;
  v16 = a2;
  v17 = a3;
  v6 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v14, 0x10u, 0, 0xFFFFFFFF);
  if (!v6 && *(this + 4624) == 1)
  {
    v7 = *(*(this + 9) + 72);
    if (v7)
    {
      v8 = HIBYTE(a3) + a3 + BYTE1(a3) + BYTE2(a3);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN6H16ISP12H16ISPDevice27SetIndividualTorchLEDLevelsEjj_block_invoke;
      block[3] = &__block_descriptor_tmp_119;
      if (v8 >= 0xFF)
      {
        LOWORD(v8) = 255;
      }

      block[4] = this;
      v13 = v8;
      dispatch_async(v7, block);
    }
  }

  H16ISP::H16ISPDevice::GetTorchCurrents(this, a2, &v11, &v10);
  return v6;
}

uint64_t ___ZN6H16ISP12H16ISPDevice27SetIndividualTorchLEDLevelsEjj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 4628), *(a1 + 40));
  v2 = *(v1 + 4616);

  return notify_post(v2);
}

uint64_t H16ISP::H16ISPDevice::SetSegmentTorchLEDLevels(H16ISP::H16ISPDevice *this, int a2, int a3, __int16 a4, unsigned int a5, unsigned __int16 *a6, const unint64_t *a7)
{
  bzero(v16, 0x6CuLL);
  v17 = 1579;
  v18 = a2;
  result = H16ISP::H16ISPDevice::PackTorchSegments(v14, a3, a4, a5, a6, a7, &v19);
  if (!result)
  {
    return H16ISP::H16ISPDevice::ISP_SendCommand(this, v16, 0x6Cu, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::PackTorchSegments(uint64_t a1, int a2, __int16 a3, unsigned int a4, unsigned __int16 *a5, uint64_t a6, uint64_t a7)
{
  result = 3758097090;
  if (!a7)
  {
    return result;
  }

  *(a7 + 64) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 32) = 0u;
  *(a7 + 48) = 0u;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *a7 = a2;
  if (!a2)
  {
    if (a4 > 8 || !a5 || !a6)
    {
      return result;
    }

    *(a7 + 2) = a4;
    if (a4)
    {
      v9 = 0;
      v10 = a7 + 24;
      do
      {
        v11 = a5[v9];
        if (v11 >= 0xFF)
        {
          LOWORD(v11) = 255;
        }

        *(v10 + 2 * v9 - 20) = v11;
        *(v10 + 8 * v9) = *(a6 + 8 * v9);
        ++v9;
      }

      while (a4 != v9);
    }

    return 0;
  }

  if (a2 != 170)
  {
    return 3758097122;
  }

  *(a7 + 2) = a3;
  if (!a5)
  {
    return 0;
  }

  result = 0;
  v8 = *a5;
  if (v8 >= 0xFF)
  {
    LOWORD(v8) = 255;
  }

  *(a7 + 4) = v8;
  return result;
}

uint64_t H16ISP::H16ISPDevice::SetTorchBeamWidth(H16ISP::H16ISPDevice *this, __int16 a2, float a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1584;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetScalerCrop(H16ISP::H16ISPDevice *a1, int a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = HIDWORD(a3);
  v9 = HIDWORD(a4);
  bzero(v11, 0x1CuLL);
  v12 = 2058;
  v13 = a2;
  v14 = v5;
  v15 = v8;
  v16 = v4;
  v17 = v9;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v11, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 565;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetPanoAELimits(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 567;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEBracketingMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3, int a4)
{
  bzero(v9, 0x18uLL);
  v10 = 564;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableStaticLUTForLTM(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 8198;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

__n128 H16ISP::H16ISPDevice::GetDistortionInfo(H16ISP::H16ISPDevice *a1, int a2, int a3, uint64_t a4)
{
  bzero(v14, 0xDCuLL);
  v15 = 28673;
  v16 = a2;
  v17 = a3;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v14, 0xDCu, 0, 0xFFFFFFFF))
  {
    v9 = *v29;
    *(a4 + 160) = v28;
    *(a4 + 176) = v9;
    *(a4 + 188) = *&v29[12];
    v10 = v25;
    *(a4 + 96) = v24;
    *(a4 + 112) = v10;
    v11 = v27;
    *(a4 + 128) = v26;
    *(a4 + 144) = v11;
    v12 = v21;
    *(a4 + 32) = v20;
    *(a4 + 48) = v12;
    v13 = v23;
    *(a4 + 64) = v22;
    *(a4 + 80) = v13;
    result = v19;
    *a4 = v18;
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::StartHighlightRecovery(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 4096;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StopHighlightRecovery(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 4097;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StartLocalToneMapping(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 0x2000;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::StopLocalToneMapping(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 8193;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableTorch(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v13, 0x10uLL);
  v14 = 1539;
  v15 = a2;
  v16 = a3;
  v6 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x10u, 0, 0xFFFFFFFF);
  if (!v6 && *(this + 4624) == 1)
  {
    v7 = *(*(this + 9) + 72);
    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN6H16ISP12H16ISPDevice11EnableTorchEjt_block_invoke;
      block[3] = &__block_descriptor_tmp_120;
      block[4] = this;
      v12 = a3;
      dispatch_async(v7, block);
    }
  }

  H16ISP::H16ISPDevice::GetTorchCurrents(this, a2, &v10, &v9);
  return v6;
}

uint64_t ___ZN6H16ISP12H16ISPDevice11EnableTorchEjt_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 4628), *(a1 + 40));
  v2 = *(v1 + 4616);

  return notify_post(v2);
}

uint64_t ___ZN6H16ISP12H16ISPDevice16GetTorchCurrentsEjPtS1__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 4644), *(a1 + 52));
  v2 = *(v1 + 4632);

  return notify_post(v2);
}

uint64_t ___ZN6H16ISP12H16ISPDevice16GetTorchCurrentsEjPtS1__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 4660), *(a1 + 54));
  v2 = *(v1 + 4648);

  return notify_post(v2);
}

uint64_t H16ISP::H16ISPDevice::DisableTorch(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v10, 0xCuLL);
  v11 = 1538;
  v12 = a2;
  v4 = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0xCu, 0, 0xFFFFFFFF);
  if (!v4 && *(this + 4624) == 1)
  {
    v5 = *(*(this + 9) + 72);
    if (v5)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZN6H16ISP12H16ISPDevice12DisableTorchEj_block_invoke;
      block[3] = &__block_descriptor_tmp_123;
      block[4] = this;
      dispatch_async(v5, block);
    }
  }

  H16ISP::H16ISPDevice::GetTorchCurrents(this, a2, &v8, &v7);
  return v4;
}

uint64_t ___ZN6H16ISP12H16ISPDevice12DisableTorchEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  notify_set_state(*(v1 + 4628), 0);
  v2 = *(v1 + 4616);

  return notify_post(v2);
}

uint64_t H16ISP::H16ISPDevice::SetManualFocusPosition(H16ISP::H16ISPDevice *this, int a2, char a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1794;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableKnobManualMode(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2579;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetSharpness(H16ISP::H16ISPDevice *a1, int a2, int a3, _BYTE *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2579;
  v11 = a2;
  v12 = 1;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    bzero(v9, 0x14uLL);
    v10 = 2570;
    v11 = a2;
    v12 = a3;
    result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
    if (!result)
    {
      *a4 = v13;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetLCEStrength(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, _BYTE *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 2625;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetRNFStrength(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, _BYTE *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 2622;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetChromaSupression(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5)
{
  bzero(v11, 0x10uLL);
  v12 = 2579;
  v13 = a2;
  v14 = 2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    bzero(v11, 0x10uLL);
    v12 = 2573;
    v13 = a2;
    LOBYTE(v14) = a3;
    BYTE1(v14) = a4;
    BYTE2(v14) = a5;
    return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x10u, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableBPC(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  if (a3)
  {
    bzero(v7, 0xCuLL);
    v5 = 2050;
  }

  else
  {
    bzero(v7, 0xCuLL);
    v5 = 2051;
  }

  v8 = v5;
  v9 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEIntegrationTime(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 527;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEIntegrationTimeAndGains(H16ISP::H16ISPDevice *this, int a2, int a3, __int16 a4, __int16 a5, __int16 a6, int a7, int a8, unsigned int a9, unsigned __int16 a10, unsigned __int16 a11, unsigned __int16 a12)
{
  bzero(v21, 0x2CuLL);
  v22 = 572;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v31 = a10;
  v32 = a11;
  v33 = a12;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v21, 0x2Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetHDRRatioClipScoreIIRStrength(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15610;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetHDRRatioHightLightClipDetectSensitivity(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15609;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetOISActuator(H16ISP::H16ISPDevice *this, int a2, __int16 *a3, __int16 *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1871;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetOISActuator(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1866;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableFocusPixels(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31728;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableContinuousFocus(H16ISP::H16ISPDevice *this, int a2, char a3, char a4)
{
  bzero(v9, 0x10uLL);
  v10 = -31729;
  v11 = a2;
  v13 = a4;
  v12 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableFocusDACLimiting(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1800;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWBManualGain(H16ISP::H16ISPDevice *this, int a2, int a3, int a4, int a5, int a6)
{
  bzero(v13, 0x1CuLL);
  v14 = 786;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetSyncZoomFactorLimits(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2067;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetCurrentZoomFactor(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2065;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

double H16ISP::H16ISPDevice::GetAEParams(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, double *a8)
{
  bzero(v20, 0x24uLL);
  v21 = 530;
  v22 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(this, v20, 0x24u, 0, 0xFFFFFFFF))
  {
    v17 = v24;
    *a3 = v23;
    *a4 = v17;
    v18 = v26;
    *a5 = v25;
    *a6 = v18;
    v19 = v28;
    *a7 = v27;
    result = vcvtd_n_f64_u32(v19, 0x10uLL);
    *a8 = result;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetZoomFactor(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2064;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTargetToHostFrameDeliveryCadenceInMicroSeconds(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 13;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::TimeMachineCapture(H16ISP::H16ISPDevice *a1, int a2, __int16 a3, __int16 a4, uint64_t a5, __int16 a6, __int128 *a7)
{
  bzero(v16, 0x30uLL);
  v17 = 298;
  v18 = a2;
  v20 = a3;
  v19 = a4;
  v22 = a5;
  if (a5)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v21 = v14;
  v23 = a6;
  if (a7)
  {
    v24 = *a7;
  }

  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v16, 0x30u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DPCStart(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15091;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DPCStop(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15090;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEAGC(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 514;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetManualCCT(H16ISP::H16ISPDevice *this, int a2, unsigned int a3, int a4, int a5)
{
  bzero(v10, 0x14uLL);
  v11 = 773;
  v12 = a2;
  v13 = a4;
  v14 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetCombinedAFWindow(H16ISP::H16ISPDevice *a1, int a2, __int16 a3, __int16 a4, unsigned int a5, void *__src, const void *a7, __int16 a8)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17 = 0u;
  v12 = 0x841B00000000;
  memset(v16, 0, sizeof(v16));
  v13 = a2;
  v14 = a3;
  v15 = a4;
  LOWORD(v17) = a5;
  v10 = a5;
  v19 = a8;
  memcpy(v16, __src, 8 * a5);
  memcpy(&v17 + 2, a7, v10);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, &v12, 0xA4u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFWindow(H16ISP::H16ISPDevice *this, int a2, int a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  bzero(v15, 0x18uLL);
  v16 = -31743;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFWindowWeights(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(v7, 0x1CuLL);
  v8 = -31741;
  v9 = a2;
  v10 = *a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEWindow(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x18uLL);
  v14 = -32256;
  v15 = a2;
  v16 = 0;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamAEWindowParams(H16ISP::H16ISPDevice *a1, unsigned int a2, const void *a3)
{
  bzero(v7, 0x70uLL);
  v8 = -32237;
  v9 = a2;
  memcpy(&v10, a3, 16 * a2);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x70u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamROIForCameraControls(H16ISP::H16ISPDevice *a1, unsigned int a2, const void *a3)
{
  bzero(v7, 0x58uLL);
  v8 = 2073;
  v9 = a2;
  memcpy(&v10, a3, 12 * a2);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x58u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMultiCamLumaHistogramROI(H16ISP::H16ISPDevice *a1, unsigned int a2, const void *a3)
{
  bzero(v7, 0x70uLL);
  v8 = 2074;
  v9 = a2;
  memcpy(&v10, a3, 16 * a2);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x70u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWBWindow(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x18uLL);
  v14 = -31997;
  v15 = a2;
  v16 = 1;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAFPeakPrediction(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31739;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetISPDGain(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 544;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetSensorDGain(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 543;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetMaxIntegrationTime(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 525;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetMinIntegrationTime(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 554;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetMinimumGainCap(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 558;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEMaxGainCapWithExposureUpdate(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 560;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEGainCapOffExposureUpdate(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 562;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWB1stGainManual(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  bzero(v15, 0x18uLL);
  v16 = 785;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetMinimumGainCap(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 557;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  *a3 = v10;
  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAEMaxGainCapWithExposureUpdate(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 559;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  *a3 = v10;
  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAEGainCapOffExposureUpdate(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 561;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  *a3 = v10;
  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAEOutlierClipCount(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 518;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEConvergenceSpeed(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 536;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSDistance(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1922;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSDistance(H16ISP::H16ISPDevice *this, int a2, int *a3, int *a4)
{
  bzero(v10, 0x14uLL);
  v11 = 1923;
  v12 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v9 = v14;
    *a3 = v13;
    *a4 = v9;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSPosition(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1920;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetLumaHistogramROI(H16ISP::H16ISPDevice *a1, int a2, char a3, uint64_t a4)
{
  bzero(v9, 0x18uLL);
  v10 = 2072;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSPosition(H16ISP::H16ISPDevice *this, int a2, int *a3, int *a4, __int16 *a5, __int16 *a6, int *a7, int *a8, int *a9, int *a10, int *a11, int *a12, int *a13, int *a14, int *a15, int *a16)
{
  bzero(v31, 0x40uLL);
  v32 = 1921;
  v33 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v31, 0x40u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v25 = v35;
    *a3 = v34;
    *a4 = v25;
    *a5 = v36;
    *a6 = v37;
    v26 = v39;
    *a7 = v38;
    *a8 = v26;
    v27 = v41;
    *a9 = v40;
    *a10 = v27;
    v28 = v43;
    *a11 = v42;
    *a12 = v28;
    v29 = v45;
    *a13 = v44;
    *a14 = v29;
    v30 = v47;
    *a15 = v46;
    *a16 = v30;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAPSMode(H16ISP::H16ISPDevice *a1, int a2, _DWORD *a3)
{
  bzero(v7, 0x10uLL);
  v9 = a2;
  v8 = 1925;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSClampingMode(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1937;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSClampingMode(H16ISP::H16ISPDevice *this, int a2, int *a3)
{
  bzero(v7, 0x10uLL);
  v9 = a2;
  v8 = 1938;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSBeta(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v11 = a2;
  v10 = 1926;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSFocusOffset(H16ISP::H16ISPDevice *this, int a2, int a3, char a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1927;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSSearchRange(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1932;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetDynamicVoltageLevel(H16ISP::H16ISPDevice *this, int a2, char a3, float a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1666;
  v11 = a2;
  v13 = a3;
  v12 = vcvts_n_s32_f32(a4, 8uLL);
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetLPDPEqualization(H16ISP::H16ISPDevice *this, int a2, __int16 a3, int a4, int a5, int a6, int a7, int a8, unsigned int a9, unsigned int a10, unsigned __int16 a11)
{
  bzero(v20, 0x34uLL);
  v21 = 332;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  v27 = a7;
  v31 = a9;
  v32 = a10;
  v28 = a8;
  v29 = 0;
  v30 = a11;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v20, 0x34u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSRawOffset(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7, int a8, int a9)
{
  bzero(v18, 0x20uLL);
  v20 = a2;
  v19 = 1930;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v18, 0x20u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSEFL(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1928;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetVAActuator(H16ISP::H16ISPDevice *this, int a2, __int16 *a3)
{
  if (!a3)
  {
    return 3758097090;
  }

  bzero(v7, 0x10uLL);
  v8 = 1988;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetVAActuator(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1989;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

float H16ISP::H16ISPDevice::GetVADiameter(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3, unsigned int *a4, __int16 *a5, __int16 *a6, float *a7, float *a8, float *a9)
{
  if (a3 && a4 && a5 && a6 && a7 && a8 && a9)
  {
    bzero(v20, 0x24uLL);
    v21 = 1986;
    v22 = a2;
    if (!H16ISP::H16ISPDevice::ISP_SendCommand(this, v20, 0x24u, 0, 0xFFFFFFFF))
    {
      v18 = v24;
      *a3 = v23;
      *a4 = v18;
      *a5 = v25;
      *a6 = v26;
      v19 = v28;
      *a7 = v27;
      *a8 = v19;
      result = v29;
      *a9 = v29;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetVADiameter(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1987;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetVAMode(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  if (!a3)
  {
    return 3758097090;
  }

  bzero(v7, 0x10uLL);
  v8 = 1984;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetVAMode(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1985;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSActuator(H16ISP::H16ISPDevice *this, int a2, __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1960;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSActuator(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1929;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAPSDelta(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1933;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAPSDeltaEnabled(H16ISP::H16ISPDevice *this, __int16 a2, BOOL *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1934;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableAPSModeSwitch(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1951;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAPSOffsetCalculation(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1952;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSOffsetCorrectionScheme(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1959;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableDACClamp(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1954;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAPSManualOffset(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1955;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAFRingingControl(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1806;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAFRingingControl(H16ISP::H16ISPDevice *this, __int16 a2, BOOL *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1807;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10 != 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableVibeMitigation(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1969;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAEStageDetect(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 598;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAEStageDetect(H16ISP::H16ISPDevice *this, __int16 a2, BOOL *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 599;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10 != 0;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetOISEndStopParams(H16ISP::H16ISPDevice *this, int a2, float64_t a3, float64_t a4, float64_t a5, float64_t a6)
{
  bzero(v15, 0x1CuLL);
  v17 = a2;
  v16 = 1873;
  v8.f64[0] = a4;
  v8.f64[1] = a3;
  v9.f64[0] = a6;
  v9.f64[1] = a5;
  v18 = vuzp1q_s32(vcvtq_n_s64_f64(v8, 8uLL), vcvtq_n_s64_f64(v9, 8uLL));
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetOISIdentificationCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, __int128 *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x50uLL);
  v10 = 1942;
  v11 = a2;
  v6 = *a3;
  v13 = a3[1];
  v7 = a3[3];
  v14 = a3[2];
  v15 = v7;
  v16 = *(a3 + 16);
  v12 = v6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x50u, 0, 0xFFFFFFFF);
}

__n128 H16ISP::H16ISPDevice::RunOISIdentificationCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x50uLL);
  v9 = 1941;
  v10 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x50u, 0, 3u))
  {
    result = v12;
    v7 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v7;
    *(a3 + 64) = v15;
    *a3 = v11;
    *(a3 + 16) = result;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetOISEndStopCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, __int128 *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x48uLL);
  v9 = 1948;
  v10 = a2;
  v6 = a3[1];
  v11 = *a3;
  v12 = v6;
  *v13 = a3[2];
  *&v13[12] = *(a3 + 44);
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x48u, 0, 0xFFFFFFFF);
}

double H16ISP::H16ISPDevice::RunOISEndStopCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, _OWORD *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(v8, 0x48uLL);
  v9 = 1947;
  v10 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v8, 0x48u, 0, 3u))
  {
    v7 = v12;
    *a3 = v11;
    a3[1] = v7;
    a3[2] = *v13;
    result = *&v13[12];
    *(a3 + 44) = *&v13[12];
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAFIdentificationCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, __int128 *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x4CuLL);
  v10 = 1944;
  v11 = a2;
  v6 = a3[1];
  v12 = *a3;
  v13 = v6;
  v7 = a3[3];
  v14 = a3[2];
  v15 = v7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x4Cu, 0, 0xFFFFFFFF);
}

double H16ISP::H16ISPDevice::RunAFIdentificationCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, _OWORD *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x4CuLL);
  v10 = 1943;
  v11 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x4Cu, 0, 3u))
  {
    v7 = v13;
    *a3 = v12;
    a3[1] = v7;
    result = *&v14;
    v8 = v15;
    a3[2] = v14;
    a3[3] = v8;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAPSOISInteractionCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, __int128 *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x60uLL);
  v6 = a3[3];
  v14 = a3[2];
  v15 = v6;
  v16 = a3[4];
  v7 = a3[1];
  v12 = *a3;
  v10 = 1946;
  v11 = a2;
  v17 = *(a3 + 20);
  v13 = v7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x60u, 0, 0xFFFFFFFF);
}

double H16ISP::H16ISPDevice::RunAPSOISInteractionCalibration(H16ISP::H16ISPDevice *a1, __int16 a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  bzero(v9, 0x60uLL);
  v10 = 1945;
  v11 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x60u, 0, 3u))
  {
    v7 = v15;
    *(a3 + 32) = v14;
    *(a3 + 48) = v7;
    *(a3 + 64) = v16;
    *(a3 + 80) = v17;
    result = *&v12;
    v8 = v13;
    *a3 = v12;
    *(a3 + 16) = v8;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetCNRLevel(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2605;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetCNRLevel(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2606;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetNoiseReductionLevel(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2571;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetNoiseReductionLevel(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2572;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetDynamicVoltageEnable(H16ISP::H16ISPDevice *this, unsigned __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1664;
  v9 = v9 & 0x7FFF0000 | a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetProResSharpeningTuning(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2841;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetIrRgbStereo(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 31;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetPrimaryFrameSkippingRatio(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 367;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMasterSlaveAPSFocus(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31722;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMasterSlaveContrastFocus(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31721;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetFocusSlavePos(H16ISP::H16ISPDevice *this, int a2, int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31720;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetFocusSlaveDistance(H16ISP::H16ISPDevice *this, int a2, int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31719;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAFEarlyOutParams(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5, char a6)
{
  bzero(v13, 0x10uLL);
  v14 = 1027;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetScalerSharpening(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2567;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetCurrentCCT(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 772;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetManualCCTRange(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3, unsigned int *a4)
{
  bzero(v10, 0x14uLL);
  v11 = 787;
  v12 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v9 = v14;
    *a3 = v13;
    *a4 = v9;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetColorCalibrationData(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2052;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetExposureBias(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 515;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAEStable(H16ISP::H16ISPDevice *this, __int16 a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 595;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetAWBStable(H16ISP::H16ISPDevice *this, __int16 a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31965;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetSensorCustomSettings(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int a3, unsigned __int16 *a4, unsigned __int8 *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(this + 1167);
  result = 3758097090;
  if (v6 > a2 && a3 <= 0x40)
  {
    bzero(v13, 0xD0uLL);
    v14 = 1285;
    v15 = a2;
    v16 = a3;
    if (a3)
    {
      v12 = 0;
      do
      {
        v17[v12] = a4[v12];
        *(&v17[64] + v12) = a5[v12];
        ++v12;
      }

      while (a3 != v12);
    }

    return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0xD0u, 0, 0xFFFFFFFF);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetAFLimits(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1792;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAFLimits(H16ISP::H16ISPDevice *this, int a2, __int16 *a3, __int16 *a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1793;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetPreflashParams(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5, char a6)
{
  bzero(v13, 0x10uLL);
  v14 = 549;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWBFlashGain(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5)
{
  bzero(v11, 0x14uLL);
  v12 = 782;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableFullResLSC(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 2577;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DisableFullResLSC(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 2578;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAETarget(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 548;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAETarget(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 547;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ProcessRawStart(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 265;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ProcessRawStop(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 266;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAWBScheme(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31995;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAWBScheme(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31994;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetCurrentFocusPosition(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1795;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetCurrentFocusDacPosition(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1801;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

void H16ISP::H16ISPDevice::GetPoolInfo(H16ISP::H16ISPDevice *a1, int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  H16ISP::H16ISPDevice::GetPoolInfoExtended(a1, a2, a3, &v8);
  if (!v7)
  {
    if (a4)
    {
      *a4 = WORD1(v8);
    }

    if (a5)
    {
      *a5 = DWORD2(v8);
    }
  }
}

uint64_t H16ISP::H16ISPDevice::GetMaxResolutionSensorConfigIndex(H16ISP::H16ISPDevice *this, uint64_t a2, unsigned __int16 *a3)
{
  v3 = 3758097084;
  if (*(this + 4))
  {
    if (*(this + 1167) >= a2)
    {
      v4 = (*(this + 5) + 432 * a2);
      v5 = *v4;
      if (v5)
      {
        v6 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (*(v4 + 1) + 6);
        do
        {
          if (*(v10 - 1) >= v9 && *v10 >= v8)
          {
            *a3 = v6;
            v9 = *(v10 - 1);
            v8 = *v10;
            v7 = 1;
          }

          ++v6;
          v10 += 106;
        }

        while (v5 != v6);
        if (v7)
        {
          return 0;
        }

        else
        {
          return 3758097084;
        }
      }
    }

    else
    {
      return 3758097090;
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v3 = 3758097112;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetMaxResolutionSensorConfigIndex();
    }
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::SetStatsFEThumbnailMaskConfig(H16ISP::H16ISPDevice *this, int a2, char a3, char a4, char a5, char a6, unsigned __int16 *a7)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v18 = v7;
  v19 = v8;
  v10 = 0xC01E00000000;
  v17 = 0;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = *a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v10, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableStatsFEThumbnailMask(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 a3)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v9 = v3;
  v10 = v4;
  v6 = 0xC01D00000000;
  v7 = a2;
  v8 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v6, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableDesGenFlow2Features(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v9 = v3;
  v10 = v4;
  v6 = 0x380000000000;
  v7 = a2;
  v8 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v6, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAWBMultiStatisticsAveraging(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 a3)
{
  if (*(this + 1167) < a2)
  {
    return 3758097090;
  }

  v9 = v3;
  v10 = v4;
  v6 = 0x340D00000000;
  v7 = a2;
  v8 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v6, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetMLVNRConfiguration(H16ISP::H16ISPDevice *a1, unsigned __int16 a2, int a3, int a4, int a5, int a6, int a7, unsigned __int8 a8)
{
  if (a2 > *(a1 + 1167))
  {
    return 3758097090;
  }

  v19 = v8;
  v20 = v9;
  v11 = 0xC11F00000000;
  v17 = a7;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v18 = a8;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, &v11, 0x24u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetCommonBufferPool(H16ISP::H16ISPDevice *this, int a2, char a3, __int16 a4, unsigned __int8 *a5, size_t a6)
{
  *&v18[53] = *MEMORY[0x277D85DE8];
  bzero(v13, 0x44uLL);
  v14 = 363;
  v15 = a2;
  v17 = a3;
  v16 = a4;
  memcpy(v18, a5, a6);
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x44u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetRegistrationPriority(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -16098;
  v9 = a2;
  v10 = a3 != 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DCS_FPGACtrl(H16ISP::H16ISPDevice *this, char a2, char a3)
{
  bzero(v7, 0xCuLL);
  v8 = -24572;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DCS_FPGAStatusQuery(H16ISP::H16ISPDevice *a1, _OWORD *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  bzero(v5, 0x1CuLL);
  *&v5[4] = -24573;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v5, 0x1Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a2 = *v5;
    *(a2 + 12) = *&v5[12];
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::DCS_FPGASyncOffsetCtrl(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -24569;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DCS_FPGASyncCtrl(H16ISP::H16ISPDevice *this, int a2, char a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = -24570;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetDCSIMUDataRate(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -24567;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetDCSNonVisionProperty(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x1CuLL);
  v10 = -24566;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetHistogramWindow(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x14uLL);
  v14 = 2587;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFFocusPosOverride(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31738;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAEMaxFrameRateGainLimit(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32247;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetAEMaxFrameRateGainLimit(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32246;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  *a3 = v10;
  return result;
}

uint64_t H16ISP::H16ISPDevice::BinningCompensationStart(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15872;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::BinningCompensationStop(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15871;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DRCStart(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 3072;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SNFStart(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15360;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SNFStop(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = -15359;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetSNFParams(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15358;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetSNFParams(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15357;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::OverrideAbsoluteColorCal(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6, char a7)
{
  bzero(v15, 0x18uLL);
  v16 = 2057;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetLuxTableMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 2583;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::AEUpdateSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 550;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::AEUpdateResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 551;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ALSSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 2603;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ALSResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 2604;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ALSFastMode(H16ISP::H16ISPDevice *this, unsigned __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2627;
  v9 = a2;
  v10 = a3 != 0;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::BLCSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 1289;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::BLCResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 1290;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::TestPatternConfig(H16ISP::H16ISPDevice *this, unsigned int a2, __int16 a3, CFTypeRef cf)
{
  LOWORD(v5) = a3;
  valuePtr = 0;
  v8 = 3758097090;
  v9 = CFGetTypeID(cf);
  if (v9 != CFStringGetTypeID())
  {
    v11 = CFGetTypeID(cf);
    if (v11 == CFNumberGetTypeID())
    {
      CFNumberGetValue(cf, kCFNumberSInt16Type, &valuePtr);
      v12 = valuePtr;
LABEL_74:
      bzero(v29, 0x10uLL);
      v30 = 1283;
      v31 = a2;
      v32 = v5;
      v33 = v12;
      return H16ISP::H16ISPDevice::ISP_SendCommand(this, v29, 0x10u, 0, 0xFFFFFFFF);
    }

    return v8;
  }

  v5 = 0;
  for (i = &off_27D6F2458; !CFEqual(cf, *i); i += 2)
  {
    if (++v5 == 25)
    {
      return v8;
    }
  }

  v12 = v5;
  if (!v5)
  {
    goto LABEL_74;
  }

  if (v5 == 25)
  {
    return v8;
  }

  v13 = *(*(this + 5) + 432 * a2 + 64);
  if (v13 <= 1905)
  {
    if (v13 > 1393)
    {
      if ((v13 - 1539) > 0x30 || ((1 << (v13 - 3)) & 0x1000000030001) == 0)
      {
        v22 = (v13 - 1795) > 0x11 || ((1 << (v13 - 3)) & 0x30001) == 0;
        if (v22 && (v13 - 1394) >= 2)
        {
          goto LABEL_72;
        }
      }
    }

    else if (((v13 - 835) > 0x2F || ((1 << (v13 - 67)) & 0x8000000A0001) == 0) && ((v13 - 1027) > 0x11 || ((1 << (v13 - 3)) & 0x20005) == 0))
    {
      v16 = v13 - 1283;
      v17 = v16 > 0x11;
      v18 = (1 << v16) & 0x20005;
      if (v17 || v18 == 0)
      {
        goto LABEL_72;
      }
    }

    goto LABEL_69;
  }

  if (v13 <= 2387)
  {
    if (v13 <= 2130)
    {
      if (v13 != 1906 && v13 != 2051 && v13 != 2068)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v20 = (v13 - 2307) > 0x20 || ((1 << (v13 - 3)) & 0x100030007) == 0;
      if (v20 && v13 != 2131)
      {
        goto LABEL_72;
      }
    }

    goto LABEL_69;
  }

  if (v13 <= 3413)
  {
    v23 = v13 - 2388;
    v17 = v23 > 0x2E;
    v24 = (1 << v23) & 0x4000C0000011;
    if (v17 || v24 == 0)
    {
      goto LABEL_72;
    }

LABEL_69:
    v26 = &H16ISP::sensorIMX343TestPatternIndex;
    goto LABEL_70;
  }

  v26 = &H16ISP::sensorVD56G0TestPatternIndex;
  if (v13 > 20587)
  {
    if (v13 == 20588)
    {
      goto LABEL_70;
    }

    if (v13 != 21301)
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  if (v13 != 3414 && v13 != 20584)
  {
    goto LABEL_72;
  }

LABEL_70:
  valuePtr = v26[v5];
  v12 = valuePtr;
  if (valuePtr != 255)
  {
LABEL_73:
    LOWORD(v5) = 1;
    goto LABEL_74;
  }

  if (CFEqual(cf, @"TestPatternPN9"))
  {
LABEL_72:
    v12 = 5;
    valuePtr = 5;
    goto LABEL_73;
  }

  return v8;
}

uint64_t H16ISP::H16ISPDevice::GetSupportedTestPatterns(H16ISP::H16ISPDevice *this, unsigned int a2, CFMutableArrayRef theArray)
{
  result = 3758097090;
  if (!theArray)
  {
    return result;
  }

  v6 = *(*(this + 5) + 432 * a2 + 64);
  if (v6 <= 1905)
  {
    if (v6 > 1393)
    {
      if ((v6 - 1539) > 0x30 || ((1 << (v6 - 3)) & 0x1000000030001) == 0)
      {
        v15 = (v6 - 1795) > 0x11 || ((1 << (v6 - 3)) & 0x30001) == 0;
        if (v15 && (v6 - 1394) >= 2)
        {
          return result;
        }
      }
    }

    else if (((v6 - 835) > 0x2F || ((1 << (v6 - 67)) & 0x8000000A0001) == 0) && ((v6 - 1027) > 0x11 || ((1 << (v6 - 3)) & 0x20005) == 0))
    {
      v9 = v6 - 1283;
      v10 = v9 > 0x11;
      v11 = (1 << v9) & 0x20005;
      if (v10 || v11 == 0)
      {
        return result;
      }
    }

    goto LABEL_60;
  }

  if (v6 <= 2387)
  {
    if (v6 <= 2130)
    {
      if (v6 != 1906 && v6 != 2051 && v6 != 2068)
      {
        return result;
      }
    }

    else
    {
      v13 = (v6 - 2307) > 0x20 || ((1 << (v6 - 3)) & 0x100030007) == 0;
      if (v13 && v6 != 2131)
      {
        return result;
      }
    }

    goto LABEL_60;
  }

  if (v6 <= 3413)
  {
    v16 = v6 - 2388;
    v10 = v16 > 0x2E;
    v17 = (1 << v16) & 0x4000C0000011;
    if (v10 || v17 == 0)
    {
      return result;
    }

    goto LABEL_60;
  }

  v19 = &H16ISP::sensorVD56G0TestPatternIndex;
  if (v6 <= 20587)
  {
    if (v6 != 3414 && v6 != 20584)
    {
      return result;
    }

    goto LABEL_61;
  }

  if (v6 != 20588)
  {
    if (v6 != 21301)
    {
      return result;
    }

LABEL_60:
    v19 = &H16ISP::sensorIMX343TestPatternIndex;
  }

LABEL_61:
  for (i = 0; i != 50; i += 2)
  {
    if (*&v19[i] != 255)
    {
      CFArrayAppendValue(theArray, *(&H16ISP::sensorTestPatterns + i + 1));
    }
  }

  return 0;
}

uint64_t H16ISP::H16ISPDevice::DisableALS(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 2589;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetBinningGainLuxThresholds(H16ISP::H16ISPDevice *this, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = -32244;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFSoftLanding(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, int a5, int a6)
{
  bzero(v13, 0x18uLL);
  v14 = 1036;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFWindowFDConfig(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = -31740;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetAFWindowFloatConfig(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = -31726;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableAEGainConvergenceNormalization(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -32241;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableLTMHLGGammaCurve(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 8200;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::AWBUpdateSuspend(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 783;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::AWBUpdateResume(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 784;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LuxAdaptiveSettingSuspend(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2596;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::LuxAdaptiveSettingResume(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2597;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableContextSwitchingWithType(H16ISP::H16ISPDevice *a1, int a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = -32510;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetSensorNoiseModelForSensorMode(H16ISP::H16ISPDevice *a1, int a2, int a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  bzero(v17, 0x20uLL);
  v18 = -32507;
  v19 = a2;
  v20 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v17, 0x20u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v15 = v22;
    *a4 = v21;
    *a5 = v15;
    v16 = v24;
    *a6 = v23;
    *a7 = v16;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetIdealColorCal(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int8 *a7)
{
  bzero(v15, 0x18uLL);
  v16 = 2055;
  v17 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v18;
    *a4 = v19;
    *a5 = v20;
    *a6 = v21;
    *a7 = v22;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetIdealColorCal(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x14uLL);
  v14 = 2054;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetMSAERatio(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3, unsigned __int8 *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 606;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v12;
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetMultiABSColorCal(H16ISP::H16ISPDevice *this, int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6, unsigned __int8 *a7)
{
  bzero(v15, 0x18uLL);
  v16 = 2071;
  v17 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v18;
    *a4 = v19;
    *a5 = v20;
    *a6 = v21;
    *a7 = v22;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetFrameCount(H16ISP::H16ISPDevice *this, int a2, int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1311;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetISOParamsForSensorMode(H16ISP::H16ISPDevice *a1, int a2, int a3, void *a4)
{
  bzero(v9, 0x18uLL);
  v10 = 285;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetMIPIFrequency(H16ISP::H16ISPDevice *this, int a2, int a3, unsigned int *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 282;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetLPDPFrequency(H16ISP::H16ISPDevice *this, int a2, int a3, unint64_t *a4)
{
  bzero(v9, 0x18uLL);
  v10 = 352;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetCurrentMIPIFrequencyIndex(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 281;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetSensorTemperature(H16ISP::H16ISPDevice *this, int a2, int *a3, __int16 *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1286;
  v11 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    if (a3)
    {
      *a3 = v12;
    }

    if (a4)
    {
      *a4 = v13;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableSensorSideband(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1294;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::DPCEnable(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -15104;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetLedParms(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1545;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableNTCStatus(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1546;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetNTCStatus(H16ISP::H16ISPDevice *this, int a2, unsigned __int8 *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1544;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetProjectorOn(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x10uLL);
  v6 = 1547;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetProjectorOff(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 1548;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetProjectorParams(H16ISP::H16ISPDevice *this, int a2, char a3, __int16 a4, __int16 a5, __int16 a6, int a7, int a8)
{
  bzero(v17, 0x1CuLL);
  v18 = 1549;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v17, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetProjectorSequence(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x12CuLL);
  v6 = 1572;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x12Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetProxOff(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1574;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetProjectorTemp(H16ISP::H16ISPDevice *this, int a2, int *a3, int *a4, int *a5, int *a6, int *a7, int *a8, int *a9)
{
  bzero(v21, 0x28uLL);
  v22 = 1555;
  v23 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v21, 0x28u, 0, 0xFFFFFFFF);
  if (!result)
  {
    v18 = v25;
    *a3 = v24;
    *a4 = v18;
    v19 = v27;
    *a5 = v26;
    *a6 = v19;
    v20 = v29;
    *a7 = v28;
    *a8 = v20;
    *a9 = v30;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetProjectorOverheatLimit(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  v5 = 0;
  result = H16ISP::H16ISPDevice::ReadPropertyValue(this, a2, 1447, &v5, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetDscStreamingMode(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 302;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::IRModeSelect(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 24580;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableFocus(H16ISP::H16ISPDevice *this, int a2, __int16 a3, __int16 a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1802;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableCFOV(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2066;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableSensorBLCRead(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1300;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableCNRForStillCapture(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2614;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetFirmwareRunMode(H16ISP::H16ISPDevice *this, __int16 a2)
{
  bzero(v5, 0xCuLL);
  v6 = 14;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::OverrideFocusGravityZ(H16ISP::H16ISPDevice *this, int a2, char a3, __int16 a4)
{
  bzero(v9, 0x10uLL);
  v10 = 1803;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::PrepareCommand(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 309;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetOisBoostMode(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1867;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetOisBoostMode(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1868;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableAvEvMinus(H16ISP::H16ISPDevice *this, int a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 308;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::CreateSensorConfig(H16ISP::H16ISPDevice *this, int a2, char a3, __int16 a4, __int16 a5, __int16 a6, __int16 a7)
{
  bzero(v15, 0x18uLL);
  v16 = 1296;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v22 = a7;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x18u, 0, 0xFFFFFFFF);
  if (!result)
  {
    H16ISP::H16ISPDevice::InitDeviceConfigsCache(this);
    return H16ISP::H16ISPDevice::CacheDeviceConfigs(this);
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ConfigureStillImageIntermediateTapDMA(H16ISP::H16ISPDevice *a1, int a2, int a3, int a4, int a5, char a6)
{
  bzero(v13, 0x20uLL);
  v14 = 2830;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v13, 0x20u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetNumberOfMipiFrequencies(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 307;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetDPCCount(H16ISP::H16ISPDevice *this, int a2, int a3, unsigned int *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 1303;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::CaptureNow(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 306;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableMultiBit(H16ISP::H16ISPDevice *this, char a2)
{
  bzero(v5, 0x10uLL);
  v6 = 319;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetRPCEnableFlag(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0xCuLL);
  v6 = 19;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0xCu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetHighSpeedOutputLevel(H16ISP::H16ISPDevice *this, __int16 a2, __int16 a3)
{
  bzero(v7, 0x10uLL);
  v8 = 1306;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetChargePumpFrequencyIndex(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 326;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetCurrentChargePumpFrequencyIndex(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 324;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetChargePumpFrequencyForIndex(H16ISP::H16ISPDevice *this, int a2, int a3, unsigned int *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 325;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetChargePumpFrequencyCount(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 323;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetPixClockFrequencyIndex(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 288;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetCurrentPixClockFrequencyIndex(H16ISP::H16ISPDevice *this, int a2, unsigned int *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 286;
  v9 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::GetPixClockFrequencyForIndex(H16ISP::H16ISPDevice *this, int a2, int a3, unsigned int *a4)
{
  bzero(v9, 0x14uLL);
  v10 = 287;
  v11 = a2;
  v12 = a3;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x14u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_GetToFClockParam(uint64_t a1, unsigned int a2, unsigned int a3, void *outputStruct)
{
  input[2] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 4344);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  v6 = 24;
  return IOConnectCallMethod(v4, 0x49u, input, 2u, 0, 0, 0, 0, outputStruct, &v6);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetToFClockNumParams(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int *a3)
{
  input[1] = *MEMORY[0x277D85DE8];
  *a3 = 0;
  v3 = *(this + 1086);
  if (!v3)
  {
    return 3758097084;
  }

  output = 0;
  input[0] = a2;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(v3, 0x46u, input, 1u, &output, &outputCnt);
  if (!result)
  {
    *a3 = output;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetCurrentToFClockBanks(uint64_t a1, unsigned int a2, void *inputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  return IOConnectCallMethod(v3, 0x48u, input, 1u, inputStruct, 0x84uLL, 0, 0, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetSACToFCallbackInfo(uint64_t a1, unsigned int a2, void *outputStruct)
{
  input[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 4344);
  if (!v3)
  {
    return 3758097084;
  }

  input[0] = a2;
  v5 = 5008;
  return IOConnectCallMethod(v3, 0x72u, input, 1u, 0, 0, 0, 0, outputStruct, &v5);
}

uint64_t H16ISP::H16ISPDevice::ISP_RunToFSelectionAlgorithm(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned int *a3, unsigned int a4)
{
  input[3] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  input[1] = a3;
  input[2] = a4;
  outputCnt = 0;
  return IOConnectCallScalarMethod(v4, 0x4Bu, input, 3u, 0, &outputCnt);
}

uint64_t H16ISP::H16ISPDevice::GetPixClockFrequencyCount(H16ISP::H16ISPDevice *this, uint64_t a2, unsigned int *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  result = H16ISP::H16ISPDevice::GetCameraConfig(this, a2, 0, v5, v6);
  if (!result)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableFOD(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 26880;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ISP_GetCameraStatus(uint64_t a1, void *outputStruct)
{
  outputStructCnt = 24;
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, &outputStructCnt);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_PearlCamProjectorSafe(H16ISP::H16ISPDevice *this, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  return IOConnectCallScalarMethod(v4, 0x33u, v6, 3u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::FIDStart(H16ISP::H16ISPDevice *this, int a2, char a3, int a4)
{
  bzero(v9, 0x1CuLL);
  v10 = 12288;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x1Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::FIDStop(H16ISP::H16ISPDevice *this, int a2)
{
  bzero(v5, 0x10uLL);
  v6 = 12289;
  v7 = a2;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v5, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetISPProcessingConfig(H16ISP::H16ISPDevice *a1, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 331;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableSqrtToneCurve(H16ISP::H16ISPDevice *this, int a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 2617;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetMBNRConfiguration(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, unsigned int a4, _DWORD *a5, BOOL *a6, _BYTE *a7, _BYTE *a8)
{
  if (a4 > 5)
  {
    return 3758097090;
  }

  v27 = v8;
  v28 = v9;
  bzero(v23, 0x3CuLL);
  v24 = 2620;
  v25 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v23, 0x3Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    v19 = &v23[16 * a3];
    *a5 = *(v19 + 3);
    *a6 = v19[16] != 0;
    if (a4)
    {
      v20 = a4;
      v21 = &v26[a3];
      do
      {
        *a7++ = *(v21 - 1);
        v22 = *v21;
        v21 += 2;
        *a8++ = v22;
        --v20;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableKeypointDetection(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 20491;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetKeypointConfiguration(H16ISP::H16ISPDevice *this, __int16 a2, __int16 a3, __int16 a4, __int16 a5, __int16 a6)
{
  bzero(v13, 0x14uLL);
  v14 = 20490;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetKeypointConfiguration(H16ISP::H16ISPDevice *this, unsigned int a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, unsigned __int16 *a6)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 64;
  *a6 = 64;
  return 0;
}

uint64_t H16ISP::H16ISPDevice::GetVioInputConfiguration(H16ISP::H16ISPDevice *this, __int16 a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  bzero(v15, 0x2CuLL);
  v16 = 12550;
  v17 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v15, 0x2Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    v13 = v19;
    *a3 = v18;
    *a4 = v13;
    v14 = v21;
    *a5 = v20;
    *a6 = v14;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SuspendVio(H16ISP::H16ISPDevice *this, int a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 12552;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SuspendTimeMachine(H16ISP::H16ISPDevice *this, __int16 a2, __int16 a3, char a4)
{
  bzero(v9, 0x10uLL);
  v10 = 336;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v9, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetTimeMachinePTSRange(H16ISP::H16ISPDevice *this, __int16 a2, unint64_t *a3, unint64_t *a4)
{
  bzero(v10, 0x1CuLL);
  v11 = 337;
  v12 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v10, 0x1Cu, 0, 0xFFFFFFFF);
  if (!result)
  {
    v9 = v14;
    *a3 = v13;
    *a4 = v9;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableRawPDPCorrection(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = -14847;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::GetRawBufferConfig(H16ISP::H16ISPDevice *this, __int16 a2, unsigned __int8 *a3, unsigned int *a4, unsigned int *a5, unsigned __int8 *a6, unsigned int *a7, unsigned int *a8)
{
  bzero(v19, 0x24uLL);
  v20 = 342;
  v21 = a2;
  result = H16ISP::H16ISPDevice::ISP_SendCommand(this, v19, 0x24u, 0, 0xFFFFFFFF);
  if (!result)
  {
    *a3 = v22;
    v17 = v24;
    *a4 = v23;
    *a5 = v17;
    *a6 = v27;
    v18 = v26;
    *a7 = v25;
    *a8 = v18;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::EnableManualControl(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, int a4)
{
  bzero(v9, 0x14uLL);
  v10 = 344;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::ConfigureManualControl(H16ISP::H16ISPDevice *a1, __int16 a2, unsigned int a3, const void *a4, unsigned int a5)
{
  v10 = a5 + 532;
  if (((1 << a3) & 0xE08) == 0)
  {
    v10 = 532;
  }

  if (a3 <= 0xB)
  {
    v11 = v10;
  }

  else
  {
    v11 = 532;
  }

  v12 = malloc_type_malloc(v11, 0x10000403C54B1CDuLL);
  if (!v12)
  {
    return 3758097085;
  }

  v13 = v12;
  bzero(v12, 0x214uLL);
  v13[2] = 345;
  v13[4] = a2;
  *(v13 + 3) = a3;
  if (a3 <= 0xB)
  {
    memcpy(v13 + 8, a4, a5);
  }

  v14 = H16ISP::H16ISPDevice::ISP_SendCommand(a1, v13, v11, 0, 0xFFFFFFFF);
  free(v13);
  return v14;
}

uint64_t H16ISP::H16ISPDevice::EnableScalerOutput(H16ISP::H16ISPDevice *a1, __int16 a2, int a3, char a4)
{
  bzero(v9, 0x14uLL);
  v10 = 2834;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  return H16ISP::H16ISPDevice::ISP_SendCommand(a1, v9, 0x14u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableTimeLapseConfiguration(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 13568;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::EnableTimeLapseSmoothing(H16ISP::H16ISPDevice *this, __int16 a2, char a3)
{
  bzero(v7, 0x10uLL);
  v8 = 13569;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTimeLapseSamplingRate(H16ISP::H16ISPDevice *this, __int16 a2, int a3)
{
  bzero(v7, 0x10uLL);
  v8 = 13571;
  v9 = a2;
  v10 = a3;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SavePersistFile(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v19 = *MEMORY[0x277D85DE8];
  bzero(v13, 0x202CuLL);
  v14 = 357;
  v15 = v9;
  v16 = v7;
  v11 = H16ISP::H16ISPDevice::ISP_SendCommand(v10, v13, 0x202Cu, 0, 0xFFFFFFFF);
  if (!v11)
  {
    memcpy(v5, v18, 0x2018uLL);
    *v3 = v17;
  }

  return v11;
}

uint64_t H16ISP::H16ISPDevice::LoadPersistFile(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v16[1027] = *MEMORY[0x277D85DE8];
  bzero(v12, 0x202CuLL);
  v13 = 358;
  v14 = v9;
  v15 = v7;
  memcpy(v16, v5, v3);
  return H16ISP::H16ISPDevice::ISP_SendCommand(v10, v12, 0x202Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetTOFControlMode(H16ISP::H16ISPDevice *this, __int16 a2, char a3, char a4, int a5, char a6)
{
  bzero(v13, 0x18uLL);
  v14 = 13063;
  v15 = a2;
  v16 = a3;
  v17 = a5;
  v18 = a4;
  v19 = a6;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v13, 0x18u, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPDevice::SetPearlControlMode(H16ISP::H16ISPDevice *this, __int16 a2, int a3, int a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    bzero(&v10, 0x10uLL);
    LOWORD(v11) = 24583;
    WORD2(v11) = a2;
    LOBYTE(v12) = a3;
    HIBYTE(v12) = a4;
    return H16ISP::H16ISPDevice::ISP_SendCommand(this, &v10, 0x10u, 0, 0xFFFFFFFF);
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    result = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
    if (result)
    {
      v10 = 136315650;
      v11 = "SetPearlControlMode";
      v12 = 1024;
      v13 = a4;
      v14 = 1024;
      v15 = a3;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s - Would have sent command (enable:%d exclusive:%d)\n", &v10, 0x18u);
      return 0;
    }
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::SetTOFPriRandomSwapMode(H16ISP::H16ISPDevice *this, __int16 a2, char a3, __int16 a4, __int16 a5)
{
  bzero(v11, 0x14uLL);
  v12 = 13064;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return H16ISP::H16ISPDevice::ISP_SendCommand(this, v11, 0x14u, 0, 0xFFFFFFFF);
}

float H16ISP::H16ISPDevice::GetAmbientViewingLevel(H16ISP::H16ISPDevice *this, __int16 a2, float *a3)
{
  bzero(v7, 0x10uLL);
  v8 = 8203;
  v9 = a2;
  if (!H16ISP::H16ISPDevice::ISP_SendCommand(this, v7, 0x10u, 0, 0xFFFFFFFF))
  {
    result = v10;
    *a3 = v10;
  }

  return result;
}

uint64_t H16ISP::H16ISPDevice::UpdateDisplayBrightness(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x6Bu, v4, 1u, 0, 0);
}

void H16ISP::H16ISPDevice::~H16ISPDevice(pthread_mutex_t *this)
{
  if (*&this[67].__opaque[48])
  {
    H16ISP::H16ISPDevice::H16ISPDeviceClose(this);
  }

  v2 = *&this[67].__opaque[44];
  if (v2)
  {
    IOObjectRelease(v2);
    *&this[67].__opaque[44] = 0;
  }

  v3 = *this[2].__opaque;
  if (v3)
  {
    H16ISP::SystemStatus::~SystemStatus(v3);
    MEMORY[0x22AA55B60]();
  }

  v4 = *&this[1].__opaque[32];
  if (v4)
  {
    H16ISP::H16ISPMotionManager::~H16ISPMotionManager(v4);
    MEMORY[0x22AA55B60]();
    *&this[1].__opaque[32] = 0;
  }

  v5 = *&this[1].__opaque[40];
  if (v5)
  {
    H16ISP::H16ISPDeviceImpactManager::~H16ISPDeviceImpactManager(v5);
    MEMORY[0x22AA55B60]();
    *&this[1].__opaque[40] = 0;
  }

  sig = this[2].__sig;
  if (sig)
  {
    MEMORY[0x22AA55B60](sig, 0x1000C4052888210);
    this[2].__sig = 0;
  }

  H16ISP::H16ISPDevice::InitDeviceConfigsCache(this);
  v7 = 0;
  v8 = &this[69].__opaque[8];
  v9 = &this[69].__opaque[8];
  do
  {
    v10 = *v9;
    v9 += 16;
    if (v10 == 1)
    {
      v11 = *(*this[1].__opaque + 72);
      if (v11)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke;
        block[3] = &__block_descriptor_tmp_205;
        block[4] = this;
        v23 = v7;
        dispatch_sync(v11, block);
      }
    }

    if (v8[96] == 1)
    {
      v12 = *(*this[1].__opaque + 72);
      if (v12)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 0x40000000;
        v20[2] = ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_2;
        v20[3] = &__block_descriptor_tmp_206;
        v20[4] = this;
        v21 = v7;
        dispatch_sync(v12, v20);
      }
    }

    ++v7;
    v8 = v9;
  }

  while (v7 != 6);
  if (this[72].__opaque[8])
  {
    v13 = *(*this[1].__opaque + 72);
    if (v13)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 0x40000000;
      v19[2] = ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_3;
      v19[3] = &__block_descriptor_tmp_207;
      v19[4] = this;
      dispatch_sync(v13, v19);
    }
  }

  if (this[72].__opaque[24] == 1)
  {
    v14 = *(*this[1].__opaque + 72);
    if (v14)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 0x40000000;
      v18[2] = ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_4;
      v18[3] = &__block_descriptor_tmp_208;
      v18[4] = this;
      dispatch_sync(v14, v18);
    }
  }

  if (this[72].__opaque[40] == 1)
  {
    v15 = *(*this[1].__opaque + 72);
    if (v15)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 0x40000000;
      v17[2] = ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_5;
      v17[3] = &__block_descriptor_tmp_209;
      v17[4] = this;
      dispatch_sync(v15, v17);
    }
  }

  v16 = *&this[1].__opaque[16];
  if (v16)
  {
    CFRelease(v16);
    *&this[1].__opaque[16] = 0;
  }

  pthread_mutex_destroy(this + 68);
}

uint64_t H16ISP::H16ISPDevice::H16ISPDeviceClose(H16ISP::H16ISPDevice *this)
{
  pthread_mutex_lock(this + 68);
  v2 = IOConnectCallScalarMethod(*(this + 1086), 4u, 0, 0, 0, 0);
  v3 = *(this + 1086);
  if (v3)
  {
    IOServiceClose(v3);
    *(this + 1086) = 0;
    *(this + 7) = 0;
    *(this + 8) = 0;
  }

  else
  {
    v2 = 3758097101;
  }

  pthread_mutex_unlock(this + 68);
  return v2;
}

uint64_t H16ISP::H16ISPDevice::DisableDeviceMessages(H16ISP::H16ISPDevice *this)
{
  result = *(this + 1085);
  if (result)
  {
    result = IOObjectRelease(result);
    *(this + 1085) = 0;
  }

  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32) + 4424;
  result = notify_cancel(*(v2 + 16 * *(a1 + 40) + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32) + 4520;
  result = notify_cancel(*(v2 + 16 * *(a1 + 40) + 12));
  *(v2 + 16 * *(a1 + 40) + 8) = 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 4628));
  *(v1 + 4624) = 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 4644));
  *(v1 + 4640) = 0;
  return result;
}

uint64_t ___ZN6H16ISP12H16ISPDeviceD2Ev_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = notify_cancel(*(v1 + 4660));
  *(v1 + 4656) = 0;
  return result;
}

uint64_t H16ISP::H16ISPDevice::ISP_PreMapClientSurface(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x51u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_ReleasePreMappedClientSurface(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x52u, v4, 1u, 0, 0);
}

uint64_t H16ISP::H16ISPDevice::ISP_DetectFaces(uint64_t a1, void *inputStruct)
{
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x17u, inputStruct, 0x10uLL, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_FlushInactiveDARTMappings(H16ISP::H16ISPDevice *this)
{
  v1 = *(this + 1086);
  if (v1)
  {
    return IOConnectCallScalarMethod(v1, 0x21u, 0, 0, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_ProcessRawImagePrepare(uint64_t a1, void *inputStruct)
{
  v2 = *(a1 + 4344);
  if (v2)
  {
    return IOConnectCallStructMethod(v2, 0x12u, inputStruct, 0x34uLL, 0, 0);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t H16ISP::H16ISPDevice::ISP_ProcessRawImageGo(H16ISP::H16ISPDevice *this, unsigned int a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  v4[0] = a2;
  return IOConnectCallScalarMethod(v2, 0x13u, v4, 1u, 0, 0);
}

H16ISP::H16ISPDevice *H16ISP::H16ISPDevice::ISP_ColdBootPowerCycle(H16ISP::H16ISPDevice *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = -10;
  v3 = MEMORY[0x277D86220];
  do
  {
    if (!H16ISP::H16ISPDevice::ISP_IsPowered(this))
    {
      break;
    }

    usleep(0x186A0u);
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "ISP_ColdBootPowerCycle";
      _os_log_impl(&dword_2247DB000, v3, OS_LOG_TYPE_DEFAULT, "%s - Camera powered on...waiting\n", buf, 0xCu);
    }

    usleep(0x493E0u);
  }

  while (!__CFADD__(v2++, 1));
  v5 = H16ISP::H16ISPDevice::ISP_ForgetFirmware(this);
  if (v5)
  {
    Firmware = v5;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_ColdBootPowerCycle();
    }
  }

  else
  {
    v7 = os_transaction_create();
    Firmware = H16ISP::H16ISPDevice::ISP_LoadFirmware(this);
    os_release(v7);
    if (Firmware)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::ISP_ColdBootPowerCycle();
      }
    }

    else
    {
      v8 = H16ISP::H16ISPDevice::ISP_PowerOnCamera(this);
      if (v8)
      {
        Firmware = v8;
        v9 = 0;
        v10 = 0;
      }

      else if (H16ISP::H16ISPDevice::ISP_IsPowered(this))
      {
        Firmware = H16ISP::H16ISPDevice::ISP_PowerOffCamera(this);
        v9 = Firmware == 0;
        v10 = 1;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        Firmware = 0;
      }

      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v13 = "ISP_ColdBootPowerCycle";
        v14 = 1024;
        v15 = v10;
        v16 = 1024;
        v17 = v9;
        v18 = 1024;
        v19 = Firmware;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - poweredOn=%d, poweredOff=%d, res=0x%08X\n", buf, 0x1Eu);
      }
    }
  }

  return Firmware;
}

uint64_t H16ISP::H16ISPDevice::ISP_ForgetFirmware(H16ISP::H16ISPDevice *this)
{
  v2 = *(this + 1086);
  if (!v2)
  {
    return 3758097084;
  }

  result = IOConnectCallScalarMethod(v2, 9u, 0, 0, 0, 0);
  if (!result)
  {
    H16ISP::H16ISPDevice::InitDeviceConfigsCache(this);
    return 0;
  }

  return result;
}

H16ISP::H16ISPDevice *H16ISP::H16ISPDevice::ISP_LoadFirmware(mach_port_t *this)
{
  input[12] = *MEMORY[0x277D85DE8];
  FirmwareBinary = H16ISP::H16ISPDevice::LoadFirmwareBinary(this);
  if (!FirmwareBinary)
  {
    theDict = 0;
    H16ISP::H16ISPDevice::GetUnitInfoPropertyDict(FirmwareBinary, &theDict);
    H16ISP::H16ISPDevice::ISP_SetFrontCameraOffsetFromDisplayCenter(this);
    H16ISP::LoadSavageDATFile(this, v5);
    H16ISP::LoadFrontIRHPRFile(this, v6);
    H16ISP::LoadYonkersDATFile(this, v7);
    H16ISP::H16ISPDevice::SendDataFileToFirmware(this, "/System/Library/PrivateFrameworks/AppleCVHWA.framework/Firmware/lacc_VIO_ISP_IR.bin", 0, 0, 0, 8u, 0, 0);
    strcpy(input, "/System/Library/PrivateFrameworks/AppleCVHWA.framework/Firmware/");
    *buf = 0;
    v8 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/arm-io");
    if (v8)
    {
      CFProperty = IORegistryEntryCreateCFProperty(v8, @"soc-generation", 0, 0);
      v10 = CFProperty;
      if (CFProperty)
      {
        v11 = CFGetTypeID(CFProperty);
        if (v11 == CFDataGetTypeID())
        {
          Length = CFDataGetLength(v10);
          if ((Length - 8) > 0xFFFFFFFFFFFFFFF8)
          {
            v13 = Length;
            BytePtr = CFDataGetBytePtr(v10);
            strncpy(buf, BytePtr, v13);
          }

          else
          {
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
            {
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              H16ISP::H16ISPDevice::ISP_LoadFirmware();
            }
          }

          goto LABEL_22;
        }
      }
    }

    else
    {
      v10 = 0;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::ISP_LoadFirmware();
    }

    if (!v10)
    {
LABEL_23:
      operator new[]();
    }

LABEL_22:
    CFRelease(v10);
    goto LABEL_23;
  }

  v3 = FirmwareBinary;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPDevice::ISP_LoadFirmware();
  }

  return v3;
}

uint64_t H16ISP::H16ISPDevice::ISP_PowerOffCamera(H16ISP::H16ISPDevice *this)
{
  kdebug_trace();
  v2 = *(this + 1086);
  if (v2)
  {
    v3 = IOConnectCallScalarMethod(v2, 0xCu, 0, 0, 0, 0);
  }

  else
  {
    v3 = 3758097084;
  }

  kdebug_trace();
  return v3;
}

uint64_t H16ISP::H16ISPDevice::ISP_PublishToIOReg(H16ISP::H16ISPDevice *this, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  input[4] = *MEMORY[0x277D85DE8];
  v4 = *(this + 1086);
  if (!v4)
  {
    return 3758097084;
  }

  input[0] = a2;
  if (*a2)
  {
    v5 = 0;
    do
    {
      v6 = v5 + 1;
    }

    while (a2[++v5]);
  }

  else
  {
    v6 = 0;
  }

  input[1] = v6;
  input[2] = a3;
  input[3] = a4;
  return IOConnectCallScalarMethod(v4, 0x65u, input, 4u, 0, 0);
}

float H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter(H16ISP::H16ISPDevice *this)
{
  v18 = *MEMORY[0x277D85DE8];
  valuePtr = 0.0;
  if (*(this + 1086))
  {
    if (MGIsQuestionValid())
    {
      v1 = MGCopyAnswerWithError();
      if (v1)
      {
        v2 = v1;
        v3 = CFGetTypeID(v1);
        if (v3 == CFArrayGetTypeID() && CFArrayGetCount(v2) == 3)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
          if (ValueAtIndex)
          {
            v5 = ValueAtIndex;
            v6 = CFGetTypeID(ValueAtIndex);
            if (v6 == CFNumberGetTypeID() && CFNumberIsFloatType(v5) && CFNumberGetValue(v5, kCFNumberFloatType, &valuePtr))
            {
              v7 = valuePtr;
              v8 = CFArrayGetValueAtIndex(v2, 1);
              if (v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFNumberGetTypeID()) && CFNumberIsFloatType(v9) && CFNumberGetValue(v9, kCFNumberFloatType, &valuePtr))
              {
                v11 = CFArrayGetValueAtIndex(v2, 2);
                if (!v11 || (v12 = v11, v13 = CFGetTypeID(v11), v13 != CFNumberGetTypeID()) || !CFNumberIsFloatType(v12) || !CFNumberGetValue(v12, kCFNumberFloatType, &valuePtr))
                {
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                  {
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                  }

                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                  {
                    H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
                  }
                }
              }

              else
              {
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                {
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
                }
              }

              goto LABEL_41;
            }
          }

          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
          }
        }

        else
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
          }
        }

        v7 = 0.0;
LABEL_41:
        CFRelease(v2);
        return v7;
      }

      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v7 = 0.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v7 = 0.0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "GetFrontCameraOffsetFromDisplayCenter";
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Device has no Front Camera Offset Data!\n", buf, 0xCu);
      }
    }
  }

  else
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v7 = 0.0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::GetFrontCameraOffsetFromDisplayCenter();
    }
  }

  return v7;
}

uint64_t H16ISP::H16ISPDevice::ISP_SetFrontCameraOffsetFromDisplayCenter(H16ISP::H16ISPDevice *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = 3758097136;
  v17 = 0;
  v18 = 0;
  v24 = 0;
  v23 = 0;
  v2 = MEMORY[0x277D86220];
  if (*(this + 1086))
  {
    if (MGIsQuestionValid())
    {
      v4 = MGCopyAnswerWithError();
      if (v4)
      {
        v5 = v4;
        v6 = CFCopyDescription(v4);
        if (v6)
        {
          v7 = v6;
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v2)
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v20 = "ISP_SetFrontCameraOffsetFromDisplayCenter";
            v21 = 2080;
            CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
            _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - kMGQFrontCameraOffsetFromDisplayCenter Description=%s\n", buf, 0x16u);
          }

          CFRelease(v7);
        }

        v8 = CFGetTypeID(v5);
        if (v8 == CFArrayGetTypeID() && CFArrayGetCount(v5) == 3)
        {
          v9 = 0;
          v10 = &v23;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
            if (!ValueAtIndex)
            {
              break;
            }

            v12 = ValueAtIndex;
            v13 = CFGetTypeID(ValueAtIndex);
            if (v13 != CFNumberGetTypeID() || !CFNumberIsFloatType(v12))
            {
              goto LABEL_26;
            }

            Value = CFNumberGetValue(v12, kCFNumberFloatType, v10);
            if (Value)
            {
              v10 = (v10 + 4);
              if (v9++ != 2)
              {
                continue;
              }
            }

            if (Value)
            {
              v1 = 0;
            }

            else
            {
              v1 = 3758097102;
            }

            if (Value)
            {
              v17 = v23;
              LODWORD(v18) = v24;
              v1 = IOConnectCallStructMethod(*(this + 1086), 0x56u, &v17, 0xCuLL, 0, 0);
              goto LABEL_36;
            }

            break;
          }
        }

        else
        {
LABEL_26:
          v1 = 3758096385;
        }
      }

      else
      {
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v2)
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          H16ISP::H16ISPDevice::ISP_SetFrontCameraOffsetFromDisplayCenter();
        }

        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
      v1 = 3758097095;
    }
  }

  else
  {
    v5 = 0;
    v1 = 3758097087;
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v2)
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    H16ISP::H16ISPDevice::ISP_SetFrontCameraOffsetFromDisplayCenter();
    if (!v5)
    {
      return v1;
    }

    goto LABEL_36;
  }

  if (v5)
  {
LABEL_36:
    CFRelease(v5);
  }

  return v1;
}

uint64_t H16ISP::H16ISPDevice::LoadFirmwareBinary(H16ISP::H16ISPDevice *this)
{
  v17 = *MEMORY[0x277D85DE8];
  outputStructCnt = 24;
  v2 = *(this + 1086);
  if (v2 && (IOConnectCallStructMethod(v2, 0xFu, 0, 0, outputStruct, &outputStructCnt), (outputStruct[20] & 1) == 0))
  {
    DCSConfig = H16ISP::H16ISPDevice::ISP_GetDCSConfig(this, &v12);
    if (v12)
    {
      v5 = DCSConfig == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = "/usr/local/share/firmware/isp/dcs_isp_fw.bin";
    }

    else
    {
      v6 = "/usr/local/share/firmware/isp/isp_fw.bin";
    }

    v7 = fopen(v6, "rb");
    v8 = fopen(0, "rb");
    if (v8)
    {
      v9 = v8;
      if (v7)
      {
        fclose(v7);
      }
    }

    else
    {
      v9 = v7;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v10 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadFirmwareBinary();
    }

    if (v9)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v10)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::LoadFirmwareBinary();
      }

      fseeko(v9, 0, 2);
      ftello(v9);
      fseeko(v9, 0, 0);
      operator new[]();
    }

    perror("error loading ISPCPU firmware ");
    outputStructCnt = 0;
    v15 = 0;
    v16 = *(this + 1074);
    return IOConnectCallScalarMethod(*(this + 1086), 7u, &outputStructCnt, 3u, 0, 0);
  }

  else
  {
    outputStructCnt = 0;
    v15 = 0;
    v16 = *(this + 1074);
    return IOConnectCallScalarMethod(*(this + 1086), 7u, &outputStructCnt, 3u, 0, 0);
  }
}

uint64_t H16ISP::H16ISPDevice::SendDataFileToFirmware(H16ISP::H16ISPDevice *this, const char *__filename, const char *a3, const unsigned __int8 *a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8)
{
  v30 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = fopen(a3, "rb");
    if (v10)
    {
      v11 = v10;
      goto LABEL_6;
    }
  }

  v12 = fopen(__filename, "rb");
  if (v12)
  {
    v11 = v12;
LABEL_6:
    fseeko(v11, 0, 2);
    ftello(v11);
    rewind(v11);
    operator new[]();
  }

  if (a4)
  {
    operator new[]();
  }

  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316674;
    v17 = "SendDataFileToFirmware";
    v18 = 1024;
    v19 = a6;
    v20 = 1024;
    v21 = 0;
    v22 = 2080;
    v23 = __filename;
    v24 = 1024;
    v25 = 0;
    v26 = 1024;
    v27 = a8;
    v28 = 1024;
    v29 = 0;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - type=0x%X, isOverride=%d, file=%s, size=%u, isEarlyBoot=%d, status=%08x\n", buf, 0x34u);
  }

  return 0;
}

void H16ISP::H16ISPDevice::LoadFDRCalDataFile(H16ISP::H16ISPDevice *this)
{
  v31 = *MEMORY[0x277D85DE8];
  SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(this, 1919246706, 1852793709);
  v3 = MEMORY[0x277D86220];
  if (SensorChannel == -1)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadFDRCalDataFile();
    }
  }

  else
  {
    v4 = SensorChannel;
    v5 = *MEMORY[0x277CD2898];
    v6 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(v5, v6);
    v8 = *MEMORY[0x277CBECE8];
    v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"BackCameraModuleSerialNumString", *MEMORY[0x277CBECE8], 3u);
    IOObjectRelease(MatchingService);
    if (v9)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v10 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "backCameraModuleSerialNumString exists - load FDR CmCl calibration data\n\n", buf, 2u);
      }

      v11 = -1431699456;
      CFRelease(v9);
      v12 = fopen("/usr/local/share/firmware/isp/CmCl-Override.DAT", "rb");
      if (v12)
      {
        v13 = v12;
        fseeko(v12, 0, 2);
        ftello(v13);
        fseeko(v13, 0, 0);
        operator new[]();
      }

      v14 = CFStringCreateWithCString(v8, "CmCl", 0x8000100u);
      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", *MEMORY[0x277CBED28]);
      MEMORY[0x22AA54080](H16ISP::fdrLogMessages);
      v16 = AMFDRSealingMapCopyLocalDataForClass();
      if (!v16)
      {
        v23 = *(this + 538);
        if (!v23 || *(v23 + 675) != 1 || (v24 = AMFDRSealingManifestCopyLocalDataForClass()) == 0)
        {
          H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, 0, 0, 0xCCCC0300);
LABEL_31:
          if (v14)
          {
            CFRelease(v14);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          return;
        }

        v16 = v24;
        v11 = -1145372672;
      }

      BytePtr = CFDataGetBytePtr(v16);
      Length = CFDataGetLength(v16);
      DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, BytePtr, Length, v11 | 0x300u);
      v20 = CFCopyDescription(v16);
      if (v20)
      {
        v21 = v20;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v10)
        {
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(v21, 0);
          *buf = 136315650;
          v26 = "LoadFDRCalDataFile";
          v27 = 1024;
          v28 = DataFile;
          v29 = 2080;
          v30 = CStringPtr;
          _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Status = %#08x; CmCl data - %s\n", buf, 0x1Cu);
        }

        CFRelease(v21);
      }

      CFRelease(v16);
      goto LABEL_31;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadFDRCalDataFile();
    }

    H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, 0, 0, 0xCCCC0300);
  }
}

void H16ISP::H16ISPDevice::LoadFDRFCClDataFile(H16ISP::H16ISPDevice *this)
{
  v39 = *MEMORY[0x277D85DE8];
  SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(this, 1718775412, 1718776695);
  v3 = MEMORY[0x277D86220];
  if (SensorChannel == -1)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadFDRFCClDataFile();
    }
  }

  else
  {
    v4 = SensorChannel;
    v5 = *MEMORY[0x277CD2898];
    v6 = IOServiceNameMatching("AppleH16CamIn");
    MatchingService = IOServiceGetMatchingService(v5, v6);
    v8 = *MEMORY[0x277CBECE8];
    v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"FrontCameraModuleSerialNumString", *MEMORY[0x277CBECE8], 3u);
    IOObjectRelease(MatchingService);
    if (v9)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      v10 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "FrontCameraModuleSerialNumString exists - load FDR FCCl calibration data\n\n", buf, 2u);
      }

      v11 = -1431699456;
      CFRelease(v9);
      v12 = fopen("/usr/local/share/firmware/isp/FCCl-Override.DAT", "rb");
      if (v12)
      {
        v13 = v12;
        fseeko(v12, 0, 2);
        ftello(v13);
        fseeko(v13, 0, 0);
        operator new[]();
      }

      Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", *MEMORY[0x277CBED28]);
      MEMORY[0x22AA54080](H16ISP::fdrLogMessages);
      v15 = CFStringCreateWithCString(v8, "FCCl", 0x8000100u);
      v16 = AMFDRSealingMapCopyLocalDataForClass();
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        theDict = 0;
        v19 = 0;
      }

      else
      {
        v26 = *(this + 538);
        if (!v26 || *(v26 + 675) != 1 || (v27 = AMFDRSealingManifestCopyLocalDataForClass()) == 0)
        {
          v18 = CFStringCreateWithCString(v8, "iCCl", 0x8000100u);
          theDict = AMFDRSealingMapCopyLocalDictForClass();
          if (theDict && (v28 = *(this + 538)) != 0 && *(v28 + 675) == 1)
          {
            v19 = CFStringCreateWithCString(v8, "FCCl", 0x8000100u);
            Value = CFDictionaryGetValue(theDict, v19);
            if (Value)
            {
              v17 = Value;
              goto LABEL_20;
            }
          }

          else
          {
            v19 = 0;
          }

          H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, 0, 0, 0xCCCC0300);
          v25 = 0;
          v17 = 0;
LABEL_36:
          if (v15)
          {
            CFRelease(v15);
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (v19)
          {
            CFRelease(v19);
          }

          v30 = v25 ^ 1;
          if (theDict)
          {
            v30 = 0;
          }

          if ((v30 & 1) == 0)
          {
            if (theDict)
            {
              v31 = theDict;
            }

            else
            {
              v31 = v17;
            }

            CFRelease(v31);
          }

          return;
        }

        v17 = v27;
        v18 = 0;
        theDict = 0;
        v19 = 0;
        v11 = -1145372672;
      }

LABEL_20:
      BytePtr = CFDataGetBytePtr(v17);
      Length = CFDataGetLength(v17);
      DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, BytePtr, Length, v11 | 0x300u);
      v23 = CFCopyDescription(v17);
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v10)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        CStringPtr = CFStringGetCStringPtr(v23, 0);
        *buf = 136315650;
        v34 = "LoadFDRFCClDataFile";
        v35 = 1024;
        v36 = DataFile;
        v37 = 2080;
        v38 = CStringPtr;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Status = %#08x; FCCl data - %s\n", buf, 0x1Cu);
      }

      CFRelease(v23);
      v25 = 1;
      goto LABEL_36;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v3)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadFDRFCClDataFile();
    }

    H16ISP::H16ISPDevice::ISP_LoadDataFile(this, v4 | 0x80000000, 0, 0, 0xCCCC0300);
  }
}

void H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(H16ISP::H16ISPDevice *this)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = fopen("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", "rb");
  if (v2)
  {
    fclose(v2);
    remove("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", v3);
  }

  v4 = fopen("/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", "rb");
  if (v4)
  {
    fclose(v4);
    remove("/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", v5);
  }

  v73[1] = xmmword_27853B630;
  v73[2] = *&off_27853B640;
  v74 = 0x7265746C00000000;
  v72 = xmmword_27853B610;
  v73[0] = unk_27853B620;
  v6 = *MEMORY[0x277CD2898];
  v7 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v6, v7);
  v9 = 0;
  v10 = 0;
  allocator = *MEMORY[0x277CBECE8];
  v55 = this;
  do
  {
    v11 = &v73[-1] + v10;
    *(v11 + 4) = H16ISP::H16ISPDevice::getSensorChannel(this, *(v73 + v10 + 4), 1852793709);
    v12 = *(&v73[-1] + v10);
    v13 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", v12, allocator, 3u);
    *(v11 + 1) = v13;
    if (CFStringGetCStringPtr(v13, 0x8000100u))
    {
      v14 = MEMORY[0x277D86220];
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
        v16 = CFStringGetCStringPtr(v13, 0x8000100u);
        v17 = CFStringGetCStringPtr(v13, 0x8000100u);
        v18 = strlen(v17);
        *buf = 136315650;
        *v67 = CStringPtr;
        *&v67[8] = 2080;
        *&v67[10] = v16;
        v68 = 2048;
        v69 = v18;
        _os_log_impl(&dword_2247DB000, v14, OS_LOG_TYPE_DEFAULT, "%s:%s exists, length of the string = %ld.\n\n", buf, 0x20u);
      }

      v9 = 1;
    }

    else
    {
      v19 = MEMORY[0x277D86220];
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
        v19 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(v70, v12, &v71);
      }
    }

    this = v55;
    v10 += 24;
  }

  while (v10 != 72);
  IOObjectRelease(MatchingService);
  v20 = AMFDRSealingMapCopyMultiInstanceForClass();
  v21 = v20;
  if ((v9 & (v20 != 0)) == 0)
  {
    H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(v55);
    goto LABEL_76;
  }

  Count = CFArrayGetCount(v20);
  if (Count >= 1)
  {
    v22 = 0;
    v23 = 0;
    value = *MEMORY[0x277CBED28];
    v53 = v21;
LABEL_20:
    v57 = v23;
    ValueAtIndex = CFArrayGetValueAtIndex(v21, v23);
    v25 = 72;
    v26 = v73;
    while (1)
    {
      v27 = *(v26 - 1);
      if (CFStringGetCStringPtr(v27, 0x8000100u))
      {
        if (CFStringCompare(ValueAtIndex, v27, 1uLL) == kCFCompareEqualTo)
        {
          break;
        }
      }

      v26 += 6;
      v25 -= 24;
      if (!v25)
      {
        goto LABEL_29;
      }
    }

    v22 = *v26;
    v28 = MEMORY[0x277D86220];
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = CFStringGetCStringPtr(ValueAtIndex, 0x8000100u);
      *buf = 67109378;
      *v67 = v22;
      *&v67[4] = 2080;
      *&v67[6] = v29;
      _os_log_impl(&dword_2247DB000, v28, OS_LOG_TYPE_DEFAULT, "camChannel: %d, cmpmInstance: %s\n", buf, 0x12u);
    }

LABEL_29:
    MEMORY[0x22AA54080](H16ISP::fdrLogMessages);
    Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", value);
    v56 = Mutable;
    v31 = AMFDRSealingMapCopyLocalDict();
    v32 = 0;
    *v58 = v22;
    while (1)
    {
      v33 = &off_27853B658[v32];
      snprintf(buf, 0x30uLL, "%s-Ch%d.DAT", off_27853B658[v32], v22);
      if (v31)
      {
        v34 = CFStringCreateWithCString(allocator, v33[1], 0x8000100u);
        v35 = CFDictionaryGetValue(v31, v34);
        if (v35)
        {
          v36 = v35;
          BytePtr = CFDataGetBytePtr(v35);
          v38 = -1431699456;
          Length = CFDataGetLength(v36);
          goto LABEL_35;
        }
      }

      else
      {
        v34 = 0;
      }

      Length = 0;
      BytePtr = 0;
      v38 = -859045888;
LABEL_35:
      v40 = *(v33 + 4);
      if (v40 == 771)
      {
        v41 = fopen(buf, "rb");
        if (v41)
        {
          v42 = v41;
          fseeko(v41, 0, 2);
          ftello(v42);
          rewind(v42);
          operator new[]();
        }

        if (BytePtr)
        {
          correction_model_from_fdr = bfpn_create_correction_model_from_fdr();
          v44 = MEMORY[0x277D86220];
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
          {
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
            v44 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *v62 = 136315650;
            v63 = "LoadFDRDataFileCMPM";
            v64 = 1024;
            *v65 = correction_model_from_fdr;
            *&v65[4] = 2048;
            *&v65[6] = 8;
            _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - result = %d, outputPixelBufferRef = %lu\n", v62, 0x1Cu);
          }

          if (!correction_model_from_fdr)
          {
            if (mkdir("/var/mobile/Library/ISP/", 0x1FFu) && *__error() != 17)
            {
              v47 = MEMORY[0x277D86220];
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
              {
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                v47 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(v61, &v61[4]);
              }
            }

            else if (mkdir("/var/mobile/Library/ISP/CalData", 0x1FFu) && *__error() != 17)
            {
              v48 = MEMORY[0x277D86220];
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
              {
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                v48 = MEMORY[0x277D86220];
              }

              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                H16ISP::H16ISPDevice::LoadFDRDataFileCMPM(v60, &v60[4]);
              }
            }

            else
            {
              v45 = fopen("/var/mobile/Library/ISP/CalData/DCNUMetadata_0", "wb");
              if (v45)
              {
                v46 = v45;
                fwrite(0, 1uLL, MEMORY[2], v45);
                fclose(v46);
                H16ISP::H16ISPDevice::SendDataFileToFirmware(v55, "/var/mobile/Library/ISP/CalData/DCNUMetadata_0", 0, 0, 0, v38 | 0x304, v58[0], 1);
                H16ISP::H16ISPDevice::SendDataFileToFirmware(v55, "/var/mobile/Library/ISP/CalData/DCNUPixbuf_0", 0, 0, 0, v38 | 0x303, v58[0], 1);
              }

              else
              {
                v49 = MEMORY[0x277D86220];
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
                {
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
                  v49 = MEMORY[0x277D86220];
                }

                if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
                {
                  *v62 = 136315394;
                  v63 = "LoadFDRDataFileCMPM";
                  v64 = 2080;
                  *v65 = "/var/mobile/Library/ISP/CalData/DCNUMetadata_0";
                  _os_log_error_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s - Could not open %s file\n", v62, 0x16u);
                }
              }
            }

            free(0);
          }
        }

        v22 = *v58;
        if (!v34)
        {
          goto LABEL_40;
        }

LABEL_39:
        CFRelease(v34);
        goto LABEL_40;
      }

      H16ISP::H16ISPDevice::SendDataFileToFirmware(v55, 0, buf, BytePtr, Length, v40 | v38, v22, 1);
      if (v34)
      {
        goto LABEL_39;
      }

LABEL_40:
      v32 += 3;
      if (v32 == 18)
      {
        v21 = v53;
        if (v31)
        {
          CFRelease(v31);
        }

        if (v56)
        {
          CFRelease(v56);
        }

        v23 = v57 + 1;
        if (v57 + 1 == Count)
        {
          break;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_76:
  for (i = 8; i != 80; i += 24)
  {
    v51 = *(&v73[-1] + i);
    if (CFStringGetCStringPtr(v51, 0x8000100u))
    {
      CFRelease(v51);
      *(&v73[-1] + i) = 0;
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

void H16ISP::H16ISPDevice::LoadOCClCalDataFile(H16ISP::H16ISPDevice *this)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceNameMatching("AppleH16CamIn");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = *MEMORY[0x277CBECE8];
  v6 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"FrontCameraModuleSerialNumString", *MEMORY[0x277CBECE8], 3u);
  if (!v6)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadOCClCalDataFile();
    }

    goto LABEL_38;
  }

  v7 = v6;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  v8 = MEMORY[0x277D86220];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "FrontCameraModuleSerialNumString exists - load OCCl calibration data\n\n", buf, 2u);
  }

  CFRelease(v7);
  v9 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"BackTeleCameraModuleSerialNumString", v5, 3u);
  if (!v9)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v8)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadOCClCalDataFile();
    }

LABEL_38:
    IOObjectRelease(MatchingService);
    return;
  }

  v10 = v9;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v8)
  {
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "backTeleCameraModuleSerialNumString exists - load OCCl calibration data\n\n", buf, 2u);
  }

  CFRelease(v10);
  IOObjectRelease(MatchingService);
  Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v12 = CFStringCreateWithCString(v5, "OCCl", 0x8000100u);
  MEMORY[0x22AA54080](H16ISP::fdrLogMessages);
  CFDictionaryAddValue(Mutable, @"CopyAllowUnsealed", *MEMORY[0x277CBED28]);
  v29 = Mutable;
  v13 = AMFDRSealingMapCopyLocalDictForClass();
  v30 = this;
  v14 = 0;
  do
  {
    while (1)
    {
      v15 = v14;
      v16 = &off_27853B5E0[3 * v14];
      v17 = fopen(*v16, "rb");
      if (v17)
      {
        v18 = v17;
        fseeko(v17, 0, 2);
        ftello(v18);
        fseeko(v18, 0, 0);
        operator new[]();
      }

      if (v13)
      {
        break;
      }

      v14 = 1;
      if (v15)
      {
        goto LABEL_26;
      }
    }

    v19 = v16[1];
    v20 = CFStringCreateWithCString(v5, v19, 0x8000100u);
    Value = CFDictionaryGetValue(v13, v20);
    if (Value)
    {
      v22 = Value;
      BytePtr = CFDataGetBytePtr(Value);
      Length = CFDataGetLength(v22);
      DataFile = H16ISP::H16ISPDevice::ISP_LoadDataFile(v30, 0x80000000, BytePtr, Length, *(v16 + 4));
      v26 = CFCopyDescription(v22);
      if (v26)
      {
        v27 = v26;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(v27, 0);
          *buf = 136315906;
          v32 = "LoadOCClCalDataFile";
          v33 = 1024;
          v34 = DataFile;
          v35 = 2080;
          v36 = v19;
          v37 = 2080;
          v38 = CStringPtr;
          _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s : Status = %08x; OCCl (%s) data - %s \n", buf, 0x26u);
        }

        CFRelease(v27);
      }
    }

    if (v20)
    {
      CFRelease(v20);
    }

    v14 = 1;
  }

  while (!v15);
  CFRelease(v13);
LABEL_26:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v29)
  {
    CFRelease(v29);
  }
}

uint64_t H16ISP::H16ISPDevice::LoadSyscfgCalDataFiles(H16ISP::H16ISPDevice *this, __CFDictionary *a2)
{
  v4 = 0;
  v7 = *MEMORY[0x277D85DE8];
  v6[2] = xmmword_27853B5A0;
  v6[3] = *&off_27853B5B0;
  v6[4] = xmmword_27853B5C0;
  v6[5] = off_27853B5D0;
  v6[0] = xmmword_27853B580;
  v6[1] = *&off_27853B590;
  do
  {
    result = H16ISP::H16ISPDevice::SendSysConfigCalibrationDataByKey(this, &v6[v4], a2);
    v4 += 2;
  }

  while (v4 != 6);
  return result;
}

void H16ISP::H16ISPDevice::LoadIspAneNetworkFile(H16ISP::H16ISPDevice *this)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = MGCopyAnswer();
  if (!v1)
  {
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadIspAneNetworkFile();
    }

    return;
  }

  v2 = v1;
  Length = CFStringGetLength(v1);
  HasSuffix = CFStringHasSuffix(v2, @"AP");
  v5 = MEMORY[0x277CBECE8];
  if (HasSuffix)
  {
    v6.length = Length - 2;
  }

  else
  {
    if (!CFStringHasSuffix(v2, @"DEV"))
    {
      v7 = *v5;
      goto LABEL_13;
    }

    v6.length = Length - 3;
  }

  v7 = *v5;
  if (v6.length >= 1)
  {
    v6.location = 0;
    v8 = CFStringCreateWithSubstring(*v5, v2, v6);
    CFRelease(v2);
    v2 = v8;
  }

LABEL_13:
  MutableCopy = CFStringCreateMutableCopy(v7, 0, v2);
  CFStringLowercase(MutableCopy, 0);
  CFShow(MutableCopy);
  CFRelease(v2);
  if (MutableCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    memset(__s, 0, sizeof(__s));
    strcat(__s, "/System/Library/Isp/afpp/");
    CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x8000100u);
    strcat(__s, CStringPtr);
    strcat(__s, "/ispane.afpp");
    CFRelease(MutableCopy);
    v11 = fopen(__s, "rb");
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == MEMORY[0x277D86220])
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    v12 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315138;
      v16 = __s;
      _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Loading file for ISP-ANE networks - %s\n", &v15, 0xCu);
    }

    v13 = fopen("/usr/local/share/firmware/isp/ispane.afpp", "rb");
    if (v13)
    {
      v14 = v13;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v12)
      {
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_2247DB000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using override ISP-ANE AFPP file\n", &v15, 2u);
      }

      if (v11)
      {
        fclose(v11);
      }

      v11 = v14;
LABEL_27:
      fseeko(v11, 0, 2);
      ftello(v11);
      fseeko(v11, 0, 0);
      operator new[]();
    }

    if (v11)
    {
      goto LABEL_27;
    }

    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog == v12)
    {
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_deviceLog = os_log_create("com.apple.isp", "device");
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPDevice::LoadIspAneNetworkFile();
    }
  }
}