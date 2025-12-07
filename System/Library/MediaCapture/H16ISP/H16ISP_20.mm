uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::GeneralProcessGeneric(uint64_t a1, uint64_t a2, char a3)
{
  pthread_mutex_lock((a1 + 48));
  if ((*(a1 + 344) & 1) != 0 || *a1 != 1)
  {
    pthread_mutex_unlock((a1 + 48));
    return 3758097122;
  }

  else
  {
    if (*(a2 + 216))
    {
      v6 = *(a2 + 208);
      if (v6)
      {
        v7 = *(a2 + 944);
        if ((v7 - 21) >= 0xFFFFFFEC)
        {
          v10 = 48;
          while (*(a2 + v10))
          {
            v10 += 8;
            if (!--v7)
            {
              if ((a3 & 1) == 0)
              {
                CVPixelBufferRetain(v6);
                CVPixelBufferRetain(*(a2 + 216));
                v11 = *(a2 + 40);
                if (v11)
                {
                  CVPixelBufferRetain(v11);
                }

                if (*(a2 + 944))
                {
                  v12 = 0;
                  do
                  {
                    CVPixelBufferRetain(*(a2 + 48 + 8 * v12++));
                  }

                  while (v12 < *(a2 + 944));
                }
              }

              bzero(inputStruct, 0x478uLL);
              IOSurface = CVPixelBufferGetIOSurface(*(a2 + 216));
              ID = IOSurfaceGetID(IOSurface);
              DataSize = CVPixelBufferGetDataSize(*(a2 + 216));
              v14 = CVPixelBufferGetIOSurface(*(a2 + 208));
              v39 = IOSurfaceGetID(v14);
              v40 = CVPixelBufferGetDataSize(*(a2 + 208));
              v15 = *(a2 + 40);
              if (v15)
              {
                v16 = CVPixelBufferGetIOSurface(v15);
                v41 = IOSurfaceGetID(v16);
                v42 = CVPixelBufferGetDataSize(*(a2 + 40));
              }

              LODWORD(v17) = *(a2 + 944);
              if (v17)
              {
                v18 = v44;
                v19 = 48;
                v20 = 216;
                v21 = 224;
                do
                {
                  v22 = CVPixelBufferGetIOSurface(*(a2 + v19));
                  *(v18 - 46) = IOSurfaceGetID(v22);
                  PixelFormatType = CVPixelBufferGetPixelFormatType(*(a2 + v19));
                  FrameFormat = H16ISP::getFrameFormat(PixelFormatType);
                  *(v18 - 26) = FrameFormat;
                  *(v18 - 34) = CVPixelBufferGetBytesPerRowOfPlane(*(a2 + v19), 0);
                  *(v18 - 22) = vuzp1q_s32(vcvtq_u64_f64(*(a2 + v21)), vcvtq_u64_f64(*(a2 + v21 + 16)));
                  *(v18 - 3) = CVPixelBufferGetWidth(*(a2 + v19));
                  *(v18 - 2) = CVPixelBufferGetHeight(*(a2 + v19));
                  v25 = CVPixelBufferGetPixelFormatType(*(a2 + v19));
                  *(v18 - 1) = *(a2 + 4 * v20);
                  v26 = *(a2 + v19);
                  if (FrameFormat)
                  {
                    BytesPerRow = CVPixelBufferGetBytesPerRow(v26);
                    Height = CVPixelBufferGetHeight(*(a2 + v19));
                    v29 = 0;
                    *(v18 - 42) = Height * BytesPerRow;
                  }

                  else
                  {
                    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v26, 0);
                    *(v18 - 42) = CVPixelBufferGetHeight(*(a2 + v19)) * BytesPerRowOfPlane;
                    v31 = CVPixelBufferGetBytesPerRowOfPlane(*(a2 + v19), 1uLL);
                    v29 = (CVPixelBufferGetHeight(*(a2 + v19)) * v31) >> 1;
                  }

                  *(v18 - 38) = v29;
                  v33 = v25 != 2037741171 && v25 != 875704438;
                  *v18 = v33;
                  v18 += 48;
                  v17 = *(a2 + 944);
                  v19 += 8;
                  v34 = v20 - 215;
                  ++v20;
                  v21 += 32;
                }

                while (v34 < v17);
              }

              v43 = v17;
              v36 = *a2;
              *&v44[918] = H16ISP::H16ISPGeneralProcessFrameReceiver::FrameDone;
              if ((a3 & 1) == 0)
              {
                operator new();
              }

              v8 = H16ISP::H16ISPDevice::ISP_GeneralProcessGeneric(*(a1 + 288), inputStruct, 0);
              goto LABEL_7;
            }
          }
        }
      }
    }

    v8 = 3758097090;
LABEL_7:
    pthread_mutex_unlock((a1 + 48));
  }

  return v8;
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::tickleNoDataTimer(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 3);
  sig = this[4].__sig;
  if (sig)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFRunLoopTimerSetNextFireDate(sig, Current + *&this[5].__opaque[24]);
  }

  return pthread_mutex_unlock(this + 3);
}

uint64_t H16ISP::H16ISPGeneralProcessFrameReceiver::NoDataTimeout(H16ISP::H16ISPGeneralProcessFrameReceiver *this, __CFRunLoopTimer *a2, void *a3)
{
  result = puts("H16ISPGeneralProcessFrameReceiver::NoDataTimeout!");
  v5 = *(a2 + 38);
  v6 = *(a2 + 39);
  v7 = (v5 + 8 * (*(a2 + 41) >> 9));
  if (v6 == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*v7 + 8 * (*(a2 + 41) & 0x1FFLL));
  }

  while (1)
  {
    if (v6 == v5)
    {
      v10 = 0;
    }

    else
    {
      v9 = *(a2 + 42) + *(a2 + 41);
      v10 = *(v5 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF);
    }

    if (v8 == v10)
    {
      break;
    }

    v11 = *v8++;
    result = printf("H16ISPGeneralProcessFrameReceiver: Request not returned 0x%p\n", v11);
    if ((v8 - *v7) == 4096)
    {
      v12 = v7[1];
      ++v7;
      v8 = v12;
    }

    v5 = *(a2 + 38);
    v6 = *(a2 + 39);
  }

  v13 = *(a2 + 4);
  if (v13)
  {
    v14 = *(a2 + 5);

    return v13(0, 0, 0, 0, 0, v14);
  }

  return result;
}

uint64_t H16ISP::CreateH16ISPGeneralProcessFrameReceiver(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = 0;
  H16ISP::H16ISPThreadReadySyncer::H16ISPThreadReadySyncer(&v12);
  v7 = 0;
  v2 = *(a1 + 32);
  v8 = *(a1 + 16);
  v9 = v2;
  v10 = *(a1 + 8);
  v11 = &v12;
  pthread_attr_init(&v13);
  pthread_attr_setdetachstate(&v13, 2);
  pthread_create(&v6, &v13, H16ISP::H16ISPGeneralProcessFrameReceiverRTThreadStart, &v7);
  pthread_attr_destroy(&v13);
  H16ISP::H16ISPThreadReadySyncer::wait(&v12);
  v3 = v7;
  **a1 = v7;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 3758097084;
  }

  H16ISP::H16ISPThreadReadySyncer::~H16ISPThreadReadySyncer(&v12);
  return v4;
}

void H16ISP::H16ISPGeneralProcessFrameReceiverRTThreadStart(uint64_t a1)
{
  pthread_setname_np("H16ISPGeneralProcessFrameReceiverRealTimeThread");
  v2 = pthread_self();
  v3 = pthread_mach_thread_np(v2);
  H16ISP::H16ISPSetMachThreadPriority(v3, 47);
  H16ISP::H16ISPThreadReadySyncer::lock(*(a1 + 48));
  operator new();
}

uint64_t H16ISP::DestroyH16ISPGeneralProcessFrameReceiver(H16ISP *this, H16ISP::H16ISPGeneralProcessFrameReceiver *a2)
{
  v3 = *(this + 1);
  CFRetain(v3);
  H16ISP::H16ISPGeneralProcessFrameReceiver::~H16ISPGeneralProcessFrameReceiver(this);
  MEMORY[0x22AA55B60]();
  CFRunLoopStop(v3);
  CFRelease(v3);
  return 0;
}

void std::deque<H16ISP::H16ISPGeneralProcessFrameReceiverRequest *>::__add_back_capacity(unint64_t *a1)
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

void sub_224965D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL GMC_FaceCoverageTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, double *a6)
{
  bzero(*(a4 + 8), (*(a4 + 20) * *(a4 + 16)));
  *a5 = 0;
  v12 = *(a3 + 16);
  v13 = *(a3 + 20);
  v14 = v13 * v12;
  if (!(v13 * v12))
  {
    GMC_ExtractTestSamples();
  }

  if (v14 <= 2)
  {
    GMC_ExtractTestSamples();
  }

  if (v14 == 3)
  {
    GMC_ExtractTestSamples();
  }

  v15 = *(a1 + 20);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = *(a3 + 8);
    v19 = *v18 + v18[2];
    v20 = v18[1] + v18[3];
    v21 = 0.0;
    v22 = 1.0e10;
    v23 = 1.0e10;
    v24 = 0.0;
    do
    {
      v25 = *(a1 + 16);
      if (!v25)
      {
        MatrixNxPts<3u,double>::CloneColumn();
      }

      v26 = *(a3 + 20) * *(a3 + 16);
      if (!v26)
      {
        GMC_ExtractTestSamples();
      }

      v27 = *(a1 + 8);
      v28 = *(v27 + 8 * v17);
      v29 = *(a3 + 8);
      if (v28 > *v29 && v28 < v19)
      {
        if (v25 == 1)
        {
          MatrixNxPts<3u,double>::CloneColumn();
        }

        if (v26 == 1)
        {
          GMC_ExtractTestSamples();
        }

        v31 = *(v27 + 8 * v15 + 8 * v17);
        if (v31 > v29[1] && v31 < v20)
        {
          if (v17 >= (*(a4 + 20) * *(a4 + 16)))
          {
            GMC_ExtractTestSamples();
          }

          *(*(a4 + 8) + v17) = 1;
          v33 = (*(a1 + 8) + 8 * v17);
          if (*v33 < v22)
          {
            v22 = *v33;
          }

          if (*v33 > v24)
          {
            v24 = *v33;
          }

          v34 = v33[v15];
          if (v34 < v23)
          {
            v23 = v33[v15];
          }

          if (v34 > v21)
          {
            v21 = v33[v15];
          }

          *a5 = ++v16;
          v15 = *(a1 + 20);
        }
      }

      ++v17;
    }

    while (v17 < v15);
    v12 = *(a3 + 16);
    v13 = *(a3 + 20);
    v35 = (v21 - v23) * (v24 - v22);
  }

  else
  {
    v16 = 0;
    v35 = 1.0e20;
  }

  v36 = v13 * v12;
  if (v36 <= 2)
  {
    GMC_ExtractTestSamples();
  }

  if (v36 == 3)
  {
    GMC_ExtractTestSamples();
  }

  v37 = v35 / (*(*(a3 + 8) + 16) * *(*(a3 + 8) + 24));
  *a6 = v37;
  return v37 > *(a2 + 712) && v16 > *(a2 + 720);
}

void sub_2249676CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  Matrix<double>::~Matrix(&a53);
  Matrix<double>::~Matrix(&a57);
  Matrix<double>::~Matrix(&a61);
  Matrix<double>::~Matrix(&a65);
  _GMC_Params::~_GMC_Params(&a66);
  _Unwind_Resume(a1);
}

void _GMC_Params::~_GMC_Params(_GMC_Params *this)
{
  Matrix<double>::~Matrix(this + 872);
  Matrix<double>::~Matrix(this + 840);
  Matrix<double>::~Matrix(this + 808);
  Matrix<double>::~Matrix(this + 776);
  Matrix<double>::~Matrix(this + 744);
  Matrix<double>::~Matrix(this + 256);
  Matrix<double>::~Matrix(this + 224);
  Matrix<double>::~Matrix(this + 192);
  Matrix<double>::~Matrix(this + 160);
  Matrix<double>::~Matrix(this + 128);
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::onActivate(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::onActivate\n", v4, 2u);
  }

  return H16ISP::H16ISPGraphVIOCameraControlNode::InitVIO(this);
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::InitVIO(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  v107 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v3 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO\n\n", buf, 2u);
  }

  v4 = CVHWAFeatureExtractionCreate();
  if (v4)
  {
    v5 = v4;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    v7 = 3758097084;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v102 = v5;
      v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - CVHWAFeatureExtractionCreate failed: %d\n\n";
LABEL_20:
      v11 = buf;
LABEL_21:
      v12 = v6;
LABEL_22:
      v13 = 8;
LABEL_23:
      _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, v8, v11, v13);
    }
  }

  else
  {
    bzero(v95, 0x10uLL);
    v96 = 12551;
    v97 = *(this + 24);
    v98 = *(this + 120) << 10;
    v99 = *(this + 262);
    v9 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v95, 0x10u, 0, 0xFFFFFFFF);
    if (v9)
    {
      v7 = v9;
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
      {
        v6 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v102 = v7;
        v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVIODownScaleFactorSet failed: 0x%08X\n\n";
        goto LABEL_20;
      }
    }

    else
    {
      bzero(v90, 0x14uLL);
      v91 = 12549;
      v92 = *(this + 24);
      v93 = 1;
      v94 = *(this + 64);
      v10 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v90, 0x14u, 0, 0xFFFFFFFF);
      if (v10)
      {
        v7 = v10;
        v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
        {
          v6 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v102 = v7;
          v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVioEnable failed: 0x%08X\n\n";
          goto LABEL_20;
        }
      }

      else
      {
        bzero(buf, 0x2CuLL);
        LOWORD(v102) = 12550;
        v103 = *(this + 24);
        v7 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), buf, 0x2Cu, 0, 0xFFFFFFFF);
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (!v7)
        {
          if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
          {
            v15 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v100 = 67109120;
            *&v100[4] = v104;
            _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - cmdChVioInputConfigGet.width: %d\n\n", v100, 8u);
            v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          }

          if (v15 == v3)
          {
            v15 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v100 = 67109120;
            *&v100[4] = v106;
            _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - cmdChVioInputConfigGet.height: %d\n\n", v100, 8u);
            v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          }

          if (v15 == v3)
          {
            v15 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v100 = 67109120;
            *&v100[4] = v105;
            _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - cmdChVioInputConfigGet.bufferStride: %d\n\n", v100, 8u);
            v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          }

          if (v15 == v3)
          {
            v15 = os_log_create("com.apple.isp", "general");
            GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *(this + 67);
            *v100 = 67109120;
            *&v100[4] = v16;
            _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - vioParams.keypointDetectionFlow: %d\n\n", v100, 8u);
          }

          if (H16ISP::H16ISPGetCFPreferenceNumber(@"EnableVIODebug", @"com.apple.coremedia", 0))
          {
            v17 = v105 * v106;
          }

          else
          {
            v17 = 0;
          }

          v18 = CVHWAFeatureExtractionConfigCreate();
          if (v18)
          {
            v19 = v18;
            v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
            {
              v6 = os_log_create("com.apple.isp", "general");
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
            }

            if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              return v7;
            }

            *v100 = 67109120;
            *&v100[4] = v19;
            v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - CVHWAFeatureExtractionConfigCreate failed: %d\n\n";
          }

          else
          {
            CVHWAFeatureExtractionConfigSetImageSize();
            CVHWAFeatureExtractionConfigSetMaxImageSize();
            CVHWAFeatureExtractionConfigSetNumberOfOctaves();
            CVHWAFeatureExtractionConfigSetTargetNumberOfKeypoints();
            CVHWAFeatureExtractionConfigSetMaxNumberOfKeypoints();
            CVHWAFeatureExtractionConfigSetResponseThreshold();
            CVHWAFeatureExtractionConfigSetEnableParedGrid();
            CVHWAFeatureExtractionConfigSetEnableOrientationAssignment();
            CVHWAFeatureExtractionConfigSetEnableDynamicThresholding();
            CVHWAFeatureExtractionConfigSetDetectionFlow();
            CVHWAFeatureExtractionConfigSetDisablePostProcessing();
            CVHWAFeatureExtractionConfigSetSigmaDistanceThreshold();
            CVHWAFeatureExtractionConfigSetSquareDistanceDisparityFraction();
            CVHWAFeatureExtractionConfigSetHammingDistanceThreshold();
            CVHWAFeatureExtractionConfigSetOrientationDistanceThreshold();
            CVHWAFeatureExtractionConfigSetFeatureMatchingDescriptorSize();
            CVHWAFeatureExtractionConfigSetEnableFeatureMatching();
            CVHWAFeatureExtractionConfigSetExtraTestThreshold();
            inited = CVHWAFeatureExtractionInitDirectWithLacc();
            if (inited)
            {
              v21 = inited;
              v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
              {
                v6 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
              }

              if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
              {
                return v7;
              }

              *v100 = 67109120;
              *&v100[4] = v21;
              v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - CVHWAFeatureExtractionInitDirect failed: %d\n\n";
            }

            else
            {
              *(this + 16) = CVHWAFeatureExtractionGetActionBuffer();
              *(this + 17) = CVHWAFeatureExtractionGetOperationBuffer();
              *(this + 38) = CVHWAFeatureExtractionGetActionSizeInBytes();
              *(this + 39) = CVHWAFeatureExtractionGetOperationSizeInBytes();
              *(this + 40) = CVHWAFeatureExtractionGetOutputSizeInBytes();
              *(this + 41) = CVHWAFeatureExtractionGetOutputReserveSizeInBytes();
              *(this + 172) = CVHWAFeatureExtractionGetDynamicThresholdingEnable();
              *(this + 44) = CVHWAFeatureExtractionGetDynamicThresholdingTargetKeypointsConfigCount();
              *(this + 18) = CVHWAFeatureExtractionGetLaccBuffer();
              v22 = 0;
              *(this + 42) = CVHWAFeatureExtractionGetLaccSizeInBytes();
              do
              {
                *(this + v22++ + 45) = CVHWAFeatureExtractionGetDynamicThresholdingTargetKeypointsAtIndex();
              }

              while (v22 != 9);
              v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
              {
                v23 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (*(this + 16))
                {
                  v24 = "Yes";
                }

                else
                {
                  v24 = "No";
                }

                v25 = *(this + 38);
                *v100 = 136315394;
                *&v100[4] = v24;
                *&v100[12] = 1024;
                *&v100[14] = v25;
                _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - action buffer: %s, actionSizeInBytes: %d\n\n", v100, 0x12u);
                v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              }

              if (v23 == v3)
              {
                v23 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (*(this + 17))
                {
                  v26 = "Yes";
                }

                else
                {
                  v26 = "No";
                }

                v27 = *(this + 39);
                *v100 = 136315394;
                *&v100[4] = v26;
                *&v100[12] = 1024;
                *&v100[14] = v27;
                _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - operation buffer: %s, operationSizeInBytes: %d\n\n", v100, 0x12u);
                v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              }

              if (v23 == v3)
              {
                v23 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v28 = *(this + 40);
                *v100 = 67109120;
                *&v100[4] = v28;
                _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - outputSizeInBytes: %d\n\n", v100, 8u);
                v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              }

              if (v23 == v3)
              {
                v23 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *(this + 41);
                *v100 = 67109120;
                *&v100[4] = v29;
                _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - keypointAndDescriptorSizeInBytes: %d\n\n", v100, 8u);
                v23 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              }

              if (v23 == v3)
              {
                v23 = os_log_create("com.apple.isp", "general");
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (*(this + 18))
                {
                  v30 = "Yes";
                }

                else
                {
                  v30 = "No";
                }

                v31 = *(this + 42);
                *v100 = 136315394;
                *&v100[4] = v30;
                *&v100[12] = 1024;
                *&v100[14] = v31;
                _os_log_impl(&dword_2247DB000, v23, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - lacc buffer: %s, laccSizeInBytes: %d\n\n", v100, 0x12u);
              }

              bzero(v86, 0x10uLL);
              v87 = 12545;
              v32 = *(this + 40);
              v88 = *(this + 24);
              v89 = v32;
              v33 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v86, 0x10u, 0, 0xFFFFFFFF);
              if (v33)
              {
                v7 = v33;
                v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                {
                  v6 = os_log_create("com.apple.isp", "general");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                }

                if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                {
                  return v7;
                }

                *v100 = 67109120;
                *&v100[4] = v7;
                v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVioBlobSize failed: 0x%08X\n\n";
              }

              else
              {
                bzero(v81, 0x14uLL);
                v82 = 12546;
                v34 = *(this + 41);
                v83 = *(this + 24);
                v84 = v34;
                v85 = v17;
                v35 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v81, 0x14u, 0, 0xFFFFFFFF);
                if (v35)
                {
                  v7 = v35;
                  v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                  {
                    v6 = os_log_create("com.apple.isp", "general");
                    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                  }

                  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                  {
                    return v7;
                  }

                  *v100 = 67109120;
                  *&v100[4] = v7;
                  v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVioMetaReserve failed: 0x%08X\n\n";
                }

                else
                {
                  v36 = *(this + 16);
                  if (v36 && *(this + 38))
                  {
                    CVPixelBufferLockBaseAddress(v36, 0);
                    if (CVPixelBufferGetBaseAddress(*(this + 16)))
                    {
                      operator new[]();
                    }

                    v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                    {
                      v37 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v37;
                    }

                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                    {
                      *v100 = 0;
                      _os_log_impl(&dword_2247DB000, v37, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - CVPixelBufferGetBaseAddress for action buffer returned NULL\n\n", v100, 2u);
                    }

                    CVPixelBufferUnlockBaseAddress(*(this + 16), 0);
                  }

                  v38 = *(this + 17);
                  if (v38 && *(this + 39))
                  {
                    CVPixelBufferLockBaseAddress(v38, 0);
                    if (CVPixelBufferGetBaseAddress(*(this + 17)))
                    {
                      operator new[]();
                    }

                    v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                    {
                      v39 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v39;
                    }

                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      *v100 = 0;
                      _os_log_impl(&dword_2247DB000, v39, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - CVPixelBufferGetBaseAddress for operation buffer returned NULL\n\n", v100, 2u);
                    }

                    CVPixelBufferUnlockBaseAddress(*(this + 17), 0);
                  }

                  v40 = *(this + 18);
                  if (v40)
                  {
                    CVPixelBufferLockBaseAddress(v40, 0);
                    if (CVPixelBufferGetBaseAddress(*(this + 18)))
                    {
                      operator new[]();
                    }

                    v41 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                    {
                      v41 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v41;
                    }

                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      *v100 = 0;
                      _os_log_impl(&dword_2247DB000, v41, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - CVPixelBufferGetBaseAddress for lacc buffer returned NULL\n\n", v100, 2u);
                    }

                    CVPixelBufferUnlockBaseAddress(*(this + 18), 0);
                  }

                  v42 = *(this + 16);
                  if (v42)
                  {
                    CVPixelBufferRelease(v42);
                    *(this + 16) = 0;
                  }

                  v43 = *(this + 17);
                  if (v43)
                  {
                    CVPixelBufferRelease(v43);
                    *(this + 17) = 0;
                  }

                  v44 = *(this + 37);
                  if (v44)
                  {
                    CVPixelBufferRelease(v44);
                    *(this + 37) = 0;
                  }

                  v45 = *(this + 18);
                  if (v45)
                  {
                    CVPixelBufferRelease(v45);
                    *(this + 18) = 0;
                  }

                  bzero(v77, 0x10uLL);
                  v78 = 12547;
                  v79 = *(this + 24);
                  v46 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v77, 0x10u, 0, 0xFFFFFFFF);
                  if (v46)
                  {
                    v7 = v46;
                    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                    {
                      v6 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                    }

                    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                    {
                      return v7;
                    }

                    *v100 = 67109120;
                    *&v100[4] = v7;
                    v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVioOutputBufferSize failed: 0x%08X\n\n";
                  }

                  else
                  {
                    v48 = *(this + 55);
                    if (v48 <= 0.0)
                    {
                      *(this + 55) = 1114636288;
                      v48 = 60.0;
                    }

                    v49.i32[0] = *(this + 56);
                    if (v49.f32[0] <= 0.0)
                    {
                      *(this + 56) = v48;
                      v49.f32[0] = v48;
                    }

                    v50 = *(this + 57);
                    if (v50 <= 0.0)
                    {
                      *(this + 57) = v48;
                      v50 = v48;
                    }

                    *v47.i32 = v48;
                    v49.f32[1] = v50;
                    *(this + 40) = vmax_u32(vcvt_u32_f32(vdiv_f32(vdup_lane_s32(v47, 0), v49)), 0x100000001);
                    HIDWORD(v51) = 1083129856;
                    v52 = 1.0 / v48 * 1000.0;
                    LODWORD(v51) = *(this + 58);
                    v53 = (v51 / v52);
                    *(this + 82) = v53;
                    *(this + 83) = v53;
                    v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v55 = *(this + 55);
                      *v100 = 134217984;
                      *&v100[4] = v55;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - vioParams.streamFrameRate=%.3f\n\n", v100, 0xCu);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v56 = *(this + 56);
                      *v100 = 134217984;
                      *&v100[4] = v56;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - vioParams.vioFrameRate=%.3f\n\n", v100, 0xCu);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v57 = *(this + 57);
                      *v100 = 134217984;
                      *&v100[4] = v57;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - vioParams.vioBurstFrameRate=%.3f\n\n", v100, 0xCu);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v58 = *(this + 80);
                      *v100 = 67109120;
                      *&v100[4] = v58;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - decimationFactorForVIOFrameRate=%d\n\n", v100, 8u);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v59 = *(this + 81);
                      *v100 = 67109120;
                      *&v100[4] = v59;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - decimationFactorForBurstFrameRate=%d\n\n", v100, 8u);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v60 = *(this + 82);
                      *v100 = 67109120;
                      *&v100[4] = v60;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - numFramesForBurstMode=%d\n\n", v100, 8u);
                      v54 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                    }

                    if (v54 == v3)
                    {
                      v54 = os_log_create("com.apple.isp", "general");
                      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v54;
                    }

                    v61 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
                    v62 = *(this + 83);
                    if (v61)
                    {
                      *v100 = 67109120;
                      *&v100[4] = v62;
                      _os_log_impl(&dword_2247DB000, v54, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::InitVIO - remainingBurstModeFrames=%d\n\n", v100, 8u);
                      v62 = *(this + 83);
                    }

                    v63 = v62 == 0;
                    v64 = 324;
                    if (v63)
                    {
                      v64 = 320;
                    }

                    v65 = H16ISP::H16ISPGraphVIOCameraControlNode::SetVIORunTimeParameters(this, *(this + v64), *(this + 62), *(this + 172), this + 45);
                    if (v65)
                    {
                      v7 = v65;
                      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                      {
                        v6 = os_log_create("com.apple.isp", "general");
                        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                      }

                      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                      {
                        return v7;
                      }

                      *v100 = 67109120;
                      *&v100[4] = v7;
                      v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - SetVIORunTimeParameters failed: 0x%08X\n\n";
                    }

                    else
                    {
                      v66 = H16ISP::H16ISPDevice::SuspendVio(*(this + 10), *(this + 24), *(this + 217));
                      if (v66)
                      {
                        v7 = v66;
                        v67 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                        {
                          v67 = os_log_create("com.apple.isp", "general");
                          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v67;
                        }

                        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                        {
                          v68 = *(this + 217);
                          *v100 = 67109376;
                          *&v100[4] = v68;
                          *&v100[8] = 1024;
                          *&v100[10] = v7;
                          v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - SuspendVio(%d) failed: 0x%08X\n\n";
                          v11 = v100;
                          v12 = v67;
                          v13 = 14;
                          goto LABEL_23;
                        }

                        return v7;
                      }

                      H16ISP::H16ISPDevice::GetPoolInfo(*(this + 10), *(this + 24), 24, this + 25, 0);
                      if (v69)
                      {
                        v7 = v69;
                        v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                        {
                          v6 = os_log_create("com.apple.isp", "general");
                          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                        }

                        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                        {
                          return v7;
                        }

                        *v100 = 67109120;
                        *&v100[4] = v7;
                        v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - GetPoolInfo failed: 0x%08X\n\n";
                      }

                      else
                      {
                        *v76 = 0;
                        H16ISP::H16ISPGetYUVSBufferParamsForDataBufferSize(v80, &v76[1], v76, v70);
                        v71 = *(this + 63);
                        if (!v71)
                        {
                          v71 = 1;
                          *(this + 63) = 1;
                        }

                        v72 = *(this + 11);
                        v73 = *(this + 25);
                        memset(v100, 0, sizeof(v100));
                        LOBYTE(v75) = 1;
                        HIDWORD(v74) = v71 + 5;
                        LODWORD(v74) = 128;
                        v7 = H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v72, 24, v73, v76[1], v76[0], 0, 0, 7, 0.0, v100, 0, v74, 0, 4, 0, @"VIO", 0, 0, 0, v75);
                        if (!v7)
                        {
                          return v7;
                        }

                        v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
                        {
                          v6 = os_log_create("com.apple.isp", "general");
                          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
                        }

                        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
                        {
                          return v7;
                        }

                        *v100 = 67109120;
                        *&v100[4] = v7;
                        v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - addBufferPoolToFrameReceiver failed: 0x%08X\n\n";
                      }
                    }
                  }
                }
              }
            }
          }

          v11 = v100;
          goto LABEL_21;
        }

        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
        {
          v15 = os_log_create("com.apple.isp", "general");
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v100 = 67109120;
          *&v100[4] = v7;
          v8 = "H16ISPGraphVIOCameraControlNode::InitVIO - sCIspCmdChVioInputConfigGet failed: 0x%08X\n\n";
          v11 = v100;
          v12 = v15;
          goto LABEL_22;
        }
      }
    }
  }

  return v7;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::onDeactivate(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::onDeactivate\n\n", v4, 2u);
  }

  H16ISP::H16ISPGraphVIOCameraControlNode::DeInitVIO(this);
  return 0;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::DeInitVIO(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v3 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::DeInitVIO\n\n", v8, 2u);
  }

  bzero(v8, 0x14uLL);
  v8[2] = 12549;
  v9 = *(this + 24);
  v10 = 0;
  v4 = H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v8, 0x14u, 0, 0xFFFFFFFF);
  if (v4)
  {
    v5 = v4;
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v3)
    {
      v6 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v12 = v5;
      _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::DeInitVIO - sCIspCmdChVioEnable (false) failed: 0x%08X\n\n", buf, 8u);
    }
  }

  if (*(this + 14))
  {
    CVHWAFeatureExtractionRelease();
  }

  if (*(this + 15))
  {
    CVHWAFeatureExtractionConfigRelease();
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::onMessageProcessing(H16ISP::H16ISPGraphVIOCameraControlNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock((a2 + 8));
  v4 = *(a2 + 25);
  if (v4)
  {
    v5 = (a2 + 112);
    while (*v5 != 24)
    {
      v5 += 4;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v6 = *(v5 - 1);
    CVPixelBufferRetain(v6);
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

  pthread_mutex_unlock((a2 + 8));
  v7 = *(this + 83);
  if (v7 && (v8 = v7 - 1, (*(this + 83) = v8) == 0) && (v13 = H16ISP::H16ISPGraphVIOCameraControlNode::SetVIORunTimeParameters(this, *(this + 80), -1, *(this + 172), this + 45)) != 0)
  {
    v14 = v13;
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v15 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v15;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = "onMessageProcessing";
      v18 = 1024;
      v19 = v14;
      _os_log_impl(&dword_2247DB000, v15, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::%s - SetVIORunTimeParameters failed: 0x%08X\n\n", &v16, 0x12u);
    }
  }

  else if (v6)
  {
    v9 = CVHWAFeatureExtractionProcessHwOutputs();
    if (v9)
    {
      v10 = v9;
      v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v11 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 67109120;
        LODWORD(v17) = v10;
        _os_log_impl(&dword_2247DB000, v11, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::onMessageProcessing - CVHWAFeatureExtractionProcessHwOutputs failed: %d\n\n", &v16, 8u);
      }
    }

    CVPixelBufferRelease(v6);
  }

  return 0;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::SetVIORunTimeParameters(H16ISP::H16ISPGraphVIOCameraControlNode *this, int a2, int a3, int a4, unsigned int *a5)
{
  *(this + 62) = a3;
  bzero(v12, 0x3CuLL);
  v13 = 12548;
  v14 = *(this + 24);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  if (a5)
  {
    v10 = *(a5 + 1);
    v18 = *a5;
    v19 = v10;
    v20 = a5[8];
  }

  return H16ISP::H16ISPDevice::ISP_SendCommand(*(this + 10), v12, 0x3Cu, 0, 0xFFFFFFFF);
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::TriggerBurstMode(H16ISP::H16ISPGraphVIOCameraControlNode *this)
{
  v1 = *(this + 82);
  *(this + 83) = v1;
  if (v1)
  {
    return H16ISP::H16ISPGraphVIOCameraControlNode::SetVIORunTimeParameters(this, *(this + 81), -1, *(this + 172), this + 45);
  }

  else
  {
    return 0;
  }
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::Suspend(uint64_t this)
{
  *(this + 217) = 1;
  if (*(this + 16) == 1)
  {
    return H16ISP::H16ISPDevice::SuspendVio(*(this + 80), *(this + 96), 1);
  }

  return this;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::Resume(uint64_t this)
{
  *(this + 217) = 0;
  if (*(this + 16) == 1)
  {
    return H16ISP::H16ISPDevice::SuspendVio(*(this + 80), *(this + 96), 0);
  }

  return this;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::AdjustStreamFrameRate(H16ISP::H16ISPGraphVIOCameraControlNode *this, float a2, double a3)
{
  v18 = *MEMORY[0x277D85DE8];
  *(this + 55) = a2;
  if (*(this + 16) != 1)
  {
    goto LABEL_9;
  }

  *&a3 = a2;
  if (a2 <= 0.0)
  {
    *(this + 55) = 1114636288;
    LODWORD(a3) = 1114636288;
  }

  v5.i32[0] = *(this + 56);
  if (v5.f32[0] <= 0.0)
  {
    *(this + 56) = LODWORD(a3);
    v5.i32[0] = LODWORD(a3);
  }

  v6 = *(this + 57);
  if (v6 <= 0.0)
  {
    *(this + 57) = LODWORD(a3);
    v6 = *&a3;
  }

  *&a3 = *&a3;
  v5.f32[1] = v6;
  v7 = vmax_u32(vcvt_u32_f32(vdiv_f32(vdup_lane_s32(*&a3, 0), v5)), 0x100000001);
  *(this + 40) = v7;
  if (!*(this + 83))
  {
    v8 = H16ISP::H16ISPGraphVIOCameraControlNode::SetVIORunTimeParameters(this, v7.i32[0], -1, *(this + 172), this + 45);
  }

  else
  {
LABEL_9:
    v8 = 0;
  }

  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(this + 80);
    v12 = 134218496;
    v13 = a2;
    v14 = 1024;
    v15 = v10;
    v16 = 1024;
    v17 = v8;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode::AdjustStreamFrameRate - newStreamFrameRate=%.3f, decimationFactorForVIOFrameRate=%d, res=0x%08X\n\n", &v12, 0x18u);
  }

  return v8;
}

uint64_t H16ISP::H16ISPGraphVIOCameraControlNode::H16ISPGraphVIOCameraControlNode(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(a1, 9);
  *v8 = &unk_2838149B8;
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode Constructor\n\n", v11, 2u);
  }

  mach_timebase_info((a1 + 104));
  *(a1 + 80) = a2;
  *(a1 + 96) = a3;
  memmove((a1 + 216), a4, 0x68uLL);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  return a1;
}

void H16ISP::H16ISPGraphVIOCameraControlNode::~H16ISPGraphVIOCameraControlNode(NSObject **this)
{
  *this = &unk_2838149B8;
  v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v2 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "H16ISPGraphVIOCameraControlNode Destructor\n\n", v3, 2u);
  }

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPGraphVIOCameraControlNode::~H16ISPGraphVIOCameraControlNode(this);

  JUMPOUT(0x22AA55B60);
}

BOOL H16ISP::savePeridotCalib(H16ISP *this, H16ISP::H16ISPDevice *a2, H16ISP::H16ISPServicesRemote *a3, void *a4, const void *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v10 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v11 = os_log_create("com.apple.isp", "general");
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;

    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315138;
    v30 = "savePeridotCalib";
    _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "%s - saving calibration\n", &v29, 0xCu);
  }

  if (!a4)
  {
    return 0;
  }

  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v10)
  {
    v14 = os_log_create("com.apple.isp", "general");
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;

    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 136315138;
    v30 = "savePeridotCalib";
    _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - updating firmware\n", &v29, 0xCu);
  }

  if (H16ISP::savePeridotCalibToFW(this, a3, a4, v16))
  {
    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (a2)
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v10)
      {
        v18 = os_log_create("com.apple.isp", "general");
        v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;

        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315138;
        v30 = "savePeridotCalib";
        _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "%s - sending to daemon to store\n", &v29, 0xCu);
      }

      v20 = CFRetain(a4);
      if (v20)
      {
        v21 = v20;
        H16ISP::H16ISPServicesRemote::SaveJasperCalibData(a2, v20);
        CFRelease(v21);
      }
    }

    else
    {
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v10)
      {
        v26 = os_log_create("com.apple.isp", "general");
        v27 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v26;

        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 136315138;
        v30 = "savePeridotCalib";
        _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "%s - storing locally\n", &v29, 0xCu);
      }

      JasperCalibration::save(a4, v28);
    }

    return 1;
  }

  v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v10)
  {
    v23 = os_log_create("com.apple.isp", "general");
    v24 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v23;

    v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  result = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v29 = 136315138;
    v30 = "savePeridotCalib";
    _os_log_impl(&dword_2247DB000, v22, OS_LOG_TYPE_DEFAULT, "%s - failed to update calibration in firmware\n", &v29, 0xCu);
    return 0;
  }

  return result;
}

