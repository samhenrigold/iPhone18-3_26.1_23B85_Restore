BOOL FileSpec::isValid(char **this)
{
  if (*(this + 2))
  {
    v1 = *this;
    if (!*this)
    {
      return 0;
    }
  }

  else
  {
    v1 = &byte_262899963;
  }

  return *v1 != 0;
}

uint64_t FileSpec::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    a2 = 0;
  }

  return sizeObject(a1, a2);
}

uint64_t DgnStream::DgnStream(uint64_t a1, int a2, char *a3)
{
  *a1 = &unk_287523308;
  v5 = (a1 + 16);
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = "unnamed stream";
  }

  FileSpec::FileSpec(v5, v6);
  *(a1 + 32) = 256;
  *(a1 + 8) = a2;
  return a1;
}

void DgnStream::printSize(DgnStream *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dstream.cpp", 65);
  if (v25)
  {
    v13 = v24;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v24);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dstream.cpp", 67);
  if (v25)
  {
    v16 = v24;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v16, 4, 4, 0);
  DgnString::~DgnString(&v24);
  *a4 += 4;
  *a5 += 4;
  v17 = FileSpec::sizeObject(this + 16, 0);
  v18 = FileSpec::sizeObject(this + 16, 1);
  v19 = FileSpec::sizeObject(this + 16, 3);
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dstream.cpp", 69);
  if (v25)
  {
    v21 = v24;
  }

  else
  {
    v21 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v21, v17, v18, v19);
  DgnString::~DgnString(&v24);
  *a4 += v17;
  *a5 += v18;
  *a6 += v19;
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dstream.cpp", 71);
  if (v25)
  {
    v23 = v24;
  }

  else
  {
    v23 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, a3, &byte_262899963, (35 - a3), (35 - a3), v23, *a4, *a5, *a6);
  DgnString::~DgnString(&v24);
}

void sub_26277A3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t DgnStream::getLine(DgnStream *this, DgnString *a2, __n128 a3)
{
  if (*(this + 2) == 1)
  {
    if (*(this + 6))
    {
      v5 = *(this + 2);
    }

    else
    {
      v5 = &byte_262899963;
    }

    a3.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dstream.cpp", 77, "dfutil/dstream", 2, "%.500s", v5);
  }

  *(a2 + 2) = 0;
  result = (*(*this + 56))(this, a3);
  if ((result & 1) == 0)
  {
    do
    {
      v9 = 0;
      result = (*(*this + 72))(this, &v9, 1, 0);
      if (!result || v9 == 10)
      {
        break;
      }

      if (v9 == 13)
      {
        result = (*(*this + 64))(this);
        if (result == 10)
        {
          v8 = 0;
          return (*(*this + 72))(this, &v8, 1, 1);
        }

        return result;
      }

      DgnString::appendCharWithGrow(a2, v9);
      result = (*(*this + 56))(this);
    }

    while (!result);
  }

  return result;
}

void DgnStream::streamPrintf(DgnStream *this, const char *a2, ...)
{
  va_start(va, a2);
  v2 = MEMORY[0x28223BE20](this, a2);
  v4 = v3;
  v5 = v2;
  v17 = *MEMORY[0x277D85DE8];
  DgnString::DgnString(&v15);
  v12[0] = 0;
  __size = 0x2000;
  __size_4 = 0;
  Buffer = DgnBuffer::getBuffer(v12, 0);
  for (i = __size; ; i = __size)
  {
    v8 = vsnprintf(Buffer, i, v4, va);
    if ((v8 & 0x80000000) == 0 && v8 < i)
    {
      break;
    }

    Buffer = DgnBuffer::getBuffer(v12, 1);
  }

  if (v16)
  {
    v9 = v15;
  }

  else
  {
    v9 = &byte_262899963;
  }

  if (__size_4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v12;
  }

  v11 = strlen(v10);
  (*(*v5 + 80))(v5, v10, v11);
  DgnString::~DgnString(&v15);
}

void PelScoreCacheData::PelScoreCacheData(PelScoreCacheData *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

uint64_t *PelScoreCacheData::clone(PelScoreCacheData *this)
{
  v2 = MemChunkAlloc(0x18uLL, 0);
  *v2 = 0;
  v2[2] = 0;
  v2[1] = 0;
  *v2 = *this;
  DgnArray<DgnPrimArray<Uns16AndScore>>::copyArraySlice((v2 + 1), this + 1, 0, *(this + 4));
  return v2;
}

void PelScoreCacheData::printSize(PelScoreCacheData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcdat.cpp", 258);
  if (v25)
  {
    v13 = v24;
  }

  else
  {
    v13 = &unk_26288CEAC;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288CEAC, a3, &unk_26288CEAC, v13);
  DgnString::~DgnString(&v24);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288CEAC);
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcdat.cpp", 259);
  if (v25)
  {
    v16 = v24;
  }

  else
  {
    v16 = &unk_26288CEAC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), &unk_26288CEAC, (34 - a3), (34 - a3), v16, 4, 4, 0);
  DgnString::~DgnString(&v24);
  *a4 += 4;
  *a5 += 4;
  v17 = sizeObject<DgnPrimArray<Uns16AndScore>>(this + 8, 0);
  v18 = sizeObject<DgnPrimArray<Uns16AndScore>>(this + 8, 1);
  v19 = sizeObject<DgnPrimArray<Uns16AndScore>>(this + 8, 3);
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcdat.cpp", 261);
  if (v25)
  {
    v21 = v24;
  }

  else
  {
    v21 = &unk_26288CEAC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &unk_26288CEAC, (34 - a3), (34 - a3), v21, v17, v18, v19);
  DgnString::~DgnString(&v24);
  *a4 += v17;
  *a5 += v18;
  *a6 += v19;
  getShipObjectSizeDescription(&v24, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcdat.cpp", 262);
  if (v25)
  {
    v23 = v24;
  }

  else
  {
    v23 = &unk_26288CEAC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, a3, &unk_26288CEAC, (35 - a3), (35 - a3), v23, *a4, *a5, *a6);
  DgnString::~DgnString(&v24);
}

void sub_26277AA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnPrimArray<Uns16AndScore>>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v10[0] = 0;
  v10[1] = 0;
  sizeObject(v11, 2);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 12;
  }

  else
  {
    v4 = 16;
  }

  if (v2 == 3)
  {
    v4 = 0;
  }

  else if ((v2 & 0xFFFFFFFE) != 2)
  {
    v5 = *(a1 + 8);
    v6 = v4;
    if (v5 >= 1)
    {
      v7 = v5 + 1;
      v8 = 16 * v5 - 16;
      v6 = v4;
      do
      {
        v6 += sizeObject<Uns16AndScore>(*a1 + v8, v2);
        --v7;
        v8 -= 16;
      }

      while (v7 > 1);
    }

    if (v2)
    {
      v4 = v6;
    }

    else
    {
      v4 = v6 + v4 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v4;
}

void sub_26277AB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t DgnArray<DgnPrimArray<Uns16AndScore>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v7 + v9);
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(v7 + 8) = 0;
  v10 = *(v7 + 12);
  if (a4 <= v10)
  {
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v7, a4 - v10, 0);
    v11 = *(v7 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    v14 = *a2 + 16 * a3;
    v15 = (*v7 + 16 * v12);
    *v15 = 0;
    v15[1] = 0;
    result = DgnPrimArray<Uns16AndScore>::copyArraySlice(v15, v14, 0, *(v14 + 8));
    v12 = *(v7 + 8) + 1;
    *(v7 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v16 = v12;
      v17 = 16 * v12 - 16;
      do
      {
        --v16;
        result = DgnPrimArray<unsigned int>::~DgnPrimArray(*v7 + v17);
        v17 -= 16;
      }

      while (v16 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  if (v12 < a4)
  {
    v18 = a4 - v12;
    v19 = 16 * v12;
    do
    {
      v20 = (*v7 + v19);
      *v20 = 0;
      v20[1] = 0;
      v19 += 16;
      --v18;
    }

    while (v18);
  }

LABEL_17:
  *(v7 + 8) = a4;
  return result;
}

uint64_t *DgnPrimArray<Uns16AndScore>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = *(result + 3);
  if (a4 <= v8)
  {
    *(result + 2) = a4;
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result, a4 - v8, 0);
    *(v7 + 2) = a4;
  }

  v9 = 0;
  v10 = a4;
  do
  {
    *(*v7 + v9) = *(*a2 + 4 * a3++);
    v9 += 4;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t sizeObject<Uns16AndScore>(uint64_t a1, int a2)
{
  v4 = sizeObject(v14, 2);
  v5 = v4;
  if (a2 == 3)
  {
    v6 = *(a1 + 8);
    v7 = v6 > *(a1 + 12);
    v8 = v4 * v6;
    if (v7)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v9 = 12;
    }

    else
    {
      v9 = 16;
    }

    if (a2 != 2)
    {
      v10 = *(a1 + 8);
      if (v10 <= *(a1 + 12))
      {
        if (v10 >= 1)
        {
          v11 = v10 + 1;
          v12 = 4 * v10 - 4;
          do
          {
            v9 += sizeObject(*a1 + v12, a2);
            --v11;
            v12 -= 4;
          }

          while (v11 > 1);
        }

        if (!a2)
        {
          v9 += v5 * (*(a1 + 12) - *(a1 + 8));
        }
      }
    }
  }

  return v9;
}

uint64_t CombineTable::initCombineTable(uint64_t this, double a2)
{
  if (a2 == 0.0)
  {
    return this;
  }

  v3 = this;
  v4 = 1.0 / a2;
  v5 = DgnExp(1.0 / a2 * 0.5);
  v6 = 2.0 - a2 * DgnLog(v5 + -1.0);
  v7 = v6;
  if (v7 < 8001)
  {
    v20 = 0;
    v21 = 0;
    if (!v7)
    {
      v8 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/cmbtable.cpp", 141, "mrecutil/cmbtable", 1, "%g %d", a2, v6);
    v20 = 0;
    v21 = 0;
  }

  v8 = MemChunkAlloc(4 * v7, 0);
  v20 = v8;
  v21 = v7;
  if (v7 >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = DgnExp(v4 * v10);
      *(v20 + v9) = (a2 * DgnLog(v11 + 1.0) + 0.5);
      --v10;
      v9 += 4;
    }

    while (4 * v7 != v9);
    v8 = v20;
  }

LABEL_10:
  v12 = v7 & (v7 >> 31);
  v13 = v8 + v7 - 1;
  while (1)
  {
    v14 = __OFSUB__(v7, 1);
    LODWORD(v7) = v7 - 1;
    if (v7 < 0 != v14)
    {
      break;
    }

    if (*v13--)
    {
      v12 = v7 + 1;
      break;
    }
  }

  if (v12 && !*(v3 + 8))
  {
    *v3 = MemChunkAlloc(4 * v12, 0);
    *(v3 + 8) = v12;
  }

  if (v12 >= 1)
  {
    v16 = v20;
    v17 = *v3;
    v18 = v12;
    do
    {
      v19 = *v16;
      v16 = (v16 + 4);
      *v17++ = v19;
      --v18;
    }

    while (v18);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v20);
}

void sub_26277AFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t CombineTable::sizeObject(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 8;
  }

  else
  {
    result = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v4 = *(a1 + 8);
    if (v4 >= 1)
    {
      result += 4 * v4;
    }
  }

  return result;
}

uint64_t sizeObject<RecogResultToken>(uint64_t a1, int a2)
{
  memset(v11, 0, 24);
  v11[3] = 0xFFFFFFFF00000000;
  v13 = 0;
  v14 = 0;
  v11[4] = 0;
  v11[5] = 0;
  v12 = 0;
  v4 = sizeObject(v11, 2);
  v5 = 0;
  if (a2 != 3)
  {
    v5 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 96 * v7 - 64;
        do
        {
          v5 += sizeObject(*a1 + v9, a2) + 50;
          --v8;
          v9 -= 96;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += (v6 + 50) * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  return v5;
}

void RecogResultChoice::fillFromNBestChoice(uint64_t a1, uint64_t *a2, int a3, int a4, int a5, uint64_t a6, double a7, __n128 a8, __n128 a9)
{
  v10 = a2;
  v11 = a1;
  *(a1 + 44) = *(a2 + 8);
  v12 = *(a2 + 36);
  *(a1 + 16) = v12;
  *&v12 = *(a2 + 52);
  *(a1 + 32) = v12;
  *(a1 + 40) = *(a2 + 15);
  *(a1 + 8) = 0;
  if (a6)
  {
    v13 = a2[3];
    if (v13)
    {
      DgnArray<WordConfidenceInfo>::copyArraySlice(a6, v13, 0, *(v13 + 8));
    }
  }

  v14 = v10[2];
  v15 = *(v10 + 2);
  v16 = 112 * v15 - 24;
  v17 = -1;
  do
  {
    if (v16 == -24)
    {
      if (!v15)
      {
        v19 = 0;
        goto LABEL_43;
      }

      v19 = *(*v10 + 88) >> 25 == 126;
      if (*(*v10 + 88) >> 25 != 126)
      {
        goto LABEL_43;
      }

      goto LABEL_11;
    }

    v18 = *(*v10 + v16);
    ++v17;
    v16 -= 112;
  }

  while (v18 >> 25 == 126);
  v19 = v15 - v17;
  if (v19)
  {
LABEL_11:
    v20 = 0;
    v21 = 0;
    v53 = v19;
    v22 = 112 * v19;
    v62 = a3;
    v60 = v22;
    v61 = v10[2];
    v54 = v11;
    while (1)
    {
      v23 = *v10;
      v24 = *v10 + v21;
      v25 = *(v24 + 88);
      if ((v25 & 0xFE000000) != 0xFC000000)
      {
        break;
      }

      if (v14)
      {
        v26 = *(*v14 + v20);
      }

      else
      {
        v26 = -1;
      }

      addSilenceToken(v11, v24, a3, v26, *&v12, a8.n128_u64[0]);
LABEL_40:
      v21 += 112;
      v20 += 4;
      if (v22 == v21)
      {
        v15 = *(v10 + 2);
        v19 = v53;
        goto LABEL_43;
      }
    }

    if ((v25 & 0xFE000000) == 0xFA000000 || a4 == 0)
    {
      v28 = 0;
      if (!v14)
      {
LABEL_23:
        v29 = -1;
        goto LABEL_24;
      }
    }

    else
    {
      v28 = *(v23 + v21 + 96);
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    v29 = *(*v14 + v20);
LABEL_24:
    if (a5)
    {
      v30 = v28;
      Root = VocMgr::getRoot(VocMgr::smpVocMgr, *(v24 + 88));
      v28 = v30;
    }

    else
    {
      Root = *(v24 + 88);
    }

    v32 = v23 + v21;
    v33 = *(v23 + v21 + 108);
    if (a3)
    {
      *&v12 = vorr_s8(*(v32 + 16), vceq_s32(*(v32 + 16), 0xFFFFFFFCFFFFFFC0));
      if (*(v32 + 24) == -4)
      {
        v34 = -1;
      }

      else
      {
        v34 = *(v32 + 24);
      }
    }

    else
    {
      *&v12 = -1;
      *(&v12 + 1) = -1;
      v34 = -1;
    }

    a8 = *(v32 + 28);
    v35 = *(v32 + 44);
    v36 = *(v32 + 52);
    v37 = *(v32 + 8);
    v38 = *(v32 + 68);
    v39 = *(v32 + 64);
    if (v39 == 1879048192)
    {
      v40 = 0;
      v39 = 0;
      a9 = 0uLL;
    }

    else
    {
      a9.n128_u64[0] = *(v23 + v21 + 56);
      v40 = 1;
    }

    v41 = *(v11 + 8);
    if (v41 == *(v11 + 12))
    {
      v58 = Root;
      v42 = v11;
      v43 = v29;
      v44 = v28;
      v59 = v12;
      v45 = *(v23 + v21 + 108);
      v46 = v10;
      v47 = v34;
      v56 = a9;
      v57 = a8;
      v55 = v25;
      v48 = v39;
      DgnArray<RecogResultToken>::reallocElts(v42, 1, 1);
      v39 = v48;
      v25 = v55;
      a9 = v56;
      a8 = v57;
      v34 = v47;
      v10 = v46;
      v11 = v54;
      v33 = v45;
      v12 = v59;
      Root = v58;
      v28 = v44;
      v29 = v43;
      LODWORD(v41) = *(v54 + 8);
    }

    v49 = *v11 + 96 * v41;
    *v49 = 0;
    *(v49 + 4) = v25 >> 25;
    *(v49 + 8) = v28;
    *(v49 + 12) = Root & 0xFFFFFF;
    *(v49 + 16) = v33 & 0xFFFFFF;
    *(v49 + 20) = v12;
    *(v49 + 28) = v34;
    *(v49 + 32) = a8;
    *(v49 + 48) = v35;
    *(v49 + 56) = v36;
    *(v49 + 60) = v29;
    *(v49 + 64) = v37;
    *(v49 + 72) = v38;
    *(v49 + 80) = v40;
    *(v49 + 84) = a9.n128_u64[0];
    *(v49 + 92) = v39;
    ++*(v11 + 8);
    a3 = v62;
    v22 = v60;
    v14 = v61;
    goto LABEL_40;
  }

LABEL_43:
  if (v19 < v15)
  {
    v50 = v19;
    v51 = 112 * v19;
    do
    {
      if (v14)
      {
        v52 = *(*v14 + 4 * v50);
      }

      else
      {
        v52 = -1;
      }

      addSilenceToken(v11, *v10 + v51, a3, v52, *&v12, a8.n128_u64[0]);
      ++v50;
      v51 += 112;
    }

    while (v50 < *(v10 + 2));
  }
}

uint64_t *addSilenceToken(uint64_t *result, uint64_t a2, int a3, int a4, int32x2_t a5, int32x2_t a6)
{
  v7 = result;
  if (a3)
  {
    a5 = *(a2 + 16);
    a6 = vceq_s32(a5, 0xFFFFFFFCFFFFFFC0);
    v8 = vorr_s8(a5, a6);
    if (*(a2 + 24) == -4)
    {
      v9 = -1;
    }

    else
    {
      v9 = *(a2 + 24);
    }
  }

  else
  {
    v8 = -1;
    v9 = -1;
  }

  v10 = *(a2 + 88);
  v11 = *(a2 + 28);
  v12 = *(a2 + 44);
  v13 = *(a2 + 52);
  v14 = *(a2 + 8);
  v15 = *(a2 + 68);
  v16 = *(a2 + 64);
  a5.i32[0] = 1879048192;
  if (v16 == 1879048192)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a2 + 64);
  }

  a6.i32[0] = *(a2 + 64);
  v18 = vand_s8(*(a2 + 56), vdup_lane_s32(vmvn_s8(vceq_s32(a6, a5)), 0));
  v19 = v16 != 1879048192;
  v20 = *(result + 2);
  if (v20 == *(result + 3))
  {
    v22 = *(a2 + 28);
    v23 = v8;
    result = DgnArray<RecogResultToken>::reallocElts(result, 1, 1);
    v11 = v22;
    v8 = v23;
    v20 = *(v7 + 2);
  }

  v21 = *v7 + 96 * v20;
  *v21 = 1;
  *(v21 + 4) = 127;
  *(v21 + 8) = 0;
  *(v21 + 12) = v10 & 0xFFFFFF;
  *(v21 + 16) = 16777212;
  *(v21 + 20) = v8;
  *(v21 + 28) = v9;
  *(v21 + 32) = v11;
  *(v21 + 48) = v12;
  *(v21 + 56) = v13;
  *(v21 + 60) = a4;
  *(v21 + 64) = v14;
  *(v21 + 72) = v15;
  *(v21 + 80) = v19;
  *(v21 + 84) = v18;
  *(v21 + 92) = v17;
  ++*(v7 + 2);
  return result;
}

uint64_t *DgnArray<RecogResultToken>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 96 * v6, 96 * v5, 96 * v5, 1);
  *(a1 + 12) = result / 0x60;
  *a1 = v8;
  return result;
}

void MrecInitModule_pelsrvsm_pel(void)
{
  if (!gParDiagnosticPelScoringServerUseSeparateKernel)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DiagnosticPelScoringServerUseSeparateKernel", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDiagnosticPelScoringServerUseSeparateKernel = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticPelScoringServerUseSeparateKernel);
  }

  if (!gParDiagnosticPelScoringUseFreeTime)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DiagnosticPelScoringUseFreeTime", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDiagnosticPelScoringUseFreeTime = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticPelScoringUseFreeTime);
  }

  if (!gParDebugPelScoringServer1)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugPelScoringServer1", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugPelScoringServer1 = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPelScoringServer1);
  }

  if (!gParDebugPelScoringServer2)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugPelScoringServer2", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugPelScoringServer2 = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPelScoringServer2);
  }

  if (!gParDebugPelScoringServer3)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugPelScoringServer3", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugPelScoringServer3 = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPelScoringServer3);
  }

  if (!gParDebugPelScoringServer4)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugPelScoringServer4", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugPelScoringServer4 = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPelScoringServer4);
  }

  if (!gParDebugGPUCheckPelScoreRange)
  {
    v12 = MemChunkAlloc(0x48uLL, 0);
    v16 = xmmword_26288CEE0;
    v13 = DoubleGlobalParamBase::DoubleGlobalParamBase(v12, "DebugGPUCheckPelScoreRange", &byte_262899963, &byte_262899963, &v16, 0, 0.0);
    *v13 = &unk_2875271F0;
    gParDebugGPUCheckPelScoreRange = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugGPUCheckPelScoreRange);
  }

  if (!gParDiagnosticGPUInitializePelScores)
  {
    v14 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v14, "DiagnosticGPUInitializePelScores", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v15 = &unk_287527EA0;
    gParDiagnosticGPUInitializePelScores = v15;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticGPUInitializePelScores);
  }
}

void DoubleGlobalParam::~DoubleGlobalParam(DoubleGlobalParam *this)
{
  MrecInitModule_sdpres_sdapi();

  JUMPOUT(0x26672B1B0);
}

char *GetSubFileExtensionString(unsigned int a1)
{
  if (a1 > 0x76)
  {
    return 0;
  }

  else
  {
    return off_279B403F0[a1];
  }
}

uint64_t GetIndexForLMSubDirExtensionString(const char *a1)
{
  v4 = 0;
  v3 = 0;
  if (sscanf(a1, ".lm%u%c", &v4, &v3) != 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/subext.cpp", 71, "dfutil/subext", 1, "%.500s", a1);
  }

  return v4;
}

void NonCoartSyncNet::~NonCoartSyncNet(NonCoartSyncNet *this, Sequence *a2)
{
  BaseSyncNet::~BaseSyncNet(this, a2);

  JUMPOUT(0x26672B1B0);
}

uint64_t NonCoartSyncNet::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = BaseSyncNet::sizeObject(a1, a2);
  return sizeObject(a1 + 288, v2) + v4;
}

uint64_t NonCoartSyncNet::scoreNetInternal(NonCoartSyncNet *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (*(this + 282) & 1) != 0 || *(this + 71) != 20000;
  v11 = *(this + 26);
  v23 = *(this + 38);
  v24 = 0;
  if (v11)
  {
    v12 = *(this + 71) <= a3;
  }

  else
  {
    v12 = 0;
  }

  *(this + 282) = v12;
  *(this + 71) = 20000;
  v13 = BaseSyncNet::scoreIntSilNode1<true>(this, v12, *(this + 114), a3, a4, a5, a6, &v24);
  if (*(this + 282))
  {
    v14 = *(this + 25);
    v15 = *(this + 26);
    v16 = *(this + 1);
    v17 = -25064;
LABEL_11:
    ++*(v16 + (v17 | 0x40000u));
    v18 = **(this + 27);
    v19 = (v18 + (v15 >> 1));
    if (v15)
    {
      v14 = *(*v19 + v14);
    }

    v20 = v14(v19, this + 288, *(this + 148) != 20000, a3, a4, a5);
    *(this + 71) = v20;
    if (v20 != 20000 && v13 >= *(v18 + 24 * (*(v18 + 10) - 1) + 24))
    {
      v13 = *(v18 + 24 * (*(v18 + 10) - 1) + 24);
    }

    goto LABEL_18;
  }

  if (*(this + 112))
  {
    v14 = *(this + 23);
    v15 = *(this + 24);
    v16 = *(this + 1);
    v17 = -25060;
    goto LABEL_11;
  }

  if (v10)
  {
    *(**(this + 27) + 24 * (*(**(this + 27) + 10) - 1) + 24) = 20000;
  }

LABEL_18:
  v21 = *(this + 1);
  ++*(v21 + 302576);
  *(v21 + 302592) += v24;
  *(this + 54) = v13;
  if (v13 < *(v21 + 246))
  {
    *(v21 + 246) = v13;
  }

  *(this + 26) = v23;
  result = (*(*this + 328))(this);
  *(this + 55) = result;
  return result;
}

uint64_t BaseSyncNet::scoreIntSilNode1<true>(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, _DWORD *a8)
{
  *(a1 + 113) = 0;
  v11 = *(a1 + 152);
  if (!a2)
  {
    v12 = 0;
    v13 = -1;
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(a1 + 248) = 1310740000;
    return 20000;
  }

  v12 = *(a1 + 264);
  v13 = *(v12 + 4);
  if (v11)
  {
    v14 = 33;
  }

  else
  {
    v14 = 32;
  }

  if (*(v12 + 8) <= a4)
  {
    goto LABEL_8;
  }

  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = 1;
LABEL_8:
  v15 = *(a1 + 8);
  if (a3)
  {
    Node::scoreNodeWithPatternNBest(a1 + 240, v12, v13, v14, a5, a6, v15, 0, a7, (a1 + 113), a1);
  }

  else
  {
    Node::scoreNodeWithPattern(a1 + 240, v12, v14, a5, a6, v15, 0, a7, (a1 + 113), a1);
  }

  ++*a8;
  return *(a1 + 248);
}

