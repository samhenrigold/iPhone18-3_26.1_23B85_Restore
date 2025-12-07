void sub_2627F4BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, DgnString *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(a17);
  DgnString::~DgnString(a14);
  DgnStream::~DgnStream(v22);
  _Unwind_Resume(a1);
}

size_t RealDFileSubFileStream::basicReadWithMode(uint64_t a1, char *a2, unsigned int a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v7 = RealDFileSubFileStream::basicRead(a1, a2, a3);
  v8 = v7;
  if (a4 == 1 && v7 != a3)
  {
    v9 = *(a1 + 40);
    v10 = (*(v9 + 152) + (*(a1 + 68) << 7));
    if (*(v9 + 24))
    {
      v11 = *(v9 + 16);
    }

    else
    {
      v11 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1451, "dfutil/realdf", 19, "%.500s %.500s %u %u", v10, v11, a3, v7);
  }

  return v8;
}

double RealDFile::verifyCompressionInfo(RealDFile *this, unsigned int a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = *(this + 19) + (a2 << 7);
  if (*(v7 + 112) != a3)
  {
    if (*(this + 6))
    {
      v8 = *(this + 2);
    }

    else
    {
      v8 = &unk_26288F516;
    }

    result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4671, "dfutil/realdf", 42, "%.500s %.500s %llu %llu", v7, v8, *(v7 + 112), a3);
  }

  if (*(v7 + 120) != a4)
  {
    if (*(this + 6))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = &unk_26288F516;
    }

    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4676, "dfutil/realdf", 41, "%.500s %.500s %u %u", (*(this + 19) + (v6 << 7)), v10, *(v7 + 120), a4);
  }

  return result;
}

void RealDFileSubFileStream::~RealDFileSubFileStream(RealDFileSubFileStream *this, uint64_t a2, const char *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  *this = &unk_287525538;
  v4 = *(this + 5);
  if (v4)
  {
    if (*(this + 92) == 1 && *(this + 16) == 5)
    {
      strm.next_in = 0;
      strm.avail_in = 0;
      strm.next_out = 0;
      strm.avail_out = 0;
      strm.zalloc = mrecZlibAlloc;
      strm.zfree = mrecZlibFree;
      strm.opaque = 0;
      v5 = crc32(0, 0, 0);
      deflateInit2_(&strm, 1, 8, -15, 9, 0, "1.2.12", 112);
      *__str = 0;
      v6 = realloc_array(0, __str, 0x4000uLL, 0, 0, 1);
      v7 = *__str;
      v36 = 0x4000;
      v37 = v6;
      strm.next_out = *__str;
      strm.avail_out = 0x4000;
      v35 = *__str;
      snprintf(__str, 0xBuLL, "%c%c%c%c%c%c%c%c%c%c", 31, 139, 8, 0, 0, 0, 0, 0, 4, 3);
      RealDFileSubFileStream::basicWrite(this, __str, 0xAu);
      if (*(this + 26))
      {
        v8 = 0;
        do
        {
          v9 = *(this + 12) + 16 * v8;
          strm.next_in = *v9;
          strm.avail_in = *(v9 + 8);
          v5 = crc32(v5, strm.next_in, strm.avail_in);
          while (strm.avail_in)
          {
            if (!strm.avail_out)
            {
              RealDFileSubFileStream::basicWrite(this, v7, 0x4000u);
              strm.next_out = v7;
              strm.avail_out = 0x4000;
            }

            v10 = deflate(&strm, 0);
            if (v10)
            {
              v11 = *(this + 5);
              if (*(v11 + 24))
              {
                v12 = *(v11 + 16);
              }

              else
              {
                v12 = &unk_26288F516;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 971, "dfutil/realdf", 35, "%.500s %.500s %d", (*(v11 + 152) + (*(this + 34) << 7)), v12, v10);
            }
          }

          ++v8;
        }

        while (v8 < *(this + 26));
      }

      v13 = 0;
      while (1)
      {
        avail_out = strm.avail_out;
        if (strm.avail_out != 0x4000)
        {
          RealDFileSubFileStream::basicWrite(this, v7, 0x4000 - strm.avail_out);
          strm.next_out = v7;
          strm.avail_out = 0x4000;
        }

        if (v13)
        {
          break;
        }

        v15 = deflate(&strm, 4);
        if (v15 == -5 && avail_out == 0x4000)
        {
          v17 = 0;
        }

        else
        {
          v17 = v15;
        }

        v13 = v17 == 1 || strm.avail_out != 0;
        if (v17 >= 2)
        {
          v19 = *(this + 5);
          if (*(v19 + 24))
          {
            v20 = *(v19 + 16);
          }

          else
          {
            v20 = &unk_26288F516;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1009, "dfutil/realdf", 35, "%.500s %.500s %d", (*(v19 + 152) + (*(this + 34) << 7)), v20, v17);
        }
      }

      v21 = 4;
      v22 = v5;
      do
      {
        __str[0] = v22;
        RealDFileSubFileStream::basicWrite(this, __str, 1u);
        v22 >>= 8;
        --v21;
      }

      while (v21);
      total_in = strm.total_in;
      v24 = 4;
      do
      {
        __str[0] = total_in;
        RealDFileSubFileStream::basicWrite(this, __str, 1u);
        total_in >>= 8;
        --v24;
      }

      while (v24);
      v25 = *(this + 5);
      v26 = strm.total_in;
      v27 = *(v25 + 152) + (*(this + 34) << 7);
      *(v27 + 124) = 257;
      *(v27 + 112) = v26;
      *(v27 + 120) = v5;
      *(v25 + 296) = 1;
      v28 = deflateEnd(&strm);
      if (v28 >= 2)
      {
        v29 = *(this + 5);
        v30 = (*(v29 + 152) + (*(this + 34) << 7));
        if (*(v29 + 24))
        {
          v31 = *(v29 + 16);
        }

        else
        {
          v31 = &unk_26288F516;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1023, "dfutil/realdf", 35, "%.500s %.500s %d", v30, v31, v28);
      }

      v32 = *(this + 26);
      if (v32 >= 1)
      {
        v33 = 16 * v32 - 16;
        do
        {
          DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 12) + v33);
          v33 -= 16;
        }

        while (v33 != -16);
      }

      *(this + 26) = 0;
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v35);
      v4 = *(this + 5);
    }

    if (*(this + 14))
    {
      v34 = *(this + 6);
    }

    else
    {
      v34 = &unk_26288F516;
    }

    DFile::reportProgress(v4, v34, a3);
    *(this + 5) = 0;
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 96);
  DgnString::~DgnString(this + 48);
  DgnStream::~DgnStream(this);
}

{
  RealDFileSubFileStream::~RealDFileSubFileStream(this, a2, a3);

  JUMPOUT(0x26672B1B0);
}

void sub_2627F52D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void RealDFileSubFileStream::basicWrite(uint64_t this, const char *a2, unsigned int a3)
{
  if (!a3)
  {
    return;
  }

  v6 = *(this + 88);
  v7 = *(this + 80);
  v8 = *(this + 40);
  v9 = *(v8 + 152) + (*(this + 68) << 7);
  if (4096 - (v7 & 0xFFF) >= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = 4096 - (v7 & 0xFFF);
  }

  v11 = *(this + 80) & 0xFFFLL | ((*(v8 + 216) + v6) << 12);
  v12 = a3;
  while (1)
  {
    if (v12 <= v10)
    {
      v15 = 0;
    }

    else
    {
      v13 = *(this + 40);
      v14 = *(this + 68);
      if (v6 == *(v9 + 104))
      {
        v15 = RealDFile::addBlock(v13, v14);
        *(v9 + 108) = 0;
      }

      else
      {
        v15 = v6 + 1;
        v17 = *(v13 + 144);
        if (v17 > v6 + 1)
        {
          v18 = (*(v13 + 136) + 2 * v15);
          while (1)
          {
            v19 = *v18++;
            if (v19 == v14)
            {
              break;
            }

            if (v17 == ++v15)
            {
              v15 = *(v13 + 144);
              break;
            }
          }
        }
      }
    }

    v16 = v6 + 1;
    if (v12 == v10 || v15 != v16)
    {
      break;
    }

LABEL_14:
    if (v12 - v10 >= 0x1000)
    {
      v10 += 4096;
    }

    else
    {
      v10 = v12;
    }

    LODWORD(v6) = v15;
  }

  RealDFile::doWriteToCache(*(this + 40), v11, a2, v10);
  v12 -= v10;
  if (v12)
  {
    a2 += v10;
    v11 = (*(*(this + 40) + 216) + v15) << 12;
    v10 = 0;
    goto LABEL_14;
  }

  v20 = *(this + 80) + a3;
  *(this + 80) = v20;
  v21 = *(v9 + 104);
  v22 = v20 & 0xFFF;
  if ((v20 & 0xFFF) == 0)
  {
    v23 = *(this + 40);
    v24 = *(this + 68);
    if (v6 == v21)
    {
      LODWORD(v6) = RealDFile::addBlock(v23, v24);
      *(v9 + 108) = 0;
      v21 = *(v9 + 104);
    }

    else
    {
      v25 = *(v23 + 144);
      if (v25 <= v16)
      {
        LODWORD(v6) = v6 + 1;
      }

      else
      {
        LODWORD(v6) = v6 + 1;
        v26 = (*(v23 + 136) + 2 * v16);
        while (1)
        {
          v27 = *v26++;
          if (v27 == v24)
          {
            break;
          }

          LODWORD(v6) = v6 + 1;
          if (v25 == v6)
          {
            LODWORD(v6) = *(v23 + 144);
            break;
          }
        }
      }
    }
  }

  if (v6 == v21 && *(v9 + 108) < v22)
  {
    *(v9 + 108) = v22;
    *(*(this + 40) + 296) = 1;
  }

  *(this + 88) = v6;
}

void RealDFileSubFileStream::printSize(RealDFileSubFileStream *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1044);
  if (v53)
  {
    v13 = v52;
  }

  else
  {
    v13 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288F516, a3, &unk_26288F516, v13);
  DgnString::~DgnString(&v52);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288F516);
  v51 = 0;
  v52 = 0;
  v15 = (a3 + 1);
  v50 = 0;
  DgnStream::printSize(this, 0xFFFFFFFFLL, v15, &v52, &v51, &v50);
  *a4 += v52;
  *a5 += v51;
  *a6 += v50;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v16 = 4;
  }

  else
  {
    v16 = 8;
  }

  v49 = a3;
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1046);
  if (v53)
  {
    v19 = v52;
  }

  else
  {
    v19 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, v15, &unk_26288F516, v17, v17, v19, v16, v16, 0);
  DgnString::~DgnString(&v52);
  *a4 += v16;
  *a5 += v16;
  v20 = sizeObject(this + 48, 0);
  v21 = sizeObject(this + 48, 1);
  v22 = sizeObject(this + 48, 3);
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1048);
  if (v53)
  {
    v24 = v52;
  }

  else
  {
    v24 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v15, &unk_26288F516, v17, v17, v24, v20, v21, v22);
  DgnString::~DgnString(&v52);
  *a4 += v20;
  *a5 += v21;
  *a6 += v22;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1050);
  if (v53)
  {
    v26 = v52;
  }

  else
  {
    v26 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v15, &unk_26288F516, v17, v17, v26, 2, 2, 0);
  DgnString::~DgnString(&v52);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1051);
  if (v53)
  {
    v28 = v52;
  }

  else
  {
    v28 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v15, &unk_26288F516, v17, v17, v28, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1052);
  if (v53)
  {
    v30 = v52;
  }

  else
  {
    v30 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v15, &unk_26288F516, v17, v17, v30, 1, 1, 0);
  DgnString::~DgnString(&v52);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1054);
  if (v53)
  {
    v32 = v52;
  }

  else
  {
    v32 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v15, &unk_26288F516, v17, v17, v32, 8, 8, 0);
  DgnString::~DgnString(&v52);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1056);
  if (v53)
  {
    v34 = v52;
  }

  else
  {
    v34 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v15, &unk_26288F516, v17, v17, v34, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1057);
  if (v53)
  {
    v36 = v52;
  }

  else
  {
    v36 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v15, &unk_26288F516, v17, v17, v36, 1, 1, 0);
  DgnString::~DgnString(&v52);
  ++*a4;
  ++*a5;
  v37 = sizeObject<DgnPrimArray<unsigned char>>(this + 96, 0);
  v38 = sizeObject<DgnPrimArray<unsigned char>>(this + 96, 1);
  v52 = 0;
  v53 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v52);
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1059);
  if (v53)
  {
    v40 = v52;
  }

  else
  {
    v40 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v15, &unk_26288F516, v17, v17, v40, v37, v38, 0);
  DgnString::~DgnString(&v52);
  *a4 += v37;
  *a5 += v38;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1061);
  if (v53)
  {
    v42 = v52;
  }

  else
  {
    v42 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v15, &unk_26288F516, v17, v17, v42, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1063);
  if (v53)
  {
    v44 = v52;
  }

  else
  {
    v44 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v15, &unk_26288F516, v17, v17, v44, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1065);
  if (v53)
  {
    v46 = v52;
  }

  else
  {
    v46 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v15, &unk_26288F516, v17, v17, v46, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1067);
  if (v53)
  {
    v48 = v52;
  }

  else
  {
    v48 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v49, &unk_26288F516, (35 - v49), (35 - v49), v48, *a4, *a5, *a6);
  DgnString::~DgnString(&v52);
}

void sub_2627F5C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void RealDFileSubFileStream::seekFromBeg(RealDFileSubFileStream *this, unint64_t a2)
{
  if (*(this + 92) == 1)
  {
    if (*(this + 28) < a2)
    {
      v4 = *(this + 5);
      v5 = (*(v4 + 152) + (*(this + 34) << 7));
      if (*(v4 + 24))
      {
        v6 = *(v4 + 16);
      }

      else
      {
        v6 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1082, "dfutil/realdf", 34, "%.500s %.500s", v5, v6);
    }

    *(this + 29) = a2;
  }

  else
  {
    v7 = *(this + 5);
    v8 = *(v7 + 152) + (*(this + 34) << 7);
    v9 = *(v8 + 108) + ((*(v8 + 96) - 1) << 12);
    if (v9 < a2)
    {
      if (*(v7 + 24))
      {
        v10 = *(v7 + 16);
      }

      else
      {
        v10 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1095, "dfutil/realdf", 50, "%.500s %.500s %llu %llu", v8, v10, a2, v9);
    }

    v11 = *(this + 22);
    v12 = (a2 >> 12) - (*(this + 10) >> 12);
    if (v12 < 1)
    {
      if (v12 < 0)
      {
        v18 = *(this + 5);
        v19 = *(v18 + 144);
        do
        {
          if (v19 <= --v11)
          {
            v11 = v19 - 1;
          }

          for (; v11 != -1; --v11)
          {
            if (*(*(v18 + 136) + 2 * v11) == *(this + 34))
            {
              break;
            }
          }
        }

        while (!__CFADD__(v12++, 1));
      }
    }

    else
    {
      v13 = *(this + 5);
      v14 = *(v13 + 144);
      do
      {
        if (v14 > ++v11)
        {
          v15 = (*(v13 + 136) + 2 * v11);
          while (1)
          {
            v16 = *v15++;
            if (v16 == *(this + 34))
            {
              break;
            }

            if (v14 == ++v11)
            {
              v11 = *(v13 + 144);
              break;
            }
          }
        }
      }

      while (v12-- > 1);
    }

    *(this + 22) = v11;
    *(this + 10) = a2;
  }

  *(this + 76) = 0;
}

uint64_t RealDFileSubFileStream::seekToEnd(uint64_t this)
{
  if (*(this + 92) == 1)
  {
    *(this + 116) = *(this + 112);
    *(this + 76) = 0;
  }

  else
  {
    v1 = *(*(this + 40) + 152) + (*(this + 68) << 7);
    return (*(*this + 24))(this, *(v1 + 108) + ((*(v1 + 96) - 1) << 12));
  }

  return this;
}

uint64_t RealDFileSubFileStream::tell(RealDFileSubFileStream *this)
{
  if (*(this + 92) == 1)
  {
    return *(this + 29);
  }

  else
  {
    return *(this + 10);
  }
}

unint64_t RealDFileSubFileStream::tell32(RealDFileSubFileStream *this)
{
  v1 = (*(*this + 40))(this);
  if (HIDWORD(v1))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1154, "dfutil/realdf", 59, "%s", &unk_26288F516);
  }

  return v1;
}

uint64_t RealDFileSubFileStream::peekForChar(RealDFileSubFileStream *this)
{
  v2 = *(this + 76);
  v3 = (*(*this + 40))(this);
  v6 = 0;
  if ((*(*this + 72))(this, &v6, 1, 0))
  {
    v4 = v6;
    (*(*this + 24))(this, v3);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  *(this + 76) = v2;
  return v4;
}

uint64_t RealDFileSubFileStream::basicCompressedRead(RealDFileSubFileStream *this, char *__dst, unsigned int a3)
{
  v3 = *(this + 29);
  v4 = *(this + 28) - v3;
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  if (v5)
  {
    v8 = v3 / 0x500000uLL;
    v9 = *(this + 12) + 16 * v8;
    v10 = v3 % 0x500000;
    v11 = *(v9 + 8) - v10;
    v12 = v5 >= v11 ? v11 : v5;
    memcpy(__dst, (*v9 + v10), v12);
    *(this + 29) += v12;
    v13 = v5 - v12;
    if (v5 != v12)
    {
      v14 = v12 + v10;
      v15 = v11 - v12;
      do
      {
        if (!v15 || v14 >= *(v9 + 8))
        {
          v14 = 0;
          LODWORD(v8) = v8 + 1;
          v9 = *(this + 12) + 16 * v8;
          v15 = *(v9 + 8);
        }

        if (v13 >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v13;
        }

        memcpy(&__dst[v12], (*v9 + v14), v16);
        LODWORD(v12) = v16 + v12;
        *(this + 29) += v16;
        v15 -= v16;
        v14 += v16;
        v13 -= v16;
      }

      while (v13);
    }
  }

  return v5;
}

size_t RealDFileSubFileStream::readWithMode(RealDFileSubFileStream *this, char *a2, unsigned int a3, int a4)
{
  if (*(this + 92))
  {
    v7 = RealDFileSubFileStream::basicCompressedRead(this, a2, a3);
  }

  else
  {
    v7 = RealDFileSubFileStream::basicRead(this, a2, a3);
  }

  v8 = v7;
  if (v7 < a3)
  {
    *(this + 76) = 1;
    if (a4 == 1)
    {
      v9 = *(this + 5);
      v10 = (*(v9 + 152) + (*(this + 34) << 7));
      if (*(v9 + 24))
      {
        v11 = *(v9 + 16);
      }

      else
      {
        v11 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1276, "dfutil/realdf", 19, "%.500s %.500s %u %u", v10, v11, a3, v7);
    }
  }

  return v8;
}

double RealDFileSubFileStream::throwUnexpectedEof(RealDFileSubFileStream *this, int a2, int a3)
{
  v3 = *(this + 5);
  v4 = *(v3 + 152);
  if (*(v3 + 24))
  {
    v5 = *(v3 + 16);
  }

  else
  {
    v5 = &unk_26288F516;
  }

  return errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1288, "dfutil/realdf", 19, "%.500s %.500s %u %u", (v4 + (*(this + 34) << 7)), v5, a2, a3);
}

void RealDFileSubFileStream::writeBytes(_DWORD *this, const char *a2, unsigned int a3)
{
  if (!a3)
  {
    return;
  }

  if (!this[18])
  {
    v6 = (*(*this + 40))(this);
    (*(*this + 24))(this, v6);
    this[18] = 1;
  }

  if (this[23])
  {
    v7 = this[29];
    if ((v7 + a3) >> 32)
    {
      v8 = *(this + 5);
      v9 = (*(v8 + 152) + (*(this + 34) << 7));
      if (*(v8 + 24))
      {
        v10 = *(v8 + 16);
      }

      else
      {
        v10 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1317, "dfutil/realdf", 51, "%.500s %.500s", v9, v10);
      LODWORD(v7) = this[29];
    }

    v11 = v7 + a3;
    v12 = this[28];
    v13 = v7 + a3 - v12;
    if (v7 + a3 <= v12)
    {
      goto LABEL_46;
    }

    v14 = 5242880 * (v12 / 0x500000) - v12 + 5242880;
    v15 = this[26];
    v16 = v13 - v14;
    if (v13 >= v14)
    {
      v18 = *(this + 12) + 16 * (v15 - 1);
      v19 = *(v18 + 12);
      v20 = *(v18 + 8) + v14;
      if (v20 > v19)
      {
        DgnPrimArray<char>::reallocElts(*(this + 12) + 16 * (v15 - 1), v20 - v19, 1);
        v20 = *(v18 + 8) + v14;
        v15 = this[26];
      }

      *(v18 + 8) = v20;
      v21 = v16 / 0x500000;
      v22 = v16 / 0x500000 + 1;
      v23 = v15 + v22;
      v24 = this[27];
      v25 = v15;
      if (v15 + v22 > v24)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts((this + 24), v15 + v22 - v24, 1);
        v25 = this[26];
        v23 = v25 + v22;
      }

      v51 = v16;
      if (v25 <= v23)
      {
        if (v25 < v23)
        {
          v28 = v23 - v25;
          v29 = 16 * v25;
          do
          {
            v30 = (*(this + 12) + v29);
            *v30 = 0;
            v30[1] = 0;
            v29 += 16;
            --v28;
          }

          while (v28);
        }
      }

      else if (v25 > v23)
      {
        v26 = v25;
        v27 = 16 * v25 - 16;
        do
        {
          --v26;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 12) + v27);
          v27 -= 16;
        }

        while (v26 > v23);
      }

      v31 = v51 - 5242880 * v21;
      this[26] = v23;
      v32 = v15 + v21;
      if (v15 < v15 + v21)
      {
        v33 = 16 * v15;
        do
        {
          v34 = *(this + 12) + v33;
          if (*(v34 + 12) >> 20 <= 4u)
          {
            v52 = 0;
            *(v34 + 12) = realloc_array(*v34, &v52, 0x500000uLL, *(v34 + 8), *(v34 + 8), 1);
            *v34 = v52;
          }

          *(v34 + 8) = 5242880;
          v33 += 16;
          --v21;
        }

        while (v21);
      }

      v35 = *(this + 12) + 16 * v32;
      if (*(v35 + 12) < v31)
      {
        v52 = 0;
        *(v35 + 12) = realloc_array(*v35, &v52, v31, *(v35 + 8), *(v35 + 8), 1);
        *v35 = v52;
      }

      *(v35 + 8) = v31;
      goto LABEL_45;
    }

    if (v15)
    {
LABEL_42:
      v39 = *(this + 12) + 16 * (v15 - 1);
      v40 = *(v39 + 12);
      v41 = *(v39 + 8) + v13;
      if (v41 > v40)
      {
        DgnPrimArray<char>::reallocElts(*(this + 12) + 16 * (v15 - 1), v41 - v40, 1);
        v41 = *(v39 + 8) + v13;
      }

      *(v39 + 8) = v41;
LABEL_45:
      this[28] = v11;
      LODWORD(v7) = this[29];
LABEL_46:
      v42 = v7 / 0x500000uLL;
      v43 = v7 % 0x500000;
      v44 = *(this + 12) + 16 * v42;
      v45 = *(v44 + 8) - v43;
      if (a3 >= v45)
      {
        v46 = v45;
      }

      else
      {
        v46 = a3;
      }

      memcpy((*v44 + v43), a2, v46);
      this[29] += v46;
      v47 = a3 - v46;
      if (a3 != v46)
      {
        v48 = v46 + v43;
        v49 = v45 - v46;
        do
        {
          if (!v49 || v48 >= *(v44 + 8))
          {
            v48 = 0;
            LODWORD(v42) = v42 + 1;
            v44 = *(this + 12) + 16 * v42;
            v49 = *(v44 + 8);
          }

          if (v47 >= v49)
          {
            v50 = v49;
          }

          else
          {
            v50 = v47;
          }

          memcpy((*v44 + v48), &a2[v46], v50);
          LODWORD(v46) = v50 + v46;
          this[29] += v50;
          v49 -= v50;
          v48 += v50;
          v47 -= v50;
        }

        while (v47);
      }

      return;
    }

    if (this[27])
    {
      v17 = 0;
      v15 = 1;
    }

    else
    {
      DgnArray<DgnPrimArray<double>>::reallocElts((this + 24), 1, 1);
      v17 = this[26];
      v15 = v17 + 1;
      if (v17 == -1)
      {
LABEL_41:
        this[26] = v15;
        goto LABEL_42;
      }
    }

    v36 = v15 - v17;
    v37 = 16 * v17;
    do
    {
      v38 = (*(this + 12) + v37);
      *v38 = 0;
      v38[1] = 0;
      v37 += 16;
      --v36;
    }

    while (v36);
    goto LABEL_41;
  }

  RealDFileSubFileStream::basicWrite(this, a2, a3);
}

