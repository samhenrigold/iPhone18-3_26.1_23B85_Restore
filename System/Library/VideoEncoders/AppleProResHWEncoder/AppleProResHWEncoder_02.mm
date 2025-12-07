uint64_t ProResFrameReceiver::EmitEncodedFrame(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  kdebug_trace();
  if (a1[6] == 2)
  {
    if (a1[21])
    {
      v7 = a1[23];
      if (v7)
      {
        v7();
      }
    }
  }

  else
  {
    VTEncoderSessionEmitEncodedFrame();
  }

  return kdebug_trace();
}

uint64_t alphaScalingTask(int *a1)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[2];
  v5 = a1[4];
  v7 = *(a1 + 3);
  v6 = *(a1 + 4);
  v8 = a1[2] & 7;
  v9 = *(a1 + 5);
  v10 = *a1 + 32;
  v11 = a1[3] & 0xFFFFFFFE;
  do
  {
    if (v4 >= 0x20)
    {
      v12 = v10;
      v13 = 32;
      do
      {
        v14 = vrsraq_n_u16(v12[-1], v12[-1], 8uLL);
        v15 = vrsraq_n_u16(*v12, *v12, 8uLL);
        v16 = vrsraq_n_u16(v12[1], v12[1], 8uLL);
        v12[-2] = vrsraq_n_u16(v12[-2], v12[-2], 8uLL);
        v12[-1] = v14;
        *v12 = v15;
        v12[1] = v16;
        v12 += 4;
        v13 += 32;
      }

      while (v13 <= v4);
    }

    if ((v4 & 0x10) != 0)
    {
      v17 = (v3 + 2 * (v4 & 0xFFFFFFE0));
      v18 = vrsraq_n_u16(v17[1], v17[1], 8uLL);
      *v17 = vrsraq_n_u16(*v17, *v17, 8uLL);
      v17[1] = v18;
      if ((v4 & 8) == 0)
      {
LABEL_7:
        if (!v8)
        {
          goto LABEL_13;
        }

        goto LABEL_11;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    *(v3 + 2 * (v4 & 0xFFFFFFF0)) = vrsraq_n_u16(*(v3 + 2 * (v4 & 0xFFFFFFF0)), *(v3 + 2 * (v4 & 0xFFFFFFF0)), 8uLL);
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_11:
    v19 = v4 & 0xFFFFFFF8;
    v20 = 2 * (v4 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      *(v3 + v20) += HIBYTE(*(v3 + v20));
      v20 += 2;
      ++v19;
    }

    while (v4 > v19);
LABEL_13:
    v3 += v11;
    ++v2;
    v10 += v11;
  }

  while (v2 != 16);
  pthread_mutex_lock(v9);
  v21 = *v7 + 1;
  *v7 = v21;
  if (v21 == v5)
  {
    pthread_cond_signal(v6);
  }

  pthread_mutex_unlock(v9);
  MEMORY[0x29C24C730](a1, 0x1030C4096A05FA2);
  return 0;
}

double getDoubleEncodeFrameRatio(unsigned int a1, unsigned int a2)
{
  if (!a2)
  {
    return 0.0;
  }

  *&result = a1 / a2;
  return result;
}

uint64_t parseHWErrorCode(unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, BOOL a5, int a6)
{
  if (a6)
  {
    return 4294954385;
  }

  else
  {
    return 4294954384;
  }
}

uint64_t ProResFrameReceiver::SWSwapBRRaw(ProResFrameReceiver *this, CVPixelBufferRef pixelBuffer, int a3)
{
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a3 == 1651520304)
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
    convert32BGRAtoRGB(BaseAddress, Width, Height, BytesPerRow);
  }

  else if (a3 == 1651521076)
  {
    v6 = CVPixelBufferGetWidth(pixelBuffer);
    v7 = CVPixelBufferGetHeight(pixelBuffer);
    v8 = CVPixelBufferGetBytesPerRow(pixelBuffer);
    swizzle64BGRAtoRGBA(BaseAddress, v6, v7, v8);
  }

  return CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
}

uint64_t ProResFrameReceiver::PerformAlphaUpscaling(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  extraRowsOnTop = 0;
  extraColumnsOnLeft = 0;
  if (*(a3 + 33) == 2)
  {
    if (*(a3 + 24) == 2)
    {
      v3 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResFrameReceiver::PerformAlphaUpscaling();
      }
    }

    else
    {
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      CVPixelBufferGetWidthOfPlane(pixelBuffer, 2uLL);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 2uLL);
      CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 2uLL);
      CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 2uLL);
      CVPixelBufferGetExtendedPixels(pixelBuffer, &extraColumnsOnLeft, 0, &extraRowsOnTop, 0);
      if (!*(a1 + 136))
      {
        operator new();
      }

      pthread_cond_init(&v18, 0);
      pthread_mutex_init(&v17, 0);
      if ((HeightOfPlane + 15) >= 0x10)
      {
        operator new();
      }

      pthread_mutex_lock(&v17);
      gettimeofday(&v9, 0);
      v10.tv_sec = v9.tv_sec + 3;
      v10.tv_nsec = 1000 * v9.tv_usec;
      if ((HeightOfPlane + 15) >> 4)
      {
          ;
        }

        pthread_mutex_unlock(&v17);
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          v6 = *(a1 + 312);
          *buf = 67109378;
          v14 = v6;
          v15 = 2080;
          v16 = "PerformAlphaUpscaling";
          _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: threadpool couldn't complete AlphaScalingTask", buf, 0x12u);
        }
      }

      else
      {
        pthread_mutex_unlock(&v17);
      }

      pthread_cond_destroy(&v18);
      pthread_mutex_destroy(&v17);
      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
      return 0;
    }
  }

  else
  {
    v3 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::PerformAlphaUpscaling();
    }
  }

  return v3;
}

uint64_t ProResFrameReceiver::QueueOutOfOrderFrame(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6)
{
  v17 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 200) + 32 * (a4 % *(a1 + 132));
  if (*v7)
  {
    v9 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 312);
      v12[0] = 67109634;
      v12[1] = v10;
      v13 = 2080;
      v14 = "QueueOutOfOrderFrame";
      v15 = 1024;
      v16 = a4;
      _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Spot isn't empty for frame %d, do you need to increase size?", v12, 0x18u);
    }
  }

  else
  {
    v9 = 0;
    *(v7 + 8) = a2;
    *(v7 + 16) = a6;
    *(v7 + 4) = a4;
    *v7 = 1;
    *(v7 + 24) = a3;
  }

  return v9;
}

void ProResFrameReceiver::DoubleEncodeFrame(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a2 + 216);
  v8 = 134610945;
  v7 = a2 + 216;
  *a4 = (v6 & 1) == 0;
  *(a2 + 706) = 0;
  operator new();
}