BOOL H16ISP::setPeridotCalib(H16ISP *this, xpc_connection_t *a2, H16ISP::H16ISPServicesRemote *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  PeridotCalib = H16ISP::createPeridotCalib(this, a2, 0);
  if (!PeridotCalib)
  {
    return 0;
  }

  v6 = PeridotCalib;
  v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  v8 = MEMORY[0x277D86220];
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v9 = os_log_create("com.apple.isp", "general");
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;

    v7 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "setPeridotCalib";
    _os_log_impl(&dword_2247DB000, v7, OS_LOG_TYPE_DEFAULT, "%s - updating firmware\n", &v17, 0xCu);
  }

  v12 = H16ISP::savePeridotCalibToFW(this, a3, v6, v11);
  if (!v12)
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == v8)
    {
      v14 = os_log_create("com.apple.isp", "general");
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;

      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "setPeridotCalib";
      _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - failed to update firmware\n", &v17, 0xCu);
    }
  }

  CFRelease(v6);
  return v12;
}

BOOL H16ISP::savePeridotCalibToFW(H16ISP *this, H16ISP::H16ISPDevice *a2, uint64_t a3, const void *a4)
{
  v4 = a2;
  v31 = *MEMORY[0x277D85DE8];
  H16ISP::JasperConfigManager::getJasperOptionsDict(this);
  IspFirmwareCalibWithOptions = PDPeridotCalibCreateIspFirmwareCalibWithOptions();
  if (IspFirmwareCalibWithOptions)
  {
    v7 = IspFirmwareCalibWithOptions;
    if (CFDataGetLength(IspFirmwareCalibWithOptions) == 536)
    {
      bzero(buf, 0x228uLL);
      LOWORD(v26) = 14087;
      HIDWORD(v26) = v4;
      v32.location = 0;
      v32.length = 536;
      CFDataGetBytes(v7, v32, &Length + 2);
      v8 = H16ISP::H16ISPDevice::ISP_SendCommand(this, buf, 0x228u, 0, 0xFFFFFFFF);
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "general");
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;

        v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315394;
        v22 = "savePeridotCalibToFW";
        v23 = 1024;
        v24 = v8;
        _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "%s - updating firmware: %d\n", &v21, 0x12u);
      }

      CFRelease(v7);
      return v8 == 0;
    }

    v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v18 = os_log_create("com.apple.isp", "general");
      v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;

      v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    v20 = v17;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v26 = "savePeridotCalibToFW";
      v27 = 2048;
      Length = CFDataGetLength(v7);
      v29 = 2048;
      v30 = 536;
      _os_log_impl(&dword_2247DB000, v20, OS_LOG_TYPE_DEFAULT, "%s - updating firmware: unexpected size: %ld != %lu\n", buf, 0x20u);
    }

    CFRelease(v7);
    return 0;
  }

  v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v14 = os_log_create("com.apple.isp", "general");
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;

    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  v16 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v16)
  {
    *buf = 136315138;
    v26 = "savePeridotCalibToFW";
    _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "%s - updating firmware: bad input\n", buf, 0xCu);
    return 0;
  }

  return result;
}

void H16ISP::H16ISPJasperDepthNode::H16ISPJasperDepthNode(H16ISP::H16ISPJasperDepthNode *this, H16ISP::H16ISPDevice *a2, int a3, int a4, int a5, H16ISP::H16ISPServicesRemote *a6)
{
  H16ISP::H16ISPFilterGraphNode::H16ISPFilterGraphNode(this, 11);
  *v12 = &unk_283814A30;
  *(v12 + 80) = a2;
  *(v12 + 88) = a6;
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 112) = vdup_n_s32(0x42F00000u);
  *(v12 + 120) = a3;
  *(v12 + 128) = a4;
  *(v12 + 132) = a5;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 152) = 0;
  *(v12 + 160) = 1;
  mach_timebase_info((v12 + 168));
  *(this + 213) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 31) = H16ISP::H16ISPDevice::getSensorChannel(a2, 1785950322, 1852793709);
  *(this + 56) = H16ISP::H16ISPGetCFPreferenceNumber(@"JasperCongestionLimit", @"com.apple.coremedia", 2);
  operator new();
}

void H16ISP::H16ISPJasperDepthNode::~H16ISPJasperDepthNode(H16ISP::H16ISPJasperDepthNode *this)
{
  *this = &unk_283814A30;
  *(this + 228) = 1;
  v2 = objc_autoreleasePoolPush();
  v3 = *(this + 26);
  if (v3)
  {
    os_workgroup_cancel(v3);
    v4 = *(this + 26);
    *(this + 26) = 0;
  }

  objc_autoreleasePoolPop(v2);
  v5 = *(this + 27);
  if (v5)
  {
    dispatch_async_and_wait(v5, &__block_literal_global_11);
    v6 = *(this + 27);
    *(this + 27) = 0;
  }

  v7 = *(this + 13);
  if (v7)
  {
    H16ISP::JasperDepthNodeInternal::~JasperDepthNodeInternal(v7);
    MEMORY[0x22AA55B60]();
  }

  *(this + 13) = 0;
  v8 = *(this + 18);
  if (v8)
  {
    CFRelease(v8);
  }

  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);
}

{
  H16ISP::H16ISPJasperDepthNode::~H16ISPJasperDepthNode(this);

  JUMPOUT(0x22AA55B60);
}

H16ISP::H16ISPTimeOfFlightColorSynchronizer *H16ISP::H16ISPJasperDepthNode::setJasperMode(id **this)
{
  v2 = [*this[13] expectedBanksPerFrame];
  if (v2 < 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 8u / v2;
  }

  result = this[12];
  if (result)
  {

    return H16ISP::H16ISPTimeOfFlightColorSynchronizer::setCloudsPerImage(result, v3);
  }

  return result;
}

uint64_t H16ISP::H16ISPJasperDepthNode::setGmoShouldDropBeforeWakeup(H16ISP::H16ISPJasperDepthNode *this, char a2)
{
  v2 = *(this + 152);
  if ((v2 & 1) == 0)
  {
    *(this + 154) = a2;
  }

  return v2 ^ 1u;
}

uint64_t H16ISP::H16ISPJasperDepthNode::setGmoDebugMode(H16ISP::H16ISPJasperDepthNode *this, char a2)
{
  v2 = *(this + 152);
  if ((v2 & 1) == 0)
  {
    *(this + 155) = a2;
  }

  return v2 ^ 1u;
}

void H16ISP::H16ISPJasperDepthNode::setBufferPool(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 144);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
    }

    *(a1 + 144) = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    if (*v5)
    {
      v6 = *(a1 + 216);
      if (v6)
      {
        v7 = *(a1 + 144);
        if (v7)
        {
          CFRetain(*(a1 + 144));
          v6 = *(a1 + 216);
        }

        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = ___ZN6H16ISP21H16ISPJasperDepthNode13setBufferPoolEP18__CVDataBufferPool_block_invoke;
        v8[3] = &__block_descriptor_48_e5_v8__0l;
        v8[4] = a1;
        v8[5] = v7;
        dispatch_async(v6, v8);
      }
    }
  }
}

void ___ZN6H16ISP21H16ISPJasperDepthNode13setBufferPoolEP18__CVDataBufferPool_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 228) & 1) == 0)
  {
    v3 = *(v2 + 104);
    if (v3)
    {
      if (*v3)
      {
        [*v3 setDataBufferPool:*(a1 + 40)];
      }
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t H16ISP::H16ISPJasperDepthNode::onActivate(H16ISP::H16ISPJasperDepthNode *this)
{
  v16 = *MEMORY[0x277D85DE8];
  *(this + 152) = 0;
  *(this + 23) = 0;
  if (*(this + 26))
  {
    goto LABEL_4;
  }

  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  v13 = 0u;
  v12 = 799564724;
  if (os_workgroup_attr_set_flags())
  {
    H16ISP::H16ISPJasperDepthNode::onActivate();
  }

  v2 = os_workgroup_create();
  v3 = *(this + 26);
  *(this + 26) = v2;

  if (*(this + 26))
  {
LABEL_4:
    v4 = *(this + 27);
    if (v4 || (inactive = dispatch_workloop_create_inactive("com.apple.h16jaspernode.workloop"), v6 = *(this + 27), *(this + 27) = inactive, v6, dispatch_workloop_set_os_workgroup(*(this + 27), *(this + 26)), dispatch_activate(*(this + 27)), (v4 = *(this + 27)) != 0))
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___ZN6H16ISP21H16ISPJasperDepthNode10onActivateEv_block_invoke;
      v11[3] = &__block_descriptor_40_e5_v8__0l;
      v11[4] = this;
      dispatch_async(v4, v11);
      *(this + 153) = 0;
    }
  }

  else
  {
    v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v9 = os_log_create("com.apple.isp", "general");
      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;

      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      H16ISP::H16ISPJasperDepthNode::onActivate(v8);
    }
  }

  return 0;
}

void ___ZN6H16ISP21H16ISPJasperDepthNode10onActivateEv_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  PeridotCalib = H16ISP::createPeridotCalib(*(v1 + 80), *(v1 + 88), 0);
  if (PeridotCalib)
  {
    v3 = PeridotCalib;
    v4 = CFRetain(PeridotCalib);
    if (H16ISP::H16ISPDevice::GetCameraConfig(*(v1 + 80), *(v1 + 124), 0, v34, v35))
    {
      CFRelease(v3);
    }

    else
    {
      v5 = [MEMORY[0x277D3A158] calibrationDataWithPeridotCalib:v4 platformId:*(v1 + 120) sensorVersion:v36];
      if (v5)
      {
        H16ISP::JasperDepthNodeInternal::validate(*(v1 + 104), *(v1 + 80), *(v1 + 124), *(v1 + 88), v5, *(v1 + 112), *(v1 + 116));
        v6 = **(v1 + 104);
        v7 = *(v1 + 88);
        if (v7)
        {
          theDict.columns[0].i64[0] = 0;
          H16ISP::H16ISPServicesRemote::ReadDictionary(v7, @"/var/mobile/Library/ISP/JasperL/session_persistency.plist", &theDict);
          if (theDict.columns[0].i64[0])
          {
            MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict.columns[0].i64[0]);
            CFRelease(theDict.columns[0].i64[0]);
          }

          else
          {
            MutableCopy = 0;
          }
        }

        else
        {
          v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/var/mobile/Library/ISP/JasperL/session_persistency.plist"];
          MutableCopy = [v9 mutableCopy];

          if (MutableCopy)
          {
            v10 = MutableCopy;
          }
        }

        *(v1 + 192) = MutableCopy;
        v11 = [(__CFDictionary *)MutableCopy objectForKeyedSubscript:@"DepthProcessor"];
        if (v11)
        {
          [v6 setInternalState:v11];
        }

        v12 = *(v1 + 144);
        if (v12)
        {
          v13 = CFRetain(v12);
          v14 = *(v1 + 216);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ___ZN6H16ISP21H16ISPJasperDepthNode10onActivateEv_block_invoke_2;
          block[3] = &unk_27853B7D8;
          v32 = v6;
          v33 = v13;
          dispatch_async(v14, block);
        }

        if (*(v1 + 155) == 1)
        {
          v12 = [v6 setGmoDebugMode];
        }

        isValidSequenceApplied = H16ISP::JasperConfigManager::isValidSequenceApplied(v12);
        if (!isValidSequenceApplied)
        {
          NSLog(&cfstr_Jasperdepthnod_1.isa);
        }

        FrameMode = H16ISP::JasperConfigManager::getFrameMode(isValidSequenceApplied);
        if (FrameMode == 108)
        {
          v17 = 2;
        }

        else
        {
          v17 = FrameMode == 104;
        }

        [*(*(v1 + 104) + 8) setGmoFlowBitmask:0];
        [**(v1 + 104) setGmoFlowBitmap:0];
        LODWORD(v18) = *(v1 + 128);
        LODWORD(v19) = *(v1 + 132);
        [v6 prepareForPeridotPreset:v17 rawSensorDimensions:{v18, v19}];
        v20 = *(v1 + 96);
        if (v20 && (*(v1 + 136) || H16ISP::H16ISPTimeOfFlightColorSynchronizer::isAutoFocusAssistanceActive(v20)))
        {
          PDPeridotCalibGetOperationalWideToPeridotTransform();
          theDict.columns[0] = v21;
          theDict.columns[1] = v22;
          theDict.columns[2] = v23;
          theDict.columns[3] = v24;
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setWideToTofExtrinsics(*(v1 + 96), &theDict);
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::setFWProjectorMode(*(v1 + 96), 1);
          v25 = *(v1 + 120);
          v26 = v36;
          v27 = *(v1 + 96);
          v28 = **(v1 + 104);
          v29 = v28;
          H16ISP::H16ISPTimeOfFlightColorSynchronizer::activate(v27, v4, v25, v26, v28);
        }

        [v6 startNewStatisticsSession];
        H16ISP::H16ISPJasperDepthNode::setJasperMode(v1);
        *(v1 + 152) = 1;
        CFRelease(v3);
      }

      else
      {
        CFRelease(v3);
      }
    }
  }

  else
  {
    NSLog(&cfstr_Jasperdepthnod_0.isa);
  }
}

uint64_t H16ISP::JasperDepthNodeInternal::validate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, float a6, float a7)
{
  v13 = a5;
  v14 = *(a1 + 8);
  if (!v14 || ![v14 isSameDevice:a2])
  {
    v17 = [[JasperDepthProvider alloc] initWithDevice:a2 andChannel:a3 andRemote:a4];
    v18 = *(a1 + 8);
    *(a1 + 8) = v17;

    v20 = *(a1 + 8);
    if (v20)
    {
      *&v19 = a6;
      [v20 setJasperFrameRateMin:v19];
      *&v21 = a7;
      [*(a1 + 8) setJasperFrameRateMax:v21];
      v22 = [objc_alloc(MEMORY[0x277D3A148]) initWithSystemCalibrationData:v13];
      v23 = *a1;
      *a1 = v22;

      v24 = *(a1 + 8);
      if (*a1)
      {
        [*a1 setDelegate:v24];
        v25 = H16ISP::H16ISPGetCFPreferenceNumber(@"JasperDumpRawBuffers", @"com.apple.coremedia", 0);
        *(a1 + 16) = v25 != 0;
        if (v25)
        {
          v26 = NSTemporaryDirectory();
          v27 = [v26 stringByAppendingPathComponent:@"JasperRawBuffers"];
          v28 = *(a1 + 32);
          *(a1 + 32) = v27;

          NSLog(&cfstr_DumpingTofRawB.isa, *(a1 + 32));
          v29 = [MEMORY[0x277CCAA00] defaultManager];
          v30 = *(a1 + 32);
          v36 = 0;
          [v29 createDirectoryAtPath:v30 withIntermediateDirectories:1 attributes:0 error:&v36];
          v31 = v36;

          v32 = objc_opt_new();
          v33 = *(a1 + 24);
          *(a1 + 24) = v32;

          [*(a1 + 24) setDateFormat:@"yyyyMMdd-HHmmss-SSS"];
        }

        goto LABEL_8;
      }

      *(a1 + 8) = 0;
    }

    v34 = 0;
    goto LABEL_11;
  }

  *&v15 = a6;
  [*(a1 + 8) setJasperFrameRateMin:v15];
  *&v16 = a7;
  [*(a1 + 8) setJasperFrameRateMax:v16];
LABEL_8:
  v34 = 1;
LABEL_11:

  return v34;
}

void ___ZN6H16ISP21H16ISPJasperDepthNode10onActivateEv_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDataBufferPool:*(a1 + 40)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

uint64_t H16ISP::H16ISPJasperDepthNode::onDeactivate(H16ISP::H16ISPJasperDepthNode *this)
{
  *(this + 76) = 0;
  v2 = *(this + 27);
  if (v2)
  {
    dispatch_async_and_wait(v2, &__block_literal_global_99);
    v3 = *(this + 27);
    *(this + 27) = 0;
  }

  v4 = *(this + 12);
  if (v4)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::deactivate(v4);
  }

  v5 = *(this + 24);
  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v6 = **(this + 13);
  if (v6)
  {
    [v6 reportSessionStatistics];
    v7 = [**(this + 13) getInternalState];
    if (v7)
    {
      [v5 setObject:v7 forKey:@"DepthProcessor"];
    }
  }

  v8 = *(this + 10);
  v9 = *(this + 23);
  v10 = v5;
  v11 = [v10 objectForKeyedSubscript:@"JasperTotalFrameCount"];
  v12 = [v11 longLongValue];

  v13 = [v10 objectForKeyedSubscript:@"JasperFramesSinceLastTransition"];
  v14 = [v13 longLongValue];

  v15 = [v10 objectForKeyedSubscript:@"JasperCurrentState"];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 intValue];
  }

  else
  {
    v17 = 1;
  }

  v18 = [v10 objectForKeyedSubscript:@"JasperStateTransitionCount"];
  v19 = [v18 intValue];

  JasperStatistics = H16ISP::H16ISPDevice::ISP_GetJasperStatistics(v8, outputStruct);
  v21 = v14 + v9;
  if (!JasperStatistics)
  {
    if (v17 != outputStruct[0])
    {
      v19 = (v19 + 1);
      reportJasperStateAnalytics(v17, outputStruct[0], v12 + v9, v14 + v9, v19, outputStruct[3], outputStruct[1]);
      v21 = 0;
    }

    if (v33)
    {
      v22 = 0;
      v23 = &v32;
      do
      {
        reportPeridotCoexRetries(*(v23 - 1), *v23);
        v23 += 2;
        ++v22;
      }

      while (v22 < v33);
    }
  }

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
  [v10 setObject:v24 forKeyedSubscript:@"JasperFramesSinceLastTransition"];

  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:outputStruct[0]];
  [v10 setObject:v25 forKeyedSubscript:@"JasperCurrentState"];

  v26 = [MEMORY[0x277CCABB0] numberWithInt:v19];
  [v10 setObject:v26 forKeyedSubscript:@"JasperStateTransitionCount"];

  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12 + v9];
  [v10 setObject:v27 forKeyedSubscript:@"JasperTotalFrameCount"];

  v28 = *(this + 11);
  if (v28)
  {
    H16ISP::H16ISPServicesRemote::WriteDictionary(v28, @"/var/mobile/Library/ISP/JasperL/session_persistency.plist", v10);
  }

  else
  {
    [v10 writeToFile:@"/var/mobile/Library/ISP/JasperL/session_persistency.plist" atomically:1];
  }

  v29 = *(this + 25);
  if (v29)
  {
    CFRelease(v29);
  }

  return 0;
}