void RealDFile::flushDFile(RealDFile *this)
{
  if (*(this + 108))
  {
    OsFile::seekFromBegGrowWithZeros(*(this + 10), *(this + 53));
    if (*(this + 46))
    {
      EncryptBuffer(*(this + 51), *(this + 108), *(this + 46));
    }

    OsFile::writeBytes(*(this + 10), *(this + 51), *(this + 108));
    *(this + 108) = 0;
  }
}

uint64_t RealDFileSubFileStream::beginCachedReadGroup(RealDFileSubFileStream *this, int a2, int a3, char a4)
{
  result = (*(*this + 40))(this);
  if ((a4 & 1) != 0 || (result & 0xFFF) == 0)
  {
    *(this + 30) = *(this + 22);
    v9 = *(this + 5);
  }

  else
  {
    v9 = *(this + 5);
    v10 = *(this + 22) + 1;
    v11 = *(v9 + 144);
    if (v11 > v10)
    {
      v12 = (*(v9 + 136) + 2 * v10);
      while (1)
      {
        v13 = *v12++;
        if (v13 == *(this + 34))
        {
          break;
        }

        if (v11 == ++v10)
        {
          v10 = *(v9 + 144);
          break;
        }
      }
    }

    *(this + 30) = v10;
  }

  *(v9 + 376) = a2;
  *(v9 + 380) = a3;
  *(v9 + 384) = a4;
  return result;
}

double RealDFile::endCachedReadGroup(RealDFile *this, int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (a3 < a4)
  {
    v8 = a3;
    v10 = *(this + 54);
    do
    {
      v11 = v8 + v10;
      if (v8 + v10 >= *(this + 86))
      {
        break;
      }

      v12 = *(*(this + 42) + 8 * v11);
      if (v12)
      {
        v13 = *(this + 90);
        if (v13 == *(this + 91))
        {
          DgnPrimArray<unsigned long long>::reallocElts(this + 352, 1, 1);
          v13 = *(this + 90);
        }

        *(*(this + 44) + 8 * v13) = v12;
        *(this + 90) = v13 + 1;
        *(*(this + 42) + 8 * v11) = 0;
        v14 = *(this + 93) - 1;
        *(this + 93) = v14;
        if (!v14)
        {
          *(this + 92) = 0;
          if (a5)
          {
            goto LABEL_17;
          }

          goto LABEL_25;
        }

        if (*(this + 92) == v11)
        {
          *(this + 92) = v11 + 1;
        }
      }

      ++v8;
      v15 = *(this + 36);
      if (v15 > v8)
      {
        v16 = (*(this + 17) + 2 * v8);
        while (1)
        {
          v17 = *v16++;
          if (v17 == a2)
          {
            break;
          }

          if (v15 == ++v8)
          {
            v8 = *(this + 36);
            break;
          }
        }
      }
    }

    while (v8 < a4);
  }

  if (a5)
  {
LABEL_17:
    if (*(this + 93) >= a5)
    {
      v18 = *(this + 86);
      if (v18 >= 1)
      {
        v19 = 8 * v18 - 8;
        do
        {
          DgnDelete<DgnPrimFixArray<char>>(*(*(this + 42) + v19));
          *(*(this + 42) + v19) = 0;
          v19 -= 8;
        }

        while (v19 != -8);
      }

      *(this + 86) = 0;
      v20 = *(this + 90);
      if (v20 >= 1)
      {
        v21 = 8 * v20 - 8;
        do
        {
          DgnDelete<DgnPrimFixArray<char>>(*(*(this + 44) + v21));
          *(*(this + 44) + v21) = 0;
          v21 -= 8;
        }

        while (v21 != -8);
      }

      *(this + 90) = 0;
      *(this + 46) = 0;
    }
  }

LABEL_25:
  *&result = 0x1800000003;
  *(this + 47) = 0x1800000003;
  *(this + 384) = 1;
  return result;
}

uint64_t RealDFile::addBlock(RealDFile *this, unsigned int a2)
{
  v2 = a2;
  v4 = (*(this + 19) + (a2 << 7));
  v5 = (v4[26] + 1);
  v6 = *(this + 36);
  if (v6 > v5)
  {
    v7 = (*(this + 17) + 2 * v5);
    while (*v7++)
    {
      v5 = (v5 + 1);
      if (v6 == v5)
      {
        v5 = *(this + 36);
        break;
      }
    }
  }

  if (*(gParDiagnosticDFileSimulateAddBlockFailure + 41) == 1)
  {
    if (*(this + 6))
    {
      v9 = *(this + 2);
    }

    else
    {
      v9 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4464, "dfutil/realdf", 5, "%.500s", v9);
    v6 = *(this + 36);
  }

  if (v5 == v6)
  {
    v5 = RealDFile::addBlockSpace(this);
  }

  if (*(this + 24) <= v5)
  {
    *(this + 24) = v5 + 1;
  }

  *(*(this + 17) + 2 * v5) = v2;
  v4[26] = v5;
  if (v4[25] == -1)
  {
    v4[25] = v5;
  }

  ++v4[24];
  *(this + 296) = 1;
  return v5;
}

void RealDFile::doWriteToCache(RealDFile *this, unint64_t a2, const char *a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a4;
    v6 = a2;
    if (*(this + 332) == 1)
    {
      (*(*this + 64))(this, *(this + 385));
    }

    else
    {
      v8 = *(this + 82);
      if (v8)
      {
        v9 = *(this + 40);
        if (v9 <= a2)
        {
          v10 = a2;
        }

        else
        {
          v10 = *(this + 40);
        }

        v11 = v9 + v8;
        if (v11 >= a2 + a4)
        {
          v11 = a2 + a4;
        }

        if (v11 > v10)
        {
          *(this + 82) = 0;
        }
      }
    }

    v12 = *(this + 108);
    if (v12 && ((v13 = *(this + 53), v13 <= v6) && v13 + v12 >= v6 || (RealDFile::flushDFile(this), LODWORD(v12) = *(this + 108), v12)))
    {
      v14 = *(this + 53);
    }

    else
    {
      LODWORD(v12) = 0;
      *(this + 53) = v6;
      v14 = v6;
    }

    v15 = v6 - v14;
    v16 = *(this + 104);
    if (v16 - v15 >= v4)
    {
      v17 = v4;
    }

    else
    {
      v17 = v16 - v15;
    }

    v18 = v16 - v15;
    if (v18)
    {
      if (v17 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v17;
      }

      v20 = a3;
      v21 = v15;
      do
      {
        v22 = *v20++;
        *(*(this + 51) + v21++) = v22;
        --v19;
      }

      while (v19);
      LODWORD(v12) = *(this + 108);
    }

    v23 = v17 + v15;
    if (v12 < v23)
    {
      *(this + 108) = v23;
    }

    if (v18 < v4)
    {
      do
      {
        RealDFile::flushDFile(this);
        a3 += v17;
        v4 -= v17;
        v24 = *(this + 104);
        if (v4 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v4;
        }

        if (v25)
        {
          for (i = 0; i != v25; ++i)
          {
            *(*(this + 51) + i) = a3[i];
          }
        }

        v6 += v17;
        *(this + 53) = v6;
        *(this + 108) = v25;
        v17 = v25;
      }

      while (v24 < v4);
    }
  }
}

ssize_t RealDFile::doReadFromCache(RealDFile *this, unint64_t a2, char *a3, ssize_t a4, int a5)
{
  v6 = a4;
  v10 = *(this + 108);
  v11 = a2 + a4;
  if (v10)
  {
    v12 = *(this + 53);
    if (v12 <= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = *(this + 53);
    }

    v14 = v12 + v10;
    if (v14 >= v11)
    {
      v14 = a2 + a4;
    }

    if (v14 > v13)
    {
      RealDFile::flushDFile(this);
    }
  }

  if (*(this + 78) >= v6)
  {
    v15 = *(this + 40);
    if (v15 <= a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = *(this + 40);
    }

    v17 = v15 + *(this + 82);
    if (v17 >= v11)
    {
      v17 = v11;
    }

    if (v17 <= v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = (v17 - v16);
    }

    if (v11 > v16 + v18 && v15 > a2)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      memcpy(&a3[(v16 - a2)], (*(this + 38) + (v16 - v15)), v20);
    }

    v21 = v6 - v20;
    if (v6 != v20)
    {
      if (v15 <= a2)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      OsFile::seekFromBeg(*(this + 10), v22 + a2);
      v23 = *(this + 10);
      if (a5)
      {
        Bytes = OsFile::readBytes(v23, *(this + 38), *(this + 78));
        *(this + 82) = Bytes;
        if (Bytes >= v21)
        {
          v25 = v21;
        }

        else
        {
          v25 = Bytes;
        }

        DecryptBuffer(*(this + 38), Bytes, *(this + 46));
        *(this + 40) = v22 + a2;
        memcpy(&a3[v22], *(this + 38), v25);
      }

      else
      {
        LODWORD(v25) = OsFile::readBytes(v23, &a3[v22], v6 - v20);
        DecryptBuffer(&a3[v22], v25, *(this + 46));
      }

      return (v25 + v20);
    }
  }

  else
  {
    OsFile::seekFromBeg(*(this + 10), a2);
    v6 = OsFile::readBytes(*(this + 10), a3, v6);
    DecryptBuffer(a3, v6, *(this + 46));
  }

  return v6;
}

void RealDFile::RealDFile(RealDFile *this, const FileSpec *a2)
{
  DFile::DFile(this, a2);
  *v3 = &unk_287522E78;
  *(v3 + 104) = 0u;
  *(v3 + 152) = 0u;
  v4 = v3 + 152;
  *(v3 + 200) = 0u;
  v5 = v3 + 200;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  MrecTime::MrecTime((v3 + 220));
  MrecTime::MrecTime((this + 244));
  DgnString::DgnString((this + 272));
  *(this + 38) = 0;
  *(this + 78) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 24) = 0;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 104) = 0;
  *(this + 54) = 9;
  *(this + 36) = 0x100000001;
  *(this + 296) = 0;
  *(this + 10) = 0;
  MrecTime::MrecTime((this + 220));
  MrecTime::MrecTime((this + 244));
  v6 = *(this + 40);
  if (v6 == *(this + 41))
  {
    DgnArray<RealDFileDirEntry>::reallocElts(v4, 1, 1);
    v6 = *(this + 40);
  }

  v7 = *(this + 19) + (v6 << 7);
  *(v7 + 110) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  *(v7 + 126) = -8454;
  ++*(this + 40);
  v8 = *(this + 52);
  if (v8 == *(this + 53))
  {
    DgnPrimArray<char>::reallocElts(v5, 1, 1);
    v8 = *(this + 52);
  }

  *(*(this + 25) + v8) = 0;
  *(this + 52) = v8 + 1;
  *(this + 40) = 0;
  *(this + 82) = 0;
  *(this + 332) = 0;
  *(this + 23) = xmmword_26288F490;
  *(this + 192) = 257;
  *(this + 53) = 0;
  *(this + 108) = 0;
  *(this + 297) = 0;
}

void sub_2627F7034(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 + 408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 392);
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll(v1 + 352);
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll(v1 + 336);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 + 304);
  DgnString::~DgnString(v1 + 272);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 168);
  DgnIArray<Utterance *>::~DgnIArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DFile::~DFile(v1);
  _Unwind_Resume(a1);
}

uint64_t *RealDFile::createReadOnlyClone(RealDFile *this)
{
  v2 = MemChunkAlloc(0x1B8uLL, 0);
  RealDFile::RealDFile(v2, (this + 16));
  DFile::copyDFileState(v3, this);
  if (*(gParDiagnosticDFileSimulateOpenFailure + 41) == 1)
  {
    if (*(this + 6))
    {
      v4 = *(this + 2);
    }

    else
    {
      v4 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1792, "dfutil/realdf", 17, "%.500s", v4);
  }

  OsFile::openOsFile(this + 2, 0);
  v2[10] = v5;
  if (!*(this + 10))
  {
    if (*(this + 6))
    {
      v6 = *(this + 2);
    }

    else
    {
      v6 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1794, "dfutil/realdf", 17, "%.500s", v6);
  }

  *(v2 + 332) = 1;
  *(v2 + 44) = *(this + 44);
  *(v2 + 90) = *(this + 90);
  *(v2 + 24) = *(this + 24);
  DgnPrimArray<int>::copyArraySlice(v2 + 13, this + 13, 0, *(this + 28));
  DgnPrimArray<int>::copyArraySlice(v2 + 15, this + 15, 0, *(this + 32));
  DgnPrimArray<unsigned short>::copyArraySlice(v2 + 17, this + 17, 0, *(this + 36));
  DgnArray<RealDFileDirEntry>::copyArraySlice(v2 + 19, this + 19, 0, *(this + 40));
  DgnPrimArray<int>::copyArraySlice(v2 + 21, this + 21, 0, *(this + 44));
  DgnPrimArray<int>::copyArraySlice(v2 + 23, this + 23, 0, *(this + 48));
  DgnPrimArray<BOOL>::copyArraySlice(v2 + 25, this + 25, 0, *(this + 52));
  *(v2 + 54) = *(this + 54);
  MrecTime::operator=(v2 + 220, this + 220);
  MrecTime::operator=(v2 + 244, this + 244);
  DgnString::operator=((v2 + 34), (this + 272));
  v2[36] = *(this + 36);
  *(v2 + 148) = *(this + 148);
  return v2;
}

void RealDFile::~RealDFile(OsFile **this)
{
  *this = &unk_287522E78;
  if (this[10])
  {
    if ((this[6] & 1) == 0)
    {
      RealDFile::flushDFile(this);
      RealDFile::addRemainingDirEntryBlocks(this);
      RealDFile::addRemainingBlockUsageBlocks(this);
      RealDFile::shrinkInternalUsage(this);
    }

    if (*(this + 296) == 1)
    {
      RealDFile::writeHeader(this);
    }

    *(this + 82) = 0;
    if (this[6])
    {
      goto LABEL_44;
    }

    v26 = 0;
    v2 = realloc_array(0, &v26, 0x1000uLL, 0, 0, 1);
    v3 = v26;
    v23 = v26;
    v24 = 4096;
    v25 = v2;
    bzero(v26, 0x1000uLL);
    v4 = *(this + 40);
    if (v4 < 2)
    {
      v6 = 0;
      v5 = 0;
    }

    else
    {
      v5 = 0;
      v6 = 0;
      for (i = 1; i < v4; ++i)
      {
        v8 = (this[19] + 128 * i);
        if (v8[24])
        {
          v9 = v8[25] == -1;
        }

        else
        {
          v9 = 1;
        }

        if (!v9)
        {
          v10 = v8[26];
          v11 = v8[27];
          OsFile::seekFromBeg(this[10], v11 + ((*(this + 54) + v10) << 12));
          OsFile::writeBytes(this[10], v3, (4096 - v8[27]));
          if (v10 >= v5)
          {
            v6 = v11;
          }

          if (v10 > v5)
          {
            v5 = v10;
          }

          v4 = *(this + 40);
        }
      }
    }

    v12 = *(this + 32);
    if (v12)
    {
      v13 = 0;
      while (*(this[15] + v13) != -1)
      {
        if (v12 == ++v13)
        {
          LODWORD(v13) = *(this + 32);
          break;
        }
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v14 = *(this + 28);
    if (v14)
    {
      v15 = 0;
      while (*(this[13] + v15) != -1)
      {
        if (v14 == ++v15)
        {
          LODWORD(v15) = *(this + 28);
          break;
        }
      }

      if (!v13)
      {
        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v15) = 0;
      if (!v13)
      {
LABEL_35:
        if (v15 && *(this[13] + (v15 - 1)) > v5)
        {
          v6 = 4096;
        }

        v17 = *(this + 54);
        v18 = *(this + 24);
        if (v18)
        {
          v19 = ((v18 - 1) << 12) + v6;
        }

        else
        {
          v19 = 0;
        }

        OsFile::seekToEnd(this[10]);
        v20 = OsFile::tell(this[10]);
        v21 = v20;
        v22 = v19 + (v17 << 12);
        if (v20 != v22)
        {
          OsFile::seekFromBeg(this[10], v22);
          OsFile::writeBytes(this[10], v3, (v21 - v22));
        }

        OsFile::seekFromBeg(this[10], 32);
        LODWORD(v26) = -307429618;
        OsFile::writeBytes(this[10], &v26, 4uLL);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
LABEL_44:
        DgnDelete<OsFile>(this[10]);
        this[10] = 0;
        goto LABEL_45;
      }
    }

    v16 = *(this[15] + (v13 - 1));
    if (v16 > v5)
    {
      v6 = 4096;
      v5 = v16;
    }

    goto LABEL_35;
  }

LABEL_45:
  *(this + 297) = 0;
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 51));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 49));
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll((this + 44));
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll((this + 42));
  DgnPrimFixArray<double>::~DgnPrimFixArray((this + 38));
  DgnString::~DgnString((this + 34));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 25));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 23));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 21));
  DgnIArray<Utterance *>::~DgnIArray((this + 19));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 17));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 15));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 13));
  DFile::~DFile(this);
}

{
  RealDFile::~RealDFile(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t RealDFile::addRemainingDirEntryBlocks(uint64_t this)
{
  v1 = this;
  if (*(this + 176))
  {
    v2 = 0;
    this = 0;
    do
    {
      v3 = *(v1 + 144);
      v4 = v3 - this;
      if (v3 > this)
      {
        this = this;
        while (*(*(v1 + 136) + 2 * this))
        {
          ++this;
          if (!--v4)
          {
            goto LABEL_9;
          }
        }
      }

      if (this == v3)
      {
LABEL_9:
        this = RealDFile::addBlockSpace(v1);
      }

      *(*(v1 + 104) + 4 * *(*(v1 + 168) + 4 * v2)) = this;
      *(*(v1 + 136) + 2 * this) = -2;
      if (*(v1 + 96) < (this + 1))
      {
        *(v1 + 96) = this + 1;
      }

      ++v2;
    }

    while (v2 < *(v1 + 176));
  }

  *(v1 + 176) = 0;
  return this;
}

uint64_t RealDFile::addRemainingBlockUsageBlocks(uint64_t this)
{
  v1 = this;
  if (*(this + 192))
  {
    v2 = 0;
    this = 0;
    do
    {
      v3 = *(v1 + 144);
      v4 = v3 - this;
      if (v3 > this)
      {
        this = this;
        while (*(*(v1 + 136) + 2 * this))
        {
          ++this;
          if (!--v4)
          {
            goto LABEL_9;
          }
        }
      }

      if (this == v3)
      {
LABEL_9:
        this = RealDFile::addBlockSpace(v1);
      }

      *(*(v1 + 120) + 4 * *(*(v1 + 184) + 4 * v2)) = this;
      *(*(v1 + 136) + 2 * this) = -1;
      if (*(v1 + 96) < (this + 1))
      {
        *(v1 + 96) = this + 1;
      }

      ++v2;
    }

    while (v2 < *(v1 + 192));
  }

  *(v1 + 192) = 0;
  return this;
}

void RealDFile::shrinkInternalUsage(RealDFile *this)
{
  v2 = 1;
  do
  {
    v3 = v2;
    v4 = *(this + 36);
    if (v4)
    {
      v5 = 0;
      v6 = *(this + 17);
      v7 = (v6 + 2 * v4 - 2);
      while (v4 != v5)
      {
        v8 = *v7--;
        ++v5;
        if (v8)
        {
          v9 = (v4 - v5 + 2046) / 0x7FEu;
          goto LABEL_8;
        }
      }

      v9 = 0;
LABEL_8:
      v10 = 2046 * v9;
      if (2046 * v9 < v4)
      {
        v11 = *(this + 32);
        if (v11 > v9)
        {
          v12 = *(this + 15) - 4;
          do
          {
            v13 = *(v12 + 4 * v11);
            if (v13 != -1)
            {
              *(v6 + 2 * v13) = 0;
              *(v12 + 4 * v11) = -1;
            }

            --v11;
          }

          while (v11 > v9);
        }

        v14 = *(this + 37);
        if (v10 > v14)
        {
          DgnPrimArray<short>::reallocElts(this + 136, v10 - v14, 0);
        }

        *(this + 36) = v10;
        *(this + 296) = 1;
      }
    }

    v15 = *(this + 32);
    if (v15)
    {
      LODWORD(v16) = 0;
      v17 = 0;
      v18 = *(this + 15);
      do
      {
        v19 = *(v18 + 4 * v17);
        if (v19 == -1)
        {
          break;
        }

        v20 = *(this + 36);
        v21 = v20 - v16;
        if (v20 <= v16)
        {
          break;
        }

        v22 = *(this + 17);
        v16 = v16;
        while (*(v22 + 2 * v16))
        {
          ++v16;
          if (!--v21)
          {
            goto LABEL_28;
          }
        }

        if (v19 > v16)
        {
          *(v22 + 2 * v16) = *(v22 + 2 * v19);
          *(v22 + 2 * v19) = 0;
          *(v18 + 4 * v17) = v16;
          *(this + 296) = 1;
          v15 = *(this + 32);
        }

        ++v17;
      }

      while (v17 < v15);
    }

LABEL_28:
    v23 = *(this + 28);
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      v26 = *(this + 13);
      do
      {
        v27 = *(v26 + 4 * v25);
        if (v27 == -1)
        {
          break;
        }

        v28 = *(this + 36);
        if (v24 < v28)
        {
          while (*(*(this + 17) + 2 * v24))
          {
            if (v28 == ++v24)
            {
              v24 = *(this + 36);
              goto LABEL_36;
            }
          }

          v24 = v24;
        }

LABEL_36:
        if (v24 >= *(this + 40))
        {
          break;
        }

        if (v24 < v27)
        {
          v29 = *(this + 17);
          *(v29 + 2 * v24) = *(v29 + 2 * v27);
          *(v29 + 2 * v27) = 0;
          *(v26 + 4 * v25) = v24;
          *(this + 296) = 1;
          v23 = *(this + 28);
        }

        ++v25;
      }

      while (v25 < v23);
    }

    v2 = 0;
  }

  while ((v3 & 1) != 0);
  v30 = *(this + 36);
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      if (*(*(this + 17) + 2 * v31))
      {
        v32 = v31;
      }

      ++v31;
    }

    while (v30 != v31);
    v33 = v32 + 1;
  }

  else
  {
    v33 = 1;
  }

  if (v33 < *(this + 24))
  {
    *(this + 24) = v33;
    OsFile::shrinkSize(*(this + 10), (*(this + 54) + v33) << 12);
    *(this + 296) = 1;
  }
}