uint64_t NonCoartSyncNet::thresholdNetInternal(NonCoartSyncNet *this, uint64_t a2, int a3)
{
  result = BaseSyncNet::scoreIntSilNode2(this, a2, a3);
  if (*(this + 55) <= a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *(this + 55) = 20000;
  }

  *(this + 26) = v6;
  return result;
}

uint64_t NonCoartSyncNet::calcNumActiveNodes(Sequence ***this, int a2)
{
  v2 = *(this + 38);
  if (*(this + 71) <= a2)
  {
    return Sequence::calcNumActiveNodes(*this[27], a2) + v2;
  }

  return v2;
}

uint64_t *NonCoartSyncNet::addNodesSequential(uint64_t a1, Sequence *this, int a3)
{
  if (a3 == 2)
  {
    v5 = Sequence::newSequence(this);
    v6 = *(a1 + 224);
    *(*(a1 + 216) + 8 * v6) = v5;
    *(a1 + 224) = v6 + 1;
    return v5 + 2;
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    result = (a1 + 240);
    *(a1 + 280) = 1;
  }

  return result;
}

_WORD *NonCoartSyncNet::attachInPort(NonCoartSyncNet *this, unsigned int a2, Node *a3)
{
  result = PredStruct::addPred(a3 - 8, this + 288);
  *(*(this + 7) + 8 * a2) = this + 288;
  return result;
}

_WORD *PredStruct::addPred(_WORD *result, uint64_t a2)
{
  v3 = result;
  v4 = result[4];
  if (v4 == 2)
  {
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    v5 = *result;
    result = MemChunkAlloc(0x10uLL, 0);
    *v3 = result;
    *result = v5;
    *(*v3 + 8) = a2;
    LOWORD(v4) = v3[4];
    goto LABEL_13;
  }

  if (result[4])
  {
    if ((v4 & 7) != 0)
    {
LABEL_12:
      v4 = v3[4];
      *(*v3 + 8 * v4) = a2;
      goto LABEL_13;
    }

LABEL_7:
    v6 = 8 * v4;
    if (v4 == 2)
    {
      v7 = 64;
    }

    else
    {
      v7 = 8 * v4 + 64;
    }

    v8 = *v3;
    v9 = MemChunkAlloc(v7, 0);
    *v3 = v9;
    result = memcpy(v9, v8, v6);
    if (v8)
    {
      result = MemChunkFree(v8, 0);
    }

    goto LABEL_12;
  }

  *result = a2;
LABEL_13:
  v3[4] = v4 + 1;
  return result;
}

void SigProc::~SigProc(SigProc *this)
{
  if (*(this + 104))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 74, "sigproc/sigproc", 1, "%s", &unk_26288CF23);
  }

  if (*(this + 120))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 75, "sigproc/sigproc", 2, "%u", *(this + 110));
  }

  DgnDelete<ChannelStats>(*(this + 49));
  DgnDelete<CTFTMgr>(*(this + 50));
  DgnDelete<EnvMgr>(*(this + 53));
  DgnDelete<UserDelta>(*(this + 54));
  DgnDelete<AdaptStatsHistory>(*(this + 59));
  FileHistory::~FileHistory((this + 448));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 408);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 376);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 360);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 344);

  SigProcDescriptor::~SigProcDescriptor(this);
}

ChannelStats *DgnDelete<ChannelStats>(ChannelStats *result)
{
  if (result)
  {
    ChannelStats::~ChannelStats(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

CTFTMgr *DgnDelete<CTFTMgr>(CTFTMgr *result)
{
  if (result)
  {
    CTFTMgr::~CTFTMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnDelete<UserDelta>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnPrimArray<unsigned int>::~DgnPrimArray((result + 6));
    DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 3));

    return MemChunkFree(v1, 0);
  }

  return result;
}

void SigProc::saveSigProc(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5)
{
  v21 = 0u;
  v22 = 0u;
  SnapTime::recordTime(&v21, 1, 1, 1, 1);
  LoadSaveTracker::LoadSaveTracker(&v20);
  if (a4)
  {
    v10 = a4 != 2;
  }

  else if (*(a1 + 484) == 1)
  {
    v10 = *(*(a1 + 424) + 264);
  }

  else
  {
    v10 = 0;
  }

  DFileOwner::DFileOwner(v19);
  *a3 = 1;
  v11 = DFile::openDFile(a2, 1, 4, v19);
  *a3 = 2;
  DFileChecksums::DFileChecksums(v18);
  AdaptStatsHistory::saveASB(*(a1 + 472), v11, v18, v10 & 1, a5);
  EnvMgr::saveEnvMgr(*(a1 + 424), v11, v18, v10 & 1, a5);
  SigProcDescriptor::saveSigProcDescriptor(a1, v11, v18, v10 & 1, a5);
  WaveDecoder::saveWaveDecoder((a1 + 344), v11, v18, v10 & 1, a5);
  v12 = *(a1 + 392);
  if (v12)
  {
    ChannelStats::saveChannelStats(v12, v11, v18, v10 & 1, a5);
  }

  CTFTMgr::saveCTFT(*(a1 + 400), v11, v18, v10 & 1, a5);
  if ((v10 & 1) == 0)
  {
    v13 = *(a1 + 432);
    if (*(v13 + 5))
    {
      UserDelta::saveUserDelta(v13, v11, v18, a5);
    }

    v14 = OpenAndWriteMrecHeader(v11, 0x52u, 0, "MRSCH!? ", 19, 2);
    v16.i32[0] = 0;
    writeObject(v14, v18, &v16);
    writeObjectChecksum(v14, v16.i32);
    DgnDelete<DgnStream>(v14);
  }

  v16 = 0u;
  v17 = 0u;
  SnapTime::recordTime(&v16, 1, 1, 1, 1);
  v16 = vsubq_s64(v16, v21);
  v17 = vsubq_s64(v17, v22);
  FileHistory::addEntryWithElapsedTime((a1 + 448), " saveSigProc time: ", &v16);
  FileHistory::saveFileHistory((a1 + 448), v11, v10 & 1);
  DFileOwner::setRemoveFileOnDestruction(v19, 0);
  *a3 = 0;
  DFileChecksums::~DFileChecksums(v18);
  DFileOwner::~DFileOwner(v19, v15);
  LoadSaveTracker::~LoadSaveTracker(&v20);
}

void sub_26277C4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  DFileChecksums::~DFileChecksums(&a13);
  DFileOwner::~DFileOwner(&a16, v22);
  LoadSaveTracker::~LoadSaveTracker(&a21);
  _Unwind_Resume(a1);
}

void SigProc::decrementAdapterCount(SigProc *this)
{
  v2 = *(this + 120);
  if (!v2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 348, "sigproc/sigproc", 3, "%u", *(this + 110));
    v2 = *(this + 120);
  }

  *(this + 120) = v2 - 1;
}

void SigProc::printSize(SigProc *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 359);
  if (v67)
  {
    v13 = v66;
  }

  else
  {
    v13 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288CF23, a3, &unk_26288CF23, v13);
  DgnString::~DgnString(&v66);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288CF23);
  v15 = (a3 + 1);
  v63 = a3;
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 360);
  if (v67)
  {
    v18 = v66;
  }

  else
  {
    v18 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, v15, &unk_26288CF23, v16, v16, v18, 4, 4, 0);
  DgnString::~DgnString(&v66);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v19 = 12;
  }

  else
  {
    v19 = 16;
  }

  v20 = *(this + 104);
  v21 = *(this + 105);
  if (v21 >= v20)
  {
    v22 = 0;
    if (v20 > 0)
    {
      v19 += 4 * (v20 - 1) + 4;
    }

    v23 = v19 + 4 * (v21 - v20);
  }

  else
  {
    v22 = 4 * v20;
    v23 = v19;
  }

  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 362);
  if (v67)
  {
    v25 = v66;
  }

  else
  {
    v25 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v15, &unk_26288CF23, v16, v16, v25, v23, v19, v22);
  DgnString::~DgnString(&v66);
  *a4 += v23;
  *a5 += v19;
  *a6 += v22;
  v26 = sizeObject(this + 448, 0);
  v27 = sizeObject(this + 448, 1);
  v28 = sizeObject(this + 448, 3);
  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 363);
  if (v67)
  {
    v30 = v66;
  }

  else
  {
    v30 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v15, &unk_26288CF23, v16, v16, v30, v26, v27, v28);
  DgnString::~DgnString(&v66);
  *a4 += v26;
  *a5 += v27;
  *a6 += v28;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  if (*(this + 59))
  {
    v32 = sizeObject() + v31;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v31 = 4;
    }

    else
    {
      v31 = 8;
    }

    if (*(this + 59) && (v31 += sizeObject(), *(this + 59)))
    {
      v33 = sizeObject();
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
    v32 = v31;
  }

  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 365);
  if (v67)
  {
    v35 = v66;
  }

  else
  {
    v35 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v15, &unk_26288CF23, v16, v16, v35, v32, v31, v33);
  DgnString::~DgnString(&v66);
  *a4 += v32;
  *a5 += v31;
  *a6 += v33;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  SigProcDescriptor::printSize(this, 0xFFFFFFFFLL, v15, &v66, &v65, &v64);
  *a4 += v66;
  *a5 += v65;
  *a6 += v64;
  v36 = sizeObject(this + 86, 0);
  v37 = sizeObject(this + 86, 1);
  v38 = sizeObject(this + 86, 3);
  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 368);
  if (v67)
  {
    v40 = v66;
  }

  else
  {
    v40 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v15, &unk_26288CF23, v16, v16, v40, v36, v37, v38);
  DgnString::~DgnString(&v66);
  *a4 += v36;
  *a5 += v37;
  *a6 += v38;
  v41 = *(this + 50);
  if (v41)
  {
    v65 = 0;
    v66 = 0;
    v64 = 0;
    CTFTMgr::printSize(v41, 0xFFFFFFFFLL, v15, &v66, &v65, &v64);
    *a4 += v66;
    *a5 += v65;
    *a6 += v64;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 4;
  }

  else
  {
    v42 = 8;
  }

  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 369);
  if (v67)
  {
    v44 = v66;
  }

  else
  {
    v44 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v15, &unk_26288CF23, v16, v16, v44, v42, v42, 0);
  DgnString::~DgnString(&v66);
  *a4 += v42;
  *a5 += v42;
  v45 = *(this + 49);
  if (v45)
  {
    v65 = 0;
    v66 = 0;
    v64 = 0;
    ChannelStats::printSize(v45, 0xFFFFFFFFLL, v15, &v66, &v65, &v64);
    *a4 += v66;
    *a5 += v65;
    *a6 += v64;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 4;
  }

  else
  {
    v46 = 8;
  }

  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 371);
  if (v67)
  {
    v48 = v66;
  }

  else
  {
    v48 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v15, &unk_26288CF23, v16, v16, v48, v46, v46, 0);
  DgnString::~DgnString(&v66);
  *a4 += v46;
  *a5 += v46;
  v49 = *(this + 53);
  if (v49)
  {
    v65 = 0;
    v66 = 0;
    v64 = 0;
    EnvMgr::printSize(v49, 0xFFFFFFFFLL, v15, &v66, &v65, &v64);
    *a4 += v66;
    *a5 += v65;
    *a6 += v64;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v50 = 4;
  }

  else
  {
    v50 = 8;
  }

  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 372);
  if (v67)
  {
    v52 = v66;
  }

  else
  {
    v52 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26288CF23, v16, v16, v52, v50, v50, 0);
  DgnString::~DgnString(&v66);
  *a4 += v50;
  *a5 += v50;
  v53 = *(this + 54);
  if (v53)
  {
    v65 = 0;
    v66 = 0;
    v64 = 0;
    UserDelta::printSize(v53, 0xFFFFFFFFLL, v15, &v66, &v65, &v64);
    *a4 += v66;
    *a5 += v65;
    *a6 += v64;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v54 = 4;
  }

  else
  {
    v54 = 8;
  }

  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 374);
  if (v67)
  {
    v56 = v66;
  }

  else
  {
    v56 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v15, &unk_26288CF23, v16, v16, v56, v54, v54, 0);
  DgnString::~DgnString(&v66);
  *a4 += v54;
  *a5 += v54;
  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 375);
  if (v67)
  {
    v58 = v66;
  }

  else
  {
    v58 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &unk_26288CF23, v16, v16, v58, 4, 4, 0);
  DgnString::~DgnString(&v66);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 377);
  if (v67)
  {
    v60 = v66;
  }

  else
  {
    v60 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v15, &unk_26288CF23, v16, v16, v60, 1, 1, 0);
  DgnString::~DgnString(&v66);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/sigproc.cpp", 378);
  if (v67)
  {
    v62 = v66;
  }

  else
  {
    v62 = &unk_26288CF23;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v63, &unk_26288CF23, (35 - v63), (35 - v63), v62, *a4, *a5, *a6);
  DgnString::~DgnString(&v66);
}

void sub_26277CE9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MrecInitModule_sausage_kernel(void)
{
  if (!gParDebugSausageGenerationShowOperationTimes)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugSausageGenerationShowOperationTimes", &unk_26288CF24, &unk_26288CF24, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugSausageGenerationShowOperationTimes = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugSausageGenerationShowOperationTimes);
  }

  if (!gParDebugSausageGenerationInitialize)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugSausageGenerationInitialize", &unk_26288CF24, &unk_26288CF24, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugSausageGenerationInitialize = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugSausageGenerationInitialize);
  }

  if (!gParDebugSausageGenerationMinimize)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugSausageGenerationMinimize", &unk_26288CF24, &unk_26288CF24, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugSausageGenerationMinimize = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugSausageGenerationMinimize);
  }

  if (!gParDebugSausageCombination)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugSausageCombination", &unk_26288CF24, &unk_26288CF24, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugSausageCombination = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugSausageCombination);
  }

  if (!gParDiagnosticSausageGenerationCommand)
  {
    v8 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v8, "DiagnosticSausageGenerationCommand", &unk_26288CF24, &unk_26288CF24, &unk_26288CF24, 0, 0);
    *v9 = &unk_287526E40;
    gParDiagnosticSausageGenerationCommand = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticSausageGenerationCommand);
  }

  if (!gParDebugFastSausageGeneration)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugFastSausageGeneration", &unk_26288CF24, &unk_26288CF24, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugFastSausageGeneration = v11;
    v12 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v12, &gParDebugFastSausageGeneration);
  }
}

void SausageSlot::~SausageSlot(SausageSlot *this)
{
  *(this + 24) = 0;
  *(this + 2) = 0xBFF0000000000000;
  DgnArray<CWIDProbPair>::releaseAll(this);
}

uint64_t sizeObject<CWIDProbPair>(uint64_t a1, int a2)
{
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 37;
  }

  else
  {
    v2 = 41;
  }

  if (a2 == 3)
  {
    v3 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v3 = 12;
    }

    else
    {
      v3 = 16;
    }

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = *(a1 + 8);
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 48 * v6 - 48;
        do
        {
          v3 += sizeObject(*a1 + v8, a2);
          --v7;
          v8 -= 48;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v3 += v2 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnDelete<DgnArray<Germ>>(0);
  return v3;
}

uint64_t Sausage::adjustReferenceCounts(uint64_t this, int a2)
{
  v3 = this;
  v4 = VocMgr::smpVocMgr;
  v5 = *(this + 28);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v6 = *(this + 96);
  v7 = *v6;
  if (*v6)
  {
LABEL_8:
    LODWORD(v8) = 0;
    goto LABEL_9;
  }

  v8 = 0;
  v9 = v6 + 1;
  while (v5 - 1 != v8)
  {
    v7 = v9[v8++];
    if (v7)
    {
LABEL_9:
      while (v8 < v5)
      {
        v10 = *(v7 + 3);
        v11 = *(**v4 + ((v10 >> 22) & 0x3F8));
        v12 = *(v11 + 48);
        if (a2)
        {
          Voc::addVocReferringSausageRef(v11);
          this = WordList::addIncludingSausageRef(v12, v10 & 0xFFFFFF);
        }

        else
        {
          Voc::removeVocReferringSausageRef(v11);
          this = WordList::removeIncludingSausageRef(v12, v10 & 0xFFFFFF);
        }

        v13 = *v7;
        v5 = *(v3 + 28);
        if (!*v7)
        {
          v8 = (v8 + 1);
          if (v8 >= v5)
          {
            v13 = v7;
          }

          else
          {
            v14 = *(v3 + 96);
            v13 = *(v14 + 8 * v8);
            if (!v13)
            {
              v15 = (v14 + 8 * v8 + 8);
              v16 = ~v8 + v5;
              while (v16)
              {
                v17 = *v15++;
                v13 = v17;
                LODWORD(v8) = v8 + 1;
                --v16;
                if (v17)
                {
                  goto LABEL_21;
                }
              }

              return this;
            }
          }
        }

LABEL_21:
        v7 = v13;
      }

      return this;
    }
  }

  return this;
}

void Sausage::~Sausage(Sausage *this)
{
  if (*(this + 120) == 1)
  {
    Sausage::adjustReferenceCounts(this, 0);
    *(this + 120) = 0;
  }

  HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(this + 16);
  DgnIOwnArray<SausageSlot *>::releaseAll(this);
}

void Sausage::printSize(Sausage *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4231);
  if (v53)
  {
    v13 = v52;
  }

  else
  {
    v13 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288CF24, a3, &unk_26288CF24, v13);
  DgnString::~DgnString(&v52);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288CF24);
  v15 = sizeObject<SausageSlot *>(this, 0);
  v16 = sizeObject<SausageSlot *>(this, 1);
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4232);
  if (v53)
  {
    v19 = v52;
  }

  else
  {
    v19 = &unk_26288CF24;
  }

  v51 = (a3 + 1);
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, v51, &unk_26288CF24, (34 - a3), (34 - a3), v19, v15, v16, 0);
  DgnString::~DgnString(&v52);
  *a4 += v15;
  *a5 += v16;
  v20 = sizeObject(this + 40, 0);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 8;
  }

  else
  {
    v21 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 2;
  }

  else
  {
    v22 = 3;
  }

  v23 = *(this + 26) << v22;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v24 = 4;
  }

  else
  {
    v24 = 8;
  }

  v25 = v20 + v24 + v21 + v23 + 13;
  v26 = sizeObject(this + 40, 1);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 8;
  }

  else
  {
    v27 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 2;
  }

  else
  {
    v28 = 3;
  }

  v29 = *(this + 26) << v28;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 4;
  }

  else
  {
    v30 = 8;
  }

  v31 = v26 + v30 + v27 + v29 + 13;
  v32 = sizeObject(this + 40, 3);
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4233);
  if (v53)
  {
    v34 = v52;
  }

  else
  {
    v34 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v51, &unk_26288CF24, v17, v17, v34, v25, v31, v32);
  DgnString::~DgnString(&v52);
  *a4 += v25;
  *a5 += v31;
  *a6 += v32;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4234);
  if (v53)
  {
    v36 = v52;
  }

  else
  {
    v36 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v51, &unk_26288CF24, v17, v17, v36, 1, 1, 0);
  DgnString::~DgnString(&v52);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4236);
  if (v53)
  {
    v38 = v52;
  }

  else
  {
    v38 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v51, &unk_26288CF24, v17, v17, v38, 1, 1, 0);
  DgnString::~DgnString(&v52);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4238);
  if (v53)
  {
    v40 = v52;
  }

  else
  {
    v40 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v51, &unk_26288CF24, v17, v17, v40, 1, 1, 0);
  DgnString::~DgnString(&v52);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4239);
  if (v53)
  {
    v42 = v52;
  }

  else
  {
    v42 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v51, &unk_26288CF24, v17, v17, v42, 8, 8, 0);
  DgnString::~DgnString(&v52);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4241);
  if (v53)
  {
    v44 = v52;
  }

  else
  {
    v44 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v51, &unk_26288CF24, v17, v17, v44, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4243);
  if (v53)
  {
    v46 = v52;
  }

  else
  {
    v46 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v51, &unk_26288CF24, v17, v17, v46, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4245);
  if (v53)
  {
    v48 = v52;
  }

  else
  {
    v48 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v51, &unk_26288CF24, v17, v17, v48, 4, 4, 0);
  DgnString::~DgnString(&v52);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/sausage.cpp", 4246);
  if (v53)
  {
    v50 = v52;
  }

  else
  {
    v50 = &unk_26288CF24;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, a3, &unk_26288CF24, (35 - a3), (35 - a3), v50, *a4, *a5, *a6);
  DgnString::~DgnString(&v52);
}

void sub_26277DAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<SausageSlot *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v4 = gShadowDiagnosticShowIdealizedObjectSizes;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  else
  {
    v2 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = *(a1 + 8);
    if (v6 >= 1)
    {
      v7 = v6 - 1;
      v8 = gShadowDiagnosticShowIdealizedObjectSizes;
      do
      {
        if (v8)
        {
          v9 = 4;
        }

        else
        {
          v9 = 8;
        }

        v10 = *(*a1 + 8 * v7);
        if (v10)
        {
          v9 += sizeObject<CWIDProbPair>(v10, a2) + 9;
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!a2)
    {
      v12 = 2;
      if ((v4 & 1) == 0)
      {
        v12 = 3;
      }

      v2 += (*(a1 + 12) - *(a1 + 8)) << v12;
    }
  }

  return v2;
}

void *DgnArray<CWIDProbPair>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 48 * v2 - 48;
    do
    {
      CWIDProbPair::~CWIDProbPair((*a1 + v3));
      v3 -= 48;
    }

    while (v3 != -48);
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

void *DgnIOwnArray<SausageSlot *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<SausageSlot>(*(*a1 + v3));
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

SausageSlot *DgnDelete<SausageSlot>(SausageSlot *result)
{
  if (result)
  {
    SausageSlot::~SausageSlot(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t SDVoc_New(FileSpec *a1, FileSpec *a2, uint64_t a3, unsigned int *a4, FileSpec *a5, int a6, int a7, uint64_t a8, uint64_t a9)
{
  SdapiInsurance::SdapiInsurance(v56, "SDVoc_New", 1, 1, 379);
  if (v56[97] != 1)
  {
    Voc = 0;
    goto LABEL_75;
  }

  if (!a1)
  {
    throwBadStringPointer();
  }

  LOBYTE(v48) = 0;
  if (!a2)
  {
    throwBadStringPointer();
  }

  LOBYTE(v48) = 0;
  if (!a5)
  {
    throwBadStringPointer();
  }

  LOBYTE(v48) = 0;
  if ((gbShowCalls & 1) != 0 || gbShowCallsWithFileSpecArgs == 1)
  {
    DgnString::DgnString(&v54);
    DgnString::DgnString(&v48);
    FileSpec::getDiagnosticMaskedName(a1, &v48, v17);
    DgnString::preAllocate(&v54, 96);
    if (v49)
    {
      v18 = v48;
    }

    else
    {
      v18 = byte_26288CF3A;
    }

    DgnString::formatStringInPlace(&v54, v18);
    DgnString::~DgnString(&v48);
    DgnString::DgnString(&v52);
    DgnString::DgnString(&v48);
    FileSpec::getDiagnosticMaskedName(a2, &v48, v19);
    DgnString::preAllocate(&v52, 96);
    if (v49)
    {
      v20 = v48;
    }

    else
    {
      v20 = byte_26288CF3A;
    }

    DgnString::formatStringInPlace(&v52, v20);
    DgnString::~DgnString(&v48);
    DgnString::DgnString(&v50);
    DgnString::DgnString(&v48);
    FileSpec::getDiagnosticMaskedName(a5, &v48, v21);
    DgnString::preAllocate(&v50, 96);
    if (v49)
    {
      v22 = v48;
    }

    else
    {
      v22 = byte_26288CF3A;
    }

    DgnString::formatStringInPlace(&v50, v22);
    DgnString::~DgnString(&v48);
    if (v55)
    {
      v24 = v54;
    }

    else
    {
      v24 = byte_26288CF3A;
    }

    v25 = v52;
    if (!v53)
    {
      v25 = byte_26288CF3A;
    }

    if (v51)
    {
      v26 = v50;
    }

    else
    {
      v26 = byte_26288CF3A;
    }

    v27 = "SD_TRUE";
    if (a6)
    {
      v28 = "SD_TRUE";
    }

    else
    {
      v28 = "SD_FALSE";
    }

    if (!a7)
    {
      v27 = "SD_FALSE";
    }

    if (gbShowCallPointerArguments)
    {
      v29 = a4;
    }

    else
    {
      v29 = 0;
    }

    if (gbShowCallPointerArguments)
    {
      v30 = a8;
    }

    else
    {
      v30 = 0;
    }

    v31 = a9;
    if (!gbShowCallPointerArguments)
    {
      v31 = 0;
    }

    xlprintf("Entering sdapi call %.500s(%.500s, %.500s, %lld, Masked:0x%016llx, %.500s, %.500s, %.500s, Masked:0x%016llx, Masked:0x%016llx)\n", v23, "SDVoc_New", v24, v25, a3, v29, v26, v28, v27, v30, v31);
    DgnString::~DgnString(&v50);
    DgnString::~DgnString(&v52);
    DgnString::~DgnString(&v54);
  }

  if (a6 == 1 && a7 == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 260, "sdapi/sdvoc", 23, "%s", byte_26288CF3A);
  }

  if (a5)
  {
    v32 = *a5 != 0;
    v33 = a4 == 0;
    v34 = a4 != 0 || v32;
    if (a4 && *a5)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 266, "sdapi/sdvoc", 19, "%s", &errStr_sdapi_sdvoc_E_SHAREDMEM_HAVECACHEDIR);
      v33 = 0;
      v34 = 1;
    }
  }

  else
  {
    v32 = 0;
    v33 = a4 == 0;
    v34 = a4 != 0;
  }

  if (a6 == 1 && (v34 & 1) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 273, "sdapi/sdvoc", 15, "%s", &errStr_sdapi_sdvoc_E_SHAREDMEM_REABSORB);
  }

  if (a7 == 1 && (v34 & 1) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 277, "sdapi/sdvoc", 16, "%s", &errStr_sdapi_sdvoc_E_SHAREDMEM_LOBOTOMIZE);
  }

  if (v32 && !OsFile::dirExists(a5, v16))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 281, "sdapi/sdvoc", 20, "%.500s", a5);
  }

  FileSpec::FileSpec(&v54, a1);
  FileSpec::FileSpec(&v52);
  if (a2 && *a2)
  {
    if (a3 != -1 && (v34 & 1) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 291, "sdapi/sdvoc", 17, "%s", &errStr_sdapi_sdvoc_E_SHAREDMEM_STATICVOC);
    }

    FileSpec::fillFromName(&v52, a2);
  }

  v50 = a8;
  v51 = a9;
  ProgressCallbackHandler::ProgressCallbackHandler(&v48, ProgressCallbackWrapper, &v50);
  DFileOwner::DFileOwner(v47);
  DFileOwner::DFileOwner(v46);
  v35 = DFile::openDFile(&v54, 0, 2, v47);
  if (!FileSpec::isValid(&v52))
  {
    v36 = 0;
    if ((v34 & 1) == 0)
    {
      goto LABEL_64;
    }

LABEL_66:
    DgnString::DgnString(v45);
    if (!v33)
    {
      DgnString::makeStringPrintf("{%08x-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}", *a4, *a4, *(a4 + 2), *(a4 + 3), *(a4 + 8), *(a4 + 9), *(a4 + 10), *(a4 + 11), *(a4 + 12), *(a4 + 13), *(a4 + 14), *(a4 + 15));
      DgnString::operator=(v45, v44);
      DgnString::~DgnString(v44);
    }

    DgnString::DgnString(v44, a5);
    SetObject = DgnSharedMemMgr::getMaybeCreateSetObjectEx(DgnSharedMemMgr::smpDSMMgr, v44, v45);
    DgnString::~DgnString(v44);
    DgnString::~DgnString(v45);
    goto LABEL_69;
  }

  v36 = DFile::openDFile(&v52, 0, 9, v46);
  if (v34)
  {
    goto LABEL_66;
  }