uint64_t H16ISP::H16ISPJasperDepthNode::onMessageProcessing(H16ISP::H16ISPJasperDepthNode *this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  pthread_mutex_lock((a2 + 8));
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = a2 + 112;
  do
  {
    v8 = a2 + 344 * v4 + 80;
    if (*(v8 + 4) == *(this + 31))
    {
      v9 = *(v8 + 5);
      if (v9)
      {
        v10 = v7;
        v11 = v7;
        do
        {
          v12 = *v11;
          v11 += 4;
          if (v12 == 1)
          {
            v5 = *(v10 - 1);
            v6 = *(v8 + 1);
          }

          v10 = v11;
          --v9;
        }

        while (v9);
      }
    }

    ++v4;
    v7 += 344;
  }

  while (v4 != 3);
  pthread_mutex_unlock((a2 + 8));
  if (!v5)
  {
    return 0;
  }

  v13 = 3758097130;
  H16ISP::JasperDepthNodeInternal::saveBuffer(*(this + 13), v5);
  ++*(this + 23);
  Attachment = CVBufferGetAttachment(v5, *MEMORY[0x277CF3F70], 0);
  if (H16ISP::H16ISPJasperDepthNode::updateJasperMetadata(this, v5, Attachment))
  {
    v15 = *(*(this + 13) + 8);
    v16 = ([v15 isValid] & 1) == 0 && objc_msgSend(*(*(this + 13) + 8), "gmoFlowBitmask") != 0;

    CVPixelBufferLockBaseAddress(v5, 1uLL);
    CVPixelBufferGetBaseAddress(v5);
    if (*(this + 12))
    {
      shouldProcessForAutoFocus = H16ISP::H16ISPTimeOfFlightColorSynchronizer::shouldProcessForAutoFocus(*(this + 12));
      CVPixelBufferUnlockBaseAddress(v5, 1uLL);
      if (shouldProcessForAutoFocus)
      {
        goto LABEL_23;
      }
    }

    else
    {
      CVPixelBufferUnlockBaseAddress(v5, 1uLL);
    }

    v18 = *(this + 12);
    if (v18 && H16ISP::H16ISPTimeOfFlightColorSynchronizer::isFWAFOwner(v18))
    {
      if (!v16)
      {
        return v13;
      }
    }

    else if (!*(this + 34))
    {
      return 0;
    }

LABEL_23:
    if (*(this + 152) == 1)
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v19 = *(this + 27);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___ZN6H16ISP21H16ISPJasperDepthNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke;
      block[3] = &unk_27853B800;
      block[4] = &v22;
      block[5] = this;
      block[6] = v6;
      block[7] = v5;
      block[8] = Attachment;
      dispatch_async_and_wait(v19, block);
      v13 = *(v23 + 6);
      _Block_object_dispose(&v22, 8);
      return v13;
    }

    return 0;
  }

  return v13;
}

void H16ISP::JasperDepthNodeInternal::saveBuffer(H16ISP::JasperDepthNodeInternal *this, CVPixelBufferRef pixelBuffer)
{
  if (pixelBuffer && (*(this + 16) & 1) != 0)
  {
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    v4 = MEMORY[0x277CBEA90];
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    v12 = [v4 dataWithBytesNoCopy:BaseAddress length:CVPixelBufferGetDataSize(pixelBuffer) freeWhenDone:0];
    v6 = MEMORY[0x277CCACA8];
    v7 = *(this + 3);
    v8 = *(this + 4);
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = [v7 stringFromDate:v9];
    v11 = [v6 stringWithFormat:@"%@/buffer-%@.raw", v8, v10];

    [v12 writeToFile:v11 atomically:1];
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }
}

uint64_t H16ISP::H16ISPJasperDepthNode::updateJasperMetadata(H16ISP::H16ISPDevice **this, CVPixelBufferRef pixelBuffer, __CFDictionary *a3)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  DataSize = CVPixelBufferGetDataSize(pixelBuffer);
  ChannelSensorID = H16ISP::H16ISPDevice::GetChannelSensorID(this[10], *(this + 31));
  if (ChannelSensorID == 1425)
  {
    if (DataSize <= 0x13F)
    {
      NSLog(&cfstr_UnexpectedPeri.isa, DataSize);
      goto LABEL_14;
    }

    if (BaseAddress[63] != 4)
    {
      NSLog(&cfstr_UnexpectedPeri_0.isa, BaseAddress[63], 4);
    }

    v19 = &BaseAddress[9280 * BaseAddress[51]];
    if (v19 + 384 > &BaseAddress[DataSize])
    {
      NSLog(&cfstr_BadPeridotFram.isa, BaseAddress[51]);
      goto LABEL_14;
    }

    v29 = v19[132] - 1;
    FrameMode = H16ISP::JasperConfigManager::getFrameMode(ChannelSensorID);
    if (FrameMode == 108)
    {
      v22 = 6;
    }

    else if (FrameMode == 104)
    {
      v22 = 5;
    }

    else
    {
      v22 = 1;
    }

    v28 = v22;
    v23 = *MEMORY[0x277CBECE8];
    v24 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, &v28);
    CFDictionarySetValue(a3, *MEMORY[0x277CF52E0], v24);
    CFRelease(v24);
    v17 = CFNumberCreate(v23, kCFNumberSInt8Type, &v29);
    CFDictionarySetValue(a3, @"JasperBankId", v17);
    v18 = *MEMORY[0x277CF52D0];
    goto LABEL_23;
  }

  v9 = 126208;
  if (BaseAddress[7] >= 0)
  {
    v9 = 63088;
  }

  v10 = &BaseAddress[v9];
  v11 = *&BaseAddress[v9];
  if ((v11 - 9) < 2)
  {
    if (!a3)
    {
LABEL_24:
      v20 = 1;
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      return v20;
    }

    v12 = [MEMORY[0x277D3A160] getPresetFromOperationModeNumber:*(v10 + 3)] == 0;
    valuePtr = 4 * v12;
    v13 = *MEMORY[0x277CBECE8];
    v14 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt16Type, &valuePtr);
    CFDictionarySetValue(a3, @"JasperPresetIndex", v14);
    CFRelease(v14);
    v26 = v12;
    v15 = CFNumberCreate(v13, kCFNumberSInt16Type, &v26);
    CFDictionarySetValue(a3, *MEMORY[0x277CF52E0], v15);
    CFRelease(v15);
    v16 = CFNumberCreate(v13, kCFNumberSInt8Type, v10 + 2053);
    CFDictionarySetValue(a3, @"JasperBankId", v16);
    CFDictionarySetValue(a3, *MEMORY[0x277CF52D0], v16);
    CFRelease(v16);
    v17 = CFNumberCreate(v13, kCFNumberSInt16Type, v10 + 2);
    v18 = @"JasperConfigId";
LABEL_23:
    CFDictionarySetValue(a3, v18, v17);
    CFRelease(v17);
    goto LABEL_24;
  }

  if (v11 != -1)
  {
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    NSLog(&cfstr_JasperFrameVDE.isa, *v10, 9);
    return 0;
  }

LABEL_14:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return 0;
}

H16ISP::H16ISPJasperDepthNode *___ZN6H16ISP21H16ISPJasperDepthNode19onMessageProcessingEPNS_24H16ISPFilterGraphMessageE_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if ((*(result + 228) & 1) == 0)
  {
    result = H16ISP::H16ISPJasperDepthNode::processJasper(result, *(a1 + 48), *(a1 + 56), *(a1 + 64));
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t H16ISP::H16ISPJasperDepthNode::processJasper(H16ISP::H16ISPJasperDepthNode *this, uint64_t a2, __CVBuffer *a3, __CFDictionary *a4)
{
  v7 = objc_autoreleasePoolPush();
  if (*(this + 152) != 1)
  {
    goto LABEL_26;
  }

  CVPixelBufferLockBaseAddress(a3, 1uLL);
  kdebug_trace();
  v8 = *(this + 25);
  if (!v8)
  {
    goto LABEL_6;
  }

  Length = CFDataGetLength(v8);
  if (Length < CVPixelBufferGetDataSize(a3))
  {
    CFRelease(*(this + 25));
  }

  v10 = *(this + 25);
  if (!v10)
  {
LABEL_6:
    v11 = *MEMORY[0x277CBECE8];
    DataSize = CVPixelBufferGetDataSize(a3);
    Mutable = CFDataCreateMutable(v11, DataSize);
    *(this + 25) = Mutable;
    v14 = CVPixelBufferGetDataSize(a3);
    CFDataSetLength(Mutable, v14);
    v10 = *(this + 25);
  }

  MutableBytePtr = CFDataGetMutableBytePtr(v10);
  BaseAddress = CVPixelBufferGetBaseAddress(a3);
  v17 = CVPixelBufferGetDataSize(a3);
  memcpy(MutableBytePtr, BaseAddress, v17);
  kdebug_trace();
  kdebug_trace();
  v18 = **(this + 13);
  memset(&v37, 0, sizeof(v37));
  v19 = FigHostTimeToNanoseconds();
  CMTimeMake(&v37, v19, 1000000000);
  v20 = *(this + 25);
  v36 = v37;
  v21 = [v18 generatePointCloudFromRawFrame:v20 timestamp:&v36];
  v22 = CVPixelBufferGetBaseAddress(a3);
  v23 = 126208;
  if (v22[7] >= 0)
  {
    v23 = 63088;
  }

  v24 = v22[v23 + 2053];
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  [v21 length];
  v25 = kdebug_trace();
  if (v21)
  {
    v26 = [v21 dataBuffer];
    v27 = v26;
    if (v26)
    {
      Attachment = CVBufferGetAttachment(v26, @"Metadata", 0);
      v29 = CVBufferGetAttachment(a3, *MEMORY[0x277CF3F70], 0);
      if (Attachment && v29)
      {
        CFDictionaryApplyFunction(Attachment, H16ISP::AppendDictionary, v29);
        CVBufferRemoveAttachment(v27, @"Metadata");
      }

      CVBufferSetAttachment(a3, @"PointCloudRidingOnRaw", v27, kCVAttachmentMode_ShouldPropagate);
    }

    v30 = *(*(this + 13) + 8);
    if ([v30 isValid])
    {
    }

    else
    {
      v35 = [*(*(this + 13) + 8) gmoFlowBitmask];

      if (*(this + 154) == 1 && v35)
      {
        NSLog(&cfstr_Jasperdepthnod_2.isa);
        v33 = 3758097130;

        goto LABEL_27;
      }
    }

    *(this + 153) = 1;
    v25 = *(this + 12);
    if (v25 && v27 && (*(v25 + 8) & 1) != 0)
    {
      H16ISP::H16ISPTimeOfFlightColorSynchronizer::pushJasperCloud(v25, v27, a4);
    }
  }

  isBurstAllowed = H16ISP::JasperConfigManager::isBurstAllowed(v25);
  v32 = v24 == 3 ? 0 : isBurstAllowed;

  if (v32)
  {
    v33 = 3758097130;
  }

  else
  {
LABEL_26:
    v33 = 0;
  }

LABEL_27:
  objc_autoreleasePoolPop(v7);
  return v33;
}

void H16ISP::JasperDepthNodeInternal::~JasperDepthNodeInternal(H16ISP::JasperDepthNodeInternal *this)
{
  v2 = *this;
  *this = 0;

  v3 = *(this + 1);
  *(this + 1) = 0;

  *(this + 16) = 0;
}

void H16ISP::H16ISPJasperColorNode::~H16ISPJasperColorNode(NSObject **this)
{
  H16ISP::H16ISPFilterGraphNode::~H16ISPFilterGraphNode(this);

  JUMPOUT(0x22AA55B60);
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::~H16ISPTimeOfFlightColorSynchronizer(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizerD2Ev_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_sync(v2, block);
    v3 = *(this + 2);
  }

  else
  {
    v3 = 0;
  }

  *(this + 2) = 0;

  v4 = *(this + 3);
  if (v4)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::~TimeOfFlightColorSynchronizerInternal(v4);
    MEMORY[0x22AA55B60]();
  }
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::activate(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this, const __CFData *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(this + 2);
  if (!v10)
  {
    v11 = H16ISP::CreateFixedPrioritySerialDispatchQueue_arc("com.apple.H16ispjaspercolorcalibration", 0x3A);
    v12 = *(this + 2);
    *(this + 2) = v11;

    v10 = *(this + 2);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer8activateEPK8__CFDatajjPv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_async(v10, block);
  H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::enableClouds(*(this + 3), 2);
  H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::activate(*(this + 3), a2, a3, a4, a5);
}

NSObject *H16ISP::CreateFixedPrioritySerialDispatchQueue_arc(H16ISP *this, const char *a2)
{
  v2 = a2;
  v19 = *MEMORY[0x277D85DE8];
  v4 = dispatch_queue_create(this, 0);
  if (v4)
  {
    snprintf(__str, 0x100uLL, "%s.root", this);
    v5 = strlen(this);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v5;
    if (v5)
    {
      memcpy(&__dst, this, v5);
    }

    __dst.__r_.__value_.__s.__data_[v6] = 0;
    v7 = std::string::append(&__dst, ".thread", 7uLL);
    v8 = v7->__r_.__value_.__r.__words[0];
    size = v7->__r_.__value_.__l.__size_;
    v17[0] = v7->__r_.__value_.__r.__words[2];
    *(v17 + 3) = *(&v7->__r_.__value_.__r.__words[2] + 3);
    v10 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v10 < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v8, size);
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = v8;
      __p.__r_.__value_.__l.__size_ = size;
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v17[0];
      *(&__p.__r_.__value_.__r.__words[2] + 3) = *(v17 + 3);
      *(&__p.__r_.__value_.__s + 23) = v10;
    }

    v15 = v2;
    v11 = dispatch_pthread_root_queue_create();
    if (v11)
    {
      v12 = v11;
      dispatch_set_target_queue(v4, v11);
    }

    else
    {
      v12 = v4;
      v4 = 0;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v10 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v8);
  }

LABEL_18:

  return v4;
}

void sub_22496C1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v24);

  _Unwind_Resume(a1);
}

int *H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::enableClouds(int *this, int a2)
{
  v2 = this;
  if (*(this + 217) != 1 || this[55] != a2)
  {
    *(this + 217) = 1;
    this[55] = a2;
    v3 = objc_alloc(MEMORY[0x277CED118]);
    LODWORD(v4) = v2[67];
    v5 = [v3 initWithStreamCount:1 allowedMatchTimeInterval:v4 / 1000.0];
    v6 = *(v2 + 30);
    *(v2 + 30) = v5;

    LODWORD(v7) = v2[67];
    [*(v2 + 30) setStream:0 queueSize:2 * v2[55] aggregationCount:v7 / 1000.0 allowedAggregationInterval:?];
    v8 = objc_alloc(MEMORY[0x277CED118]);
    LODWORD(v9) = v2[66];
    v10 = [v8 initWithStreamCount:2 allowedMatchTimeInterval:v9 / 1000.0];
    v11 = *(v2 + 31);
    *(v2 + 31) = v10;

    LODWORD(v12) = v2[68];
    [*(v2 + 31) setStream:0 queueSize:2 * v2[55] aggregationCount:v12 / 1000.0 allowedAggregationInterval:?];
    v13 = *(v2 + 31);

    return [v13 setStream:1 queueSize:2];
  }

  return this;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::activate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = a5;
  pthread_mutex_lock((a1 + 128));
  v10 = [MEMORY[0x277D3A158] calibrationDataWithPeridotCalib:a2 platformId:a3 sensorVersion:a4];
  v11 = *(a1 + 200);
  *(a1 + 200) = v10;

  *(a1 + 208) = a3;
  *(a1 + 212) = a4;
  v12 = *(a1 + 8);
  v13 = *(v12 + 96);
  v14 = *(v12 + 112);
  v15 = *(v12 + 128);
  v16 = vzip1q_s32(v13, v15);
  v17 = vzip2q_s32(v13, v15);
  v18 = vdupq_laneq_s32(v14, 2);
  v19 = vtrn2q_s32(v13, v14);
  v19.i32[2] = HIDWORD(*(v12 + 128));
  v20 = vzip1q_s32(v16, v14);
  v21 = vzip1q_s32(v17, v18);
  v22 = vnegq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, COERCE_FLOAT(*(v12 + 144))), v19, *(v12 + 144), 1), v21, *(v12 + 144), 2));
  *(a1 + 56) = v15.i32[0];
  *(a1 + 48) = v20.i64[0];
  *(a1 + 60) = 0;
  *(a1 + 72) = v15.i32[1];
  *(a1 + 64) = v19.i64[0];
  *(a1 + 76) = 0;
  *(a1 + 88) = v15.i32[2];
  *(a1 + 80) = v21.i64[0];
  *(a1 + 92) = 0;
  *(a1 + 104) = v22.i32[2];
  *(a1 + 96) = v22.i64[0];
  *(a1 + 108) = 0;
  objc_storeStrong((a1 + 224), a5);
  if (*(a1 + 112) != 0.0)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::activateColor(a1);
  }

  v23 = *(a1 + 16);
  *(v23 + 32) = mach_absolute_time();
  pthread_mutex_unlock((a1 + 128));
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::deactivate(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this)
{
  if (*(this + 8) == 1)
  {
    block[5] = v1;
    block[6] = v2;
    v3 = *(this + 2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer10deactivateEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_async(v3, block);
  }
}

void ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer10deactivateEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8) == 1)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::deactivate(*(v1 + 24));
  }

  *(v1 + 8) = 0;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::deactivate(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    H16ISP::TimeOfFlightAutoFocusAssistant::deactivate(v2);
  }

  if (*this)
  {
    H16ISP::TimeOfFlightColorInfieldCalibrationManager::deactivate(*this);
  }

  v3 = *(this + 28);
  *(this + 28) = 0;

  v4 = *(this + 35);
  if (v4)
  {
    CVPixelBufferRelease(v4);
  }

  v5 = *(this + 36);
  if (v5)
  {
    CFRelease(v5);
  }

  *(this + 35) = 0;
  *(this + 36) = 0;
  v6 = *(this + 25);
  *(this + 25) = 0;

  v7 = *(this + 24);
  *(this + 24) = 0;
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::setDilutionRate(uint64_t this, int a2)
{
  v2 = **(this + 24);
  *(v2 + 64) = a2;
  *(v2 + 84) = a2;
  *(v2 + 88) = a2;
  *(v2 + 80) = 0;
  return this;
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::setLowFrameInterval(uint64_t this, int a2)
{
  v2 = **(this + 24);
  *(v2 + 84) = a2;
  *(v2 + 80) = *(v2 + 88) != a2;
  *(v2 + 64) = a2;
  return this;
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::setHighFrameInterval(uint64_t this, int a2)
{
  v2 = **(this + 24);
  *(v2 + 88) = a2;
  v3 = *(v2 + 84);
  *(v2 + 80) = v3 != a2;
  *(v2 + 64) = v3;
  return this;
}

__n128 H16ISP::H16ISPTimeOfFlightColorSynchronizer::setWideToTofExtrinsics(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this, const simd_float4x3 *a2)
{
  v2 = *(*(this + 3) + 8);
  v3 = a2->columns[1];
  v4 = a2->columns[2];
  v5 = vzip1q_s32(vzip1q_s32(a2->columns[0], v4), v3);
  v6 = vtrn2q_s32(a2->columns[0], v3);
  v6.i32[2] = HIDWORD(a2->columns[2].i64[0]);
  v7 = vzip1q_s32(vzip2q_s32(a2->columns[0], v4), vdupq_laneq_s32(v3, 2));
  v8 = vnegq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(*&a2->columns[3])), v6, *a2->columns[3].f32, 1), v7, a2->columns[3], 2));
  *(v2 + 104) = v4.i32[0];
  *(v2 + 120) = v4.i32[1];
  *(v2 + 96) = v5.i64[0];
  *(v2 + 112) = v6.i64[0];
  *(v2 + 136) = v4.i32[2];
  *(v2 + 128) = v7.i64[0];
  *(v2 + 152) = v8.i32[2];
  *(v2 + 144) = v8.i64[0];
  v9 = *(v2 + 112);
  *(v2 + 160) = *(v2 + 96);
  *(v2 + 176) = v9;
  result = *(v2 + 128);
  v11 = *(v2 + 144);
  *(v2 + 192) = result;
  *(v2 + 208) = v11;
  return result;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::pushJasperCloud(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this, CVBufferRef buffer, const __CFDictionary *a3)
{
  CVBufferRetain(buffer);
  if (a3)
  {
    CFRetain(a3);
  }

  v6 = *(this + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer15pushJasperCloudEP10__CVBufferPK14__CFDictionary_block_invoke;
  block[3] = &__block_descriptor_56_e5_v8__0l;
  block[4] = this;
  block[5] = buffer;
  block[6] = a3;
  dispatch_async(v6, block);
}

void ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer15pushJasperCloudEP10__CVBufferPK14__CFDictionary_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::processCloud(*(v2 + 24), *(a1 + 40), *(a1 + 48));
  }

  CVBufferRelease(*(a1 + 40));
  v3 = *(a1 + 48);
  if (v3)
  {

    CFRelease(v3);
  }
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::processCloud(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this, __CVBuffer *a2, const __CFDictionary *a3)
{
  if (*(this + 344) == 1)
  {
    v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v7 = os_log_create("com.apple.isp", "general");
      v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v7;

      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_2247DB000, v6, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: processCloud\n", &buf, 2u);
    }
  }

  v9 = [MEMORY[0x277CED0A8] makeWithDataBuffer:a2];
  if (v9)
  {
    Value = CFDictionaryGetValue(a3, *MEMORY[0x277CF3F80]);
    memset(&buf, 0, sizeof(buf));
    CMTimeMakeFromDictionary(&buf, Value);
    v11 = 0;
    while (v11 < [v9 length])
    {
      if (!*([v9 bankIds] + v11++))
      {
        [*(this + 30) reset];
        break;
      }
    }

    v13 = *(this + 30);
    v22 = buf;
    Seconds = CMTimeGetSeconds(&v22);
    v15 = MEMORY[0x277D860B8];
    v16 = [v13 pushData:v9 streamIndex:0 timestamp:a3 pose:Seconds meta:{*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)}];
    if (v16)
    {
      if (*(this + 344) == 1)
      {
        v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v18 = os_log_create("com.apple.isp", "general");
          v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v18;

          v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22.value) = 0;
          _os_log_impl(&dword_2247DB000, v17, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: processCloud found match\n", &v22, 2u);
        }
      }

      H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleAggregation(this, v16);
    }

    v20 = *(this + 31);
    v22 = buf;
    v21 = [v20 pushData:v9 streamIndex:0 timestamp:a3 pose:CMTimeGetSeconds(&v22) meta:{*v15, v15[2], v15[4], v15[6]}];

    if (v21)
    {
      H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleInfieldMatch(this, v21);
    }
  }
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::pushColorMessage(uint64_t this, H16ISP::H16ISPFilterGraphMessage *a2)
{
  v42 = this;
  if (*(this + 8) == 1)
  {
    pthread_mutex_lock((a2 + 8));
    v3 = 0;
    v41 = a2 + 80;
    v4 = *MEMORY[0x277CF3F70];
    v40 = *MEMORY[0x277CF5278];
    v38 = *MEMORY[0x277CF5288];
    v37 = *MEMORY[0x277CF3CD8];
    v39 = *MEMORY[0x277CF51C8];
    v35 = *MEMORY[0x277CF5138];
    v34 = *MEMORY[0x277CF5338];
    v33 = *MEMORY[0x277CF5128];
    v36 = a2;
    v32 = *MEMORY[0x277CF5300];
    v5 = (a2 + 112);
    v31 = *MEMORY[0x277CF5110];
    v30 = *MEMORY[0x277CF4D60];
    while (1)
    {
      v6 = &v41[344 * v3];
      if (*(v6 + 5))
      {
        break;
      }

LABEL_35:
      ++v3;
      v5 += 86;
      if (v3 == 3)
      {
        return pthread_mutex_unlock((v36 + 8));
      }
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v43 = v5;
    do
    {
      v12 = *v5;
      if (*v5 == 7 || v12 == 1)
      {
        v8 = 1;
      }

      else if (!v12)
      {
        v9 = *(v5 - 1);
        v14 = CVBufferGetAttachment(v9, v4, 0);

        v12 = *v5;
        v11 = v14;
      }

      if (v12 == 10)
      {
        v10 = *(v5 - 1);
        if (!v11)
        {
          v11 = CVBufferGetAttachment(*(v5 - 1), v4, 0);
        }
      }

      ++v7;
      v5 += 4;
    }

    while (v7 < *(v6 + 5));
    v15 = [v11 objectForKeyedSubscript:v40];
    v16 = [v15 isEqual:&unk_283820080];

    if (!(v8 & 1 | ((*(*(*(v42 + 24) + 8) + 225) & v16 & 1) == 0)))
    {
      v17 = [v11 objectForKeyedSubscript:v38];
      v18 = [v17 objectForKeyedSubscript:v37];
      v19 = [v18 objectForKeyedSubscript:v39];
      v20 = [v19 isEqual:&unk_283820080];

      if (v20)
      {
        [v18 setObject:&unk_283820098 forKeyedSubscript:v39];
      }
    }

    if (!(v9 | v10) || *(v6 + 4) != *(v42 + 32))
    {
LABEL_34:

      v5 = v43;
      goto LABEL_35;
    }

    if (v9)
    {
      Attachment = CVBufferGetAttachment(v9, v4, 0);
      if (Attachment)
      {
        DeepCopy = H16ISP::dictionaryCreateDeepCopy(Attachment, v22);
LABEL_33:
        CVPixelBufferRetain(v9);
        v29 = *(v42 + 16);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer16pushColorMessageEPNS_24H16ISPFilterGraphMessageE_block_invoke;
        block[3] = &__block_descriptor_64_e5_v8__0l;
        block[4] = v42;
        block[5] = v10;
        block[6] = v9;
        block[7] = DeepCopy;
        dispatch_async(v29, block);
        goto LABEL_34;
      }
    }

    else
    {
      if (v10)
      {
        v24 = CVBufferGetAttachment(v10, v4, 0);
        if (v24)
        {
          DeepCopy = H16ISP::dictionaryCreateDeepCopy(v24, v25);
          H16ISP::updateMetadataReplaceField(DeepCopy, v35, v34, v26);
          H16ISP::updateMetadataReplaceField(DeepCopy, v33, v32, v27);
          H16ISP::updateMetadataReplaceField(DeepCopy, v31, v30, v28);
        }

        else
        {
          DeepCopy = 0;
        }

        v9 = v10;
        goto LABEL_33;
      }

      v9 = 0;
    }

    DeepCopy = 0;
    goto LABEL_33;
  }

  return this;
}

void ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer16pushColorMessageEPNS_24H16ISPFilterGraphMessageE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::logColorBuffer(*(v2 + 24), *(a1 + 40) != 0, *(a1 + 48), *(a1 + 56));
    H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::processBuffer(*(v2 + 24), *(a1 + 48), *(a1 + 56));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);

  CVPixelBufferRelease(v4);
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::logColorBuffer(H16ISP::TimeOfFlightAutoFocusAssistant **this, int a2, __CVBuffer *a3, NSDictionary *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (*(this + 344) == 1)
  {
    PreviewMasterType = H16ISP::TimeOfFlightAutoFocusAssistant::getPreviewMasterType(this[1]);
    v9 = "SuperWide";
    if (PreviewMasterType == 1919251564)
    {
      v10 = "Tele";
    }

    else
    {
      v10 = "Unknown";
    }

    if (PreviewMasterType != 1919251319)
    {
      v9 = v10;
    }

    if (PreviewMasterType == 1919246706)
    {
      v11 = "Wide";
    }

    else
    {
      v11 = v9;
    }

    v12 = [(NSDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x277CF5338]];
    [v12 floatValue];
    v14 = v13;

    [MEMORY[0x277CED068] getFrameTransformsFromMetadataDictionary:v7 sensorCropRect:v35 rawSensorSize:v33 postReadCropRect:v34];
    v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v16 = os_log_create("com.apple.isp", "general");
      v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;

      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    v18 = v15;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v11;
      v20 = v35[0];
      v19 = v35[1];
      if (a2)
      {
        v21 = "secondary";
      }

      else
      {
        v21 = "primary";
      }

      v23 = v35[2];
      v22 = v35[3];
      v24 = v33[0];
      v27 = v33[1];
      v28 = v34[0];
      v29 = v34[1];
      v30 = v34[2];
      v31 = v34[3];
      Width = CVPixelBufferGetWidth(a3);
      Height = CVPixelBufferGetHeight(a3);
      *buf = 136318722;
      v37 = v21;
      v38 = 2048;
      v39 = v14;
      v40 = 2048;
      v41 = v20;
      v42 = 2048;
      v43 = v19;
      v44 = 2048;
      v45 = v23;
      v46 = 2048;
      v47 = v22;
      v48 = 2048;
      v49 = v24;
      v50 = 2048;
      v51 = v27;
      v52 = 2048;
      v53 = v28;
      v54 = 2048;
      v55 = v29;
      v56 = 2048;
      v57 = v30;
      v58 = 2048;
      v59 = v31;
      v60 = 2048;
      v61 = Width;
      v62 = 2048;
      v63 = Height;
      v64 = 2080;
      v65 = v32;
      _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_DEFAULT, "Got Wide buffer from %s scaler. Zoom factor: %f. Sensor crop: (%.1f, %.1f, %.1f, %.1f), readout size: (%.1f, %.1f), ISP crop: (%.1f, %.1f, %.1f, %.1f), image size: (%zu, %zu). Preview master: %s\n", buf, 0x98u);
    }
  }
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::processBuffer(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this, __CVBuffer *a2, const __CFDictionary *a3)
{
  if (a2)
  {
    if (a3)
    {
      if (H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::doesNeedColor(this))
      {
        Value = CFDictionaryGetValue(a3, *MEMORY[0x277CF3F80]);
        if (Value)
        {
          v7 = Value;
          if (*(this + 344) == 1)
          {
            v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v9 = os_log_create("com.apple.isp", "general");
              v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;

              v8 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            }

            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.value) = 0;
              _os_log_impl(&dword_2247DB000, v8, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: process buffer\n", &buf, 2u);
            }
          }

          memset(&buf, 0, sizeof(buf));
          CMTimeMakeFromDictionary(&buf, v7);
          v11 = *(this + 35);
          if (v11)
          {
            CVPixelBufferRelease(v11);
          }

          v12 = *(this + 36);
          if (v12)
          {
            CFRelease(v12);
          }

          *(this + 35) = CVPixelBufferRetain(a2);
          *(this + 36) = CFRetain(a3);
          *(this + 304) = 0;
          v18 = buf;
          Seconds = CMTimeGetSeconds(&v18);
          v14 = *(this + 37);
          if (v14 != 0.0)
          {
            v15 = (vabdd_f64(Seconds, v14) * 1000.0 * 0.5 + 1.0);
            if (*(this + 64) != v15)
            {
              *(this + 64) = v15;
            }

            if (*(this + 66) != v15)
            {
              if (*(this + 65) < v15)
              {
                v15 = *(this + 65);
              }

              *(this + 66) = v15;
            }
          }

          *(this + 37) = Seconds;
          if (*(this + 39))
          {
            H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleTofMatch(this);
          }

          v16 = *(this + 31);
          v18 = buf;
          v17 = [v16 pushData:a2 streamIndex:1 timestamp:a3 pose:CMTimeGetSeconds(&v18) meta:{*MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48)}];
          if (v17)
          {
            H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleInfieldMatch(this, v17);
          }
        }
      }
    }
  }
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::setPreviewMasterCallback(uint64_t this, unsigned __int16 (*a2)(void *), void *a3)
{
  v3 = *(*(this + 24) + 8);
  *(v3 + 232) = a2;
  *(v3 + 240) = a3;
  return this;
}