void RealDFile::writeHeader(RealDFile *this)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v2 = *(this + 46);
  *(this + 46) = 0;
  OsFile::seekFromBeg(*(this + 10), 0);
  v31 = this;
  v32 = 0;
  v33 = 1;
  v35[0] = 0;
  v30 = realloc_array(0, v35, 0x600uLL, 0, 0, 1);
  v28 = v35[0];
  v29 = 1536;
  bzero(v35[0], 0x600uLL);
  snprintf(v35, 0x10uLL, "DFILE v%u", *(this + 44));
  v3 = strlen(v35);
  if (v3 <= 0xFuLL)
  {
    bzero(v35 + v3, 16 - v3);
  }

  RealDFile::doWriteToCache(this, 0, v35, 0x10u);
  LOWORD(v26) = *(this + 44);
  RealDFile::doWriteToCache(this, 0x10uLL, &v26, 2u);
  LOWORD(v26) = *(this + 45);
  RealDFile::doWriteToCache(this, 0x12uLL, &v26, 2u);
  LOWORD(v26) = v2;
  RealDFile::doWriteToCache(this, 0x14uLL, &v26, 2u);
  v32 = 22;
  LOWORD(v26) = -2;
  RealDFile::doWriteToCache(this, 0x16uLL, &v26, 2u);
  LODWORD(v26) = 4096;
  RealDFile::doWriteToCache(this, 0x18uLL, &v26, 4u);
  LODWORD(v26) = *(this + 24);
  RealDFile::doWriteToCache(this, 0x1CuLL, &v26, 4u);
  LODWORD(v26) = -758187298;
  RealDFile::doWriteToCache(this, 0x20uLL, &v26, 4u);
  v32 = 36;
  LODWORD(v26) = *(this + 72);
  RealDFile::doWriteToCache(this, 0x24uLL, &v26, 4u);
  MrecTime::setToCurrentLocalTime((this + 244));
  v26 = 0;
  v27 = 0;
  v34 = 0;
  v4 = realloc_array(0, &v34, 0x18uLL, 0, 0, 1);
  v26 = v34;
  LODWORD(v27) = 6;
  HIDWORD(v27) = v4 >> 2;
  MrecTime::packLittleEndMrecTime(this + 55, v34);
  if (v27)
  {
    v5 = (4 * v27);
    RealDFile::doWriteToCache(this, 0x28uLL, v26, 4 * v27);
    v6 = v5 + 40;
    v32 = v6;
  }

  else
  {
    v6 = 40;
  }

  MrecTime::packLittleEndMrecTime(this + 61, v26);
  if (v27)
  {
    v7 = 4 * v27;
    RealDFile::doWriteToCache(this, v6, v26, 4 * v27);
    v6 += v7;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  if (v6 != 88)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v6, 88);
  }

  RealDFile::doWriteToCache(this, v6, v28, 0xA8u);
  v32 = v6 + 168;
  if (v6 != 88)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v6 + 168, 256);
  }

  DgnString::DgnString(&v26);
  DgnString::preAllocate(&v26, 256);
  GetFullMrecDescription(&v26);
  v8 = v27;
  Buffer = DgnString::getBuffer(&v26, 0x100u);
  v10 = Buffer;
  LODWORD(v11) = v8 - 1;
  if (!v8)
  {
    LODWORD(v11) = 0;
  }

  if (v11 >= 0xFF)
  {
    v11 = 255;
  }

  else
  {
    v11 = v11;
  }

  bzero((Buffer + v11), (256 - v11));
  EncryptBuffer(v10, 0x100u, v2);
  RealDFile::doWriteToCache(this, v6 + 168, v10, 0x100u);
  DgnString::~DgnString(&v26);
  if (v6 != 88)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v6 + 424, 512);
  }

  RealDFile::doWriteToCache(this, v6 + 424, v28, 0x600u);
  v12 = v6 + 1960;
  v32 = v12;
  if (v12 != 2048)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v12, 2048);
  }

  v34 = 0;
  v13 = realloc_array(0, &v34, 0x83F8uLL, 0, 0, 1);
  v26 = v34;
  LODWORD(v27) = 8446;
  HIDWORD(v27) = v13 >> 2;
  v14 = xmmword_26286BF80;
  v15 = xmmword_26286B680;
  v16 = v34 + 2;
  v17 = 8448;
  v18 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x20FEuLL), v15)), *v14.i8).u8[0])
    {
      *(v16 - 2) = -1;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x20FEuLL), *&v15)), *&v14).i8[2])
    {
      *(v16 - 1) = -1;
    }

    if (vuzp1_s16(*&v14, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x20FEuLL), *&v14))).i32[1])
    {
      *v16 = -1;
      v16[1] = -1;
    }

    v14 = vaddq_s64(v14, v18);
    v15 = vaddq_s64(v15, v18);
    v16 += 4;
    v17 -= 4;
  }

  while (v17);
  v19 = *(this + 28);
  if (!v19 || (v20 = 4 * v19, RealDFile::doWriteToCache(this, v12, *(this + 13), 4 * v19), v12 += v20, v19 = *(this + 28), v19 != 256))
  {
    v21 = 1024 - 4 * v19;
    RealDFile::doWriteToCache(this, v12, v26, v21);
    v12 += v21;
    v32 = v12;
  }

  if (v12 != 3072)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v12, 3072);
  }

  LODWORD(v34) = -307429602;
  RealDFile::doWriteToCache(this, v12, &v34, 4u);
  v22 = v12 + 4;
  v23 = *(this + 32);
  if (!v23 || (v24 = 4 * v23, RealDFile::doWriteToCache(this, v22, *(this + 15), 4 * v23), v22 += v24, v23 = *(this + 32), v23 != 8446))
  {
    v25 = 33784 - 4 * v23;
    RealDFile::doWriteToCache(this, v22, v26, v25);
    v22 += v25;
  }

  LODWORD(v34) = -307429602;
  RealDFile::doWriteToCache(this, v22, &v34, 4u);
  v32 = v22 + 4;
  if (v22 != 36860)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v22 + 4, 36864);
  }

  RealDFile::writeDirEntries(this, &v31);
  RealDFile::writeBlockUsage(this, &v31);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v28);
  RealDFile::flushDFile(this);
  *(this + 46) = v2;
  *(this + 296) = 0;
}

void sub_2627F80A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void RealDFile::printSize(RealDFile *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2048);
  if (v157)
  {
    v13 = v156;
  }

  else
  {
    v13 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288F516, a3, &unk_26288F516, v13);
  DgnString::~DgnString(&v156);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288F516);
  v155 = 0;
  v156 = 0;
  v15 = (a3 + 1);
  v154 = 0;
  DFile::printSize(this, 0xFFFFFFFFLL, v15, &v156, &v155, &v154);
  *a4 += v156;
  *a5 += v155;
  *a6 += v154;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v16 = 4;
  }

  else
  {
    v16 = 8;
  }

  v17 = *(this + 10);
  if (v17)
  {
    v18 = OsFile::sizeObject(v17, 0) + v16;
    v19 = *(this + 10);
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v16 = 4;
    }

    else
    {
      v16 = 8;
    }

    if (v19 && (v16 += OsFile::sizeObject(v19, 1), (v20 = *(this + 10)) != 0))
    {
      v21 = OsFile::sizeObject(v20, 3);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    v18 = v16;
  }

  v153 = a3;
  v22 = (34 - a3);
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2050);
  if (v157)
  {
    v24 = v156;
  }

  else
  {
    v24 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v15, &unk_26288F516, v22, v22, v24, v18, v16, v21);
  DgnString::~DgnString(&v156);
  *a4 += v18;
  *a5 += v16;
  *a6 += v21;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v26 = v156;
  }

  else
  {
    v26 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v15, &unk_26288F516, v22, v22, v26, 2, 2, 0);
  DgnString::~DgnString(&v156);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v28 = v156;
  }

  else
  {
    v28 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v15, &unk_26288F516, v22, v22, v28, 2, 2, 0);
  DgnString::~DgnString(&v156);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v30 = v156;
  }

  else
  {
    v30 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v15, &unk_26288F516, v22, v22, v30, 2, 2, 0);
  DgnString::~DgnString(&v156);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v32 = v156;
  }

  else
  {
    v32 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v15, &unk_26288F516, v22, v22, v32, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 12;
  }

  else
  {
    v33 = 16;
  }

  v34 = *(this + 28);
  v35 = *(this + 29);
  if (v35 >= v34)
  {
    v36 = 0;
    if (v34 > 0)
    {
      v33 += 4 * (v34 - 1) + 4;
    }

    v37 = v33 + 4 * (v35 - v34);
  }

  else
  {
    v36 = 4 * v34;
    v37 = v33;
  }

  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v39 = v156;
  }

  else
  {
    v39 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v15, &unk_26288F516, v22, v22, v39, v37, v33, v36);
  DgnString::~DgnString(&v156);
  *a4 += v37;
  *a5 += v33;
  *a6 += v36;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v40 = 12;
  }

  else
  {
    v40 = 16;
  }

  v41 = *(this + 32);
  v42 = *(this + 33);
  if (v42 >= v41)
  {
    v43 = 0;
    if (v41 > 0)
    {
      v40 += 4 * (v41 - 1) + 4;
    }

    v44 = v40 + 4 * (v42 - v41);
  }

  else
  {
    v43 = 4 * v41;
    v44 = v40;
  }

  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v46 = v156;
  }

  else
  {
    v46 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v15, &unk_26288F516, v22, v22, v46, v44, v40, v43);
  DgnString::~DgnString(&v156);
  *a4 += v44;
  *a5 += v40;
  *a6 += v43;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 12;
  }

  else
  {
    v47 = 16;
  }

  v48 = *(this + 36);
  v49 = *(this + 37);
  if (v49 >= v48)
  {
    v50 = 0;
    if (v48 > 0)
    {
      v47 += 2 * (v48 - 1) + 2;
    }

    v51 = v47 + 2 * (v49 - v48);
  }

  else
  {
    v50 = 2 * v48;
    v51 = v47;
  }

  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v53 = v156;
  }

  else
  {
    v53 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v15, &unk_26288F516, v22, v22, v53, v51, v47, v50);
  DgnString::~DgnString(&v156);
  *a4 += v51;
  *a5 += v47;
  *a6 += v50;
  v54 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v54 = 12;
  }

  v55 = *(this + 40);
  v56 = v55 << 7;
  if (v55 <= 0)
  {
    v56 = 0;
  }

  v57 = v56 | v54;
  v58 = (v56 | v54) + ((*(this + 41) - v55) << 7);
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v60 = v156;
  }

  else
  {
    v60 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v15, &unk_26288F516, v22, v22, v60, v58, v57, 0);
  DgnString::~DgnString(&v156);
  *a4 += v58;
  *a5 += v57;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v61 = 12;
  }

  else
  {
    v61 = 16;
  }

  v62 = *(this + 44);
  v63 = *(this + 45);
  if (v63 >= v62)
  {
    v64 = 0;
    if (v62 > 0)
    {
      v61 += 4 * (v62 - 1) + 4;
    }

    v65 = v61 + 4 * (v63 - v62);
  }

  else
  {
    v64 = 4 * v62;
    v65 = v61;
  }

  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v67 = v156;
  }

  else
  {
    v67 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v15, &unk_26288F516, v22, v22, v67, v65, v61, v64);
  DgnString::~DgnString(&v156);
  *a4 += v65;
  *a5 += v61;
  *a6 += v64;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v68 = 12;
  }

  else
  {
    v68 = 16;
  }

  v69 = *(this + 48);
  v70 = *(this + 49);
  if (v70 >= v69)
  {
    v71 = 0;
    if (v69 > 0)
    {
      v68 += 4 * (v69 - 1) + 4;
    }

    v72 = v68 + 4 * (v70 - v69);
  }

  else
  {
    v71 = 4 * v69;
    v72 = v68;
  }

  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v74 = v156;
  }

  else
  {
    v74 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v15, &unk_26288F516, v22, v22, v74, v72, v68, v71);
  DgnString::~DgnString(&v156);
  *a4 += v72;
  *a5 += v68;
  *a6 += v71;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v75 = 12;
  }

  else
  {
    v75 = 16;
  }

  v76 = *(this + 52);
  v77 = *(this + 53);
  v78 = v77 >= v76;
  v79 = v77 - v76;
  if (v78)
  {
    if (v76 > 0)
    {
      v80 = (v76 - 1) + v75 + 1;
    }

    else
    {
      v80 = v75;
    }

    v75 = v80 + v79;
    v76 = 0;
  }

  else
  {
    v80 = v75;
  }

  v81 = v76;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v83 = v156;
  }

  else
  {
    v83 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v15, &unk_26288F516, v22, v22, v83, v75, v80, v81);
  DgnString::~DgnString(&v156);
  *a4 += v75;
  *a5 += v80;
  *a6 += v81;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v85 = v156;
  }

  else
  {
    v85 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v15, &unk_26288F516, v22, v22, v85, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v87 = v156;
  }

  else
  {
    v87 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v15, &unk_26288F516, v22, v22, v87, 24, 24, 0);
  DgnString::~DgnString(&v156);
  *a4 += 24;
  *a5 += 24;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v89 = v156;
  }

  else
  {
    v89 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v15, &unk_26288F516, v22, v22, v89, 24, 24, 0);
  DgnString::~DgnString(&v156);
  *a4 += 24;
  *a5 += 24;
  v90 = sizeObject(this + 272, 0);
  v91 = sizeObject(this + 272, 1);
  v92 = sizeObject(this + 272, 3);
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v94 = v156;
  }

  else
  {
    v94 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v15, &unk_26288F516, v22, v22, v94, v90, v91, v92);
  DgnString::~DgnString(&v156);
  *a4 += v90;
  *a5 += v91;
  *a6 += v92;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v96 = v156;
  }

  else
  {
    v96 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v15, &unk_26288F516, v22, v22, v96, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v98 = v156;
  }

  else
  {
    v98 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v15, &unk_26288F516, v22, v22, v98, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v100 = v156;
  }

  else
  {
    v100 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v15, &unk_26288F516, v22, v22, v100, 1, 1, 0);
  DgnString::~DgnString(&v156);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v102 = v156;
  }

  else
  {
    v102 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v15, &unk_26288F516, v22, v22, v102, 1, 1, 0);
  DgnString::~DgnString(&v156);
  ++*a4;
  ++*a5;
  v103 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v103 = 8;
  }

  v104 = *(this + 78);
  if (v104 > 0)
  {
    v105 = (v104 - 1) + v103 + 1;
  }

  else
  {
    v105 = v103;
  }

  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v107 = v156;
  }

  else
  {
    v107 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v106, v15, &unk_26288F516, v22, v22, v107, v105, v105, 0);
  DgnString::~DgnString(&v156);
  *a4 += v105;
  *a5 += v105;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v109 = v156;
  }

  else
  {
    v109 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v108, v15, &unk_26288F516, v22, v22, v109, 8, 8, 0);
  DgnString::~DgnString(&v156);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v111 = v156;
  }

  else
  {
    v111 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v15, &unk_26288F516, v22, v22, v111, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v113 = v156;
  }

  else
  {
    v113 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v15, &unk_26288F516, v22, v22, v113, 1, 1, 0);
  DgnString::~DgnString(&v156);
  ++*a4;
  ++*a5;
  fixed = sizeObject<DgnPrimFixArray<char> *>(this + 336, 0);
  v115 = sizeObject<DgnPrimFixArray<char> *>(this + 336, 1);
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v117 = v156;
  }

  else
  {
    v117 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v15, &unk_26288F516, v22, v22, v117, fixed, v115, 0);
  DgnString::~DgnString(&v156);
  *a4 += fixed;
  *a5 += v115;
  v118 = sizeObject<DgnPrimFixArray<char> *>(this + 352, 0);
  v119 = sizeObject<DgnPrimFixArray<char> *>(this + 352, 1);
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v121 = v156;
  }

  else
  {
    v121 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v120, v15, &unk_26288F516, v22, v22, v121, v118, v119, 0);
  DgnString::~DgnString(&v156);
  *a4 += v118;
  *a5 += v119;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v123 = v156;
  }

  else
  {
    v123 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v122, v15, &unk_26288F516, v22, v22, v123, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v125 = v156;
  }

  else
  {
    v125 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v124, v15, &unk_26288F516, v22, v22, v125, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v127 = v156;
  }

  else
  {
    v127 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v126, v15, &unk_26288F516, v22, v22, v127, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v129 = v156;
  }

  else
  {
    v129 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v128, v15, &unk_26288F516, v22, v22, v129, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v131 = v156;
  }

  else
  {
    v131 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v15, &unk_26288F516, v22, v22, v131, 1, 1, 0);
  DgnString::~DgnString(&v156);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v133 = v156;
  }

  else
  {
    v133 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v132, v15, &unk_26288F516, v22, v22, v133, 1, 1, 0);
  DgnString::~DgnString(&v156);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v134 = 12;
  }

  else
  {
    v134 = 16;
  }

  v135 = *(this + 100);
  v136 = *(this + 101);
  v78 = v136 >= v135;
  v137 = v136 - v135;
  if (v78)
  {
    if (v135 > 0)
    {
      v138 = (v135 - 1) + v134 + 1;
    }

    else
    {
      v138 = v134;
    }

    v134 = v138 + v137;
    v135 = 0;
  }

  else
  {
    v138 = v134;
  }

  v139 = v135;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v141 = v156;
  }

  else
  {
    v141 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v140, v15, &unk_26288F516, v22, v22, v141, v134, v138, v139);
  DgnString::~DgnString(&v156);
  *a4 += v134;
  *a5 += v138;
  *a6 += v139;
  v142 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v142 = 8;
  }

  v143 = *(this + 104);
  if (v143 > 0)
  {
    v144 = (v143 - 1) + v142 + 1;
  }

  else
  {
    v144 = v142;
  }

  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v146 = v156;
  }

  else
  {
    v146 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v15, &unk_26288F516, v22, v22, v146, v144, v144, 0);
  DgnString::~DgnString(&v156);
  *a4 += v144;
  *a5 += v144;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v148 = v156;
  }

  else
  {
    v148 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v147, v15, &unk_26288F516, v22, v22, v148, 8, 8, 0);
  DgnString::~DgnString(&v156);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2052);
  if (v157)
  {
    v150 = v156;
  }

  else
  {
    v150 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v15, &unk_26288F516, v22, v22, v150, 4, 4, 0);
  DgnString::~DgnString(&v156);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v156, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2060);
  if (v157)
  {
    v152 = v156;
  }

  else
  {
    v152 = &unk_26288F516;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v151, v153, &unk_26288F516, (35 - v153), (35 - v153), v152, *a4, *a5, *a6);
  DgnString::~DgnString(&v156);
}

void sub_2627F94D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnPrimFixArray<char> *>(uint64_t a1, int a2)
{
  v2 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 4;
  }

  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 12;
  }

  else
  {
    result = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v5 = *(a1 + 8);
    if (v5 >= 1)
    {
      v6 = 12;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v6 = 8;
      }

      v7 = v5 + 1;
      v8 = *a1 + 8 * v5 - 8;
      do
      {
        v9 = v2;
        if (*v8)
        {
          v10 = *(*v8 + 8);
          if (v10 <= 0)
          {
            v11 = v6;
          }

          else
          {
            v11 = (v6 | 1) + (v10 - 1);
          }

          v9 = v11 + v2;
        }

        result += v9;
        --v7;
        v8 -= 8;
      }

      while (v7 > 1);
    }

    if (!a2)
    {
      v12 = (*(a1 + 12) - v5);
      v13 = 2;
      if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
      {
        v13 = 3;
      }

      result += v12 << v13;
    }
  }

  return result;
}

void *RealDFile::startUp(uint64_t a1, const FileSpec *a2, int a3, uint64_t a4, _DWORD *a5, DgnString *a6)
{
  v8 = a4;
  v10 = a2;
  if (!OsFile::fileExists((a1 + 16), a2))
  {
    if (*(a1 + 312))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_31;
    }

LABEL_30:
    *(a1 + 304) = MemChunkAlloc(0x9000uLL, 0);
    *(a1 + 312) = 36864;
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_31:
    v19 = 0;
    *(a1 + 48) = 1;
    v17 = (a1 + 48);
    *(a1 + 288) = a3;
    v18 = (a1 + 297);
    *(a1 + 297) = 0;
    goto LABEL_40;
  }

  v13 = (a1 + 16);
  if (v10 == 1)
  {
    OsFile::openOsFile(v13, 1);
    v15 = v14;
    if (!v14)
    {
      if (*(a1 + 24))
      {
        v16 = *(a1 + 16);
      }

      else
      {
        v16 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2078, "dfutil/realdf", 13, "%.500s", v16);
    }

    DgnDelete<OsFile>(v15);
    if (!*(a1 + 312))
    {
      *(a1 + 304) = MemChunkAlloc(0x9000uLL, 0);
      *(a1 + 312) = 36864;
    }

    if (!*(a1 + 416))
    {
      *(a1 + 408) = MemChunkAlloc(0x9000uLL, 0);
      *(a1 + 416) = 36864;
    }

    *(a1 + 48) = 0;
    v17 = (a1 + 48);
    *(a1 + 288) = a3;
    v18 = (a1 + 297);
    *(a1 + 297) = 0;
LABEL_39:
    v19 = 2;
    goto LABEL_40;
  }

  DFileVersion = RealDFile::getDFileVersion(v13, v12);
  if ((DFileVersion - 1) > 4)
  {
    if ((DFileVersion - 9) > 0xFFFFFFFC)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*(a1 + 24))
    {
      v21 = *(a1 + 16);
    }

    else
    {
      v21 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2094, "dfutil/realdf", 14, "%.500s %d %d", v21, DFileVersion, 6);
  }

  if (*(a1 + 24))
  {
    v22 = *(a1 + 16);
  }

  else
  {
    v22 = &unk_26288F516;
  }

  errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2097, "dfutil/realdf", 18, "%.500s", v22);
LABEL_27:
  if (!*(a1 + 312))
  {
    goto LABEL_30;
  }

  if (!v10)
  {
    goto LABEL_31;
  }

LABEL_8:
  if (!*(a1 + 416))
  {
    *(a1 + 408) = MemChunkAlloc(0x9000uLL, 0);
    *(a1 + 416) = 36864;
  }

  *(a1 + 48) = 0;
  v17 = (a1 + 48);
  *(a1 + 288) = a3;
  v18 = (a1 + 297);
  *(a1 + 297) = 0;
  switch(v10)
  {
    case 1:
      goto LABEL_39;
    case 3:
      v19 = 4;
      break;
    case 2:
      v19 = 3;
      break;
    default:
      v19 = 0;
      break;
  }

LABEL_40:
  if (*(gParDiagnosticDFileSimulateOpenFailure + 41) == 1)
  {
    if (*(a1 + 24))
    {
      v23 = *(a1 + 16);
    }

    else
    {
      v23 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2148, "dfutil/realdf", 17, "%.500s", v23);
  }

  OsFile::openOsFile((a1 + 16), v19);
  *(a1 + 80) = v24;
  if (!v24)
  {
    if (*(a1 + 24))
    {
      v25 = *(a1 + 16);
    }

    else
    {
      v25 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2150, "dfutil/realdf", 17, "%.500s", v25);
    v24 = *(a1 + 80);
  }

  FileSize = OsFile::getFileSize(v24);
  if (FileSize)
  {
    v27 = FileSize;
    RealDFile::readHeader(a1, v8, a5, a6);
    v28 = *(a1 + 96);
    if (v28)
    {
      v29 = *(*(a1 + 136) + 2 * (v28 - 1));
      if ((v29 - 1) <= 0xFFFC && (v27 & 0xFFF) != 0)
      {
        v30 = *(*(a1 + 152) + (v29 << 7) + 108);
        if (((v27 - v30) & 0xFFF) != 0)
        {
          if (*(a1 + 24))
          {
            v31 = *(a1 + 16);
          }

          else
          {
            v31 = &unk_26288F516;
          }

          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2207, "dfutil/realdf", 12, "%llu %.500s %u %llu", v27 - (*(a1 + 216) << 12), v31, 4096, v30);
        }
      }
    }
  }

  else
  {
    if (*v17 == 1)
    {
      if (*(a1 + 24))
      {
        v32 = *(a1 + 16);
      }

      else
      {
        v32 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2158, "dfutil/realdf", 11, "%.500s", v32);
    }

    *(a1 + 88) = 8;
    *(a1 + 92) = 2;
    MrecTime::setToCurrentLocalTime((a1 + 220));
    RealDFile::writeHeader(a1);
  }

  *(a1 + 328) = 0;
  v33 = *(a1 + 304);
  if (v33)
  {
    MemChunkFree(v33, 0);
    *(a1 + 304) = 0;
  }

  *(a1 + 312) = 0;
  *(a1 + 332) = 1;
  *(a1 + 432) = 0;
  result = *(a1 + 408);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(a1 + 408) = 0;
  }

  *(a1 + 416) = 0;
  if ((*(a1 + 48) & 1) == 0)
  {
    result = MemChunkAlloc(0x7000uLL, 0);
    *(a1 + 408) = result;
    *(a1 + 416) = 28672;
  }

  *v18 = 1;
  return result;
}