uint64_t ProResFrameReceiver::P1ParseFrame(uint64_t a1, unsigned int **a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  kdebug_trace();
  v10 = *(a1 + 264);
  if ((v10 - 2) < 2)
  {
    v13 = 0;
    v14 = 0;
    getEncodeStatsPtrs((a3 + 344), a4 + 2, &v14, &v13, a4, a4 + 1);
    ProResHWAnalyzer::parseHWStats(*(a1 + 232), *(a1 + 216), v14, v13, *a4, *(a1 + 284), *(a3 + 284), *(a3 + 288), *(a3 + 240), *(a3 + 564));
LABEL_5:
    v11 = 0;
    goto LABEL_8;
  }

  if (v10 == 1)
  {
    ProResHWAnalyzer::parseProResFrame(*(a1 + 232), a5, *(a1 + 216), 1, *(a2 + 10));
    goto LABEL_5;
  }

  v11 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    ProResFrameReceiver::P1ParseFrame();
  }

LABEL_8:
  kdebug_trace();
  return v11;
}

uint64_t ProResFrameReceiver::P1AnalyzeFrame(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, __int16 *a6)
{
  v52[0] = a5;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  if (a5 > 0xF)
  {
    v16 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = ProResHWAnalyzer::analyzeProResFrame(*(a1 + 232), *(a1 + 216), &v43, v52);
      if (*(a2 + 8) == 1)
      {
        v13 = *(a2 + 11);
        if (v13 <= *(a2 + 10))
        {
          v13 = *(a2 + 10);
        }

        if (v52[0] <= v13)
        {
          v14 = 127 - 127 * **(a1 + 216) / v12;
          if (v14 >= 0x28)
          {
            LOWORD(v14) = 40;
          }

          *a6 = *a6 & 0x80FF | (v14 << 8);
        }
      }

      if (v12 == v11 || v12 < *(*a2 + 476))
      {
        break;
      }

      ++v52[0];
      v11 = v12;
    }

    while (v52[0] < 0x10u);
    v16 = ((v48 - *(&v47 + 1)) >> 2) + ((*(&v43 + 1) - v43) >> 2) + ((v45 - *(&v44 + 1)) >> 2) + ((*(&v49 + 1) - v49) >> 2);
  }

  *(a1 + 280) = v16;
  if (*(a3 + 8))
  {
    v17 = *(a1 + 292);
    if (*(a3 + 176) != (v16 != 0))
    {
      ++v17;
    }

    *(a1 + 292) = v17;
  }

  if (v16 || *(a3 + 176) == 1)
  {
    v39 = a4;
    v18 = 0;
    v19 = 0;
    v20 = v40;
    do
    {
      v21 = v18;
      v22 = &v43 + 9 * v19 + 1;
      v23 = 3;
      do
      {
        *v20 = 0;
        v20[1] = 0;
        v20[2] = 0;
        std::vector<std::pair<unsigned short,unsigned short>>::__init_with_size[abi:ne200100]<std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>*>(v20, *(v22 - 1), *v22, *v22 - *(v22 - 1));
        v22 += 3;
        v20 += 3;
        --v23;
      }

      while (v23);
      v18 = 1;
      v20 = &v41;
      v19 = 1;
    }

    while ((v21 & 1) == 0);
    ProResFrameReceiver::P1FixSlicesQp(a1, a2, a3, v39, v40, v52[0]);
    v24 = &v42;
    v25 = -144;
    do
    {
      v26 = *(v24 - 1);
      if (v26)
      {
        *v24 = v26;
        operator delete(v26);
      }

      v24 -= 3;
      v25 += 24;
    }

    while (v25);
    v27 = 0;
  }

  else if ((*(a1 + 264) - 1) > 2)
  {
    v27 = 0;
    v32 = *a2;
    v33 = vshr_n_u32(vadd_s32(*(*a2 + 68), 0xF0000000FLL), 4uLL);
    v34 = 8 * *(*(a1 + 216) + 40) * v33.i32[1] + 8;
    v35 = *(*a2 + 472) - v34;
    if (v35 <= 1)
    {
      v35 = 1;
    }

    v36 = 8 * (v35 / (v33.i32[1] * v33.i32[0]));
    v37 = v32[119] - v34;
    if (v36 >= 0x10000)
    {
      v36 = 0x3FFF;
    }

    if (v37 <= 1)
    {
      v37 = 1;
    }

    v38 = 8 * (v37 / (v33.i32[1] * v33.i32[0]));
    if (v38 >= 0x10000)
    {
      v38 = 0x3FFF;
    }

    v32[51] = v38;
    v32[52] = v36;
  }

  else
  {
    v31 = *a6;
    *a6 &= ~2u;
    if (*(a2 + 8) == 1)
    {
      *a6 = v31 & 0xFFFC | 1;
      pthread_mutex_lock(*(a1 + 248));
      **(a1 + 240) = *a6;
      pthread_cond_signal(*(a1 + 256));
      pthread_mutex_unlock(*(a1 + 248));
    }

    kdebug_trace();
    v27 = 1;
  }

  for (i = 0; i != -144; i -= 24)
  {
    v29 = *(&v50 + i + 8);
    if (v29)
    {
      *&v52[i - 9] = v29;
      operator delete(v29);
    }
  }

  return v27;
}

void sub_295315D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v30 = 0;
  while (1)
  {
    v31 = *(&a29 + v30 + 120);
    if (v31)
    {
      *(&a29 + v30 + 128) = v31;
      operator delete(v31);
    }

    v30 -= 24;
    if (v30 == -144)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t ProResFrameReceiver::P2Encode(uint64_t a1, const void **a2, uint64_t a3)
{
  v5 = *a2;
  v6 = **a2 + 1;
  *v5 = v6;
  *(v5 + 4) = v6;
  v7 = *(a1 + 264);
  if (v7 == 3)
  {
    v8 = 0;
    v9 = 1;
    goto LABEL_7;
  }

  v5[48] = *(a3 + 28) >> 2;
  v5[50] *= 3;
  if (v7 == 1)
  {
    v8 = 0;
    v9 = 0;
LABEL_7:
    v5[12] = v8;
    *(*a2 + 11) = v9;
    atomic_fetch_add(*(a1 + 72), 1u);
    kdebug_trace();
    v10 = IOConnectCallStructMethod(*(a1 + 32), 3u, *a2, 0x200uLL, 0, 0);
    kdebug_trace();
    ++*(a1 + 288);
    if (!v10)
    {
      return 0;
    }

    v11 = 3758097084;
    atomic_fetch_add(*(a1 + 72), 0xFFFFFFFF);
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::P2Encode();
    }

    return v11;
  }

  if (v7 == 2)
  {
    v9 = 0;
    v8 = 1;
    goto LABEL_7;
  }

  v11 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    ProResFrameReceiver::P2Encode();
  }

  return v11;
}