LABEL_64:
  SetObject = 0;
LABEL_69:
  v38 = ModelMgr::smpModelMgr;
  if (a6 >= 2)
  {
    throwBadSdapiArgument("SDBool", a6);
  }

  if (a7 >= 2)
  {
    throwBadSdapiArgument("SDBool", a7);
  }

  Voc = ModelMgr::loadVoc(v38, v35, v36, SetObject, a3, a6 == 1, a7 == 1, &v48);
  DFileOwner::~DFileOwner(v46, v40);
  DFileOwner::~DFileOwner(v47, v41);
  ProgressCallbackHandler::~ProgressCallbackHandler(&v48);
  FileSpec::~FileSpec(&v52);
  FileSpec::~FileSpec(&v54);
LABEL_75:
  SdapiInsurance::~SdapiInsurance(v56);
  return Voc;
}

uint64_t SDVoc_Save(unint64_t a1, FileSpec *a2, int a3, uint64_t a4, uint64_t a5)
{
  SdapiInsurance::SdapiInsurance(v30, "SDVoc_Save", 1, 0, 380);
  if (v30[97] == 1)
  {
    if (!a2)
    {
      throwBadStringPointer();
    }

    LOBYTE(v24) = 0;
    if ((gbShowCalls & 1) != 0 || gbShowCallsWithFileSpecArgs == 1)
    {
      DgnString::DgnString(&v28);
      DgnString::DgnString(&v24);
      FileSpec::getDiagnosticMaskedName(a2, &v24, v10);
      DgnString::preAllocate(&v28, 96);
      if (v25)
      {
        v11 = v24;
      }

      else
      {
        v11 = byte_26288CF3A;
      }

      DgnString::formatStringInPlace(&v28, v11);
      DgnString::~DgnString(&v24);
      if (v29)
      {
        v13 = v28;
      }

      else
      {
        v13 = byte_26288CF3A;
      }

      v14 = "SD_TRUE";
      if (!a3)
      {
        v14 = "SD_FALSE";
      }

      if (gbShowCallPointerArguments)
      {
        v15 = a4;
      }

      else
      {
        v15 = 0;
      }

      if (gbShowCallPointerArguments)
      {
        v16 = a5;
      }

      else
      {
        v16 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, %.500s, %.500s, Masked:0x%016llx, Masked:0x%016llx)\n", v12, "SDVoc_Save", a1, v13, v14, v15, v16);
      DgnString::~DgnString(&v28);
    }

    if (*(ApiState::smpApiState + 1) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 351, "sdapi/sdvoc", 6, "%s", &errStr_sdapi_sdvoc_E_SAVE_AFTER_ERROR);
    }

    FileSpec::FileSpec(&v28, a2);
    FileSpec::FileSpec(v27);
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (*(ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, a1) + 136))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 358, "sdapi/sdvoc", 22, "%s", &errStr_sdapi_sdvoc_E_VOC_UNLOADEDLM);
    }

    v26[0] = a4;
    v26[1] = a5;
    ProgressCallbackHandler::ProgressCallbackHandler(&v24, ProgressCallbackWrapper, v26);
    v23 = 0;
    DgnString::DgnString(&v21);
    v17 = ModelMgr::smpModelMgr;
    if (a3 >= 2)
    {
      throwBadSdapiArgument("SDBool", a3);
    }

    ModelMgr::saveVoc(v17, a1, &v28, v27, &v23, 2, (a3 == 1), &v24, 0, 0);
    if (v23 == 2)
    {
      v18 = 3;
    }

    else if (v23)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    if (v22)
    {
      v19 = v21;
    }

    else
    {
      v19 = byte_26288CF3A;
    }

    ApiState::setLastResultCodeString(ApiState::smpApiState, v19);
    DgnString::~DgnString(&v21);
    ProgressCallbackHandler::~ProgressCallbackHandler(&v24);
    FileSpec::~FileSpec(v27);
    FileSpec::~FileSpec(&v28);
  }

  else
  {
    v18 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v30);
  return v18;
}

void SDVoc_Delete(unint64_t a1)
{
  SdapiInsurance::SdapiInsurance(v6, "SDVoc_Delete", 1, 0, 381);
  if (v6[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>)\n", v2, "SDVoc_Delete", a1);
    }

    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v3 = ModelMgr::smpModelMgr;
    VocOrThrow = ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, a1);
    if (*(VocOrThrow + 136))
    {
      v5.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 401, "sdapi/sdvoc", 22, "%s", &errStr_sdapi_sdvoc_E_VOC_UNLOADEDLM);
    }

    if (*(VocOrThrow + 248))
    {
      v5.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 404, "sdapi/sdvoc", 3, "%u", a1);
    }

    if ((*(**(VocOrThrow + 72) + 192))(*(VocOrThrow + 72), v5))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 407, "sdapi/sdvoc", 4, "%u", a1);
    }

    ModelMgr::freeVoc(v3, a1);
  }

  SdapiInsurance::~SdapiInsurance(v6);
}

void sub_26277EAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a2 == 2)
  {
    v11 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v11, v12);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v13 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v13);
  }

  __cxa_end_catch();
  JUMPOUT(0x26277EACCLL);
}

void SDVoc_GetInfo(unint64_t a1, uint64_t a2)
{
  SdapiInsurance::SdapiInsurance(v17, "SDVoc_GetInfo", 1, 1, 382);
  if (v17[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, Masked:0x%016llx)\n", v4, "SDVoc_GetInfo", a1, v5);
    }

    if (!a2)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr");
    }

    v6 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    VocOrThrow = ModelMgr::getVocOrThrow(v6, a1);
    v8 = *(VocOrThrow + 48);
    v10 = *(VocOrThrow + 64);
    v9 = *(VocOrThrow + 72);
    *a2 = *(v8 + 96);
    ValidIdCount = WordList::getValidIdCount(v8);
    v12 = *(v10 + 36);
    *(a2 + 4) = ValidIdCount;
    *(a2 + 8) = v12;
    v13 = 1;
    if (**(VocOrThrow + 8))
    {
      v13 = 2;
    }

    *(a2 + 16) = v13;
    *(a2 + 24) = *(*(VocOrThrow + 32) + 4);
    *(a2 + 28) = (*(*v9 + 568))(v9);
    *(a2 + 32) = *(VocOrThrow + 248);
    *(a2 + 40) = Voc::getVocReferringLatticeRefCount(VocOrThrow);
    *(a2 + 44) = Voc::getVocReferringPrefilterResultRefCount(VocOrThrow);
    *(a2 + 48) = Voc::getVocReferringSausageRefCount(VocOrThrow);
    *(a2 + 52) = Voc::getVocReferringReproRefCount(VocOrThrow);
    *(a2 + 56) = (*(*v9 + 608))(v9);
    v14 = *(VocOrThrow + 128) != -1 && *(DgnSharedMemSet::getSetCacheDir(*(VocOrThrow + 120)) + 8) < 2u;
    *(a2 + 64) = v14;
    v15 = Voc::canUnloadCachedLM(VocOrThrow);
    v16 = *(VocOrThrow + 136) == 0;
    *(a2 + 68) = v15;
    *(a2 + 72) = v16;
    *(a2 + 60) = (*(*v9 + 120))(v9);
    *(a2 + 76) = (*(*v9 + 128))(v9);
    *(a2 + 80) = WordList::getRequiredWordTagsVersion(v8);
    *(a2 + 84) = WordList::getOptionalWordTagsVersion(v8);
    *(a2 + 88) = *(v8 + 138);
    *(a2 + 92) = *(v8 + 129);
    *(a2 + 96) = (*(*v9 + 240))(v9);
    *(a2 + 104) = (*(*v9 + 248))(v9);
    *(a2 + 112) = (*(*v9 + 256))(v9);
  }

  SdapiInsurance::~SdapiInsurance(v17);
}

void sub_26277EEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (a2 == 2)
  {
    v13 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v13, v14);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v15 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v15);
  }

  __cxa_end_catch();
  JUMPOUT(0x26277EE80);
}

void SDVoc_GetWords(unint64_t a1, unint64_t a2, char *a3, char *a4, void *a5, uint64_t a6, unsigned int *a7, void **a8, unsigned int *a9, void (*a10)(unint64_t, unsigned int, unsigned int, void *, unsigned int, void **, unsigned int *), unint64_t a11, _DWORD *a12)
{
  SdapiInsurance::SdapiInsurance(v38, "SDVoc_GetWords", 1, 1, 385);
  if (v38[97] == 1)
  {
    if (!a3)
    {
      v21 = throwBadStringPointer();
    }

    LOBYTE(v36) = 0;
    if (!a4)
    {
      v21 = throwBadStringPointer();
    }

    LOBYTE(v36) = 0;
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v22 = a5;
      }

      else
      {
        v22 = 0;
      }

      if (gbShowCallPointerArguments)
      {
        v23 = a7;
      }

      else
      {
        v23 = 0;
      }

      if (gbShowCallPointerArguments)
      {
        v24 = a8;
      }

      else
      {
        v24 = 0;
      }

      if (gbShowCallPointerArguments)
      {
        v25 = a9;
      }

      else
      {
        v25 = 0;
      }

      v26 = a10;
      v27 = a11;
      if (!gbShowCallPointerArguments)
      {
        v26 = 0;
        v27 = 0;
      }

      v28 = a12;
      if (!gbShowCallPointerArguments)
      {
        v28 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, '%.500s', '%.500s', Masked:0x%016llx, %llu, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx, Masked:0x%016llx)\n", v20, v21, "SDVoc_GetWords", a1, a2, a3, a4, v22, a6, v23, v24, v25, v26, v27, v28);
    }

    if (!a5 && a6)
    {
      throwBadLengthForNullPointer(a6, "DgnVerifyWritePtr");
    }

    if (!a7)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr");
    }

    if (!a8)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr");
    }

    if (!a9)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr");
    }

    if (!a12)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr");
    }

    if (a2 == -2)
    {
      LOWORD(a2) = -2;
      goto LABEL_48;
    }

    if (a2 != -1)
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        throwBadSdapiArgument("SDhColl", a2);
      }

      if (a2 != 0xFFFF && a2)
      {
LABEL_48:
        v36 = 0;
        *v37 = 0;
        v29 = ModelMgr::smpModelMgr;
        if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
        {
          throwBadSdapiArgument("SDhVoc", a1);
        }

        if (a1 - 1 >= 0x7B)
        {
          throwBadSdapiArgument("SDhVoc", a1);
        }

        v30 = *(ModelMgr::getVocOrThrow(v29, a1) + 48);
        v35 = 0;
        WordList::getWordsWithPrefix(v30, a2, a3, a4, &v36, &v35, v31);
        v32 = v37[0];
        if (v37[0] <= a6)
        {
          *a8 = a5;
          *a9 = a6;
          if (!v32)
          {
LABEL_62:
            *a7 = v32;
            *a12 = v35;
            DgnPrimArray<unsigned int>::~DgnPrimArray(&v36);
            goto LABEL_63;
          }
        }

        else
        {
          ApiState::callReallocateArrayCallback(ApiState::smpApiState, a10, a11, 8, v37[0], a5, a6, a8, a9);
          if (!*a8)
          {
            v33 = *a9;
            if (v33)
            {
              throwBadLengthForNullPointer(v33, "DgnVerifyWritePtr");
            }
          }

          v32 = v37[0];
          if (!v37[0])
          {
            goto LABEL_62;
          }
        }

        v34 = 0;
        do
        {
          *(*a8 + v34) = *(v36 + 4 * v34) + 1;
          ++v34;
        }

        while (v32 != v34);
        goto LABEL_62;
      }

      throwBadSdapiArgument("SDhColl", a2);
      if (a2 != 0xFFFF)
      {
        LOWORD(a2) = 0;
        goto LABEL_48;
      }
    }

    if (*a3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 521, "sdapi/sdvoc", 12, "%s", &errStr_sdapi_sdvoc_E_PREFIXNOCOLLATION);
    }

    LOWORD(a2) = -1;
    goto LABEL_48;
  }

LABEL_63:
  SdapiInsurance::~SdapiInsurance(v38);
}

void sub_26277F288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (a2 == 2)
  {
    v28 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v28, v29);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v30 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v30);
  }

  __cxa_end_catch();
  JUMPOUT(0x26277F260);
}

uint64_t SDVoc_GetAllowedWordCollations(unint64_t a1, uint64_t a2, unsigned int a3)
{
  SdapiInsurance::SdapiInsurance(v15, "SDVoc_GetAllowedWordCollations", 1, 1, 386);
  if (v15[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v7 = a2;
      }

      else
      {
        v7 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, Masked:0x%016llx, %llu)\n", v6, "SDVoc_GetAllowedWordCollations", a1, v7, a3);
    }

    if (!a2 && a3)
    {
      throwBadLengthForNullPointer(a3, "DgnVerifyWritePtr");
    }

    v8 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    VocOrThrow = ModelMgr::getVocOrThrow(v8, a1);
    Colls = WordList::getColls(*(VocOrThrow + 48));
    v11 = *(Colls + 8);
    if (a3)
    {
      v12 = 0;
      do
      {
        if (v11 == v12)
        {
          break;
        }

        v13 = *(*Colls + 2 * v12);
        if ((v13 + 1) >= 2u)
        {
          if (v13 == 65534)
          {
            v13 = -2;
          }
        }

        else
        {
          v13 = -1;
        }

        *(a2 + 8 * v12++) = v13;
      }

      while (a3 != v12);
    }
  }

  else
  {
    v11 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v15);
  return v11;
}

void SDVoc_SetAllowedWordCollations(unint64_t a1, uint64_t a2, unsigned int a3)
{
  SdapiInsurance::SdapiInsurance(v17, "SDVoc_SetAllowedWordCollations", 1, 0, 387);
  if (v17[97] != 1)
  {
    goto LABEL_36;
  }

  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    xlprintf("Entering sdapi call %.500s(<SDh %lld>, Masked:0x%016llx, %llu)\n", v6, "SDVoc_SetAllowedWordCollations", a1, v7, a3);
  }

  if (!a2 && a3)
  {
    throwBadLengthForNullPointer(a3, "DgnVerifyReadPtr");
    v15 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v15 = 0;
  v16 = 0;
  if (a3)
  {
LABEL_11:
    v18 = 0;
    v8 = 0;
    v9 = realloc_array(0, &v18, 2 * a3, 0, 0, 1) >> 1;
    v15 = v18;
    v16 = __PAIR64__(v9, a3);
    do
    {
      v10 = *(a2 + 8 * v8);
      if (v10 == -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdvoc.cpp", 586, "sdapi/sdvoc", 9, "%s", &errStr_sdapi_sdvoc_E_SETCOLL_WITH_NONE);
        v10 = *(a2 + 8 * v8);
      }

      if (v10 == -1)
      {
        LOWORD(v10) = -1;
      }

      else if (v10 == -2)
      {
        LOWORD(v10) = -2;
      }

      else
      {
        if (HIDWORD(v10))
        {
          v11 = 0;
        }

        else
        {
          v11 = (v10 & 0xFFFF0000) == 0;
        }

        if (!v11)
        {
          throwBadSdapiArgument("SDhColl", v10);
        }

        if (v10 == 0xFFFF || v10 == 0)
        {
          throwBadSdapiArgument("SDhColl", v10);
        }
      }

      v15[v8++] = v10;
    }

    while (a3 != v8);
    goto LABEL_30;
  }

  LODWORD(v16) = 0;
LABEL_30:
  v13 = ModelMgr::smpModelMgr;
  if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
  {
    throwBadSdapiArgument("SDhVoc", a1);
  }

  if (a1 - 1 >= 0x7B)
  {
    throwBadSdapiArgument("SDhVoc", a1);
  }

  VocOrThrow = ModelMgr::getVocOrThrow(v13, a1);
  WordList::setColls(*(VocOrThrow + 48), &v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
LABEL_36:
  SdapiInsurance::~SdapiInsurance(v17);
}

void sub_26277F754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a2 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v17, v18);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v19);
  }

  __cxa_end_catch();
  JUMPOUT(0x26277F724);
}

uint64_t SDVoc_GetCollationName(unint64_t a1, unint64_t a2, char *a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v16, "SDVoc_GetCollationName", 1, 1, 389);
  if (v16[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v9 = a3;
      }

      else
      {
        v9 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v8, "SDVoc_GetCollationName", a1, a2, v9, a4);
    }

    if (!a3 && a4)
    {
      throwBadLengthForNullPointer(a4, "DgnVerifyWritePtr");
    }

    v10 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v11 = *(ModelMgr::getVocOrThrow(v10, a1) + 16);
    if (a2 == -1)
    {
      LOWORD(a2) = -1;
    }

    else if (a2 == -2)
    {
      LOWORD(a2) = -2;
    }

    else
    {
      if (HIDWORD(a2) || (a2 & 0xFFFF0000) != 0)
      {
        v12 = throwBadSdapiArgument("SDhColl", a2);
      }

      if (a2 == 0xFFFF || !a2)
      {
        v12 = throwBadSdapiArgument("SDhColl", a2);
      }
    }

    CollationName = CollMgr::getCollationName(v11, a2, v12);
    v14 = sdUtilStrMove(a3, a4, CollationName);
  }

  else
  {
    v14 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v16);
  return v14;
}

uint64_t SDVoc_GetColls(unint64_t a1, void *a2, unsigned int a3)
{
  SdapiInsurance::SdapiInsurance(v24, "SDVoc_GetColls", 1, 1, 390);
  if (v24[97] != 1)
  {
    v20 = 0;
    goto LABEL_31;
  }

  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    xlprintf("Entering sdapi call %.500s(<SDh %lld>, Masked:0x%016llx, %llu)\n", v6, "SDVoc_GetColls", a1, v7, a3);
  }

  if (!a2 && a3)
  {
    throwBadLengthForNullPointer(a3, "DgnVerifyWritePtr");
  }

  v8 = ModelMgr::smpModelMgr;
  if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
  {
    throwBadSdapiArgument("SDhVoc", a1);
  }

  if (a1 - 1 >= 0x7B)
  {
    throwBadSdapiArgument("SDhVoc", a1);
  }

  VocOrThrow = ModelMgr::getVocOrThrow(v8, a1);
  ActiveCollations = CollMgr::getActiveCollations(*(VocOrThrow + 16));
  v22 = 0;
  *v23 = 0;
  v11 = *(ActiveCollations + 8);
  if (v11)
  {
    v25 = 0;
    v23[1] = realloc_array(0, &v25, 8 * v11, 0, 0, 1) >> 3;
    v12 = v25;
    v22 = v25;
    v13 = *(ActiveCollations + 8);
    if (v13)
    {
      for (i = 0; i < v13; ++i)
      {
        v15 = *(*ActiveCollations + 2 * i);
        v16 = (v15 + 1);
        if (v15 == 65534)
        {
          v15 = -2;
        }

        if (v16 >= 2)
        {
          v17 = v15;
        }

        else
        {
          v17 = -1;
        }

        v18 = v23[0];
        if (v23[0] == v23[1])
        {
          DgnPrimArray<unsigned long long>::reallocElts(&v22, 1, 1);
          v18 = v23[0];
          v13 = *(ActiveCollations + 8);
        }

        v22[v18] = v17;
        v19 = v18 + 1;
        v23[0] = v18 + 1;
      }

      v12 = v22;
      goto LABEL_29;
    }
  }

  else
  {
    v12 = 0;
  }

  v19 = v23[0];
LABEL_29:
  v20 = sdUtilItemMove(8, v12, v19, a2, a3);
  DgnIArray<Utterance *>::~DgnIArray(&v22);
LABEL_31:
  SdapiInsurance::~SdapiInsurance(v24);
  return v20;
}

void MrecInitModule_wordlm_lm(void)
{
  if (!gParDebugShowClonedLmIdsOnLoad)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowClonedLmIdsOnLoad", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowClonedLmIdsOnLoad = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowClonedLmIdsOnLoad);
  }

  if (!gParDebugShowLMInfoOnLoad)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowLMInfoOnLoad", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowLMInfoOnLoad = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowLMInfoOnLoad);
  }

  if (!gParDebugShowLMOnLoad)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowLMOnLoad", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowLMOnLoad = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowLMOnLoad);
  }

  if (!gParDebugShowWordLMDistributionOnLoad)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugShowWordLMDistributionOnLoad", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugShowWordLMDistributionOnLoad = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowWordLMDistributionOnLoad);
  }

  if (!gParDebugLMScoring)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugLMScoring", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugLMScoring = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugLMScoring);
  }

  if (!gParDebugLMAddDelete)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugLMAddDelete", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugLMAddDelete = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugLMAddDelete);
  }

  if (!gParDebugCopyLM)
  {
    v12 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v12, "DebugCopyLM", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v13 = &unk_287527EA0;
    gParDebugCopyLM = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugCopyLM);
  }

  if (!gParDebugWordLMBuild)
  {
    v14 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v14, "DebugWordLMBuild", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v15 = &unk_287527EA0;
    gParDebugWordLMBuild = v15;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordLMBuild);
  }

  if (!gParDebugWordLMStaticization)
  {
    v16 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v16, "DebugWordLMStaticization", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v17 = &unk_287527EA0;
    gParDebugWordLMStaticization = v17;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordLMStaticization);
  }

  if (!gParDebugWordLMBuildShowContextProbs)
  {
    v18 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v18, "DebugWordLMBuildShowContextProbs", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v19 = &unk_287527EA0;
    gParDebugWordLMBuildShowContextProbs = v19;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordLMBuildShowContextProbs);
  }

  if (!gParDebugWordLMDynamicLoad)
  {
    v20 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v20, "DebugWordLMDynamicLoad", &unk_26288CFB0, &unk_26288CFB0, 0, 0, 0);
    *v21 = &unk_287527EA0;
    gParDebugWordLMDynamicLoad = v21;
    v22 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v22, &gParDebugWordLMDynamicLoad);
  }
}