double H16ISP::H16ISPTimeOfFlightColorSynchronizer::getTeleDensificationZoomLimit(H16ISP::H16ISPTimeOfFlightColorSynchronizer *this)
{
  result = 2.65;
  if ((*(*(this + 3) + 208) - 97) >= 2)
  {
    return 0.0;
  }

  return result;
}

uint64_t ___ZN6H16ISP42CreateFixedPrioritySerialDispatchQueue_arcEPKcj_block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v2 = *v2;
  }

  pthread_setname_np(v2);
  v3 = pthread_self();
  v4 = pthread_mach_thread_np(v3);
  v5 = H16ISP::H16ISPSetMachThreadPriority(v4, *(a1 + 56));

  return MEMORY[0x282204EA8](v5);
}

void __copy_helper_block_ea8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_ea8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::~TimeOfFlightColorSynchronizerInternal(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    H16ISP::TimeOfFlightAutoFocusAssistant::~TimeOfFlightAutoFocusAssistant(v2);
    MEMORY[0x22AA55B60]();
  }

  if (*this)
  {
    H16ISP::TimeOfFlightColorInfieldCalibrationManager::~TimeOfFlightColorInfieldCalibrationManager(*this);
    MEMORY[0x22AA55B60]();
  }

  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x22AA55B60](v3, 0x1020C405CE9ABE8);
  }

  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 35);
  if (v5)
  {
    CVPixelBufferRelease(v5);
  }

  v6 = *(this + 36);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(this + 25);
  *(this + 25) = 0;

  v8 = *(this + 24);
  *(this + 24) = 0;

  pthread_mutex_destroy(this + 2);
}

void H16ISP::TimeOfFlightAutoFocusAssistant::~TimeOfFlightAutoFocusAssistant(id *this)
{
  H16ISP::TimeOfFlightAutoFocusAssistant::deactivate(this);
}

unint64_t H16ISP::TimeOfFlightAutoFocusAssistant::deactivate(H16ISP::TimeOfFlightAutoFocusAssistant *this)
{
  result = H16ISP::H16ISPDevice::getSensorChannel(*this, 1785950322, 1852793709);
  *(this + 2) = result;
  *(this + 33) = 0;
  if (result != -1)
  {
    LOWORD(v3) = result;
    if (*(this + 88) == 1)
    {
      NSLog(&cfstr_Timeofflightau_2.isa, result, *(this + 32), 0, *(this + 9), 0);
      v3 = *(this + 2);
      v4 = *(this + 33);
    }

    else
    {
      v4 = 0;
    }

    H16ISP::H16ISPDevice::SetTOFControlMode(*this, v3, *(this + 32), v4 & 1, *(this + 9), 0);
    result = H16ISP::H16ISPServicesRemote::UpdateFlickerIRSignalRateHint(*(this + 2), 0.0);
  }

  *(this + 5) = 0;
  return result;
}

void H16ISP::TimeOfFlightColorInfieldCalibrationManager::~TimeOfFlightColorInfieldCalibrationManager(H16ISP::TimeOfFlightColorInfieldCalibrationManager *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::activateColor(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this)
{
  v26 = *(this + 3);
  v29 = *(this + 4);
  v32 = *(this + 5);
  v35 = *(this + 6);
  v2 = [*(this + 25) peridotCamera];
  [v2 cameraToPlatformTransform];
  v24 = v4;
  v25 = v3;
  v22 = v6;
  v23 = v5;
  v7 = v35;
  HIDWORD(v7) = 1.0;
  v8 = v32;
  HIDWORD(v8) = 0;
  v33 = v8;
  v36 = v7;
  v9 = v29;
  HIDWORD(v9) = 0;
  v30 = v9;
  v10 = v26;
  HIDWORD(v10) = 0;
  v27 = v10;

  v11 = 0;
  v38[0] = v27;
  v38[1] = v30;
  v38[2] = v33;
  v38[3] = v36;
  do
  {
    *(&v39 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(v38[v11])), v24, *&v38[v11], 1), v23, v38[v11], 2), v22, v38[v11], 3);
    ++v11;
  }

  while (v11 != 4);
  v34 = *&v41;
  v37 = *&v42;
  v28 = *&v39;
  v31 = *&v40;
  v12 = objc_alloc(MEMORY[0x277D3A150]);
  LODWORD(v13) = *(this + 28);
  v14 = [v12 initWithPixelSize:*(this + 4) gdcModel:v13 cameraToPlatformTransform:{v28, v31, v34, v37}];
  v15 = *(this + 24);
  *(this + 24) = v14;

  v16 = *(this + 24);
  if (v16)
  {
    v17 = *(this + 58);
    if (v17 == 2 || v17 == 1 && (v18 = *(this + 52) - 66, v18 <= 0x20) && ((1 << v18) & 0x180000001) != 0)
    {
      H16ISP::TimeOfFlightAutoFocusAssistant::enableTeleDensification(*(this + 1), 1, v16);
      v16 = *(this + 24);
    }

    v19 = *this;
    v20 = *(this + 53);
    v21 = *(this + 25);

    H16ISP::TimeOfFlightColorInfieldCalibrationManager::activate(v19, v20, v16, v21);
  }
}

void H16ISP::TimeOfFlightAutoFocusAssistant::enableTeleDensification(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  *(a1 + 224) = a2;
  if (a2)
  {
    objc_storeStrong((a1 + 256), a3);
    v6 = objc_alloc_init(MEMORY[0x277CECFC8]);
    v7 = *(a1 + 248);
    *(a1 + 248) = v6;

    v8 = [*(a1 + 248) executorParameters];
    [v8 setAutoSetColorROI:1];

    [*(a1 + 248) prepare];
  }

  else
  {
    v9 = *(a1 + 256);
    *(a1 + 256) = 0;

    v10 = *(a1 + 248);
    *(a1 + 248) = 0;
  }
}

void H16ISP::TimeOfFlightColorInfieldCalibrationManager::activate(uint64_t a1, int a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  *(a1 + 20) = *(a1 + 16) != 0;
  *(a1 + 24) = a2;
  objc_storeStrong((a1 + 40), a3);
  objc_storeStrong((a1 + 32), a4);
  if (*(a1 + 108) == 1)
  {
    v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v11 = os_log_create("com.apple.isp", "general");
      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v11;

      v10 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 20);
      v14[0] = 67109120;
      v14[1] = v13;
      _os_log_impl(&dword_2247DB000, v10, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: active mode: %d\n", v14, 8u);
    }
  }
}

id GetCameraUserspaceLogStream()
{
  v0 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v1;

    v0 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  }

  return v0;
}

void H16ISP::TimeOfFlightColorInfieldCalibrationManager::deactivate(H16ISP::TimeOfFlightColorInfieldCalibrationManager *this)
{
  if (*(this + 108) == 1)
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;

      v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: deactivate\n", v5, 2u);
    }
  }

  *(this + 20) = 0;
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleAggregation(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 344) == 1)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;

      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: reached  handleAggregation\n", buf, 2u);
    }
  }

  v7 = [v3 matchedObjectsForStream:0];
  v8 = [v7 count];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:v8];
  *buf = 0;
  v32 = buf;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer37TimeOfFlightColorSynchronizerInternal17handleAggregationEP17ADStreamSyncMatch_block_invoke;
  v18 = &unk_27853B848;
  v10 = v9;
  v19 = v10;
  v20 = buf;
  v21 = &v27;
  v22 = &v23;
  [v7 enumerateObjectsUsingBlock:&v15];
  v11 = *(v28 + 6);
  if (v11 >= 1)
  {
    *(v32 + 3) = *(v32 + 3) / v11;
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = *(v24 + 6);
    if (v13 >= 1)
    {
      H16ISP::TimeOfFlightAutoFocusAssistant::updateDecimationRate(v12, v13, *(a1 + 220));
    }
  }

  v14 = [*(a1 + 224) postProcessAllBanks:{v10, v15, v16, v17, v18}];
  objc_storeStrong((a1 + 312), v14);
  *(a1 + 328) = *(v32 + 3);
  *(a1 + 336) = 0;
  objc_storeStrong((a1 + 320), v7);
  H16ISP::NearEventComplianceHandler::handleEvent(*(a1 + 16), v14, *(v24 + 6), *(a1 + 220));
  H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleTofMatch(a1);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(buf, 8);
}

void sub_22496DF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 96), 8);

  _Unwind_Resume(a1);
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleInfieldMatch(_BYTE *a1, void *a2)
{
  v3 = a2;
  if (a1[344] == 1)
  {
    v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v5 = os_log_create("com.apple.isp", "general");
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v5;

      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_2247DB000, v4, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: Got infield match\n", v13, 2u);
    }
  }

  if (*a1 && *(*a1 + 20) == 1)
  {
    v7 = [v3 matchedObjectsForStream:0];
    v8 = [v3 matchedObjectsForStream:1];
    v9 = [v8 objectAtIndexedSubscript:0];

    v10 = *a1;
    v11 = [v9 data];
    v12 = [v9 metadata];
    H16ISP::TimeOfFlightColorInfieldCalibrationManager::handleMatch(v10, v11, v12, v7);
  }
}

void ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer37TimeOfFlightColorSynchronizerInternal17handleAggregationEP17ADStreamSyncMatch_block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 data];
  [*(a1 + 32) addObject:v3];
  [v13 timestamp];
  if (v4 != 0.0)
  {
    [v13 timestamp];
    *(*(*(a1 + 40) + 8) + 24) = v5 + *(*(*(a1 + 40) + 8) + 24);
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  v6 = [v13 metadata];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CF4B88]];
    v9 = [v8 intValue];

    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 24);
    if (!v11 || v11 > v9)
    {
      *(v10 + 24) = v9;
    }
  }
}

int64_t H16ISP::TimeOfFlightAutoFocusAssistant::updateDecimationRate(int64_t this, int a2, int a3)
{
  if (*(this + 76) != a2)
  {
    v3 = a2 / a3;
    v4 = 8.0;
    if (v3 <= 8.0)
    {
      v4 = 1.0;
      if (v3 >= 1.0)
      {
        v4 = vcvtmd_s64_f64(v3);
      }
    }

    *(this + 76) = a2;
    *(this + 80) = vcvtpd_s64_f64(v3 / v4);
    v5 = v3;
    return H16ISP::H16ISPServicesRemote::UpdateFlickerIRSignalRateHint(*(this + 16), v5);
  }

  return this;
}

void H16ISP::NearEventComplianceHandler::handleEvent(uint64_t a1, void *a2, int a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a3 / a4 < 16 || H16ISP::NearEventComplianceHandler::isDepthDetectedInPointCloud(a1, v7))
  {
    *(a1 + 48) = H16ISP::H16ISPDevice::getSensorChannel(*(a1 + 40), 1785950322, 1852793709);
    if ((*(a1 + 50) & 1) == 0)
    {
      *(a1 + 50) = 1;
      NSLog(&cfstr_PeridotNearEve.isa, 0x101010101010101, v9);
      H16ISP::JasperConfigManager::setJasperProjectorBanksStatus(*(a1 + 40), &v8, *(a1 + 48));
    }

    *(a1 + 32) = mach_absolute_time();
  }

  else
  {
    *(a1 + 48) = H16ISP::H16ISPDevice::getSensorChannel(*(a1 + 40), 1785950322, 1852793709);
    if (*(a1 + 16) <= ((mach_absolute_time() - *(a1 + 32)) * *(a1 + 24) / *(a1 + 28) / 0x3B9ACA00) && *(a1 + 50) == 1)
    {
      *(a1 + 50) = 0;
      NSLog(&cfstr_PeridotNearEve_0.isa, 0x101010100000000, v9);
      H16ISP::JasperConfigManager::setJasperProjectorBanksStatus(*(a1 + 40), &v8, *(a1 + 48));
    }
  }
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleTofMatch(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this)
{
  v27 = *MEMORY[0x277D85DE8];
  if (!*(this + 39))
  {
    return;
  }

  if (*(this + 344) == 1)
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;

      v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: reached main handleTofMatch with valid cloud\n", v24, 2u);
    }
  }

  if (*(this + 304) & 1) != 0 || (v5 = *(this + 35)) == 0 || (*(this + 304) = 1, (H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::updateColorCalibration(this, v5, *(this + 36))))
  {
    v6 = *(this + 1);
    if (v6 && *(v6 + 33) == 1 && (*(this + 336) & 1) == 0)
    {
      if (*(this + 216) != 1)
      {
        goto LABEL_25;
      }

      if (*(v6 + 224) != 1)
      {
        goto LABEL_25;
      }

      v7 = *(this + 41);
      v8 = *(this + 37);
      if (H16ISP::TimeOfFlightAutoFocusAssistant::getPreviewMasterType(v6) != 1919251564)
      {
        goto LABEL_25;
      }

      v10 = *(this + 35);
      if (!v10)
      {
        goto LABEL_25;
      }

      v11 = vabdd_f64(v7, v8);
      LODWORD(v9) = *(this + 64);
      v12 = v9 / 1000.0;
      if (v11 < v12)
      {
        H16ISP::TimeOfFlightAutoFocusAssistant::handleMatch(*(this + 1), *(this + 39), *(this + 40), v10, *(this + 36));
LABEL_26:
        *(this + 336) = 1;
        goto LABEL_27;
      }

      LODWORD(v12) = *(this + 69);
      if (v11 > *&v12 / 1000.0)
      {
LABEL_25:
        H16ISP::TimeOfFlightAutoFocusAssistant::handleMatch(*(this + 1), *(this + 39), *(this + 40), 0, 0);
        goto LABEL_26;
      }
    }

LABEL_27:
    if (*(this + 344) == 1)
    {
      v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v17 = os_log_create("com.apple.isp", "general");
        v18 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v17;

        v16 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      v19 = v16;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [*(this + 36) objectForKeyedSubscript:*MEMORY[0x277CF4B88]];
        v21 = [v20 intValue];
        v22 = [*(this + 36) objectForKeyedSubscript:*MEMORY[0x277CF5190]];
        [v22 floatValue];
        v24[0] = 67109376;
        v24[1] = v21;
        v25 = 2048;
        v26 = v23;
        _os_log_impl(&dword_2247DB000, v19, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: main handleTofMatch fps = %d temperature = %f\n", v24, 0x12u);
      }
    }

    return;
  }

  if (*(this + 344) == 1)
  {
    v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v14 = os_log_create("com.apple.isp", "general");
      v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v14;

      v13 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(&dword_2247DB000, v13, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: main handleTofMatch updateColorCalibration failed\n", v24, 2u);
    }
  }

  CVPixelBufferRelease(*(this + 35));
  CFRelease(*(this + 36));
  *(this + 35) = 0;
  *(this + 36) = 0;
}

uint64_t H16ISP::NearEventComplianceHandler::isDepthDetectedInPointCloud(double *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 confidences];
  v5 = [v3 length];
  v6 = *a1;
  v7 = [v3 length];
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = &v4[v5];
    do
    {
      if (a1[1] < *v4)
      {
        if (v8 >= ((1.0 - v6) * v7))
        {
          v10 = 1;
          goto LABEL_9;
        }

        ++v8;
      }

      ++v4;
    }

    while (v4 < v9);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::updateColorCalibration(id *this, CVPixelBufferRef pixelBuffer, const __CFDictionary *a3)
{
  v3 = 0;
  if (a3 && this[24])
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    v9 = a3;
    v10 = [(__CFDictionary *)v9 objectForKeyedSubscript:*MEMORY[0x277CF5300]];

    if (v10 && CGRectMakeWithDictionaryRepresentation(v10, &rect))
    {
      v11 = Width / Height;
      if (v11 > rect.size.width / rect.size.height * 0.998 && v11 < rect.size.width / rect.size.height * 1.002)
      {
        v3 = [this[24] updateForFrameWithDimensions:v9 metadataDictionary:?];
        goto LABEL_11;
      }

      NSLog(&cfstr_Jaspercolorsyn.isa, Width, Height, *&rect.size.width, *&rect.size.height);
    }

    v3 = 0;
LABEL_11:
  }

  return v3;
}

void H16ISP::TimeOfFlightAutoFocusAssistant::handleMatch(uint64_t a1, void *a2, void *a3, __CVBuffer *a4, const __CFDictionary *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = *(a1 + 80);
  if (v10 && (v11 = *(a1 + 72) + 1, *(a1 + 72) = v11, v11 >= v10))
  {
    *(a1 + 84) = 1;
    *(a1 + 72) = 0;
    H16ISP::TimeOfFlightAutoFocusAssistant::sendCloud(a1, v12, v9, a4, a5);
  }

  else
  {
    *(a1 + 84) = 0;
  }
}

uint64_t H16ISP::TimeOfFlightAutoFocusAssistant::getPreviewMasterType(H16ISP::TimeOfFlightAutoFocusAssistant *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v1(*(this + 30));
  if (v3 == 0xFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v5 = *this;

  return H16ISP::H16ISPDevice::getSensorType(v5, v4);
}

uint64_t H16ISP::TimeOfFlightAutoFocusAssistant::sendCloud(uint64_t a1, void *a2, void *a3, __CVBuffer *a4, const __CFDictionary *a5)
{
  v6 = a2;
  v7 = a3;
  [v7 count];
  if ([v6 length])
  {
    operator new[]();
  }

  NSLog(&cfstr_Timeofflightau_3.isa);

  return 3758097084;
}

void sub_22496F868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a23)
  {
    MEMORY[0x22AA55B40](a23, 0x1000C80451B5BE8);
  }

  if (v26)
  {
    MEMORY[0x22AA55B40](v26, 0x1000C8052888210);
  }

  if (v25)
  {
    MEMORY[0x22AA55B40](v25, 0x1000C8052888210);
  }

  if (a21)
  {
    MEMORY[0x22AA55B40](a21, 0x1000C80451B5BE8);
  }

  if (v24)
  {
    MEMORY[0x22AA55B40](v24, 0x1000C80451B5BE8);
  }

  _Unwind_Resume(a1);
}

void ___ZN6H16ISP30TimeOfFlightAutoFocusAssistant9sendCloudEP18ADJasperPointCloudP7NSArrayIP29ADStreamSyncTimestampedObjectEP10__CVBufferPK14__CFDictionary_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [v6 timestamp];
  *(*(a1 + 32) + 8 * a3) = v5;
}

void H16ISP::TimeOfFlightColorInfieldCalibrationManager::handleMatch(H16ISP::TimeOfFlightColorInfieldCalibrationManager *this, __CVBuffer *a2, NSDictionary *a3, NSArray *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (*this && *(this + 16) <= (mach_absolute_time() - *(this + 7)) * *(this + 12) / *(this + 13) / 0xF4240)
  {
    if (*(this + 108) == 1)
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "general");
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;

        v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: reached infield calibration handleMatch\n", buf, 2u);
      }
    }

    ++*(this + 19);
    if (*(this + 1))
    {
      if ([MEMORY[0x277CECFD0] isColorFrameValid:a2 withMetadata:v7 andPipelineParameters:?])
      {
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, 0);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
        v15 = fmin((HeightOfPlane * BytesPerRowOfPlane), 1000000.0);
        if (v15)
        {
          v16 = 0;
          v17 = 0xFFFF;
          do
          {
            v18 = 128;
            do
            {
              if ((v18 & *BaseAddressOfPlane) != 0)
              {
                v19 = ~v17;
              }

              else
              {
                v19 = v17;
              }

              if (v19 < 0)
              {
                v17 = (2 * v17) ^ 0x1021;
              }

              else
              {
                v17 *= 2;
              }

              v20 = v18 >= 2;
              v18 >>= 1;
            }

            while (v20);
            ++BaseAddressOfPlane;
            ++v16;
          }

          while (v16 < v15);
        }

        else
        {
          LOWORD(v17) = -1;
        }

        CVPixelBufferUnlockBaseAddress(a2, 1uLL);
        v21 = v8;
        v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v45 = [*(this + 5) dictionaryRepresentation];
        if ([(NSArray *)v21 count])
        {
          v23 = [*(this + 4) peridotCamera];
          v46 = [v23 dictionaryRepresentation];
        }

        else
        {
          v46 = 0;
        }

        for (i = 0; ; ++i)
        {
          v25 = [(NSArray *)v21 count];
          if (i >= v25)
          {
            break;
          }

          v26 = [(NSArray *)v21 objectAtIndexedSubscript:i];
          v27 = [v26 data];

          v28 = [v27 dictionaryRepresentation];
          [v22 addObject:v28];
        }

        v29 = 1;
        if (v22 && v46 && v45)
        {
          v30 = *(this + 108);
          if (v30 == 1)
          {
            v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v32 = os_log_create("com.apple.isp", "general");
              v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v32;

              v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            }

            v25 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
            if (v25)
            {
              *buf = 0;
              _os_log_impl(&dword_2247DB000, v31, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: infield calibration sending command to demon (RunRgbj)\n", buf, 2u);
            }

            LOBYTE(v30) = *(this + 108);
          }

          v44 = *this;
          v34 = *(this + 6);
          v35 = *(this + 17);
          FrameMode = H16ISP::JasperConfigManager::getFrameMode(v25);
          *&v43[4] = *(this + 92);
          v43[0] = *(this + 80);
          v29 = H16ISP::H16ISPServicesRemote::RunRgbj(v44, a2, v7, v22, v45, v46, 0, v30 & 1, v34, v35, v17, FrameMode, *v43, *&v43[16], *(this + 18));
          if (v29 == 3)
          {
            if (*(this + 108) == 1)
            {
              v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v38 = os_log_create("com.apple.isp", "general");
                v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v38;

                v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              }

              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2247DB000, v37, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: infield calibration network is busy\n", buf, 2u);
              }
            }

            goto LABEL_56;
          }
        }

        *(this + 7) = mach_absolute_time();
        if (v29 == 5)
        {
          *(this + 80) = 1;
          *(this + 16) = *(this + 21);
          if (*(this + 108) == 1)
          {
            v40 = GetCameraUserspaceLogStream();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v42 = *(this + 16);
              *buf = 67109120;
              v48 = v42;
              _os_log_impl(&dword_2247DB000, v40, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: infield calibration setting interval HighToLow %dms\n", buf, 8u);
            }

            goto LABEL_55;
          }
        }

        else
        {
          if (v29 != 4)
          {
            if (v29 == 1)
            {
              H16ISP::TimeOfFlightColorInfieldCalibrationManager::deactivate(this);
            }

            goto LABEL_56;
          }

          *(this + 80) = 0;
          *(this + 16) = *(this + 22);
          if (*(this + 108) == 1)
          {
            v40 = GetCameraUserspaceLogStream();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = *(this + 16);
              *buf = 67109120;
              v48 = v41;
              _os_log_impl(&dword_2247DB000, v40, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: infield calibration setting interval LowToHigh %dms\n", buf, 8u);
            }

LABEL_55:
          }
        }