uint64_t ProResFrameReceiver::P2PrepareFrame(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  if (a2[9] == 2 || !*(a1 + 280))
  {
    v14 = 0;
    v15 = (a5 + (*(a3 + 28) >> 2));
    *a6 = (*v15 << 24) | (v15[1] << 16) | (v15[2] << 8) | v15[3];
  }

  else
  {
    v19 = 0;
    v12 = *(*a2 + 476);
    kdebug_trace();
    v13 = *(a1 + 264);
    if (v13 == 2)
    {
      v17 = 0;
      v18 = 0;
      getEncodeStatsPtrs((a3 + 344), a4 + 2, &v18, &v17, a4, a4 + 1);
      ProResHWAnalyzer::parseHWStats(*(a1 + 232), *(a1 + 224), v18, v17, *a4, *(a1 + 284), *(a3 + 284), *(a3 + 288), *(a3 + 240), *(a3 + 564));
      goto LABEL_8;
    }

    if (v13 == 1)
    {
      ProResHWAnalyzer::parseProResFrame(*(a1 + 232), a5 + (*(a3 + 28) >> 2), *(a1 + 224), 0, a2[10]);
LABEL_8:
      *a6 = ProResHWAnalyzer::getSliceToFix(*(a1 + 232), v12 + 156, *(a1 + 216), *(a1 + 224), *(a1 + 272), &v19);
      kdebug_trace();
      return 0;
    }

    v14 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::P2PrepareFrame();
    }
  }

  return v14;
}

uint64_t ProResFrameReceiver::CopyBitstreamToBlockBuffer(uint64_t a1, uint64_t a2, uint64_t a3, char *sourceBytes, int a5, int a6)
{
  v37 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 264);
  if ((v10 - 1) >= 2)
  {
    if (v10 == 3)
    {
      v11 = CMBlockBufferReplaceDataBytes(sourceBytes, *a3, 0, *(a3 + 40));
      if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResFrameReceiver::CopyBitstreamToBlockBuffer();
      }
    }

    else
    {
      v11 = CMBlockBufferReplaceDataBytes(sourceBytes, *a3, 0, *(a3 + 40));
      if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResFrameReceiver::CopyBitstreamToBlockBuffer();
      }

      v12 = *(a3 + 8);
      if (v12)
      {
        v13 = CMBlockBufferReplaceDataBytes(*(a2 + 184), *a3, *(a3 + 40), v12);
        if (v13)
        {
          v14 = v13;
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            v22 = *(a1 + 312);
            v23 = *(a3 + 40);
            v24 = *(a3 + 8);
            v25 = 67110402;
            v26 = v22;
            v27 = 1024;
            v28 = 1475;
            v29 = 2080;
            v30 = "CopyBitstreamToBlockBuffer";
            v31 = 1024;
            v32 = v14;
            v33 = 2048;
            v34 = v23;
            v35 = 2048;
            v36 = v24;
            _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR: AppleProResHW (0x%x): %d: %s(): failed Non DoubleEnc metadata extension CMBlockBufferReplaceDataBytes (0x%x) offset=%lu length=%zu\n", &v25, 0x32u);
          }
        }

        *sourceBytes = BYTE3(*(a3 + 16));
        sourceBytes[1] = BYTE2(*(a3 + 16));
        sourceBytes[2] = BYTE1(*(a3 + 16));
        sourceBytes[3] = *(a3 + 16);
        v11 = CMBlockBufferReplaceDataBytes(sourceBytes, *a3, 0, 4uLL);
        if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          ProResFrameReceiver::CopyBitstreamToBlockBuffer();
        }
      }
    }
  }

  else if (a6)
  {
    v11 = CMBlockBufferReplaceDataBytes(sourceBytes, *a3, 0, *(a3 + 40));
    if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::CopyBitstreamToBlockBuffer();
    }
  }

  else if (*(a1 + 280))
  {
    kdebug_trace();
    v11 = ProResHWAnalyzer::stitchProResFrame(*(a1 + 232), *(a1 + 216), sourceBytes, *(a1 + 224), &sourceBytes[*(a2 + 28) >> 2], (a3 + 40), stitchCallback, a3);
    if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::CopyBitstreamToBlockBuffer();
    }

    kdebug_trace();
  }

  else
  {
    v11 = CMBlockBufferReplaceDataBytes(&sourceBytes[*(a2 + 28) >> 2], *a3, 0, *(a3 + 40));
    if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::CopyBitstreamToBlockBuffer();
    }
  }

  v15 = *(a3 + 32);
  if (v15)
  {
    v16 = CMBlockBufferFillDataBytes(0, *a3, *(a3 + 16), v15);
    if (v16)
    {
      v17 = v16;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 312);
        v20 = *(a3 + 16);
        v21 = *(a3 + 32);
        v25 = 67110402;
        v26 = v19;
        v27 = 1024;
        v28 = 1494;
        v29 = 2080;
        v30 = "CopyBitstreamToBlockBuffer";
        v31 = 1024;
        v32 = v17;
        v33 = 2048;
        v34 = v20;
        v35 = 2048;
        v36 = v21;
        _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR: AppleProResHW (0x%x): %d: %s(): failed adding stuffing value(0x0) CMBlockBufferFillDataBytes (0x%x) offset=%zu length=%zu\n", &v25, 0x32u);
      }
    }

    *sourceBytes = BYTE3(*(a3 + 24));
    sourceBytes[1] = BYTE2(*(a3 + 24));
    sourceBytes[2] = BYTE1(*(a3 + 24));
    sourceBytes[3] = *(a3 + 24);
    v11 = CMBlockBufferReplaceDataBytes(sourceBytes, *a3, 0, 4uLL);
    if (v11 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::CopyBitstreamToBlockBuffer();
    }
  }

  return v11;
}

void ProResFrameReceiver::P1FixSlicesQp(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, SliceList *this, int a6)
{
  SliceList::sort(this, *(a1 + 272), *(*(a1 + 232) + 28) == 1);
  v11 = *(a1 + 264);
  if (v11 == 3)
  {
    v16 = *(*a2 + 476);
    v17 = **(a1 + 216);
    memcpy(*(a4 + 8), *a4, *(a1 + 284));
    if (*(a1 + 284))
    {
      v18 = 0;
      v19 = v16 + 156;
      do
      {
        v20 = *(a1 + 272);
        v21 = *(v20 + 2 * v18);
        EstimatedSizeForSlice = ProResHWAnalyzer::getEstimatedSizeForSlice(*(a1 + 232), *(a4 + 16), *(v20 + 2 * v18), *(a3 + 412), a6);
        v23 = *(a1 + 216);
        *(*(v23 + 352) + 2 * v21) = EstimatedSizeForSlice;
        v24 = EstimatedSizeForSlice - *(*(v23 + 56) + 2 * v21);
        if (v24 >= 1)
        {
          v17 += v24;
          if (v17 > v19)
          {
            break;
          }

          *(*(a4 + 8) + v21) = a6;
        }

        ++v18;
      }

      while (v18 < *(a1 + 284));
    }
  }

  else
  {
    if (v11 == 2 && *(a1 + 284))
    {
      v12 = 0;
      do
      {
        v13 = *(a1 + 272);
        v14 = *(v13 + 2 * v12);
        *(*(*(a1 + 216) + 352) + 2 * v14) = ProResHWAnalyzer::getEstimatedSizeForSlice(*(a1 + 232), *(a4 + 16), *(v13 + 2 * v12++), *(a3 + 412), a6);
      }

      while (v12 < *(a1 + 284));
    }

    *(*a2 + 196) = a6;
  }

  v15 = *a2;
  *(v15 + 20) = 1;
  *(v15 + 10) = 0;
  *(v15 + 52) = 0;
  *(a3 + 176) = 0;
}