uint64_t RealDFile::getDFileVersion(const char **this, const FileSpec *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  OsFile::openOsFile(this, 0);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  if (OsFile::readBytes(v2, v14, 0x82u) != 130)
  {
    OsFile::~OsFile(v3);
    MemChunkFree(v10, 0);
    return 0xFFFFFFFFLL;
  }

  OsFile::seekFromBeg(v3, 0);
  *v12 = 0;
  v13 = 0;
  OsFile::readBytes(v3, v12, 0x10u);
  HIBYTE(v13) = 0;
  OsFile::readBytes(v3, v11, 2u);
  v4 = (v11[1] << 8);
  v5 = v11[0];
  OsFile::~OsFile(v3);
  MemChunkFree(v6, 0);
  if (v4 >= 0 && *&v12[3] == 1981826380 && *v12 == 1279870532)
  {
    return v4 | v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t RealDFile::readHeader(uint64_t a1, int a2, _DWORD *a3, DgnString *a4)
{
  v129 = *MEMORY[0x277D85DE8];
  v123 = a1;
  v125 = 0;
  RealDFile::doReadFromCache(a1, 0, v126, 16, 1);
  v128 = 0;
  LOWORD(v121) = 0;
  RealDFile::doReadFromCache(a1, 0x10uLL, &v121, 2, 1);
  v124 = 18;
  v8 = v121;
  *(a1 + 88) = v121;
  v9 = v8;
  if ((v8 - 6) >= 3)
  {
    if (*(a1 + 24))
    {
      v10 = *(a1 + 16);
    }

    else
    {
      v10 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2999, "dfutil/realdf", 22, "%.500s %u", v10, v8);
    v9 = *(a1 + 88);
  }

  switch(v9)
  {
    case 8:
      v11 = *v126;
      v12 = 0x387620454C494644;
LABEL_12:
      if (!(v11 ^ v12 | v127))
      {
        goto LABEL_17;
      }

      break;
    case 7:
      v11 = *v126;
      v12 = 0x377620454C494644;
      goto LABEL_12;
    case 6:
      v11 = *v126;
      v12 = 0x367620454C494644;
      goto LABEL_12;
  }

  if (*(a1 + 24))
  {
    v13 = *(a1 + 16);
  }

  else
  {
    v13 = &unk_26288F516;
  }

  errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3009, "dfutil/realdf", 23, "%.500s %u %.500s", v13, v9, v126);
LABEL_17:
  LOWORD(v121) = 0;
  RealDFile::doReadFromCache(a1, 0x12uLL, &v121, 2, 1);
  v14 = v121;
  *(a1 + 90) = v121;
  v15 = *(a1 + 88);
  if (v15 == 6 && v14 || (v15 == 8 || v15 == 7) && v14)
  {
    if (*(a1 + 24))
    {
      v16 = *(a1 + 16);
    }

    else
    {
      v16 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3016, "dfutil/realdf", 21, "%.500s %u %u", v16, *(a1 + 88), v14);
  }

  LOWORD(v121) = 0;
  RealDFile::doReadFromCache(a1, 0x14uLL, &v121, 2, 1);
  v17 = v121;
  LOWORD(v121) = 0;
  RealDFile::doReadFromCache(a1, 0x16uLL, &v121, 2, 1);
  v124 = 24;
  v18 = v121;
  if (v121 != 65534)
  {
    if (v121 == 65279)
    {
      if (*(a1 + 24))
      {
        v19 = *(a1 + 16);
      }

      else
      {
        v19 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3022, "dfutil/realdf", 49, "%.500s", v19);
    }

    if (*(a1 + 24))
    {
      v20 = *(a1 + 16);
    }

    else
    {
      v20 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3024, "dfutil/realdf", 6, "0x%04x %.500s", v18, v20);
  }

  LODWORD(v121) = 0;
  RealDFile::doReadFromCache(a1, 0x18uLL, &v121, 4, 1);
  v21 = v121;
  LODWORD(v121) = 0;
  RealDFile::doReadFromCache(a1, 0x1CuLL, &v121, 4, 1);
  *(a1 + 96) = v121;
  *(a1 + 216) = 9;
  if (v21 != 4096)
  {
    if (*(a1 + 24))
    {
      v22 = *(a1 + 16);
    }

    else
    {
      v22 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3030, "dfutil/realdf", 24, "%.500s %u", v22, v21);
  }

  LODWORD(v121) = 0;
  RealDFile::doReadFromCache(a1, 0x20uLL, &v121, 4, 1);
  v124 = 36;
  v23 = v121;
  if (v121 != -307429618)
  {
    if (v121 == -758187298)
    {
      if (*(a1 + 24))
      {
        v24 = *(a1 + 16);
      }

      else
      {
        v24 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3039, "dfutil/realdf", 1, "%.500s", v24);
    }

    if (*(a1 + 24))
    {
      v25 = *(a1 + 16);
    }

    else
    {
      v25 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3044, "dfutil/realdf", 2, "%.500s 0x%x 0x%x", v25, -307429618, v23);
  }

  if (a3)
  {
    *a3 = 0;
  }

  LODWORD(v121) = 0;
  RealDFile::doReadFromCache(a1, 0x24uLL, &v121, 4, 1);
  MrecVersionNumberString = 0;
  v27 = 0;
  v28 = v121;
  *(a1 + 292) = v121;
  v29 = *(a1 + 288);
  if (v29 >= 2 && v28 >= 2)
  {
    if (v29 == v28)
    {
      if (a3)
      {
        *a3 = 1;
      }

      MrecVersionNumberString = 0;
      v27 = 0;
      switch(v28)
      {
        case 2:
        case 3:
        case 4:
          v27 = 0;
          MrecVersionNumberString = "1.19.000.13381";
          break;
        case 5:
        case 6:
          v27 = 0;
          MrecVersionNumberString = "1.18.000.12608";
          break;
        case 8:
        case 11:
          MrecVersionNumberString = GetMrecVersionNumberString();
          v27 = 1;
          break;
        case 9:
        case 10:
          v27 = 0;
          MrecVersionNumberString = "1.19.000.13553";
          break;
        case 13:
          v27 = 0;
          MrecVersionNumberString = "1.22.000.14058";
          break;
        case 14:
          v27 = 0;
          MrecVersionNumberString = "1.22.100.14536";
          break;
        case 15:
          v27 = 0;
          MrecVersionNumberString = "1.23.000.14829";
          break;
        case 16:
          v27 = 0;
          MrecVersionNumberString = "1.24.000.15247";
          break;
        case 17:
          v27 = 0;
          MrecVersionNumberString = "1.24.000.15347";
          break;
        default:
          break;
      }
    }

    else
    {
      if (a2)
      {
        if (*(a1 + 24))
        {
          v30 = *(a1 + 16);
        }

        else
        {
          v30 = &unk_26288F516;
        }

        NameForSemanticType = DFile::getNameForSemanticType(v28);
        v32 = *(a1 + 288);
        v33 = DFile::getNameForSemanticType(v32);
        errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3069, "dfutil/realdf", 52, "%.500s %u %.500s %u %.500s", v30, v28, NameForSemanticType, v32, v33);
      }

      v27 = 0;
      MrecVersionNumberString = 0;
      if (a3)
      {
        *a3 = 4;
      }
    }
  }

  v121 = 0;
  *v122 = 0;
  v119 = 0;
  v34 = realloc_array(0, &v119, 0x18uLL, 0, 0, 1);
  v121 = v119;
  v122[0] = 6;
  v122[1] = v34 >> 2;
  RealDFile::doReadFromCache(a1, 0x28uLL, v119, 24, 1);
  MrecTime::unpackLittleEndMrecTime((a1 + 220), v121);
  if (v122[0])
  {
    v35 = 4 * v122[0];
    RealDFile::doReadFromCache(a1, 0x40uLL, v121, v35, 1);
    v36 = v35 + 64;
    v124 = v36;
  }

  else
  {
    v36 = 64;
  }

  MrecTime::unpackLittleEndMrecTime((a1 + 244), v121);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v121);
  if (v36 != 88)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1689, "dfutil/realdf", 25, "%llu %llu", v36, 88);
  }

  v121 = 0;
  *v122 = 0;
  v119 = 0;
  v122[1] = realloc_array(0, &v119, 0x800uLL, 0, 0, 1);
  v121 = v119;
  v122[0] = 2048;
  RealDFile::doReadFromCache(a1, v36, v119, 168, 1);
  Buffer = DgnString::getBuffer((a1 + 272), 0x100u);
  RealDFile::doReadFromCache(a1, v36 + 168, Buffer, 256, 1);
  v38 = DgnString::getBuffer((a1 + 272), 0x100u);
  DecryptBuffer(v38, 0x100u, v17);
  RealDFile::doReadFromCache(a1, v36 + 424, v121, 1536, 1);
  v40 = v36 + 1960;
  v124 = v40;
  if (MrecVersionNumberString)
  {
    v41 = *(a1 + 88);
    if (v41 == 6)
    {
      v42 = "MREC Version ";
    }

    else
    {
      v42 = "MREC v";
    }

    if (*(a1 + 280))
    {
      v43 = *(a1 + 272);
    }

    else
    {
      v43 = &unk_26288F516;
    }

    if (!DgnString::isPrefixNoCase(v42, v43, v39))
    {
      if (*(a1 + 24))
      {
        v44 = *(a1 + 16);
      }

      else
      {
        v44 = &unk_26288F516;
      }

      if (*(a1 + 280))
      {
        v45 = *(a1 + 272);
      }

      else
      {
        v45 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3222, "dfutil/realdf", 53, "%.500s %u %.500s", v44, *(a1 + 292), v45);
    }

    if (*(a1 + 280))
    {
      v46 = *(a1 + 272);
    }

    else
    {
      v46 = &unk_26288F516;
    }

    v47 = 6;
    if (v41 == 6)
    {
      v47 = 13;
    }

    v48 = &v46[v47];
    v49 = v46[v47];
    if (v49)
    {
      v50 = 0;
      do
      {
        if ((v49 & 0x80) == 0 && (*(MEMORY[0x277D85DE0] + 4 * v49 + 60) & 0x4000) != 0)
        {
          break;
        }

        v49 = v48[++v50];
      }

      while (v48[v50]);
    }

    else
    {
      v50 = 0;
    }

    DgnString::DgnString(&v119, v48, v50);
    if (a4)
    {
      DgnString::operator=(a4, &v119);
    }

    if (v120)
    {
      v51 = v119;
    }

    else
    {
      v51 = &unk_26288F516;
    }

    if ((InternalCompareMrecVersions(v51, "1.19.110.00000") & 0x80000000) == 0)
    {
      v52 = v120 ? v119 : &unk_26288F516;
      if (InternalCompareMrecVersions(v52, "1.19.110.99999") <= 0 && (InternalCompareMrecVersions(MrecVersionNumberString, "1.19.000.13299") & 0x80000000) == 0 && InternalCompareMrecVersions(MrecVersionNumberString, "1.19.000.99999") <= 0)
      {
        if (a2)
        {
          if (*(a1 + 24))
          {
            v55 = *(a1 + 16);
          }

          else
          {
            v55 = &unk_26288F516;
          }

          v116 = *(a1 + 292);
          v117 = DFile::getNameForSemanticType(v116);
          if (v120)
          {
            v118 = v119;
          }

          else
          {
            v118 = &unk_26288F516;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3261, "dfutil/realdf", 61, "%.500s %u %.500s %.500s %.500s", v55, v116, v117, v118, MrecVersionNumberString);
        }

        if (a3)
        {
          *a3 = 2;
        }
      }
    }

    if (v120)
    {
      v53 = v119;
    }

    else
    {
      v53 = &unk_26288F516;
    }

    if ((InternalCompareMrecVersions(v53, MrecVersionNumberString) & 0x80000000) != 0)
    {
      if (a2)
      {
        if (*(a1 + 24))
        {
          v54 = *(a1 + 16);
        }

        else
        {
          v54 = &unk_26288F516;
        }

        v56 = *(a1 + 292);
        v57 = DFile::getNameForSemanticType(v56);
        if (v120)
        {
          v58 = v119;
        }

        else
        {
          v58 = &unk_26288F516;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3277, "dfutil/realdf", 54, "%.500s %u %.500s %.500s %.500s", v54, v56, v57, v58, MrecVersionNumberString);
      }

      if (a3)
      {
        *a3 = 2;
      }
    }

    v59 = GetMrecVersionNumberString();
    if (v27)
    {
      v60 = v120 ? v119 : &unk_26288F516;
      if (InternalCompareMrecVersions(v60, v59) >= 1)
      {
        if (a2)
        {
          if (*(a1 + 24))
          {
            v61 = *(a1 + 16);
          }

          else
          {
            v61 = &unk_26288F516;
          }

          v62 = *(a1 + 292);
          v63 = DFile::getNameForSemanticType(v62);
          if (v120)
          {
            v64 = v119;
          }

          else
          {
            v64 = &unk_26288F516;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3294, "dfutil/realdf", 55, "%.500s %u %.500s %.500s %.500s", v61, v62, v63, v64, v59);
        }

        if (a3)
        {
          *a3 = 3;
        }
      }
    }

    if (v120)
    {
      v65 = v119;
    }

    else
    {
      v65 = &unk_26288F516;
    }

    if (InternalCompareMrecForkVersions(v65, v59) >= 1)
    {
      if (a2)
      {
        if (*(a1 + 24))
        {
          v66 = *(a1 + 16);
        }

        else
        {
          v66 = &unk_26288F516;
        }

        v67 = *(a1 + 292);
        v68 = DFile::getNameForSemanticType(v67);
        if (v120)
        {
          v69 = v119;
        }

        else
        {
          v69 = &unk_26288F516;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3309, "dfutil/realdf", 55, "%.500s %u %.500s %.500s %.500s", v66, v67, v68, v69, v59);
      }

      if (a3)
      {
        *a3 = 3;
      }
    }

    DgnString::~DgnString(&v119);
    v40 = v124;
  }

  if (v40 != 2048)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1689, "dfutil/realdf", 25, "%llu %llu", v40, 2048);
  }

  v70 = *(a1 + 116);
  if (v70 <= 0xFF)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 104, 256 - v70, 0);
  }

  *(a1 + 112) = 256;
  v71 = v123;
  RealDFile::doReadFromCache(v123, v40, *(a1 + 104), 1024, 1);
  v124 = v40 + 1024;
  if (v40 != 2048)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1689, "dfutil/realdf", 25, "%llu %llu", v40 + 1024, 3072);
  }

  v72 = *(a1 + 132);
  if (v72 <= 0x20FD)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 120, 8446 - v72, 0);
  }

  *(a1 + 128) = 8446;
  LODWORD(v119) = 0;
  RealDFile::doReadFromCache(v71, v40 + 1024, &v119, 4, 1);
  if (v119 != -307429602)
  {
    if (*(a1 + 24))
    {
      v73 = *(a1 + 16);
    }

    else
    {
      v73 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3357, "dfutil/realdf", 3, "%.500s 0x%x 0x%x", v73, -307429602, v119);
  }

  v74 = v40 + 1028;
  v75 = *(a1 + 128);
  if (v75)
  {
    v76 = 4 * v75;
    RealDFile::doReadFromCache(v71, v40 + 1028, *(a1 + 120), (4 * v75), 1);
    v74 += v76;
  }

  LODWORD(v119) = 0;
  RealDFile::doReadFromCache(v71, v74, &v119, 4, 1);
  v124 = v74 + 4;
  if (v119 != -307429602)
  {
    if (*(a1 + 24))
    {
      v77 = *(a1 + 16);
    }

    else
    {
      v77 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3371, "dfutil/realdf", 3, "%.500s 0x%x 0x%x", v77, -307429602, v119);
  }

  if (v74 != 36860)
  {
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1689, "dfutil/realdf", 25, "%llu %llu", v74 + 4, 36864);
  }

  v78 = *(a1 + 112);
  if (v78)
  {
    v79 = 0;
    while (*(*(a1 + 104) + 4 * v79) != -1)
    {
      if (v78 == ++v79)
      {
        goto LABEL_186;
      }
    }

    LODWORD(v78) = v79;
LABEL_186:
    v80 = *(a1 + 116);
    if (v78 > v80)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 104, v78 - v80, 0);
    }
  }

  *(a1 + 112) = v78;
  DgnPrimArray<unsigned int>::compact(a1 + 104);
  v81 = *(a1 + 128);
  if (v81)
  {
    v82 = 0;
    while (*(*(a1 + 120) + 4 * v82) != -1)
    {
      if (v81 == ++v82)
      {
        goto LABEL_194;
      }
    }

    LODWORD(v81) = v82;
LABEL_194:
    v83 = *(a1 + 132);
    if (v81 > v83)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 120, v81 - v83, 0);
    }
  }

  *(a1 + 128) = v81;
  DgnPrimArray<unsigned int>::compact(a1 + 120);
  if (v78)
  {
    v84 = *(a1 + 104);
    v85 = *(a1 + 96);
    if (*v84 < v85)
    {
      v86 = 0;
      v87 = v84 + 1;
      do
      {
        if (v78 - 1 == v86)
        {
          LODWORD(v78) = 0;
          goto LABEL_206;
        }

        v88 = v87[v86++];
      }

      while (v88 < v85);
      LODWORD(v78) = v86 < v78;
      if (v81)
      {
        goto LABEL_207;
      }

      goto LABEL_210;
    }

    LODWORD(v86) = 0;
    LODWORD(v78) = 1;
    if (!v81)
    {
LABEL_210:
      v90 = -1;
      goto LABEL_212;
    }
  }

  else
  {
LABEL_206:
    LODWORD(v86) = -1;
    if (!v81)
    {
      goto LABEL_210;
    }
  }

LABEL_207:
  v89 = 0;
  while (*(*(a1 + 120) + 4 * v89) < *(a1 + 96))
  {
    if (v81 == ++v89)
    {
      goto LABEL_210;
    }
  }

  LODWORD(v78) = 1;
  v90 = v89;
LABEL_212:
  if (v86 != -1 && v78)
  {
    if (*(a1 + 24))
    {
      v91 = *(a1 + 16);
    }

    else
    {
      v91 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3428, "dfutil/realdf", 7, "%.500s %.500s %u %u %u", v91, "RealDFileDirEntry", v86, *(*(a1 + 104) + 4 * v86), *(a1 + 96));
  }

  v92 = v78 ^ 1;
  if (v90 == -1)
  {
    v92 = 1;
  }

  if ((v92 & 1) == 0)
  {
    if (*(a1 + 24))
    {
      v93 = *(a1 + 16);
    }

    else
    {
      v93 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3435, "dfutil/realdf", 7, "%.500s %.500s %u %u %u", v93, "BlockUsage", v90, *(*(a1 + 120) + 4 * v90), *(a1 + 96));
  }

  RealDFile::readDirEntries(a1, &v123);
  RealDFile::readBlockUsage(a1, &v123);
  *(a1 + 92) = v17;
  if (*(a1 + 160) >= 2u)
  {
    v94 = 1;
    v95 = 1;
    do
    {
      v96 = v95;
      v97 = *(a1 + 152) + (v95 << 7);
      if (*(v97 + 96))
      {
        v98 = *(v97 + 100);
        v99 = *(a1 + 96);
        if (v98 >= v99)
        {
          if (*(a1 + 24))
          {
            v100 = *(a1 + 16);
          }

          else
          {
            v100 = &unk_26288F516;
          }

          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3463, "dfutil/realdf", 27, "%.500s %d %.500s %u %u", v100, v94, v97, *(v97 + 100), v99);
        }

        v101 = *(*(a1 + 136) + 2 * v98);
        if (v101 != v96)
        {
          if (*(a1 + 24))
          {
            v102 = *(a1 + 16);
          }

          else
          {
            v102 = &unk_26288F516;
          }

          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3472, "dfutil/realdf", 31, "%.500s %d %.500s %u %u", v102, v94, (*(a1 + 152) + (v96 << 7)), *(*(a1 + 152) + (v96 << 7) + 100), v101);
        }

        v103 = *(a1 + 152) + (v96 << 7);
        v104 = *(a1 + 96);
        if (*(v103 + 104) > v104)
        {
          if (*(a1 + 24))
          {
            v105 = *(a1 + 16);
          }

          else
          {
            v105 = &unk_26288F516;
          }

          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3479, "dfutil/realdf", 28, "%.500s %d %.500s %u %u", v105, v94, v103, *(v103 + 104), v104);
        }

        if (v98 == -1)
        {
          v98 = -1;
          i = 1;
        }

        else
        {
          v106 = *(a1 + 144);
          for (i = 1; ; ++i)
          {
            v108 = v98 + 1;
            if (v106 > v108)
            {
              v109 = v106 - 1 - v98;
              while (*(*(a1 + 136) + 2 * v108) != v96)
              {
                ++v108;
                if (!--v109)
                {
                  goto LABEL_253;
                }
              }
            }

            if (v108 >= v106)
            {
              break;
            }

            v98 = v108;
          }
        }

LABEL_253:
        v110 = *(a1 + 152);
        v111 = v110 + (v96 << 7);
        if (i != *(v111 + 96))
        {
          if (*(a1 + 24))
          {
            v112 = *(a1 + 16);
          }

          else
          {
            v112 = &unk_26288F516;
          }

          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3497, "dfutil/realdf", 29, "%.500s %d %.500s %u %u", v112, v94, v111, *(v111 + 96), i);
          v110 = *(a1 + 152);
        }

        v113 = v110 + (v96 << 7);
        if (v98 != *(v113 + 104))
        {
          if (*(a1 + 24))
          {
            v114 = *(a1 + 16);
          }

          else
          {
            v114 = &unk_26288F516;
          }

          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3503, "dfutil/realdf", 30, "%.500s %d %.500s %u %u", v114, v94, (v110 + (v96 << 7)), *(v113 + 104), v98);
        }
      }

      v95 = v96 + 1;
      v94 = (v96 + 1);
    }

    while (*(a1 + 160) > v94);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v121);
}

void sub_2627FAF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t RealDFile::subFileExistsByExplicitExtension(RealDFile *this, char *a2)
{
  DgnString::DgnString(&v7);
  DFile::makeSubFileName(this + 56, a2, &v7);
  if (v8)
  {
    v4 = v7;
  }

  else
  {
    v4 = &unk_26288F516;
  }

  SubFile = RealDFile::findSubFile(this, v4, 0);
  DgnString::~DgnString(&v7);
  return SubFile;
}

uint64_t RealDFile::findSubFile(RealDFile *this, const char *a2, char *a3)
{
  if (*(this + 40) < 2u)
  {
    return 0;
  }

  v6 = 1;
  while (DgnString::compareNoCase((*(this + 19) + (v6 << 7)), a2, a3))
  {
    if (*(this + 40) <= ++v6)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = v6;
  }

  return 1;
}