uint64_t DiskNgramContextBiTriIsolatedCmp::compareElements(DiskNgramContextBiTriIsolatedCmp *this, void *a2, void *a3, const void *a4)
{
  v4 = a2[1];
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = *a2 / v4;
  }

  v7 = a3[1];
  if (v7)
  {
    v5 = *a3 / v7;
  }

  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v4)
  {
    v10 = *a2 / v4;
  }

  if (v7)
  {
    v9 = *a3 / v7;
  }

  if (v10 < v9)
  {
    return 1;
  }

  v11 = *(a2 + 34);
  if (v11 == 3)
  {
    result = 1;
    if (*(a3 + 34) == 2)
    {
      return result;
    }
  }

  else
  {
    if (v11 == 2 && *(a3 + 34) == 3)
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(result) = 0;
  }

  v12 = *(a2 + 6);
  v13 = *(a3 + 6);
  if (v12 < v13)
  {
    return 0xFFFFFFFFLL;
  }

  if (v12 > v13)
  {
    return 1;
  }

  if (result)
  {
    v14 = *(a2 + 7);
    v15 = *(a3 + 7);
    if (v14 >= v15)
    {
      return v14 > v15;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t DiskNgramContextBiTriGroupTrigramsCmp::compareElements(DiskNgramContextBiTriGroupTrigramsCmp *this, float *a2, float *a3, const void *a4)
{
  v4 = *(a2 + 2);
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = a2[1] / v4;
  }

  v7 = *(a3 + 2);
  if (v7)
  {
    v5 = a3[1] / v7;
  }

  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v4)
  {
    v10 = a2[1] / v4;
  }

  if (v7)
  {
    v9 = a3[1] / v7;
  }

  if (v10 < v9)
  {
    return 1;
  }

  v11 = *(a2 + 34);
  if (v11 == 3)
  {
    result = 1;
    if (*(a3 + 34) == 2)
    {
      return result;
    }
  }

  else
  {
    if (v11 == 2 && *(a3 + 34) == 3)
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(result) = 0;
  }

  v12 = *(a2 + 1);
  v13 = 0.0;
  v14 = 0.0;
  if (v12)
  {
    v14 = *a2 / v12;
  }

  v15 = *(a3 + 1);
  if (v15)
  {
    v13 = *a3 / v15;
  }

  if (v14 > v13)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = 0.0;
  v17 = 0.0;
  if (v12)
  {
    v17 = *a2 / v12;
  }

  if (v15)
  {
    v16 = *a3 / v15;
  }

  if (v17 < v16)
  {
    return 1;
  }

  v18 = *(a2 + 6);
  v19 = *(a3 + 6);
  if (v18 < v19)
  {
    return 0xFFFFFFFFLL;
  }

  if (v18 > v19)
  {
    return 1;
  }

  if (result)
  {
    v20 = *(a2 + 7);
    v21 = *(a3 + 7);
    if (v20 >= v21)
    {
      return v20 > v21;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(DiskNgramContextBiTriGroupTrigramsWithBigramsCmp *this, float *a2, float *a3, const void *a4)
{
  v4 = *(a2 + 2);
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = a2[1] / v4;
  }

  v7 = *(a3 + 2);
  if (v7)
  {
    v5 = a3[1] / v7;
  }

  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v4)
  {
    v10 = a2[1] / v4;
  }

  if (v7)
  {
    v9 = a3[1] / v7;
  }

  if (v10 < v9)
  {
    return 1;
  }

  v11 = *(a2 + 6);
  v12 = *(a3 + 6);
  if (v11 < v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 > v12)
  {
    return 1;
  }

  v13 = *(a2 + 34);
  if (v13 == 3)
  {
    result = 1;
    if (*(a3 + 34) == 2)
    {
      return result;
    }
  }

  else
  {
    if (v13 == 2 && *(a3 + 34) == 3)
    {
      return 0xFFFFFFFFLL;
    }

    LODWORD(result) = 0;
  }

  v14 = *(a2 + 1);
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    v16 = *a2 / v14;
  }

  v17 = *(a3 + 1);
  if (v17)
  {
    v15 = *a3 / v17;
  }

  if (v16 > v15)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = 0.0;
  v19 = 0.0;
  if (v14)
  {
    v19 = *a2 / v14;
  }

  if (v17)
  {
    v18 = *a3 / v17;
  }

  if (v19 < v18)
  {
    return 1;
  }

  if (result)
  {
    v20 = *(a2 + 7);
    v21 = *(a3 + 7);
    if (v20 >= v21)
    {
      return v20 > v21;
    }

    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t DiskNgramContextQuadIsolatedCmp::compareElements(DiskNgramContextQuadIsolatedCmp *this, void *a2, void *a3, const void *a4)
{
  v4 = a2[1];
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = *a2 / v4;
  }

  v7 = a3[1];
  if (v7)
  {
    v5 = *a3 / v7;
  }

  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v4)
  {
    v10 = *a2 / v4;
  }

  if (v7)
  {
    v9 = *a3 / v7;
  }

  if (v10 < v9)
  {
    return 1;
  }

  v11 = *(a2 + 6);
  v12 = *(a3 + 6);
  if (v11 < v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 > v12)
  {
    return 1;
  }

  v13 = *(a2 + 7);
  v14 = *(a3 + 7);
  v15 = v13 >= v14;
  v16 = v13 > v14;
  if (v15)
  {
    return v16;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t DiskNgramContextQuadGroupCmp::compareElements(DiskNgramContextQuadGroupCmp *this, float *a2, float *a3, const void *a4)
{
  v4 = *(a2 + 2);
  v5 = 0.0;
  v6 = 0.0;
  if (v4)
  {
    v6 = a2[1] / v4;
  }

  v7 = *(a3 + 2);
  if (v7)
  {
    v5 = a3[1] / v7;
  }

  if (v6 > v5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0.0;
  v10 = 0.0;
  if (v4)
  {
    v10 = a2[1] / v4;
  }

  if (v7)
  {
    v9 = a3[1] / v7;
  }

  if (v10 < v9)
  {
    return 1;
  }

  v11 = *(a2 + 6);
  v12 = *(a3 + 6);
  if (v11 < v12)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 > v12)
  {
    return 1;
  }

  v13 = *(a2 + 1);
  v14 = 0.0;
  v15 = 0.0;
  if (v13)
  {
    v15 = *a2 / v13;
  }

  v16 = *(a3 + 1);
  if (v16)
  {
    v14 = *a3 / v16;
  }

  if (v15 > v14)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = 0.0;
  v18 = 0.0;
  if (v13)
  {
    v18 = *a2 / v13;
  }

  if (v16)
  {
    v17 = *a3 / v16;
  }

  if (v18 < v17)
  {
    return 1;
  }

  v19 = *(a2 + 7);
  v20 = *(a3 + 7);
  if (v19 < v20)
  {
    return 0xFFFFFFFFLL;
  }

  return v19 > v20;
}

uint64_t WordIdAndCountCmp::compareElements(WordIdAndCountCmp *this, unsigned int *a2, unsigned int *a3, const void *a4)
{
  v5 = a2[1];
  v6 = a3[1];
  if (v5 == v6)
  {
    WordIdWordName = WordLanguageModel::getWordIdWordName(this, *a2);
    v10 = WordLanguageModel::getWordIdWordName(this, *a3);

    return strcmp(WordIdWordName, v10);
  }

  else if (v5 > v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

const char *WordLanguageModel::getWordIdWordName(WordLanguageModel *this, unsigned int a2)
{
  v2 = *(this + 2);
  if (*(v2 + 388) > a2 && *(*(v2 + 104) + a2))
  {
    return (*(v2 + 224) + *(*(v2 + 200) + 4 * a2));
  }

  if (a2 - 16777212 > 3)
  {
    return "UNKNOWN";
  }

  return off_279B407A8[a2 - 16777212];
}

void BigramData::BigramData(BigramData *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  DgnString::DgnString((this + 24));
  DgnString::DgnString((this + 40));
  DgnString::DgnString((this + 56));
  DgnString::DgnString((this + 72));
  *this = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 47) = 0;
  *(this + 88) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
}

void sub_2627808C8(_Unwind_Exception *a1)
{
  BitArray::~BitArray((v1 + 56));
  BitArray::~BitArray((v1 + 40));
  BitArray::~BitArray((v2 + 16));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void BigramData::~BigramData(BigramData *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 368);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 352);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 336);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 320);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 288);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 272);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 256);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 240);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 176);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(this + 88);
  BitArray::~BitArray((this + 72));
  BitArray::~BitArray((this + 56));
  BitArray::~BitArray((this + 40));
  BitArray::~BitArray((this + 24));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

void **BigramData::compact(void **this)
{
  BitArray::compact((this + 3));
  BitArray::compact((this + 5));
  BitArray::compact((this + 9));
  BitArray::compact((this + 7));
  DgnPrimArray<unsigned int>::compact((this + 22));
  DgnPrimArray<unsigned short>::compact((this + 24));
  DgnPrimArray<unsigned short>::compact((this + 26));
  DgnPrimArray<unsigned char>::compact(this + 28);
  DgnPrimArray<unsigned short>::compact((this + 30));
  DgnPrimArray<unsigned short>::compact((this + 32));
  DgnPrimArray<unsigned char>::compact(this + 34);
  DgnPrimArray<unsigned int>::compact((this + 36));
  DgnPrimArray<unsigned int>::compact((this + 38));
  DgnPrimArray<unsigned int>::compact((this + 40));
  DgnPrimArray<unsigned short>::compact((this + 42));
  DgnPrimArray<unsigned short>::compact((this + 44));

  return DgnPrimArray<unsigned char>::compact(this + 46);
}

uint64_t BigramData::bi1SetEmpty(uint64_t this, unsigned int a2)
{
  v2 = a2 >> 5;
  *(*(this + 24) + 4 * (a2 >> 5)) &= ~(1 << a2);
  if (*this)
  {
    v3 = ~(1 << a2);
    *(*(this + 40) + 4 * v2) &= v3;
    *(*(this + 56) + 4 * v2) &= v3;
    if (*(this + 96))
    {
      *(*(this + 72) + 4 * v2) &= v3;
    }
  }

  *(*(this + 176) + 4 * a2) = -1;
  *(*(this + 192) + 2 * a2) = 0;
  return this;
}

void BigramData::printSize(BigramData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 840);
  if (v152)
  {
    v13 = v151;
  }

  else
  {
    v13 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288CFB0, a3, &unk_26288CFB0, v13);
  DgnString::~DgnString(&v151);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288CFB0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v18 = v151;
  }

  else
  {
    v18 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v151);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v20 = v151;
  }

  else
  {
    v20 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  v150 = a3;
  DgnString::~DgnString(&v151);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 12;
  }

  else
  {
    v21 = 16;
  }

  v22 = *(this + 4);
  v23 = *(this + 5);
  if (v23 >= v22)
  {
    v24 = 0;
    if (v22 > 0)
    {
      v21 += 2 * (v22 - 1) + 2;
    }

    v25 = v21 + 2 * (v23 - v22);
  }

  else
  {
    v24 = 2 * v22;
    v25 = v21;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v27 = v151;
  }

  else
  {
    v27 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v15, &unk_26288CFB0, v16, v16, v27, v25, v21, v24);
  DgnString::~DgnString(&v151);
  *a4 += v25;
  *a5 += v21;
  *a6 += v24;
  v28 = BitArray::sizeObject(this + 24, 0);
  v29 = BitArray::sizeObject(this + 24, 1);
  v30 = BitArray::sizeObject(this + 24, 3);
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v32 = v151;
  }

  else
  {
    v32 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v15, &unk_26288CFB0, v16, v16, v32, v28, v29, v30);
  DgnString::~DgnString(&v151);
  *a4 += v28;
  *a5 += v29;
  *a6 += v30;
  v33 = BitArray::sizeObject(this + 40, 0);
  v34 = BitArray::sizeObject(this + 40, 1);
  v35 = BitArray::sizeObject(this + 40, 3);
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v37 = v151;
  }

  else
  {
    v37 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v15, &unk_26288CFB0, v16, v16, v37, v33, v34, v35);
  DgnString::~DgnString(&v151);
  *a4 += v33;
  *a5 += v34;
  *a6 += v35;
  v38 = BitArray::sizeObject(this + 56, 0);
  v39 = BitArray::sizeObject(this + 56, 1);
  v40 = BitArray::sizeObject(this + 56, 3);
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v42 = v151;
  }

  else
  {
    v42 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v15, &unk_26288CFB0, v16, v16, v42, v38, v39, v40);
  DgnString::~DgnString(&v151);
  *a4 += v38;
  *a5 += v39;
  *a6 += v40;
  v43 = BitArray::sizeObject(this + 72, 0);
  v44 = BitArray::sizeObject(this + 72, 1);
  v45 = BitArray::sizeObject(this + 72, 3);
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v47 = v151;
  }

  else
  {
    v47 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v15, &unk_26288CFB0, v16, v16, v47, v43, v44, v45);
  DgnString::~DgnString(&v151);
  *a4 += v43;
  *a5 += v44;
  *a6 += v45;
  v48 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 88, 0);
  v49 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 88, 1);
  v50 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 88, 3);
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v52 = v151;
  }

  else
  {
    v52 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26288CFB0, v16, v16, v52, v48, v49, v50);
  DgnString::~DgnString(&v151);
  *a4 += v48;
  *a5 += v49;
  *a6 += v50;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  else
  {
    v53 = 16;
  }

  v54 = *(this + 46);
  v55 = *(this + 47);
  if (v55 >= v54)
  {
    v56 = 0;
    if (v54 > 0)
    {
      v53 += 4 * (v54 - 1) + 4;
    }

    v57 = v53 + 4 * (v55 - v54);
  }

  else
  {
    v56 = 4 * v54;
    v57 = v53;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v59 = v151;
  }

  else
  {
    v59 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v15, &unk_26288CFB0, v16, v16, v59, v57, v53, v56);
  DgnString::~DgnString(&v151);
  *a4 += v57;
  *a5 += v53;
  *a6 += v56;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v60 = 12;
  }

  else
  {
    v60 = 16;
  }

  v61 = *(this + 50);
  v62 = *(this + 51);
  if (v62 >= v61)
  {
    v63 = 0;
    if (v61 > 0)
    {
      v60 += 2 * (v61 - 1) + 2;
    }

    v64 = v60 + 2 * (v62 - v61);
  }

  else
  {
    v63 = 2 * v61;
    v64 = v60;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v66 = v151;
  }

  else
  {
    v66 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v15, &unk_26288CFB0, v16, v16, v66, v64, v60, v63);
  DgnString::~DgnString(&v151);
  *a4 += v64;
  *a5 += v60;
  *a6 += v63;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v67 = 12;
  }

  else
  {
    v67 = 16;
  }

  v68 = *(this + 54);
  v69 = *(this + 55);
  if (v69 >= v68)
  {
    v70 = 0;
    if (v68 > 0)
    {
      v67 += 2 * (v68 - 1) + 2;
    }

    v71 = v67 + 2 * (v69 - v68);
  }

  else
  {
    v70 = 2 * v68;
    v71 = v67;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v73 = v151;
  }

  else
  {
    v73 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v15, &unk_26288CFB0, v16, v16, v73, v71, v67, v70);
  DgnString::~DgnString(&v151);
  *a4 += v71;
  *a5 += v67;
  *a6 += v70;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v74 = 12;
  }

  else
  {
    v74 = 16;
  }

  v75 = *(this + 58);
  v76 = *(this + 59);
  v77 = v76 >= v75;
  v78 = v76 - v75;
  if (v77)
  {
    if (v75 > 0)
    {
      v79 = (v75 - 1) + v74 + 1;
    }

    else
    {
      v79 = v74;
    }

    v74 = v79 + v78;
    v75 = 0;
  }

  else
  {
    v79 = v74;
  }

  v80 = v75;
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v82 = v151;
  }

  else
  {
    v82 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v15, &unk_26288CFB0, v16, v16, v82, v74, v79, v80);
  DgnString::~DgnString(&v151);
  *a4 += v74;
  *a5 += v79;
  *a6 += v80;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v83 = 12;
  }

  else
  {
    v83 = 16;
  }

  v84 = *(this + 62);
  v85 = *(this + 63);
  if (v85 >= v84)
  {
    v86 = 0;
    if (v84 > 0)
    {
      v83 += 2 * (v84 - 1) + 2;
    }

    v87 = v83 + 2 * (v85 - v84);
  }

  else
  {
    v86 = 2 * v84;
    v87 = v83;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v89 = v151;
  }

  else
  {
    v89 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v88, v15, &unk_26288CFB0, v16, v16, v89, v87, v83, v86);
  DgnString::~DgnString(&v151);
  *a4 += v87;
  *a5 += v83;
  *a6 += v86;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v90 = 12;
  }

  else
  {
    v90 = 16;
  }

  v91 = *(this + 66);
  v92 = *(this + 67);
  if (v92 >= v91)
  {
    v93 = 0;
    if (v91 > 0)
    {
      v90 += 2 * (v91 - 1) + 2;
    }

    v94 = v90 + 2 * (v92 - v91);
  }

  else
  {
    v93 = 2 * v91;
    v94 = v90;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v96 = v151;
  }

  else
  {
    v96 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v95, v15, &unk_26288CFB0, v16, v16, v96, v94, v90, v93);
  DgnString::~DgnString(&v151);
  *a4 += v94;
  *a5 += v90;
  *a6 += v93;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v97 = 12;
  }

  else
  {
    v97 = 16;
  }

  v98 = *(this + 70);
  v99 = *(this + 71);
  v77 = v99 >= v98;
  v100 = v99 - v98;
  if (v77)
  {
    if (v98 > 0)
    {
      v101 = (v98 - 1) + v97 + 1;
    }

    else
    {
      v101 = v97;
    }

    v97 = v101 + v100;
    v98 = 0;
  }

  else
  {
    v101 = v97;
  }

  v102 = v98;
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v104 = v151;
  }

  else
  {
    v104 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v15, &unk_26288CFB0, v16, v16, v104, v97, v101, v102);
  DgnString::~DgnString(&v151);
  *a4 += v97;
  *a5 += v101;
  *a6 += v102;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v105 = 12;
  }

  else
  {
    v105 = 16;
  }

  v106 = *(this + 74);
  v107 = *(this + 75);
  if (v107 >= v106)
  {
    v108 = 0;
    if (v106 > 0)
    {
      v105 += 4 * (v106 - 1) + 4;
    }

    v109 = v105 + 4 * (v107 - v106);
  }

  else
  {
    v108 = 4 * v106;
    v109 = v105;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v111 = v151;
  }

  else
  {
    v111 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v110, v15, &unk_26288CFB0, v16, v16, v111, v109, v105, v108);
  DgnString::~DgnString(&v151);
  *a4 += v109;
  *a5 += v105;
  *a6 += v108;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v112 = 12;
  }

  else
  {
    v112 = 16;
  }

  v113 = *(this + 78);
  v114 = *(this + 79);
  if (v114 >= v113)
  {
    v115 = 0;
    if (v113 > 0)
    {
      v112 += 4 * (v113 - 1) + 4;
    }

    v116 = v112 + 4 * (v114 - v113);
  }

  else
  {
    v115 = 4 * v113;
    v116 = v112;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v118 = v151;
  }

  else
  {
    v118 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v15, &unk_26288CFB0, v16, v16, v118, v116, v112, v115);
  DgnString::~DgnString(&v151);
  *a4 += v116;
  *a5 += v112;
  *a6 += v115;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v119 = 12;
  }

  else
  {
    v119 = 16;
  }

  v120 = *(this + 82);
  v121 = *(this + 83);
  if (v121 >= v120)
  {
    v122 = 0;
    if (v120 > 0)
    {
      v119 += 4 * (v120 - 1) + 4;
    }

    v123 = v119 + 4 * (v121 - v120);
  }

  else
  {
    v122 = 4 * v120;
    v123 = v119;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v125 = v151;
  }

  else
  {
    v125 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v124, v15, &unk_26288CFB0, v16, v16, v125, v123, v119, v122);
  DgnString::~DgnString(&v151);
  *a4 += v123;
  *a5 += v119;
  *a6 += v122;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v126 = 12;
  }

  else
  {
    v126 = 16;
  }

  v127 = *(this + 86);
  v128 = *(this + 87);
  if (v128 >= v127)
  {
    v129 = 0;
    if (v127 > 0)
    {
      v126 += 2 * (v127 - 1) + 2;
    }

    v130 = v126 + 2 * (v128 - v127);
  }

  else
  {
    v129 = 2 * v127;
    v130 = v126;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v132 = v151;
  }

  else
  {
    v132 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v131, v15, &unk_26288CFB0, v16, v16, v132, v130, v126, v129);
  DgnString::~DgnString(&v151);
  *a4 += v130;
  *a5 += v126;
  *a6 += v129;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v133 = 12;
  }

  else
  {
    v133 = 16;
  }

  v134 = *(this + 90);
  v135 = *(this + 91);
  if (v135 >= v134)
  {
    v136 = 0;
    if (v134 > 0)
    {
      v133 += 2 * (v134 - 1) + 2;
    }

    v137 = v133 + 2 * (v135 - v134);
  }

  else
  {
    v136 = 2 * v134;
    v137 = v133;
  }

  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v139 = v151;
  }

  else
  {
    v139 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v138, v15, &unk_26288CFB0, v16, v16, v139, v137, v133, v136);
  DgnString::~DgnString(&v151);
  *a4 += v137;
  *a5 += v133;
  *a6 += v136;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v140 = 12;
  }

  else
  {
    v140 = 16;
  }

  v141 = *(this + 94);
  v142 = *(this + 95);
  v77 = v142 >= v141;
  v143 = v142 - v141;
  if (v77)
  {
    if (v141 > 0)
    {
      v144 = (v141 - 1) + v140 + 1;
    }

    else
    {
      v144 = v140;
    }

    v140 = v144 + v143;
    v141 = 0;
  }

  else
  {
    v144 = v140;
  }

  v145 = v141;
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 843);
  if (v152)
  {
    v147 = v151;
  }

  else
  {
    v147 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v146, v15, &unk_26288CFB0, v16, v16, v147, v140, v144, v145);
  DgnString::~DgnString(&v151);
  *a4 += v140;
  *a5 += v144;
  *a6 += v145;
  getShipObjectSizeDescription(&v151, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 845);
  if (v152)
  {
    v149 = v151;
  }

  else
  {
    v149 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v150, &unk_26288CFB0, (35 - v150), (35 - v150), v149, *a4, *a5, *a6);
  DgnString::~DgnString(&v151);
}

void sub_262781AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void **BigramData::copyBigramData(int **this, const BigramData *a2)
{
  *this = *a2;
  v4 = (this + 30);
  DgnPrimArray<unsigned short>::copyArraySlice(this + 1, a2 + 1, 0, *(a2 + 4));
  BitArray::operator=(this + 3, a2 + 24);
  BitArray::operator=(this + 5, a2 + 40);
  BitArray::operator=(this + 7, a2 + 56);
  BitArray::operator=(this + 9, a2 + 72);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(this + 11, a2 + 88);
  DgnPrimArray<int>::copyArraySlice(this + 22, a2 + 22, 0, *(a2 + 46));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 24, a2 + 24, 0, *(a2 + 50));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 26, a2 + 26, 0, *(a2 + 54));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 28, a2 + 28, 0, *(a2 + 58));
  DgnPrimArray<unsigned short>::copyArraySlice(v4, a2 + 30, 0, *(a2 + 62));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 32, a2 + 32, 0, *(a2 + 66));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 34, a2 + 34, 0, *(a2 + 70));
  DgnPrimArray<int>::copyArraySlice(this + 36, a2 + 36, 0, *(a2 + 74));
  DgnPrimArray<int>::copyArraySlice(this + 38, a2 + 38, 0, *(a2 + 78));
  DgnPrimArray<int>::copyArraySlice(this + 40, a2 + 40, 0, *(a2 + 82));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 42, a2 + 42, 0, *(a2 + 86));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 44, a2 + 44, 0, *(a2 + 90));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 46, a2 + 46, 0, *(a2 + 94));

  return BigramData::compact(this);
}

uint64_t *HuffmanDecoder<unsigned short,unsigned int>::operator=(uint64_t *a1, uint64_t a2)
{
  DgnPrimArray<int>::copyArraySlice(a1, a2, 0, *(a2 + 8));
  DgnPrimArray<unsigned char>::copyArraySlice(a1 + 2, (a2 + 16), 0, *(a2 + 24));
  DgnPrimArray<int>::copyArraySlice(a1 + 4, (a2 + 32), 0, *(a2 + 40));
  DgnPrimArray<unsigned short>::copyArraySlice(a1 + 6, (a2 + 48), 0, *(a2 + 56));
  a1[8] = *(a2 + 64);
  DgnPrimArray<int>::copyArraySlice(a1 + 9, (a2 + 72), 0, *(a2 + 80));
  return a1;
}

uint64_t BigramData::saveBinary(BigramData *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this, a3);
  writeObject(a2, this + 1, a3);
  writeObject<unsigned short>(a2, this + 8, a3);
  writeObject(a2, this + 24, a3);
  writeObject(a2, this + 40, a3);
  writeObject(a2, this + 56, a3);
  writeObject(a2, this + 72, a3);
  HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 88, a2, a3);
  writeObject<unsigned int>(a2, this + 176, a3);
  writeObject<unsigned short>(a2, this + 192, a3);
  writeObject<unsigned short>(a2, this + 208, a3);
  writeObject<unsigned char>(a2, this + 224, a3);
  writeObject<unsigned short>(a2, this + 240, a3);
  writeObject<unsigned short>(a2, this + 256, a3);
  writeObject<unsigned char>(a2, this + 272, a3);
  writeObject<unsigned int>(a2, this + 288, a3);
  writeObject<unsigned int>(a2, this + 304, a3);
  writeObject<unsigned int>(a2, this + 320, a3);
  writeObject<unsigned short>(a2, this + 336, a3);
  writeObject<unsigned short>(a2, this + 352, a3);

  return writeObject<unsigned char>(a2, this + 368, a3);
}

void BigramData::loadBinary(BigramData *this, DgnStream *a2, unsigned int *a3)
{
  readObject(a2, this, a3);
  readObject(a2, this + 1, a3);
  readObject<unsigned short>(a2, this + 8, a3);
  readObject(a2, (this + 24), a3);
  readObject(a2, (this + 40), a3);
  readObject(a2, (this + 56), a3);
  readObject(a2, (this + 72), a3);
  HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 11, a2, a3);
  readObject<unsigned int>(a2, this + 176, a3);
  readObject<unsigned short>(a2, this + 192, a3);
  readObject<unsigned short>(a2, this + 208, a3);
  readObject<unsigned char>(a2, this + 224, a3);
  readObject<unsigned short>(a2, this + 240, a3);
  readObject<unsigned short>(a2, this + 256, a3);
  readObject<unsigned char>(a2, this + 272, a3);
  readObject<unsigned int>(a2, this + 288, a3);
  readObject<unsigned int>(a2, this + 304, a3);
  readObject<unsigned int>(a2, this + 320, a3);
  readObject<unsigned short>(a2, this + 336, a3);
  readObject<unsigned short>(a2, this + 352, a3);

  readObject<unsigned char>(a2, this + 368, a3);
}