uint64_t ProResFrameReceiver::ProcessFrameDone(ProResFrameReceiver *this, unsigned int a2, unsigned int a3, int a4, int a5, UInt8 *a6, int a7)
{
  v91 = *MEMORY[0x29EDCA608];
  sbuf = 0;
  v9 = *(*(this + 7) + 16) + 800 * a3;
  v11 = *(v9 + 56);
  v10 = *(v9 + 60);
  v61 = v10;
  v62 = v11 + 1;
  v12 = (v9 + 8);
  if (a2 >> (*(this + 66) != 0) != *(v9 + 8))
  {
    v23 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::ProcessFrameDone();
    }

    goto LABEL_143;
  }

  if (*(v9 + 4) <= 3 && v11 > v10)
  {
    v23 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::ProcessFrameDone();
    }

    goto LABEL_143;
  }

  if (v62 == v10)
  {
    kdebug_trace();
  }

  if ((a4 & 0xFFFFFFFB) - 1 <= 1)
  {
    *(this + 296) = 1;
  }

  if (a4 == 6 && a5 == 55 && !a7)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v18 = *(this + 78);
      v19 = *v12;
      buf = 67109890;
      v79 = v18;
      v80 = 2080;
      *v81 = "ProcessFrameDone";
      *&v81[8] = 1024;
      *&v81[10] = v19;
      v82 = 1024;
      v83 = 55;
      _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Bad RecDecoderHW error, frame %d HWErrorCode=0x%x", &buf, 0x1Eu);
    }

    a4 = 2;
  }

  if (*(v9 + 4) <= 3)
  {
    v20 = *(v9 + 56);
    if (v20 + 1 != *(v9 + 60))
    {
      v27 = *a6;
      cf = *(v9 + 40);
      if (v20)
      {
        v27 += *(this + 77);
      }

      v28 = 0;
      v24 = 0;
      *(this + 77) = v27;
      if (a4 && a4 != 6)
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          v39 = *(this + 78);
          buf = 67109634;
          v79 = v39;
          v80 = 2080;
          *v81 = "ProcessFrameDone";
          *&v81[8] = 1024;
          *&v81[10] = v20;
          _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): DecoderHW error in subFrameId=%d\n", &buf, 0x18u);
        }

        v28 = 0;
        v24 = 0;
        v21 = 0;
        v23 = 0;
        *(this + 130) = 1;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      goto LABEL_128;
    }

    v21 = *(v9 + 48);
    cf = *(v9 + 40);
    if ((a4 == 6 || !a4) && *(this + 130) != 1)
    {
      if (!v21)
      {
        goto LABEL_113;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(v21);
      v33 = APR_ImgFmt_4CC(PixelFormatType);
      v34 = v33;
      v35 = *a6;
      v36 = (this + 308);
      if (*(v9 + 56))
      {
        v35 += *v36;
      }

      *v36 = v35;
      v37 = *(v9 + 32);
      if ((v37 & 0x100000000) != 0)
      {
        if (v35 == v37)
        {
          *(v9 + 24) |= 0x10000u;
        }
      }

      else
      {
        if (a7 && *(v33 + 33))
        {
          CVBufferSetAttachment(v21, *MEMORY[0x29EDB9538], *MEMORY[0x29EDB8F00], kCVAttachmentMode_ShouldPropagate);
        }

        v38 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberSInt32Type, this + 308);
        CVBufferSetAttachment(v21, @"ProResHW_CheckValue", v38, kCVAttachmentMode_ShouldPropagate);
        CFRelease(v38);
      }

      if (*(v9 + 65) == 1 && (PixelFormatType == 1651521076 || PixelFormatType == 1651520304))
      {
        ProResFrameReceiver::SWSwapBRRaw(v33, v21, PixelFormatType);
      }

      if (*(v9 + 64) == 1)
      {
        v23 = ProResFrameReceiver::PerformAlphaUpscaling(this, v21, v34);
        if (v23)
        {
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            ProResFrameReceiver::ProcessFrameDone();
          }

          goto LABEL_119;
        }
      }

      else
      {
LABEL_113:
        v23 = 0;
      }

LABEL_114:
      if (*(this + 48) == a2 || *(this + 208) != 1)
      {
        if (v23 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          v48 = *(this + 78);
          v49 = *(v9 + 56);
          buf = 67109890;
          v79 = v48;
          v80 = 2080;
          *v81 = "ProcessFrameDone";
          *&v81[8] = 1024;
          *&v81[10] = v23;
          v82 = 1024;
          v83 = v49;
          _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): Emit to client status=0x%x for subFrameId=%d \n", &buf, 0x1Eu);
        }

        ProResFrameReceiver::EmitDecodedFrame(this, v9, v21, a2, v23, v62 == v61);
        ++*(this + 48);
        if (*(this + 208) == 1 && (ProResFrameReceiver::EmitPendingFrames(this) & 1) == 0)
        {
          v23 = 3758097084;
          if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
          {
            ProResFrameReceiver::ProcessFrameDone();
          }
        }

        v24 = 0;
        v28 = 1;
        goto LABEL_128;
      }

      v23 = ProResFrameReceiver::QueueOutOfOrderFrame(this, v9, v21, a2, 0, v23);
      if (!v23)
      {
        goto LABEL_143;
      }

      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        ProResFrameReceiver::ProcessFrameDone();
      }

LABEL_119:
      v28 = 0;
      v24 = 0;