LABEL_56:
      }
    }
  }
}

void H16ISP::updateMetadataReplaceField(H16ISP *this, NSMutableDictionary *a2, NSString *a3, NSString *a4)
{
  v10 = this;
  v6 = a2;
  v7 = a3;
  v8 = [(H16ISP *)v10 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(H16ISP *)v10 objectForKeyedSubscript:v6];
    [(H16ISP *)v10 setObject:v9 forKeyedSubscript:v7];

    [(H16ISP *)v10 setObject:0 forKeyedSubscript:v6];
  }
}

void sub_2249701E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

BOOL H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::doesNeedColor(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this)
{
  if (*(this + 216) != 1)
  {
    return 0;
  }

  v2 = *this;
  result = 1;
  if (!v2 || (H16ISP::TimeOfFlightColorInfieldCalibrationManager::doesNeedColor(v2) & 1) == 0)
  {
    v3 = *(this + 1);
    if (!v3 || (*(v3 + 224) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t H16ISP::TimeOfFlightColorInfieldCalibrationManager::doesNeedColor(H16ISP::TimeOfFlightColorInfieldCalibrationManager *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 108) == 1)
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;

      v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 20);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: doesNeedColor returned %d\n", v7, 8u);
    }
  }

  return *(this + 20);
}

void H16ISP::TimeOfFlightAutoFocusAssistant::activate(H16ISP::TimeOfFlightAutoFocusAssistant *this, H16ISP::H16ISPFrameReceiver *a2)
{
  if (*(this + 33) != 1 || *(this + 5) != a2)
  {
    SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(*this, 1785950322, 1852793709);
    *(this + 2) = SensorChannel;
    *(this + 33) = 0;
    *(this + 5) = a2;
    *(this + 19) = 0;
    *(this + 20) = 0;
    v19 = 0;
    H16ISP::H16ISPDevice::GetPoolInfo(*this, SensorChannel, 29, &v19, 0);
    if (v5)
    {
      NSLog(&cfstr_Jasperdepthnod_3.isa);
      return;
    }

    if (H16ISP::H16ISPFrameReceiver::getBufferPool(*(this + 5), 27))
    {
      *(this + 33) = 1;
    }

    else
    {
      v6 = *(this + 5);
      memset(v18, 0, sizeof(v18));
      LOBYTE(v16) = 1;
      if (H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v6, 27, v19, 11521, 8, 0, 0, 8, 0.0, v18, 1u, 0xA00000080, 0, 0x100000000, 0, @"AF-Assist", 0, 0, 0, v16))
      {
        NSLog(&cfstr_Jasperdepthnod_4.isa);
      }

      else
      {
        *(this + 33) = 1;
      }
    }

    *(this + 12) = H16ISP::H16ISPGetCFPreferenceNumber(@"AutoFocusAssistanceDump", @"com.apple.coremedia", 0);
    v7 = H16ISP::H16ISPGetCFPreferenceNumber(@"AutoFocusAssistanceVerbose", @"com.apple.coremedia", 0);
    *(this + 88) = v7 != 0;
    if (*(this + 12))
    {
      v8 = NSTemporaryDirectory();
      v9 = [v8 stringByAppendingPathComponent:@"JasperAFBuffers"];
      v10 = *(this + 8);
      *(this + 8) = v9;

      NSLog(&cfstr_DumpingTofAfBu.isa, *(this + 8));
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = *(this + 8);
      v17 = 0;
      [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v17];
      v13 = v17;

      v14 = objc_opt_new();
      v15 = *(this + 7);
      *(this + 7) = v14;

      [*(this + 7) setDateFormat:@"yyyyMMdd-HHmmss-SSS"];
      if ((*(this + 88) & 1) == 0)
      {
LABEL_13:
        H16ISP::H16ISPDevice::SetTOFControlMode(*this, *(this + 2), *(this + 32), *(this + 33), *(this + 9), 0);
        return;
      }
    }

    else if (!v7)
    {
      goto LABEL_13;
    }

    NSLog(&cfstr_Timeofflightau_2.isa, *(this + 2), *(this + 32), *(this + 33), *(this + 9), 0);
    goto LABEL_13;
  }
}

void GridArea::PrepareGrid(_DWORD *a1, float *a2, float *a3, float *a4, unsigned int a5)
{
  v5 = ((a4[1] - *a4) / a4[2]);
  v6 = ((((a2[1] - *a2) / a2[2]) + 1.0) + (2 * a5));
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v6 * v6;
  a1[5] = v6 * v6 + v6 * v6 * v5;
  operator new[]();
}

void GridArea::GridArea(GridArea *this, const GridArea *a2, int a3, int a4)
{
  v4 = *(a2 + 2);
  v5 = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v4;
  *this = v5;
  operator new[]();
}

{
  v4 = *(a2 + 2);
  v5 = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v4;
  *this = v5;
  operator new[]();
}

void GridArea::GridArea(GridArea *this, const GridArea *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v3;
  *this = v2;
  operator new[]();
}

{
  v2 = *a2;
  v3 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v3;
  *this = v2;
  operator new[]();
}

void GridArea::~GridArea(GridArea *this)
{
  v1 = *this;
  if (v1)
  {
    MEMORY[0x22AA55B40](v1, 0x1000C80F913DBA1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    MEMORY[0x22AA55B40](v1, 0x1000C80F913DBA1);
  }
}

uint64_t GridArea::GetMinimalCostEntryIdx(uint64_t this, int a2)
{
  v2 = *(this + 20);
  if (!v2)
  {
    return 0;
  }

  v3 = this;
  v4 = 0;
  LODWORD(this) = 0;
  v5 = *v3;
  v6 = 16;
  if (a2)
  {
    v6 = 24;
  }

  v7 = (v5 + v6);
  v8 = 1.79769313e308;
  do
  {
    v9 = *v7;
    v7 += 4;
    v10 = v9;
    v11 = v9 < v8;
    if (v9 >= v8)
    {
      this = this;
    }

    else
    {
      this = v4;
    }

    if (v11)
    {
      v8 = v10;
    }

    ++v4;
  }

  while (v2 != v4);
  return this;
}

uint64_t GridArea::ExtendCostGrid(GridArea *this, unsigned int a2, int a3, unsigned int a4)
{
  v5 = *(this + 2);
  v6 = v5 - a4;
  v7 = *this;
  v8 = *this + 32 * a2;
  v9 = *(v8 + 4);
  if (v9 == *(this + 7))
  {
    v10 = 1;
    v11 = a4;
    v12 = *(this + 2);
  }

  else
  {
    v13 = *(this + 6);
    if (v9 == v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = a4;
    }

    v10 = v9 == v13;
    v12 = v5 - a4;
  }

  v14 = *(v8 + 8);
  if (v14 == *(this + 9))
  {
    v6 = *(this + 2);
LABEL_15:
    result = 1;
    if (a4 < v6)
    {
      v18 = v11 + a4 * v5;
      do
      {
        v19 = v12 - v11;
        v20 = v18;
        if (v11 < v12)
        {
          do
          {
            if (a3)
            {
              *(v7 + 32 * v20) = 1;
            }

            else
            {
              *(v7 + 32 * v20 + 1) = 1;
            }

            ++v20;
            --v19;
          }

          while (v19);
        }

        ++a4;
        v18 += v5;
      }

      while (a4 != v6);
      return 1;
    }

    return result;
  }

  result = 0;
  v16 = *(this + 8);
  v17 = v14 == v16 || v10;
  if (v14 == v16)
  {
    a4 = 0;
  }

  if (v17 == 1)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t *GridArea::NormalizeGrid(uint64_t *result, int a2, int a3, _DWORD *a4)
{
  v4 = a4[4];
  v5 = a4[5];
  if (v4 > v5)
  {
    return result;
  }

  v6 = a4[3];
  v7 = 1.79769313e308;
  v8 = 2.22507386e-308;
  v9 = a4[4];
  do
  {
    if (a4[2] <= v6)
    {
      v10 = v7;
      for (i = a4[2]; i <= v6; ++i)
      {
        v12 = *result + 32 * (a2 + *(result + 2) * v9 + i);
        if (a3)
        {
          if (*v12 == 1)
          {
            v7 = *(v12 + 24);
            goto LABEL_10;
          }
        }

        else if (*(v12 + 1) == 1)
        {
          v7 = *(v12 + 16);
LABEL_10:
          if (v7 > v8)
          {
            v8 = v7;
          }

          if (v7 < v10)
          {
            goto LABEL_14;
          }
        }

        v7 = v10;
LABEL_14:
        v10 = v7;
      }
    }

    ++v9;
  }

  while (v9 <= v5);
  v13 = v8 - v7;
  v14 = a4[2];
  v15 = a4[3];
  do
  {
    if (v14 <= v15)
    {
      v16 = *result;
      v17 = a2 + *(result + 2) * v4;
      v18 = v14;
      do
      {
        if (a3)
        {
          v19 = 24;
        }

        else
        {
          v19 = 16;
        }

        *(v16 + 32 * (v17 + v18) + v19) = (*(v16 + 32 * (v17 + v18) + v19) - v7) / v13;
        ++v18;
      }

      while (v18 <= v15);
    }

    ++v4;
  }

  while (v4 <= v5);
  return result;
}

void GridArea::CalcNewConfidence(uint64_t a1, int a2, int a3, int *a4)
{
  v4 = *(a1 + 20);
  v5 = *(a1 + 16) * a2;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 16;
    if (a3)
    {
      v8 = 24;
    }

    v9 = (*a1 + v8);
    v10 = 1.79769313e308;
    do
    {
      v11 = *v9;
      v9 += 4;
      v12 = v11;
      if (v11 < v10)
      {
        v7 = v6;
        v10 = v12;
      }

      ++v6;
    }

    while (v4 != v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *(a1 + 8);
  v14 = v7 / v13;
  v15 = v7 % v13;
  *a4 = v15;
  a4[1] = v14;
  v16 = v13 - 1;
  v17 = (v16 >> 1) - 1;
  v18 = (v15 - v17) & ~((v15 - v17) >> 31);
  v19 = v15 + v17;
  if (v19 >= v16)
  {
    v19 = v16;
  }

  a4[2] = v18;
  a4[3] = v19;
  v20 = v17 + v14;
  if (v17 + v14 >= v16)
  {
    v20 = v16;
  }

  a4[4] = (v14 - v17) & ~((v14 - v17) >> 31);
  a4[5] = v20;
  GridArea::NormalizeGrid(a1, v5, a3, a4);
  operator new[]();
}

void GridArea::FitParabolaModel(GridArea *this, double *a2, double *a3)
{
  v3 = a3;
  Matrix<double>::Matrix(v15, a3, 3);
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    v8 = v17;
    v9 = v18;
    do
    {
      if (v7 >= v8 || !v9 || (*(v16 + 8 * v6) = a2[v7] * a2[v7], v9 == 1) || (*(v16 + 8 * v6 + 8) = a2[v7], v9 <= 2))
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      *(v16 + 8 * v6 + 16) = 0x3FF0000000000000;
      ++v7;
      v6 += v9;
    }

    while (v3 != v7);
  }

  v10 = &unk_283812C58;
  v11 = this;
  v12 = v3;
  v13 = 1;
  v14 = 0;
  Matrix<double>::Transpose(v15);
}

void sub_2249711C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  Matrix<double>::~Matrix(va);
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a21);
  Matrix<double>::~Matrix(&a17);
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(v24 - 112);
  Matrix<double>::~Matrix(v24 - 80);
  _Unwind_Resume(a1);
}

void Matrix<double>::Inverse(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  if (v6 == 2)
  {
    if (*(a1 + 20) == 2)
    {
      goto LABEL_4;
    }

LABEL_8:
    Matrix<double>::Inverse();
  }

  if (v6 != 3 || *(a1 + 20) != 3)
  {
    goto LABEL_8;
  }

LABEL_4:
  Matrix<double>::Matrix(a3, v6, v6);
  v8 = Matrix<double>::Det(a1, v7);
  if (v8 == 0.0)
  {
    if (a2)
    {
      *a2 = 0;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 1;
    }

    if (*(a1 + 16) == 2)
    {
      **(a3 + 8) = *(*(a1 + 8) + 24) / v8;
      *(*(a3 + 8) + 8) = -*(*(a1 + 8) + 8) / v8;
      *(*(a3 + 8) + 16) = -*(*(a1 + 8) + 16) / v8;
      *(*(a3 + 8) + 24) = **(a1 + 8) / v8;
    }

    else
    {
      v9 = *(a1 + 20);
      if (v9)
      {
        v10 = 0;
        v11 = *(a3 + 16);
        v12 = 5;
        v13 = 1;
        v14 = 8;
        v15 = 2;
        v16 = 7;
        v17 = 4;
        do
        {
          v18 = 0;
          v19 = 0;
          v20 = 9 * (v13 / 3);
          v21 = 9 * (v15 / 3);
          v22 = v10 + 1;
          v23 = *(a3 + 20);
          v24 = v12 - v20;
          v25 = v14 - v21;
          v26 = v16 - v21;
          v27 = v17 - v20;
          v28 = 2;
          v29 = 1;
          do
          {
            if (v19 >= v11 || v10 >= v23)
            {
              __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
            }

            v30 = *(a1 + 8);
            *(*(a3 + 8) + 8 * v10 + 8 * v18) = (*(v30 + 8 * (v19 + v27 - 3 * (v29 / 3))) * *(v30 + 8 * (v19 + v25 - 3 * (v28 / 3))) - *(v30 + 8 * (v19 + v24 - 3 * (v28 / 3))) * *(v30 + 8 * (v19 + v26 - 3 * (v29 / 3)))) / v8;
            v18 += v23;
            ++v28;
            ++v29;
            ++v19;
          }

          while (v9 != v19);
          v12 += 3;
          ++v13;
          v14 += 3;
          ++v15;
          v16 += 3;
          v17 += 3;
          ++v10;
        }

        while (v22 != v9);
      }
    }
  }
}

void GridArea::SaveToDictionary(uint64_t result, __CFDictionary *a2, int a3, char *a4)
{
  if (gDbgLvl)
  {
    operator new[]();
  }
}

void sub_224971724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:nn200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

BOOL GridArea::isMinimumOnBorder(float *a1, int a2, void *a3)
{
  v3 = *a1;
  v4 = *(a1 + 5);
  if (v4)
  {
    v5 = 0;
    LODWORD(v6) = 0;
    v7 = 16;
    if (a2)
    {
      v7 = 24;
    }

    v8 = (v3 + v7);
    v9 = 1.79769313e308;
    do
    {
      v10 = *v8;
      v8 += 4;
      v11 = v10;
      v12 = v10 < v9;
      if (v10 >= v9)
      {
        v6 = v6;
      }

      else
      {
        v6 = v5;
      }

      if (v12)
      {
        v9 = v11;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = v3 + 32 * v6;
  *a3 = v13;
  v14 = *(v13 + 4);
  result = 1;
  if (v14 != a1[6] && v14 != a1[7])
  {
    v15 = *(v13 + 8);
    if (v15 != a1[8] && v15 != a1[9])
    {
      return 0;
    }
  }

  return result;
}

double Matrix<double>::Det(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != 2)
  {
    if (v2 == 3 && *(a1 + 20) == 3)
    {
      v3 = *(a1 + 8);
      return *v3 * (v3[4] * v3[8] - v3[5] * v3[7]) - v3[1] * (v3[3] * v3[8] - v3[5] * v3[6]) + v3[2] * (v3[3] * v3[7] - v3[4] * v3[6]);
    }

LABEL_7:
    Matrix<double>::Det();
  }

  if (*(a1 + 20) != 2)
  {
    goto LABEL_7;
  }

  return **(a1 + 8) * *(*(a1 + 8) + 24) - *(*(a1 + 8) + 8) * *(*(a1 + 8) + 16);
}

void PearlInternalIRIsf::PearlInternalIRIsf(PearlInternalIRIsf *this)
{
  *(this + 3) = 0;
  *(this + 8) = 0u;
  *(this + 11) = 0x7FF8000000000000;
  *(this + 72) = xmmword_2249D2A98;
  *(this + 80) = 0;
  *(this + 162) = 0;
  *(this + 41) = 0;
  *this = &unk_283814B90;
  *(this + 15) = 0x1E00000001;
  *(this + 16) = 1;
  *(this + 34) = 1;
  *(this + 148) = 4;
  *(this + 39) = 2;
  operator new[]();
}

void PearlInternalIRIsf::~PearlInternalIRIsf(PearlInternalIRIsf *this)
{
  *this = &unk_283814B90;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x22AA55B40](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x22AA55B40](v3, 0x1000C8000313F17);
  }

  IsfInternal::~IsfInternal(this);
}

{
  PearlInternalIRIsf::~PearlInternalIRIsf(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t PearlInternalIRIsf::updatePCECalib(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = IsfInternal::CalcNewRotation(a1, a2);
  if (!v5)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
    GeomUtils::CalcRotationMatrix<double>(&v9, &v11);
    v6 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v6;
    *(a3 + 64) = v15;
    v7 = v12;
    *a3 = v11;
    *(a3 + 16) = v7;
  }

  return v5;
}

uint64_t GeomUtils::CalcRotationMatrix<double>(double *a1, uint64_t a2)
{
  v4[0] = &unk_283812C58;
  v4[1] = a2;
  v4[2] = 0x300000003;
  v5 = 0;
  v2 = GeomUtils::CalcRotationMatrix<double>(v4, *a1 / 1000.0, a1[1] / 1000.0, a1[2] / 1000.0);
  Matrix<double>::~Matrix(v4);
  return v2;
}

void PearlInternalIsf::PearlInternalIsf(PearlInternalIsf *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 11) = 0x7FF8000000000000;
  *(this + 72) = xmmword_2249D2B08;
  *(this + 80) = 0;
  *(this + 162) = 0;
  *(this + 41) = 0;
  *this = &unk_283814BE0;
  *(this + 15) = 0x3200000003;
  *(this + 8) = xmmword_2249D2AC0;
  *(this + 9) = xmmword_2249D2AD0;
  operator new[]();
}

void PearlInternalIsf::~PearlInternalIsf(PearlInternalIsf *this)
{
  *this = &unk_283814BE0;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x22AA55B40](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x22AA55B40](v3, 0x1000C8000313F17);
  }

  IsfInternal::~IsfInternal(this);
}

{
  PearlInternalIsf::~PearlInternalIsf(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t PearlInternalIsf::updatePCECalib(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = IsfInternal::CalcNewRotation(a1, a2);
  if (!v5)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
    GeomUtils::CalcRotationMatrix<double>(&v9, &v11);
    v6 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v6;
    *(a3 + 64) = v15;
    v7 = v12;
    *a3 = v11;
    *(a3 + 16) = v7;
  }

  return v5;
}

void PearlIsf::~PearlIsf(PearlIsf *this)
{
  *this = &unk_283814C20;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_283814C20;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_283814C20;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x22AA55B60);
}

void MetalMgt::MetalMgt(MetalMgt *this)
{
  *(this + 3) = 850045863;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 13) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  v2 = MTLCreateSystemDefaultDevice();
  v3 = *this;
  *this = v2;

  v4 = [*this newCommandQueue];
  v5 = *(this + 1);
  *(this + 1) = v4;

  v6 = [*this newDefaultLibrary];
  v7 = *(this + 2);
  *(this + 2) = v6;

  *(this + 12) = 0;
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/H16ISPServices.framework/CalibrateRgbIr.metallib"];
  v9 = *this;
  v21 = 0;
  v10 = [v9 newLibraryWithURL:v8 error:&v21];
  v11 = v21;
  v12 = *(this + 2);
  *(this + 2) = v10;

  v13 = [*(this + 2) newFunctionWithName:@"Algo_DistortRadialLiteInternal"];
  v14 = *(this + 11);
  *(this + 11) = v13;

  v15 = *(this + 11);
  if (!v15)
  {
    __assert_rtn("MetalMgt", "MetalObjects.mm", 42, "m_algo_DistortRadialLiteInternal_func != 0");
  }

  v16 = *this;
  v20 = 0;
  v17 = [v16 newComputePipelineStateWithFunction:v15 error:&v20];
  v18 = v20;
  v19 = *(this + 13);
  *(this + 13) = v17;
}

void sub_22497232C(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);

  _Unwind_Resume(a1);
}

uint64_t MetalObjects::init(MetalObjects *this)
{
  *this = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void MetalObjects::createTexture(void *a1, void *a2, int a3, int a4)
{
  std::mutex::lock((a1[2] + 24));
  v8 = [*a1[2] newBufferWithLength:4 * a4 * a3 options:0];
  std::mutex::unlock((a1[2] + 24));
  [*a1 setPixelFormat:55];
  [*a1 setTextureType:2];
  [*a1 setHeight:a3];
  [*a1 setWidth:a4];
  *a2 = [v8 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:4 * a4];
}

void MetalObjects::createTextureMedian(void *a1, void *a2, int *a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v8 = a6;
  v10 = a4;
  [*a1 setTextureType:2];
  [*a1 setHeight:v10];
  [*a1 setWidth:a5];
  if (a7)
  {
    v17 = 0;
    MetalObjects::createBuffer(a1, &v17, v10, v8);
    v15 = v17;
    [*a1 setPixelFormat:10];
    [*a1 setUsage:3];
    v14 = [v15 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:v8];
  }

  else
  {
    v16 = 0;
    MetalObjects::createBuffer(a1, &v16, a3, v8 * v10);
    v15 = v16;
    [*a1 setPixelFormat:10];
    [*a1 setUsage:1];
    [*a1 setResourceOptions:*(a1[2] + 96)];
    v14 = [v15 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:v8];
  }

  *a2 = v14;
}

void MetalObjects::createBuffer(uint64_t a1, void *a2, int a3, int a4)
{
  std::mutex::lock((*(a1 + 16) + 24));
  *a2 = [**(a1 + 16) newBufferWithLength:4 * a4 * a3 options:*(*(a1 + 16) + 96)];
  v8 = (*(a1 + 16) + 24);

  std::mutex::unlock(v8);
}

void MetalObjects::createBuffer(uint64_t a1, void *a2, int *a3, unint64_t a4)
{
  std::mutex::lock((*(a1 + 16) + 24));
  v8 = *(a1 + 16);
  v9 = *v8;
  if (a4 < 0x14)
  {
    v10 = [v9 newBufferWithLength:20 options:*(v8 + 96)];
    *a2 = v10;
    v11 = [v10 contents];
    if (a4 >= 4)
    {
      v12 = a4 >> 2;
      do
      {
        v13 = *a3++;
        *v11++ = v13;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    *a2 = [v9 newBufferWithBytes:a3 length:a4 options:*(v8 + 96)];
  }

  v14 = (*(a1 + 16) + 24);

  std::mutex::unlock(v14);
}

void MetalObjects::createTexture(id *a1, void *a2, int *a3, int a4, int a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  MetalObjects::createBuffer(a1, &v15, a3, 4 * a5 * a4);
  v10 = v15;
  [*a1 setPixelFormat:55];
  [*a1 setTextureType:2];
  [*a1 setHeight:a4];
  [*a1 setWidth:a5];
  if (*a1 && [*a1 width] && (v11 = objc_msgSend(*a1, "height"), a3) && v11)
  {
    *a2 = [v10 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:4 * a5];
  }

  else
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "general");
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;

      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "createTexture";
      v18 = 1024;
      v19 = a4;
      v20 = 1024;
      v21 = a5;
      v22 = 2048;
      v23 = a3;
      _os_log_error_impl(&dword_2247DB000, v12, OS_LOG_TYPE_ERROR, "RGB-IR: %s: rdar://112006283 Aborting texture creation rows: %d, cols: %d, buffer: %p\n", buf, 0x22u);
    }
  }
}

{
  v10 = 0;
  MetalObjects::createBuffer(a1, &v10, a3, 2 * a5 * a4);
  v9 = v10;
  [*a1 setPixelFormat:23];
  [*a1 setTextureType:2];
  [*a1 setHeight:a4];
  [*a1 setWidth:a5];
  [*a1 setResourceOptions:0];
  *a2 = [v9 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:2 * a5];
}

void MetalObjects::Algo_DistortRadialLiteInternal(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, char a15)
{
  v30 = a2;
  v29 = a3;
  v38 = a4;
  v36 = a5;
  v35 = a6;
  v34 = a7;
  v33 = a8;
  v37 = a9;
  v32 = a10;
  v31 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  std::mutex::lock((*(a1 + 16) + 24));
  v25 = [*(*(a1 + 16) + 8) commandBuffer];
  std::mutex::unlock((*(a1 + 16) + 24));
  v26 = [v25 computeCommandEncoder];
  [v26 setComputePipelineState:*(*(a1 + 16) + 104)];
  [v26 setTexture:v30 atIndex:0];
  [v26 setTexture:v29 atIndex:1];
  [v26 setTexture:v38 atIndex:2];
  [v26 setTexture:v37 atIndex:3];
  [v26 setTexture:v24 atIndex:4];
  [v26 setBuffer:v36 offset:0 atIndex:0];
  [v26 setBuffer:v35 offset:0 atIndex:1];
  [v26 setBuffer:v34 offset:0 atIndex:2];
  [v26 setBuffer:v33 offset:0 atIndex:3];
  [v26 setBuffer:v32 offset:0 atIndex:4];
  [v26 setBuffer:v31 offset:0 atIndex:5];
  [v26 setBuffer:v22 offset:0 atIndex:6];
  [v26 setBuffer:v23 offset:0 atIndex:7];
  v27 = [*(*(a1 + 16) + 104) threadExecutionWidth];
  v28 = [*(*(a1 + 16) + 104) maxTotalThreadsPerThreadgroup];
  v40[0] = (v27 + [v30 width] - 1) / v27;
  v40[1] = (v28 / v27 + [v30 height] - 1) / (v28 / v27);
  v40[2] = 1;
  v39[0] = v27;
  v39[1] = v28 / v27;
  v39[2] = 1;
  [v26 dispatchThreadgroups:v40 threadsPerThreadgroup:v39];
  [v26 endEncoding];
  [v25 commit];
  if (a15)
  {
    [v25 waitUntilCompleted];
  }
}

void MetalObjects::convultionFilter(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v12 = a2;
  v9 = a4;
  std::mutex::lock((*(a1 + 16) + 24));
  v10 = [objc_alloc(MEMORY[0x277CD7500]) initWithDevice:**(a1 + 16) kernelWidth:*(a3 + 20) kernelHeight:*(a3 + 16) weights:*(a3 + 8)];
  v11 = [*(*(a1 + 16) + 8) commandBuffer];
  std::mutex::unlock((*(a1 + 16) + 24));
  [v10 encodeToCommandBuffer:v11 sourceTexture:v12 destinationTexture:v9];
  [v11 commit];
  if (a5)
  {
    [v11 waitUntilCompleted];
  }
}

void MetalObjects::medianFilter(uint64_t a1, void *a2, void *a3, unsigned int a4, int a5)
{
  v12 = a2;
  v9 = a3;
  std::mutex::lock((*(a1 + 16) + 24));
  v10 = [objc_alloc(MEMORY[0x277CD7548]) initWithDevice:**(a1 + 16) kernelDiameter:a4];
  v11 = [*(*(a1 + 16) + 8) commandBuffer];
  std::mutex::unlock((*(a1 + 16) + 24));
  [v10 encodeToCommandBuffer:v11 sourceTexture:v12 destinationTexture:v9];
  [v11 commit];
  if (a5)
  {
    [v11 waitUntilCompleted];
  }
}