char *BigramData::saveBinaryShared(BigramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    writeObject(a2, this, a4);
    writeObject(a2, this + 1, a4);
    writeSharedObject<short>(a2, this + 8, a4);
    writeSharedObject(a2, (this + 24), a4);
    writeSharedObject(a2, (this + 40), a4);
    writeSharedObject(a2, (this + 56), a4);
    writeSharedObject(a2, (this + 72), a4);
    HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 88, a2, a4);
  }

  else
  {
    writeSharedObject<short>(a2, this + 8, a4);
    writeSharedObject(a2, (this + 24), a4);
    writeSharedObject(a2, (this + 40), a4);
    writeSharedObject(a2, (this + 56), a4);
    writeSharedObject(a2, (this + 72), a4);
  }

  writeSharedObject<unsigned int>(a2, this + 176, a4);
  writeSharedObject<short>(a2, this + 192, a4);
  writeSharedObject<short>(a2, this + 208, a4);
  writeSharedObject<unsigned char>(a2, this + 224, a4);
  writeSharedObject<short>(a2, this + 240, a4);
  writeSharedObject<short>(a2, this + 256, a4);
  writeSharedObject<unsigned char>(a2, this + 272, a4);
  writeSharedObject<unsigned int>(a2, this + 288, a4);
  writeSharedObject<unsigned int>(a2, this + 304, a4);
  writeSharedObject<unsigned int>(a2, this + 320, a4);
  writeSharedObject<short>(a2, this + 336, a4);
  writeSharedObject<short>(a2, this + 352, a4);

  return writeSharedObject<unsigned char>(a2, this + 368, a4);
}

int *BigramData::loadBinaryShared(BigramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    readObject(a2, this, a4);
    readObject(a2, this + 1, a4);
    readSharedObject<short>(a2, this + 8, a4);
    readSharedObject(a2, (this + 24), a4);
    readSharedObject(a2, (this + 40), a4);
    readSharedObject(a2, (this + 56), a4);
    readSharedObject(a2, (this + 72), a4);
    HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 11, a2, a4);
  }

  else
  {
    readSharedObject<short>(a2, this + 8, a4);
    readSharedObject(a2, (this + 24), a4);
    readSharedObject(a2, (this + 40), a4);
    readSharedObject(a2, (this + 56), a4);
    readSharedObject(a2, (this + 72), a4);
  }

  readSharedObject<unsigned int>(a2, this + 176, a4);
  readSharedObject<short>(a2, this + 192, a4);
  readSharedObject<short>(a2, this + 208, a4);
  readSharedObject<unsigned char>(a2, this + 224, a4);
  readSharedObject<short>(a2, this + 240, a4);
  readSharedObject<short>(a2, this + 256, a4);
  readSharedObject<unsigned char>(a2, this + 272, a4);
  readSharedObject<unsigned int>(a2, this + 288, a4);
  readSharedObject<unsigned int>(a2, this + 304, a4);
  readSharedObject<unsigned int>(a2, this + 320, a4);
  readSharedObject<short>(a2, this + 336, a4);
  readSharedObject<short>(a2, this + 352, a4);

  return readSharedObject<unsigned char>(a2, this + 368, a4);
}

uint64_t BigramData::computeLocalPreloadableBytes(BigramData *this)
{
  v1 = *(this + 50);
  if (v1 >= 2)
  {
    v3 = 0;
    v4 = 1;
    while (1)
    {
      v5 = *(*(this + 24) + 2 * v4);
      if ((*(*(this + 3) + 4 * (v4 >> 5)) >> v4))
      {
        v6 = *(this + 4);
        if (*(*(this + 24) + 2 * v4))
        {
          v7 = 0;
          v8 = *(*(this + 22) + 4 * v4);
          v9 = v5 << (v6 == 0);
          if ((v5 + 1) <= 2u)
          {
            v10 = 2;
          }

          else
          {
            v10 = (v5 + 1);
          }

          v11 = v10 - 1;
          do
          {
            if (v6)
            {
              v12 = (*(this + 1) + 2 * *(*(this + 28) + v8));
            }

            else
            {
              v12 = (*(this + 26) + 2 * v8);
            }

            if (*v12 != 20000)
            {
              ++v7;
            }

            ++v8;
            --v11;
          }

          while (v11);
LABEL_24:
          if (v7 <= 1)
          {
            v15 = 0;
          }

          else
          {
            v15 = v9;
          }

          goto LABEL_28;
        }
      }

      else if (*(*(this + 24) + 2 * v4))
      {
        v13 = 0;
        v7 = 0;
        v9 = 0;
        do
        {
          if (BigramData::getSearchScoreForIndex(this, v4, v13) != 20000)
          {
            if (*(this + 4))
            {
              v14 = 3;
            }

            else
            {
              v14 = 4;
            }

            v9 += v14;
            ++v7;
          }

          ++v13;
        }

        while (v5 != v13);
        goto LABEL_24;
      }

      v15 = 0;
LABEL_28:
      v3 += v15;
      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return 0;
}

uint64_t BigramData::getSearchScoreForIndex(BigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 22) + 4 * a2);
  if (*(*(this + 24) + 2 * a2) != 1)
  {
    if (*this && ((*(*(this + 5) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      LODWORD(v3) = *(*(this + 40) + 4 * v3) + a3;
      if (*(this + 4))
      {
        v4 = *(this + 46);
LABEL_10:
        v3 = *(v4 + v3);
        goto LABEL_11;
      }

      v5 = *(this + 44);
    }

    else
    {
      LODWORD(v3) = v3 + a3;
      if (*(this + 4))
      {
        v4 = *(this + 34);
        goto LABEL_10;
      }

      v5 = *(this + 32);
    }

    LOWORD(v3) = *(v5 + 2 * v3);
    return v3;
  }

  if (*(this + 4))
  {
    v3 = *(*(this + 22) + 4 * a2);
LABEL_11:
    LOWORD(v3) = *(*(this + 1) + 2 * v3);
  }

  return v3;
}

uint64_t BigramData::initNewBigramData(uint64_t a1, BigramData *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 200);
  BigramData::configureBigramData(a2, 1, *(a1 + 16), *(a1 + 8));
  BigramData::preAllocateStaticBigramData(a2, v9);
  v10 = 232;
  if (!*(a1 + 4))
  {
    v10 = 216;
  }

  BigramData::preAllocateDynamicBigramData(a2, *(a1 + 248), *(a1 + v10));
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  *v45 = a4;
  v11 = *(a4 + 12);
  if (v9 > v11)
  {
    DgnArray<DiskNgramContext>::reallocElts(a4, v9 - v11, 0);
  }

  v12 = *(a5 + 12);
  v46 = a5;
  v48 = a2;
  if (v9 <= v12)
  {
    *(a5 + 8) = v9;
    if (!v9)
    {
      goto LABEL_55;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(a5, v9 - v12, 0);
    *(a5 + 8) = v9;
  }

  v13 = 0;
  do
  {
    *(*a5 + 8 * v13++) = 0;
  }

  while (v9 != v13);
  if (v9 >= 2)
  {
    for (i = 1; i != v9; ++i)
    {
      LODWORD(v56) = 0;
      LODWORD(v54) = 0;
      LODWORD(v52) = 0;
      v15 = i >> 5;
      v16 = 1 << i;
      v17 = *(*(a1 + 192) + 2 * i);
      if ((*(*(a1 + 24) + 4 * v15) & (1 << i)) != 0)
      {
        v18 = v17 << (*(a1 + 16) == 0);
        if (*(*(a1 + 192) + 2 * i))
        {
          v19 = 1;
          do
          {
            v20 = *(a1 + 16);
            v21 = v19 - 1;
            v22 = (*(*(a1 + 176) + 4 * i) + v21);
            if (v20)
            {
              v22 = *(*(a1 + 224) + v22);
              v23 = *(a1 + 8);
            }

            else
            {
              v23 = *(a1 + 208);
            }

            v24 = *(v23 + 2 * v22);
            if (v24 != 20000)
            {
              v25 = v56;
              if (v56 == HIDWORD(v56))
              {
                DgnPrimArray<short>::reallocElts(&v55, 1, 1);
                v25 = v56;
                v20 = *(a1 + 16);
              }

              v55[v25] = v19;
              LODWORD(v56) = v25 + 1;
              if (v20)
              {
                v26 = *(*(a1 + 224) + (*(*(a1 + 176) + 4 * i) + v21));
                v27 = v52;
                if (v52 == HIDWORD(v52))
                {
                  DgnPrimArray<char>::reallocElts(&v51, 1, 1);
                  v27 = v52;
                }

                *(v51 + v27) = v26;
                v28 = v52;
                v29 = &v52;
              }

              else
              {
                v28 = v54;
                if (v54 == HIDWORD(v54))
                {
                  DgnPrimArray<short>::reallocElts(&v53, 1, 1);
                  v28 = v54;
                }

                *(v53 + 2 * v28) = v24;
                v29 = &v54;
              }

              *v29 = v28 + 1;
            }

            ++v19;
          }

          while (v17 >= v19);
        }

        v30 = 0;
      }

      else if (*(*(a1 + 192) + 2 * i))
      {
        v31 = 0;
        v18 = 0;
        v30 = 0;
        do
        {
          SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex(a1, i, v31);
          SearchScoreForIndex = BigramData::getSearchScoreForIndex(a1, i, v31);
          v34 = SearchScoreForIndex;
          if (SearchScoreForIndex != 20000)
          {
            v35 = *(a1 + 16);
            if (v35)
            {
              v36 = 3;
            }

            else
            {
              v36 = 4;
            }

            v37 = v56;
            if (v56 == HIDWORD(v56))
            {
              DgnPrimArray<short>::reallocElts(&v55, 1, 1);
              v37 = v56;
              v35 = *(a1 + 16);
            }

            v55[v37] = SearchSuccIdForIndex;
            LODWORD(v56) = v37 + 1;
            if (v35)
            {
              SearchQuantizedScoreForIndex = BigramData::getSearchQuantizedScoreForIndex(a1, i, v31);
              v39 = v52;
              if (v52 == HIDWORD(v52))
              {
                DgnPrimArray<char>::reallocElts(&v51, 1, 1);
                v39 = v52;
              }

              *(v51 + v39) = SearchQuantizedScoreForIndex;
              v40 = v52;
              v41 = &v52;
            }

            else
            {
              v40 = v54;
              if (v54 == HIDWORD(v54))
              {
                DgnPrimArray<short>::reallocElts(&v53, 1, 1);
                v40 = v54;
              }

              *(v53 + 2 * v40) = v34;
              v41 = &v54;
            }

            ++v30;
            v18 += v36;
            *v41 = v40 + 1;
          }

          ++v31;
        }

        while (v17 != v31);
        LODWORD(v17) = 0;
        v15 = i >> 5;
        v16 = 1 << i;
      }

      else
      {
        v30 = 0;
        v18 = 0;
      }

      if (v56)
      {
        if (v56 == 1)
        {
          BigramData::fillBigramRecord(v48, i, &v55, &v53, &v51);
        }

        else
        {
          BigramData::allocBi1(v48, i);
          *(*(v48 + 5) + 4 * v15) |= v16;
          *(*(v48 + 24) + 2 * i) = v56;
          HuffmanEncoder<unsigned short,unsigned int>::addSuccessors(a3, &v55);
          v42 = **v45 + 56 * *(*v45 + 8);
          *v42 = 0;
          *(v42 + 8) = 0;
          *(v42 + 16) = 0;
          *(v42 + 24) = -1;
          strcpy((v42 + 32), " N");
          LODWORD(v42) = *(*v45 + 8);
          *(*v45 + 8) = v42 + 1;
          v43 = **v45 + 56 * v42;
          *(v43 + 34) = 2;
          *(v43 + 24) = i;
          *(v43 + 36) = i;
          *(v43 + 40) = v30;
          *(v43 + 44) = v17;
          *(v43 + 8) = v18;
          *(v43 + 16) = v18;
          *(*v46 + 8 * i) = **v45 + 56 * (*(*v45 + 8) - 1);
        }
      }
    }
  }

LABEL_55:
  if (!*(a3 + 128))
  {
    HuffmanEncoder<unsigned short,unsigned int>::addValue(a3, 0);
  }

  v50 = 0;
  memset(v49, 0, sizeof(v49));
  HuffmanEncoder<unsigned short,unsigned int>::finalizeTables(a3, v49);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(v48 + 11, v49);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(v49);
  BigramData::compact(v48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v51);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v53);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v55);
}

void sub_262782B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18 - 104);
  _Unwind_Resume(a1);
}

uint64_t *BigramData::configureBigramData(uint64_t *this, int a2, unsigned int a3, const unsigned __int16 *a4)
{
  v6 = this;
  *this = a2;
  *(this + 1) = a3 != 0;
  v7 = *(this + 5);
  if (a3 <= v7)
  {
    *(this + 4) = a3;
    if (!a3)
    {
      return this;
    }
  }

  else
  {
    this = DgnPrimArray<short>::reallocElts((this + 1), a3 - v7, 0);
    *(v6 + 4) = a3;
  }

  v8 = v6[1];
  v9 = a3;
  do
  {
    v10 = *a4++;
    *v8++ = v10;
    --v9;
  }

  while (v9);
  return this;
}

void BigramData::preAllocateStaticBigramData(BigramData *this, unsigned int a2)
{
  BitArray::preAllocate((this + 24), a2);
  if (*this)
  {
    BitArray::preAllocate((this + 40), a2);
    BitArray::preAllocate((this + 56), a2);
    BitArray::preAllocate((this + 72), a2);
  }

  v4 = *(this + 47);
  if (a2 > v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 176, a2 - v4, 0);
  }

  v5 = *(this + 51);
  if (a2 > v5)
  {

    DgnPrimArray<short>::reallocElts(this + 192, a2 - v5, 0);
  }
}

uint64_t *BigramData::preAllocateDynamicBigramData(uint64_t *this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 63);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 != 0 && v7)
  {
    this = DgnPrimArray<short>::reallocElts((this + 30), v8, 0);
  }

  if (*(v5 + 1))
  {
    if (*(v5 + 71) < a2)
    {
      v11 = 0;
      this = realloc_array(v5[34], &v11, a2, *(v5 + 70), *(v5 + 70), 1);
      *(v5 + 71) = this;
      v5[34] = v11;
    }

    if (*(v5 + 59) < a3)
    {
      v11 = 0;
      this = realloc_array(v5[28], &v11, a3, *(v5 + 58), *(v5 + 58), 1);
      *(v5 + 59) = this;
      v5[28] = v11;
    }
  }

  else
  {
    v9 = *(v5 + 67);
    if (a2 > v9)
    {
      this = DgnPrimArray<short>::reallocElts((v5 + 32), a2 - v9, 0);
    }

    v10 = *(v5 + 55);
    if (a3 > v10)
    {

      return DgnPrimArray<short>::reallocElts((v5 + 26), a3 - v10, 0);
    }
  }

  return this;
}

uint64_t *DgnPrimArray<unsigned short>::add(uint64_t *result, __int16 a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    result = DgnPrimArray<short>::reallocElts(result, 1, 1);
    v4 = *(v3 + 2);
  }

  *(*v3 + 2 * v4) = a2;
  *(v3 + 2) = v4 + 1;
  return result;
}

uint64_t *DgnPrimArray<unsigned char>::add(uint64_t *result, char a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    result = DgnPrimArray<char>::reallocElts(result, 1, 1);
    v4 = *(v3 + 2);
  }

  *(*v3 + v4) = a2;
  ++*(v3 + 2);
  return result;
}