LABEL_128:
      if (sbuf)
      {
        CFRelease(sbuf);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v21)
      {
        CVPixelBufferRelease(v21);
      }

      if (v28)
      {
        VTDecoderSessionCleanUpAfterDecode();
      }

      if (*(v9 + 4) >= 4)
      {
        freeEncodeStatsBuffers(v9 + 344, 0);
      }

      pthread_mutex_lock(*(this + 13));
      bzero(v9, 0x320uLL);
      **(this + 12) = 1;
      pthread_cond_signal(*(this + 14));
      pthread_mutex_unlock(*(this + 13));
      if (v24)
      {
        CFRelease(v24);
      }

      atomic_fetch_add(*(this + 9), 0xFFFFFFFF);
      pthread_mutex_lock(*(this + 10));
      if (!atomic_load(*(this + 9)))
      {
        pthread_cond_signal(*(this + 11));
      }

      pthread_mutex_unlock(*(this + 10));
      goto LABEL_143;
    }

    if (a4 == 4)
    {
      v22 = -536870173;
    }

    else
    {
      v22 = -12911;
    }

    if (a4 == 3)
    {
      v23 = 3758097110;
    }

    else
    {
      v23 = v22;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v55 = *(this + 78);
      buf = 67110402;
      v79 = v55;
      v80 = 1024;
      *v81 = 2068;
      *&v81[4] = 2080;
      *&v81[6] = "ProcessFrameDone";
      v82 = 1024;
      v83 = a4;
      v84 = 1024;
      v85 = a5;
      v86 = 1024;
      v87 = v23;
      _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR: AppleProResHW (0x%x): %d: %s(): failed decoding proresStatus=%d HWErrorCode=0x%x convertedForEmit=0x%x\n", &buf, 0x2Au);
      if (!v21)
      {
        goto LABEL_30;
      }
    }

    else if (!v21)
    {
LABEL_30:
      v21 = 0;
      *(this + 130) = 0;
      goto LABEL_114;
    }

    CVPixelBufferRelease(v21);
    goto LABEL_30;
  }

  v88 = 0;
  v89 = 0;
  v90 = 0;
  v21 = *(v9 + 72);
  cf = *(v9 + 80);
  *(this + 129) &= a7 != 0;
  if (!a4 || a4 == 5)
  {
    v24 = IOSurfaceLookup(*(v9 + 104));
    BaseAddress = IOSurfaceGetBaseAddress(v24);
    v26 = _byteswap_ulong(*BaseAddress);
    v65 = (*BaseAddress << 24) | (*(BaseAddress + 1) << 16) | (*(BaseAddress + 2) << 8) | *(BaseAddress + 3);
    if (*(v9 + 176))
    {
      v65 = 148;
      if (v26)
      {
LABEL_163:
        ProResFrameReceiver::ProcessFrameDone();
        snprintf(&dataBuffer, 0xB4uLL, "ERROR: AppleProResHW (0x%x): %s(): F# %d: FrameParse error, the bitstream is corrupted, crashing system\n", *(this + 78), "ProcessFrameDone", *v12);
        _os_crash();
        ProResFrameReceiver::ProcessFrameDone();
      }
    }

    else
    {
      v30 = parseFrameHeader(&buf, BaseAddress + 4, a7 != 0, *(this + 79), *(this + 78));
      if (v30)
      {
        if (v30 != -536870191)
        {
          goto LABEL_163;
        }

        *(this + 297) = 1;
      }
    }

    if (*(v9 + 132))
    {
      if (*(this + 66))
      {
        v64 = 1;
        v63 = 0;
        goto LABEL_74;
      }

      freeEncodeStatsBuffers(v9 + 112, 0);
      *(v9 + 376) = 0u;
      *(v9 + 392) = 0u;
      *(v9 + 344) = 0u;
      *(v9 + 360) = 0u;
      v31 = 20;
    }

    else
    {
      v31 = 4;
    }

    length = v31;
    v40 = *(this + 66);
    v64 = 1;
    v63 = 0;
    if (v40)
    {
LABEL_74:
      ProResFrameReceiver::DoubleEncodeFrame(this, v9, BaseAddress, &v64, &v65, &v63);
    }

    kdebug_trace();
    dataBuffer = 0;
    *(&v77 + 1) = v65;
    v42 = (*(v9 + 192) - *(v9 + 184) + v65);
    v74 = *(v9 + 192) - *(v9 + 184);
    v75 = v42;
    v43 = *(v9 + 208);
    if (v42 > v43)
    {
      *(this + 76) = ((&v42[-v43] / v43) * 100.0) + *(this + 76);
      ++*(this + 75);
    }

    v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
    v76 = v44;
    *&v77 = v44 - v42;
    if (*(this + 6) == 2)
    {
      CMBlockBuffer = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x29EDB8ED8], 0, v44, *MEMORY[0x29EDB8ED8], 0, 0, v44, 1u, &dataBuffer);
    }

    else
    {
      CMBlockBuffer = VTEncoderSessionCreateCMBlockBuffer();
    }

    v23 = CMBlockBuffer;
    if (CMBlockBuffer)
    {
      goto LABEL_84;
    }

    v23 = ProResFrameReceiver::CopyBitstreamToBlockBuffer(this, v9, &dataBuffer, BaseAddress, a2, v64);
    if (v23)
    {
LABEL_83:
      CFRelease(dataBuffer);
LABEL_84:
      if (sbuf)
      {
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 1u);
        ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
        setDataForProperty(ValueAtIndex, @"ProResHW_CheckValue", a6, length);
      }

      kdebug_trace();
      goto LABEL_87;
    }

    v52 = *(v9 + 4);
    if (!a7 || v52 == 4)
    {
      v53 = *MEMORY[0x29EDB8ED8];
      v54 = dataBuffer;
      if (v52 == 4)
      {
        goto LABEL_156;
      }
    }

    else
    {
      if (*(this + 129) == 1)
      {
        v53 = *MEMORY[0x29EDB8ED8];
        v54 = dataBuffer;
LABEL_156:
        v57 = (v9 + 88);
LABEL_160:
        v23 = CMSampleBufferCreateReady(v53, v54, *v57, 1, 1, (v9 + 728), 1, &v76, &sbuf);
        if (v23 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
        {
          v58 = *(this + 78);
          *v67 = 67109634;
          v68 = v58;
          v69 = 2080;
          v70 = "ProcessFrameDone";
          v71 = 1024;
          v72 = v23;
          _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: CMSampleBufferCreateReady failed 0x%0x\n", v67, 0x18u);
        }

        goto LABEL_83;
      }

      v53 = *MEMORY[0x29EDB8ED8];
      v54 = dataBuffer;
      if (*(this + 128))
      {
        v57 = (v9 + 88);
        goto LABEL_160;
      }
    }

    v57 = (v9 + 96);
    goto LABEL_160;
  }

  if (a4 == 4)
  {
    v29 = -536870173;
  }

  else
  {
    v29 = -12912;
  }

  if (a4 == 3)
  {
    v23 = 3758097110;
  }

  else
  {
    v23 = v29;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v56 = *(this + 78);
    LODWORD(dataBuffer) = 67110402;
    HIDWORD(dataBuffer) = v56;
    v74 = 0x820000008880400;
    v75 = "ProcessFrameDone";
    LOWORD(v76) = 1024;
    *(&v76 + 2) = a4;
    HIWORD(v76) = 1024;
    LODWORD(v77) = a5;
    WORD2(v77) = 1024;
    *(&v77 + 6) = v23;
    _os_log_error_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "ERROR: AppleProResHW (0x%x): %d: %s(): failed encoding: proresStatus=%d HWErrorCode=0x%x convertedForEmit=0x%x\n", &dataBuffer, 0x2Au);
  }

  v24 = 0;
LABEL_87:
  if (*(this + 48) == a2 || *(this + 208) != 1 || *(this + 66))
  {
    ProResFrameReceiver::EmitEncodedFrame(this, v9, sbuf, a2, v23);
    ++*(this + 48);
    if (*(this + 208) != 1 || *(this + 66) || (ProResFrameReceiver::EmitPendingFrames(this) & 1) != 0)
    {
      v41 = 0;
      goto LABEL_94;
    }

    v23 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::ProcessFrameDone();
    }

LABEL_75:
    v41 = 3;
    goto LABEL_94;
  }

  v23 = ProResFrameReceiver::QueueOutOfOrderFrame(this, v9, sbuf, a2, 0, v23);
  if (v23)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ProResFrameReceiver::ProcessFrameDone();
    }

    goto LABEL_75;
  }

  v41 = 2;