uint64_t *RealDFile::openSubFileByExplicitExtension(uint64_t a1, char *a2, unsigned int a3)
{
  DgnString::DgnString(&v58);
  DFile::makeSubFileName(a1 + 56, a2, &v58);
  if (v59 <= 1)
  {
    if (*(a1 + 24))
    {
      v6 = *(a1 + 16);
    }

    else
    {
      v6 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2262, "dfutil/realdf", 15, "%.500s", v6);
  }

  if ((a3 > 6 || ((1 << a3) & 0x59) == 0) && *(a1 + 48) == 1)
  {
    if (*(a1 + 24))
    {
      v19 = *(a1 + 16);
    }

    else
    {
      v19 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2269, "dfutil/realdf", 11, "%.500s", v19);
  }

  v7 = v59;
  if ((a3 & 0xFFFFFFFB) == 1)
  {
    if (v59)
    {
      v8 = v58;
    }

    else
    {
      v8 = &unk_26288F516;
    }

    RealDFile::deleteSubFile(a1, v8);
    v7 = v59;
  }

  v57 = 0;
  if (v7)
  {
    v9 = v58;
  }

  else
  {
    v9 = &unk_26288F516;
  }

  if (RealDFile::findSubFile(a1, v9, &v57))
  {
    v10 = v57;
    v11 = *(a1 + 152);
    v12 = v11 + (v57 << 7);
    v13 = *(v12 + 100);
    v14 = *(v12 + 124);
    if (v14 >= 2)
    {
      if (v59)
      {
        v15 = v58;
      }

      else
      {
        v15 = &unk_26288F516;
      }

      if (*(a1 + 24))
      {
        v16 = *(a1 + 16);
      }

      else
      {
        v16 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2358, "dfutil/realdf", 44, "%u %.500s %.500s", v14, v15, v16);
      v10 = v57;
      v11 = *(a1 + 152);
    }

    v21 = *(v11 + (v10 << 7) + 125);
    if (v21 >= 2)
    {
      if (v59)
      {
        v22 = v58;
      }

      else
      {
        v22 = &unk_26288F516;
      }

      if (*(a1 + 24))
      {
        v23 = *(a1 + 16);
      }

      else
      {
        v23 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2366, "dfutil/realdf", 45, "%u %.500s %.500s", v21, v22, v23);
      LODWORD(v10) = v57;
      v11 = *(a1 + 152);
    }

    v24 = v11 + (v10 << 7);
    v25 = *(v24 + 124);
    v26 = *(v24 + 124) != 0;
    v27 = *(v24 + 125);
    if (v25)
    {
      if (v27 != 1)
      {
        if (v59)
        {
          v28 = v58;
        }

        else
        {
          v28 = &unk_26288F516;
        }

        v29 = 2374;
        if (*(a1 + 24))
        {
LABEL_57:
          v30 = *(a1 + 16);
LABEL_64:
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", v29, "dfutil/realdf", 45, "%u %.500s %.500s", v27, v28, v30);
          goto LABEL_65;
        }

LABEL_63:
        v30 = &unk_26288F516;
        goto LABEL_64;
      }
    }

    else if (v27)
    {
      if (v59)
      {
        v28 = v58;
      }

      else
      {
        v28 = &unk_26288F516;
      }

      v29 = 2384;
      if (*(a1 + 24))
      {
        goto LABEL_57;
      }

      goto LABEL_63;
    }

LABEL_65:
    v31 = *(*(a1 + 152) + (v57 << 7) + 112);
    goto LABEL_90;
  }

  if (a3 <= 6 && ((1 << a3) & 0x59) != 0)
  {
    if (v59)
    {
      v17 = v58;
    }

    else
    {
      v17 = &unk_26288F516;
    }

    if (*(a1 + 24))
    {
      v18 = *(a1 + 16);
    }

    else
    {
      v18 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2289, "dfutil/realdf", 16, "%.500s %.500s", v17, v18);
  }

  if (*(a1 + 88) < 8u)
  {
    if (v59 < 0x21)
    {
      goto LABEL_68;
    }
  }

  else if (v59 <= 0x60)
  {
    goto LABEL_68;
  }

  if (*(a1 + 24))
  {
    v20 = *(a1 + 16);
  }

  else
  {
    v20 = &unk_26288F516;
  }

  errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2296, "dfutil/realdf", 10, "%.500s %.500s", v58, v20);
LABEL_68:
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 24))
    {
      v32 = *(a1 + 16);
    }

    else
    {
      v32 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2300, "dfutil/realdf", 11, "%.500s", v32);
  }

  v33 = *(a1 + 160);
  v34 = 1;
  v57 = 1;
  if (v33 >= 2)
  {
    v35 = *(a1 + 152);
    if (*(v35 + 128))
    {
      v34 = 1;
      do
      {
        v57 = ++v34;
        v36 = v34;
      }

      while (v33 > v34 && *(v35 + (v34 << 7)));
      goto LABEL_81;
    }

    v34 = 1;
  }

  v36 = 1;
LABEL_81:
  if (v33 == v36)
  {
    RealDFile::addDirEntrySpace(a1);
    v34 = v57;
  }

  if (v59)
  {
    v37 = v58;
  }

  else
  {
    v37 = &unk_26288F516;
  }

  strcpy((*(a1 + 152) + (v34 << 7)), v37);
  v38 = v57;
  v39 = *(a1 + 152);
  v40 = strlen((v39 + (v57 << 7)));
  if (v40 <= 0x5F)
  {
    do
    {
      *(*(a1 + 152) + (v57 << 7) + v40++) = 0;
    }

    while (v40 != 96);
    v38 = v57;
    v39 = *(a1 + 152);
  }

  v41 = v39 + (v38 << 7);
  *(v41 + 104) = -1;
  *(v41 + 96) = 0xFFFFFFFF00000000;
  *(v41 + 116) = 0;
  *(v41 + 108) = 0;
  *(v41 + 124) = -554041344;
  *(a1 + 296) = 1;
  v13 = RealDFile::addBlock(a1, v57);
  v26 = 0;
  v31 = 0;
LABEL_90:
  v42 = v57;
  v43 = *(a1 + 200);
  if (a3 == 3)
  {
    if (*(v43 + v57) == 1)
    {
      if (v59)
      {
        v44 = v58;
      }

      else
      {
        v44 = &unk_26288F516;
      }

      if (*(a1 + 24))
      {
        v45 = *(a1 + 16);
      }

      else
      {
        v45 = &unk_26288F516;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2391, "dfutil/realdf", 48, "%.500s %.500s", v44, v45);
      v42 = v57;
      v43 = *(a1 + 200);
    }

    *(v43 + v42) = 1;
  }

  else
  {
    v46 = 0;
    v47 = 1;
    *(v43 + v57) = 1;
    if (a3 <= 3)
    {
      if (!a3 || a3 == 2)
      {
        if (v26)
        {
          if (v59)
          {
            v48 = v58;
          }

          else
          {
            v48 = &unk_26288F516;
          }

          if (*(a1 + 24))
          {
            v49 = *(a1 + 16);
          }

          else
          {
            v49 = &unk_26288F516;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2401, "dfutil/realdf", 43, "%u %.500s %.500s", a3, v48, v49);
        }

        v46 = 0;
      }

      goto LABEL_118;
    }

    if (a3 != 4)
    {
      if (a3 == 5)
      {
        goto LABEL_122;
      }

      goto LABEL_118;
    }
  }

  v46 = v26;
LABEL_118:
  if (a3 != 1)
  {
    if (a3 == 2)
    {
      v50 = 2;
    }

    else
    {
      v50 = 0;
    }

    goto LABEL_124;
  }

  v47 = v46;
LABEL_122:
  v50 = 1;
  v46 = v47;
LABEL_124:
  if (v59)
  {
    v51 = v58;
  }

  else
  {
    v51 = &unk_26288F516;
  }

  FileSpec::FileSpec(v56, v51);
  v52 = MemChunkAlloc(0x80uLL, 0);
  v53 = v52;
  if (v59)
  {
    v54 = v58;
  }

  else
  {
    v54 = &unk_26288F516;
  }

  RealDFileSubFileStream::RealDFileSubFileStream(v52, v50, v56, a1, v54, a3, v57, 0, v13, v46, v31);
  FileSpec::~FileSpec(v56);
  DgnString::~DgnString(&v58);
  return v53;
}

void sub_2627FB7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t RealDFile::deleteSubFile(RealDFile *this, const char *a2)
{
  if (!*a2)
  {
    if (*(this + 6))
    {
      v4 = *(this + 2);
    }

    else
    {
      v4 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4424, "dfutil/realdf", 15, "%.500s", v4);
  }

  if (*(this + 48) == 1)
  {
    if (*(this + 6))
    {
      v5 = *(this + 2);
    }

    else
    {
      v5 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4425, "dfutil/realdf", 11, "%.500s", v5);
  }

  v7 = 0;
  result = RealDFile::findSubFile(this, a2, &v7);
  if (result)
  {
    do
    {
      result = RealDFile::freeBlock(this, v7);
    }

    while (result != -1);
    *(*(this + 19) + (v7 << 7)) = 0;
    *(this + 296) = 1;
  }

  return result;
}

void RealDFile::addDirEntrySpace(RealDFile *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    v3 = 0;
    while (*(*(this + 17) + 2 * v3))
    {
      if (v2 == ++v3)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 == v2)
  {
LABEL_8:
    RealDFile::addBlockSpace(this);
  }

  v4 = *(this + 28);
  if (v4)
  {
    v5 = 0;
    while (*(*(this + 13) + 4 * v5) != -1)
    {
      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 <= 0xFF && v5 == v4)
  {
    if (v4 == *(this + 29))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 104, 1, 1);
      LODWORD(v4) = *(this + 28);
    }

    *(*(this + 13) + 4 * v4) = -1;
    LODWORD(v4) = *(this + 28) + 1;
    *(this + 28) = v4;
  }

  if (v5 == v4)
  {
    if (*(this + 6))
    {
      v6 = *(this + 2);
    }

    else
    {
      v6 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4334, "dfutil/realdf", 4, "%.500s", v6);
  }

  v7 = *(this + 40);
  v8 = *(this + 41);
  if (*(this + 44) < 8u)
  {
    v15 = v7 + 64;
    if (v15 > v8)
    {
      DgnArray<RealDFileDirEntry>::reallocElts(this + 152, v15 - v8, 0);
      v7 = *(this + 40);
    }

    if (v7 < v15)
    {
      v16 = v15 - v7;
      v17 = v7 << 7;
      do
      {
        v18 = *(this + 19) + v17;
        *(v18 + 110) = 0uLL;
        *(v18 + 80) = 0uLL;
        *(v18 + 96) = 0uLL;
        *(v18 + 48) = 0uLL;
        *(v18 + 64) = 0uLL;
        *(v18 + 16) = 0uLL;
        *(v18 + 32) = 0uLL;
        *v18 = 0uLL;
        *(v18 + 126) = -8454;
        v17 += 128;
        --v16;
      }

      while (v16);
    }

    *(this + 40) = v15;
    v19 = *(this + 52);
    v20 = 64;
    do
    {
      if (v19 == *(this + 53))
      {
        DgnPrimArray<char>::reallocElts(this + 200, 1, 1);
        v19 = *(this + 52);
      }

      *(*(this + 25) + v19++) = 0;
      *(this + 52) = v19;
      --v20;
    }

    while (v20);
  }

  else
  {
    v9 = v7 + 32;
    if (v9 > v8)
    {
      DgnArray<RealDFileDirEntry>::reallocElts(this + 152, v9 - v8, 0);
      v7 = *(this + 40);
    }

    if (v7 < v9)
    {
      v10 = v7 << 7;
      v11 = v9 - v7;
      do
      {
        v12 = *(this + 19) + v10;
        *(v12 + 110) = 0uLL;
        *(v12 + 80) = 0uLL;
        *(v12 + 96) = 0uLL;
        *(v12 + 48) = 0uLL;
        *(v12 + 64) = 0uLL;
        *(v12 + 16) = 0uLL;
        *(v12 + 32) = 0uLL;
        *v12 = 0uLL;
        *(v12 + 126) = -8454;
        v10 += 128;
        --v11;
      }

      while (v11);
    }

    *(this + 40) = v9;
    v13 = *(this + 52);
    v14 = 32;
    do
    {
      if (v13 == *(this + 53))
      {
        DgnPrimArray<char>::reallocElts(this + 200, 1, 1);
        v13 = *(this + 52);
      }

      *(*(this + 25) + v13++) = 0;
      *(this + 52) = v13;
      --v14;
    }

    while (v14);
  }

  v21 = *(this + 44);
  if (v21 == *(this + 45))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 168, 1, 1);
    v21 = *(this + 44);
  }

  *(*(this + 21) + 4 * v21) = v5;
  ++*(this + 44);
  *(*(this + 13) + 4 * v5) = -2;
}

void RealDFile::removeSubFileByExplicitExtension(RealDFile *this, char *a2)
{
  DgnString::DgnString(&v5);
  DFile::makeSubFileName(this + 56, a2, &v5);
  if (v6)
  {
    v4 = v5;
  }

  else
  {
    v4 = &unk_26288F516;
  }

  RealDFile::deleteSubFile(this, v4);
  DgnString::~DgnString(&v5);
}

void RealDFile::renameSubFileByExplicitExtension(RealDFile *this, char *a2, char *a3, char a4)
{
  if (!*a2)
  {
    if (*(this + 6))
    {
      v8 = *(this + 2);
    }

    else
    {
      v8 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2487, "dfutil/realdf", 15, "%.500s", v8);
  }

  if (*(this + 48) == 1)
  {
    if (*(this + 6))
    {
      v9 = *(this + 2);
    }

    else
    {
      v9 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2489, "dfutil/realdf", 11, "%.500s", v9);
  }

  if (!*a3)
  {
    if (*(this + 6))
    {
      v10 = *(this + 2);
    }

    else
    {
      v10 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2491, "dfutil/realdf", 15, "%.500s", v10);
  }

  DgnString::DgnString(&v27);
  DgnString::DgnString(&v25);
  DFile::makeSubFileName(this + 56, a2, &v27);
  DFile::makeSubFileName(this + 56, a3, &v25);
  v24 = 0;
  if (v28)
  {
    v11 = v27;
  }

  else
  {
    v11 = &unk_26288F516;
  }

  if ((RealDFile::findSubFile(this, v11, &v24) & 1) == 0)
  {
    if (v28)
    {
      v13 = v27;
    }

    else
    {
      v13 = &unk_26288F516;
    }

    if (*(this + 6))
    {
      v14 = *(this + 2);
    }

    else
    {
      v14 = &unk_26288F516;
    }

    v12.n128_f64[0] = errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2504, "dfutil/realdf", 16, "%.500s %.500s", v13, v14);
  }

  if (v26)
  {
    v15 = v25;
  }

  else
  {
    v15 = &unk_26288F516;
  }

  if ((*(*this + 24))(this, v15, v12))
  {
    if ((a4 & 1) == 0)
    {
      if (v26)
      {
        v17 = v25;
      }

      else
      {
        v17 = &unk_26288F516;
      }

      v16.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2509, "dfutil/realdf", 56, "%.500s", v17);
    }

    if (v26)
    {
      v18 = v25;
    }

    else
    {
      v18 = &unk_26288F516;
    }

    (*(*this + 40))(this, v18, v16);
  }

  v19 = v24;
  v20 = (*(this + 19) + (v24 << 7));
  if (v26)
  {
    v21 = v25;
  }

  else
  {
    v21 = &unk_26288F516;
  }

  if (*(this + 44) < 8u)
  {
    strncpy(v20, v21, 0x1FuLL);
    v22 = (*(this + 19) + (v19 << 7) + 31);
  }

  else
  {
    strncpy(v20, v21, 0x5FuLL);
    v22 = (*(this + 19) + (v19 << 7) + 95);
  }

  *v22 = 0;
  v23 = strlen((*(this + 19) + (v24 << 7)));
  if (v23 <= 0x5F)
  {
    do
    {
      *(*(this + 19) + (v24 << 7) + v23++) = 0;
    }

    while (v23 != 96);
  }

  *(this + 296) = 1;
  DgnString::~DgnString(&v25);
  DgnString::~DgnString(&v27);
}

void sub_2627FBF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

unint64_t RealDFile::getSubFileSizeByExplicitExtension(RealDFile *this, char *a2)
{
  if (!*a2)
  {
    if (*(this + 6))
    {
      v4 = *(this + 2);
    }

    else
    {
      v4 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2545, "dfutil/realdf", 15, "%.500s", v4);
  }

  DgnString::DgnString(&v12);
  DFile::makeSubFileName(this + 56, a2, &v12);
  v11 = 0;
  v5 = &unk_26288F516;
  if (v13)
  {
    v6 = v12;
  }

  else
  {
    v6 = &unk_26288F516;
  }

  if ((RealDFile::findSubFile(this, v6, &v11) & 1) == 0)
  {
    if (v13)
    {
      v7 = v12;
    }

    else
    {
      v7 = &unk_26288F516;
    }

    if (*(this + 6))
    {
      v5 = *(this + 2);
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2553, "dfutil/realdf", 16, "%.500s %.500s", v7, v5);
  }

  v8 = *(this + 19) + (v11 << 7);
  v9 = *(v8 + 108) + ((*(v8 + 96) - 1) << 12);
  DgnString::~DgnString(&v12);
  return v9;
}

void sub_2627FC0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

OsFile *RealDFile::deleteFileAndCleanUp(RealDFile *this, std::error_code *a2)
{
  result = *(this + 10);
  if (result)
  {
    OsFile::deleteFileAndCleanUp(result, a2);
    result = DgnDelete<OsFile>(*(this + 10));
    *(this + 10) = 0;
  }

  *(this + 148) = 0;
  *(this + 108) = 0;
  *(this + 82) = 0;
  return result;
}

void *RealDFile::clearBigReadCache(RealDFile *this, char a2)
{
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll(this + 336);
  DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll(this + 352);
  *(this + 46) = 0;
  result = *(this + 49);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 49) = 0;
  }

  *(this + 50) = 0;
  *(this + 385) = a2;
  return result;
}

void *DgnIOwnArray<DgnPrimFixArray<char> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnPrimFixArray<char>>(*(*a1 + v3));
      *(*a1 + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void RealDFile::verifyHaveOpenedAllSubFiles(RealDFile *this, const char *a2)
{
  v2 = *(this + 40);
  if (v2 >= 2)
  {
    v5 = 1;
    do
    {
      v6 = v5;
      v7 = (*(this + 19) + (v5 << 7));
      if (*v7 && (*(*(this + 25) + v6) & 1) == 0)
      {
        if (*(this + 6))
        {
          v8 = *(this + 2);
        }

        else
        {
          v8 = &unk_26288F516;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2617, "dfutil/realdf", 46, "%.500s %.500s %.500s", v7, v8, a2);
        v2 = *(this + 40);
      }

      v5 = v6 + 1;
    }

    while (v2 > (v6 + 1));
  }
}

void RealDFile::verifyHaveOpenedAllSubFiles(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 160);
  if (v3 >= 2)
  {
    v7 = 1;
    do
    {
      v8 = v7;
      if (*(*a3 + v7) == 1)
      {
        v9 = (*(a1 + 152) + (v7 << 7));
        if (*v9)
        {
          if ((*(*(a1 + 200) + v8) & 1) == 0)
          {
            if (*(a1 + 24))
            {
              v10 = *(a1 + 16);
            }

            else
            {
              v10 = &unk_26288F516;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 2636, "dfutil/realdf", 46, "%.500s %.500s %.500s", v9, v10, a2);
            v3 = *(a1 + 160);
          }
        }
      }

      v7 = v8 + 1;
    }

    while (v3 > (v8 + 1));
  }
}

uint64_t RealDFile::addBlockSpace(RealDFile *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    v3 = 0;
    while (*(*(this + 15) + 4 * v3) != -1)
    {
      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  v5 = *(this + 36);
  v4 = *(this + 37);
  if (v5 + 2046 > v4)
  {
    DgnPrimArray<short>::reallocElts(this + 136, v5 + 2046 - v4, 0);
  }

  *(this + 36) = v5 + 2046;
  if (v5 <= 0xFFFFF801)
  {
    bzero((*(this + 17) + 2 * v5), 0xFFCuLL);
  }

  if (v3 == *(this + 32))
  {
    v6 = v3;
    if (v3 >= 0x20FE)
    {
      if (*(this + 6))
      {
        v7 = *(this + 2);
      }

      else
      {
        v7 = &unk_26288F516;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4385, "dfutil/realdf", 5, "%.500s", v7);
      v6 = *(this + 32);
    }

    if (v6 == *(this + 33))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 120, 1, 1);
      v6 = *(this + 32);
    }

    *(*(this + 15) + 4 * v6) = -1;
    ++*(this + 32);
  }

  v8 = *(this + 48);
  if (v8 == *(this + 49))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 184, 1, 1);
    v8 = *(this + 48);
  }

  *(*(this + 23) + 4 * v8) = v3;
  ++*(this + 48);
  *(*(this + 15) + 4 * v3) = -2;
  return v5;
}

void RealDFile::readDirEntries(uint64_t a1, uint64_t a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 88);
  v5 = v4 > 7;
  if (v4 <= 7)
  {
    v6 = 64;
  }

  else
  {
    v6 = 32;
  }

  v43 = v6;
  v7 = *(a1 + 112);
  if (v5)
  {
    v8 = 5;
  }

  else
  {
    v8 = 6;
  }

  v9 = v7 << v8;
  v10 = *(a1 + 164);
  v11 = v9 >= v10;
  v12 = v9 - v10;
  if (v11)
  {
    DgnArray<RealDFileDirEntry>::reallocElts(a1 + 152, v12 + 1, 0);
    v7 = *(a1 + 112);
  }

  if (v7)
  {
    v13 = 0;
    v14 = 0uLL;
    do
    {
      *(a2 + 8) = (*(a1 + 216) + *(*(a1 + 104) + 4 * v13)) << 12;
      v15 = v43;
      do
      {
        *&v51[14] = v14;
        v50 = v14;
        *v51 = v14;
        v48 = v14;
        v49 = v14;
        v46 = v14;
        v47 = v14;
        *v45 = v14;
        v52 = -8454;
        v16 = *a2;
        v17 = *(a2 + 8);
        if (*(a1 + 88) < 8u)
        {
          RealDFile::doReadFromCache(v16, v17, v45, 32, 1);
          v18 = *(a2 + 8) + 32;
          *(a2 + 8) = v18;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
        }

        else
        {
          RealDFile::doReadFromCache(v16, v17, v45, 96, 1);
          v18 = *(a2 + 8) + 96;
          *(a2 + 8) = v18;
        }

        *v44 = 0;
        RealDFile::doReadFromCache(*a2, v18, v44, 4, 1);
        v19 = *a2;
        v20 = *(a2 + 8) + 4;
        *(a2 + 8) = v20;
        *v51 = *v44;
        *v44 = 0;
        RealDFile::doReadFromCache(v19, v20, v44, 4, 1);
        v21 = *a2;
        v22 = *(a2 + 8) + 4;
        *(a2 + 8) = v22;
        *&v51[4] = *v44;
        *v44 = 0;
        RealDFile::doReadFromCache(v21, v22, v44, 4, 1);
        v23 = *a2;
        v24 = *(a2 + 8) + 4;
        *(a2 + 8) = v24;
        *&v51[8] = *v44;
        *v44 = 0;
        RealDFile::doReadFromCache(v23, v24, v44, 4, 1);
        v25 = *a2;
        v26 = *(a2 + 8) + 4;
        *(a2 + 8) = v26;
        *&v51[12] = *v44;
        *v44 = 0;
        RealDFile::doReadFromCache(v25, v26, v44, 8, 1);
        v27 = *a2;
        v28 = *(a2 + 8) + 8;
        *(a2 + 8) = v28;
        *&v51[16] = *v44;
        *v44 = 0;
        RealDFile::doReadFromCache(v27, v28, v44, 4, 1);
        v29 = *a2;
        v30 = *(a2 + 8) + 4;
        *(a2 + 8) = v30;
        *&v51[24] = *v44;
        v44[0] = 0;
        RealDFile::doReadFromCache(v29, v30, v44, 1, 1);
        v31 = *a2;
        v32 = *(a2 + 8) + 1;
        *(a2 + 8) = v32;
        v51[28] = v44[0];
        v44[0] = 0;
        RealDFile::doReadFromCache(v31, v32, v44, 1, 1);
        v33 = *a2;
        v34 = *(a2 + 8) + 1;
        *(a2 + 8) = v34;
        v51[29] = v44[0];
        *v44 = 0;
        RealDFile::doReadFromCache(v33, v34, v44, 2, 1);
        *(a2 + 8) += 2;
        v52 = *v44;
        if (*v44 != 57082)
        {
          if (*(a1 + 24))
          {
            v35 = *(a1 + 16);
          }

          else
          {
            v35 = &unk_26288F516;
          }

          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3565, "dfutil/realdf", 57, "%.500s 0x%x 0x%x", v35, 57082, *v44);
        }

        v36 = *(a1 + 160);
        if (v36 == *(a1 + 164))
        {
          DgnArray<RealDFileDirEntry>::reallocElts(a1 + 152, 1, 1);
          v36 = *(a1 + 160);
        }

        v37 = *(a1 + 152) + (v36 << 7);
        v38 = v47;
        v39 = v48;
        v40 = v49;
        *(v37 + 80) = v50;
        v41 = v46;
        *v37 = *v45;
        *(v37 + 16) = v41;
        *(v37 + 48) = v39;
        *(v37 + 64) = v40;
        *(v37 + 32) = v38;
        *(v37 + 95) = 0;
        *(v37 + 96) = *v51;
        *(v37 + 112) = *&v51[16];
        *(v37 + 120) = *&v51[24];
        *(v37 + 124) = v51[28];
        *(v37 + 125) = v51[29];
        *(v37 + 126) = v52;
        ++*(a1 + 160);
        v42 = *(a1 + 208);
        if (v42 == *(a1 + 212))
        {
          DgnPrimArray<char>::reallocElts(a1 + 200, 1, 1);
          v42 = *(a1 + 208);
        }

        *(*(a1 + 200) + v42) = 0;
        *(a1 + 208) = v42 + 1;
        --v15;
        v14 = 0uLL;
      }

      while (v15);
      ++v13;
    }

    while (v13 < *(a1 + 112));
  }
}