uint64_t BigramData::getSearchSuccIdForIndex(BigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 22) + 4 * a2);
  if (*(*(this + 24) + 2 * a2) == 1)
  {
    return WORD1(v3);
  }

  if (*this && ((*(*(this + 5) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = *(*(this + 40) + 4 * v3) + a3;
    v6 = *(this + 42);
  }

  else
  {
    v5 = v3 + a3;
    v6 = *(this + 30);
  }

  return *(v6 + 2 * v5);
}

uint64_t BigramData::getSearchQuantizedScoreForIndex(BigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 22) + 4 * a2);
  if (*(*(this + 24) + 2 * a2) != 1)
  {
    if (*this && ((*(*(this + 5) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      LODWORD(v3) = *(*(this + 40) + 4 * v3) + a3;
      v4 = *(this + 46);
    }

    else
    {
      LODWORD(v3) = v3 + a3;
      v4 = *(this + 34);
    }

    LOBYTE(v3) = *(v4 + v3);
  }

  return v3;
}

void BigramData::fillBigramRecord(BigramData *a1, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *(a3 + 8);
  if (v10 == 1)
  {
    goto LABEL_5;
  }

  v11 = 3;
  if (!*(a1 + 4))
  {
    v11 = 4;
  }

  if (v11 * v10 < (*(*a3 + 2 * (v10 - 1)) << (*(a1 + 4) == 0)))
  {
LABEL_5:
    BigramData::allocSearch(a1, a2, *(a3 + 8));
    v12 = *(a3 + 8);
    if (*(a1 + 4))
    {
      if (v12)
      {
        v13 = 0;
        do
        {
          BigramData::setSearchSuccIdForIndex(a1, a2, v13, *(*a3 + 2 * v13));
          BigramData::setSearchQuantizedScoreForIndex(a1, a2, v13, *(*a5 + v13));
          ++v13;
        }

        while (v13 < *(a3 + 8));
      }
    }

    else if (v12)
    {
      v14 = 0;
      do
      {
        BigramData::setSearchSuccIdForIndex(a1, a2, v14, *(*a3 + 2 * v14));
        BigramData::setSearchScoreForIndex(a1, a2, v14, *(*a4 + 2 * v14));
        ++v14;
      }

      while (v14 < *(a3 + 8));
    }
  }

  else
  {

    BigramData::fillBigramRecordLookup(a1, a2, a3, a4, a5);
  }
}

void BigramData::allocBi1(_DWORD *this, unsigned int a2)
{
  while (this[50] <= a2)
  {
    v4 = this[46];
    if (v4 == this[47])
    {
      DgnPrimArray<unsigned int>::reallocElts((this + 44), 1, 1);
      v4 = this[46];
    }

    *(*(this + 22) + 4 * v4) = -1;
    ++this[46];
    v5 = this[50];
    if (v5 == this[51])
    {
      DgnPrimArray<short>::reallocElts((this + 48), 1, 1);
      v5 = this[50];
    }

    *(*(this + 24) + 2 * v5) = 0;
    this[50] = v5 + 1;
    BitArray::add((this + 6), 0);
    if (*this)
    {
      BitArray::add((this + 10), 0);
      BitArray::add((this + 14), 0);
      BitArray::add((this + 18), 0);
    }
  }
}

uint64_t **HuffmanEncoder<unsigned short,unsigned int>::addSuccessors(uint64_t a1, unsigned __int16 **a2)
{
  v4 = *(a2 + 2);
  v5 = **a2;
  result = HuffmanEncoder<unsigned short,unsigned int>::addValue(a1, v5);
  if (v4 >= 2)
  {
    v7 = 2 * v4;
    v8 = 2;
    do
    {
      v9 = (*a2)[v8 / 2];
      result = HuffmanEncoder<unsigned short,unsigned int>::addValue(a1, v9 - v5);
      v8 += 2;
      v5 = v9;
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t **HuffmanEncoder<unsigned short,unsigned int>::addValue(uint64_t a1, __int16 a2)
{
  v9 = a2;
  ++*a1;
  v3 = a1 + 8;
  result = Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::findBucket(a1 + 8, &v9);
  if (*result)
  {
    ++*((*result)[2] + 4);
  }

  else
  {
    v5 = MemChunkAlloc(0xCuLL, 0);
    v6 = v9;
    *v5 = 0x100000000;
    *(v5 + 4) = v6;
    v8 = v5;
    v7 = *(a1 + 128);
    if (v7 == *(a1 + 132))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 120, 1, 1);
      v7 = *(a1 + 128);
    }

    *(*(a1 + 120) + 8 * v7) = v5;
    *(a1 + 128) = v7 + 1;
    return Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::add(v3, &v9, &v8);
  }

  return result;
}

uint64_t HuffmanEncoder<unsigned short,unsigned int>::finalizeTables(uint64_t a1, uint64_t *a2)
{
  v38[0] = 0;
  v38[1] = 0;
  v4 = *(a1 + 128);
  if (v4 == 2)
  {
    HuffmanDecoder<unsigned short,unsigned int>::initializeTable(a2, 1, 2u);
    HuffmanDecoder<unsigned short,unsigned int>::addCode(a2, 0, 1, 0);
    v6 = *(a1 + 120);
    v7 = *v6;
    *v7 = 0x100000001;
    v8 = v6[1];
    v9 = a2[6];
    *v9 = *(v8 + 8);
    *v8 = 0x100000000;
    v9[1] = *(v7 + 8);
  }

  else if (v4 == 1)
  {
    HuffmanDecoder<unsigned short,unsigned int>::initializeTable(a2, 1, 1u);
    HuffmanDecoder<unsigned short,unsigned int>::addCode(a2, 0, 1, 0);
    v5 = **(a1 + 120);
    *v5 = 0x100000000;
    *a2[6] = *(v5 + 8);
  }

  else
  {
    v10 = HuffmanEncoder<unsigned short,unsigned int>::countsToLengths(a1, v38);
    v11 = v10;
    v12 = *(v38[0] + 4 * v10);
    v36 = 0;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    if (v10 >= 0x20)
    {
      throwTableCodeLimitExceeded(v10);
      v14 = HIDWORD(v35);
      v13 = v34;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    if (v14 < v11 + 1)
    {
      v32 = 0;
      HIDWORD(v35) = realloc_array(v13, &v32, 4 * (v11 + 1), 4 * v35, 4 * v35, 1) >> 2;
      v13 = v32;
      v34 = v32;
    }

    v15 = v4 - v12;
    LODWORD(v35) = v11 + 1;
    *v13 = 0;
    *(v13 + v11) = v15;
    v16 = v36;
    if (HIDWORD(v37) < v11 + 1)
    {
      v32 = 0;
      HIDWORD(v37) = realloc_array(v36, &v32, 4 * (v11 + 1), 4 * v37, 4 * v37, 1) >> 2;
      v16 = v32;
      v36 = v32;
    }

    LODWORD(v37) = v11 + 1;
    *v16 = 0;
    HuffmanDecoder<unsigned short,unsigned int>::initializeTable(a2, v11, v4);
    HuffmanDecoder<unsigned short,unsigned int>::addCode(a2, 0, v11, v15);
    if (v11)
    {
      v17 = 1;
      v18 = v11;
      do
      {
        v19 = (v38[0] + 4 * --v18);
        v20 = v19[1] + *(v36 + v17 - 1);
        *(v36 + v17) = v20 >> 1;
        if (*v19)
        {
          v15 -= *v19;
          HuffmanDecoder<unsigned short,unsigned int>::addCode(a2, v20 << ~v18, v18, v15);
        }

        *(v34 + v18) = v15;
        if (v20)
        {
          throwTableGenerationFailed();
        }

        ++v17;
      }

      while (v17 <= v11);
    }

    v32 = 0;
    v33 = 0;
    v39 = 0;
    v21 = realloc_array(0, &v39, 4 * (v11 + 1), 0, 0, 1);
    v22 = v39;
    v32 = v39;
    LODWORD(v33) = v11 + 1;
    HIDWORD(v33) = v21 >> 2;
    bzero(v39, 4 * (v11 + 1));
    if (v4)
    {
      v23 = *(a1 + 120);
      v24 = v34;
      v25 = a2[6];
      v26 = v36;
      do
      {
        v27 = *v23++;
        v28 = *(v27 + 4);
        v29 = v22[v28];
        v30 = v24[v28] + v29;
        v22[v28] = v29 + 1;
        *(v25 + 2 * v30) = *(v27 + 8);
        *v27 = v26[v11 - v28] + v29;
        --v4;
      }

      while (v4);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v36);
  }

  *(a1 + 4) = 1;
  HuffmanDecoder<unsigned short,unsigned int>::configureIndexHelper(a2);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v38);
}

void sub_2627835F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

uint64_t BigramData::savePersistentAndFillInNewBigramData(BigramData *this, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  v33 = a6 >> 5;
  v32 = 1 << a6;
  if ((*(*(this + 3) + 4 * (a6 >> 5)) & (1 << a6)) != 0)
  {
    if (*(*(this + 24) + 2 * a6))
    {
      v10 = 1;
      do
      {
        v11 = *(this + 4);
        v12 = v10 - 1;
        v13 = (*(*(this + 22) + 4 * a6) + v12);
        if (v11)
        {
          v13 = *(*(this + 28) + v13);
          v14 = *(this + 1);
        }

        else
        {
          v14 = *(this + 26);
        }

        v15 = *(v14 + 2 * v13);
        if (v15 != 20000)
        {
          v16 = v44;
          if (v44 == HIDWORD(v44))
          {
            DgnPrimArray<short>::reallocElts(&v43, 1, 1);
            v16 = v44;
            v11 = *(this + 4);
          }

          v43[v16] = v10;
          LODWORD(v44) = v16 + 1;
          if (v11)
          {
            v17 = *(*(this + 28) + (*(*(this + 22) + 4 * a6) + v12));
            v18 = v40;
            if (v40 == HIDWORD(v40))
            {
              DgnPrimArray<char>::reallocElts(&v39, 1, 1);
              v18 = v40;
            }

            v39[v18] = v17;
            v19 = v40;
            v20 = &v40;
          }

          else
          {
            v19 = v42;
            if (v42 == HIDWORD(v42))
            {
              DgnPrimArray<short>::reallocElts(&v41, 1, 1);
              v19 = v42;
            }

            v41[v19] = v15;
            v20 = &v42;
          }

          *v20 = v19 + 1;
        }

        ++v10;
      }

      while (*(*(this + 24) + 2 * a6) >= v10);
    }
  }

  else if (*(*(this + 24) + 2 * a6))
  {
    v21 = 0;
    do
    {
      SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex(this, a6, v21);
      SearchScoreForIndex = BigramData::getSearchScoreForIndex(this, a6, v21);
      v24 = SearchScoreForIndex;
      if (SearchScoreForIndex != 20000)
      {
        v25 = v44;
        if (v44 == HIDWORD(v44))
        {
          DgnPrimArray<short>::reallocElts(&v43, 1, 1);
          v25 = v44;
        }

        v43[v25] = SearchSuccIdForIndex;
        LODWORD(v44) = v25 + 1;
        if (*(this + 4))
        {
          SearchQuantizedScoreForIndex = BigramData::getSearchQuantizedScoreForIndex(this, a6, v21);
          v27 = v40;
          if (v40 == HIDWORD(v40))
          {
            DgnPrimArray<char>::reallocElts(&v39, 1, 1);
            v27 = v40;
          }

          v39[v27] = SearchQuantizedScoreForIndex;
          v28 = v40;
          v29 = &v40;
        }

        else
        {
          v28 = v42;
          if (v42 == HIDWORD(v42))
          {
            DgnPrimArray<short>::reallocElts(&v41, 1, 1);
            v28 = v42;
          }

          v41[v28] = v24;
          v29 = &v42;
        }

        *v29 = v28 + 1;
      }

      ++v21;
    }

    while (v21 < *(*(this + 24) + 2 * a6));
  }

  *(*(a4 + 176) + 4 * a6) = (*(*a2 + 48))(a2);
  v37 = 0;
  v38 = 0;
  HuffmanEncoder<unsigned short,unsigned int>::encodeSuccessors(a5, &v43, &v37, a4 + 88);
  if (((4 * (v38 + 1)) | 2uLL) >= 2 * (v44 + 1))
  {
    v30 = a3;
    writeObjectArray(a2, v43, v44, a3);
  }

  else
  {
    *(*(a4 + 72) + 4 * v33) |= v32;
    v36 = v38;
    v30 = a3;
    writeObject(a2, &v36, a3);
    writeObjectArray(a2, v37, v38, a3);
  }

  if (*(this + 4))
  {
    writeObjectArray(a2, v39, v40, v30);
  }

  else
  {
    writeObjectArray(a2, v41, v42, v30);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v37);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v39);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v41);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v43);
}

void sub_262783A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

uint64_t HuffmanEncoder<unsigned short,unsigned int>::encodeSuccessors(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 2);
  v16 = 0;
  v17 = 0;
  if (v6)
  {
    v18 = 0;
    v8 = 2 * v6;
    v9 = 0;
    v10 = 0;
    HIDWORD(v17) = realloc_array(0, &v18, 2 * v6, 0, 0, 1) >> 1;
    v11 = v18;
    v16 = v18;
    v12 = *a2;
    v13 = v17;
    do
    {
      v14 = *(v12 + v9);
      if (v13 == HIDWORD(v17))
      {
        DgnPrimArray<short>::reallocElts(&v16, 1, 1);
        v13 = v17;
        v11 = v16;
        v12 = *a2;
      }

      v11[v13] = v14 - v10;
      v10 = *(v12 + v9);
      LODWORD(v17) = ++v13;
      v9 += 2;
    }

    while (v8 != v9);
  }

  HuffmanEncoder<unsigned short,unsigned int>::encodeValues(a1, &v16, a3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
}

void sub_262783B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t BigramData::fillInFullyLoadedBigramData(BigramData *this, BigramData *a2)
{
  v4 = *(this + 50);
  BigramData::configureBigramData(a2, 0, *(this + 4), *(this + 1));
  BigramData::preAllocateStaticBigramData(a2, v4);
  v5 = 232;
  if (!*(this + 1))
  {
    v5 = 216;
  }

  BigramData::preAllocateDynamicBigramData(a2, *(this + 62), *(this + v5));
  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  if (v4 >= 2)
  {
    for (i = 1; i != v4; ++i)
    {
      LODWORD(v33) = 0;
      LODWORD(v31) = 0;
      LODWORD(v29) = 0;
      if ((*(*(this + 3) + 4 * (i >> 5)) >> i))
      {
        if (*(*(this + 24) + 2 * i))
        {
          v7 = 1;
          do
          {
            v8 = *(this + 4);
            v9 = v7 - 1;
            v10 = (*(*(this + 22) + 4 * i) + v9);
            if (v8)
            {
              v10 = *(*(this + 28) + v10);
              v11 = *(this + 1);
            }

            else
            {
              v11 = *(this + 26);
            }

            v12 = *(v11 + 2 * v10);
            if (v12 != 20000)
            {
              v13 = v33;
              if (v33 == HIDWORD(v33))
              {
                DgnPrimArray<short>::reallocElts(&v32, 1, 1);
                v13 = v33;
                v8 = *(this + 4);
              }

              *(v32 + 2 * v13) = v7;
              LODWORD(v33) = v13 + 1;
              if (v8)
              {
                v14 = *(*(this + 28) + (*(*(this + 22) + 4 * i) + v9));
                v15 = v29;
                if (v29 == HIDWORD(v29))
                {
                  DgnPrimArray<char>::reallocElts(&v28, 1, 1);
                  v15 = v29;
                }

                *(v28 + v15) = v14;
                v16 = v29;
                v17 = &v29;
              }

              else
              {
                v16 = v31;
                if (v31 == HIDWORD(v31))
                {
                  DgnPrimArray<short>::reallocElts(&v30, 1, 1);
                  v16 = v31;
                }

                *(v30 + 2 * v16) = v12;
                v17 = &v31;
              }

              *v17 = v16 + 1;
            }

            ++v7;
          }

          while (*(*(this + 24) + 2 * i) >= v7);
        }
      }

      else if (*(*(this + 24) + 2 * i))
      {
        v18 = 0;
        do
        {
          SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex(this, i, v18);
          SearchScoreForIndex = BigramData::getSearchScoreForIndex(this, i, v18);
          v21 = SearchScoreForIndex;
          if (SearchScoreForIndex != 20000)
          {
            v22 = v33;
            if (v33 == HIDWORD(v33))
            {
              DgnPrimArray<short>::reallocElts(&v32, 1, 1);
              v22 = v33;
            }

            *(v32 + 2 * v22) = SearchSuccIdForIndex;
            LODWORD(v33) = v22 + 1;
            if (*(this + 4))
            {
              SearchQuantizedScoreForIndex = BigramData::getSearchQuantizedScoreForIndex(this, i, v18);
              v24 = v29;
              if (v29 == HIDWORD(v29))
              {
                DgnPrimArray<char>::reallocElts(&v28, 1, 1);
                v24 = v29;
              }

              *(v28 + v24) = SearchQuantizedScoreForIndex;
              v25 = v29;
              v26 = &v29;
            }

            else
            {
              v25 = v31;
              if (v31 == HIDWORD(v31))
              {
                DgnPrimArray<short>::reallocElts(&v30, 1, 1);
                v25 = v31;
              }

              *(v30 + 2 * v25) = v21;
              v26 = &v31;
            }

            *v26 = v25 + 1;
          }

          ++v18;
        }

        while (v18 < *(*(this + 24) + 2 * i));
      }

      if (v33)
      {
        BigramData::fillBigramRecord(a2, i, &v32, &v30, &v28);
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v28);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v30);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
}

void sub_262783ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void BigramData::fillBigramRecordLookup(uint64_t a1, unsigned int a2, unsigned __int16 **a3, _WORD **a4, void *a5)
{
  v10 = (*a3)[*(a3 + 2) - 1];
  BigramData::allocLookup(a1, a2, v10);
  if (*(a1 + 16))
  {
    if (v10)
    {
      v11 = 0;
      v12 = (v10 + 1);
      if (v12 <= 2)
      {
        v12 = 2;
      }

      v13 = v12 - 1;
      do
      {
        *(*(a1 + 224) + (v11 + *(*(a1 + 176) + 4 * a2))) = 0;
        ++v11;
      }

      while (v13 != v11);
    }

    if (*(a3 + 2))
    {
      v14 = 0;
      do
      {
        *(*(a1 + 224) + (*a3)[v14] + *(*(a1 + 176) + 4 * a2) - 1) = *(*a5 + v14);
        ++v14;
      }

      while (v14 < *(a3 + 2));
    }
  }

  else
  {
    if (v10)
    {
      v15 = *(*(a1 + 176) + 4 * a2);
      v16 = *(a1 + 208);
      if ((v10 + 1) <= 2u)
      {
        v17 = 2;
      }

      else
      {
        v17 = (v10 + 1);
      }

      v18 = v17 - 1;
      do
      {
        *(v16 + 2 * v15++) = 20000;
        --v18;
      }

      while (v18);
    }

    v19 = *(a3 + 2);
    if (v19)
    {
      v20 = *a3;
      v21 = *a4;
      v22 = *(*(a1 + 176) + 4 * a2);
      v23 = *(a1 + 208);
      do
      {
        v25 = *v20++;
        v24 = v25;
        LOWORD(v25) = *v21++;
        *(v23 + 2 * (v24 + v22 - 1)) = v25;
        --v19;
      }

      while (v19);
    }
  }
}

void BigramData::allocSearch(BigramData *this, unsigned int a2, int a3)
{
  BigramData::allocBi1(this, a2);
  *(*(this + 24) + 2 * a2) = a3;
  if (a3 == 1)
  {
    *(*(this + 22) + 4 * a2) = -65536;
  }

  else
  {
    v6 = *(this + 62);
    *(*(this + 22) + 4 * a2) = v6;
    v7 = v6 + a3;
    v8 = *(this + 63);
    if (v7 > v8)
    {
      DgnPrimArray<short>::reallocElts(this + 240, v7 - v8, 1);
      v7 = *(this + 62) + a3;
    }

    *(this + 62) = v7;
    if (*(this + 1))
    {
      v9 = *(this + 70) + a3;
      v10 = *(this + 71);
      if (v9 > v10)
      {
        DgnPrimArray<char>::reallocElts(this + 272, v9 - v10, 1);
        v9 = *(this + 70) + a3;
      }

      *(this + 70) = v9;
    }

    else
    {
      v11 = *(this + 66) + a3;
      v12 = *(this + 67);
      if (v11 > v12)
      {
        DgnPrimArray<short>::reallocElts(this + 256, v11 - v12, 1);
        v11 = *(this + 66) + a3;
      }

      *(this + 66) = v11;
    }
  }
}

uint64_t BigramData::setSearchSuccIdForIndex(uint64_t this, unsigned int a2, int a3, unsigned __int16 a4)
{
  v4 = *(this + 176);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 192) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = *(v4 + 4 * a2) | (a4 << 16);
  }

  else
  {
    if (*this && ((*(*(this + 40) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 320) + 4 * v5) + a3;
      v7 = *(this + 336);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 240);
    }

    *(v7 + 2 * v6) = a4;
  }

  return this;
}

uint64_t BigramData::setSearchQuantizedScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4)
{
  v4 = *(this + 176);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 192) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = v5 & 0xFFFF0000 | a4;
  }

  else
  {
    if (*this && ((*(*(this + 40) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 320) + 4 * v5) + a3;
      v7 = *(this + 368);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 272);
    }

    *(v7 + v6) = a4;
  }

  return this;
}

uint64_t BigramData::setSearchScoreForIndex(uint64_t this, unsigned int a2, int a3, int a4)
{
  v4 = *(this + 176);
  v5 = *(v4 + 4 * a2);
  if (*(*(this + 192) + 2 * a2) == 1)
  {
    *(v4 + 4 * a2) = v5 & 0xFFFF0000 | a4;
  }

  else
  {
    if (*this && ((*(*(this + 40) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      v6 = *(*(this + 320) + 4 * v5) + a3;
      v7 = *(this + 352);
    }

    else
    {
      v6 = v5 + a3;
      v7 = *(this + 256);
    }

    *(v7 + 2 * v6) = a4;
  }

  return this;
}

void BigramData::allocLookup(BigramData *this, unsigned int a2, int a3)
{
  BigramData::allocBi1(this, a2);
  v6 = *(this + 22);
  if (*(this + 1))
  {
    v7 = *(this + 58);
    *(v6 + 4 * a2) = v7;
    v8 = v7 + a3;
    v9 = *(this + 59);
    if (v8 > v9)
    {
      DgnPrimArray<char>::reallocElts(this + 224, v8 - v9, 1);
      v8 = *(this + 58) + a3;
    }

    *(this + 58) = v8;
  }

  else
  {
    v10 = *(this + 54);
    *(v6 + 4 * a2) = v10;
    v11 = v10 + a3;
    v12 = *(this + 55);
    if (v11 > v12)
    {
      DgnPrimArray<short>::reallocElts(this + 208, v11 - v12, 1);
      v11 = *(this + 54) + a3;
    }

    *(this + 54) = v11;
  }

  *(*(this + 24) + 2 * a2) = a3;
  *(*(this + 3) + 4 * (a2 >> 5)) |= 1 << a2;
}

void BigramData::fillBigramRecordPreload(BigramData *this, unsigned int a2, uint64_t a3, __int16 **a4, void *a5)
{
  v10 = 3;
  if (!*(this + 4))
  {
    v10 = 4;
  }

  if (v10 * *(a3 + 8) >= *(*a3 + 2 * (*(a3 + 8) - 1)) << (*(this + 4) == 0))
  {

    BigramData::fillBigramRecordLookup(this, a2, a3, a4, a5);
  }

  else
  {
    BigramData::allocSearch(this, a2, *(a3 + 8));
    v11 = *(a3 + 8);
    if (*(this + 4))
    {
      if (v11)
      {
        v12 = 0;
        do
        {
          v13 = v12 + *(*(this + 22) + 4 * a2);
          *(*(this + 30) + 2 * v13) = *(*a3 + 2 * v12);
          *(*(this + 34) + v13) = *(*a5 + v12++);
        }

        while (v12 < *(a3 + 8));
      }
    }

    else if (v11)
    {
      v14 = *a3;
      v15 = *(*(this + 22) + 4 * a2);
      v16 = *(this + 30);
      v17 = *a4;
      v18 = *(this + 32);
      do
      {
        v19 = *v14++;
        *(v16 + 2 * v15) = v19;
        v20 = *v17++;
        *(v18 + 2 * v15++) = v20;
        --v11;
      }

      while (v11);
    }
  }
}

uint64_t *BigramData::addBigramScoreQuantization(uint64_t *this, unsigned __int8 a2, __int16 a3)
{
  v4 = this;
  *(this + 1) = 1;
  v5 = *(this + 4);
  if (!v5)
  {
    if (*(this + 5))
    {
      v6 = 0;
    }

    else
    {
      this = DgnPrimArray<short>::reallocElts((this + 1), 1, 1);
      v6 = *(v4 + 4);
    }

    *(v4[1] + 2 * v6) = 20000;
    v5 = v6 + 1;
    *(v4 + 4) = v5;
  }

  if (v5 == *(v4 + 5))
  {
    this = DgnPrimArray<short>::reallocElts((v4 + 1), 1, 1);
    v5 = *(v4 + 4);
  }

  *(v4[1] + 2 * v5) = a3;
  *(v4 + 4) = v5 + 1;
  return this;
}

uint64_t *BigramData::allocLoaded(uint64_t *this, unsigned int a2)
{
  v3 = this;
  v4 = this[22];
  v5 = *(v4 + 4 * a2);
  v6 = *(this + 78);
  *(v4 + 4 * a2) = v6;
  if (v6 == *(this + 79))
  {
    this = DgnPrimArray<unsigned int>::reallocElts((this + 38), 1, 1);
    v6 = *(v3 + 312);
  }

  *(*(v3 + 304) + 4 * v6) = v5;
  ++*(v3 + 312);
  v7 = *(v3 + 344);
  v8 = *(v3 + 328);
  if (v8 == *(v3 + 332))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v3 + 320, 1, 1);
    v8 = *(v3 + 328);
  }

  *(*(v3 + 320) + 4 * v8) = v7;
  ++*(v3 + 328);
  v9 = *(*(v3 + 192) + 2 * a2);
  v10 = *(v3 + 344) + v9;
  v11 = *(v3 + 348);
  if (v10 > v11)
  {
    this = DgnPrimArray<short>::reallocElts(v3 + 336, v10 - v11, 1);
    v10 = *(v3 + 344) + v9;
  }

  *(v3 + 344) = v10;
  if (*(v3 + 4))
  {
    v12 = *(v3 + 376) + v9;
    v13 = *(v3 + 380);
    if (v12 > v13)
    {
      this = DgnPrimArray<char>::reallocElts(v3 + 368, v12 - v13, 1);
      v12 = *(v3 + 376) + v9;
    }

    *(v3 + 376) = v12;
  }

  else
  {
    v14 = *(v3 + 360) + v9;
    v15 = *(v3 + 364);
    if (v14 > v15)
    {
      this = DgnPrimArray<short>::reallocElts(v3 + 352, v14 - v15, 1);
      v14 = *(v3 + 360) + v9;
    }

    *(v3 + 360) = v14;
  }

  *(*(v3 + 56) + 4 * (a2 >> 5)) |= 1 << a2;
  v16 = *(v3 + 296);
  if (v16 == *(v3 + 300))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(v3 + 288, 1, 1);
    v16 = *(v3 + 296);
  }

  *(*(v3 + 288) + 4 * v16) = a2;
  ++*(v3 + 296);
  return this;
}

void TrigramData::TrigramData(TrigramData *this)
{
  *(this + 1) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  DgnString::DgnString((this + 128));
  DgnString::DgnString((this + 144));
  DgnString::DgnString((this + 160));
  DgnString::DgnString((this + 176));
  *(this + 12) = 0u;
  *this = 0;
  *(this + 2) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 60) = 0;
  TrigramData::allocTri1(this, 0, 0);
}

void sub_26278476C(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 472);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 440);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 424);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 360);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 280);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(v3);
  BitArray::~BitArray((v2 + 176));
  BitArray::~BitArray((v2 + 160));
  BitArray::~BitArray((v2 + 144));
  BitArray::~BitArray((v1 + 112));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2 + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void TrigramData::allocTri1(TrigramData *this, unsigned int a2, int a3)
{
  v6 = *(this + 14);
  if (v6 <= a2)
  {
    do
    {
      if (v6 == *(this + 15))
      {
        DgnPrimArray<short>::reallocElts(this + 48, 1, 1);
        v6 = *(this + 14);
      }

      *(*(this + 6) + 2 * v6) = 0;
      *(this + 14) = v6 + 1;
      v8 = *(this + 18);
      if (v8 == *(this + 19))
      {
        DgnPrimArray<unsigned int>::reallocElts(this + 64, 1, 1);
        v8 = *(this + 18);
      }

      v7 = *(this + 8);
      *(v7 + 4 * v8) = -1;
      ++*(this + 18);
      v6 = *(this + 14);
    }

    while (v6 <= a2);
  }

  else
  {
    v7 = *(this + 8);
  }

  *(*(this + 6) + 2 * a2) = a3;
  v9 = *(this + 22);
  *(v7 + 4 * a2) = v9;
  v10 = v9 + a3;
  v11 = *(this + 23);
  if (v10 > v11)
  {
    DgnPrimArray<short>::reallocElts(this + 80, v10 - v11, 1);
    v10 = *(this + 22) + a3;
  }

  *(this + 22) = v10;
  if (*(this + 1))
  {
    v12 = *(this + 31);
    v13 = *(this + 30) + a3;
    if (v13 > v12)
    {
      DgnPrimArray<char>::reallocElts(this + 112, v13 - v12, 1);
      v13 = *(this + 30) + a3;
    }

    *(this + 30) = v13;
  }

  else
  {
    v14 = *(this + 27);
    v15 = *(this + 26) + a3;
    if (v15 > v14)
    {
      DgnPrimArray<short>::reallocElts(this + 96, v15 - v14, 1);
      v15 = *(this + 26) + a3;
    }

    *(this + 26) = v15;
  }

  BitArray::addSize((this + 128), a3);
  if (*this)
  {
    BitArray::addSize((this + 144), a3);
    BitArray::addSize((this + 160), a3);
    BitArray::addSize((this + 176), a3);
  }

  v16 = *(this + 72) + a3;
  v17 = *(this + 73);
  if (v16 > v17)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 280, v16 - v17, 1);
    v16 = *(this + 72) + a3;
  }

  *(this + 72) = v16;
  v18 = *(this + 76) + a3;
  v19 = *(this + 77);
  if (v18 > v19)
  {
    DgnPrimArray<short>::reallocElts(this + 296, v18 - v19, 1);
    v18 = *(this + 76) + a3;
  }

  *(this + 76) = v18;
}

void TrigramData::~TrigramData(TrigramData *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 472);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 456);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 440);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 424);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 408);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 392);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 360);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 344);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 328);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 312);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 296);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 280);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(this + 192);
  BitArray::~BitArray((this + 176));
  BitArray::~BitArray((this + 160));
  BitArray::~BitArray((this + 144));
  BitArray::~BitArray((this + 128));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

void **TrigramData::compact(void **this)
{
  DgnPrimArray<unsigned short>::compact((this + 6));
  DgnPrimArray<unsigned int>::compact((this + 8));
  DgnPrimArray<unsigned short>::compact((this + 10));
  DgnPrimArray<unsigned short>::compact((this + 12));
  DgnPrimArray<unsigned char>::compact(this + 14);
  BitArray::compact((this + 16));
  BitArray::compact((this + 18));
  BitArray::compact((this + 20));
  BitArray::compact((this + 22));
  DgnPrimArray<unsigned int>::compact((this + 35));
  DgnPrimArray<unsigned short>::compact((this + 37));
  DgnPrimArray<unsigned short>::compact((this + 39));
  DgnPrimArray<unsigned char>::compact(this + 41);
  DgnPrimArray<unsigned short>::compact((this + 43));
  DgnPrimArray<unsigned short>::compact((this + 45));
  DgnPrimArray<unsigned char>::compact(this + 47);
  DgnPrimArray<unsigned int>::compact((this + 49));
  DgnPrimArray<unsigned int>::compact((this + 51));
  DgnPrimArray<unsigned int>::compact((this + 53));
  DgnPrimArray<unsigned short>::compact((this + 55));
  DgnPrimArray<unsigned short>::compact((this + 57));

  return DgnPrimArray<unsigned char>::compact(this + 59);
}