LABEL_94:
  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  v28 = 0;
  if (v41 > 2 || !v41)
  {
    goto LABEL_128;
  }

LABEL_143:
  if (v62 == v61)
  {
    kdebug_trace();
  }

  return v23;
}

void sub_29531755C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 152);
  if (v3)
  {
    *(v1 + 160) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DestroyProResFrameReceiver(CFTypeRef *a1, pthread_attr_t *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (a1)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRetain(*a1);
      ProResFrameReceiver::~ProResFrameReceiver(a1);
      MEMORY[0x29C24C730]();
      CFRunLoopStop(v4);
      CFRelease(v4);
      v5 = 0;
    }

    else
    {
      v5 = 3758097084;
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67109378;
        v7[1] = -1;
        v8 = 2080;
        v9 = "DestroyProResFrameReceiver";
        _os_log_impl(&dword_2952FC000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AppleProResHW (0x%x): %s(): ERROR: runLoopRef NULL\n", v7, 0x12u);
      }
    }

    if (a2)
    {
      pthread_attr_destroy(a2);
    }
  }

  else
  {
    v5 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      DestroyProResFrameReceiver_cold_1();
    }
  }

  return v5;
}

uint64_t CreateProResFrameReceiver(void *a1, uint64_t a2, pthread_attr_t *a3, pthread_t *a4, int a5, int a6)
{
  v20 = *MEMORY[0x29EDCA608];
  v13[0] = 0;
  v14 = 0;
  v15 = a2;
  v16 = a5;
  v19 = a6;
  pthread_mutex_init(&v17, 0);
  pthread_cond_init(&v18, 0);
  pthread_attr_init(a3);
  pthread_attr_setdetachstate(a3, 2);
  if (pthread_attr_setschedpolicy(a3, 2))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      CreateProResFrameReceiver_cold_1();
    }
  }

  else if (pthread_attr_getschedparam(a3, &v12))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      CreateProResFrameReceiver_cold_2();
    }
  }

  else
  {
    v12.sched_priority = 53;
    if (pthread_attr_setschedparam(a3, &v12))
    {
      if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        CreateProResFrameReceiver_cold_3();
      }
    }

    else
    {
      pthread_create(a4, a3, ProResFrameReceiverEntry, v13);
      pthread_mutex_lock(&v17);
      if ((v13[0] & 1) == 0)
      {
        do
        {
          pthread_cond_wait(&v18, &v17);
        }

        while (!v13[0]);
      }

      pthread_mutex_unlock(&v17);
      v11 = v14;
      *a1 = v14;
      if (v11)
      {
        v9 = 0;
        goto LABEL_11;
      }
    }
  }

  pthread_attr_destroy(a3);
  v9 = 3758097084;
LABEL_11:
  pthread_cond_destroy(&v18);
  pthread_mutex_destroy(&v17);
  return v9;
}

uint64_t *std::vector<std::pair<unsigned short,unsigned short>>::__init_with_size[abi:ne200100]<std::pair<unsigned short,unsigned short>*,std::pair<unsigned short,unsigned short>*>(uint64_t *result, int *a2, int *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned short,unsigned short>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_295317A04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned short,unsigned short>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned short,unsigned short>>>(a1, a2);
  }

  std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
}

char *getResolutionTier(int a1, int a2, char *a3)
{
  v3 = a2 * a1;
  if ((a2 * a1) > 0xE1000)
  {
    if (v3 >> 10 > 0x7E8)
    {
      if (v3 > 0x1FE000)
      {
        if (v3 >= 0x240001)
        {
          if (v3 >= 0x7E9000)
          {
            if (v3 == 8294400)
            {
              a3[2] = 0;
              v6 = 19252;
            }

            else
            {
              if (v3 < 0x1FA4001)
              {
                v4 = 4929596;
                goto LABEL_11;
              }

              if (v3 >= 0x21C0001)
              {
                v4 = 4929598;
                goto LABEL_11;
              }

              a3[2] = 0;
              v6 = 19256;
            }

            *a3 = v6;
            return a3;
          }

          v4 = 4928572;
        }

        else
        {
          a3[4] = 0;
          v4 = 1261583676;
        }
      }

      else
      {
        *(a3 + 2) = 112;
        v4 = 808988721;
      }
    }

    else
    {
      *(a3 + 3) = 7352376;
      v4 = 942682428;
    }
  }

  else
  {
    *(a3 + 3) = 7352370;
    v4 = 842480956;
  }

LABEL_11:
  *a3 = v4;
  return a3;
}