double RealDFile::readBlockUsage(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v5 = 2046 * v4;
  v6 = *(a1 + 148);
  if (2046 * v4 > v6)
  {
    DgnPrimArray<short>::reallocElts(a1 + 136, v5 - v6, 0);
    v4 = *(a1 + 128);
  }

  *(a1 + 144) = v5;
  if (v4)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = (*(a1 + 216) + *(*(a1 + 120) + 4 * v9)) << 12;
      *(a2 + 8) = v10;
      RealDFile::doReadFromCache(*a2, v10, (*(a1 + 136) + 2 * (v8 & 0xFFFFFFFE)), 4092, 1);
      v11 = *a2;
      v12 = *(a2 + 8) + 4092;
      *(a2 + 8) = v12;
      *v15 = 0;
      RealDFile::doReadFromCache(v11, v12, v15, 4, 1);
      *(a2 + 8) += 4;
      if (*v15 != -307429586)
      {
        if (*(a1 + 24))
        {
          v13 = *(a1 + 16);
        }

        else
        {
          v13 = &unk_26288F516;
        }

        result = errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3611, "dfutil/realdf", 58, "%.500s 0x%x 0x%x", v13, -307429586, *v15);
      }

      ++v9;
      v8 += 2046;
    }

    while (v9 < *(a1 + 128));
    v5 = *(a1 + 144);
  }

  if (*(a1 + 96) > v5)
  {
    if (*(a1 + 24))
    {
      v14 = *(a1 + 16);
    }

    else
    {
      v14 = &unk_26288F516;
    }

    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 3616, "dfutil/realdf", 47, "%.500s %u %u", v14, *(a1 + 96), v5);
  }

  return result;
}

void RealDFile::writeDirEntries(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2 > 7)
  {
    v3 = 5;
  }

  else
  {
    v3 = 6;
  }

  v40 = v3;
  v39 = (*(a1 + 160) - 1) >> v3;
  if (v39)
  {
    v6 = 0;
    v7 = v2 > 7;
    v8 = 64;
    if (v7)
    {
      v8 = 32;
    }

    v38 = v8;
    do
    {
      v9 = (*(a1 + 216) + *(*(a1 + 104) + 4 * v6)) << 12;
      *(a2 + 8) = v9;
      v41 = v6;
      v10 = (v6 << v40) + 1;
      v11 = 1;
      v12 = v38;
      do
      {
        v13 = *(a1 + 152) + (v10 << 7);
        v14 = *(a1 + 88);
        if (v14 <= 7)
        {
          v15 = 32;
        }

        else
        {
          v15 = 96;
        }

        if (v14 <= 7)
        {
          v16 = 32;
        }

        else
        {
          v16 = 96;
        }

        RealDFile::doWriteToCache(*a2, *(a2 + 8), (*(a1 + 152) + (v10 << 7)), v15);
        v17 = *a2;
        v18 = *(a2 + 8) + v16;
        *(a2 + 8) = v18;
        *v42 = *(v13 + 96);
        RealDFile::doWriteToCache(v17, v18, v42, 4u);
        v19 = *a2;
        v20 = *(a2 + 8) + 4;
        *(a2 + 8) = v20;
        *v42 = *(v13 + 100);
        RealDFile::doWriteToCache(v19, v20, v42, 4u);
        v21 = *a2;
        v22 = *(a2 + 8) + 4;
        *(a2 + 8) = v22;
        *v42 = *(v13 + 104);
        RealDFile::doWriteToCache(v21, v22, v42, 4u);
        v23 = *a2;
        v24 = *(a2 + 8) + 4;
        *(a2 + 8) = v24;
        *v42 = *(v13 + 108);
        RealDFile::doWriteToCache(v23, v24, v42, 4u);
        v25 = *a2;
        v26 = *(a2 + 8) + 4;
        *(a2 + 8) = v26;
        *v42 = *(v13 + 112);
        RealDFile::doWriteToCache(v25, v26, v42, 8u);
        v27 = *a2;
        v28 = *(a2 + 8) + 8;
        *(a2 + 8) = v28;
        *v42 = *(v13 + 120);
        RealDFile::doWriteToCache(v27, v28, v42, 4u);
        v29 = *a2;
        v30 = *(a2 + 8) + 4;
        *(a2 + 8) = v30;
        v42[0] = *(v13 + 124);
        RealDFile::doWriteToCache(v29, v30, v42, 1u);
        v31 = *a2;
        v32 = *(a2 + 8) + 1;
        *(a2 + 8) = v32;
        v42[0] = *(v13 + 125);
        RealDFile::doWriteToCache(v31, v32, v42, 1u);
        v33 = *a2;
        v34 = *(a2 + 8) + 1;
        *(a2 + 8) = v34;
        *v42 = *(v13 + 126);
        RealDFile::doWriteToCache(v33, v34, v42, 2u);
        v35 = *(a2 + 8) + 2;
        *(a2 + 8) = v35;
        v36 = 6;
        if (*(a1 + 88) > 7u)
        {
          v36 = 7;
        }

        v37 = (v11 << v36) + v9;
        if (v35 != v37)
        {
          errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 1697, "dfutil/realdf", 26, "%llu %llu", v35, v37);
        }

        ++v10;
        ++v11;
        --v12;
      }

      while (v12);
      v6 = v41 + 1;
    }

    while (v41 + 1 != v39);
  }
}

void RealDFile::writeBlockUsage(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    v5 = 0;
    while (*(*(a1 + 120) + 4 * v5) != -1)
    {
      if (v2 == ++v5)
      {
        LODWORD(v5) = *(a1 + 128);
        break;
      }
    }

    if (v5)
    {
      v6 = 0;
      v7 = v5;
      do
      {
        v8 = (*(a1 + 216) + *(*(a1 + 120) + 4 * v6)) << 12;
        *(a2 + 8) = v8;
        RealDFile::doWriteToCache(*a2, v8, (*(a1 + 136) + 2 * (2046 * v6)), 0xFFCu);
        v9 = *a2;
        v10 = *(a2 + 8) + 4092;
        *(a2 + 8) = v10;
        *v11 = -307429586;
        RealDFile::doWriteToCache(v9, v10, v11, 4u);
        *(a2 + 8) += 4;
        ++v6;
      }

      while (v6 != v7);
    }
  }
}

uint64_t *RealDFile::clearPreviousBigReadCache(uint64_t *this, unsigned int a2)
{
  v2 = *(this + 92);
  if (v2 < a2)
  {
    v4 = this;
    while (v2 < *(v4 + 344))
    {
      v5 = *(*(v4 + 336) + 8 * v2);
      if (v5)
      {
        v6 = *(v4 + 360);
        if (v6 == *(v4 + 364))
        {
          this = DgnPrimArray<unsigned long long>::reallocElts(v4 + 352, 1, 1);
          v6 = *(v4 + 360);
          v7 = *(v4 + 368);
          v2 = *(v4 + 368);
        }

        else
        {
          v7 = v2;
        }

        *(*(v4 + 352) + 8 * v6) = v5;
        *(v4 + 360) = v6 + 1;
        *(*(v4 + 336) + 8 * v7) = 0;
        v8 = *(v4 + 372) - 1;
        *(v4 + 372) = v8;
        if (!v8)
        {
          *(v4 + 368) = 0;
          return this;
        }
      }

      *(v4 + 368) = ++v2;
      if (v2 >= a2)
      {
        return this;
      }
    }
  }

  return this;
}

void RealDFile::fillBigCache(RealDFile *this, unsigned int a2)
{
  v2 = a2;
  v4 = *(this + 95) * *(this + 94);
  if (*(this + 385) == 1)
  {
    RealDFile::clearPreviousBigReadCache(this, a2);
  }

  if (*(this + 384))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >> 1;
  }

  v6 = v4 + ~v5;
  if (v5)
  {
    v7 = v2 < 1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v2;
  if (!v7)
  {
    v9 = v2;
    v10 = (v4 >> 1) - 1;
    while (v9 > *(this + 86) || !*(*(this + 42) + 8 * v9 - 8))
    {
      v8 = v9 - 1;
      if (v10-- != 0)
      {
        v7 = v9-- <= 1;
        if (!v7)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    v8 = v9;
  }

LABEL_19:
  v12 = *(this + 95);
  if (v8 % v12)
  {
    v13 = v6 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = v8;
    v15 = v6;
LABEL_32:
    v6 = v15;
    if (!v15)
    {
LABEL_33:
      v17 = v2;
      goto LABEL_43;
    }
  }

  else
  {
    while (1)
    {
      v14 = v8 - 1;
      if (v8 <= *(this + 86))
      {
        if (*(*(this + 42) + 8 * v14))
        {
          break;
        }
      }

      v15 = v6 - 1;
      if (v14 % v12)
      {
        v16 = v6 == 1;
      }

      else
      {
        v16 = 1;
      }

      --v6;
      --v8;
      if (v16)
      {
        goto LABEL_32;
      }
    }

    v14 = v8;
  }

  v18 = v6 + v2;
  if (v2 <= *(this + 54) + *(this + 24) - 1)
  {
    v17 = *(this + 54) + *(this + 24) - 1;
  }

  else
  {
    v17 = v2;
  }

  while (v17 != v2)
  {
    if (v2 + 1 < *(this + 86) && *(*(this + 42) + 8 * (v2 + 1)))
    {
      goto LABEL_33;
    }

    ++v2;
    if (!--v6)
    {
      v17 = v18;
      break;
    }
  }

LABEL_43:
  if (*(this + 101) < v4 << 12)
  {
    v33 = 0;
    *(this + 101) = realloc_array(*(this + 49), &v33, v4 << 12, *(this + 100), *(this + 100), 1);
    *(this + 49) = v33;
  }

  *(this + 100) = v4 << 12;
  OsFile::seekFromBeg(*(this + 10), v14 << 12);
  v19 = (v17 + 1);
  v20 = v19 - v14;
  Bytes = OsFile::readBytes(*(this + 10), *(this + 49), (v19 - v14) << 12);
  if (Bytes != (v19 - v14) << 12)
  {
    v22 = *(this + 10);
    if (*(v22 + 8))
    {
      v23 = *v22;
    }

    else
    {
      v23 = &unk_26288F516;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/realdf.cpp", 4176, "dfutil/realdf", 60, "%.500s %llu %llu", v23, (v20 << 12), Bytes);
  }

  DecryptBuffer(*(this + 49), v20 << 12, *(this + 46));
  LODWORD(v24) = *(this + 86);
  if (v24 <= v17)
  {
    v25 = *(this + 87);
    if (v19 > v25)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 336, v19 - v25, 1);
      LODWORD(v24) = *(this + 86);
    }

    if (v24 <= v19)
    {
      if (v24 < v19)
      {
        v24 = v24;
        do
        {
          *(*(this + 42) + 8 * v24++) = 0;
        }

        while (v19 != v24);
      }
    }

    else
    {
      DgnIOwnArray<DgnPrimFixArray<char> *>::destructAt(this + 42, v17 + 1, v24 - v19);
    }

    *(this + 86) = v19;
  }

  if (!*(this + 93) || *(this + 92) > v14)
  {
    *(this + 92) = v14;
  }

  if (v14 <= v17)
  {
    v26 = 0;
    v27 = v17 + 1;
    do
    {
      v28 = *(this + 90);
      if (v28)
      {
        v29 = v28 - 1;
        v30 = v14;
        *(*(this + 42) + 8 * v14) = *(*(this + 44) + 8 * (v28 - 1));
        *(*(this + 44) + 8 * (v28 - 1)) = 0;
        DgnIOwnArray<DgnPrimFixArray<char> *>::destructAt(this + 44, v28 - 1, 1);
        *(this + 90) = v29;
      }

      else
      {
        v31 = MemChunkAlloc(0x10uLL, 0);
        *(v31 + 2) = 0;
        *v31 = 0;
        *v31 = MemChunkAlloc(0x1000uLL, 0);
        *(v31 + 2) = 4096;
        v30 = v14;
        *(*(this + 42) + 8 * v14) = v31;
      }

      ++*(this + 93);
      v32 = *(*(this + 42) + 8 * v30);
      memcpy(*v32, (*(this + 49) + v26), *(v32 + 8));
      v26 += 4096;
      ++v14;
    }

    while (v27 != v14);
  }
}

uint64_t RealDFile::freeBlock(RealDFile *this, unsigned int a2)
{
  v2 = *(this + 19) + (a2 << 7);
  v3 = *(v2 + 104);
  if (v3 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 17);
  *(v6 + 2 * v3) = 0;
  if (*(this + 24) == v3 + 1)
  {
    for (; v3; --v3)
    {
      if (*(v6 + 2 * v3))
      {
        break;
      }
    }

    v7 = v3 + 1;
    OsFile::shrinkSize(*(this + 10), (*(this + 54) + v7) << 12);
    if (*(this + 24) > v7)
    {
      *(this + 24) = v7;
    }
  }

  v8 = *(this + 36);
  if (v8 <= v3)
  {
    result = v8 - 1;
  }

  else
  {
    result = v3;
  }

  if (result == -1)
  {
LABEL_14:
    *(v2 + 100) = -1;
    result = 0xFFFFFFFFLL;
  }

  else
  {
    while (*(*(this + 17) + 2 * result) != a2)
    {
      result = (result - 1);
      if (result == -1)
      {
        goto LABEL_14;
      }
    }

    *(v2 + 104) = result;
  }

  --*(v2 + 96);
  *(this + 296) = 1;
  return result;
}

void RealDFile::fillSubFileSizeInfo(RealDFile *this)
{
  v1 = *(this + 40);
  if (v1 >= 2)
  {
    for (i = 1; i < v1; ++i)
    {
      v4 = (*(this + 19) + (i << 7));
      if (*v4)
      {
        DgnString::DgnString(&v7, v4);
        if (v8)
        {
          v5 = v7;
        }

        else
        {
          v5 = &unk_26288F516;
        }

        v6 = (*(*this + 48))(this, v5);
        DFileProgressInfo::add(*(this + 1), &v7, v6);
        DgnString::~DgnString(&v7);
        v1 = *(this + 40);
      }
    }
  }
}

void RealDFile::fillSubFileSizeInfo(uint64_t a1, void *a2)
{
  v2 = *(a1 + 160);
  if (v2 >= 2)
  {
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(*a2 + v5) == 1)
      {
        DgnString::DgnString(&v9, (*(a1 + 152) + (v5 << 7)));
        if (v10)
        {
          v7 = v9;
        }

        else
        {
          v7 = &unk_26288F516;
        }

        v8 = (*(*a1 + 48))(a1, v7);
        DFileProgressInfo::add(*(a1 + 8), &v9, v8);
        DgnString::~DgnString(&v9);
        v2 = *(a1 + 160);
      }

      v5 = v6 + 1;
    }

    while (v2 > (v6 + 1));
  }
}

uint64_t *DgnArray<RealDFileDirEntry>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, v6 << 7, v5 << 7, v5 << 7, 1);
  *(a1 + 12) = result >> 7;
  *a1 = v8;
  return result;
}

uint64_t *DgnArray<RealDFileDirEntry>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 2) = 0;
  v8 = *(result + 3);
  if (a4 <= v8)
  {
    v9 = 0;
    v10 = 0;
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnArray<RealDFileDirEntry>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 2);
  }

  v11 = a4;
  v10 = v9;
  do
  {
    v12 = *a2 + (a3 << 7);
    v13 = *v7 + (v10 << 7);
    v15 = *(v12 + 32);
    v14 = *(v12 + 48);
    v16 = *(v12 + 64);
    *(v13 + 80) = *(v12 + 80);
    v17 = *(v12 + 16);
    *v13 = *v12;
    *(v13 + 16) = v17;
    *(v13 + 48) = v14;
    *(v13 + 64) = v16;
    *(v13 + 32) = v15;
    *(v13 + 95) = 0;
    *(v13 + 96) = *(v12 + 96);
    *(v13 + 112) = *(v12 + 112);
    *(v13 + 120) = *(v12 + 120);
    *(v13 + 124) = *(v12 + 124);
    *(v13 + 125) = *(v12 + 125);
    *(v13 + 126) = *(v12 + 126);
    v10 = *(v7 + 2) + 1;
    *(v7 + 2) = v10;
    ++a3;
    --v11;
  }

  while (v11);
LABEL_6:
  if (v10 < a4)
  {
    v18 = a4 - v10;
    v19 = v10 << 7;
    do
    {
      v20 = *v7 + v19;
      *(v20 + 110) = 0uLL;
      *(v20 + 80) = 0uLL;
      *(v20 + 96) = 0uLL;
      *(v20 + 48) = 0uLL;
      *(v20 + 64) = 0uLL;
      *(v20 + 16) = 0uLL;
      *(v20 + 32) = 0uLL;
      *v20 = 0uLL;
      *(v20 + 126) = -8454;
      v19 += 128;
      --v18;
    }

    while (v18);
  }

  *(v7 + 2) = a4;
  return result;
}

void *DgnIOwnArray<DgnPrimFixArray<char> *>::destructAt(void *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<DgnPrimFixArray<char>>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

uint64_t DgnDelete<DgnPrimFixArray<char>>(uint64_t result)
{
  if (result)
  {
    fixed = DgnPrimFixArray<double>::~DgnPrimFixArray(result);

    return MemChunkFree(fixed, 0);
  }

  return result;
}

uint64_t BaseSyncNet::BaseSyncNet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, unsigned int a9)
{
  v11 = AcousticNet::AcousticNet(a1, a2, a3, a4, a5, a6, a7, a9);
  *v11 = &unk_287529110;
  *(v11 + 216) = 0;
  *(v11 + 224) = 0;
  *(v11 + 160) = 0;
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;
  NodeNetNode::NodeNetNode((v11 + 232), 0);
  *(a1 + 114) = a8;
  *(a1 + 282) = 0;
  *(a1 + 280) = 0;
  *(a1 + 284) = 20000;
  v12 = *(a1 + 48);
  if (v12)
  {
    if (v12 == 1)
    {
      v13 = a8 == 0;
      v17 = Sequence::scoreOneSkip;
      if (a8)
      {
        v17 = Sequence::scoreOneSkipNBest;
      }

      *(a1 + 200) = v17;
      *(a1 + 208) = 0;
      v15 = Sequence::scoreOneSkipDeadSeq;
      v16 = Sequence::scoreOneSkipDeadSeqNBest;
    }

    else
    {
      if (v12 != 2)
      {
        *(a1 + 200) = 0u;
        *(a1 + 184) = 0u;
        return a1;
      }

      v13 = a8 == 0;
      v14 = Sequence::scoreMultiSkip;
      if (a8)
      {
        v14 = Sequence::scoreMultiSkipNBest;
      }

      *(a1 + 200) = v14;
      *(a1 + 208) = 0;
      v15 = Sequence::scoreMultiSkipDeadSeq;
      v16 = Sequence::scoreMultiSkipDeadSeqNBest;
    }
  }

  else
  {
    v13 = a8 == 0;
    v18 = Sequence::scoreNoSkip;
    if (a8)
    {
      v18 = Sequence::scoreNoSkipNBest;
    }

    *(a1 + 200) = v18;
    *(a1 + 208) = 0;
    v15 = Sequence::scoreNoSkipDeadSeq;
    v16 = Sequence::scoreNoSkipDeadSeqNBest;
  }

  if (!v13)
  {
    v15 = v16;
  }

  *(a1 + 184) = v15;
  *(a1 + 192) = 0;
  return a1;
}

void sub_2627FD9AC(_Unwind_Exception *a1)
{
  DgnIArray<Utterance *>::~DgnIArray(v2);
  AcousticNet::~AcousticNet(v1);
  _Unwind_Resume(a1);
}

void BaseSyncNet::~BaseSyncNet(BaseSyncNet *this, Sequence *a2)
{
  *this = &unk_287529110;
  if (*(this + 56))
  {
    v3 = 0;
    do
    {
      Sequence::deleteSequence(*(*(this + 27) + 8 * v3++), a2);
    }

    while (v3 < *(this + 56));
  }

  NodeNetNode::~NodeNetNode(this + 29);
  DgnIArray<Utterance *>::~DgnIArray(this + 216);

  AcousticNet::~AcousticNet(this);
}

void Sequence::deleteSequence(void **this, Sequence *a2)
{
  PredStruct::~PredStruct(this);
  if (v2)
  {

    MemChunkFree(v2, 0);
  }
}

uint64_t BaseSyncNet::sizeObject(uint64_t a1, uint64_t a2)
{
  v4 = HmmNet::sizeObject(a1, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (a2 == 3)
  {
    v5 = 0;
  }

  v6 = 12;
  if (a2 == 3)
  {
    v6 = 0;
  }

  v7 = v6 + v4 + v5;
  if (a2 == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 4;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v7 += 8;
    }

    else
    {
      v7 += 32;
    }
  }

  active = sizeObject<ActiveWord *>(a1 + 216, a2);
  return ((a2 != 3) | (2 * (a2 != 3)) | v8) + active + (*(*(a1 + 232) + 16))(a1 + 232, a2) + v7;
}

uint64_t BaseSyncNet::getBestScore(uint64_t a1, void *a2)
{
  v4 = *(a1 + 224);
  if (v4 < 1)
  {
    v6 = 20000;
  }

  else
  {
    v5 = v4 - 1;
    v6 = 20000;
    do
    {
      v11 = 0;
      BestScore = Sequence::getBestScore(*(*(a1 + 216) + 8 * v5), &v11);
      if (BestScore < v6)
      {
        *a2 = v11;
        v6 = BestScore;
      }

      v8 = v5-- + 1;
    }

    while (v8 > 1);
  }

  if (*(a1 + 280))
  {
    v9 = *(a1 + 250);
    if (v6 > v9)
    {
      *a2 = a1 + 240;
      return v9;
    }
  }

  return v6;
}

uint64_t BaseSyncNet::updateBestNodeScore(BaseSyncNet *this)
{
  result = *(this + 71);
  if (*(this + 280) == 1)
  {
    v3 = *(this + 125);
    if (result >= v3)
    {
      return v3;
    }

    else
    {
      return result;
    }
  }

  return result;
}

_WORD *BaseSyncNet::addArc(BaseSyncNet *this, const Node *a2, Node *a3)
{
  if ((this + 240) == a3)
  {
    v3 = this + 264;
  }

  else
  {
    v3 = a3 - 16;
  }

  return PredStruct::addPred(v3, a2);
}

void *BaseSyncNet::unpackSequence(void *a1, unsigned __int16 *a2, unsigned int a3, uint64_t *a4, void *a5, uint64_t a6)
{
  v7 = a2;
  v9 = a1[1];
  v10 = *(v9 + 16);
  v11 = a3;
  v13 = 0;
  if (a3 >= 1)
  {
    v14 = a2 + 2;
    v15 = a3;
    do
    {
      v16 = *v14;
      v14 += 6;
      v13 = v13 + *(*(v10 + 16) + v16);
      --v15;
    }

    while (v15);
  }

  v17 = *(v9 + 4);
  result = (*(*a1 + 336))(a1, v13, a6);
  v19 = result;
  v20 = a1[1];
  v21 = v20 + 299008;
  v22 = *(v20 + 302836);
  if (v13 <= v22)
  {
    *(v20 + 302832) = v13;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(v20 + 302824, v13 - v22, 0);
    *(v21 + 3824) = v13;
  }

  v23 = 0;
  v24 = v13 - 1;
  if (v17 == 1)
  {
    v24 = 0;
  }

  do
  {
    *(*(a1[1] + 302824) + 8 * v23++) = v19 + 24 * v24 + 12;
    v24 += v17;
  }

  while (v13 != v23);
LABEL_10:
  v31 = 0;
  v25 = a1[1];
  if (a3 < 1)
  {
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v26 = *(v25 + 302824);
    do
    {
      result = PicMgr::getNodeDataPtrs(v10, v26, *(a1[1] + 32), v7, &v31 + 1, &v31);
      v26 += *(*(v10 + 16) + v7[2]);
      v7 += 6;
      --v11;
    }

    while (v11);
    v25 = a1[1];
    v27 = v31;
    v28 = HIDWORD(v31);
  }

  v29 = v25 + 299008;
  *(v29 + 3656) += a3;
  *(v29 + 3660) += v28;
  *(v29 + 3664) += v27;
  *a4 = v19;
  *a5 = v19 + 24 * v13 - 24;
  return result;
}