void TrigramData::printSize(TrigramData *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1739);
  if (v197)
  {
    v13 = v196;
  }

  else
  {
    v13 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288CFB0, a3, &unk_26288CFB0, v13);
  DgnString::~DgnString(&v196);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288CFB0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v18 = v196;
  }

  else
  {
    v18 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v196);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v20 = v196;
  }

  else
  {
    v20 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v196);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v22 = v196;
  }

  else
  {
    v22 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26288CFB0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v195 = a3;
  DgnString::~DgnString(&v196);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 12;
  }

  else
  {
    v23 = 16;
  }

  v24 = *(this + 6);
  v25 = *(this + 7);
  if (v25 >= v24)
  {
    v26 = 0;
    if (v24 > 0)
    {
      v23 += 2 * (v24 - 1) + 2;
    }

    v27 = v23 + 2 * (v25 - v24);
  }

  else
  {
    v26 = 2 * v24;
    v27 = v23;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v29 = v196;
  }

  else
  {
    v29 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v15, &unk_26288CFB0, v16, v16, v29, v27, v23, v26);
  DgnString::~DgnString(&v196);
  *a4 += v27;
  *a5 += v23;
  *a6 += v26;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 12;
  }

  else
  {
    v30 = 16;
  }

  v31 = *(this + 10);
  v32 = *(this + 11);
  if (v32 >= v31)
  {
    v33 = 0;
    if (v31 > 0)
    {
      v30 += 2 * (v31 - 1) + 2;
    }

    v34 = v30 + 2 * (v32 - v31);
  }

  else
  {
    v33 = 2 * v31;
    v34 = v30;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v36 = v196;
  }

  else
  {
    v36 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v15, &unk_26288CFB0, v16, v16, v36, v34, v30, v33);
  DgnString::~DgnString(&v196);
  *a4 += v34;
  *a5 += v30;
  *a6 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 12;
  }

  else
  {
    v37 = 16;
  }

  v38 = *(this + 14);
  v39 = *(this + 15);
  if (v39 >= v38)
  {
    v40 = 0;
    if (v38 > 0)
    {
      v37 += 2 * (v38 - 1) + 2;
    }

    v41 = v37 + 2 * (v39 - v38);
  }

  else
  {
    v40 = 2 * v38;
    v41 = v37;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v43 = v196;
  }

  else
  {
    v43 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v15, &unk_26288CFB0, v16, v16, v43, v41, v37, v40);
  DgnString::~DgnString(&v196);
  *a4 += v41;
  *a5 += v37;
  *a6 += v40;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v44 = 12;
  }

  else
  {
    v44 = 16;
  }

  v45 = *(this + 18);
  v46 = *(this + 19);
  if (v46 >= v45)
  {
    v47 = 0;
    if (v45 > 0)
    {
      v44 += 4 * (v45 - 1) + 4;
    }

    v48 = v44 + 4 * (v46 - v45);
  }

  else
  {
    v47 = 4 * v45;
    v48 = v44;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v50 = v196;
  }

  else
  {
    v50 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v15, &unk_26288CFB0, v16, v16, v50, v48, v44, v47);
  DgnString::~DgnString(&v196);
  *a4 += v48;
  *a5 += v44;
  *a6 += v47;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 12;
  }

  else
  {
    v51 = 16;
  }

  v52 = *(this + 22);
  v53 = *(this + 23);
  if (v53 >= v52)
  {
    v54 = 0;
    if (v52 > 0)
    {
      v51 += 2 * (v52 - 1) + 2;
    }

    v55 = v51 + 2 * (v53 - v52);
  }

  else
  {
    v54 = 2 * v52;
    v55 = v51;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v57 = v196;
  }

  else
  {
    v57 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v15, &unk_26288CFB0, v16, v16, v57, v55, v51, v54);
  DgnString::~DgnString(&v196);
  *a4 += v55;
  *a5 += v51;
  *a6 += v54;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 12;
  }

  else
  {
    v58 = 16;
  }

  v59 = *(this + 26);
  v60 = *(this + 27);
  if (v60 >= v59)
  {
    v61 = 0;
    if (v59 > 0)
    {
      v58 += 2 * (v59 - 1) + 2;
    }

    v62 = v58 + 2 * (v60 - v59);
  }

  else
  {
    v61 = 2 * v59;
    v62 = v58;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v64 = v196;
  }

  else
  {
    v64 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v15, &unk_26288CFB0, v16, v16, v64, v62, v58, v61);
  DgnString::~DgnString(&v196);
  *a4 += v62;
  *a5 += v58;
  *a6 += v61;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v65 = 12;
  }

  else
  {
    v65 = 16;
  }

  v66 = *(this + 30);
  v67 = *(this + 31);
  v68 = v67 >= v66;
  v69 = v67 - v66;
  if (v68)
  {
    if (v66 > 0)
    {
      v70 = (v66 - 1) + v65 + 1;
    }

    else
    {
      v70 = v65;
    }

    v65 = v70 + v69;
    v66 = 0;
  }

  else
  {
    v70 = v65;
  }

  v71 = v66;
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v73 = v196;
  }

  else
  {
    v73 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v15, &unk_26288CFB0, v16, v16, v73, v65, v70, v71);
  DgnString::~DgnString(&v196);
  *a4 += v65;
  *a5 += v70;
  *a6 += v71;
  v74 = BitArray::sizeObject(this + 128, 0);
  v75 = BitArray::sizeObject(this + 128, 1);
  v76 = BitArray::sizeObject(this + 128, 3);
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v78 = v196;
  }

  else
  {
    v78 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v15, &unk_26288CFB0, v16, v16, v78, v74, v75, v76);
  DgnString::~DgnString(&v196);
  *a4 += v74;
  *a5 += v75;
  *a6 += v76;
  v79 = BitArray::sizeObject(this + 144, 0);
  v80 = BitArray::sizeObject(this + 144, 1);
  v81 = BitArray::sizeObject(this + 144, 3);
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v83 = v196;
  }

  else
  {
    v83 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v15, &unk_26288CFB0, v16, v16, v83, v79, v80, v81);
  DgnString::~DgnString(&v196);
  *a4 += v79;
  *a5 += v80;
  *a6 += v81;
  v84 = BitArray::sizeObject(this + 160, 0);
  v85 = BitArray::sizeObject(this + 160, 1);
  v86 = BitArray::sizeObject(this + 160, 3);
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v88 = v196;
  }

  else
  {
    v88 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v15, &unk_26288CFB0, v16, v16, v88, v84, v85, v86);
  DgnString::~DgnString(&v196);
  *a4 += v84;
  *a5 += v85;
  *a6 += v86;
  v89 = BitArray::sizeObject(this + 176, 0);
  v90 = BitArray::sizeObject(this + 176, 1);
  v91 = BitArray::sizeObject(this + 176, 3);
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v93 = v196;
  }

  else
  {
    v93 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v92, v15, &unk_26288CFB0, v16, v16, v93, v89, v90, v91);
  DgnString::~DgnString(&v196);
  *a4 += v89;
  *a5 += v90;
  *a6 += v91;
  v94 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 192, 0);
  v95 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 192, 1);
  v96 = HuffmanDecoder<unsigned short,unsigned int>::sizeObject(this + 192, 3);
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v98 = v196;
  }

  else
  {
    v98 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v97, v15, &unk_26288CFB0, v16, v16, v98, v94, v95, v96);
  DgnString::~DgnString(&v196);
  *a4 += v94;
  *a5 += v95;
  *a6 += v96;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v99 = 12;
  }

  else
  {
    v99 = 16;
  }

  v100 = *(this + 72);
  v101 = *(this + 73);
  if (v101 >= v100)
  {
    v102 = 0;
    if (v100 > 0)
    {
      v99 += 4 * (v100 - 1) + 4;
    }

    v103 = v99 + 4 * (v101 - v100);
  }

  else
  {
    v102 = 4 * v100;
    v103 = v99;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v105 = v196;
  }

  else
  {
    v105 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v104, v15, &unk_26288CFB0, v16, v16, v105, v103, v99, v102);
  DgnString::~DgnString(&v196);
  *a4 += v103;
  *a5 += v99;
  *a6 += v102;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v106 = 12;
  }

  else
  {
    v106 = 16;
  }

  v107 = *(this + 76);
  v108 = *(this + 77);
  if (v108 >= v107)
  {
    v109 = 0;
    if (v107 > 0)
    {
      v106 += 2 * (v107 - 1) + 2;
    }

    v110 = v106 + 2 * (v108 - v107);
  }

  else
  {
    v109 = 2 * v107;
    v110 = v106;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v112 = v196;
  }

  else
  {
    v112 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v15, &unk_26288CFB0, v16, v16, v112, v110, v106, v109);
  DgnString::~DgnString(&v196);
  *a4 += v110;
  *a5 += v106;
  *a6 += v109;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v113 = 12;
  }

  else
  {
    v113 = 16;
  }

  v114 = *(this + 80);
  v115 = *(this + 81);
  if (v115 >= v114)
  {
    v116 = 0;
    if (v114 > 0)
    {
      v113 += 2 * (v114 - 1) + 2;
    }

    v117 = v113 + 2 * (v115 - v114);
  }

  else
  {
    v116 = 2 * v114;
    v117 = v113;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v119 = v196;
  }

  else
  {
    v119 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v118, v15, &unk_26288CFB0, v16, v16, v119, v117, v113, v116);
  DgnString::~DgnString(&v196);
  *a4 += v117;
  *a5 += v113;
  *a6 += v116;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v120 = 12;
  }

  else
  {
    v120 = 16;
  }

  v121 = *(this + 84);
  v122 = *(this + 85);
  v68 = v122 >= v121;
  v123 = v122 - v121;
  if (v68)
  {
    if (v121 > 0)
    {
      v124 = (v121 - 1) + v120 + 1;
    }

    else
    {
      v124 = v120;
    }

    v120 = v124 + v123;
    v121 = 0;
  }

  else
  {
    v124 = v120;
  }

  v125 = v121;
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v127 = v196;
  }

  else
  {
    v127 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v126, v15, &unk_26288CFB0, v16, v16, v127, v120, v124, v125);
  DgnString::~DgnString(&v196);
  *a4 += v120;
  *a5 += v124;
  *a6 += v125;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v128 = 12;
  }

  else
  {
    v128 = 16;
  }

  v129 = *(this + 88);
  v130 = *(this + 89);
  if (v130 >= v129)
  {
    v131 = 0;
    if (v129 > 0)
    {
      v128 += 2 * (v129 - 1) + 2;
    }

    v132 = v128 + 2 * (v130 - v129);
  }

  else
  {
    v131 = 2 * v129;
    v132 = v128;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v134 = v196;
  }

  else
  {
    v134 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v133, v15, &unk_26288CFB0, v16, v16, v134, v132, v128, v131);
  DgnString::~DgnString(&v196);
  *a4 += v132;
  *a5 += v128;
  *a6 += v131;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v135 = 12;
  }

  else
  {
    v135 = 16;
  }

  v136 = *(this + 92);
  v137 = *(this + 93);
  if (v137 >= v136)
  {
    v138 = 0;
    if (v136 > 0)
    {
      v135 += 2 * (v136 - 1) + 2;
    }

    v139 = v135 + 2 * (v137 - v136);
  }

  else
  {
    v138 = 2 * v136;
    v139 = v135;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v141 = v196;
  }

  else
  {
    v141 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v140, v15, &unk_26288CFB0, v16, v16, v141, v139, v135, v138);
  DgnString::~DgnString(&v196);
  *a4 += v139;
  *a5 += v135;
  *a6 += v138;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v142 = 12;
  }

  else
  {
    v142 = 16;
  }

  v143 = *(this + 96);
  v144 = *(this + 97);
  v68 = v144 >= v143;
  v145 = v144 - v143;
  if (v68)
  {
    if (v143 > 0)
    {
      v146 = (v143 - 1) + v142 + 1;
    }

    else
    {
      v146 = v142;
    }

    v142 = v146 + v145;
    v143 = 0;
  }

  else
  {
    v146 = v142;
  }

  v147 = v143;
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v149 = v196;
  }

  else
  {
    v149 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v15, &unk_26288CFB0, v16, v16, v149, v142, v146, v147);
  DgnString::~DgnString(&v196);
  *a4 += v142;
  *a5 += v146;
  *a6 += v147;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v150 = 12;
  }

  else
  {
    v150 = 16;
  }

  v151 = *(this + 100);
  v152 = *(this + 101);
  if (v152 >= v151)
  {
    v153 = 0;
    if (v151 > 0)
    {
      v150 += 4 * (v151 - 1) + 4;
    }

    v154 = v150 + 4 * (v152 - v151);
  }

  else
  {
    v153 = 4 * v151;
    v154 = v150;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v156 = v196;
  }

  else
  {
    v156 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v15, &unk_26288CFB0, v16, v16, v156, v154, v150, v153);
  DgnString::~DgnString(&v196);
  *a4 += v154;
  *a5 += v150;
  *a6 += v153;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v157 = 12;
  }

  else
  {
    v157 = 16;
  }

  v158 = *(this + 104);
  v159 = *(this + 105);
  if (v159 >= v158)
  {
    v160 = 0;
    if (v158 > 0)
    {
      v157 += 4 * (v158 - 1) + 4;
    }

    v161 = v157 + 4 * (v159 - v158);
  }

  else
  {
    v160 = 4 * v158;
    v161 = v157;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v163 = v196;
  }

  else
  {
    v163 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v162, v15, &unk_26288CFB0, v16, v16, v163, v161, v157, v160);
  DgnString::~DgnString(&v196);
  *a4 += v161;
  *a5 += v157;
  *a6 += v160;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v164 = 12;
  }

  else
  {
    v164 = 16;
  }

  v165 = *(this + 108);
  v166 = *(this + 109);
  if (v166 >= v165)
  {
    v167 = 0;
    if (v165 > 0)
    {
      v164 += 4 * (v165 - 1) + 4;
    }

    v168 = v164 + 4 * (v166 - v165);
  }

  else
  {
    v167 = 4 * v165;
    v168 = v164;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v170 = v196;
  }

  else
  {
    v170 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v169, v15, &unk_26288CFB0, v16, v16, v170, v168, v164, v167);
  DgnString::~DgnString(&v196);
  *a4 += v168;
  *a5 += v164;
  *a6 += v167;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v171 = 12;
  }

  else
  {
    v171 = 16;
  }

  v172 = *(this + 112);
  v173 = *(this + 113);
  if (v173 >= v172)
  {
    v174 = 0;
    if (v172 > 0)
    {
      v171 += 2 * (v172 - 1) + 2;
    }

    v175 = v171 + 2 * (v173 - v172);
  }

  else
  {
    v174 = 2 * v172;
    v175 = v171;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v177 = v196;
  }

  else
  {
    v177 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v176, v15, &unk_26288CFB0, v16, v16, v177, v175, v171, v174);
  DgnString::~DgnString(&v196);
  *a4 += v175;
  *a5 += v171;
  *a6 += v174;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v178 = 12;
  }

  else
  {
    v178 = 16;
  }

  v179 = *(this + 116);
  v180 = *(this + 117);
  if (v180 >= v179)
  {
    v181 = 0;
    if (v179 > 0)
    {
      v178 += 2 * (v179 - 1) + 2;
    }

    v182 = v178 + 2 * (v180 - v179);
  }

  else
  {
    v181 = 2 * v179;
    v182 = v178;
  }

  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v184 = v196;
  }

  else
  {
    v184 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v183, v15, &unk_26288CFB0, v16, v16, v184, v182, v178, v181);
  DgnString::~DgnString(&v196);
  *a4 += v182;
  *a5 += v178;
  *a6 += v181;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v185 = 12;
  }

  else
  {
    v185 = 16;
  }

  v186 = *(this + 120);
  v187 = *(this + 121);
  v68 = v187 >= v186;
  v188 = v187 - v186;
  if (v68)
  {
    if (v186 > 0)
    {
      v189 = (v186 - 1) + v185 + 1;
    }

    else
    {
      v189 = v185;
    }

    v185 = v189 + v188;
    v186 = 0;
  }

  else
  {
    v189 = v185;
  }

  v190 = v186;
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1743);
  if (v197)
  {
    v192 = v196;
  }

  else
  {
    v192 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v191, v15, &unk_26288CFB0, v16, v16, v192, v185, v189, v190);
  DgnString::~DgnString(&v196);
  *a4 += v185;
  *a5 += v189;
  *a6 += v190;
  getShipObjectSizeDescription(&v196, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 1744);
  if (v197)
  {
    v194 = v196;
  }

  else
  {
    v194 = &unk_26288CFB0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v193, v195, &unk_26288CFB0, (35 - v195), (35 - v195), v194, *a4, *a5, *a6);
  DgnString::~DgnString(&v196);
}

void sub_2627860A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void **TrigramData::copyTrigramData(TrigramData *this, const TrigramData *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  DgnPrimArray<unsigned short>::copyArraySlice(this + 2, a2 + 2, 0, *(a2 + 6));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 4, a2 + 4, 0, *(a2 + 10));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 6, a2 + 6, 0, *(a2 + 14));
  DgnPrimArray<int>::copyArraySlice(this + 8, a2 + 8, 0, *(a2 + 18));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 10, a2 + 10, 0, *(a2 + 22));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 12, a2 + 12, 0, *(a2 + 26));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 14, a2 + 14, 0, *(a2 + 30));
  BitArray::operator=(this + 16, a2 + 128);
  BitArray::operator=(this + 18, a2 + 144);
  BitArray::operator=(this + 20, a2 + 160);
  BitArray::operator=(this + 22, a2 + 176);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(this + 24, a2 + 192);
  DgnPrimArray<int>::copyArraySlice(this + 35, a2 + 35, 0, *(a2 + 72));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 37, a2 + 37, 0, *(a2 + 76));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 39, a2 + 39, 0, *(a2 + 80));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 41, a2 + 41, 0, *(a2 + 84));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 43, a2 + 43, 0, *(a2 + 88));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 45, a2 + 45, 0, *(a2 + 92));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 47, a2 + 47, 0, *(a2 + 96));
  DgnPrimArray<int>::copyArraySlice(this + 49, a2 + 49, 0, *(a2 + 100));
  DgnPrimArray<int>::copyArraySlice(this + 51, a2 + 51, 0, *(a2 + 104));
  DgnPrimArray<int>::copyArraySlice(this + 53, a2 + 53, 0, *(a2 + 108));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 55, a2 + 55, 0, *(a2 + 112));
  DgnPrimArray<unsigned short>::copyArraySlice(this + 57, a2 + 57, 0, *(a2 + 116));
  DgnPrimArray<unsigned char>::copyArraySlice(this + 59, a2 + 59, 0, *(a2 + 120));

  return TrigramData::compact(this);
}

uint64_t TrigramData::saveBinary(TrigramData *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this, a3);
  writeObject(a2, this + 1, a3);
  writeObject(a2, this + 2, a3);
  writeObject<short>(a2, this + 16, a3);
  writeObject<unsigned short>(a2, this + 32, a3);
  writeObject<unsigned short>(a2, this + 48, a3);
  writeObject<unsigned int>(a2, this + 64, a3);
  writeObject<unsigned short>(a2, this + 80, a3);
  writeObject<short>(a2, this + 96, a3);
  writeObject<unsigned char>(a2, this + 112, a3);
  writeObject(a2, this + 128, a3);
  writeObject(a2, this + 144, a3);
  writeObject(a2, this + 160, a3);
  writeObject(a2, this + 176, a3);
  HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 192, a2, a3);
  writeObject<unsigned int>(a2, this + 280, a3);
  writeObject<unsigned short>(a2, this + 296, a3);
  writeObject<unsigned short>(a2, this + 312, a3);
  writeObject<unsigned char>(a2, this + 328, a3);
  writeObject<unsigned short>(a2, this + 344, a3);
  writeObject<unsigned short>(a2, this + 360, a3);
  writeObject<unsigned char>(a2, this + 376, a3);
  writeObject<unsigned int>(a2, this + 392, a3);
  writeObject<unsigned int>(a2, this + 408, a3);
  writeObject<unsigned int>(a2, this + 424, a3);
  writeObject<unsigned short>(a2, this + 440, a3);
  writeObject<unsigned short>(a2, this + 456, a3);

  return writeObject<unsigned char>(a2, this + 472, a3);
}

void TrigramData::loadBinary(TrigramData *this, DgnStream *a2, unsigned int *a3)
{
  readObject(a2, this, a3);
  readObject(a2, this + 1, a3);
  readObject(a2, this + 2, a3);
  readObject<short>(a2, this + 16, a3);
  readObject<unsigned short>(a2, this + 32, a3);
  readObject<unsigned short>(a2, this + 48, a3);
  readObject<unsigned int>(a2, this + 64, a3);
  readObject<unsigned short>(a2, this + 80, a3);
  readObject<short>(a2, this + 96, a3);
  readObject<unsigned char>(a2, this + 112, a3);
  readObject(a2, (this + 128), a3);
  readObject(a2, (this + 144), a3);
  readObject(a2, (this + 160), a3);
  readObject(a2, (this + 176), a3);
  HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 24, a2, a3);
  readObject<unsigned int>(a2, this + 280, a3);
  readObject<unsigned short>(a2, this + 296, a3);
  readObject<unsigned short>(a2, this + 312, a3);
  readObject<unsigned char>(a2, this + 328, a3);
  readObject<unsigned short>(a2, this + 344, a3);
  readObject<unsigned short>(a2, this + 360, a3);
  readObject<unsigned char>(a2, this + 376, a3);
  readObject<unsigned int>(a2, this + 392, a3);
  readObject<unsigned int>(a2, this + 408, a3);
  readObject<unsigned int>(a2, this + 424, a3);
  readObject<unsigned short>(a2, this + 440, a3);
  readObject<unsigned short>(a2, this + 456, a3);

  readObject<unsigned char>(a2, this + 472, a3);
}

char *TrigramData::saveBinaryShared(TrigramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    writeObject(a2, this, a4);
    writeObject(a2, this + 1, a4);
    writeObject(a2, this + 2, a4);
    writeSharedObject<short>(a2, this + 16, a4);
    writeSharedObject<short>(a2, this + 32, a4);
    writeSharedObject<short>(a2, this + 48, a4);
    writeSharedObject<unsigned int>(a2, this + 64, a4);
    writeSharedObject<short>(a2, this + 80, a4);
    writeSharedObject<short>(a2, this + 96, a4);
    writeSharedObject<unsigned char>(a2, this + 112, a4);
    writeSharedObject(a2, (this + 128), a4);
    writeSharedObject(a2, (this + 144), a4);
    writeSharedObject(a2, (this + 160), a4);
    writeSharedObject(a2, (this + 176), a4);
    HuffmanDecoder<unsigned short,unsigned int>::writeObject(this + 192, a2, a4);
  }

  else
  {
    writeSharedObject<short>(a2, this + 16, a4);
    writeSharedObject<short>(a2, this + 32, a4);
    writeSharedObject<short>(a2, this + 48, a4);
    writeSharedObject<unsigned int>(a2, this + 64, a4);
    writeSharedObject<short>(a2, this + 80, a4);
    writeSharedObject<short>(a2, this + 96, a4);
    writeSharedObject<unsigned char>(a2, this + 112, a4);
    writeSharedObject(a2, (this + 128), a4);
    writeSharedObject(a2, (this + 144), a4);
    writeSharedObject(a2, (this + 160), a4);
    writeSharedObject(a2, (this + 176), a4);
  }

  writeSharedObject<unsigned int>(a2, this + 280, a4);
  writeSharedObject<short>(a2, this + 296, a4);
  writeSharedObject<short>(a2, this + 312, a4);
  writeSharedObject<unsigned char>(a2, this + 328, a4);
  writeSharedObject<short>(a2, this + 344, a4);
  writeSharedObject<short>(a2, this + 360, a4);
  writeSharedObject<unsigned char>(a2, this + 376, a4);
  writeSharedObject<unsigned int>(a2, this + 392, a4);
  writeSharedObject<unsigned int>(a2, this + 408, a4);
  writeSharedObject<unsigned int>(a2, this + 424, a4);
  writeSharedObject<short>(a2, this + 440, a4);
  writeSharedObject<short>(a2, this + 456, a4);

  return writeSharedObject<unsigned char>(a2, this + 472, a4);
}

int *TrigramData::loadBinaryShared(TrigramData *this, DgnSharedMemStream *a2, int a3, unsigned int *a4)
{
  if (a3)
  {
    readObject(a2, this, a4);
    readObject(a2, this + 1, a4);
    readObject(a2, this + 2, a4);
    readSharedObject<short>(a2, this + 16, a4);
    readSharedObject<short>(a2, this + 32, a4);
    readSharedObject<short>(a2, this + 48, a4);
    readSharedObject<unsigned int>(a2, this + 64, a4);
    readSharedObject<short>(a2, this + 80, a4);
    readSharedObject<short>(a2, this + 96, a4);
    readSharedObject<unsigned char>(a2, this + 112, a4);
    readSharedObject(a2, (this + 128), a4);
    readSharedObject(a2, (this + 144), a4);
    readSharedObject(a2, (this + 160), a4);
    readSharedObject(a2, (this + 176), a4);
    HuffmanDecoder<unsigned short,unsigned int>::readObject(this + 24, a2, a4);
  }

  else
  {
    readSharedObject<short>(a2, this + 16, a4);
    readSharedObject<short>(a2, this + 32, a4);
    readSharedObject<short>(a2, this + 48, a4);
    readSharedObject<unsigned int>(a2, this + 64, a4);
    readSharedObject<short>(a2, this + 80, a4);
    readSharedObject<short>(a2, this + 96, a4);
    readSharedObject<unsigned char>(a2, this + 112, a4);
    readSharedObject(a2, (this + 128), a4);
    readSharedObject(a2, (this + 144), a4);
    readSharedObject(a2, (this + 160), a4);
    readSharedObject(a2, (this + 176), a4);
  }

  readSharedObject<unsigned int>(a2, this + 280, a4);
  readSharedObject<short>(a2, this + 296, a4);
  readSharedObject<short>(a2, this + 312, a4);
  readSharedObject<unsigned char>(a2, this + 328, a4);
  readSharedObject<short>(a2, this + 344, a4);
  readSharedObject<short>(a2, this + 360, a4);
  readSharedObject<unsigned char>(a2, this + 376, a4);
  readSharedObject<unsigned int>(a2, this + 392, a4);
  readSharedObject<unsigned int>(a2, this + 408, a4);
  readSharedObject<unsigned int>(a2, this + 424, a4);
  readSharedObject<short>(a2, this + 440, a4);
  readSharedObject<short>(a2, this + 456, a4);

  return readSharedObject<unsigned char>(a2, this + 472, a4);
}

uint64_t TrigramData::computeLocalPreloadableBytes(TrigramData *this)
{
  v18 = *(this + 14);
  if (v18 >= 2)
  {
    v2 = 0;
    v3 = 1;
    while (1)
    {
      if (v3 < *(this + 14))
      {
        v20 = *(*(this + 6) + 2 * v3);
        if (*(*(this + 6) + 2 * v3))
        {
          break;
        }
      }

LABEL_33:
      if (++v3 == v18)
      {
        return v2;
      }
    }

    v4 = 0;
    v19 = v3;
    while (1)
    {
      v5 = (*(*(this + 8) + 4 * v3) + v4);
      v6 = *(*(this + 37) + 2 * v5);
      if ((*(*(this + 16) + 4 * (v5 >> 5)) >> v5))
      {
        v7 = *(this + 10);
        if (*(*(this + 37) + 2 * v5))
        {
          v8 = 0;
          v9 = *(*(this + 35) + 4 * v5);
          v10 = v6 << (v7 == 0);
          if ((v6 + 1) <= 2u)
          {
            v11 = 2;
          }

          else
          {
            v11 = (v6 + 1);
          }

          v12 = v11 - 1;
          do
          {
            if (v7)
            {
              v13 = (*(this + 4) + 2 * *(*(this + 41) + v9));
            }

            else
            {
              v13 = (*(this + 39) + 2 * v9);
            }

            if (*v13 != 20000)
            {
              ++v8;
            }

            ++v9;
            --v12;
          }

          while (v12);
LABEL_27:
          if (v8 <= 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = v10;
          }

          v3 = v19;
          goto LABEL_32;
        }
      }

      else if (*(*(this + 37) + 2 * v5))
      {
        v14 = 0;
        v8 = 0;
        v10 = 0;
        do
        {
          if (TrigramData::getSearchScoreForIndex(this, v5, v14) != 20000)
          {
            if (*(this + 10))
            {
              v15 = 3;
            }

            else
            {
              v15 = 4;
            }

            v10 += v15;
            ++v8;
          }

          ++v14;
        }

        while (v6 != v14);
        goto LABEL_27;
      }

      v16 = 0;
LABEL_32:
      v2 += v16;
      if (++v4 == v20)
      {
        goto LABEL_33;
      }
    }
  }

  return 0;
}