void reportEncodeSessionInfo(int a1, int a2, int a3, int a4, int a5, char a6, char a7, int a8, int a9, int a10, int a11, char a12, int a13, int a14, char a15, char a16, uint64_t a17)
{
  v19 = a3;
  v20 = a5;
  v21 = a1;
  v22 = a2;
  v29 = a7;
  v23 = a4;
  v24 = a13;
  v30 = a6;
  v31 = a15;
  v32 = a16;
  if (*(a17 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a17, *(a17 + 8));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *a17;
    __p.__r_.__value_.__r.__words[2] = *(a17 + 16);
  }

  v25 = a10;
  v26 = a11;
  v33 = a12;
  v27 = a8;
  v28 = a9;
  analytics_send_event_lazy();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_295317CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t ___Z23reportEncodeSessionInfojjjjjhbjjjjbjjbbNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  string[0] = HIBYTE(v3);
  string[1] = BYTE2(v3);
  string[2] = BYTE1(v3);
  string[3] = v3;
  string[4] = 0;
  v7[0] = HIBYTE(v4);
  v7[1] = BYTE2(v4);
  v7[2] = BYTE1(v4);
  v7[3] = v4;
  v7[4] = 0;
  xpc_dictionary_set_string(v2, "sessionType", "ProResEncoder");
  xpc_dictionary_set_string(v2, "codecType", string);
  getResolutionTier(*(a1 + 64), *(a1 + 68), v9);
  xpc_dictionary_set_string(v2, "resolution", v9);
  xpc_dictionary_set_uint64(v2, "bitDepth", *(a1 + 72));
  xpc_dictionary_set_BOOL(v2, "doubleEncode", *(a1 + 96));
  xpc_dictionary_set_string(v2, "pixelFormat", v7);
  xpc_dictionary_set_uint64(v2, "framesProcessed", *(a1 + 76));
  xpc_dictionary_set_uint64(v2, "frameRateCode", *(a1 + 97));
  xpc_dictionary_set_BOOL(v2, "hardwareError", *(a1 + 98));
  xpc_dictionary_set_BOOL(v2, "nonCompliant", *(a1 + 99));
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  xpc_dictionary_set_string(v2, "realTime_maximizePowerEfficiency", v5);
  xpc_dictionary_set_uint64(v2, "percentFramesOverTarget", *(a1 + 80));
  xpc_dictionary_set_uint64(v2, "avgTargetOvershootPercent", *(a1 + 84));
  if (*(a1 + 96) == 1)
  {
    xpc_dictionary_set_BOOL(v2, "logCapture", *(a1 + 100));
    xpc_dictionary_set_uint64(v2, "DEFramePercentage", *(a1 + 88));
    xpc_dictionary_set_uint64(v2, "SkipP2Toggled", *(a1 + 92));
  }

  return v2;
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void reportDecodeSessionInfo(int a1, int a2, int a3, int a4, int a5, char a6, int a7, uint64_t a8, char a9, char a10, uint64_t a11)
{
  v12 = a3;
  v13 = a4;
  v14 = a1;
  v15 = a2;
  v16 = a5;
  v17 = a7;
  v18 = a6;
  v19 = a9;
  v20 = a10;
  if (*(a11 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a11, *(a11 + 8));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *a11;
    __p.__r_.__value_.__r.__words[2] = *(a11 + 16);
  }

  analytics_send_event_lazy();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_295318028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t ___Z23reportDecodeSessionInfojjjjjhjjbbNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = *(a1 + 56);
  v4 = *(a1 + 60);
  string[0] = HIBYTE(v3);
  string[1] = BYTE2(v3);
  string[2] = BYTE1(v3);
  string[3] = v3;
  string[4] = 0;
  v7[0] = HIBYTE(v4);
  v7[1] = BYTE2(v4);
  v7[2] = BYTE1(v4);
  v7[3] = v4;
  v7[4] = 0;
  xpc_dictionary_set_string(v2, "sessionType", "ProResDecoder");
  xpc_dictionary_set_string(v2, "codecType", string);
  getResolutionTier(*(a1 + 64), *(a1 + 68), v9);
  xpc_dictionary_set_string(v2, "resolution", v9);
  xpc_dictionary_set_uint64(v2, "bitDepth", *(a1 + 72));
  xpc_dictionary_set_string(v2, "pixelFormat", v7);
  xpc_dictionary_set_uint64(v2, "framesProcessed", *(a1 + 76));
  xpc_dictionary_set_uint64(v2, "frameRateCode", *(a1 + 80));
  xpc_dictionary_set_BOOL(v2, "hardwareError", *(a1 + 81));
  xpc_dictionary_set_BOOL(v2, "nonCompliant", *(a1 + 82));
  v5 = (a1 + 32);
  if (*(a1 + 55) < 0)
  {
    v5 = *v5;
  }

  xpc_dictionary_set_string(v2, "realTime_maximizePowerEfficiency", v5);
  return v2;
}

void ProResEncoderRegister()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v1 = Mutable;
  if (Mutable)
  {
    v2 = *MEMORY[0x29EDB8F00];
    CFDictionarySetValue(Mutable, *MEMORY[0x29EDBD1E0], *MEMORY[0x29EDB8F00]);
    CFDictionarySetValue(v1, *MEMORY[0x29EDBD1E8], v2);
    if (AppleProResHW_CheckPlatform())
    {
LABEL_12:

      CFRelease(v1);
      return;
    }

    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.4444xq");
    VTRegisterVideoEncoderWithInfo();
    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.4444");
    VTRegisterVideoEncoderWithInfo();
    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.422hq");
    VTRegisterVideoEncoderWithInfo();
    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.422");
    VTRegisterVideoEncoderWithInfo();
    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.422lt");
    VTRegisterVideoEncoderWithInfo();
    CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.422proxy");
  }

  else
  {
    if (AppleProResHW_CheckPlatform())
    {
      return;
    }

    VTRegisterVideoEncoderWithInfo();
    VTRegisterVideoEncoderWithInfo();
    VTRegisterVideoEncoderWithInfo();
    VTRegisterVideoEncoderWithInfo();
    VTRegisterVideoEncoderWithInfo();
  }

  VTRegisterVideoEncoderWithInfo();
  if (checkPlatformForProResRAWSupport())
  {
    if (v1)
    {
      CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.raw");
      VTRegisterVideoEncoderWithInfo();
      CFDictionarySetValue(v1, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.appleproreshw.rawhq");
    }

    else
    {
      VTRegisterVideoEncoderWithInfo();
    }

    VTRegisterVideoEncoderWithInfo();
  }

  if (v1)
  {
    goto LABEL_12;
  }
}

uint64_t worker(void *a1)
{
  while (1)
  {
    pthread_mutex_lock(*a1);
    while (!*(*(a1 + 4) + 40))
    {
      v2 = atomic_load(*(a1 + 1));
      if (v2)
      {
        break;
      }

      pthread_cond_wait(*(a1 + 2), *a1);
    }

    v3 = atomic_load(*(a1 + 1));
    if (v3)
    {
      break;
    }

    v4 = *(a1 + 4);
    v5 = *(*(v4->i64[1] + ((v4[2].i64[0] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4[2].i64[0] & 0x1FF));
    v4[2] = vaddq_s64(v4[2], xmmword_295393A30);
    std::deque<void *>::__maybe_remove_front_spare[abi:ne200100](v4, 1);
    pthread_cond_signal(*(a1 + 3));
    pthread_mutex_unlock(*a1);
    (*v5)(*(v5 + 8));
    MEMORY[0x29C24C730](v5, 0x80C40803F642BLL);
  }

  pthread_mutex_unlock(*a1);
  return 0;
}

void ThreadPool::ThreadPool(ThreadPool *this, int a2, int a3)
{
  v5 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 12) = a2;
  *(this + 13) = a3;
  pthread_mutex_init(this + 1, 0);
  pthread_cond_init((this + 128), 0);
  pthread_cond_init((this + 176), 0);
  pthread_attr_init(&v4);
  pthread_attr_setdetachstate(&v4, 1);
  atomic_store(0, this + 224);
  operator new[]();
}

void ThreadPool::~ThreadPool(ThreadPool *this)
{
  atomic_store(1u, this + 224);
  pthread_mutex_lock(this + 1);
  while (1)
  {
    v2 = *(this + 5);
    if (!v2)
    {
      break;
    }

    v3 = *(this + 4);
    v4 = *(*(*(this + 1) + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v3 & 0x1FF));
    if (v4)
    {
      MEMORY[0x29C24C730](v4, 0x80C40803F642BLL);
      v3 = *(this + 4);
      v2 = *(this + 5);
    }

    *(this + 4) = v3 + 1;
    *(this + 5) = v2 - 1;
    std::deque<void *>::__maybe_remove_front_spare[abi:ne200100](this, 1);
  }

  pthread_cond_broadcast((this + 128));
  pthread_mutex_unlock(this + 1);
  if (*(this + 13))
  {
    v5 = 0;
    do
    {
      pthread_join(*(*(this + 7) + 8 * v5++), 0);
    }

    while (v5 < *(this + 13));
  }

  v6 = *(this + 7);
  if (v6)
  {
    MEMORY[0x29C24C710](v6, 0x20C8093837F09);
  }

  v7 = *(this + 29);
  if (v7)
  {
    MEMORY[0x29C24C730](v7, 0x20C40769AC3DALL);
  }

  pthread_cond_destroy((this + 128));
  pthread_mutex_destroy(this + 1);

  std::deque<void *>::~deque[abi:ne200100](this);
}

uint64_t ThreadPool::getTaskQueueSize(pthread_mutex_t *this)
{
  pthread_mutex_lock(this + 1);
  v2 = *&this->__opaque[32];
  pthread_mutex_unlock(this + 1);
  return v2;
}

uint64_t std::deque<void *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<void **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<void **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::deque<void *>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

void std::deque<void *>::push_back(unint64_t *result, void *a2)
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
    std::deque<void *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<void *>::__add_back_capacity(unint64_t *a1)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<void **>::emplace_back<void **&>(a1, &v9);
}

void sub_295318CB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<void **>::emplace_back<void **&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<void **>::emplace_front<void **>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<void **>::emplace_back<void **>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<void **>::emplace_front<void **&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void interchange_compression::compressor::compress()
{
  __assert_rtn("get", "interchange_header.h", 100, "fields[field_id(s, comp)].init");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 577, "mode_offset != 0");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 618, "mode[c] <= dq_max_mode[fmt_id]");
}