uint64_t *BaseSyncNet::unpackEndSilence(uint64_t **this)
{
  v2 = ((*this)[42])(this, 1, 0);
  v3 = v2;
  *(v2 + 12) = 0;
  *(v2 + 20) = 0;
  v4 = this[9];
  if (*(this + 13))
  {
    *v4 = v2;
  }

  else
  {
    PredStruct::addPred((*v4 + 16), v2);
  }

  this[18] = v3;
  return v3;
}

uint64_t BaseSyncNet::unpackOneFromPicNodes(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, uint64_t a7)
{
  v9 = a3;
  v12 = a1[1];
  v13 = *(v12 + 16);
  v14 = *(v12 + 4);
  v15 = (*(*a1 + 336))(a1, a3, a7, a4);
  v16 = a1[1];
  v17 = v16 + 299008;
  v18 = *(v16 + 302836);
  if (v9 <= v18)
  {
    *(v16 + 302832) = v9;
    if (!v9)
    {
      v21 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(v16 + 302824, v9 - v18, 0);
    *(v17 + 3824) = v9;
  }

  v19 = 0;
  v20 = v9 - 1;
  if (v14 == 1)
  {
    v20 = 0;
  }

  v21 = v9;
  do
  {
    *(*(a1[1] + 302824) + 8 * v19++) = v15 + 24 * v20 + 12;
    v20 += v14;
  }

  while (v9 != v19);
LABEL_8:
  result = PicMgr::getNodeDataPtrsFromPicNodes(v13, *(a1[1] + 302824), *(a1[1] + 32), a2, v9);
  *a5 = v15;
  *a6 = v15 + 24 * v21 - 24;
  return result;
}

uint64_t BaseSyncNet::scoreIntSilNode2(uint64_t this, uint64_t a2, int a3)
{
  if (*(this + 280) == 1)
  {
    *(this + 152) = *(this + 250) <= a3;
    return (*(*this + 320))(this, *(this + 113), a2);
  }

  else
  {
    *(this + 152) = 0;
  }

  return this;
}

void SyncNet::~SyncNet(SyncNet *this)
{
  *this = &unk_2875236A8;
  v2 = *(this + 40);
  if (v2)
  {
    PredStruct::~PredStruct(v2);
    MemChunkFree(v3, 0);
  }

  v4 = *(this + 36);
  if (v4)
  {
    MemChunkFree(v4, 0);
  }

  DgnIArray<Utterance *>::~DgnIArray(this + 304);

  BaseSyncNet::~BaseSyncNet(this, v5);
}

{
  SyncNet::~SyncNet(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t SyncNet::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = BaseSyncNet::sizeObject(a1, a2);
  v5 = gShadowDiagnosticShowIdealizedObjectSizes;
  active = sizeObject<ActiveWord *>(a1 + 304, v2);
  v7 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 4;
  }

  if (v2 == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  if (v2 != 2)
  {
    v9 = *(a1 + 320);
    if (v9)
    {
      v8 += sizeObject(v9, v2);
    }
  }

  if (v5)
  {
    v10 = 8;
  }

  else
  {
    v10 = 16;
  }

  v11 = sizeObject(a1 + 328, v2);
  if (v2 == 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  return v4 + 2 * (v2 != 3) + active + v12 + v8 + v11 + ((2 * (v2 != 3)) | (8 * (v2 != 3)));
}

uint64_t SyncNet::getBestScore(uint64_t a1, void *a2)
{
  BestScore = BaseSyncNet::getBestScore(a1, a2);
  if (*(a1 + 312))
  {
    v5 = 0;
    do
    {
      v10 = 0;
      v6 = Sequence::getBestScore(*(*(a1 + 304) + 8 * v5), &v10);
      if (v6 < BestScore)
      {
        *a2 = v10;
        BestScore = v6;
      }

      ++v5;
    }

    while (v5 < *(a1 + 312));
  }

  v7 = *(a1 + 320);
  if (v7)
  {
    v10 = 0;
    v8 = Sequence::getBestScore(v7, &v10);
    if (v8 < BestScore)
    {
      *a2 = v10;
      return v8;
    }
  }

  return BestScore;
}

uint64_t SyncNet::updateBestNodeScore(SyncNet *this)
{
  v1 = *(this + 71);
  if (*(this + 280) == 1 && v1 >= *(this + 125))
  {
    v1 = *(this + 125);
  }

  if (*(this + 88) < v1)
  {
    v1 = *(this + 88);
  }

  v2 = *(this + 89);
  if (v2 >= v1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t SyncNet::scoreNetInternal(int32x2_t *this, int a2, uint64_t a3, int a4, int a5, int a6)
{
  v6 = a3;
  v8 = this[13].i32[0];
  v66 = this[19].i32[0];
  v67 = 0;
  if (v8)
  {
    v61 = this + 44;
    v9 = this[44].i32[0] <= a3;
    v10 = &this[45] + 2;
    this[45].i8[2] = v9;
    v11 = &this[45] + 3;
    this[45].i8[3] = this[44].i32[1] <= a3;
    this[44] = vdup_n_s32(0x4E20u);
    v12 = this[35].i32[1] <= a3;
  }

  else
  {
    v9 = 0;
    v12 = 0;
    v10 = &this[45] + 2;
    this[45].i16[1] = 0;
    v61 = this + 44;
    this[44] = 85899345940000;
    v11 = &this[45] + 3;
  }

  this[35].i8[2] = v12;
  v13 = 20000;
  this[35].i32[1] = 20000;
  v63 = a3;
  if (this[39].i32[0])
  {
    v13 = BaseSyncNet::scoreIntSilNode1<true>(this, v9, this[14].u8[2], a3, a4, a5, a6, &v67);
    v14 = this[38];
    v15 = **v14;
    if (v8)
    {
      v16 = *(v15 + 8) <= v6;
    }

    else
    {
      v16 = 0;
    }

    v17 = this[39].u32[0];
    if ((*v10 & 1) != 0 || v16)
    {
      if (*v10)
      {
        v22 = this[26];
        v60 = this[25];
        *(*&this[1] + 302648) += v17;
      }

      else
      {
        v22 = this[24];
        v60 = this[23];
        *(*&this[1] + 302652) += v17;
      }

      v58 = v11;
      if (v17)
      {
        v23 = v22 >> 1;
        do
        {
          v24 = *v14;
          if (v22)
          {
            v25 = (*(*&v24[v23] + v60))(&v24[v23], v15, v16, v63, a4, a5, *&this[1], this[14].u32[1], 0, &v67, &v66);
          }

          else
          {
            v25 = v60(&v24[v23], v15, v16, v63, a4, a5, *&this[1], this[14].u32[1], 0, &v67, &v66);
          }

          if (v25 < this[44].i32[0])
          {
            v61->i32[0] = v25;
          }

          if (v13 >= *&v24[24 * *(v24 + 5)])
          {
            v13 = *&v24[24 * *(v24 + 5)];
          }

          ++v14;
          --v17;
        }

        while (v17);
      }

      this[35].i8[1] = 1;
      v6 = v63;
      v11 = v58;
    }

    else if (this[35].i8[1] == 1)
    {
      this[35].i8[1] = 0;
      v18 = this[10].u32[0];
      if (v18 >= 2)
      {
        v19 = v18 + 1;
        v20 = (*&this[9] + 8 * v18 - 8);
        do
        {
          v21 = *v20--;
          *(v21 + 8) = 20000;
          --v19;
        }

        while (v19 > 2);
      }
    }
  }

  this[13].i16[2] = v13;
  v26 = this[1];
  if (v13 < *(*&v26 + 246))
  {
    *(*&v26 + 246) = v13;
  }

  v27 = this[40];
  v28 = this[35].i8[2];
  if (v27)
  {
    v9 = **&v27;
    v29 = (this[35].i8[2] & 1) != 0 && *(v9 + 8) <= v6;
    if ((*v11 & 1) != 0 || v29)
    {
      if (*v11)
      {
        v34 = this[25];
        v35 = this[26];
        ++*(*&v26 + 302640);
      }

      else
      {
        v34 = this[23];
        v35 = this[24];
        ++*(*&v26 + 302644);
      }

      v36 = (*&v27 + (v35 >> 1));
      if (v35)
      {
        v34 = *(*v36 + v34);
      }

      this[44].i32[1] = v34(v36, v9, v29, v6, a4, a5);
      v30 = this[28].u32[0];
      v31 = this[27];
      if (this[35].i8[2])
      {
        goto LABEL_39;
      }

      goto LABEL_46;
    }

    *(*&v27 + 24 * (*(*&v27 + 10) - 1) + 24) = 20000;
  }

  v30 = this[28].u32[0];
  v31 = this[27];
  if (v28)
  {
LABEL_39:
    v59 = this[25];
    v62 = this[26];
    v32 = this[1];
    v33 = -25048;
    goto LABEL_48;
  }

LABEL_46:
  v32 = this[1];
  if ((this[14].i8[0] & 1) == 0)
  {
    goto LABEL_67;
  }

  v59 = this[23];
  v62 = this[24];
  v33 = -25044;
LABEL_48:
  *(*&v32 + (v33 | 0x40000u)) += v30;
  if (v30)
  {
    v37 = 0;
    v38 = v62 >> 1;
    v39 = 0xFFFFFFFFLL;
    v40 = 20000;
    v41 = v30;
    while (1)
    {
      v42 = *v31;
      if (v62)
      {
        v43 = *(*(v42 + v38) + v59.u32[0]);
      }

      else
      {
        v43 = v59;
      }

      v44 = v43(v42 + v38);
      if (v44 < this[35].i32[1])
      {
        this[35].i32[1] = v44;
      }

      v45 = v42 + 24 * (*(v42 + 10) - 1);
      v46 = (v45 + 16);
      v47 = *(v45 + 20);
      v48 = *(v45 + 24);
      v49 = v48 - v40;
      if (v48 - v40 < 0)
      {
        if ((this[14].i8[2] & 1) == 0)
        {
          v37 = (v45 + 16);
          v40 = *(v45 + 24);
          goto LABEL_64;
        }

        v49 = v40 - v48;
        v40 = *(v45 + 24);
        v50 = *(v45 + 20);
        v51 = (v45 + 16);
        v46 = v37;
        v47 = v39;
      }

      else
      {
        v50 = v39;
        v51 = v37;
        if ((this[14].i8[2] & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      if (v49 + v40 > a4)
      {
LABEL_62:
        v37 = v51;
        v39 = v50;
        goto LABEL_63;
      }

      v52 = this[1];
      v53 = *v46;
      v68 = 0;
      v39 = DgnIdFactory<NetNBestTraceNoTime<unsigned int>,1024u>::createRawData(*&v52 + 302936, &v68);
      v54 = v68;
      *(v68 + 4) = v50;
      *(v54 + 8) = v47;
      *v54 = v53;
      *(v54 + 12) = v49;
      v37 = v51;
LABEL_63:
      v38 = v62 >> 1;
LABEL_64:
      ++v31;
      if (!--v41)
      {
        v32 = this[1];
        goto LABEL_68;
      }
    }
  }

LABEL_67:
  v37 = 0;
  LODWORD(v39) = -1;
  v40 = 20000;
LABEL_68:
  ++*(*&v32 + 302584);
  *(*&v32 + 302608) += v67;
  if (v40 <= a4)
  {
    this[42].i16[0] = v40 + (this[42].i32[1] >> 8);
    v55 = *v37;
    if (this[14].i8[2] == 1)
    {
      this[41].i32[0] = v55;
      this[41].i32[1] = v39;
    }

    else
    {
      v56 = v37[1];
      this[41].i32[0] = v55;
      this[41].i32[1] = v56 + this[43].i16[1];
    }
  }

  else
  {
    this[42].i32[0] = 1310740000;
  }

  this[13].i32[0] = v66;
  result = (*(*this + 328))(this, v9);
  this[13].i16[3] = result;
  return result;
}

uint64_t SyncNet::thresholdNetInternal(SyncNet *this, uint64_t a2, int a3)
{
  if (*(this + 280) == 1)
  {
    *(this + 38) = *(this + 125) <= a3;
    (*(*this + 320))(this, *(this + 113), a2);
  }

  else
  {
    *(this + 38) = 0;
  }

  if (*(this + 55) <= a3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *(this + 55) = 20000;
  }

  *(this + 26) = v5;

  return SyncNet::maybeDoCallback(this, a3);
}

uint64_t SyncNet::maybeDoCallback(uint64_t this, int a2)
{
  v2 = *(this + 176);
  if (v2 == 3)
  {
    v3 = *(this + 336);
  }

  else
  {
    if (v2 != 2)
    {
      return this;
    }

    v3 = *(*(this + 320) + 24 * (*(*(this + 320) + 10) - 1) + 24);
  }

  if (v3 <= a2)
  {
    return (*(this + 160))(*(this + 168));
  }

  return this;
}

uint64_t SyncNet::calcNumActiveNodes(SyncNet *this, int a2)
{
  v4 = *(this + 38);
  if (*(this + 88) <= a2)
  {
    v5 = *(this + 78);
    if (v5)
    {
      v6 = *(this + 38);
      do
      {
        v7 = *v6++;
        v4 = Sequence::calcNumActiveNodes(v7, a2) + v4;
        --v5;
      }

      while (v5);
    }
  }

  if (*(this + 89) <= a2)
  {
    v4 = Sequence::calcNumActiveNodes(*(this + 40), a2) + v4;
  }

  if (*(this + 71) <= a2)
  {
    v8 = *(this + 56);
    if (v8)
    {
      v9 = *(this + 27);
      do
      {
        v10 = *v9++;
        v4 = Sequence::calcNumActiveNodes(v10, a2) + v4;
        --v8;
      }

      while (v8);
    }
  }

  return v4;
}

uint64_t SyncNet::addEpsilonNode(SyncNet *this)
{
  if (*(this + 360))
  {
    *(this + 361) = 1;
    return *(this + 1) + 302796;
  }

  else
  {
    *(this + 360) = 1;
    return this + 328;
  }
}

void *SyncNet::addArc(void *this, const Node *a2, Node *a3)
{
  if (this + 41 != a3)
  {
    v3 = (this[1] + 302796);
    if (v3 != a3)
    {
      if (v3 == a2)
      {
        v4 = this[40];
        if (v4)
        {
          a2 = (v4 + 24 * (*(v4 + 10) - 1) + 16);
        }

        else
        {
          a2 = (this + 41);
        }
      }

      if (this + 30 == a3)
      {
        v5 = this + 33;
      }

      else
      {
        v5 = (a3 - 16);
      }

      return PredStruct::addPred(v5, a2);
    }
  }

  return this;
}

uint64_t *SyncNet::addNodesSequential(uint64_t a1, Sequence *this, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = *(a1 + 296);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 10) = this;
      if (this)
      {
        v6 = v5 + 24;
        v7 = this;
        do
        {
          *(v6 - 8) = 0x100000001;
          *v6 = 1310740000;
          *(v6 + 4) = 0;
          *(v6 + 12) = -65536;
          v6 += 24;
          --v7;
        }

        while (v7);
        v8 = 24 * this;
      }

      else
      {
        v8 = 0;
      }

      v12 = *(a1 + 304);
      *(a1 + 296) += v8 + 16;
      v13 = *(a1 + 312);
      *(v12 + 8 * v13) = v5;
      *(a1 + 312) = v13 + 1;
      return (v5 + 16);
    }

    else
    {
      v10 = Sequence::newSequence(this);
      v11 = v10;
      v9 = v10 + 2;
      if (a3 == 3)
      {
        v14 = *(a1 + 224);
        if (v14 == *(a1 + 228))
        {
          DgnPrimArray<unsigned long long>::reallocElts(a1 + 216, 1, 1);
          v14 = *(a1 + 224);
        }

        *(*(a1 + 216) + 8 * v14) = v11;
        *(a1 + 224) = v14 + 1;
      }

      else if (a3 == 2)
      {
        *(a1 + 320) = v10;
      }
    }
  }

  else
  {
    v9 = (a1 + 240);
    *(a1 + 280) = 1;
  }

  return v9;
}

uint64_t *SyncNet::preallocEndSequences(SyncNet *this, unsigned int a2, unsigned int a3)
{
  result = MemChunkAlloc((24 * *(*(*(*(this + 1) + 16) + 16) + a2) + 16) * a3, 0);
  *(this + 36) = result;
  *(this + 37) = result;
  v6 = *(this + 79);
  if (a3 > v6)
  {

    return DgnPrimArray<unsigned long long>::reallocElts(this + 304, a3 - v6, 0);
  }

  return result;
}

uint64_t SyncNet::estimateActivePelsThisFrame(SyncNet *this, BitArray *a2)
{
  result = BaseSyncNet::estimateActivePelsThisFrame(this, a2);
  if (*(this + 360) == 1)
  {
    v5 = *(this + 175);
    if (v5 != 0xFFFF)
    {
      *(*a2 + ((v5 >> 3) & 0x1FFC)) |= 1 << v5;
    }
  }

  v6 = *(this + 78);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 38);
    do
    {
      v9 = *(v8 + 8 * v7);
      if (*(v9 + 10))
      {
        v10 = 0;
        v11 = *a2;
        v12 = (v9 + 38);
        do
        {
          v13 = *v12;
          v12 += 12;
          v14 = (v13 >> 3) & 0x1FFC;
          result = *(v11 + v14);
          *(v11 + v14) = (1 << v13) | result;
          ++v10;
        }

        while (v10 < *(v9 + 10));
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v15 = *(this + 40);
  if (v15 && *(v15 + 10))
  {
    v16 = 0;
    v17 = *a2;
    v18 = (v15 + 38);
    do
    {
      v19 = *v18;
      v18 += 12;
      *(v17 + ((v19 >> 3) & 0x1FFC)) |= 1 << v19;
      ++v16;
    }

    while (v16 < *(v15 + 10));
  }

  return result;
}

uint64_t BaseSyncNet::estimateActivePelsThisFrame(BaseSyncNet *this, BitArray *a2)
{
  result = AcousticNet::estimateActivePelsThisFrame(this, a2);
  if (*(this + 280) == 1)
  {
    *(*a2 + ((*(this + 131) >> 3) & 0x1FFC)) |= 1 << *(this + 131);
  }

  v5 = *(this + 56);
  if (v5)
  {
    v6 = 0;
    v7 = *(this + 27);
    do
    {
      v8 = *(v7 + 8 * v6);
      if (*(v8 + 10))
      {
        v9 = 0;
        v10 = *a2;
        v11 = (v8 + 38);
        do
        {
          v12 = *v11;
          v11 += 12;
          v13 = (v12 >> 3) & 0x1FFC;
          result = *(v10 + v13);
          *(v10 + v13) = (1 << v12) | result;
          ++v9;
        }

        while (v9 < *(v8 + 10));
      }

      ++v6;
    }

    while (v6 != v5);
  }

  return result;
}

void Lookahead::~Lookahead(Lookahead *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 104);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(this + 88);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 72);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 16);
  DgnArray<DgnArray<PositionClu>>::releaseAll(this);
}

void Lookahead::printSize(Lookahead *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 149);
  if (v74)
  {
    v13 = v73;
  }

  else
  {
    v13 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26288F85C, a3, byte_26288F85C, v13);
  DgnString::~DgnString(&v73);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26288F85C);
  v15 = sizeObject<DgnArray<PositionClu>>(this, 0);
  v16 = sizeObject<DgnArray<PositionClu>>(this, 1);
  v17 = sizeObject<DgnArray<PositionClu>>(this, 3);
  v18 = (a3 + 1);
  v72 = a3;
  v19 = (34 - a3);
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 150);
  if (v74)
  {
    v21 = v73;
  }

  else
  {
    v21 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v18, byte_26288F85C, v19, v19, v21, v15, v16, v17);
  DgnString::~DgnString(&v73);
  *a4 += v15;
  *a5 += v16;
  *a6 += v17;
  v22 = sizeObject<DgnPrimArray<unsigned char>>(this + 16, 0);
  v23 = sizeObject<DgnPrimArray<unsigned char>>(this + 16, 1);
  v73 = 0;
  v74 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v73);
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 151);
  if (v74)
  {
    v25 = v73;
  }

  else
  {
    v25 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v18, byte_26288F85C, v19, v19, v25, v22, v23, 0);
  DgnString::~DgnString(&v73);
  *a4 += v22;
  *a5 += v23;
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 153);
  if (v74)
  {
    v27 = v73;
  }

  else
  {
    v27 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v18, byte_26288F85C, v19, v19, v27, 8, 8, 0);
  DgnString::~DgnString(&v73);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 154);
  if (v74)
  {
    v29 = v73;
  }

  else
  {
    v29 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v18, byte_26288F85C, v19, v19, v29, 4, 4, 0);
  DgnString::~DgnString(&v73);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 155);
  if (v74)
  {
    v31 = v73;
  }

  else
  {
    v31 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v18, byte_26288F85C, v19, v19, v31, 4, 4, 0);
  DgnString::~DgnString(&v73);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 156);
  if (v74)
  {
    v33 = v73;
  }

  else
  {
    v33 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v18, byte_26288F85C, v19, v19, v33, 4, 4, 0);
  DgnString::~DgnString(&v73);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 4;
  }

  else
  {
    v34 = 8;
  }

  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 157);
  if (v74)
  {
    v36 = v73;
  }

  else
  {
    v36 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v18, byte_26288F85C, v19, v19, v36, v34, v34, 0);
  DgnString::~DgnString(&v73);
  *a4 += v34;
  *a5 += v34;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 4;
  }

  else
  {
    v37 = 8;
  }

  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 158);
  if (v74)
  {
    v39 = v73;
  }

  else
  {
    v39 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v18, byte_26288F85C, v19, v19, v39, v37, v37, 0);
  DgnString::~DgnString(&v73);
  *a4 += v37;
  *a5 += v37;
  v40 = CombineTable::sizeObject(this + 72, 0);
  v41 = CombineTable::sizeObject(this + 72, 1);
  v42 = CombineTable::sizeObject(this + 72, 3);
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 160);
  if (v74)
  {
    v44 = v73;
  }

  else
  {
    v44 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v18, byte_26288F85C, v19, v19, v44, v40, v41, v42);
  DgnString::~DgnString(&v73);
  *a4 += v40;
  *a5 += v41;
  *a6 += v42;
  v45 = sizeObject<DgnArray<DgnPrimArray<unsigned char>>>(this + 88, 0);
  v46 = sizeObject<DgnArray<DgnPrimArray<unsigned char>>>(this + 88, 1);
  v47 = sizeObject<DgnArray<DgnPrimArray<unsigned char>>>(this + 88, 3);
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 162);
  if (v74)
  {
    v49 = v73;
  }

  else
  {
    v49 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v48, v18, byte_26288F85C, v19, v19, v49, v45, v46, v47);
  DgnString::~DgnString(&v73);
  *a4 += v45;
  *a5 += v46;
  *a6 += v47;
  v50 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v50 = 8;
  }

  v51 = *(this + 28);
  if (v51 <= 0)
  {
    v52 = 0;
  }

  else
  {
    v52 = 4 * v51;
  }

  v53 = v52 + v50;
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 164);
  if (v74)
  {
    v55 = v73;
  }

  else
  {
    v55 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v18, byte_26288F85C, v19, v19, v55, v53, v53, 0);
  DgnString::~DgnString(&v73);
  *a4 += v53;
  *a5 += v53;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v56 = 12;
  }

  else
  {
    v56 = 16;
  }

  v57 = *(this + 32);
  v58 = *(this + 33);
  if (v58 >= v57)
  {
    v59 = 0;
    if (v57 > 0)
    {
      v56 += 4 * (v57 - 1) + 4;
    }

    v60 = v56 + 4 * (v58 - v57);
  }

  else
  {
    v59 = 4 * v57;
    v60 = v56;
  }

  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 165);
  if (v74)
  {
    v62 = v73;
  }

  else
  {
    v62 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v18, byte_26288F85C, v19, v19, v62, v60, v56, v59);
  DgnString::~DgnString(&v73);
  *a4 += v60;
  *a5 += v56;
  *a6 += v59;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 12;
  }

  else
  {
    v63 = 16;
  }

  v64 = *(this + 36);
  v65 = *(this + 37);
  if (v65 >= v64)
  {
    v66 = 0;
    if (v64 > 0)
    {
      v63 += 4 * (v64 - 1) + 4;
    }

    v67 = v63 + 4 * (v65 - v64);
  }

  else
  {
    v66 = 4 * v64;
    v67 = v63;
  }

  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 166);
  if (v74)
  {
    v69 = v73;
  }

  else
  {
    v69 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v18, byte_26288F85C, v19, v19, v69, v67, v63, v66);
  DgnString::~DgnString(&v73);
  *a4 += v67;
  *a5 += v63;
  *a6 += v66;
  getShipObjectSizeDescription(&v73, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/lookah.cpp", 167);
  if (v74)
  {
    v71 = v73;
  }

  else
  {
    v71 = byte_26288F85C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v72, byte_26288F85C, (35 - v72), (35 - v72), v71, *a4, *a5, *a6);
  DgnString::~DgnString(&v73);
}