uint64_t TrigramData::getSearchScoreForIndex(TrigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 35) + 4 * a2);
  if (*(*(this + 37) + 2 * a2) != 1)
  {
    if (*this && ((*(*(this + 18) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      LODWORD(v3) = *(*(this + 53) + 4 * v3) + a3;
      if (*(this + 10))
      {
        v4 = *(this + 59);
LABEL_10:
        v3 = *(v4 + v3);
        goto LABEL_11;
      }

      v5 = *(this + 57);
    }

    else
    {
      LODWORD(v3) = v3 + a3;
      if (*(this + 10))
      {
        v4 = *(this + 47);
        goto LABEL_10;
      }

      v5 = *(this + 45);
    }

    LOWORD(v3) = *(v5 + 2 * v3);
    return v3;
  }

  if (*(this + 10))
  {
    v3 = *(*(this + 35) + 4 * a2);
LABEL_11:
    LOWORD(v3) = *(*(this + 4) + 2 * v3);
  }

  return v3;
}

uint64_t TrigramData::initNewTrigramData(uint64_t a1, TrigramData *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char a7)
{
  v9 = a2;
  v11 = *(a1 + 56);
  TrigramData::configureTrigramData(a2, 1, *(a1 + 24), *(a1 + 16), *(a1 + 40), *(a1 + 32));
  TrigramData::preAllocateStaticTrigramData(v9, v11, *(a1 + 88));
  v12 = 336;
  if (!*(a1 + 8))
  {
    v12 = 320;
  }

  TrigramData::preAllocateDynamicTrigramData(v9, *(a1 + 352), *(a1 + v12));
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  if (v11 >= 2)
  {
    v13 = 1;
    v67 = v9;
    v56 = a5;
    v62 = a4;
    v58 = v11;
    do
    {
      if (v13 < *(a1 + 56))
      {
        v14 = *(a1 + 48);
        if (*(v14 + 2 * v13))
        {
          v66 = v13;
          v64 = *(v14 + 2 * v13);
          TrigramData::allocTri1(v9, v13, v64);
          v63 = 0;
          v15 = 0;
          v60 = *(a4 + 8);
          do
          {
            v16 = *(*(a1 + 64) + 4 * v66) + v15;
            v65 = *(*(a1 + 80) + 2 * v16);
            LODWORD(v75) = 0;
            LODWORD(v73) = 0;
            LODWORD(v71) = 0;
            v17 = *(a1 + 296);
            v18 = *(v17 + 2 * v16);
            if ((*(*(a1 + 128) + 4 * (v16 >> 5)) >> v16))
            {
              v19 = v18 << (*(a1 + 40) == 0);
              if (*(v17 + 2 * v16))
              {
                v20 = 1;
                do
                {
                  v21 = *(a1 + 40);
                  v22 = v20 - 1;
                  v23 = (*(*(a1 + 280) + 4 * v16) + v22);
                  if (v21)
                  {
                    v23 = *(*(a1 + 328) + v23);
                    v24 = *(a1 + 32);
                  }

                  else
                  {
                    v24 = *(a1 + 312);
                  }

                  v25 = *(v24 + 2 * v23);
                  if (v25 != 20000)
                  {
                    v26 = v75;
                    if (v75 == HIDWORD(v75))
                    {
                      DgnPrimArray<short>::reallocElts(&v74, 1, 1);
                      v26 = v75;
                      v21 = *(a1 + 40);
                    }

                    v74[v26] = v20;
                    LODWORD(v75) = v26 + 1;
                    if (v21)
                    {
                      v27 = *(*(a1 + 328) + (*(*(a1 + 280) + 4 * v16) + v22));
                      v28 = v71;
                      if (v71 == HIDWORD(v71))
                      {
                        DgnPrimArray<char>::reallocElts(&v70, 1, 1);
                        v28 = v71;
                      }

                      *(v70 + v28) = v27;
                      v29 = v71;
                      v30 = &v71;
                    }

                    else
                    {
                      v29 = v73;
                      if (v73 == HIDWORD(v73))
                      {
                        DgnPrimArray<short>::reallocElts(&v72, 1, 1);
                        v29 = v73;
                      }

                      *(v72 + 2 * v29) = v25;
                      v30 = &v73;
                    }

                    *v30 = v29 + 1;
                  }

                  ++v20;
                }

                while (v18 >= v20);
              }

              v31 = 0;
            }

            else if (*(v17 + 2 * v16))
            {
              v32 = 0;
              v19 = 0;
              v31 = 0;
              do
              {
                SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex(a1, v16, v32);
                SearchScoreForIndex = TrigramData::getSearchScoreForIndex(a1, v16, v32);
                v35 = SearchScoreForIndex;
                if (SearchScoreForIndex != 20000)
                {
                  v36 = *(a1 + 40);
                  if (v36)
                  {
                    v37 = 3;
                  }

                  else
                  {
                    v37 = 4;
                  }

                  v38 = v75;
                  if (v75 == HIDWORD(v75))
                  {
                    DgnPrimArray<short>::reallocElts(&v74, 1, 1);
                    v38 = v75;
                    v36 = *(a1 + 40);
                  }

                  v74[v38] = SearchSuccIdForIndex;
                  LODWORD(v75) = v38 + 1;
                  if (v36)
                  {
                    SearchQuantizedScoreForIndex = TrigramData::getSearchQuantizedScoreForIndex(a1, v16, v32);
                    v40 = v71;
                    if (v71 == HIDWORD(v71))
                    {
                      DgnPrimArray<char>::reallocElts(&v70, 1, 1);
                      v40 = v71;
                    }

                    *(v70 + v40) = SearchQuantizedScoreForIndex;
                    v41 = v71;
                    v42 = &v71;
                  }

                  else
                  {
                    v41 = v73;
                    if (v73 == HIDWORD(v73))
                    {
                      DgnPrimArray<short>::reallocElts(&v72, 1, 1);
                      v41 = v73;
                    }

                    *(v72 + 2 * v41) = v35;
                    v42 = &v73;
                  }

                  ++v31;
                  v19 += v37;
                  *v42 = v41 + 1;
                }

                ++v32;
              }

              while (v18 != v32);
              LODWORD(v18) = 0;
            }

            else
            {
              v31 = 0;
              v19 = 0;
            }

            v43 = *(*(v67 + 64) + 4 * v66) + v15;
            *(*(v67 + 80) + 2 * v43) = 0;
            if (*(v67 + 4))
            {
              *(*(v67 + 112) + v43) = 0;
            }

            else
            {
              *(*(v67 + 96) + 2 * v43) = 20000;
            }

            TrigramData::tri2SetUnallocated(v67, v43);
            *(*(v67 + 80) + 2 * v43) = v65;
            if (*(a1 + 24))
            {
              *(*(v67 + 112) + v43) = *(*(a1 + 112) + v16);
            }

            else
            {
              *(*(v67 + 96) + 2 * v43) = *(*(a1 + 96) + 2 * v16);
            }

            if (v75)
            {
              if (v75 == 1)
              {
                TrigramData::fillTrigramRecord(v67, v43, &v74, &v72, &v70);
              }

              else
              {
                *(*(v67 + 144) + 4 * (v43 >> 5)) |= 1 << v43;
                *(*(v67 + 296) + 2 * v43) = v75;
                HuffmanEncoder<unsigned short,unsigned int>::addSuccessors(a3, &v74);
                v44 = v62;
                v45 = *(v62 + 8);
                if (v45 == *(v62 + 12))
                {
                  DgnArray<DiskNgramContext>::reallocElts(v62, 1, 1);
                  v44 = v62;
                  LODWORD(v45) = *(v62 + 8);
                }

                v46 = *v44 + 56 * v45;
                *v46 = 0;
                *(v46 + 8) = 0;
                *(v46 + 16) = 0;
                *(v46 + 24) = -1;
                strcpy((v46 + 32), " N");
                LODWORD(v46) = *(v44 + 8);
                *(v44 + 8) = v46 + 1;
                v47 = *v44 + 56 * v46;
                *(v47 + 34) = 3;
                *(v47 + 24) = v66;
                *(v47 + 28) = v65;
                *(v47 + 36) = v16;
                *(v47 + 40) = v43;
                *(v47 + 44) = v31;
                *(v47 + 48) = v18;
                *(v47 + 8) = v19;
                *(v47 + 16) = 0;
                v63 += v19;
              }
            }

            ++v15;
          }

          while (v15 != v64);
          if (a7)
          {
            v13 = v66;
            v11 = v58;
            v48 = v63;
            v49 = v60;
            if (v66 >= *(v56 + 8))
            {
              v9 = v67;
              a4 = v62;
            }

            else
            {
              v50 = *(*v56 + 8 * v66);
              v9 = v67;
              a4 = v62;
              if (v50)
              {
                v48 = *(v50 + 8) + v63;
                *(v50 + 16) = v48;
              }
            }
          }

          else
          {
            v13 = v66;
            v9 = v67;
            a4 = v62;
            v48 = v63;
            v11 = v58;
            v49 = v60;
          }

          v51 = *(a4 + 8);
          if (v49 < v51)
          {
            v52 = *(*a6 + 8 * v13);
            v53 = (*a4 + 56 * v49 + 16);
            v54 = v51 - v49;
            do
            {
              *(v53 - 3) = v52;
              *v53 = v48;
              v53 += 14;
              --v54;
            }

            while (v54);
          }
        }
      }

      ++v13;
    }

    while (v13 != v11);
  }

  if (!*(a3 + 128))
  {
    HuffmanEncoder<unsigned short,unsigned int>::addValue(a3, 0);
  }

  v69 = 0;
  memset(v68, 0, sizeof(v68));
  HuffmanEncoder<unsigned short,unsigned int>::finalizeTables(a3, v68);
  HuffmanDecoder<unsigned short,unsigned int>::operator=(v9 + 24, v68);
  HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(v68);
  TrigramData::compact(v9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v70);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v72);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v74);
}

void sub_26278753C(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 104);
  _Unwind_Resume(a1);
}

uint64_t *TrigramData::configureTrigramData(uint64_t *this, int a2, unsigned int a3, __int16 *a4, unsigned int a5, const unsigned __int16 *a6)
{
  v10 = this;
  *this = a2;
  *(this + 1) = a3 != 0;
  *(this + 2) = a5 != 0;
  v11 = *(this + 7);
  if (a3 <= v11)
  {
    *(this + 6) = a3;
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    this = DgnPrimArray<short>::reallocElts((this + 2), a3 - v11, 0);
    *(v10 + 6) = a3;
  }

  v12 = v10[2];
  v13 = a3;
  do
  {
    v14 = *a4++;
    *v12++ = v14;
    --v13;
  }

  while (v13);
LABEL_6:
  v15 = *(v10 + 11);
  if (a5 <= v15)
  {
    *(v10 + 10) = a5;
    if (!a5)
    {
      return this;
    }
  }

  else
  {
    this = DgnPrimArray<short>::reallocElts((v10 + 4), a5 - v15, 0);
    *(v10 + 10) = a5;
  }

  v16 = v10[4];
  v17 = a5;
  do
  {
    v18 = *a6++;
    *v16++ = v18;
    --v17;
  }

  while (v17);
  return this;
}

void TrigramData::preAllocateStaticTrigramData(TrigramData *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 15);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 != 0 && v7)
  {
    DgnPrimArray<short>::reallocElts(this + 48, v8, 0);
  }

  v9 = *(this + 19);
  if (a2 > v9)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 64, a2 - v9, 0);
  }

  v10 = *(this + 23);
  if (a3 > v10)
  {
    DgnPrimArray<short>::reallocElts(this + 80, a3 - v10, 0);
  }

  if (*(this + 1))
  {
    if (*(this + 31) < a3)
    {
      v14 = 0;
      *(this + 31) = realloc_array(*(this + 14), &v14, a3, *(this + 30), *(this + 30), 1);
      *(this + 14) = v14;
    }
  }

  else
  {
    v11 = *(this + 27);
    if (a3 > v11)
    {
      DgnPrimArray<short>::reallocElts(this + 96, a3 - v11, 0);
    }
  }

  BitArray::preAllocate((this + 128), a3);
  if (*this)
  {
    BitArray::preAllocate((this + 144), a3);
    BitArray::preAllocate((this + 160), a3);
    BitArray::preAllocate((this + 176), a3);
  }

  v12 = *(this + 73);
  if (a3 > v12)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 280, a3 - v12, 0);
  }

  v13 = *(this + 77);
  if (a3 > v13)
  {
    DgnPrimArray<short>::reallocElts(this + 296, a3 - v13, 0);
  }
}

uint64_t *TrigramData::preAllocateDynamicTrigramData(uint64_t *this, unsigned int a2, unsigned int a3)
{
  v5 = this;
  v6 = *(this + 89);
  v7 = a2 >= v6;
  v8 = a2 - v6;
  if (v8 != 0 && v7)
  {
    this = DgnPrimArray<short>::reallocElts((this + 43), v8, 0);
  }

  if (*(v5 + 2))
  {
    if (*(v5 + 97) < a2)
    {
      v11 = 0;
      this = realloc_array(v5[47], &v11, a2, *(v5 + 96), *(v5 + 96), 1);
      *(v5 + 97) = this;
      v5[47] = v11;
    }

    if (*(v5 + 85) < a3)
    {
      v11 = 0;
      this = realloc_array(v5[41], &v11, a3, *(v5 + 84), *(v5 + 84), 1);
      *(v5 + 85) = this;
      v5[41] = v11;
    }
  }

  else
  {
    v9 = *(v5 + 93);
    if (a2 > v9)
    {
      this = DgnPrimArray<short>::reallocElts((v5 + 45), a2 - v9, 0);
    }

    v10 = *(v5 + 81);
    if (a3 > v10)
    {

      return DgnPrimArray<short>::reallocElts((v5 + 39), a3 - v10, 0);
    }
  }

  return this;
}

uint64_t TrigramData::getSearchSuccIdForIndex(TrigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 35) + 4 * a2);
  if (*(*(this + 37) + 2 * a2) == 1)
  {
    return WORD1(v3);
  }

  if (*this && ((*(*(this + 18) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
  {
    v5 = *(*(this + 53) + 4 * v3) + a3;
    v6 = *(this + 55);
  }

  else
  {
    v5 = v3 + a3;
    v6 = *(this + 43);
  }

  return *(v6 + 2 * v5);
}

uint64_t TrigramData::getSearchQuantizedScoreForIndex(TrigramData *this, unsigned int a2, int a3)
{
  v3 = *(*(this + 35) + 4 * a2);
  if (*(*(this + 37) + 2 * a2) != 1)
  {
    if (*this && ((*(*(this + 18) + 4 * (a2 >> 5)) >> a2) & 1) != 0)
    {
      LODWORD(v3) = *(*(this + 53) + 4 * v3) + a3;
      v4 = *(this + 59);
    }

    else
    {
      LODWORD(v3) = v3 + a3;
      v4 = *(this + 47);
    }

    LOBYTE(v3) = *(v4 + v3);
  }

  return v3;
}

uint64_t *TrigramData::fillTrigramRecord(TrigramData *a1, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v10 = *(a3 + 8);
  if (v10 == 1)
  {
    goto LABEL_5;
  }

  v11 = 3;
  if (!*(a1 + 10))
  {
    v11 = 4;
  }

  if (v11 * v10 < (*(*a3 + 2 * (v10 - 1)) << (*(a1 + 10) == 0)))
  {
LABEL_5:
    result = TrigramData::allocSearch(a1, a2, *(a3 + 8));
    v13 = *(a3 + 8);
    if (*(a1 + 10))
    {
      if (v13)
      {
        v14 = 0;
        do
        {
          TrigramData::setSearchSuccIdForIndex(a1, a2, v14, *(*a3 + 2 * v14));
          result = TrigramData::setSearchQuantizedScoreForIndex(a1, a2, v14, *(*a5 + v14));
          ++v14;
        }

        while (v14 < *(a3 + 8));
      }
    }

    else if (v13)
    {
      v15 = 0;
      do
      {
        TrigramData::setSearchSuccIdForIndex(a1, a2, v15, *(*a3 + 2 * v15));
        result = TrigramData::setSearchScoreForIndex(a1, a2, v15, *(*a4 + 2 * v15));
        ++v15;
      }

      while (v15 < *(a3 + 8));
    }
  }

  else
  {

    return TrigramData::fillTrigramRecordLookup(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t TrigramData::savePersistentAndFillInNewTrigramData(TrigramData *this, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v43 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  v39 = 0;
  v40 = 0;
  if ((*(*(this + 16) + 4 * (a6 >> 5)) >> a6))
  {
    if (*(*(this + 37) + 2 * a6))
    {
      v11 = 1;
      do
      {
        v12 = *(this + 10);
        v13 = v11 - 1;
        v14 = (*(*(this + 35) + 4 * a6) + v13);
        if (v12)
        {
          v14 = *(*(this + 41) + v14);
          v15 = *(this + 4);
        }

        else
        {
          v15 = *(this + 39);
        }

        v16 = *(v15 + 2 * v14);
        if (v16 != 20000)
        {
          v17 = v44;
          if (v44 == HIDWORD(v44))
          {
            DgnPrimArray<short>::reallocElts(&v43, 1, 1);
            v17 = v44;
            v12 = *(this + 10);
          }

          v43[v17] = v11;
          LODWORD(v44) = v17 + 1;
          if (v12)
          {
            v18 = *(*(this + 41) + (*(*(this + 35) + 4 * a6) + v13));
            v19 = v40;
            if (v40 == HIDWORD(v40))
            {
              DgnPrimArray<char>::reallocElts(&v39, 1, 1);
              v19 = v40;
            }

            v39[v19] = v18;
            v20 = v40;
            v21 = &v40;
          }

          else
          {
            v20 = v42;
            if (v42 == HIDWORD(v42))
            {
              DgnPrimArray<short>::reallocElts(&v41, 1, 1);
              v20 = v42;
            }

            v41[v20] = v16;
            v21 = &v42;
          }

          *v21 = v20 + 1;
        }

        ++v11;
      }

      while (*(*(this + 37) + 2 * a6) >= v11);
    }
  }

  else if (*(*(this + 37) + 2 * a6))
  {
    v22 = 0;
    do
    {
      SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex(this, a6, v22);
      SearchScoreForIndex = TrigramData::getSearchScoreForIndex(this, a6, v22);
      v25 = SearchScoreForIndex;
      if (SearchScoreForIndex != 20000)
      {
        v26 = v44;
        if (v44 == HIDWORD(v44))
        {
          DgnPrimArray<short>::reallocElts(&v43, 1, 1);
          v26 = v44;
        }

        v43[v26] = SearchSuccIdForIndex;
        LODWORD(v44) = v26 + 1;
        if (*(this + 10))
        {
          SearchQuantizedScoreForIndex = TrigramData::getSearchQuantizedScoreForIndex(this, a6, v22);
          v28 = v40;
          if (v40 == HIDWORD(v40))
          {
            DgnPrimArray<char>::reallocElts(&v39, 1, 1);
            v28 = v40;
          }

          v39[v28] = SearchQuantizedScoreForIndex;
          v29 = v40;
          v30 = &v40;
        }

        else
        {
          v29 = v42;
          if (v42 == HIDWORD(v42))
          {
            DgnPrimArray<short>::reallocElts(&v41, 1, 1);
            v29 = v42;
          }

          v41[v29] = v25;
          v30 = &v42;
        }

        *v30 = v29 + 1;
      }

      ++v22;
    }

    while (v22 < *(*(this + 37) + 2 * a6));
  }

  *(*(a4 + 280) + 4 * a7) = (*(*a2 + 48))(a2);
  v37 = 0;
  v38 = 0;
  HuffmanEncoder<unsigned short,unsigned int>::encodeSuccessors(a5, &v43, &v37, a4 + 192);
  if (((4 * (v38 + 1)) | 2uLL) >= 2 * (v44 + 1))
  {
    v31 = a3;
    writeObjectArray(a2, v43, v44, a3);
  }

  else
  {
    *(*(a4 + 176) + 4 * (a7 >> 5)) |= 1 << a7;
    v36 = v38;
    v31 = a3;
    writeObject(a2, &v36, a3);
    writeObjectArray(a2, v37, v38, a3);
  }

  if (*(this + 10))
  {
    writeObjectArray(a2, v39, v40, v31);
  }

  else
  {
    writeObjectArray(a2, v41, v42, v31);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v37);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v39);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v41);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v43);
}

void sub_262787EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

uint64_t TrigramData::fillInFullyLoadedTrigramData(TrigramData *this, TrigramData *a2)
{
  v4 = *(this + 14);
  TrigramData::configureTrigramData(a2, 0, *(this + 6), *(this + 2), *(this + 10), *(this + 4));
  TrigramData::preAllocateStaticTrigramData(a2, v4, *(this + 22));
  v5 = 336;
  if (!*(this + 2))
  {
    v5 = 320;
  }

  TrigramData::preAllocateDynamicTrigramData(a2, *(this + 88), *(this + v5));
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  if (v4 >= 2)
  {
    v6 = 1;
    do
    {
      *v33 = v6;
      if (v6 < *(this + 14))
      {
        v31 = *(*(this + 6) + 2 * v6);
        if (*(*(this + 6) + 2 * v6))
        {
          TrigramData::allocTri1(a2, v6, v31);
          v7 = 0;
          do
          {
            v8 = (*(*(this + 8) + 4 * *v33) + v7);
            v32 = *(*(this + 10) + 2 * v8);
            LODWORD(v39) = 0;
            LODWORD(v37) = 0;
            LODWORD(v35) = 0;
            if ((*(*(this + 16) + 4 * (v8 >> 5)) >> v8))
            {
              if (*(*(this + 37) + 2 * v8))
              {
                v9 = 1;
                do
                {
                  v10 = *(this + 10);
                  v11 = v9 - 1;
                  v12 = (*(*(this + 35) + 4 * v8) + v11);
                  if (v10)
                  {
                    v12 = *(*(this + 41) + v12);
                    v13 = *(this + 4);
                  }

                  else
                  {
                    v13 = *(this + 39);
                  }

                  v14 = *(v13 + 2 * v12);
                  if (v14 != 20000)
                  {
                    v15 = v39;
                    if (v39 == HIDWORD(v39))
                    {
                      DgnPrimArray<short>::reallocElts(&v38, 1, 1);
                      v15 = v39;
                      v10 = *(this + 10);
                    }

                    *(v38 + 2 * v15) = v9;
                    LODWORD(v39) = v15 + 1;
                    if (v10)
                    {
                      v16 = *(*(this + 41) + (*(*(this + 35) + 4 * v8) + v11));
                      v17 = v35;
                      if (v35 == HIDWORD(v35))
                      {
                        DgnPrimArray<char>::reallocElts(&v34, 1, 1);
                        v17 = v35;
                      }

                      *(v34 + v17) = v16;
                      v18 = v35;
                      v19 = &v35;
                    }

                    else
                    {
                      v18 = v37;
                      if (v37 == HIDWORD(v37))
                      {
                        DgnPrimArray<short>::reallocElts(&v36, 1, 1);
                        v18 = v37;
                      }

                      *(v36 + 2 * v18) = v14;
                      v19 = &v37;
                    }

                    *v19 = v18 + 1;
                  }

                  ++v9;
                }

                while (*(*(this + 37) + 2 * v8) >= v9);
              }
            }

            else if (*(*(this + 37) + 2 * v8))
            {
              v20 = 0;
              do
              {
                SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex(this, v8, v20);
                SearchScoreForIndex = TrigramData::getSearchScoreForIndex(this, v8, v20);
                v23 = SearchScoreForIndex;
                if (SearchScoreForIndex != 20000)
                {
                  v24 = v39;
                  if (v39 == HIDWORD(v39))
                  {
                    DgnPrimArray<short>::reallocElts(&v38, 1, 1);
                    v24 = v39;
                  }

                  *(v38 + 2 * v24) = SearchSuccIdForIndex;
                  LODWORD(v39) = v24 + 1;
                  if (*(this + 10))
                  {
                    SearchQuantizedScoreForIndex = TrigramData::getSearchQuantizedScoreForIndex(this, v8, v20);
                    v26 = v35;
                    if (v35 == HIDWORD(v35))
                    {
                      DgnPrimArray<char>::reallocElts(&v34, 1, 1);
                      v26 = v35;
                    }

                    *(v34 + v26) = SearchQuantizedScoreForIndex;
                    v27 = v35;
                    v28 = &v35;
                  }

                  else
                  {
                    v27 = v37;
                    if (v37 == HIDWORD(v37))
                    {
                      DgnPrimArray<short>::reallocElts(&v36, 1, 1);
                      v27 = v37;
                    }

                    *(v36 + 2 * v27) = v23;
                    v28 = &v37;
                  }

                  *v28 = v27 + 1;
                }

                ++v20;
              }

              while (v20 < *(*(this + 37) + 2 * v8));
            }

            v29 = (*(*(a2 + 8) + 4 * *v33) + v7);
            *(*(a2 + 10) + 2 * v29) = 0;
            if (*(a2 + 1))
            {
              *(*(a2 + 14) + v29) = 0;
            }

            else
            {
              *(*(a2 + 12) + 2 * v29) = 20000;
            }

            TrigramData::tri2SetUnallocated(a2, v29);
            *(*(a2 + 10) + 2 * v29) = v32;
            if (*(this + 6))
            {
              *(*(a2 + 14) + v29) = *(*(this + 14) + v8);
            }

            else
            {
              *(*(a2 + 12) + 2 * v29) = *(*(this + 12) + 2 * v8);
            }

            if (v39)
            {
              TrigramData::fillTrigramRecord(a2, v29, &v38, &v36, &v34);
            }

            ++v7;
          }

          while (v7 != v31);
        }
      }

      v6 = *v33 + 1;
    }

    while (*v33 + 1 != v4);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v36);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v38);
}