{
  __assert_rtn("sanity_check_quantized_delta", "interchange_lossy.h", 245, "error < (1ull << (lossy_parameters[format].max_qp[lossy_level+1][c]))");
}

{
  __assert_rtn("sanity_check_quantized_delta", "interchange_lossy.h", 248, "(pixel_value < (1ull<<comp_width)-1) || sanity_decoded_comp == pixel_value");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 753, "round_qdelta_down == round_qdelta_down_rtl");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 721, "bucket_width == 1");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 855, "pixel_packed <= legal_pixel_size");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 795, "(comp_width[c] != 2) || (comp_width[c] == 2 && dquad_pixel_oob) || (comp_width[c] == 2 && value == dquad[p][c])");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 802, "fallback_packed_bits == dquad_footprint_bits");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 863, "compressed_block.size_bits() == dquad_footprint_bits");
}

{
  __assert_rtn("lossy_compress_dquad", "interchange_lossy.h", 536, "lossy_level >= 0 && lossy_level <= 2");
}

{
  __assert_rtn("compress", "interchange_compressor.h", 549, "packed_size_padded == compressed_size_padded");
}

{
  __assert_rtn("compress", "interchange_compressor.h", 454, "height > 0 && height <= SB_HEIGHT");
}

{
  __assert_rtn("compress", "interchange_compressor.h", 453, "width > 0 && width <= SB_WIDTH");
}

void interchange_compression::decompressor::decompress()
{
  __assert_rtn("decompress", "interchange_decompressor.h", 210, "lossy_level == 0");
}

{
  __assert_rtn("decompress", "interchange_decompressor.h", 201, "lossy_level == 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 900, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 910, "mode_sz != 0");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1012, "pixel_unpacked <= legal_pixel_size");
}

{
  __assert_rtn("lossy_decompress_dquad", "interchange_lossy.h", 1062, "delta_quant <= ((1ull << delta_bits[c]) - 1)");
}

{
  __assert_rtn("skip", "interchange_bit_pack.h", 102, "read_ptr <= size_bits()");
}

void interchange_compression::compressor::compressor()
{
  __assert_rtn("set_format", "interchange_header.h", 201, "header_layout_table[id].format == id");
}

{
  __assert_rtn("compressor", "interchange_compressor.h", 153, "check_valid_lossy_level(lossy_level, format)");
}

{
  __assert_rtn("compressor", "interchange_compressor.h", 154, "lossy_level == 0 || comp_type < COMP_TYPE_INVALID");
}

{
  __assert_rtn("compressor", "interchange_compressor.h", 152, "alternative_decorrelation == 0 || _format == FMT_8_8_8_8");
}

void bit_pack::pack()
{
  __assert_rtn("pack", "interchange_bit_pack.h", 64, "0");
}

{
  __assert_rtn("pack", "interchange_bit_pack.h", 62, "!read_only");
}

void interchange_compression::header::get_size()
{
  __assert_rtn("get_size", "interchange_header.h", 129, "fields[field_id(BITS, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 128, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 123, "fields[field_id(MODE, comp)].init");
}

{
  __assert_rtn("get_size", "interchange_header.h", 138, "0");
}

{
  __assert_rtn("get_size", "interchange_header.h", 134, "fields[field_id(MODE, comp)].init");
}

void interchange_compression::derive_sharing()
{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 356, "start_level[3] <= 0");
}

{
  __assert_rtn("derive_sharing", "interchange_lossy.h", 269, "mode[3] == 0 || mode[3] == 1");
}

void interchange_compression::decompressor::decompressor()
{
  __assert_rtn("decompressor", "interchange_decompressor.h", 38, "check_valid_lossy_level(lossy_level, format)");
}

{
  __assert_rtn("decompressor", "interchange_decompressor.h", 39, "lossy_level == 0 || comp_type < COMP_TYPE_INVALID");
}

void AppleProResHW_CheckPlatform()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void GetMaxCompressionSizeExcludingAlpha()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void GetCompressedFrameSize()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void GetEmptySpotInFrameInfoArray()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void createConnection()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void checkFrameHeader()
{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void parseFrameHeader()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void createEncodeStatsBuffers()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void ProResEncoder_CreateInstance_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ProResEncoder_CreateInstance_cold_2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ProResEncoder_CreateInstance_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ProResEncoder_CreateInstance_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void createFormatDescriptionExtensions()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ProResEncoder_Invalidate()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ProResEncoder_CopyProperty()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ProResEncoder_SetProperty()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_10(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_10(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_10(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_10(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ProResEncoder_CompleteFrames()
{
  OUTLINED_FUNCTION_10(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ProResEncoder_StartSession()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

void ProResEncoder_EncodeFrame()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ProResEncoder_CopySupportedPropertyDictionary()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ProResEncoder_GetInInfoSizes()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ProResEncoder_CalculateRawBitRates()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ProResEncoder_CheckEncodeCmd()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Eu);
}

{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void ProResFrameReceiver::InitializeDoubleEncode()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void ProResFrameReceiver::FrameDone()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ProResFrameReceiver::Setup()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void stitchCallback()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
}

void ProResFrameReceiver::EmitPendingFrames()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x24u);
}

void ProResFrameReceiver::PerformAlphaUpscaling()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x28u);
}

void ProResFrameReceiver::DoubleEncodeFrame()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ProResFrameReceiver::P1ParseFrame()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void ProResFrameReceiver::P2Encode()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void ProResFrameReceiver::P2PrepareFrame()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void ProResFrameReceiver::CopyBitstreamToBlockBuffer()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Eu);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void ProResFrameReceiver::ProcessFrameDone()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_3_1();
    _os_log_impl(v0, v1, v2, v3, v4, v5);
  }
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_8(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
}

void DestroyProResFrameReceiver_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void CreateProResFrameReceiver_cold_1()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void CreateProResFrameReceiver_cold_2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void CreateProResFrameReceiver_cold_3()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void ProResFrameReceiverEntry()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2A1C59700](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}