void IsfInternal::~IsfInternal(IsfInternal *this)
{
  *this = &unk_283814C68;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t IsfInternal::ConvertSavedToInternalHistory(uint64_t a1, char *a2)
{
  v3 = (a1 + 8);
  *(a1 + 16) = *(a1 + 8);
  v4 = *(a1 + 120);
  if (*a2 != v4)
  {
    NSLog(&cfstr_IsfHistoryMism.isa, *a2, v4);
    goto LABEL_41;
  }

  if (a2[4])
  {
    goto LABEL_41;
  }

  v6 = *(a2 + 2);
  if (v6 == -1)
  {
    goto LABEL_41;
  }

  if ((v6 & 0x80000000) != 0 || (v7 = *(a1 + 124), v6 >= v7))
  {
    NSLog(&cfstr_IsfHistoryOlde.isa, *(a2 + 2));
    goto LABEL_41;
  }

  v8 = *(a2 + 3);
  if ((v8 & 0x80000000) != 0 || v8 >= v7)
  {
    NSLog(&cfstr_IsfHistoryNext.isa, *(a2 + 3));
    goto LABEL_41;
  }

  v9 = __OFSUB__(v8, v6);
  v10 = v8 - v6;
  if (!((v10 < 0) ^ v9 | (v10 == 0)))
  {
    v7 = 0;
  }

  v11 = v10 + v7;
  *(a1 + 64) = v11;
  std::vector<Isf::ReferenceRecord>::reserve((a1 + 8), (v11 + 1));
  std::vector<Isf::ReferenceRecord>::__insert_with_size[abi:nn200100]<Isf::ReferenceRecord const*,Isf::ReferenceRecord const*>(v3, *(a1 + 16), a2 + 40, &a2[72 * *(a1 + 64) + 40], *(a1 + 64));
  v12 = *(a1 + 8);
  if (v12 == *(a1 + 16))
  {
    goto LABEL_28;
  }

  v13 = 0;
  do
  {
    v14 = 0;
    v15 = 60;
    while (1)
    {
      v16 = *(v12 + v15);
      if ((v16 & 0x80000000) != 0)
      {
        if (v16 != -1)
        {
LABEL_23:
          NSLog(&cfstr_IsfElementPrev.isa, v14, v16);
          goto LABEL_25;
        }
      }

      else if (v16 >= *(a1 + 64))
      {
        goto LABEL_23;
      }

      v17 = *(v12 + v15 - 12);
      if ((v17 & 0x80000000) != 0)
      {
        break;
      }

      if (v17 >= *(a1 + 64))
      {
        goto LABEL_24;
      }

LABEL_21:
      *(v12 + v14++ + 45) = 1;
      v15 += 4;
      if (v14 == 3)
      {
        goto LABEL_26;
      }
    }

    if (v17 == -1)
    {
      goto LABEL_21;
    }

LABEL_24:
    NSLog(&cfstr_IsfElementNext.isa, v14, v17);
LABEL_25:
    v13 = 1;
LABEL_26:
    *(v12 + 44) = 1;
    *(v12 + 32) = IsfInternal::GetInitialWeightForRecord(a1, v12);
    v12 += 72;
  }

  while (v12 != *(a1 + 16));
  if (v13)
  {
    goto LABEL_41;
  }

LABEL_28:
  v18 = 0;
  *(a1 + 32) = *(a2 + 1);
  v19 = (a2 + 28);
  v20 = (a1 + 40);
  while (2)
  {
    v21 = *(v19 - 3);
    if ((v21 & 0x80000000) != 0)
    {
      if (v21 != -1)
      {
LABEL_44:
        v25 = *(v19 - 3);
        goto LABEL_46;
      }
    }

    else if (v21 >= *(a1 + 124))
    {
      goto LABEL_44;
    }

    v22 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      if (v22 >= *(a1 + 124))
      {
        break;
      }

      goto LABEL_37;
    }

    if (v22 == -1)
    {
LABEL_37:
      *v20 = v21;
      v23 = *v19++;
      v20[3] = v23;
      ++v18;
      ++v20;
      if (v18 == 3)
      {
        return 0;
      }

      continue;
    }

    break;
  }

  v25 = *v19;
LABEL_46:
  NSLog(&cfstr_IsfHistoryHead.isa, v18, v25);
LABEL_41:
  NSLog(&cfstr_IsfResettingHi.isa);
  *(a1 + 32) = 0xFFFFFFFFLL;
  *(a1 + 64) = 0;
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  *(a1 + 56) = -1;
  return 0;
}

void std::vector<Isf::ReferenceRecord>::reserve(void *a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      std::allocator<Isf::ReferenceRecord>::allocate_at_least[abi:nn200100](a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

double IsfInternal::GetInitialWeightForRecord(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 148);
  if (v2)
  {
    v3 = 0;
    while (*(a2 + 24) >= *(*(a1 + 96) + 8 * v3))
    {
      if (v2 == ++v3)
      {
        v3 = *(a1 + 148);
        return *(*(a1 + 104) + 8 * v3);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return *(*(a1 + 104) + 8 * v3);
}

uint64_t IsfInternal::RemoveOldestRecord(IsfInternal *this)
{
  v1 = *(this + 8);
  if ((v1 & 0x80000000) != 0 || v1 >= *(this + 31))
  {
    NSLog(&cfstr_IsfS.isa, "Error: oldest index record is out of range.");
    return 257;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = *(this + 1);
    v5 = 0x8E38E38E38E38E39 * ((*(this + 2) - v4) >> 3);
    do
    {
      v6 = *(this + 8);
      if (v5 <= v6)
      {
LABEL_19:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v7 = v4 + 72 * v6 + v2;
      v8 = *(v7 + 60);
      v9 = *(v7 + 48);
      if (v9 == -1)
      {
        v10 = (this + v2 + 52);
        if (*v10 != v6)
        {
          IsfInternal::RemoveOldestRecord();
        }
      }

      else
      {
        if (v5 <= v9)
        {
          goto LABEL_19;
        }

        v10 = (v4 + 72 * v9 + 4 * v3 + 60);
      }

      *v10 = v8;
      if (v8 == -1)
      {
        v11 = (this + v2 + 40);
        if (*v11 != *(this + 8))
        {
          IsfInternal::RemoveOldestRecord();
        }
      }

      else
      {
        if (v5 <= v8)
        {
          goto LABEL_19;
        }

        v11 = (v4 + 72 * v8 + 4 * v3 + 48);
      }

      *v11 = v9;
      ++v3;
      v2 += 4;
    }

    while (v2 != 12);
    v12 = 0;
    *(this + 8) = (*(this + 8) + 1) % *(this + 31);
    --*(this + 16);
  }

  return v12;
}

uint64_t IsfInternal::GetElementIdx(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 60);
  if (v2 == -1)
  {
    v4 = (a1 + 40);
  }

  else
  {
    v3 = *(a1 + 8);
    if (0x8E38E38E38E38E39 * ((*(a1 + 16) - v3) >> 3) <= v2)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v4 = (v3 + 72 * v2 + 48);
  }

  return *v4;
}

uint64_t IsfInternal::InsertRecordInSortedList(IsfInternal *this, int a2, int a3)
{
  v3 = *(this + 16);
  if (v3 >= *(this + 31))
  {
    IsfInternal::InsertRecordInSortedList();
  }

  v4 = *(this + 1);
  v5 = 0x8E38E38E38E38E39 * ((*(this + 2) - v4) >> 3);
  if (v5 <= a3)
  {
    goto LABEL_10;
  }

  v6 = v4 + 72 * a3;
  v7 = this + 40;
  if (!v3)
  {
    *&v7[4 * a2] = a3;
    *(this + a2 + 13) = a3;
    v14 = v6 + 4 * a2;
    *(v14 + 48) = -1;
    *(v14 + 60) = -1;
    return 0;
  }

  v8 = *&v7[4 * a2];
  if (v8 == -1)
  {
    IsfInternal::InsertRecordInSortedList();
  }

  v9 = this + 52;
  if (*(this + a2 + 13) == -1)
  {
    IsfInternal::InsertRecordInSortedList();
  }

  v10 = v8;
  if (v5 <= v8)
  {
LABEL_10:
    std::string::__throw_length_error[abi:nn200100]();
  }

  while (1)
  {
    v11 = v4 + 72 * v10;
    if (*(v11 + 8 * a2) >= *(v6 + 8 * a2))
    {
      v15 = v11 + 4 * a2;
      *(v6 + 60 + 4 * a2) = *(v15 + 60);
      *(v15 + 60) = a3;
      *(v6 + 4 * a2 + 48) = v8;
      if (*&v7[4 * a2] == v8)
      {
        *&v7[4 * a2] = a3;
        return 0;
      }

      v17 = *(v6 + 60 + 4 * a2);
      if (v5 > v17)
      {
        *(v4 + 72 * v17 + 4 * a2 + 48) = a3;
        return 0;
      }

      goto LABEL_10;
    }

    v12 = v11 + 48;
    v13 = *(v12 + 4 * a2);
    if (v13 == -1)
    {
      break;
    }

    v10 = v13;
    v8 = v13;
    if (v5 <= v13)
    {
      goto LABEL_10;
    }
  }

  *(v12 + 4 * a2) = a3;
  v16 = v6 + 4 * a2;
  *(v16 + 60) = v8;
  if (*&v9[4 * a2] != v8)
  {
    IsfInternal::InsertRecordInSortedList();
  }

  *(v16 + 48) = -1;
  *&v9[4 * a2] = a3;
  return 0;
}

uint64_t IsfInternal::InsertNewRecord(IsfInternal *this, int a2, double a3, double a4, double a5, double a6)
{
  if (*(this + 16) == *(this + 31))
  {
    if (IsfInternal::RemoveOldestRecord(this))
    {
      return 256;
    }

    v21 = *(this + 9);
    v22 = *(this + 1);
    v23 = v21;
    v24 = 0x8E38E38E38E38E39 * ((*(this + 2) - v22) >> 3);
  }

  else
  {
    v14 = *(this + 2);
    v13 = *(this + 3);
    if (v14 >= v13)
    {
      v16 = *(this + 1);
      v17 = 0x8E38E38E38E38E39 * ((v14 - v16) >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0x38E38E38E38E38ELL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v19 = 0x8E38E38E38E38E39 * ((v13 - v16) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x1C71C71C71C71C7)
      {
        v20 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::allocator<Isf::ReferenceRecord>::allocate_at_least[abi:nn200100](this + 8, v20);
      }

      v25 = 72 * v17;
      v15 = 72 * v17 + 72;
      v26 = *(this + 1);
      v27 = *(this + 2) - v26;
      v28 = 72 * v17 - v27;
      memcpy((v25 - v27), v26, v27);
      v29 = *(this + 1);
      *(this + 1) = v28;
      *(this + 2) = v15;
      *(this + 3) = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      v15 = v14 + 72;
    }

    *(this + 2) = v15;
    v22 = *(this + 1);
    v24 = 0x8E38E38E38E38E39 * ((v15 - v22) >> 3);
    v21 = *(this + 9);
    v23 = v21;
    if (v24 != v21 + 1)
    {
      IsfInternal::InsertNewRecord();
    }
  }

  if (v24 <= v23)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (*(this + 8) == v21)
  {
    IsfInternal::InsertNewRecord();
  }

  v30 = v22 + 72 * v23;
  if (!*(this + 16))
  {
    *(this + 8) = v21;
  }

  *v30 = a3;
  *(v30 + 8) = a4;
  *(v30 + 40) = a2;
  *(v30 + 16) = a5;
  *(v30 + 24) = a6;
  NSLog(&cfstr_IsfNewCalibrat.isa, *&a6);
  v31 = 0;
  *(v30 + 32) = IsfInternal::GetInitialWeightForRecord(this, v30);
  do
  {
    IsfInternal::InsertRecordInSortedList(this, v31++, *(this + 9));
  }

  while (v31 != 3);
  result = 0;
  *(this + 9) = (*(this + 9) + 1) % *(this + 31);
  ++*(this + 16);
  return result;
}

uint64_t IsfInternal::OutlierDetectAndWeight(IsfInternal *this)
{
  v1 = *(this + 31);
  v2 = *(this + 32);
  if (v1 == v2)
  {
    v3 = *(this + 39);
    if (*(this + 162) == 1)
    {
      v3 = vcvtps_s32_f32((v3 * (v1 - *(this + 41))) / v1);
    }
  }

  else
  {
    v3 = (*(this + 16) - v2) * (*(this + 39) - *(this + 38)) / (v1 - v2) + *(this + 38);
  }

  v5 = (this + 40);
  v4 = *(this + 10);
  v7 = *(this + 1);
  v6 = *(this + 2);
  v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
  if (v8 <= v4)
  {
    goto LABEL_33;
  }

  v9 = 0;
  v10 = this + 52;
  while (1)
  {
    v11 = *(v7 + 72 * v4 + 40) == 4 ? 3 : 2;
    if (v9 >= v11)
    {
      return 0;
    }

    v12 = v5[v9];
    if (v8 <= v12)
    {
      goto LABEL_33;
    }

    if (v3 >= 1)
    {
      v13 = 0;
      v14 = v7 + 72 * v12;
      do
      {
        v15 = *&v10[4 * v9];
        if (0x8E38E38E38E38E39 * ((v6 - v7) >> 3) <= v15)
        {
          goto LABEL_33;
        }

        if (v14 == v7 + 72 * v15)
        {
          break;
        }

        if (*(v14 + 44))
        {
          *(v14 + v9 + 45) = 0;
          *(v14 + 32) = *(this + 14);
          ++v13;
        }

        v16 = *(v14 + 4 * v9 + 48);
        if (v16 == -1)
        {
          IsfInternal::OutlierDetectAndWeight();
        }

        v7 = *(this + 1);
        v6 = *(this + 2);
        if (0x8E38E38E38E38E39 * ((v6 - v7) >> 3) <= v16)
        {
          goto LABEL_33;
        }

        v14 = v7 + 72 * v16;
      }

      while (v13 < v3);
      v17 = *&v10[4 * v9];
      if (0x8E38E38E38E38E39 * ((v6 - v7) >> 3) > v17)
      {
        v18 = 0;
        v19 = v7 + 72 * v17;
        while (1)
        {
          v20 = v5[v9];
          v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
          if (v8 <= v20)
          {
            break;
          }

          if (v19 == v7 + 72 * v20)
          {
            goto LABEL_32;
          }

          if (*(v19 + 44))
          {
            *(v19 + v9 + 45) = 0;
            *(v19 + 32) = *(this + 14);
            ++v18;
          }

          v21 = *(v19 + 4 * v9 + 60);
          if (v21 == -1)
          {
            IsfInternal::OutlierDetectAndWeight();
          }

          v7 = *(this + 1);
          v6 = *(this + 2);
          v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
          if (v8 <= v21)
          {
            break;
          }

          v19 = v7 + 72 * v21;
          if (v18 >= v3)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_33:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
    if (v8 <= *&v10[4 * v9])
    {
      goto LABEL_33;
    }

LABEL_32:
    ++v9;
    v4 = *v5;
    if (v8 <= v4)
    {
      goto LABEL_33;
    }
  }
}

void IsfInternal::CleanHistory(uint64_t a1, _DWORD *a2)
{
  bzero(a2, 0xE38uLL);
  *a2 = *(a1 + 120);
  *(a2 + 4) = 1;
  a2[2] = -1;
  *(a2 + 2) = -1;
  *(a2 + 3) = -1;
  *(a2 + 4) = -1;
}

double IsfInternal::ConvertInternalHistoryToBufferToSave(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v3) >> 3) <= *(a1 + 124))
  {
    if (*(a1 + 64) >= 1)
    {
      *(a2 + 4) = 0;
    }

    if (v4 != v3)
    {
      memmove((a2 + 40), v3, v4 - v3);
    }

    result = *(a1 + 32);
    *(a2 + 8) = result;
    v7 = *(a1 + 40);
    *(a2 + 24) = *(a1 + 48);
    *(a2 + 16) = v7;
    v8 = *(a1 + 52);
    *(a2 + 36) = *(a1 + 60);
    *(a2 + 28) = v8;
  }

  else
  {
    NSLog(&cfstr_IsfErrorExisti.isa, 0x8E38E38E38E38E39 * ((v4 - v3) >> 3));
  }

  return result;
}

uint64_t IsfInternal::CalculateWeightedAvgAngleValue(IsfInternal *this, double *a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  memset(v11, 0, 24);
  memset(v10, 0, sizeof(v10));
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    goto LABEL_10;
  }

  do
  {
    for (i = 0; i != 3; ++i)
    {
      if (!*(v2 + i + 45) || !*(v2 + 44))
      {
        continue;
      }

      if (i == 2 && (*(v2 + 40) - 2) > 2)
      {
        break;
      }

      v5 = *(v2 + 32);
      *&v10[i] = v5 + *&v10[i];
      *&v11[i] = *&v11[i] + v5 * *(v2 + 8 * i);
    }

    v2 += 72;
  }

  while (v2 != v3);
LABEL_10:
  for (j = 0; j != 3; ++j)
  {
    v7 = *&v10[j];
    if (v7 == 0.0)
    {
      v8 = NAN;
    }

    else
    {
      v8 = *&v11[j] / v7;
    }

    a2[j] = v8;
  }

  return 0;
}

uint64_t IsfInternal::getHistoryAxisStatistics(uint64_t a1, int a2, void *a3)
{
  __src = 0;
  v33 = 0;
  v34 = 0;
  v5 = *(a1 + 4 * a2 + 40);
  if (v5 == -1)
  {
    v21 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    v8 = *(a1 + 8);
    do
    {
      v9 = v8 + 72 * v5;
      if (v6 >= v34)
      {
        v10 = __src;
        v11 = v6 - __src;
        v12 = (v6 - __src) >> 3;
        v13 = v12 + 1;
        if ((v12 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v14 = v34 - __src;
        if ((v34 - __src) >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::allocator<double>::allocate_at_least[abi:nn200100](&__src, v15);
        }

        v16 = v12;
        v17 = (8 * v12);
        v18 = *(v9 + 8 * v7);
        v19 = &v17[-v16];
        *v17 = v18;
        v6 = (v17 + 1);
        memcpy(v19, v10, v11);
        v20 = __src;
        __src = v19;
        v33 = v6;
        v34 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v6 = *(v9 + 8 * v7);
        v6 += 8;
      }

      v33 = v6;
      v8 = *(a1 + 8);
      v5 = *(v8 + 72 * v5 + 4 * v7 + 48);
    }

    while (v5 != -1);
    v21 = __src;
  }

  v22 = (v6 - v21) >> 3;
  v23 = ((v22 + 1) >> 2) - 1;
  v24 = ((v22 + 1) >> 1) - 1;
  v25 = ((3 * (v22 + 1)) >> 2) - 1;
  v29 = v6 == v21 || v22 != *(a1 + 64) || v23 >= v22 || v24 >= v22 || v25 >= v22;
  v30 = !v29;
  if (!v29)
  {
    *a3 = *v21;
    a3[1] = *&v21[8 * v23];
    a3[2] = *&v21[8 * v24];
    a3[3] = *&v21[8 * v25];
    a3[4] = *(v6 - 1);
LABEL_36:
    v33 = v21;
    operator delete(v21);
    return v30;
  }

  if (v21)
  {
    goto LABEL_36;
  }

  return v30;
}

void sub_224973FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IsfInternal::getHistoryStatistics(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 64);
  result = IsfInternal::getHistoryAxisStatistics(a1, 0, (a2 + 8));
  if (!result || (result = IsfInternal::getHistoryAxisStatistics(a1, 1, (a2 + 48)), !result) || (result = IsfInternal::getHistoryAxisStatistics(a1, 2, (a2 + 88)), (result & 1) == 0))
  {
    *a2 = 0;
  }

  return result;
}

uint64_t IsfInternal::Run(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *(a1 + 160) = 0;
  if (a3 == 2)
  {
    NSLog(&cfstr_IsfS.isa, a2, a4, a5, a6, a7, "Error: Calibration result cannot be originated from GMC-RGB-IR.");
    return 258;
  }

  v9 = a7;
  *(a1 + 72) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 88) = 0x7FF8000000000000;
  NSLog(&cfstr_IsfVDDDNewCali.isa, 1, 3, 1, *&a4, *&a5, *&a6, *&a7, a3);
  IsfInternal::ConvertSavedToInternalHistory(a1, a2);
  if (a3 > 2)
  {
    if (a3 != 3 && a3 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
LABEL_7:
      NSLog(&cfstr_IsfErrorCalibr.isa, v15, v16, v17, v18, v19, a3);
      return 258;
    }
  }

  else
  {
    LODWORD(v16) = *(a1 + 144);
    v9 = *&v16;
  }

  v20 = *(a1 + 136);
  if (v9 < *(a1 + 132) || v9 > v20)
  {
    NSLog(&cfstr_IsfConfidenceI.isa, *&v9, *(a1 + 132), v20);
    return 260;
  }

  bzero(a2, 0xE38uLL);
  *a2 = *(a1 + 120);
  *(a2 + 4) = 1;
  *(a2 + 8) = -1;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *(a2 + 32) = -1;
  if (IsfInternal::InsertNewRecord(a1, a3, a4, a5, a6, v9))
  {
    return 256;
  }

  v22 = *(a1 + 128);
  if (*(a1 + 64) >= v22)
  {
    IsfInternal::ConvertInternalHistoryToBufferToSave(a1, a2);
    if (v24)
    {
      return 256;
    }

    IsfInternal::CalcNewRotation(a1, a2);
    return 0;
  }

  else
  {
    NSLog(&cfstr_IsfHistoryDoes.isa, *(a1 + 64), v22);
    IsfInternal::ConvertInternalHistoryToBufferToSave(a1, a2);
    if (v23)
    {
      return 256;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t IsfInternal::CalcNewRotation(uint64_t a1, char *a2)
{
  if (*(a1 + 160))
  {
    return 0;
  }

  IsfInternal::ConvertSavedToInternalHistory(a1, a2);
  v4 = *(a1 + 128);
  if (*(a1 + 64) < v4)
  {
    NSLog(&cfstr_IsfHistoryDoes.isa, *(a1 + 64), v4);
    return 1;
  }

  if (*(a1 + 161) == 1)
  {
    *(a1 + 162) = 0;
    *(a1 + 164) = 0;
    if ((*(*a1 + 16))(a1) == 261)
    {
      *(a1 + 162) = 1;
      v5 = *(a1 + 32);
      v6 = *(a1 + 8);
      v7 = 0x8E38E38E38E38E39 * ((*(a1 + 16) - v6) >> 3);
      if (v7 <= v5)
      {
        goto LABEL_16;
      }

      v8 = *(a1 + 164);
      if (v8)
      {
        v9 = *(a1 + 124);
        v10 = *(a1 + 164);
        while (1)
        {
          v11 = v5 % v9;
          if (v7 <= v11)
          {
            break;
          }

          *(v6 + 72 * v11 + 44) = 0;
          LODWORD(v5) = v5 + 1;
          if (!--v10)
          {
            goto LABEL_12;
          }
        }

LABEL_16:
        std::string::__throw_length_error[abi:nn200100]();
      }

LABEL_12:
      v12 = 1;
    }

    else
    {
      v12 = *(a1 + 162);
      v8 = *(a1 + 164);
    }

    NSLog(&cfstr_IsfIsfStepDete.isa, v12, v8);
  }

  IsfInternal::OutlierDetectAndWeight(a1);
  IsfInternal::CalculateWeightedAvgAngleValue(a1, (a1 + 72));
  NSLog(&cfstr_IsfNewCalculat.isa, *(a1 + 72), *(a1 + 80), *(a1 + 88));
  result = 0;
  *(a1 + 160) = 1;
  return result;
}

void std::allocator<Isf::ReferenceRecord>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

char *std::vector<Isf::ReferenceRecord>::__insert_with_size[abi:nn200100]<Isf::ReferenceRecord const*,Isf::ReferenceRecord const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v8) >> 3)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0x8E38E38E38E38E39 * ((v8 - __dst) >> 3)) >= a5)
      {
        v22 = 9 * a5;
        v23 = &__dst[72 * a5];
        v24 = &v8[-72 * a5];
        v25 = a1[1];
        while (v24 < v8)
        {
          *v25 = *v24;
          v26 = *(v24 + 1);
          v27 = *(v24 + 2);
          v28 = *(v24 + 3);
          *(v25 + 64) = *(v24 + 8);
          *(v25 + 32) = v27;
          *(v25 + 48) = v28;
          *(v25 + 16) = v26;
          v24 += 72;
          v25 += 72;
        }

        a1[1] = v25;
        if (v8 != v23)
        {
          memmove(&__dst[72 * a5], __dst, v8 - v23);
        }

        v35 = 8 * v22;
        v36 = v5;
        v37 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          *v18 = *v16;
          v19 = *(v16 + 1);
          v20 = *(v16 + 2);
          v21 = *(v16 + 3);
          *(v18 + 64) = *(v16 + 8);
          *(v18 + 32) = v20;
          *(v18 + 48) = v21;
          *(v18 + 16) = v19;
          v16 += 72;
          v18 += 72;
          v17 += 72;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v29 = &__dst[72 * a5];
        v30 = v17 - 72 * a5;
        v31 = v17;
        while (v30 < v8)
        {
          *v31 = *v30;
          v32 = *(v30 + 16);
          v33 = *(v30 + 32);
          v34 = *(v30 + 48);
          *(v31 + 64) = *(v30 + 64);
          *(v31 + 32) = v33;
          *(v31 + 48) = v34;
          *(v31 + 16) = v32;
          v30 += 72;
          v31 += 72;
        }

        a1[1] = v31;
        if (v18 != v29)
        {
          memmove(&__dst[72 * a5], __dst, v17 - v29);
        }

        v36 = v5;
        v37 = v6;
        v35 = v15;
      }

      memmove(v36, v37, v35);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x71C71C71C71C71C7 * (&v8[-*a1] >> 3);
    if (v11 > 0x38E38E38E38E38ELL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = __dst - v10;
    v13 = 0x8E38E38E38E38E39 * ((v9 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x1C71C71C71C71C7)
    {
      v14 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      std::allocator<Isf::ReferenceRecord>::allocate_at_least[abi:nn200100](a1, v14);
    }

    v38 = 8 * (v12 >> 3);
    v39 = (v38 + 72 * a5);
    v40 = 72 * a5;
    v41 = v38;
    do
    {
      *v41 = *v6;
      v42 = *(v6 + 1);
      v43 = *(v6 + 2);
      v44 = *(v6 + 3);
      *(v41 + 64) = *(v6 + 8);
      *(v41 + 32) = v43;
      *(v41 + 48) = v44;
      *(v41 + 16) = v42;
      v41 += 72;
      v6 += 72;
      v40 -= 72;
    }

    while (v40);
    memcpy(v39, v5, a1[1] - v5);
    v45 = *a1;
    v46 = &v39[a1[1] - v5];
    a1[1] = v5;
    v47 = v5 - v45;
    v48 = (v38 - (v5 - v45));
    memcpy(v48, v45, v47);
    v49 = *a1;
    *a1 = v48;
    a1[1] = v46;
    a1[2] = 0;
    if (v49)
    {
      operator delete(v49);
    }

    return v38;
  }

  return v5;
}

void std::allocator<double>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void IsfInternal::RemoveOldestRecord()
{
  __assert_rtn("RemoveOldestRecord", "IsfInternal.mm", 128, "m_tail[i] == m_oldestIdx");
}

{
  __assert_rtn("RemoveOldestRecord", "IsfInternal.mm", 138, "m_head[i] == m_oldestIdx");
}

void IsfInternal::InsertRecordInSortedList()
{
  __assert_rtn("InsertRecordInSortedList", "IsfInternal.mm", 176, "m_numberOfRecords < getHistoryWindowSize()");
}

{
  __assert_rtn("InsertRecordInSortedList", "IsfInternal.mm", 206, "m_tail[angleIdx] == newRecord.prevInSorted[angleIdx]");
}

{
  __assert_rtn("InsertRecordInSortedList", "IsfInternal.mm", 189, "m_tail[angleIdx] != -1");
}

{
  __assert_rtn("InsertRecordInSortedList", "IsfInternal.mm", 188, "m_head[angleIdx] != -1");
}

void IsfInternal::InsertNewRecord()
{
  __assert_rtn("InsertNewRecord", "IsfInternal.mm", 252, "m_records.size() == (size_t)m_nextIdx + 1");
}

{
  __assert_rtn("InsertNewRecord", "IsfInternal.mm", 256, "m_oldestIdx != m_nextIdx");
}

void IsfInternal::OutlierDetectAndWeight()
{
  __assert_rtn("OutlierDetectAndWeight", "IsfInternal.mm", 315, "currentRecord->nextInSorted[angleIdx] != -1");
}

{
  __assert_rtn("OutlierDetectAndWeight", "IsfInternal.mm", 329, "currentRecord->prevInSorted[angleIdx] != -1");
}

void RgbIrCalibration::RgbIrCalibration(RgbIrCalibration *this, int a2)
{
  *this = 0;
  gDbgLvl = a2;
  operator new();
}

void RgbIrCalibration::~RgbIrCalibration(RgbIrCalibration *this)
{
  if (*this == 1)
  {
    *(this + 1) = 1;
    CalibrateRgbIr::abort(*(this + 1));
  }

  else
  {
    v1 = *(this + 1);
    if (v1)
    {
      CalibrateRgbIr::~CalibrateRgbIr(v1);
      MEMORY[0x22AA55B60]();
    }
  }
}

uint64_t RgbIrCalibration::Calibrate(uint64_t a1, __CVBuffer *a2, const __CFDictionary *a3, __CVBuffer *a4, void *a5, __CVBuffer *a6, unsigned int a7, const __CFBoolean *a8, double *a9, const __CFArray *a10, __int16 a11, uint64_t a12, unsigned int *a13, double *a14, _DWORD *a15, uint64_t a16)
{
  context = objc_autoreleasePoolPush();
  *a1 = 1;
  v20 = CalibrateRgbIr::Calibrate(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a14, a15);
  *a1 = 0;
  if (*(a1 + 1))
  {
    v21 = 4102;
  }

  else
  {
    v21 = v20;
    v22 = *(a1 + 8);
    *a16 = *(v22 + 984);
    *(a16 + 8) = *(v22 + 992);
    *(a16 + 12) = *(v22 + 996);
    *(a16 + 16) = *(v22 + 1000);
    v23 = *(v22 + 1004);
    *a13 = v23;
    if (v23 <= 2)
    {
      *(a16 + 20) = v23;
    }
  }

  objc_autoreleasePoolPop(context);
  return v21;
}

void CalibrateRgbIr::CalibrateRgbIr(CalibrateRgbIr *this)
{
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 64) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 50) = 0;
  *(this + 122) = 0;
  *(this + 492) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 464) = 0;
  MetalMgt::MetalMgt((this + 496));
  for (i = 0; i != 144; i += 24)
  {
    MetalObjects::MetalObjects((this + i + 608));
  }

  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 56) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 60) = 0u;
  *(this + 976) = 0;
  *(this + 123) = 0x7FF8000000000000;
  *(this + 62) = 0u;
  CalibrateRgbIr::Init(this);
}