void sub_2627FF780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnArray<PositionClu>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v12 = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v11);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        do
        {
          v5 += sizeObject<ScoreFixArray>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v5 += v4 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnArray<DgnVector>::releaseAll(v10);
  return v5;
}

uint64_t sizeObject<DgnArray<DgnPrimArray<unsigned char>>>(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        do
        {
          v5 += sizeObject<DgnPrimArray<unsigned char>>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v5 += v4 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v10);
  return v5;
}

void (***Lookahead::saveLookaheadBinary(Lookahead *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x3Fu, a4, "MRPLB!? ", 24, 5);
  v10 = 0;
  writeObject(v7, this + 10, &v10);
  writeObject(v7, this + 11, &v10);
  writeObject(v7, this + 12, &v10);
  writeObject<unsigned int>(v7, this + 120, &v10);
  writeObject(v7, this + 4, &v10);
  writeObject<DgnPrimArray<unsigned char>>(v7, this + 16, &v10);
  writeObject<DgnArray<DgnPrimArray<unsigned char>>>(v7, this + 88, &v10);
  writeObject<unsigned int>(v7, this + 104, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 63, v10);
  return DgnDelete<DgnStream>(v7);
}

uint64_t writeObject<DgnArray<DgnPrimArray<unsigned char>>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<DgnPrimArray<unsigned char>>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void Lookahead::saveLookaheadText(Lookahead *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v41);
  DgnTextFileWriter::openDgnTextFileWriter(v41, a2, 65, a3);
  v39 = 0;
  v40 = 0;
  DgnTextFile::legalDgnTextFileVersions(v41, sPLT_Versions, &v39);
  DgnTextFileWriter::setFileType(v41, "PrefiltererLookaheadText", (v39 + 8 * (v40 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "SmoothWindowFrames", *(this + 32));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "ModelDimension", *(this + 10));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "NumberOfPhonemes", *(this + 11));
  DgnTextFileWriter::setHeaderFieldUnsigned(v41, "NumberOfMixtureComponents", *(this + 12));
  *v37 = 0;
  v38 = 0;
  v34 = 0;
  HIDWORD(v38) = realloc_array(0, &v34, 0x60uLL, 0, 0, 1) >> 4;
  *v37 = v34;
  v6 = v38;
  if (v38 <= 6)
  {
    if (v38 != 6)
    {
      v8 = v38 + 1;
      v9 = 16 * v38;
      do
      {
        DgnString::DgnString((*v37 + v9));
        v9 += 16;
      }

      while (v8++ != 6);
    }
  }

  else if (v38 >= 7)
  {
    v7 = 16 * v38 - 16;
    do
    {
      --v6;
      DgnString::~DgnString(*v37 + v7);
      v7 -= 16;
    }

    while (v6 > 6);
  }

  LODWORD(v38) = 6;
  v42 = 0;
  v11 = realloc_array(0, &v42, 0x18uLL, 0, 0, 1);
  v34 = v42;
  v35 = 6;
  v36 = v11 >> 2;
  DgnString::operator=(*v37, "TableName");
  *v34 = 0;
  DgnString::operator=((*v37 + 16), "Phoneme");
  *(v34 + 1) = 0;
  DgnString::operator=((*v37 + 32), "UnsVal1");
  *(v34 + 2) = 3;
  DgnString::operator=((*v37 + 48), "UnsVal2");
  *(v34 + 3) = 3;
  DgnString::operator=((*v37 + 64), "UnsVal3");
  *(v34 + 4) = 3;
  DgnString::operator=((*v37 + 80), "UnsVal4");
  *(v34 + 5) = 3;
  DgnTextFileWriter::setLineFieldFormat(v41, &v34, v37);
  if (*(this + 32))
  {
    v12 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v41, 0, "FrameWeight");
      DgnTextFileWriter::setLineFieldValue(v41, 1u, byte_26288F85C);
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 2u, v12);
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 3u, *(*(this + 15) + 4 * v12));
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 4u, 0);
      DgnTextFileWriter::setLineFieldUnsignedValue(v41, 5u, 0);
      DgnTextFileWriter::writeNextLine(v41);
      ++v12;
    }

    while (v12 < *(this + 32));
  }

  v13 = *(this + 28);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = *(*(this + 13) + 4 * v14);
      if (v16 != -1)
      {
        v17 = *(*(this + 11) + 16 * v16 + 8);
        if (v17)
        {
          v33 = v14;
          v18 = 0;
          LODWORD(v19) = *(this + 10);
          do
          {
            if (v19)
            {
              v20 = 0;
              for (i = 0; i < v19; ++i)
              {
                DgnTextFileWriter::setLineFieldValue(v41, 0, "PDF");
                DgnTextFileWriter::setLineFieldValue(v41, 1u, byte_26288F85C);
                DgnTextFileWriter::setLineFieldUnsignedValue(v41, 2u, v15);
                DgnTextFileWriter::setLineFieldUnsignedValue(v41, 3u, i);
                v22 = *(*(*(this + 11) + 16 * v16) + 16 * v18);
                v23 = *(v22 + v20 + 1);
                DgnTextFileWriter::setLineFieldUnsignedValue(v41, 4u, *(v22 + v20));
                DgnTextFileWriter::setLineFieldUnsignedValue(v41, 5u, v23);
                DgnTextFileWriter::writeNextLine(v41);
                v19 = *(this + 10);
                v20 += 2;
              }
            }

            ++v15;
            ++v18;
          }

          while (v18 != v17);
          v13 = *(this + 28);
          v14 = v33;
        }
      }

      ++v14;
    }

    while (v14 < v13);
    if (v13)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = *(*(this + 13) + 4 * v24);
        if (v27 != -1)
        {
          v28 = *(*(this + 11) + 16 * v27 + 8);
          if (v28)
          {
            v29 = 0;
            v30 = 16 * v27;
            do
            {
              DgnTextFileWriter::setLineFieldValue(v41, 0, "Pel");
              v31 = *(*(this + 8) + 8) + 16 * v24;
              if (*(v31 + 8))
              {
                v32 = *v31;
              }

              else
              {
                v32 = byte_26288F85C;
              }

              DgnTextFileWriter::setLineFieldValue(v41, 1u, v32);
              DgnTextFileWriter::setLineFieldUnsignedValue(v41, 2u, v25);
              DgnTextFileWriter::setLineFieldUnsignedValue(v41, 3u, v26 + v29);
              DgnTextFileWriter::setLineFieldUnsignedValue(v41, 4u, *(*(*(this + 2) + v30) + v29));
              DgnTextFileWriter::setLineFieldUnsignedValue(v41, 5u, 0);
              DgnTextFileWriter::writeNextLine(v41);
              ++v29;
            }

            while (v28 != v29);
            v13 = *(this + 28);
            v26 += v29;
          }

          ++v25;
        }

        ++v24;
      }

      while (v24 < v13);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
  DgnArray<DgnString>::releaseAll(v37);
  DgnIArray<Utterance *>::~DgnIArray(&v39);
  DgnTextFileWriter::~DgnTextFileWriter(v41);
}

void sub_2628000C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileWriter::~DgnTextFileWriter(va2);
  _Unwind_Resume(a1);
}

void Lookahead::saveLookahead(Lookahead *this, DFile *a2, DFileChecksums *a3, int a4, int a5)
{
  if (a4)
  {
    Lookahead::saveLookaheadText(this, a2, a5);
  }

  else
  {
    Lookahead::saveLookaheadBinary(this, a2, a3, a5);
  }
}

uint64_t Lookahead::scoreOneForLookahead(uint64_t a1, unsigned __int8 **a2, unsigned int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *a1 + 16 * a3;
  v4 = (*(a1 + 16) + 16 * a3);
  v5 = *(v3 + 8);
  v6 = *(*(a1 + 56) + 56);
  memset(v27, 0, sizeof(v27));
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *a2;
    v9 = v27;
    v10 = *(a1 + 40);
    do
    {
      v11 = *v8++;
      *v9++ = v6 + 2 * v11;
      --v10;
    }

    while (v10);
    v12 = *v4;
    v13 = **v4;
    v14 = *v3;
    v15 = v7 - 1;
    if (v7 - 1 < 0)
    {
      v7 = 0;
      v16 = 0;
    }

    else
    {
      v16 = 0;
      for (i = (v7 - 1); i != -1; --i)
      {
        v16 += *(*(v27 + i) + 2 * *(*v14 + 2 * i));
      }

      v7 = 1;
    }
  }

  else
  {
    v16 = 0;
    v12 = *v4;
    v13 = **v4;
    v14 = *v3;
    v15 = -1;
  }

  v18 = (v16 + v13);
  if (v5 >= 2)
  {
    for (j = 1; j != v5; ++j)
    {
      v20 = 0;
      if (v7)
      {
        for (k = v15; k != -1; --k)
        {
          v20 += *(*(v27 + k) + 2 * *(v14[2 * j] + 2 * k));
        }
      }

      v22 = v20 + *(v12 + j);
      v24 = v22 - v18;
      v23 = v22 - v18 < 0;
      if (v22 >= v18)
      {
        v18 = v18;
      }

      else
      {
        v18 = v22;
      }

      if (v23)
      {
        v25 = -v24;
      }

      else
      {
        v25 = v24;
      }

      if (v25 < *(a1 + 80))
      {
        v18 = (v18 - *(*(a1 + 72) + 4 * v25));
      }
    }
  }

  return v18;
}

void *DgnArray<DgnArray<PositionClu>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = v2 + 1;
    v4 = 16 * v2 - 16;
    do
    {
      DgnArray<DgnVector>::releaseAll(*a1 + v4);
      --v3;
      v4 -= 16;
    }

    while (v3 > 1);
  }

  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void TCondition::TCondition(TCondition *this, int **a2, unint64_t a3, TLexicon *a4)
{
  TCondition::setEnum(this, a2, a3);
  *(this + 4) = a4;
  *this = 0;
  v7 = *(this + 3);
  if (v7 != 7)
  {
    buildRegExp(a2, a4, v7 == 2);
  }

  if (TFileObject::verify(a2, 0, 0))
  {
    std::string::basic_string[abi:ne200100]<0>(v13, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v14) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v13[0], v13[1]);
    }

    else
    {
      *&__p[8] = *v13;
      v16 = v14;
    }

    *__p = &unk_287528000;
    if (v16 >= 0)
    {
      v9 = &__p[8];
    }

    else
    {
      v9 = *&__p[8];
    }

    conditionalAssert(v9, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 120);
    *__p = byte_287529580;
    if (SHIBYTE(v16) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v11 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v11, *__p, *&__p[8]);
    }

    else
    {
      v12 = *__p;
      exception[3] = *&__p[16];
      *&v11->__r_.__value_.__l.__data_ = v12;
    }

    *exception = &unk_287528000;
  }

  __p[0] = 0;
  v8 = a2[3];
  {
    operator new();
  }

  *this = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v8, __p);
}

void sub_2628005A4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  MEMORY[0x26672B1B0](v25, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t TCondition::setEnum(TCondition *this, const TFileObject *a2, unint64_t a3)
{
  v6 = 0;
  v7 = *(a2 + 1);
  if (a3 > 1)
  {
    v8 = 8;
  }

  else
  {
    v8 = 9;
  }

  *(this + 1) = 0x900000004;
  while (1)
  {
    v9 = *(&TCondition::setEnum(TFileObject const*,unsigned long)::ppszSource + v6);
    v10 = wcslen(v9);
    if (!wcsncmp(v7, v9, v10))
    {
      break;
    }

    if (v8 == ++v6)
    {
      goto LABEL_7;
    }
  }

  *(this + 3) = v6;
  if (a3 <= 1 && v6 == 8)
  {
    tknPrintf("Warning: Pron conditions are no longer supported in munge-map rules!\n", v11);
    LODWORD(v6) = *(this + 3);
  }

  v14 = &v7[wcslen(v9)];
  if (v6 >= 2 && v6 != 7)
  {
    if (v6 == 9)
    {
LABEL_7:
      loggableFileObject(a2);
      if (__p[23] >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = *__p;
      }

      tknPrintf("Error: %sInvalid attribute\n", v12, v13);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v30, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v31) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v30[0], v30[1]);
      }

      else
      {
        *&__p[8] = *v30;
        v33 = v31;
      }

      *__p = &unk_287528000;
      if (v33 >= 0)
      {
        v20 = &__p[8];
      }

      else
      {
        v20 = *&__p[8];
      }

      conditionalAssert(v20, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 177);
      *__p = byte_287529580;
      if (SHIBYTE(v33) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(v30[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v22 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v22, *__p, *&__p[8]);
      }

      else
      {
        v23 = *__p;
        exception[3] = *&__p[16];
        *&v22->__r_.__value_.__l.__data_ = v23;
      }

      *exception = &unk_287528000;
    }

    v15 = 0;
    v14 += 2 * (wcsncmp(v14, dword_26288F9A0, 2uLL) == 0);
    while (1)
    {
      v16 = *(&TCondition::setEnum(TFileObject const*,unsigned long)::ppszTokenPos + v15);
      v17 = wcslen(v16);
      if (!wcsncmp(v14, v16, v17))
      {
        break;
      }

      if (++v15 == 5)
      {
        goto LABEL_25;
      }
    }

    *(this + 2) = v15;
    v14 += wcslen(v16);
  }

LABEL_25:
  v18 = &v14[2 * (wcsncmp(v14, dword_26288FA64, 2uLL) == 0)];
  *(this + 16) = 0;
  result = wcsncmp(v18, dword_26288FA70, 3uLL);
  if (!result)
  {
    v18 += 3;
    *(this + 16) = 1;
  }

  if (*v18)
  {
    loggableFileObject(a2);
    if (__p[23] >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = *__p;
    }

    tknPrintf("Error: %sInvalid attribute\n", v24, v25);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v30, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v30[0], v30[1]);
    }

    else
    {
      *&__p[8] = *v30;
      v33 = v31;
    }

    *__p = &unk_287528000;
    if (v33 >= 0)
    {
      v26 = &__p[8];
    }

    else
    {
      v26 = *&__p[8];
    }

    conditionalAssert(v26, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 223);
    *__p = byte_287529580;
    if (SHIBYTE(v33) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    v27 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v27 = byte_287529580;
    v28 = (v27 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v28, *__p, *&__p[8]);
    }

    else
    {
      v29 = *__p;
      v27[3] = *&__p[16];
      *&v28->__r_.__value_.__l.__data_ = v29;
    }

    *v27 = &unk_287528000;
  }

  return result;
}

void sub_262800B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v26 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v25);
  goto LABEL_6;
}

void TCondition::~TCondition(TCondition *this)
{
  v1 = *(this + 3);
  if (v1)
  {
    TRegExp::~TRegExp(v1);
    MEMORY[0x26672B1B0]();
  }
}

void TCondition::getSource(uint64_t a1, uint64_t a2, int *a3, int *a4, uint64_t a5)
{
  TBuffer<wchar_t>::resize(a5, 0);
  v10 = *(a1 + 12);
  if (v10 <= 2)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        if (v10 == 2)
        {
          v12 = *(a2 + 48);
          if (v12 != 2 && v12 != 5)
          {
            v13 = *(a2 + 56);

            TWord::getTokenName(v13, a5);
          }
        }

        return;
      }

      v25 = 0;
      v18 = *(a5 + 16);
        ;
      }

      v20 = v25 - 1;
      v21 = a5;
      v22 = a4;
    }

    else
    {
      v17 = 0;
      v18 = *(a5 + 16);
        ;
      }

      v20 = v17 - 1;
      v21 = a5;
      v22 = a3;
    }

    TBuffer<wchar_t>::insert(v21, v18, v22, v20);
  }

  else
  {
    if (v10 <= 4)
    {
      if (v10 != 3)
      {
        v11 = *(a2 + 56);

        TWord::getCategoryTag(v11, a5);
        return;
      }

      v23 = *(a2 + 48);
      if (v23 == 2 || v23 == 5)
      {
        return;
      }

      goto LABEL_29;
    }

    if (v10 == 6)
    {
      if (*(a2 + 48) != 5)
      {
        return;
      }

LABEL_29:
      v24 = *(a2 + 56);

      TWord::getWrittenForm(v24, a5);
      return;
    }

    if (v10 == 5)
    {
      v14 = *(*(a2 + 16) + 16);
      if (v14)
      {
        v15 = *(*(a2 + 24) + 24);
        if (v15)
        {
          v16 = *(a1 + 32) + 240;

          TLocaleInfo::multiByteToUnicode(v16, v14, v15 - v14, a5);
        }
      }
    }
  }
}

uint64_t TCondition::test(uint64_t a1, uint64_t a2, int *a3, int *a4)
{
  if (*(a1 + 12) == 7)
  {
    LOBYTE(v5) = rand() < 0x7FFFFFFFLL * *a1 / 0x64uLL;
    return v5 & 1;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  collectEdge(a2, *(a1 + 8), &v19);
  v8 = v19;
  v9 = v20;
  if (v20 == v19)
  {
    LOBYTE(v5) = 0;
    if (!v19)
    {
      return v5 & 1;
    }

    goto LABEL_21;
  }

  v10 = 0;
  v5 = 0;
  do
  {
    v11 = v8[v10];
    if (*(v11 + 48) != 3)
    {
      v15 = v17;
      v16 = xmmword_26286B6F0;
      v18 = 1;
      TCondition::getSource(a1, v11, a3, a4, &v15);
      if (*(&v16 + 1))
      {
        v12 = *(a1 + 24);
        if (*(&v16 + 1) >= v16)
        {
          if (v18)
          {
            v22 = 0;
            TBuffer<wchar_t>::insert(&v15, *(&v16 + 1), &v22, 1uLL);
            v13 = v15;
            --*(&v16 + 1);
          }

          else
          {
            v13 = v15;
            if (v16)
            {
              v15[v16 - 1] = 0;
            }
          }
        }

        else
        {
          v13 = v15;
          v15[*(&v16 + 1)] = 0;
        }

        v5 |= TRegExp::match(v12, v13, 0) ^ *(a1 + 16);
      }

      if (v18 == 1 && v15 != v17 && v15)
      {
        MEMORY[0x26672B1B0]();
      }

      v8 = v19;
      v9 = v20;
    }

    ++v10;
  }

  while (v10 < v9 - v8);
  if (v8)
  {
LABEL_21:
    v20 = v8;
    operator delete(v8);
  }

  return v5 & 1;
}

void sub_262801008(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void collectEdge(uint64_t a1, int a2, uint64_t a3)
{
  v11 = a1;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        OutEdge = TVertex::getInEdge(*(a1 + 16));
        if (OutEdge)
        {
LABEL_9:
          std::vector<TWord const*>::push_back[abi:ne200100](a3, &OutEdge);
          v4 = OutEdge;
          while (1)
          {
            v4 = *v4;
            if (!v4)
            {
              break;
            }

            if ((*(v4 + 32) & 1) == 0)
            {
              OutEdge = v4;
              goto LABEL_9;
            }
          }
        }
      }
    }

    else
    {
      v8 = TVertex::getInEdge(*(a1 + 16));
      if (v8)
      {
        v9 = v8;
LABEL_26:
        collectEdge(v9, 1, a3);
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if ((*(v9 + 32) & 1) == 0)
          {
            goto LABEL_26;
          }
        }
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        OutEdge = TVertex::getOutEdge(*(a1 + 24));
        if (OutEdge)
        {
LABEL_14:
          std::vector<TWord const*>::push_back[abi:ne200100](a3, &OutEdge);
          v5 = OutEdge;
          while (1)
          {
            v5 = *(v5 + 8);
            if (!v5)
            {
              break;
            }

            if ((*(v5 + 32) & 1) == 0)
            {
              OutEdge = v5;
              goto LABEL_14;
            }
          }
        }

        break;
      case 3:
        v6 = TVertex::getOutEdge(*(a1 + 24));
        if (v6)
        {
          v7 = v6;
LABEL_20:
          collectEdge(v7, 2, a3);
          while (1)
          {
            v7 = *(v7 + 8);
            if (!v7)
            {
              break;
            }

            if ((*(v7 + 32) & 1) == 0)
            {
              goto LABEL_20;
            }
          }
        }

        break;
      case 4:
        std::vector<TWord const*>::push_back[abi:ne200100](a3, &v11);
        break;
    }
  }
}

void TRule::TRule(TRule *this, const TFileObject *a2, TLexicon *a3, TAllocator *a4, unint64_t a5)
{
  *(this + 32) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  std::vector<TState *>::reserve(this, 0xAuLL);
  for (i = *(a2 + 3); i; i = *(i + 16))
  {
    if (wcscmp(*(i + 8), dword_26288FA80))
    {
      operator new();
    }

    if (*(this + 3))
    {
      loggableFileObject(i);
      v11 = __p;
      if (__p[23] < 0)
      {
        v11 = *__p;
      }

      tknPrintf("Error: %sRedefinition\n", v10, v11);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v22, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v22[0], v22[1]);
      }

      else
      {
        *&__p[8] = *v22;
        v25 = v23;
      }

      *__p = &unk_287528000;
      if (v25 >= 0)
      {
        v12 = &__p[8];
      }

      else
      {
        v12 = *&__p[8];
      }

      conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 417);
      *__p = byte_287529580;
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *exception = byte_287529580;
      v14 = (exception + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v14, *__p, *&__p[8]);
      }

      else
      {
        v15 = *__p;
        exception[3] = *&__p[16];
        *&v14->__r_.__value_.__l.__data_ = v15;
      }

      *exception = &unk_287528000;
    }

    *(this + 3) = buildReplaceObject(i, a3, a4);
    *(this + 32) = 1;
  }

  if (*this == *(this + 1))
  {
    loggableFileObject(a2);
    if (__p[23] >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = *__p;
    }

    tknPrintf("Error: %sRule is missing a condition\n", v16, v17);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(v22, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v22[0], v22[1]);
    }

    else
    {
      *&__p[8] = *v22;
      v25 = v23;
    }

    *__p = &unk_287528000;
    if (v25 >= 0)
    {
      v18 = &__p[8];
    }

    else
    {
      v18 = *&__p[8];
    }

    conditionalAssert(v18, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/tkn/mungemapmgr.cpp", 440);
    *__p = byte_287529580;
    if (SHIBYTE(v25) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    v19 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v19 = byte_287529580;
    v20 = (v19 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v20, *__p, *&__p[8]);
    }

    else
    {
      v21 = *__p;
      v19[3] = *&__p[16];
      *&v20->__r_.__value_.__l.__data_ = v21;
    }

    *v19 = &unk_287528000;
  }
}