void sub_224974C24(_Unwind_Exception *a1)
{
  CalibrateRgbIr::MTLBufferParams::~MTLBufferParams(v1 + 112);

  v3 = v1 + 91;
  v4 = -144;
  do
  {
    v3 = H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::{unnamed type#3}::~TimeOfFlightColorSynchronizerInternal(v3) - 3;
    v4 += 24;
  }

  while (v4);
  MetalMgt::~MetalMgt((v1 + 62));
  _Unwind_Resume(a1);
}

void MetalMgt::~MetalMgt(MetalMgt *this)
{
  std::mutex::~mutex((this + 24));
}

void MetalObjects::MetalObjects(MetalObjects *this)
{
  *this = 0;
  *(this + 1) = 0;
  MetalObjects::init(this);
}

void CalibrateRgbIr::~CalibrateRgbIr(CalibrateRgbIr *this)
{
  if (gDbgLvl)
  {
    CFRelease(*(this + 126));
  }

  for (i = 0; i != -144; i -= 24)
  {
  }

  std::mutex::~mutex((this + 520));
}

void sub_224974E98(_Unwind_Exception *a1)
{
  CalibrateRgbIr::MTLBufferParams::~MTLBufferParams(v1 + 112);

  v3 = v1 + 91;
  v4 = -144;
  do
  {
    v3 = H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::{unnamed type#3}::~TimeOfFlightColorSynchronizerInternal(v3) - 3;
    v4 += 24;
  }

  while (v4);
  MetalMgt::~MetalMgt((v1 + 62));
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_RgbIrCalibration_mm()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], &gOutputDirName, &dword_2247DB000);
  __cxa_atexit(v1, gCurrFrameId, &dword_2247DB000);

  objc_autoreleasePoolPop(v0);
}

uint64_t PBCreateDirForFile(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithCString:v1 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  if ([v3 fileExistsAtPath:v2 isDirectory:&v9])
  {
    goto LABEL_11;
  }

  v4 = [v2 pathExtension];
  v5 = [v4 isEqualToString:&stru_28381ECE0];

  if (v5)
  {
LABEL_10:
    if (![v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0])
    {
      v7 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v7 = 1;
LABEL_13:
    v6 = v2;
    goto LABEL_14;
  }

  v6 = [v2 stringByDeletingLastPathComponent];

  if (![v3 fileExistsAtPath:v6 isDirectory:&v9] || (v9 & 1) == 0)
  {
    v2 = v6;
    goto LABEL_10;
  }

  v7 = 1;
LABEL_14:

  return v7;
}

uint64_t PortableBuffer::GetPixelFormatFromBytePerPixel(PortableBuffer *this)
{
  if (this - 1 > 7)
  {
    return 4294901760;
  }

  else
  {
    return dword_2249D2B40[this - 1];
  }
}

uint64_t PortableBuffer::ReadHeader(std::string *__str, int a2, uint64_t a3, uint64_t a4)
{
  v51[2] = *MEMORY[0x277D85DE8];
  *(&v50.__r_.__value_.__s + 23) = 0;
  v50.__r_.__value_.__s.__data_[0] = 0;
  if (a2)
  {
    std::string::operator=(&v50, __str);
  }

  else
  {
    if (byte_281003B3F >= 0)
    {
      v7 = byte_281003B3F;
    }

    else
    {
      v7 = qword_281003B30;
    }

    p_p = &__p;
    std::string::basic_string[abi:nn200100](&__p, v7 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (byte_281003B3F >= 0)
      {
        v9 = &PortableBuffer::m_outputDir;
      }

      else
      {
        v9 = PortableBuffer::m_outputDir;
      }

      memmove(p_p, v9, v7);
    }

    *(&p_p->__r_.__value_.__l.__data_ + v7) = 47;
    v10 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v10 >= 0)
    {
      v11 = __str;
    }

    else
    {
      v11 = __str->__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&__p, v11, size);
    v14 = v13->__r_.__value_.__r.__words[0];
    v51[0] = v13->__r_.__value_.__l.__size_;
    *(v51 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    v50.__r_.__value_.__r.__words[0] = v14;
    v50.__r_.__value_.__l.__size_ = v51[0];
    *(&v50.__r_.__value_.__r.__words[1] + 7) = *(v51 + 7);
    *(&v50.__r_.__value_.__s + 23) = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Loads file ", 11);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v50;
  }

  else
  {
    v17 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v50.__r_.__value_.__l.__size_;
  }

  v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ".\n", 2);
  std::ifstream::open();
  if (*(a4 + 136))
  {
    std::istream::read();
    if (*a3 == 0xE010B0A07070009 && *(a3 + 8) == 0x70E0F0F020BLL)
    {
      if (*(a3 + 20) == 1)
      {
        v29 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Loaded header of file ", 22);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v50;
        }

        else
        {
          v30 = v50.__r_.__value_.__r.__words[0];
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v50.__r_.__value_.__l.__size_;
        }

        v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, v30, v31);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, ".\n", 2);
        v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t descr: ", 9);
        v34 = strlen((a3 + 24));
        v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, a3 + 24, v34);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, ".\n", 2);
        v36 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t width: ", 9);
        v37 = MEMORY[0x22AA55970](v36, *(a3 + 172));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, ".\n", 2);
        v38 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t height: ", 10);
        v39 = MEMORY[0x22AA55970](v38, *(a3 + 176));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, ".\n", 2);
        v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t stride: ", 10);
        v41 = MEMORY[0x22AA55970](v40, *(a3 + 180));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, ".\n", 2);
        v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t pixel format: 0x", 18);
        *(v42 + *(*v42 - 24) + 8) = *(v42 + *(*v42 - 24) + 8) & 0xFFFFFFB5 | 8;
        v43 = MEMORY[0x22AA55970]();
        *(v43 + *(*v43 - 24) + 8) = *(v43 + *(*v43 - 24) + 8) & 0xFFFFFFB5 | 2;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, ".\n", 2);
        v44 = 1;
        goto LABEL_53;
      }

      v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "PortableBuffer version (v", 25);
      v46 = MEMORY[0x22AA55970](v45, *(a3 + 20));
      v47 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, ") is not the same as the one supported by this software (v", 58);
      v22 = MEMORY[0x22AA55960](v47, 1);
      v21 = ").\n";
      v23 = 3;
    }

    else
    {
      v21 = "Magic number of buffer does not match. File may not be a PortableBuffer or may be corrupted.\n";
      v22 = MEMORY[0x277D82678];
      v23 = 93;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, v21, v23);
  }

  else
  {
    v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Unable to read from ", 20);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v50;
    }

    else
    {
      v25 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v50.__r_.__value_.__l.__size_;
    }

    v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, v25, v26);
    std::ios_base::getloc((v27 + *(*v27 - 24)));
    v28 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
    (v28->__vftable[2].~facet_0)(v28, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
  }

  v44 = 0;
LABEL_53:
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  return v44;
}

void sub_224975624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *GrayScaleImage::save(int a1, CVPixelBufferRef pixelBuffer)
{
  PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PlaneCount)
  {
    CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    if (PixelFormatType == 2037741158)
    {
      CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
LABEL_8:
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      CVPixelBufferGetBaseAddress(pixelBuffer);

      return CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    }
  }

  else
  {
    CVPixelBufferGetWidth(pixelBuffer);
    CVPixelBufferGetHeight(pixelBuffer);
    if (PixelFormatType == 825306677 || PixelFormatType == 1278226742 || PixelFormatType == 825437747)
    {
      CVPixelBufferGetBytesPerRow(pixelBuffer);
      goto LABEL_8;
    }
  }

  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Unsupported CVPixelBuffer pixel format: ", 40);
  v7 = MEMORY[0x22AA55970](v6, PixelFormatType);

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " (see CVPixelBufferPrivate.h). Please contact PortableBuffer support.\n", 70);
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AA55910](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x22AA55920](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_224975B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_PortableBuffer_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(MEMORY[0x277D82640], &PortableBuffer::m_outputDir, &dword_2247DB000);

  objc_autoreleasePoolPop(v0);
}

uint64_t Isf::RunIsf(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, int64x2_t *a9)
{
  result = IsfInternal::Run(a6, a7, a8, a1, a2, a3, a4);
  if (result)
  {
    *a9 = vdupq_n_s64(0x7FF8000000000000uLL);
    v12 = 0x7FF8000000000000;
  }

  else
  {
    a9->i64[0] = a6[9];
    a9->i64[1] = a6[10];
    v12 = a6[11];
  }

  a9[1].i64[0] = v12;
  return result;
}

uint64_t CalibrateRgbIr::Init(CalibrateRgbIr *this)
{
  if (gDbgLvl)
  {
    *(this + 126) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v2 = *(this + 1);
  v18 = *this;
  v19 = v2;
  v20 = *(this + 2);
  v21 = *(this + 6);
  v22 = *(this + 56);
  v23 = *(this + 9);
  v24 = *(this + 5);
  v25 = *(this + 12);
  v26 = *(this + 104);
  v3 = *(this + 120);
  v4 = *(this + 136);
  v5 = *(this + 152);
  v30 = *(this + 21);
  v29 = v5;
  v28 = v4;
  v27 = v3;
  v6 = *(this + 11);
  v7 = *(this + 12);
  v8 = *(this + 13);
  v34 = *(this + 28);
  v32 = v7;
  v33 = v8;
  v31 = v6;
  InitCamParams(&v18);
  v9 = *(this + 248);
  v18 = *(this + 232);
  v19 = v9;
  v20 = *(this + 264);
  v21 = *(this + 35);
  v22 = *(this + 18);
  v23 = *(this + 38);
  v24 = *(this + 312);
  v25 = *(this + 41);
  v10 = *(this + 22);
  v26 = *(this + 21);
  v11 = *(this + 23);
  v12 = *(this + 24);
  v30 = *(this + 50);
  v29 = v12;
  v28 = v11;
  v27 = v10;
  v13 = *(this + 408);
  v14 = *(this + 424);
  v15 = *(this + 440);
  v34 = *(this + 57);
  v32 = v14;
  v33 = v15;
  v31 = v13;
  result = InitCamParams(&v18);
  for (i = 0; i != 144; i += 24)
  {
    *(this + i + 624) = this + 496;
  }

  return result;
}

void sub_22497608C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  Matrix<float>::~Matrix(va);
  Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

void OneDimensionHorizontalFilterWithPadding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 1)
  {
    OneDimensionHorizontalFilterWithPadding();
  }

  v4 = *(a2 + 20);
  if ((v4 & 1) == 0)
  {
    OneDimensionHorizontalFilterWithPadding();
  }

  ImageUtils::Filter2<float>(a1, a2, a3);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v4 >> 1;
    do
    {
      if (v4 >= 2)
      {
        v10 = 0;
        v11 = *(a1 + 20);
        v12 = *(a2 + 16);
        v13 = *(a2 + 20);
        v14 = v11 - 1;
        v15 = *(a3 + 16);
        v16 = ~(v4 >> 1) + v4;
        v17 = v4 >> 1;
        v18 = 4 * v11 * v8;
        v19 = v4 >> 1;
        do
        {
          if (v15 <= v8 || (v20 = *(a3 + 20), v10 >= v20))
          {
            GMC_Homography();
          }

          v21 = v11 + ~v10;
          if (v20 <= v21)
          {
            GMC_Homography();
          }

          if (v10 == v11)
          {
            GMC_Homography();
          }

          if (v11 <= v21)
          {
            GMC_Homography();
          }

          v22 = *(a3 + 8);
          v23 = v22 + 4 * v10;
          v24 = v20 * v8;
          v25 = v22 + 4 * v21;
          v26 = *(a1 + 8);
          *(v23 + 4 * v24) = 0;
          *(v25 + 4 * v24) = 0;
          if (v10 > (v9 - v13))
          {
            if (v12)
            {
              v27 = (v26 + v18 + 4 * v14);
              v28 = (v26 + 4 * v11 * v8);
              v29 = v16;
              v30 = v17;
              v31 = v19;
              while (v13 > v30)
              {
                *(v23 + 4 * v24) = *(v23 + 4 * v24) + (*v28 * *(*(a2 + 8) + 4 * v30));
                if (v13 <= v29)
                {
                  GMC_Homography();
                }

                v32 = *v27--;
                *(v25 + 4 * v24) = *(v25 + 4 * v24) + (v32 * *(*(a2 + 8) + 4 * v29));
                ++v31;
                ++v30;
                ++v28;
                --v29;
                if (v31 >= v13)
                {
                  goto LABEL_18;
                }
              }
            }

            GMC_Homography();
          }

LABEL_18:
          ++v10;
          --v19;
          v18 += 4;
          --v14;
          LODWORD(v17) = v17 - 1;
          ++v16;
        }

        while (v10 != v9);
      }

      ++v8;
    }

    while (v8 != v7);
  }
}

void OneDimensionVerticalFilterWithPadding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) == 1)
  {
    if (*(a2 + 20))
    {
      Matrix<float>::Transpose(a2);
    }

    OneDimensionVerticalFilterWithPadding();
  }

  OneDimensionVerticalFilterWithPadding();
}

uint64_t CalibrateRgbIr::SampleWorldPointsOnCam(uint64_t a1, int *a2, void *a3, uint64_t a4)
{
  v13 = 0;
  MetalObjects::createBuffer(a4, &v13, (a1 + 784), 0x6CuLL);
  v8 = v13;
  v12 = 0;
  MetalObjects::createBuffer(a4, &v12, a2, 0x6CuLL);
  v9 = v12;
  v10 = *(a4 + 8);
  *a3 = v10;
  MetalObjects::Algo_DistortRadialLiteInternal(a4, *(a1 + 752), *(a1 + 760), *(a1 + 768), *(a1 + 920), *(a1 + 912), *(a1 + 904), *(a1 + 896), *(a1 + 776), *(a1 + 928), v8, v9, *(a1 + 936), v10, 1);

  return 0;
}

void CalibrateRgbIr::CostFmi(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 16);
  v34 = *a1;
  v35 = v9;
  v36 = *(a1 + 32);
  v10 = *(a1 + 48);
  *&v37[8] = *(a1 + 56);
  v11 = *(a1 + 72);
  *v37 = v10;
  *&v37[24] = v11;
  v38 = *(a1 + 80);
  v12 = *(a1 + 96);
  *&v39[8] = *(a1 + 104);
  v13 = *(a1 + 120);
  v14 = *(a1 + 136);
  v15 = *(a1 + 152);
  v16 = *(a1 + 168);
  *v39 = v12;
  *&v39[72] = v16;
  *&v39[56] = v15;
  *&v39[40] = v14;
  *&v39[24] = v13;
  v17 = *(a1 + 192);
  v40[0] = *(a1 + 176);
  v40[1] = v17;
  v40[2] = *(a1 + 208);
  v41 = *(a1 + 224);
  v38 = vaddq_f64(v38, vcvtq_f64_f32(*(a2 + 4)));
  *v39 = v12 + *(a2 + 3);
  GeomUtils::CalcRotationMatrix<double>(v38.f64, &v39[8]);
  v23 = vcvt_f32_f64(v34);
  v18 = *&v35;
  v24 = v18;
  v25 = DWORD2(v35);
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(*v37), *&v37[16]);
  v27 = vcvt_hight_f32_f64(vcvt_f32_f64(v38), *v39);
  v28 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v39[16]), *&v39[32]);
  v29 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v39[48]), *&v39[64]);
  v19 = *v40;
  v30 = v19;
  v31 = *(v40 + 8);
  v32 = 0;
  v33 = 0;
  v22 = 0;
  CalibrateRgbIr::SampleWorldPointsOnCam(a1, &v23, &v22, a4);
  v20 = v22;
  [v20 width];
  [v20 height];
  v21 = [v20 buffer];
  [v21 contents];

  operator new[]();
}

void sub_22497695C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  Matrix<float>::~Matrix(va);
  Matrix<float>::~Matrix(va1);

  _Unwind_Resume(a1);
}

void CalibrateRgbIr::ReleaseMetalObjects(CalibrateRgbIr *this)
{
  v2 = *(this + 94);
  *(this + 94) = 0;

  v3 = *(this + 95);
  *(this + 95) = 0;

  v4 = *(this + 94);
  *(this + 94) = 0;

  v5 = *(this + 115);
  *(this + 115) = 0;

  v6 = *(this + 114);
  *(this + 114) = 0;

  v7 = *(this + 116);
  *(this + 116) = 0;

  v8 = *(this + 117);
  *(this + 117) = 0;

  v9 = *(this + 113);
  *(this + 113) = 0;

  v10 = *(this + 112);
  *(this + 112) = 0;

  v11 = *(this + 97);
  *(this + 97) = 0;

  v12 = *(this + 120);
  *(this + 120) = 0;

  v13 = *(this + 121);
  *(this + 121) = 0;
}

void CalibrateRgbIr::CalculateGrid(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 <= a4)
  {
    v5 = a3;
    v6 = *(a2 + 8);
    v7 = v6;
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = v7 * v7 * v5;
        do
        {
          if (v6)
          {
            v10 = 0;
            v11 = v9 + v7 * v8;
            do
            {
              if (*(a1 + 976) == 1)
              {
                break;
              }

              ++v10;
              ++v11;
            }

            while (v10 < v6);
          }

          ++v8;
          v7 = *(a2 + 8);
        }

        while (v8 < v6);
      }
    }

    while (v5++ != a4);
  }

  for (i = 0; i != 6; ++i)
  {
    v14 = [*(a1 + 968) objectAtIndexedSubscript:i];
    dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t CalibrateRgbIr::PrepareGridCalculation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  if (a4 && a5)
  {
    v105[0] = 0;
    MetalObjects::createTexture((a1 + 608), v105, *(a2 + 8), a5, a4);
    v10 = v105[0];
    v11 = v105[0];
    objc_storeStrong((a1 + 752), v10);
    v104 = 0;
    MetalObjects::createTexture((a1 + 608), &v104, (*(a2 + 8) + 4 * *(a2 + 20)), v5, v6);
    v12 = v104;
    v13 = v104;
    objc_storeStrong((a1 + 760), v12);
    v103 = 0;
    MetalObjects::createTexture((a1 + 608), &v103, (*(a2 + 8) + 4 * (2 * *(a2 + 20))), v5, v6);
    v14 = v103;
    v15 = v103;
    objc_storeStrong((a1 + 768), v14);
    if (*(a1 + 752) && *(a1 + 760) && *(a1 + 768))
    {
      *(a1 + 784) = vcvt_f32_f64(*(a1 + 232));
      v16 = *(a1 + 248);
      *(a1 + 792) = v16;
      v17 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 312)), *(a1 + 328));
      *(a1 + 800) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 280)), *(a1 + 296));
      *(a1 + 816) = v17;
      v18 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 344)), *(a1 + 360));
      v19 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 376)), *(a1 + 392));
      *(a1 + 796) = *(a1 + 256);
      *(a1 + 832) = v18;
      *(a1 + 848) = v19;
      v20 = *(a1 + 408);
      *(a1 + 864) = v20;
      *(a1 + 868) = *(a1 + 416);
      *(a1 + 884) = v6;
      *(a1 + 888) = v5;
      v102 = 0;
      v78 = v11;
      MetalObjects::createBuffer(a1 + 608, &v102, *(a1 + 272), 4 * *(a1 + 256));
      v21 = v102;
      v22 = v102;
      v101 = 0;
      MetalObjects::createBuffer(a1 + 608, &v101, *(a1 + 264), 4 * *(a1 + 256));
      v77 = v22;
      v23 = v101;
      v76 = v101;
      objc_storeStrong((a1 + 912), v21);
      objc_storeStrong((a1 + 920), v23);
      Matrix<float>::Matrix(v99, 1, *(a1 + 420));
      v24 = *(a1 + 420);
      if (v24)
      {
        v25 = 0;
        if ((v24 + 1) > 2)
        {
          v26 = v24 + 1;
        }

        else
        {
          v26 = 2;
        }

        v27 = (v26 - 1);
        v28 = vdupq_n_s64(v27 - 1);
        v29 = (v27 + 3) & 0x1FFFFFFFCLL;
        v30 = (v100 + 2);
        do
        {
          v31 = vdupq_n_s64(v25);
          v32 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_2249B9820)));
          if (vuzp1_s16(v32, *v28.i8).u8[0])
          {
            *(v30 - 2) = (v25 + 1) + -0.5;
          }

          if (vuzp1_s16(v32, *&v28).i8[2])
          {
            *(v30 - 1) = (v25 + 2) + -0.5;
          }

          if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_2249BBCC0)))).i32[1])
          {
            *v30 = (v25 + 3) + -0.5;
            v30[1] = (v25 + 4) + -0.5;
          }

          v25 += 4;
          v30 += 4;
        }

        while (v29 != v25);
      }

      Matrix<float>::Matrix(v97, 1, *(a1 + 416));
      v33 = *(a1 + 416);
      if (v33)
      {
        v34 = 0;
        if ((v33 + 1) > 2)
        {
          v35 = v33 + 1;
        }

        else
        {
          v35 = 2;
        }

        v36 = (v35 - 1);
        v37 = vdupq_n_s64(v36 - 1);
        v38 = (v36 + 3) & 0x1FFFFFFFCLL;
        v39 = (v98 + 2);
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_2249B9820)));
          if (vuzp1_s16(v41, *v37.i8).u8[0])
          {
            *(v39 - 2) = (v34 + 1) + -0.5;
          }

          if (vuzp1_s16(v41, *&v37).i8[2])
          {
            *(v39 - 1) = (v34 + 2) + -0.5;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_2249BBCC0)))).i32[1])
          {
            *v39 = (v34 + 3) + -0.5;
            v39[1] = (v34 + 4) + -0.5;
          }

          v34 += 4;
          v39 += 4;
        }

        while (v38 != v34);
      }

      v96 = 0;
      MetalObjects::createBuffer(a1 + 608, &v96, v100, 4 * *(a1 + 420));
      v42 = v96;
      v79 = v96;
      v95 = 0;
      MetalObjects::createBuffer(a1 + 608, &v95, v98, 4 * *(a1 + 416));
      v43 = v95;
      v44 = v95;
      objc_storeStrong((a1 + 904), v43);
      objc_storeStrong((a1 + 896), v42);
      *(a1 + 944) = v97;
      *(a1 + 952) = v99;
      v45 = (a1 + 616);
      v46 = 6;
      do
      {
        obj = 0;
        MetalObjects::createTextureSharedBuffer(v45 - 1, &obj, v5, v6);
        objc_storeStrong(v45, obj);
        v45 += 3;
        --v46;
      }

      while (v46);
      v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v48 = *(a1 + 960);
      *(a1 + 960) = v47;

      v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v50 = *(a1 + 968);
      *(a1 + 968) = v49;

      v51 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v52 = 6;
      do
      {
        v53 = *(a1 + 960);
        v54 = dispatch_queue_create("com.gmcRgbIr.CPU_GPU", v51);
        [v53 addObject:v54];

        v55 = *(a1 + 968);
        v56 = dispatch_group_create();
        [v55 addObject:v56];

        --v52;
      }

      while (v52);
      v93 = *(a1 + 256);
      v57 = *(a1 + 264);
      v92 = *v57;
      v91 = v57[1] - v92;
      v90 = 0;
      MetalObjects::createBuffer(a1 + 608, &v90, &v91, 0x1CuLL);
      v58 = v90;
      v59 = v90;
      v60 = *(a1 + 420);
      v87 = *(a1 + 416);
      v88 = v60;
      v89 = 2143289344;
      v61 = *(*(a1 + 952) + 8);
      v85 = *v61;
      v86 = v61[v60 - 1];
      v62 = *(*(a1 + 944) + 8);
      v83 = *v62;
      v84 = v62[v87 - 1];
      *&v82[1] = v83;
      v63 = v62[1] - v83;
      *&v82[3] = v85;
      v64 = v61[1];
      *v82 = v63;
      *&v82[2] = v64 - v85;
      v81 = 0;
      MetalObjects::createBuffer(a1 + 608, &v81, v82, 0x2CuLL);
      v65 = v81;
      v66 = v81;
      objc_storeStrong((a1 + 928), v58);
      objc_storeStrong((a1 + 936), v65);
      v80 = 0;
      MetalObjects::createTexture((a1 + 608), &v80, *(a3 + 8), *(a3 + 16), *(a3 + 20));
      objc_storeStrong((a1 + 776), v80);

      Matrix<float>::~Matrix(v97);
      Matrix<float>::~Matrix(v99);

      v67 = 1;
      v68 = v78;
    }

    else
    {
      v68 = v11;
      v72 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v73 = os_log_create("com.apple.isp", "general");
        v74 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v73;

        v72 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        CalibrateRgbIr::PrepareGridCalculation(v72);
      }

      v67 = 0;
    }
  }

  else
  {
    v69 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v70 = os_log_create("com.apple.isp", "general");
      v71 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v70;

      v69 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      CalibrateRgbIr::PrepareGridCalculation();
    }

    return 0;
  }

  return v67;
}

void sub_224977458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  Matrix<float>::~Matrix(va);
  Matrix<float>::~Matrix(v34 - 160);

  _Unwind_Resume(a1);
}

void MetalObjects::createTextureSharedBuffer(void *a1, void *a2, int a3, int a4)
{
  std::mutex::lock((a1[2] + 24));
  v8 = [*a1[2] newBufferWithLength:4 * a4 * a3 options:*(a1[2] + 96)];
  std::mutex::unlock((a1[2] + 24));
  [*a1 setResourceOptions:*(a1[2] + 96)];
  [*a1 setPixelFormat:55];
  [*a1 setTextureType:2];
  [*a1 setUsage:3];
  [*a1 setHeight:a3];
  [*a1 setWidth:a4];
  *a2 = [v8 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:4 * a4];
}

uint64_t CalibrateRgbIr::LocalValidationSelect(uint64_t a1, float *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  isMinimumOnBorder = GridArea::isMinimumOnBorder(a2, 1, &v11);
  v6 = GridArea::isMinimumOnBorder(a2, 0, &v10);
  if (!isMinimumOnBorder || (v7 = v6, result = 0, !v7))
  {
    if (isMinimumOnBorder)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    if (isMinimumOnBorder)
    {
      v9 = &v10;
    }

    else
    {
      v9 = &v11;
    }

    *a3 = *v9;
  }

  return result;
}

void addValueToDictionary(__CFDictionary *a1, const __CFString *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CalibrateRgbIr::ScanCostGrid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v11 = objc_autoreleasePoolPush();
  v12 = sqrtf(*(a2 + 20));
  if (CalibrateRgbIr::PrepareGridCalculation(a1, a2, a3, v12 & 0xFFFFFFF0, v12 * v12 / (v12 & 0xFFFFFFF0)))
  {
    v13 = *(a6 + 4);
    v25[1] = v13 + 6.0;
    v25[2] = 3.0;
    v24[0] = v13 + -6.0;
    v24[1] = v13 + 6.0;
    v24[2] = 3.0;
    v25[0] = -6.0;
    v23 = 1065353216;
    v22 = 0;
    v20[6] = -1061158912;
    *&v20[7] = v13 + 6.0;
    *&v20[8] = v13 + -6.0;
    *&v20[9] = v13 + 6.0;
    __asm { FMOV            V0.2S, #3.0 }

    v21 = _D0;
    GridArea::PrepareGrid(v20, v25, v24, &v22, 0);
  }

  NSLog(&cfstr_RgbIrCalibS.isa, "PrepareGridCalculation failed.");
  objc_autoreleasePoolPop(v11);
  return 4097;
}

void sub_22497877C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  GridArea::~GridArea(&a22);
  GridArea::~GridArea(&a61);
  GridArea::~GridArea((v61 - 176));
  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::GetCamParamsFromMetaData(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF4C68]);
  BytePtr = CFDataGetBytePtr(Value);
  *(a3 + 104) = vcvtq_f64_f32(*BytePtr);
  v7 = BytePtr[1].f32[1];
  *(a3 + 120) = BytePtr[1].f32[0];
  *(a3 + 128) = vcvtq_f64_f32(BytePtr[2]);
  v8 = BytePtr[3].f32[1];
  *(a3 + 144) = BytePtr[3].f32[0];
  *(a3 + 56) = v7;
  *(a3 + 64) = v8;
  *(a3 + 152) = vcvtq_f64_f32(BytePtr[4]);
  v9 = BytePtr[5].f32[1];
  *(a3 + 168) = BytePtr[5].f32[0];
  *(a3 + 72) = v9;
  v10 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5C00]);
  CGPointMakeWithDictionaryRepresentation(v10, &v13);
  *(a3 + 8) = v13;
  v11 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5030]);
  return CFNumberGetValue(v11, kCFNumberFloatType, a3);
}

uint64_t CalibrateRgbIr::CheckPceCalibValid(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5030]);
    if (Value)
    {
      valuePtr = 0.0;
      CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
      if (vabdd_f64(valuePtr, *(a3 + 8936)) < 0.00001)
      {
        v6 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF4C68]);
        if (v6)
        {
          CFDataGetBytePtr(v6);
          operator new[]();
        }
      }
    }
  }

  return 0;
}

void CalibrateRgbIr::GetCommonCamParams(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 8);
  *(a2 + 8) = *(a1 + 16);
  *(a2 + 16) = *(a1 + 24);
  v2 = *(a1 + 4258);
  *(a2 + 184) = *(a1 + 4256);
  *(a2 + 188) = v2;
  operator new[]();
}

void CalibrateRgbIr::GetTargetCam(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *(a4 + 12);
  v13 = *(a4 + 14);
  *(a5 + 184) = a2;
  *(a5 + 188) = a3;
  v21 = xmmword_2249D2940;
  v20 = 0;
  v22 = 0xBFF0000000000000;
  v23 = 0u;
  v24 = 0u;
  v14 = *(a1 + 4288);
  v15 = v14 * v12 / a3;
  *(a5 + 48) = v15;
  LOWORD(a10) = *(a1 + 8544);
  v16 = *(a1 + 4304) + *&a10 * -0.5 * v14 + vcvtd_n_f64_u32(v12, 1uLL) * v14;
  LOWORD(a12) = *(a1 + 8546);
  v17 = *(a1 + 4312) + *&a12 * -0.5 * v14;
  v25 = 0x3FF0000000000000;
  v18 = v16 + a3 * -0.5 * v15;
  v19 = v17 + vcvtd_n_f64_u32(v13, 1uLL) * v14 + a2 * -0.5 * v15;
  *(a5 + 8) = vcvtd_n_f64_u32(a2, 1uLL) * v15 - (v19 - v18 * 0.0);
  *(a5 + 16) = v18 + v19 * 0.0 + vcvtd_n_f64_u32(a3, 1uLL) * v15;
  *a5 = *(a1 + 4296);
  *(a5 + 24) = 256;
  operator new[]();
}

void CalibrateRgbIr::PrepareColorImage(int a1, __CVBuffer *a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memset(&src, 0, sizeof(src));
  PrepareVImgBuffersFromCVPixBuffer(a2, &src);
  operator new[]();
}

void sub_22497941C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  Matrix<float>::~Matrix(&a14);
  Matrix<float>::~Matrix(&a27);
  Matrix<float>::~Matrix(&a31);
  _Unwind_Resume(a1);
}

void SaveToFileWithPrefix<float,float>(_DWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v9 = a6;
  if (gCurrFrameId[23] >= 0)
  {
    v15 = gCurrFrameId[23];
  }

  else
  {
    v15 = *&gCurrFrameId[8];
  }

  v16 = &v24;
  std::string::basic_string[abi:nn200100](&v24, v15 + 1);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v24.__r_.__value_.__r.__words[0];
  }

  if (v15)
  {
    if (gCurrFrameId[23] >= 0)
    {
      v17 = gCurrFrameId;
    }

    else
    {
      v17 = *gCurrFrameId;
    }

    memmove(v16, v17, v15);
  }

  *(&v16->__r_.__value_.__l.__data_ + v15) = 95;
  v18 = *(a5 + 23);
  if (v18 >= 0)
  {
    v19 = a5;
  }

  else
  {
    v19 = *a5;
  }

  if (v18 >= 0)
  {
    v20 = *(a5 + 23);
  }

  else
  {
    v20 = *(a5 + 8);
  }

  v21 = std::string::append(&v24, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v26 = v21->__r_.__value_.__r.__words[2];
  *__p = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  SaveToFile<float,float>(a1, a2, a3, a4, __p, v9, v8, a8);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_224979608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void HistogramEqualize<float,float>(float *a1, uint64_t a2, uint64_t a3, unsigned int a4, float *a5)
{
  v7 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v20 - v9;
  v13 = (v12 * v11);
  BuildHistogram<float,float>(v8, (v20 - v9), v14, v13);
  if (v13)
  {
    v15 = v13;
    do
    {
      v16 = *v7++;
      v17 = v16 / (1.0 / a4);
      v18 = vcvtmd_u64_f64(v17);
      if (v18 >= a4)
      {
        v18 = a4 - 1;
      }

      LODWORD(v17) = *&v10[4 * v18];
      v19 = *&v17 / v15;
      *a5++ = v19;
      --v13;
    }

    while (v13);
  }
}

uint64_t CalibrateRgbIr::ApplyGaussian2DFilter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 20);
  if (v4 != *(a3 + 20) || (v7 = *(a2 + 16), v7 != *(a3 + 16)))
  {
    CalibrateRgbIr::ApplyGaussian2DFilter();
  }

  v8 = a4;
  if (a4)
  {
    if (v4 < a4)
    {
      CalibrateRgbIr::ApplyGaussian2DFilter();
    }
  }

  else
  {
    v8 = *(a2 + 20);
  }

  Matrix<float>::Matrix(v26, v7 + 4, v8 + 4, 0.0);
  v9 = v7 + 2;
  if ((v7 + 2) >= 3)
  {
    v10 = 0;
    do
    {
      if (v28 <= v10 + 2 || v29 < 3 || (v11 = v10, *(a2 + 16) <= v10) || (v12 = *(a2 + 20)) == 0)
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      memcpy((v27 + 4 * v29 * (v10 + 2) + 8), (*(a2 + 8) + 4 * v12 * v10), 4 * v8);
      ++v10;
    }

    while (v11 + 3 != v9);
  }

  Matrix<float>::Matrix(v22, v7 + 4, v8 + 4);
  v31 = 1019113512;
  v30[2] = xmmword_2249D2BFC;
  v30[3] = unk_2249D2C0C;
  v30[4] = xmmword_2249D2C1C;
  v30[5] = unk_2249D2C2C;
  v30[0] = xmmword_2249D2BDC;
  v30[1] = unk_2249D2BEC;
  v20[0] = &unk_283812D20;
  v20[1] = v30;
  v20[2] = 0x500000005;
  v21 = 0;
  ImageUtils::Filter2<float>(v26, v20, v22);
  v13 = *(a3 + 20) * *(a3 + 16);
  if (v13 >= 1)
  {
    v14 = *(a3 + 8);
    v15 = v14 + 4 * v13;
    if (v15 <= v14 + 4)
    {
      v15 = v14 + 4;
    }

    bzero(v14, ((v15 + ~v14) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  }

  if (v9 >= 3)
  {
    v16 = 0;
    v17 = 4 * v8;
    do
    {
      if (*(a3 + 16) <= v16 || (v18 = *(a3 + 20)) == 0 || v24 <= v16 + 2 || v25 <= 2)
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      memcpy((*(a3 + 8) + 4 * v18 * v16), (v23 + 4 * v25 * (v16 + 2) + 8), v17);
      ++v16;
    }

    while (v7 != v16);
  }

  Matrix<float>::~Matrix(v20);
  Matrix<float>::~Matrix(v22);
  Matrix<float>::~Matrix(v26);
  return 0;
}

void sub_224979A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  Matrix<float>::~Matrix(&a9);
  Matrix<float>::~Matrix(&a13);
  Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::InitDebugDictionary(CFMutableDictionaryRef *this)
{
  CFDictionaryRemoveAllValues(this[126]);
  CFDictionarySetValue(this[126], @"choice", @"None");
  CFDictionarySetValue(this[126], @"resultValid", *MEMORY[0x277CBED10]);
  v2 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d", 1, 12, 0);
  CFDictionarySetValue(this[126], @"AlgoVersion", v2);
  CFRelease(v2);
  return 0;
}

void CalibrateRgbIr::ScaleImage(uint64_t a1, void *a2, vImagePixelCount a3, vImagePixelCount a4, vImagePixelCount a5, vImagePixelCount a6, void **a7, unint64_t *a8)
{
  src.data = a2;
  src.height = a4;
  src.width = a3;
  src.rowBytes = 4 * a3;
  v8 = 4 * a5;
  if ((a5 & 0xF) != 0)
  {
    v8 = ((4 * a5) & 0xFFFFFFFFFFFFFFC0) + 64;
  }

  *a8 = v8 >> 2;
  operator new[]();
}

uint64_t CalibrateRgbIr::MedianFilter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v10 = (a3 + 63) & 0xFFFFFFFFFFFFFFC0;
  Matrix<unsigned char>::Matrix(v35, *(a2 + 16), (a3 + 63) & 0xFFFFFFC0);
  Matrix<float>::Resize(a5, *(a2 + 16), *(a2 + 20));
  if (*(a2 + 16))
  {
    v11 = 0;
    do
    {
      LODWORD(v12) = *(a2 + 20);
      if (v12)
      {
        v13 = 0;
        do
        {
          if (*(a2 + 16) <= v11 || ((v14 = *(*(a2 + 8) + 4 * v11 * v12 + 4 * v13), v14 <= 1.0) ? (v15 = v14 * 255.0) : (v15 = 255.0), v37 <= v11 || v13 >= v38))
          {
            __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
          }

          *(v36 + v11 * v38 + v13++) = llroundf(v15);
          v12 = *(a2 + 20);
        }

        while (v13 < v12);
      }

      if (v37 <= v11 || v38 <= a3)
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      bzero(v36 + a3 + v38 * v11++, v10 - a3);
    }

    while (v11 < *(a2 + 16));
  }

  std::string::basic_string[abi:nn200100]<0>(v33, "irSamplesBeforeMedianU8.pb");
  std::string::basic_string[abi:nn200100]<0>(__p, "IR samples before Median Filter");
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v30 = 0;
  MetalObjects::createTextureMedian((a1 + 608), &v30, v36, v37, v38, v10, 0);
  v16 = v30;
  v29 = 0;
  MetalObjects::createTextureMedian((a1 + 608), &v29, 0, v37, v38, v10, 1);
  v17 = v29;
  MetalObjects::medianFilter(a1 + 608, v16, v17, a4, 1);
  v18 = [v17 buffer];
  v19 = [v18 contents];

  std::string::basic_string[abi:nn200100]<0>(v33, "irSamplesAfterMedianU8.pb");
  std::string::basic_string[abi:nn200100]<0>(__p, "IR samples after Median Filter (uint8)");
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v20 = *(a5 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v10 - *(a2 + 20);
    v23 = *(a5 + 8);
    v24 = *(a5 + 20);
    do
    {
      for (i = v24; i; --i)
      {
        v26 = *v19++;
        v27 = v26 / 255.0;
        *v23++ = v27;
      }

      ++v21;
      v19 += v22;
    }

    while (v21 != v20);
  }

  Matrix<unsigned char>::~Matrix(v35);
  return 0;
}

void sub_224979EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  Matrix<unsigned char>::~Matrix(&a20);
  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::PrepareIrImage(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, vImagePixelCount *a4, vImagePixelCount *a5)
{
  *a4 = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  *a5 = Height;
  if (gDbgLvl)
  {
    v10 = *(a1 + 1008);
    v15.width = *a4;
    v15.height = Height;
    addValueToDictionary(v10, @"IrResolution", &v15);
  }

  std::string::basic_string[abi:nn200100]<0>(&v15, "OrigIrFromCVPixB.pb");
  std::string::basic_string[abi:nn200100]<0>(&__p, "Original IR frame from CVPixelBuffer");
  GrayScaleImage::save(&v15, pixelBuffer);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(*&v15.width);
  }

  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226742)
  {
    CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (!CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
    {
      CVPixelBufferGetBaseAddress(pixelBuffer);
      if (*a5 == 1315)
      {
        *a5 = 1312;
      }

      operator new[]();
    }

    return 4098;
  }

  else
  {
    NSLog(&cfstr_RgbIrCalibS.isa, "IR buffer is not in a supported format.");
    return 12290;
  }
}

void sub_22497A438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  Matrix<float>::~Matrix(&a13);
  Matrix<float>::~Matrix(&a26);
  Matrix<float>::~Matrix(&a33);
  if (v40)
  {
    MEMORY[0x22AA55B40](v40, v38);
  }

  MEMORY[0x22AA55B40](v39, v38);
  _Unwind_Resume(a1);
}

void addValueToDictionary(__CFDictionary *a1, const __CFString *a2, const CGSize *a3)
{
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*a3);
  CFDictionarySetValue(a1, a2, DictionaryRepresentation);

  CFRelease(DictionaryRepresentation);
}

double CalibrateRgbIr::SetParamsForShiftMaps(uint64_t a1, double *a2)
{
  v2 = a2[1658];
  v3 = v2 > 0.0;
  v4 = 10.0;
  if (v2 > 0.0)
  {
    v4 = 0.0;
  }

  v5 = a2[1116] / 0.8;
  v6 = v2 * a2[1117];
  v7 = 1.0 / a2[1084];
  v8 = ceil(v6 / v5 * (dbl_2249D2B90[v3] - v7));
  v9 = -v5 / v6;
  v10 = v7 - v9 * (v4 + v8);
  result = v9 * 0.03125;
  *(a1 + 472) = result;
  *(a1 + 480) = v10;
  return result;
}

uint64_t CalibrateRgbIr::PrepareDepthImage(uint64_t a1, CVPixelBufferRef pixelBuffer, unint64_t a3, unint64_t a4, float **a5)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v8 = *(a1 + 464);
  if (v8 == 1 && PixelFormatType != 825306677)
  {
    v10 = "Depth pixel buffer format should be kCVPixelFormatType_FixedPointUnsigned11_5 if it is normalized dx";
LABEL_9:
    NSLog(&cfstr_RgbIrCalibS.isa, v10);
    return 12291;
  }

  if ((v8 & 1) == 0 && PixelFormatType != 825437747)
  {
    v10 = "Depth pixel buffer format should be kCVPixelFormatType_FixedPointUnsigned13_3 if they are absolute values (not normalized dx)";
    goto LABEL_9;
  }

  if (gDbgLvl)
  {
    if (*(a1 + 464))
    {
      v12 = MEMORY[0x277CBED28];
    }

    else
    {
      v12 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(a1 + 1008), @"isNormalizedDx", *v12);
  }

  CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (!CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    operator new[]();
  }

  return 4099;
}

void sub_22497A89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CalibrateRgbIr::RetrieveRoiInfo(uint64_t a1, CFArrayRef theArray, unint64_t a3, unint64_t a4, CGRect *a5)
{
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CF50B8]);
      if (Value)
      {
        if (CGRectMakeWithDictionaryRepresentation(Value, &rect))
        {
          x = rect.origin.x;
          y = rect.origin.y;
          a5->origin.x = rect.origin.x;
          a5->origin.y = y;
          width = rect.size.width;
          height = rect.size.height;
          a5->size.width = rect.size.width;
          a5->size.height = height;
          NSLog(&cfstr_RgbIrCalibRoiI.isa, *&x, *&y, *&height, *&width);
          if (gDbgLvl)
          {
            v16 = *(a1 + 1008);
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*a5);
            CFDictionarySetValue(v16, @"faceRoi", DictionaryRepresentation);
            CFRelease(DictionaryRepresentation);
          }

          result = 0;
          v20 = a5->size.width;
          v19 = a5->size.height;
          v21 = round(a5->origin.x * a4);
          a5->origin.x = round((1.0 - a5->origin.y - v19) * a3);
          a5->origin.y = v21;
          a5->size.width = round(v19 * a3);
          a5->size.height = round(v20 * a4);
          return result;
        }

        v22 = "Could not retrieve ROI information from detected faces array.";
      }

      else
      {
        v22 = "Could not find ROI element in detected faces array.";
      }
    }

    else
    {
      v22 = "Could not retrieve any element from detected faces array.";
    }

    NSLog(&cfstr_RgbIrCalibS.isa, v22);
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"Could not retrieve face ROI information. Check detectedFaces argument.");
    }

    return 8193;
  }

  else
  {
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"No face ROI specified.");
    }

    NSLog(&cfstr_RgbIrCalibS.isa, "No detected faces provided. Calibration will not be performed.");
    return 16386;
  }
}

uint64_t CalibrateRgbIr::SelectRefineResult(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float a5, float a6)
{
  if (*&a4 < -6.0)
  {
    v9 = -6.0;
  }

  else
  {
    v9 = *&a4;
  }

  v10 = *&a4 >= -6.0;
  if (*&a4 <= 6.0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 6.0;
  }

  if (*&a4 > 6.0)
  {
    v10 = 0;
  }

  if (a5 < -6.0)
  {
    *&a4 = -6.0;
  }

  else
  {
    *&a4 = a5;
  }

  if (a5 < -6.0)
  {
    v10 = 0;
  }

  if (a5 <= 6.0)
  {
    v12 = *&a4;
  }

  else
  {
    v12 = 6.0;
  }

  v13 = a5 <= 6.0 && v10;
  v14 = a6;
  NSLog(&cfstr_RgbIrCalibAppl.isa, a4, v11, v12, a6);
  v40 = xmmword_2249D2100;
  v41 = 0x3FF0000000000000;
  v37 = *(a1 + 80);
  v42 = 0u;
  v43 = 0u;
  v44 = 0x3FF0000000000000;
  v38 = *(a1 + 96);
  v39 = 0;
  v37.f64[0] = v37.f64[0] + v11;
  v37.f64[1] = v37.f64[1] + v12;
  v38 = v38 + v14;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v15 = v35;
  GeomUtils::CalcRotationMatrix<double>(v37.f64, v35);
  v16 = 0;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  do
  {
    v17 = 0;
    v18 = &v39;
    do
    {
      v19 = 0;
      v20 = 0.0;
      v21 = v18;
      do
      {
        v22 = *v21;
        v21 += 3;
        v20 = v20 + *(v15 + v19) * v22;
        v19 += 8;
      }

      while (v19 != 24);
      *(&v30 + 3 * v16 + v17++) = v20;
      ++v18;
    }

    while (v17 != 3);
    ++v16;
    v15 = (v15 + 24);
  }

  while (v16 != 3);
  memcpy(a3, a2, 0x3400uLL);
  v23 = v33;
  *(a3 + 8584) = v32;
  *(a3 + 8600) = v23;
  *(a3 + 8616) = v34;
  v24 = v31;
  *(a3 + 8552) = v30;
  *(a3 + 8568) = v24;
  if (v13)
  {
    v29 = *(a2 + 13256);
    v25 = *(a2 + 13240);
    v28[2] = *(a2 + 13224);
    v28[3] = v25;
    v26 = *(a2 + 13208);
    v28[0] = *(a2 + 13192);
    v28[1] = v26;
    GeomUtils::CalcRotationAngleFromMatrix<double>(v28, v37.f64);
    *(a3 + 13288) = vdivq_f64(v37, vdupq_n_s64(0x408F400000000000uLL));
    *(a3 + 13304) = v38 / 1000.0;
  }

  else
  {
    NSLog(&cfstr_RgbIrCalibS.isa, "Rotation was clipped. Will not mark Pearl as calibrated.");
  }

  if (gDbgLvl)
  {
    setValueCFDict<float>(*(a1 + 1008), @"appliedXAngleCorrection", v11);
    setValueCFDict<float>(*(a1 + 1008), @"appliedYAngleCorrection", v12);
  }

  return 0;
}

uint64_t CalibrateRgbIr::CalculateFinalResult(float64x2_t *a1, uint64_t a2, float32x2_t a3, float32_t a4, float a5)
{
  v28 = a1[5];
  v6 = a1[6].f64[0];
  a3.f32[1] = a4;
  v28 = vaddq_f64(v28, vcvtq_f64_f32(a3));
  v29 = v6 + a5;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v7 = v26;
  GeomUtils::CalcRotationMatrix<double>(v28.f64, v26);
  v8 = 0;
  v19 = 0;
  v20 = 0;
  v21 = xmmword_2249D2100;
  v23 = 0u;
  v24 = 0u;
  v22 = 0x3FF0000000000000;
  v25 = 0x3FF0000000000000;
  memset(v18, 0, sizeof(v18));
  do
  {
    v9 = 0;
    v10 = &v20;
    do
    {
      v11 = 0;
      v12 = 0.0;
      v13 = v10;
      do
      {
        v14 = *v13;
        v13 += 3;
        v12 = v12 + *(v7 + v11) * v14;
        v11 += 8;
      }

      while (v11 != 24);
      *(v18 + 3 * v8 + v9++) = v12;
      ++v10;
    }

    while (v9 != 3);
    ++v8;
    v7 = (v7 + 24);
  }

  while (v8 != 3);
  v16 = 0uLL;
  v17 = 0;
  GeomUtils::CalcRotationAngleFromMatrix<double>(v18, &v16);
  *a2 = v16;
  *(a2 + 16) = v17;
  return 0;
}

uint64_t CalibrateRgbIr::Calibrate(uint64_t a1, __CVBuffer *a2, const __CFDictionary *a3, __CVBuffer *a4, void *a5, __CVBuffer *a6, uint64_t a7, const __CFBoolean *a8, double *a9, CFArrayRef theArray, __int16 a11, uint64_t a12, double *a13, _DWORD *a14)
{
  v15 = a7;
  v52 = *MEMORY[0x277D85DE8];
  *(a1 + 976) = 0;
  NSLog(&cfstr_RgbIrCalibStar.isa, 1, 12, 0, a7, a8, a11);
  v16 = std::string::basic_string[abi:nn200100]<0>(&valuePtr, "PCECalib.bin");
  SaveToFileWithPrefix(v16, a9, 13312);
  if (v42 < 0)
  {
    operator delete(valuePtr);
  }

  if (gDbgLvl)
  {
    CalibrateRgbIr::InitDebugDictionary(a1);
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1069]];
    v43 = v39;
    v44 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1070]];
    v37 = v44;
    v36 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1071]];
    v45 = v36;
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1072]];
    v46 = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1073]];
    v47 = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1074]];
    v48 = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1075]];
    v49 = v20;
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1076]];
    v50 = v21;
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1077]];
    v51 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:9];

    CFDictionarySetValue(*(a1 + 1008), @"colorRotationMatrix", v23);
  }

  Value = CFBooleanGetValue(a8);
  if (Value)
  {
    v25 = a1;
    *(a1 + 464) = v15;
    if (v15)
    {
      v26 = a9[1658];
      v27 = v26 > 0.0;
      v28 = 10.0;
      if (v26 > 0.0)
      {
        v28 = 0.0;
      }

      v29 = a9[1116] / 0.8;
      v30 = v26 * a9[1117];
      v31 = 1.0 / a9[1084];
      v32 = ceil(v30 / v29 * (dbl_2249D2B90[v27] - v31));
      v33 = -v29 / v30;
      *(a1 + 472) = v33 * 0.03125;
      *(a1 + 480) = v31 - v33 * (v28 + v32);
    }

    if (*(a1 + 492) & 1) != 0 || (Value = CalibrateRgbIr::CheckPceCalibValid(Value, a3, a9), v25 = a1, (Value))
    {
      CalibrateRgbIr::GetCamParams(Value, a9, v25 + 232);
    }

    NSLog(&cfstr_RgbIrCalibS.isa, "PCECalib and IR metadata do not match. PCECalib is probably not valid anymore");
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"Calibration data not consistent.");
    }

    CalibrateRgbIr::SaveDebugPlist(a1);
    return 16385;
  }

  else
  {
    NSLog(&cfstr_RgbIrCalibS.isa, "depthPerspectiveCorrected is false. Currently, only perspective corrected depth is supported");
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"Depth perspective not corrected.");
    }

    CalibrateRgbIr::SaveDebugPlist(a1);
    return 12289;
  }
}