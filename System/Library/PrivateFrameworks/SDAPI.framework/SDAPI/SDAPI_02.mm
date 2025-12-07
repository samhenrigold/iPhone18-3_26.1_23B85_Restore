void readObject(DgnStream *a1, BitArray *a2, unsigned int *a3)
{
  v7 = 0;
  (*(*a1 + 72))(a1, &v7, 4, 1);
  v6 = v7;
  *a3 ^= v7;
  BitArray::setSize(a2, v6);
  readObjectArray(a1, *a2, (v6 + 31) >> 5, a3);
}

int *writeSharedObject(DgnSharedMemStream *a1, BitArray *a2, unsigned int *a3)
{
  v15 = *(a2 + 2);
  v6 = v15;
  result = (*(*a1 + 80))(a1, &v15, 4);
  *a3 ^= v6;
  v9 = v6 + 31;
  v10 = (v6 + 31) >> 3;
  if ((v10 & 0x1FFFFFFC) != 0)
  {
    result = DgnSharedMemStream::writeSharedBytes(a1, *a2, v10 & 0x1FFFFFFC, v8);
    if (result)
    {
      v11 = result;
      result = BitArray::releaseAll(a2);
      *(a2 + 2) = v6;
      *a2 = v11;
    }

    else
    {
      v11 = *a2;
    }

    if (v9 >= 0x20)
    {
      v12 = 0;
      v13 = v9 >> 5;
      do
      {
        v14 = *v11++;
        v12 ^= v14;
        --v13;
      }

      while (v13);
    }

    else
    {
      v12 = 0;
    }

    *a3 ^= v12;
  }

  return result;
}

uint64_t *readSharedObject(DgnSharedMemStream *a1, BitArray *a2, unsigned int *a3)
{
  v12 = 0;
  (*(*a1 + 72))(a1, &v12, 4, 1);
  v6 = v12;
  *a3 ^= v12;
  if (v6)
  {
    SharedBytes = DgnSharedMemStream::readSharedBytes(a1, ((v6 + 31) >> 3) & 0x1FFFFFFC);
    result = BitArray::releaseAll(a2);
    *(a2 + 2) = v6;
    *a2 = SharedBytes;
    if ((v6 + 31) >= 0x20)
    {
      v9 = 0;
      v10 = (v6 + 31) >> 5;
      do
      {
        v11 = *SharedBytes++;
        v9 ^= v11;
        --v10;
      }

      while (v10);
    }

    else
    {
      v9 = 0;
    }

    *a3 ^= v9;
  }

  else
  {
    result = BitArray::releaseAll(a2);
    *(a2 + 2) = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t writeObject<double>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = *(a2 + 8);
  v6 = v8;
  (*(*a1 + 80))(a1, &v8, 4);
  *a3 ^= v6;
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

{
  v7 = *(a2 + 8);
  writeObject(a1, &v7, a3);
  return writeObjectArray(a1, *a2, *(a2 + 8), a3);
}

uint64_t writeObject(DgnStream *a1, const DgnMatrix *a2, unsigned int *a3)
{
  v9 = *a2;
  v6 = v9;
  (*(*a1 + 80))(a1, &v9, 4);
  *a3 ^= v6;
  v10 = *(a2 + 1);
  v7 = v10;
  (*(*a1 + 80))(a1, &v10, 4);
  *a3 ^= v7;
  return writeObject<double>(a1, a2 + 8, a3);
}

double RealDFileSubFileStream::readBytes(RealDFileSubFileStream *this, char *a2, unsigned int a3)
{
  v5 = RealDFileSubFileStream::basicRead(this, a2, a3);
  if (v5 < a3)
  {
    *(this + 76) = 1;

    return RealDFileSubFileStream::throwUnexpectedEof(this, a3, v5);
  }

  return result;
}

size_t RealDFileSubFileStream::basicRead(RealDFileSubFileStream *this, char *a2, unsigned int a3)
{
  v5 = *(this + 5);
  v6 = v5[19] + (*(this + 34) << 7);
  v7 = *(v6 + 108) + ((*(v6 + 96) - 1) << 12);
  v8 = *(this + 10);
  v9 = v7 - v8;
  if (v9)
  {
    v11 = *(this + 22);
    v12 = v8 & 0xFFF;
    if (v9 >= a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = v9;
    }

    v14 = 4096 - v12;
    if (4096 - v12 >= v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = v14;
    }

    RealDFile::doReadFromBigCache(v5, *(this + 22), v12, a2, v10);
    if (v13 > v14)
    {
      LODWORD(v15) = v10;
      do
      {
        v13 -= v15;
        if (v13 >= 0x1000)
        {
          v15 = 4096;
        }

        else
        {
          v15 = v13;
        }

        v16 = *(this + 5);
        ++v11;
        v17 = *(v16 + 144);
        if (v17 > v11)
        {
          v18 = (*(v16 + 136) + 2 * v11);
          while (1)
          {
            v19 = *v18++;
            if (v19 == *(this + 34))
            {
              break;
            }

            if (v17 == ++v11)
            {
              v11 = *(v16 + 144);
              break;
            }
          }
        }

        RealDFile::doReadFromBigCache(v16, v11, 0, &a2[v10], v15);
        v10 = (v10 + v15);
      }

      while (v13 > 0x1000);
    }

    v20 = *(this + 10) + v10;
    *(this + 10) = v20;
    if ((v20 & 0xFFF) == 0)
    {
      v21 = *(this + 5);
      ++v11;
      v22 = *(v21 + 144);
      if (v22 > v11)
      {
        v23 = (*(v21 + 136) + 2 * v11);
        while (1)
        {
          v24 = *v23++;
          if (v24 == *(this + 34))
          {
            break;
          }

          if (v22 == ++v11)
          {
            v11 = v22;
            break;
          }
        }
      }
    }

    *(this + 22) = v11;
  }

  else
  {
    v10 = 0;
    *a2 = 0;
  }

  return v10;
}

void RealDFile::doReadFromBigCache(void *this, int a2, unsigned int a3, char *__dst, size_t __n)
{
  v5 = __n;
  v9 = (*(this + 54) + a2);
  if (v9 >= *(this + 86) || (v10 = *(this[42] + 8 * v9)) == 0)
  {
    RealDFile::fillBigCache(this, *(this + 54) + a2);
    v10 = *(this[42] + 8 * v9);
  }

  if (v5 > 8)
  {
    v12 = (*v10 + a3);

    memcpy(__dst, v12, v5);
  }

  else if (v5)
  {
    v11 = v5;
    do
    {
      *__dst++ = *(*v10 + a3++);
      --v11;
    }

    while (v11);
  }
}

double UttFileMgr::startupUttFileMgr(UttFileMgr *this)
{
  v1 = MemChunkAlloc(0x40uLL, 0);
  *v1 = 0u;
  *&result = 0x10000001DLL;
  v1[2] = 0x10000001DLL;
  *(v1 + 6) = 1;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  *(v1 + 14) = 0;
  UttFileMgr::smpUttFileMgr = v1;
  return result;
}

uint64_t IdMgr<unsigned int>::getNextId(_DWORD *a1)
{
  if (a1[10] <= *a1)
  {
    v2 = a1[2];
    do
    {
      DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue((a1 + 4), v2);
      v2 = a1[2] + 1;
      a1[2] = v2;
    }

    while (a1[10] <= *a1);
  }

  return DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::dequeue((a1 + 4));
}

void IdMgr<unsigned int>::recycleId(unsigned int *a1, int a2)
{
  DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue((a1 + 4), a2);
  v4 = *a1;
  v5 = a1[10];
  if (v5 > *a1)
  {
    v6 = a2 + 1;
    v7 = a1[2];
    v8 = v5 - 1;
    do
    {
      if (v7 != v6)
      {
        break;
      }

      a1[10] = v8;
      v9 = a1[9];
      if (!v9)
      {
        v9 = a1[6];
      }

      v10 = v9 - 1;
      a1[9] = v9 - 1;
      v11 = v7 - 1;
      a1[2] = v7 - 1;
      if (v8)
      {
        if (!v10)
        {
          v10 = a1[6];
        }

        v7 = *(*(a1 + 2) + 4 * (v10 - 1)) + 1;
      }

      v6 = v7;
      v7 = v11;
    }

    while (v8-- > v4);
  }
}

void UttFileMgr::printSize(UttFileMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfmgr.cpp", 130);
  if (v50)
  {
    v13 = v49;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v49);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfmgr.cpp", 131);
  if (v50)
  {
    v16 = v49;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v15, (a3 + 1), &byte_262899963, (a3 + 1), &byte_262899963, v16);
  v46 = a6;
  DgnString::~DgnString(&v49);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, (a3 + 1), &byte_262899963);
  v18 = *(this + 2);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *this;
      if (*(*this + 8 * v19))
      {
        v48 = 0;
        v49 = 0;
        v47 = 0;
        UttFile::printSize(*(v23 + 8 * v19), v19, (a3 + 2), &v49, &v48, &v47);
        v20 += v49;
        v22 += v48;
        v21 += v47;
        v18 = *(this + 2);
      }

      ++v19;
    }

    while (v19 < v18);
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v20 = 0;
    v18 = 0;
  }

  v24 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v24 = 12;
  }

  v25 = v24 + v20;
  v26 = v24 + v22;
  v27 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v27 = 3;
  }

  v28 = v25 + (*(this + 3) << v27);
  v29 = v26 + (v18 << v27);
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfmgr.cpp", 131);
  if (v50)
  {
    v31 = v49;
  }

  else
  {
    v31 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v31, v28, v29, v21);
  DgnString::~DgnString(&v49);
  *a4 += v28;
  *a5 += v29;
  *v46 += v21;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 10);
  v34 = *(this + 11);
  v35 = v32 + 4 * (v33 - 1) + 4;
  if (v33 <= 0)
  {
    v35 = v32;
  }

  v36 = v34 >= v33;
  v37 = v35 + 4 * (v34 - v33);
  if (v36)
  {
    v32 = v37;
  }

  v38 = v32 + 24;
  v39 = DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(this + 8, 1u) + 12;
  v40 = *(this + 10);
  if (v40 <= *(this + 11))
  {
    v41 = 0;
  }

  else
  {
    v41 = 4 * v40;
  }

  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfmgr.cpp", 133);
  if (v50)
  {
    v43 = v49;
  }

  else
  {
    v43 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v43, v38, v39, v41);
  DgnString::~DgnString(&v49);
  *a4 += v38;
  *a5 += v39;
  *v46 += v41;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfmgr.cpp", 134);
  if (v50)
  {
    v45 = v49;
  }

  else
  {
    v45 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, a3, &byte_262899963, (35 - a3), (35 - a3), v45, *a4, *a5, *v46);
  DgnString::~DgnString(&v49);
}

void sub_26258A6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  if (v4 == *(a1 + 8))
  {
    v5 = *(a1 + 12);
    if (v4 == v5)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1, 1, 1);
      v5 = *(a1 + 12);
      v4 = *(a1 + 24);
    }

    *(a1 + 8) = v5;
    v6 = v5 - v4;
    if (v4)
    {
      v7 = *(a1 + 16);
      if (v7)
      {
        memmove((*a1 + 4 * v7 + 4 * v6), (*a1 + 4 * v7), 4 * (v4 - v7));
        v4 = *(a1 + 20);
        *(a1 + 16) += v6;
      }

      else
      {
        *(a1 + 20) = v4;
      }
    }

    else
    {
      *(a1 + 16) = 0;
    }

    bzero((*a1 + 4 * v4), 4 * v6);
  }

  *(*a1 + 4 * *(a1 + 20)) = a2;
  v8 = *(a1 + 20);
  v9 = *(a1 + 24);
  if (v8 + 1 == *(a1 + 8))
  {
    v10 = 0;
  }

  else
  {
    v10 = v8 + 1;
  }

  *(a1 + 20) = v10;
  *(a1 + 24) = v9 + 1;
}

uint64_t DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::dequeue(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*a1 + 4 * v1);
  *(*a1 + 4 * v1) = 0;
  v3 = *(a1 + 16) + 1;
  *(a1 + 16) = v3;
  v4 = *(a1 + 24) - 1;
  *(a1 + 24) = v4;
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = v3 >= v5;
    v7 = v3 - v5;
    if (v6)
    {
      *(a1 + 16) = v7;
    }
  }

  else
  {
    *(a1 + 16) = 0;
  }

  return v2;
}

uint64_t DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::sizeObject(_DWORD *a1, unsigned int a2)
{
  result = sizeObject<unsigned int>(a1, a2) + 12 * (a2 != 3);
  if (a2 > 3 || a2 == 1)
  {
    v5 = a1[2];
    if (a1[6] < v5)
    {
      v6 = 0;
      v8 = a1[4];
      v7 = a1[5];
      do
      {
        if (v7 >= v8)
        {
          if (v6 >= v8 && v6 < v7)
          {
            goto LABEL_13;
          }
        }

        else if (v6 < v7 || v6 >= v8)
        {
          goto LABEL_13;
        }

        result -= 4 * (a2 != 3);
LABEL_13:
        ++v6;
      }

      while (v5 != v6);
    }
  }

  return result;
}

void MrecInitModule_rulemgr_voc(void)
{
  if (!gParDebugRuleMgr)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugRuleMgr", &unk_26286C229, &unk_26286C229, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugRuleMgr = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugRuleMgr);
  }

  if (!gParDebugShowRuleAndStateInfoOnLoad)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowRuleAndStateInfoOnLoad", &unk_26286C229, &unk_26286C229, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowRuleAndStateInfoOnLoad = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugShowRuleAndStateInfoOnLoad);
  }
}

void Rule::~Rule(Rule *this)
{
  *(this + 64) = 0;
  *(this + 130) = 0;
  *(this + 4) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnIArray<Utterance *>::~DgnIArray(this + 64);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnString::~DgnString(this + 8);
}

void Rule::Rule(Rule *this, const Rule *a2)
{
  DgnString::DgnString((this + 8));
  *(this + 2) = 0u;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  Rule::operator=(this, a2);
}

void sub_26258AAB4(_Unwind_Exception *a1)
{
  v4 = v3;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 80);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 64);
  DgnArray<DgnArray<ParseToken>>::releaseAll(v1 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnString::~DgnString(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t Rule::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  DgnString::operator=((a1 + 8), (a2 + 8));
  *(a1 + 24) = *(a2 + 24);
  DgnPrimArray<int>::copyArraySlice((a1 + 32), (a2 + 32), 0, *(a2 + 40));
  DgnArray<DgnArray<ParseToken>>::copyArraySlice(a1 + 48, (a2 + 48), 0, *(a2 + 56));
  DgnArray<RuleDesc>::copyArraySlice((a1 + 64), (a2 + 64), 0, *(a2 + 72));
  DgnPrimArray<int>::copyArraySlice((a1 + 80), (a2 + 80), 0, *(a2 + 88));
  DgnPrimArray<unsigned short>::copyArraySlice((a1 + 96), (a2 + 96), 0, *(a2 + 104));
  DgnPrimArray<unsigned short>::copyArraySlice((a1 + 112), (a2 + 112), 0, *(a2 + 120));
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 130) = *(a2 + 130);
  DgnPrimArray<int>::copyArraySlice((a1 + 136), (a2 + 136), 0, *(a2 + 144));
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

BOOL DgnArray<DgnArray<ParseToken>>::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *(a1 + 8);
  if (v4 != *(a2 + 8))
  {
    return 0;
  }

  v5 = v4 + 1;
  v6 = 16 * v4 - 16;
  do
  {
    v7 = --v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v8 = v6 - 16;
    v9 = DgnArray<ParseToken>::operator==(*a1 + v6, (*a2 + v6));
    v6 = v8;
  }

  while (v9);
  return v7;
}

uint64_t Rule::readRule(Rule *this, DgnStream *a2, unsigned int *a3)
{
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  readObject(a2, this, a3);
  readObject(a2, (this + 8), a3);
  readObject(a2, this + 6, a3);
  if (*(a2 + 35) != 1 || (readObject<StateSpec>(a2, &v48, a3), (*(a2 + 35) & 1) == 0))
  {
    readObject<unsigned int>(a2, this + 32, a3);
  }

  readObject<DgnArray<ParseToken>>(a2, this + 48, a3);
  readObject<RuleDesc>(a2, this + 64, a3);
  if (((*(a2 + 35) != 1 || (readObject<StateSpec>(a2, &v46, a3), (*(a2 + 35) & 1) == 0)) && (readObject<unsigned int>(a2, this + 80, a3), (*(a2 + 35) & 1) == 0) || (readObject<RuleSpec>(a2, &v44, a3), (*(a2 + 35) & 1) == 0)) && (readObject<unsigned short>(a2, this + 96, a3), (*(a2 + 35) & 1) == 0) || (readObject<RuleSpec>(a2, &v42, a3), (*(a2 + 35) & 1) == 0))
  {
    readObject<unsigned short>(a2, this + 112, a3);
  }

  readObject(a2, this + 128, a3);
  readObject(a2, this + 129, a3);
  readObject(a2, this + 130, a3);
  if (*(a2 + 35) != 1 || (readObject<StateSpec>(a2, &v40, a3), (*(a2 + 35) & 1) == 0))
  {
    readObject<unsigned int>(a2, this + 136, a3);
  }

  readObject(a2, this + 76, a3);
  readObject(a2, this + 160, a3);
  readObject(a2, this + 161, a3);
  readObject(a2, this + 162, a3);
  if (*(a2 + 35) == 1)
  {
    v6 = v49;
    v7 = *(this + 11);
    v8 = v49;
    if (v49 > v7)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 32, v49 - v7, 0);
      v8 = v49;
    }

    *(this + 10) = v6;
    if (v8)
    {
      v9 = 0;
      v10 = *(this + 4);
      v11 = (v48 + 4);
      do
      {
        v12 = *v11;
        v11 += 2;
        *(v10 + 4 * v9++) = v12;
      }

      while (v9 < v49);
    }

    v13 = v47;
    v14 = *(this + 23);
    v15 = v47;
    if (v47 > v14)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 80, v47 - v14, 0);
      v15 = v47;
    }

    *(this + 22) = v13;
    if (v15)
    {
      v16 = 0;
      v17 = *(this + 10);
      v18 = (v46 + 4);
      do
      {
        v19 = *v18;
        v18 += 2;
        *(v17 + 4 * v16++) = v19;
      }

      while (v16 < v47);
    }

    v20 = v45;
    v21 = *(this + 27);
    LODWORD(v22) = v45;
    if (v45 > v21)
    {
      DgnPrimArray<short>::reallocElts(this + 96, v45 - v21, 0);
      LODWORD(v22) = v45;
    }

    *(this + 26) = v20;
    if (v22)
    {
      v23 = *(this + 12);
      v22 = v22;
      v24 = (v44 + 2);
      do
      {
        v25 = *v24;
        v24 += 2;
        *v23++ = v25;
        --v22;
      }

      while (v22);
    }

    v26 = v43;
    v27 = *(this + 31);
    LODWORD(v28) = v43;
    if (v43 > v27)
    {
      DgnPrimArray<short>::reallocElts(this + 112, v43 - v27, 0);
      LODWORD(v28) = v43;
    }

    *(this + 30) = v26;
    if (v28)
    {
      v29 = *(this + 14);
      v28 = v28;
      v30 = (v42 + 2);
      do
      {
        v31 = *v30;
        v30 += 2;
        *v29++ = v31;
        --v28;
      }

      while (v28);
    }

    v32 = v41;
    v33 = *(this + 37);
    v34 = v41;
    if (v41 > v33)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 136, v41 - v33, 0);
      v34 = v41;
    }

    *(this + 36) = v32;
    if (v34)
    {
      v35 = 0;
      v36 = *(this + 17);
      v37 = (v40 + 4);
      do
      {
        v38 = *v37;
        v37 += 2;
        *(v36 + 4 * v35++) = v38;
      }

      while (v35 < v41);
    }
  }

  *(this + 154) = 0;
  *(this + 79) = 0;
  *(this + 163) = 0;
  DgnIArray<Utterance *>::~DgnIArray(&v40);
  DgnIArray<Utterance *>::~DgnIArray(&v42);
  DgnIArray<Utterance *>::~DgnIArray(&v44);
  DgnIArray<Utterance *>::~DgnIArray(&v46);
  return DgnIArray<Utterance *>::~DgnIArray(&v48);
}

void sub_26258B064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  DgnIArray<Utterance *>::~DgnIArray(&a9);
  DgnIArray<Utterance *>::~DgnIArray(&a11);
  DgnIArray<Utterance *>::~DgnIArray(&a13);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnIArray<Utterance *>::~DgnIArray(v14 - 48);
  _Unwind_Resume(a1);
}

uint64_t readObject<StateSpec>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  result = readObject(a1, &v11, a3);
  v7 = v11;
  v8 = *(a2 + 12);
  if (v11 <= v8)
  {
    *(a2 + 8) = v11;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(a2, v11 - v8, 0);
    *(a2 + 8) = v7;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    result = readObject(a1, *a2 + v9, a3);
    ++v10;
    v9 += 8;
  }

  while (v10 < *(a2 + 8));
  return result;
}

uint64_t readObject<DgnArray<ParseToken>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v17 = 0;
  result = readObject(a1, &v17, a3);
  v7 = v17;
  v8 = *(a2 + 12);
  if (v17 > v8)
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(a2, v17 - v8, 0);
  }

  v9 = *(a2 + 8);
  if (v9 <= v7)
  {
    if (v9 < v7)
    {
      v12 = v7 - v9;
      v13 = 16 * v9;
      do
      {
        v14 = (*a2 + v13);
        *v14 = 0;
        v14[1] = 0;
        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  else if (v9 > v7)
  {
    v10 = v9;
    v11 = 16 * v9 - 16;
    do
    {
      --v10;
      result = DgnIArray<Utterance *>::~DgnIArray(*a2 + v11);
      v11 -= 16;
    }

    while (v10 > v7);
  }

  *(a2 + 8) = v7;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      result = readObject<ParseToken>(a1, *a2 + v15, a3);
      ++v16;
      v15 += 16;
    }

    while (v16 < *(a2 + 8));
  }

  return result;
}

uint64_t readObject<RuleDesc>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v11 = 0;
  result = readObject(a1, &v11, a3);
  v7 = v11;
  v8 = *(a2 + 12);
  if (v11 <= v8)
  {
    *(a2 + 8) = v11;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    DgnArray<RuleDesc>::reallocElts(a2, v11 - v8, 0);
    *(a2 + 8) = v7;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    result = RuleDesc::readObject((*a2 + v9), a1, a3);
    ++v10;
    v9 += 12;
  }

  while (v10 < *(a2 + 8));
  return result;
}

uint64_t readObject<RuleSpec>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v14 = 0;
  result = readObject(a1, &v14, a3);
  v7 = v14;
  v8 = *(a2 + 12);
  if (v14 > v8)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a2, v14 - v8, 0);
  }

  v9 = *(a2 + 8);
  if (v9 < v7)
  {
    v10 = v7 - v9;
    v11 = *a2 + 4 * v9 + 2;
    do
    {
      *(v11 - 2) = 127;
      v11 += 4;
      --v10;
    }

    while (v10);
  }

  *(a2 + 8) = v7;
  if (v7)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      result = readObject(a1, (*a2 + v12), a3);
      ++v13;
      v12 += 4;
    }

    while (v13 < *(a2 + 8));
  }

  return result;
}

void *DgnArray<DgnArray<ParseToken>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnIArray<Utterance *>::~DgnIArray(*a1 + v3);
      v3 -= 16;
    }

    while (v3 != -16);
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

uint64_t writeObject(DgnStream *a1, const Rule *a2, unsigned int *a3)
{
  writeObject(a1, a2, a3);
  writeObject(a1, a2 + 8, a3);
  writeObject(a1, a2 + 6, a3);
  writeObject<unsigned int>(a1, a2 + 32, a3);
  writeObject<DgnArray<ParseToken>>(a1, a2 + 48, a3);
  writeObject<RuleDesc>(a1, a2 + 64, a3);
  writeObject<unsigned int>(a1, a2 + 80, a3);
  writeObject<unsigned short>(a1, a2 + 96, a3);
  writeObject<unsigned short>(a1, a2 + 112, a3);
  writeObject(a1, a2 + 128, a3);
  writeObject(a1, a2 + 129, a3);
  writeObject(a1, a2 + 130, a3);
  writeObject<unsigned int>(a1, a2 + 136, a3);
  writeObject(a1, a2 + 76, a3);
  writeObject(a1, a2 + 160, a3);
  writeObject(a1, a2 + 161, a3);

  return writeObject(a1, a2 + 162, a3);
}

uint64_t writeObject<DgnArray<ParseToken>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<ParseToken>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<RuleDesc>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = RuleDesc::writeObject((*a2 + v7), a1, a3);
      ++v8;
      v7 += 12;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t sizeObject<DgnArray<ParseToken>>(uint64_t a1, uint64_t a2)
{
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

  if (a2 == 3)
  {
    v4 = 0;
  }

  else if ((a2 & 0xFFFFFFFE) != 2)
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
        v6 += sizeObject<ParseToken>(*a1 + v8, a2);
        --v7;
        v8 -= 16;
      }

      while (v7 > 1);
    }

    if (a2)
    {
      v4 = v6;
    }

    else
    {
      v4 = v6 + v4 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(v10);
  return v4;
}

void sub_26258B87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<RuleDesc>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v2 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 12;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v3 = *(a1 + 8);
    v4 = 12 * v3;
    if (v3 <= 0)
    {
      v4 = 0;
    }

    v2 += v4;
    if (!a2)
    {
      v2 += 12 * (*(a1 + 12) - v3);
    }
  }

  return v2;
}

uint64_t sizeObject<unsigned short>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    v3 = *(a1 + 8);
    if (v3 <= *(a1 + 12))
    {
      return 0;
    }

    else
    {
      return 2 * v3;
    }
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      result = 12;
    }

    else
    {
      result = 16;
    }

    if (a2 != 2)
    {
      v6 = *(a1 + 8);
      v5 = *(a1 + 12);
      v7 = result + 2 * (v6 - 1) + 2;
      if (v6 <= 0)
      {
        v7 = result;
      }

      if (!a2)
      {
        v7 += 2 * (v5 - v6);
      }

      if (v5 >= v6)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t RuleDesc::writeObject(unsigned int *a1, uint64_t a2, _DWORD *a3)
{
  v6 = *a1;
  if (v6 > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = dword_26286C294[v6];
  }

  v17 = v7;
  writeObject(a2, &v17, a3);
  result = writeObject(a2, a1 + 1, a3);
  v9 = *a1;
  if (*a1 <= 1)
  {
    if (!v9)
    {
      v13 = a1[2];
      if (v13 < 4)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = 0;
      }

      v16 = v14;
      v10 = &v16;
      return writeObject(a2, v10, a3);
    }

    if (v9 != 1)
    {
      return result;
    }

    goto LABEL_11;
  }

  switch(v9)
  {
    case 2:
      return writeObject(a2, a1 + 4, a3);
    case 3:
      v11 = a1[2];
      if (v11 < 4)
      {
        v12 = v11 + 1;
      }

      else
      {
        v12 = 0;
      }

      v15 = v12;
      v10 = &v15;
      return writeObject(a2, v10, a3);
    case 4:
LABEL_11:
      v10 = (a1 + 2);
      return writeObject(a2, v10, a3);
  }

  return result;
}

uint64_t RuleDesc::readObject(unsigned __int16 *a1, uint64_t a2, _DWORD *a3)
{
  v15 = 0;
  readObject(a2, &v15, a3);
  v6 = 0;
  if ((v15 - 2) <= 4)
  {
    v6 = dword_26286C2A8[v15 - 2];
  }

  *a1 = v6;
  result = readObject(a2, a1 + 1, a3);
  if (*(a2 + 35) == 1)
  {
    v14 = 0;
    result = readObject(a2, &v14, a3);
  }

  v8 = *a1;
  if (*a1 <= 1)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        return result;
      }

      return readObject(a2, a1 + 2, a3);
    }

    v13 = 0;
    result = readObject(a2, &v13, a3);
    v9 = v13;
  }

  else
  {
    if (v8 == 2)
    {
      return readObject(a2, a1 + 4, a3);
    }

    if (v8 != 3)
    {
      if (v8 != 4)
      {
        return result;
      }

      return readObject(a2, a1 + 2, a3);
    }

    v12 = 0;
    result = readObject(a2, &v12, a3);
    v9 = v12;
  }

  v10 = v9 - 2;
  v11 = v9 - 1;
  if (v10 >= 3)
  {
    v11 = 0;
  }

  *(a1 + 2) = v11;
  return result;
}

void RuleMgr::RuleMgr(RuleMgr *this, Voc *a2)
{
  *(this + 1) = 0u;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *this = 0u;
  *(this + 9) = a2;
  *(this + 32) = *(a2 + 84);
  v3 = MemChunkAlloc(0x110uLL, 0);
  EnvMgr::EnvMgr(v3, 2);
  *(this + 10) = v4;
  if (!*(this + 3))
  {
    DgnArray<Rule>::reallocElts(this, 1, 0);
  }

  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  RuleMgr::newRule(this, 0);
  *(this + 11) = 0;
}

void sub_26258BC60(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnArray<Rule>::releaseAll(v1);
  _Unwind_Resume(a1);
}

uint64_t RuleMgr::newRule(RuleMgr *this, unsigned int a2)
{
  StateMgr::verifyStateFull(*(*(this + 9) + 56), a2, 1, 1);
  v4 = *(this + 6);
  if (v4)
  {
    v5 = *(*(this + 2) + 2 * (v4 - 1));
    *(this + 6) = v4 - 1;
  }

  else
  {
    v5 = *(this + 16);
    if (v5 == 0xFFFF)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2492, "voc/rulemgr", 14, "%s", &errStr_voc_rulemgr_E_TOO_MANY_RULES);
      v5 = *(this + 16);
    }
  }

  DgnString::DgnString(v9);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 65793;
  v8 = v5;
  v9[2] = 0;
  v9[4] = a2;
  if (v5)
  {
    StateMgr::addChildRule(*(*(this + 9) + 56), a2, v5);
    v15[16] = 1;
    ++*(this + 9);
  }

  if (v4)
  {
    Rule::operator=(*this + 168 * v5, &v8);
  }

  else
  {
    v6 = *(this + 2);
    if (v6 == *(this + 3))
    {
      DgnArray<Rule>::reallocElts(this, 1, 1);
      v6 = *(this + 2);
    }

    Rule::Rule((*this + 168 * v6), &v8);
    ++*(this + 2);
    ++*(this + 16);
  }

  *(this + 11) ^= RuleMgr::computeOneRuleIdNameChecksum(this, v5);
  Rule::~Rule(&v8);
  return v5;
}

void sub_26258BE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Rule::~Rule(va);
  _Unwind_Resume(a1);
}

void RuleMgr::~RuleMgr(EnvMgr **this)
{
  RuleMgr::emptyAllRuleDescsNoRebuild(this);
  if (*(this + 2))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *this;
      v5 = v3;
      v6 = *(*this + 42 * v3 + 26);
      if (v6)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", "delete", v2, "mIncludingRulesCount", v6);
        v4 = *this;
      }

      if (*(v4 + 84 * v5 + 77))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", "delete", v2, "mIncludingLatticesCount", *(v4 + 84 * v5 + 77));
        v4 = *this;
      }

      if (*(v4 + 84 * v5 + 78))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", "delete", v2, "mIncludingTransducersCount", *(v4 + 84 * v5 + 78));
        v4 = *this;
      }

      v7 = *(v4 + 84 * v5 + 79);
      if (v7)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", "delete", v2, "mIncludingTransducerGrammarsCount", v7);
      }

      v3 = v5 + 1;
      v2 = (v5 + 1);
    }

    while (*(this + 2) > v2);
  }

  DgnDelete<EnvMgr>(this[10]);
  this[10] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 2));
  DgnArray<Rule>::releaseAll(this);
}

uint64_t RuleMgr::emptyAllRuleDescsNoRebuild(RuleMgr *this)
{
  v5[0] = 0;
  v5[1] = 0;
  v1 = *(this + 2);
  if (v1)
  {
    for (i = 0; i < v1; ++i)
    {
      if (*(*this + 168 * i + 128))
      {
        RuleMgr::setDesc(this, i, v5);
        v1 = *(this + 2);
      }
    }
  }

  return DgnIArray<Utterance *>::~DgnIArray(v5);
}

EnvMgr *DgnDelete<EnvMgr>(EnvMgr *result)
{
  if (result)
  {
    EnvMgr::~EnvMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void RuleMgr::setDesc(RuleMgr *a1, unsigned int a2, uint64_t *a3)
{
  RuleMgr::verifyRule(a1, a2, 1);
  RuleMgr::verifyNewDesc(a1, a3);
  v6 = *a1;
  if (*(*a1 + 168 * a2 + 154))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", "setDesc", a2, "mIncludingLatticesCount", *(*a1 + 168 * a2 + 154));
    v6 = *a1;
  }

  if (*(v6 + 168 * a2 + 156))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", "setDesc", a2, "mIncludingTransducersCount", *(v6 + 168 * a2 + 156));
    v6 = *a1;
  }

  v7 = *(v6 + 168 * a2 + 158);
  if (v7)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 123, "voc/rulemgr", 12, "%.500s %d %.500s %d", "setDesc", a2, "mIncludingTransducerGrammarsCount", v7);
  }

  HashKEV<unsigned int,unsigned int,CWIDScope>::HashKEV(v74, 0, 16);
  v72 = 0;
  v73 = 0;
  RuleMgr::verifyRule(a1, a2, 1);
  v8 = *a1 + 168 * a2;
  if (*(v8 + 72))
  {
    v9 = 0;
    do
    {
      v10 = (*(v8 + 64) + 12 * v9);
      v11 = *v10;
      if (*v10 == 4)
      {
        v25 = v10[2] & 0xFFFFFF | (*(a1 + 32) << 25);
        LODWORD(v79[0]) = v25;
        if (v77)
        {
          v26 = (-1640531527 * v25) >> -v77;
        }

        else
        {
          v26 = 0;
        }

        v27 = v78[v26];
        if (v27)
        {
          while (*(v27 + 2) != v25 || *(v27 + 3) != v25)
          {
            v27 = *v27;
            if (!v27)
            {
              goto LABEL_31;
            }
          }
        }

        else
        {
LABEL_31:
          HashKEV<unsigned int,unsigned int,CWIDScope>::add(v74, v79);
        }
      }

      else if (v11 == 2)
      {
        v18 = *a1 + 168 * a2;
        v19 = *(v18 + 120);
        if (v19)
        {
          v20 = *(v10 + 4);
          v21 = *(v18 + 112);
          v22 = *(v18 + 120);
          v23 = 0xFFFFFFFFLL;
          while (1)
          {
            v24 = *v21++;
            if (v24 == v20)
            {
              break;
            }

            --v23;
            if (!--v22)
            {
              goto LABEL_40;
            }
          }

          if (v23)
          {
            v28 = *(v18 + 120);
            v29 = *(v18 + 112);
            while (*v29 != v20)
            {
              ++v29;
              if (!--v28)
              {
                goto LABEL_38;
              }
            }

            v30 = v19 - 1;
            *v29 = *(*(v18 + 112) + 2 * v30);
            *(v18 + 120) = v30;
LABEL_38:
            RuleMgr::removeIncludingRule(a1, v20, a2, 0);
          }
        }
      }

      else if (v11 == 1)
      {
        v12 = *(a1 + 9);
        v13 = *(v12 + 56);
        if (v13)
        {
          if (StateMgr::isStateInRule(*(v12 + 56), v10[2], a2))
          {
            StateMgr::unincludeStateInRule(v13, *(*(v8 + 64) + 12 * v9 + 8), a2);
            v14 = *a1 + 168 * a2;
            v15 = *(v14 + 144);
            if (v15)
            {
              v16 = *(v14 + 144);
              v17 = *(v14 + 136);
              while (*v17 != *(*(v8 + 64) + 12 * v9 + 8))
              {
                ++v17;
                if (!--v16)
                {
                  goto LABEL_40;
                }
              }

              v31 = v15 - 1;
              *v17 = *(*(v14 + 136) + 4 * v31);
              *(v14 + 144) = v31;
            }
          }
        }
      }

LABEL_40:
      ++v9;
    }

    while (v9 < *(v8 + 72));
  }

  LODWORD(v73) = 0;
  if (HIDWORD(v73) < v75)
  {
    v79[0] = 0;
    HIDWORD(v73) = realloc_array(v72, v79, 4 * v75, 0, 0, 1) >> 2;
    v72 = v79[0];
  }

  v32 = v76;
  if (!v76)
  {
    LODWORD(v34) = 0;
    v33 = 0;
LABEL_50:
    v35 = v73;
    while (v34 < v32)
    {
      v36 = *(v33 + 3);
      if (v35 == HIDWORD(v73))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v72, 1, 1);
        v35 = v73;
      }

      *(v72 + v35) = v36;
      v35 = v73 + 1;
      LODWORD(v73) = v73 + 1;
      v37 = *v33;
      v32 = v76;
      if (!*v33)
      {
        v34 = (v34 + 1);
        if (v34 >= v76)
        {
          v37 = v33;
        }

        else
        {
          v37 = v78[v34];
          if (!v37)
          {
            v38 = &v78[v34 + 1];
            v39 = ~v34 + v76;
            while (v39)
            {
              v40 = *v38++;
              v37 = v40;
              LODWORD(v34) = v34 + 1;
              --v39;
              if (v40)
              {
                goto LABEL_62;
              }
            }

            goto LABEL_64;
          }
        }
      }

LABEL_62:
      v33 = v37;
    }

    goto LABEL_64;
  }

  v33 = *v78;
  if (*v78)
  {
    LODWORD(v34) = 0;
    goto LABEL_50;
  }

  v34 = 0;
  while (v76 - 1 != v34)
  {
    v33 = v78[++v34];
    if (v33)
    {
      goto LABEL_50;
    }
  }

  v35 = v73;
LABEL_64:
  if (v35)
  {
    for (i = 0; i < v35; ++i)
    {
      v42 = *(*(a1 + 9) + 48);
      if (v42)
      {
        WordList::removeIncludingRuleRef(v42, *(v72 + i) & 0xFFFFFF);
        v35 = v73;
      }

      --*(*a1 + 168 * a2 + 152);
    }
  }

  HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(v74);
  LODWORD(v73) = 0;
  DgnArray<RuleDesc>::copyArraySlice((*a1 + 168 * a2 + 64), a3, 0, *(a3 + 2));
  if (*(a3 + 2))
  {
    v43 = 0;
    do
    {
      v44 = *a3;
      v45 = (*a3 + 12 * v43);
      v46 = *v45;
      if (*v45 == 4)
      {
        v59 = v45[2] & 0xFFFFFF | (*(a1 + 32) << 25);
        LODWORD(v79[0]) = v59;
        if (v77)
        {
          v60 = (-1640531527 * v59) >> -v77;
        }

        else
        {
          v60 = 0;
        }

        v61 = v78[v60];
        if (v61)
        {
          while (*(v61 + 2) != v59 || *(v61 + 3) != v59)
          {
            v61 = *v61;
            if (!v61)
            {
              goto LABEL_95;
            }
          }
        }

        else
        {
LABEL_95:
          HashKEV<unsigned int,unsigned int,CWIDScope>::add(v74, v79);
        }
      }

      else if (v46 == 2)
      {
        if (*(v45 + 4) == a2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2881, "voc/rulemgr", 11, "%d", a2);
          v44 = *a3;
        }

        v51 = *(v44 + 12 * v43 + 8);
        v52 = *a1;
        v53 = *a1 + 168 * a2;
        v54 = *(v53 + 120);
        if (!v54)
        {
          goto LABEL_97;
        }

        v55 = *(v53 + 112);
        v56 = *(v53 + 120);
        v57 = 0xFFFFFFFFLL;
        while (1)
        {
          v58 = *v55++;
          if (v58 == v51)
          {
            break;
          }

          --v57;
          if (!--v56)
          {
            goto LABEL_97;
          }
        }

        if (!v57)
        {
LABEL_97:
          if (v54 == *(v53 + 124))
          {
            DgnPrimArray<short>::reallocElts(v53 + 112, 1, 1);
            v54 = *(v53 + 120);
            v52 = *a1;
          }

          *(*(v53 + 112) + 2 * v54) = v51;
          *(v53 + 120) = v54 + 1;
          if (*(v52 + 168 * a2 + 104))
          {
            VocMgr::beginRuleStateRecursiveOperation(VocMgr::smpVocMgr);
            RuleMgr::verifyRuleNotRecursivelyIncluded(a1, v51, a2);
            VocMgr::endRuleStateRecursiveOperation(VocMgr::smpVocMgr);
          }

          RuleMgr::addIncludingRule(a1, v51, a2, 0);
        }
      }

      else if (v46 == 1)
      {
        v47 = *(*(a1 + 9) + 56);
        v48 = v45[2];
        if (!StateMgr::getLeftWBAllowed(v47, v48, 1) || !StateMgr::getRightWBAllowed(v47, v48, 1))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2869, "voc/rulemgr", 21, "%d %d", a2, v48);
        }

        if (!StateMgr::isStateInRule(v47, v48, a2))
        {
          StateMgr::includeStateInRule(v47, v48, a2);
          v49 = *a1 + 168 * a2;
          v50 = *(v49 + 144);
          if (v50 == *(v49 + 148))
          {
            DgnPrimArray<unsigned int>::reallocElts(v49 + 136, 1, 1);
            v50 = *(v49 + 144);
          }

          *(*(v49 + 136) + 4 * v50) = v48;
          ++*(v49 + 144);
        }
      }

      ++v43;
    }

    while (v43 < *(a3 + 2));
  }

  LODWORD(v73) = 0;
  if (HIDWORD(v73) < v75)
  {
    v79[0] = 0;
    HIDWORD(v73) = realloc_array(v72, v79, 4 * v75, 0, 0, 1) >> 2;
    v72 = v79[0];
  }

  v62 = v76;
  if (v76)
  {
    v63 = *v78;
    if (!*v78)
    {
      v64 = 0;
      while (v76 - 1 != v64)
      {
        v63 = v78[++v64];
        if (v63)
        {
          goto LABEL_113;
        }
      }

      v65 = v73;
      goto LABEL_127;
    }
  }

  else
  {
    v63 = 0;
  }

  LODWORD(v64) = 0;
LABEL_113:
  v65 = v73;
  while (v64 < v62)
  {
    v66 = *(v63 + 3);
    if (v65 == HIDWORD(v73))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v72, 1, 1);
      v65 = v73;
    }

    *(v72 + v65) = v66;
    v65 = v73 + 1;
    LODWORD(v73) = v73 + 1;
    v67 = *v63;
    v62 = v76;
    if (!*v63)
    {
      v64 = (v64 + 1);
      if (v64 >= v76)
      {
        v67 = v63;
      }

      else
      {
        v67 = v78[v64];
        if (!v67)
        {
          v68 = &v78[v64 + 1];
          v69 = ~v64 + v76;
          while (v69)
          {
            v70 = *v68++;
            v67 = v70;
            LODWORD(v64) = v64 + 1;
            --v69;
            if (v70)
            {
              goto LABEL_125;
            }
          }

          break;
        }
      }
    }

LABEL_125:
    v63 = v67;
  }

LABEL_127:
  if (v65)
  {
    v71 = 0;
    do
    {
      WordList::addIncludingRuleRef(*(*(a1 + 9) + 48), *(v72 + v71) & 0xFFFFFF);
      ++*(*a1 + 168 * a2 + 152);
      ++v71;
    }

    while (v71 < v73);
  }

  HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(v74);
  LODWORD(v73) = 0;
  RuleMgr::killStatesOfRule(a1, a2, 0);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v72);
  HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(v74);
}

void sub_26258CA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(va1);
  _Unwind_Resume(a1);
}

uLong RuleMgr::computeOneRuleIdNameChecksum(RuleMgr *this, unsigned int a2)
{
  v10 = a2;
  v4 = computeCRC32(0, 0, 0);
  v5 = *this + 168 * a2;
  if (*(v5 + 16))
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = &unk_26286C229;
  }

  v7 = strlen(v6);
  v8 = computeCRC32(v4, v6, v7);
  return computeCRC32(v8, &v10, 1);
}

uLong RuleMgr::computeRuleIdNameChecksum(uLong this)
{
  *(this + 44) = 0;
  v1 = *(this + 32);
  if (v1 >= 2)
  {
    v2 = this;
    v3 = 1;
    v4 = 296;
    do
    {
      if (*(*v2 + v4) == 1)
      {
        this = RuleMgr::computeOneRuleIdNameChecksum(v2, v3);
        *(v2 + 44) ^= this;
        v1 = *(v2 + 32);
      }

      ++v3;
      v4 += 168;
    }

    while (v3 < v1);
  }

  return this;
}

void (***RuleMgr::loadRuleMgr(RuleMgr *this, const char **a2, DFileChecksums *a3, int a4, BOOL *a5, unsigned int a6))(void)
{
  result = DFile::subFileExists(a2, 0x4Eu);
  if (!result)
  {
    return result;
  }

  *(this + 32) = a6;
  *(this + 9) = *(**VocMgr::smpVocMgr + 8 * a6);
  if (a4)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 866, "voc/rulemgr", 17, "%s", &unk_26286C229);
  }

  v24 = 0;
  v13 = 1;
  v14 = OpenAndReadMrecHeader(a2, 0x4Eu, 1, "MRRULE!?", &v24 + 1, &v24);
  v15 = v14;
  *(v14 + 35) = 0;
  v16 = v24;
  v17 = HIDWORD(v24) == 19 && v24 == 28;
  v18 = v17;
  if (v17)
  {
    *a5 = 1;
    *(v14 + 35) = 1;
    v19 = 19;
    v16 = 28;
  }

  else if (v24 == 0x160000001DLL)
  {
    *a5 = 1;
    *(v14 + 35) = 1;
    v19 = 22;
  }

  else
  {
    if (v24 == 0x180000001ELL)
    {
      *(v14 + 35) = 1;
    }

    else
    {
      if (v24 != 0x180000001FLL)
      {
        if (*(a2 + 6))
        {
          v20 = a2[2];
        }

        else
        {
          v20 = &unk_26286C229;
        }

        MrecHeaderCheckVersions(v20, "MRRULE!?", HIDWORD(v24), v24, 0x18u, 0x20u);
        v13 = 0;
        v16 = v24;
        v19 = HIDWORD(v24);
        goto LABEL_24;
      }

      v13 = 0;
      *(v14 + 35) = 1;
    }

    v19 = 24;
  }

LABEL_24:
  MrecHeaderCheckLatestVersionIfShared(a2, "MRRULE!?", v19, v16, 24, 32);
  v23 = 0;
  readObject<Rule>(v15, this, &v23);
  readObject<unsigned short>(v15, this + 16, &v23);
  readObject(v15, this + 16, &v23);
  readObject(v15, this + 9, &v23);
  if ((v18 & 1) == 0)
  {
    readObject(v15, this + 11, &v23);
  }

  if (*(v15 + 35) == 1)
  {
    v22 = 0;
    readObject(v15, &v22, &v23);
  }

  EnvMgr::loadEnvMgrFromStream(*(this + 10), a2, v15, &v23, 0);
  readObjectChecksumAndVerify(v15, v23);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 78, v23);
  result = DgnDelete<DgnStream>(v15);
  if ((v18 | v13) == 1)
  {
    return RuleMgr::computeRuleIdNameChecksum(this);
  }

  return result;
}

void readObject<Rule>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<Rule>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  v9 = v8;
  if (v6 >= v8)
  {
    if (v6 > v8)
    {
      v11 = v6 - v8;
      v12 = 168 * v8 + 160;
      do
      {
        v13 = (*a2 + v12);
        DgnString::DgnString((v13 - 38));
        *(v13 - 80) = 0;
        *(v13 - 36) = 0;
        *(v13 - 34) = 0;
        *(v13 - 8) = 0u;
        *(v13 - 7) = 0u;
        *(v13 - 6) = 0u;
        *(v13 - 5) = 0u;
        *(v13 - 4) = 0u;
        *(v13 - 3) = 0u;
        *(v13 - 33) = 0;
        *(v13 - 2) = 0;
        *(v13 - 1) = 0;
        *(v13 - 3) = 0;
        v12 += 168;
        *v13 = 65793;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v10 = 168 * v8 - 168;
    do
    {
      --v9;
      Rule::~Rule((*a2 + v10));
      v10 -= 168;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      Rule::readRule((*a2 + v14), a1, a3);
      ++v15;
      v14 += 168;
    }

    while (v15 < *(a2 + 8));
  }
}

void (***RuleMgr::saveRuleMgr(void (***this)(void), DFile *a2, DFileChecksums *a3, int a4, uint64_t a5))(void)
{
  v5 = this + 9;
  if (*(this + 9))
  {
    v6 = a5;
    v9 = this;
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 970, "voc/rulemgr", 16, "%s", &errStr_voc_rulemgr_E_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    v10 = OpenAndWriteMrecHeader(a2, 0x4Eu, v6, "MRRULE!?", 24, 32);
    v12 = 0;
    writeObject<Rule>(v10, v9, &v12);
    writeObject<unsigned short>(v10, (v9 + 2), &v12);
    writeObject(v10, v9 + 16, &v12);
    writeObject(v10, v5, &v12);
    writeObject(v10, v9 + 11, &v12);
    EnvMgr::saveEnvMgrToStream(v9[10], v10, &v12, 1, 0);
    writeObjectChecksum(v10, &v12);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 78, v12);
    return DgnDelete<DgnStream>(v10);
  }

  return this;
}

uint64_t writeObject<Rule>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, (*a2 + v7), a3);
      ++v8;
      v7 += 168;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void RuleMgr::printSize(RuleMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 997);
  if (v59)
  {
    v13 = v58;
  }

  else
  {
    v13 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26286C229, a3, &unk_26286C229, v13);
  DgnString::~DgnString(&v58);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26286C229);
  v15 = sizeObject<Rule>(this, 0);
  v16 = sizeObject<Rule>(this, 1);
  v17 = sizeObject<Rule>(this, 3);
  v18 = (a3 + 1);
  v55 = a3;
  v19 = (34 - a3);
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999);
  if (v59)
  {
    v21 = v58;
  }

  else
  {
    v21 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v18, &unk_26286C229, v19, v19, v21, v15, v16, v17);
  DgnString::~DgnString(&v58);
  *a4 += v15;
  *a5 += v16;
  *a6 += v17;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 12;
  }

  else
  {
    v22 = 16;
  }

  v23 = *(this + 6);
  v24 = *(this + 7);
  if (v24 >= v23)
  {
    v25 = 0;
    if (v23 > 0)
    {
      v22 += 2 * (v23 - 1) + 2;
    }

    v26 = v22 + 2 * (v24 - v23);
  }

  else
  {
    v25 = 2 * v23;
    v26 = v22;
  }

  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999);
  if (v59)
  {
    v28 = v58;
  }

  else
  {
    v28 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v18, &unk_26286C229, v19, v19, v28, v26, v22, v25);
  DgnString::~DgnString(&v58);
  *a4 += v26;
  *a5 += v22;
  *a6 += v25;
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999);
  if (v59)
  {
    v30 = v58;
  }

  else
  {
    v30 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v18, &unk_26286C229, v19, v19, v30, 2, 2, 0);
  DgnString::~DgnString(&v58);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999);
  if (v59)
  {
    v32 = v58;
  }

  else
  {
    v32 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v18, &unk_26286C229, v19, v19, v32, 4, 4, 0);
  DgnString::~DgnString(&v58);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999);
  if (v59)
  {
    v34 = v58;
  }

  else
  {
    v34 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v18, &unk_26286C229, v19, v19, v34, 2, 2, 0);
  DgnString::~DgnString(&v58);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 999);
  if (v59)
  {
    v36 = v58;
  }

  else
  {
    v36 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v18, &unk_26286C229, v19, v19, v36, 4, 4, 0);
  DgnString::~DgnString(&v58);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 1000);
  if (v59)
  {
    v38 = v58;
  }

  else
  {
    v38 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v18, &unk_26286C229, v19, v19, v38, 2, 2, 0);
  DgnString::~DgnString(&v58);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 4;
  }

  else
  {
    v39 = 8;
  }

  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 1001);
  if (v59)
  {
    v41 = v58;
  }

  else
  {
    v41 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v18, &unk_26286C229, v19, v19, v41, v39, v39, 0);
  DgnString::~DgnString(&v58);
  *a4 += v39;
  *a5 += v39;
  v42 = *(this + 10);
  if (v42)
  {
    v57 = 0;
    v58 = 0;
    v56 = 0;
    EnvMgr::printSize(v42, 0xFFFFFFFFLL, v18, &v58, &v57, &v56);
    *a4 += v58;
    *a5 += v57;
    *a6 += v56;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 4;
  }

  else
  {
    v43 = 8;
  }

  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 1003);
  if (v59)
  {
    v45 = v58;
  }

  else
  {
    v45 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v18, &unk_26286C229, v19, v19, v45, v43, v43, 0);
  DgnString::~DgnString(&v58);
  *a4 += v43;
  *a5 += v43;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v46 = *(this + 14);
    v47 = *(this + 15);
    if (v47 >= v46)
    {
      v48 = 0;
      if (v46 <= 0)
      {
        v49 = 16;
      }

      else
      {
        v49 = 2 * (v46 - 1) + 18;
      }

      v50 = v49 + 2 * (v47 - v46);
    }

    else
    {
      v48 = 2 * v46;
      v49 = 16;
      v50 = 16;
    }

    getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 1009);
    if (v59)
    {
      v52 = v58;
    }

    else
    {
      v52 = &unk_26286C229;
    }

    xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v18, &unk_26286C229, v19, v19, v52, v50, v49, v48);
    DgnString::~DgnString(&v58);
    *a4 += v50;
    *a5 += v49;
    *a6 += v48;
  }

  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 1011);
  if (v59)
  {
    v54 = v58;
  }

  else
  {
    v54 = &unk_26286C229;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v55, &unk_26286C229, (35 - v55), (35 - v55), v54, *a4, *a5, *a6);
  DgnString::~DgnString(&v58);
}

void sub_26258D7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<Rule>(uint64_t a1, uint64_t a2)
{
  DgnString::DgnString(v10);
  v4 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  v9 = 0;
  v10[2] = 0;
  v10[4] = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = 65793;
  if (a2 != 3)
  {
    v4 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v5 = *(a1 + 8);
      if (v5 >= 1)
      {
        v6 = v5 + 1;
        v7 = 168 * v5 - 168;
        do
        {
          v4 += sizeObject(*a1 + v7, a2);
          --v6;
          v7 -= 168;
        }

        while (v6 > 1);
      }

      if (!a2)
      {
        v4 += 168 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  Rule::~Rule(&v9);
  return v4;
}

void sub_26258D930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  Rule::~Rule(va);
  _Unwind_Resume(a1);
}

uint64_t RuleMgr::verifyRule(RuleMgr *this, unsigned int a2, int a3)
{
  if (a2 && *(this + 2) > a2)
  {
    v3 = *(*this + 168 * a2 + 128);
    if (v3)
    {
      return v3 & 1;
    }
  }

  else
  {
    v3 = 0;
  }

  if (a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 3288, "voc/rulemgr", 1, "%d", a2);
  }

  return v3 & 1;
}

RuleMgr *RuleMgr::addBuiltRef(RuleMgr *this, unsigned int a2, int a3)
{
  v3 = *this;
  v4 = *this + 168 * a2;
  if (*(v4 + 120))
  {
    v6 = this;
    v7 = 0;
    v8 = (v4 + 112);
    do
    {
      v10 = *(*v8 + 2 * v7);
      v11 = v3 + 168 * *(*v8 + 2 * v7);
      v13 = *(v11 + 130);
      v12 = (v11 + 130);
      if ((v13 & 1) == 0)
      {
        *v12 = 1;
        this = RuleMgr::addBuiltRef(v6, v10, a3 + 1);
        v3 = *v6;
      }

      ++v7;
      v14 = v3 + 168 * a2;
      v8 = (v14 + 112);
    }

    while (v7 < *(v14 + 120));
  }

  return this;
}

RuleMgr *RuleMgr::removeBuiltRef(RuleMgr *this, unsigned int a2, int a3)
{
  v3 = *this;
  v4 = *this + 168 * a2;
  if (*(v4 + 120))
  {
    v6 = this;
    v7 = 0;
    v8 = (v4 + 112);
    do
    {
      v10 = *(*v8 + 2 * v7);
      v11 = v3 + 168 * *(*v8 + 2 * v7);
      if (*(v11 + 130) == 1)
      {
        v12 = *(v11 + 104);
        if (!v12)
        {
          goto LABEL_12;
        }

        v13 = *(v11 + 96);
        if ((*(v3 + 168 * *v13 + 130) & 1) == 0 && (*(v3 + 168 * *v13 + 129) & 1) == 0)
        {
          v14 = 1;
          do
          {
            v15 = v14;
            if (v12 == v14)
            {
              break;
            }

            v16 = v13[v14];
            if (*(v3 + 168 * v13[v15] + 130))
            {
              break;
            }

            v17 = *(v3 + 168 * v16 + 129);
            v14 = v15 + 1;
          }

          while (v17 != 1);
          if (v15 >= v12)
          {
LABEL_12:
            *(v11 + 130) = 0;
            this = RuleMgr::removeBuiltRef(v6, v10, a3 + 1);
            v3 = *v6;
          }
        }
      }

      ++v7;
      v18 = v3 + 168 * a2;
      v8 = (v18 + 112);
    }

    while (v7 < *(v18 + 120));
  }

  return this;
}

RuleMgr *RuleMgr::removeIncludingRule(RuleMgr *this, unsigned int a2, int a3, int a4)
{
  v4 = *this;
  v5 = *this + 168 * a2;
  v6 = *(v5 + 104);
  if (!v6)
  {
    v10 = *(v5 + 130);
    v9 = (v5 + 130);
    if ((v10 & 1) == 0)
    {
      return this;
    }

    v11 = v9;
LABEL_19:
    *v11 = 0;
    return RuleMgr::removeBuiltRef(this, a2, a4 + 1);
  }

  v7 = *(v5 + 104);
  v8 = *(v5 + 96);
  while (*v8 != a3)
  {
    ++v8;
    if (!--v7)
    {
      goto LABEL_9;
    }
  }

  *v8 = *(*(v5 + 96) + 2 * --v6);
  *(v5 + 104) = v6;
LABEL_9:
  v11 = (v5 + 130);
  if (*(v5 + 130))
  {
    if (!v6)
    {
      goto LABEL_19;
    }

    v12 = *(v5 + 96);
    if ((*(v4 + 168 * *v12 + 130) & 1) == 0 && (*(v4 + 168 * *v12 + 129) & 1) == 0)
    {
      v13 = 1;
      do
      {
        v14 = v13;
        if (v6 == v13)
        {
          break;
        }

        v15 = v12[v13];
        if (*(v4 + 168 * v12[v14] + 130))
        {
          break;
        }

        v16 = *(v4 + 168 * v15 + 129);
        v13 = v14 + 1;
      }

      while (v16 != 1);
      if (v14 >= v6)
      {
        goto LABEL_19;
      }
    }
  }

  return this;
}

RuleMgr *RuleMgr::addIncludingRule(RuleMgr *this, unsigned int a2, unsigned int a3, int a4)
{
  v7 = this;
  v8 = *this;
  v10 = *this + 168 * a2;
  v11 = *(v10 + 104);
  if (v11 == *(v10 + 108))
  {
    this = DgnPrimArray<short>::reallocElts(v10 + 96, 1, 1);
    v11 = *(v10 + 104);
    v8 = *v7;
  }

  *(*(v10 + 96) + 2 * v11) = a3;
  *(v10 + 104) = v11 + 1;
  v12 = v8 + 168 * a2;
  v14 = *(v12 + 130);
  v13 = (v12 + 130);
  if ((v14 & 1) == 0 && *(v8 + 168 * a3 + 130) == 1)
  {
    *v13 = 1;

    return RuleMgr::addBuiltRef(v7, a2, a4 + 1);
  }

  return this;
}

RuleMgr *RuleMgr::killStatesOfRule(RuleMgr *this, unsigned int a2, int a3)
{
  if (*(*this + 168 * a2 + 130) == 1)
  {
    v7 = *this + 168 * a2;
    if (*(v7 + 104))
    {
      v8 = 0;
      v9 = (v7 + 96);
      do
      {
        RuleMgr::killStatesOfRule(this, *(*v9 + 2 * v8++), a3 + 1);
        v10 = *this + 168 * a2;
        v9 = (v10 + 96);
      }

      while (v8 < *(v10 + 104));
    }
  }

  result = RuleMgr::verifyRule(this, a2, 1);
  v12 = *this;
  if (*(*this + 168 * a2 + 129) == 1)
  {
    v13 = v12 + 168 * a2;
    v14 = v13 + 80;
    v15 = *(v13 + 88);
    if (v15 <= 0xE)
    {
      if (!v15)
      {
LABEL_15:
        if (*v14)
        {
          MemChunkFree(*v14, 0);
          *v14 = 0;
          v12 = *this;
        }

        *(v14 + 8) = 0;
        v21 = v12 + 168 * a2;
        v24 = *(v21 + 32);
        v23 = (v21 + 32);
        v22 = v24;
        if (v24)
        {
          MemChunkFree(v22, 0);
          *v23 = 0;
          v12 = *this;
        }

        v23[1] = 0;
        DgnArray<DgnArray<ParseToken>>::releaseAll(v12 + 168 * a2 + 48);
        *(*this + 168 * a2 + 129) = 0;

        return RuleMgr::removeBuiltRef(this, a2, a3 + 1);
      }

      v17 = 0;
      do
      {
        StateMgr::setEmptyStateTransition(*(*(this + 9) + 56), *(*v14 + 4 * v17++), 0);
        v12 = *this;
        v18 = *this + 168 * a2;
        v14 = v18 + 80;
        v16 = *(v18 + 88);
      }

      while (v17 < v16);
    }

    else
    {
      StateMgr::fastEmptyTransitionsForKill(*(*(this + 9) + 56), v14);
      v12 = *this;
      LODWORD(v16) = *(*this + 168 * a2 + 88);
    }

    v14 = v12 + 168 * a2 + 80;
    if (v16)
    {
      v19 = 0;
      do
      {
        StateMgr::killState(*(*(this + 9) + 56), *(*v14 + 4 * v19++), 0);
        v12 = *this;
        v20 = *this + 168 * a2;
        v14 = v20 + 80;
      }

      while (v19 < *(v20 + 88));
    }

    goto LABEL_15;
  }

  return result;
}

RuleMgr *RuleMgr::invalidateAllStates(RuleMgr *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v2 = this;
    for (i = 0; i < v1; ++i)
    {
      if (*(*v2 + 168 * i + 128))
      {
        this = RuleMgr::killStatesOfRule(v2, i, 0);
        v1 = *(v2 + 2);
      }
    }
  }

  return this;
}

void RuleMgr::preAllocToEnsureRuleId(RuleMgr *this, unsigned int a2)
{
  *(this + 20) = a2 - 1;
  v4 = *(this + 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    DgnArray<Rule>::reallocElts(this, v6, 0);
  }

  v7 = *(this + 2);
  if (a2 >= v7)
  {
    if (a2 > v7)
    {
      v9 = a2 - v7;
      v10 = 168 * v7 + 160;
      do
      {
        v11 = (*this + v10);
        DgnString::DgnString((v11 - 38));
        *(v11 - 80) = 0;
        *(v11 - 36) = 0;
        *(v11 - 34) = 0;
        *(v11 - 8) = 0u;
        *(v11 - 7) = 0u;
        *(v11 - 6) = 0u;
        *(v11 - 5) = 0u;
        *(v11 - 4) = 0u;
        *(v11 - 3) = 0u;
        *(v11 - 33) = 0;
        *(v11 - 2) = 0;
        *(v11 - 1) = 0;
        *(v11 - 3) = 0;
        v10 += 168;
        *v11 = 65793;
        --v9;
      }

      while (v9);
    }
  }

  else if (v7 > a2)
  {
    v8 = 168 * v7 - 168;
    do
    {
      --v7;
      Rule::~Rule((*this + v8));
      v8 -= 168;
    }

    while (v7 > a2);
  }

  *(this + 2) = a2;
  *(this + 16) = a2;
  if (a2 >= 2)
  {
    v12 = *(this + 6);
    v13 = 1;
    do
    {
      if (v12 == *(this + 7))
      {
        DgnPrimArray<short>::reallocElts(this + 16, 1, 1);
        v12 = *(this + 6);
      }

      *(*(this + 2) + 2 * v12++) = v13;
      *(this + 6) = v12;
      ++v13;
    }

    while (v13 < *(this + 16));
  }
}

uint64_t RuleMgr::newRule(RuleMgr *this, unsigned int a2, uint64_t a3)
{
  if (*(this + 16) <= a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2553, "voc/rulemgr", 19, "%u %u", *(this + 16), a3);
  }

  v6 = *(this + 6);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = 0;
  while (*(*(this + 2) + 2 * v7) != a3)
  {
    if (v6 == ++v7)
    {
      goto LABEL_9;
    }
  }

  if ((v7 & 0x80000000) != 0)
  {
LABEL_9:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2555, "voc/rulemgr", 20, "%u", a3);
  }

  StateMgr::verifyStateFull(*(*(this + 9) + 56), a2, 1, 1);
  v8 = *(this + 6);
  if (v8)
  {
    v9 = *(this + 6);
    v10 = *(this + 2);
    while (*v10 != a3)
    {
      ++v10;
      if (!--v9)
      {
        goto LABEL_16;
      }
    }

    v11 = v8 - 1;
    *v10 = *(*(this + 2) + 2 * v11);
    *(this + 6) = v11;
  }

LABEL_16:
  DgnString::DgnString(v14);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v16 = 0u;
  v15 = 0u;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v24 = 65793;
  v13 = a3;
  v14[2] = 0;
  v14[4] = a2;
  StateMgr::addChildRule(*(*(this + 9) + 56), a2, a3);
  v20[16] = 1;
  ++*(this + 9);
  Rule::operator=(*this + 168 * a3, &v13);
  *(this + 11) ^= RuleMgr::computeOneRuleIdNameChecksum(this, a3);
  Rule::~Rule(&v13);
  return a3;
}

void sub_26258E424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  Rule::~Rule(va);
  _Unwind_Resume(a1);
}

uint64_t *RuleMgr::verifyRuleNotRecursivelyIncluded(uint64_t *this, unsigned int a2, int a3)
{
  v3 = *this;
  v4 = *this + 168 * a2;
  v6 = *(v4 + 163);
  v5 = (v4 + 163);
  if ((v6 & 1) == 0)
  {
    v9 = this;
    *v5 = 1;
    v11 = *(this + 14);
    if (v11 == *(this + 15))
    {
      this = DgnPrimArray<short>::reallocElts((this + 6), 1, 1);
      v11 = *(v9 + 56);
      v3 = *v9;
    }

    *(*(v9 + 48) + 2 * v11) = a2;
    *(v9 + 56) = v11 + 1;
    v12 = v3 + 168 * a2;
    if (*(v12 + 120))
    {
      v13 = 0;
      v14 = (v12 + 112);
      do
      {
        if (*(*v14 + 2 * v13) == a3)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2637, "voc/rulemgr", 13, "%d %d %d %d", a3, *(v9 + 64), a2, *(v9 + 64));
          v3 = *v9;
        }

        this = RuleMgr::verifyRuleNotRecursivelyIncluded(*(*(v9 + 72) + 64), *(*(v3 + 168 * a2 + 112) + 2 * v13++), a3);
        v3 = *v9;
        v15 = *v9 + 168 * a2;
        v14 = (v15 + 112);
      }

      while (v13 < *(v15 + 120));
    }
  }

  return this;
}

unsigned __int16 *RuleMgr::endUsingTempMarks(RuleMgr *this)
{
  v2 = *(this + 14);
  result = *(this + 6);
  if (v2)
  {
    v4 = *this;
    v5 = result;
    do
    {
      v6 = *v5++;
      *(v4 + 168 * v6 + 163) = 0;
      --v2;
    }

    while (v2);
    goto LABEL_6;
  }

  if (result)
  {
LABEL_6:
    result = MemChunkFree(result, 0);
    *(this + 6) = 0;
  }

  *(this + 7) = 0;
  return result;
}

RuleMgr *RuleMgr::verifyNewDesc(RuleMgr *result, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v3 = result;
    if (**a2 != 3)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2709, "voc/rulemgr", 8, "%s", &errStr_voc_rulemgr_E_NO_START_TOKEN);
    }

    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    DgnPrimArray<unsigned int>::reallocElts(&v17, 1, 1);
    v4 = v18;
    *(v17 + v18) = 0;
    LODWORD(v18) = v4 + 1;
    DgnPrimArray<unsigned int>::reallocElts(&v15, 1, 1);
    *(v15 + v16) = 0;
    LODWORD(v16) = v16 + 1;
    if (*(a2 + 8))
    {
      v5 = 0;
      v6 = 2;
      do
      {
        v7 = *a2;
        v8 = *(*a2 + v6 * 4 - 8);
        if (v8 <= 1)
        {
          if (!v8)
          {
            v13 = (v18 - 1);
            if (v18 == 1)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2724, "voc/rulemgr", 7, "%s", &errStr_voc_rulemgr_E_COUNT_MISMATCH);
              v7 = *a2;
            }

            v14 = v7[v6];
            if (v14 != *(v17 + v13))
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2726, "voc/rulemgr", 6, "%s", &errStr_voc_rulemgr_E_TYPE_MISMATCH);
              v14 = *(*a2 + v6 * 4);
            }

            if ((v14 & 0xFFFFFFFE) == 2 && *(v15 + v13) != 1)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2732, "voc/rulemgr", 9, "%s", &errStr_voc_rulemgr_E_SINGLE_IN_REPEAT_OR_OPTIONAL);
            }

            if (HIDWORD(v16) < v13)
            {
              v19 = 0;
              HIDWORD(v16) = realloc_array(v15, &v19, 4 * v13, 4 * v16, 4 * v16, 1) >> 2;
              v15 = v19;
            }

            LODWORD(v16) = v13;
            if (HIDWORD(v18) < v13)
            {
              v19 = 0;
              HIDWORD(v18) = realloc_array(v17, &v19, 4 * v13, 4 * v18, 4 * v18, 1) >> 2;
              v17 = v19;
            }

            LODWORD(v18) = v13;
            goto LABEL_35;
          }

          if (v8 == 1)
          {
            StateMgr::verifyState(*(*(v3 + 9) + 56), v7[v6]);
            goto LABEL_17;
          }
        }

        else
        {
          switch(v8)
          {
            case 2:
              RuleMgr::verifyRule(v3, LOWORD(v7[v6]), 1);
              goto LABEL_17;
            case 3:
              v9 = v7[v6];
              v10 = v18;
              if (v18 == HIDWORD(v18))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v17, 1, 1);
                v10 = v18;
              }

              *(v17 + v10) = v9;
              LODWORD(v18) = v10 + 1;
              v11 = v15;
              ++*(v15 + (v16 - 1));
              v12 = v16;
              if (v16 == HIDWORD(v16))
              {
                DgnPrimArray<unsigned int>::reallocElts(&v15, 1, 1);
                v12 = v16;
                v11 = v15;
              }

              v11[v12] = 0;
              LODWORD(v16) = v16 + 1;
              break;
            case 4:
              WordList::verifyVisible(*(*(v3 + 9) + 48), v7[v6]);
LABEL_17:
              ++*(v15 + (v16 - 1));
              break;
          }
        }

LABEL_35:
        ++v5;
        v6 += 3;
      }

      while (v5 < *(a2 + 8));
    }

    if (v18 != 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2773, "voc/rulemgr", 7, "%s", &errStr_voc_rulemgr_E_COUNT_MISMATCH);
    }

    if (*v15 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2774, "voc/rulemgr", 10, "%s", &errStr_voc_rulemgr_E_SINGLE_IN_RULE);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  }

  return result;
}

void sub_26258EA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

unint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::add(unint64_t result, int *a2)
{
  v3 = result;
  v4 = *(result + 12);
  if (*(result + 8) >= v4 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v4);
  }

  v5 = *a2;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = (-1640531527 * *a2) >> -v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v3 + 80);
  v9 = *(v3 + 32);
  if (!v9)
  {
    result = DgnPool::addChunk((v3 + 24));
    v9 = *(v3 + 32);
  }

  v10 = (v8 + 8 * v7);
  *(v3 + 32) = *v9;
  *(v9 + 8) = 0;
  v11 = *a2;
  *(v9 + 8) = v5;
  *(v9 + 12) = v11;
  ++*(v3 + 8);
  if (*(v3 + 20))
  {
    *v9 = *v10;
  }

  else
  {
    *v9 = 0;
    v12 = *v10;
    if (*v10)
    {
      do
      {
        v10 = v12;
        v12 = *v12;
      }

      while (v12);
    }
  }

  *v10 = v9;
  return result;
}

uint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 12);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t RuleMgr::getHandle(RuleMgr *this, unsigned int a2, const char *a3)
{
  v6 = *(*(this + 9) + 56);
  StateMgr::verifyStateFull(v6, a2, 1, 1);
  ChildRules = StateMgr::getChildRules(v6, a2);
  if (!StateMgr::getChildRuleCount(v6, a2))
  {
    return 0;
  }

  v8 = 0;
  while (1)
  {
    v9 = *(*ChildRules + 2 * v8);
    v10 = *this + 168 * v9;
    v11 = *(v10 + 16);
    v12 = *(v10 + 8);
    v13 = (v11 ? v12 : &unk_26286C229);
    if (*v13 && !strcmp(v13, a3))
    {
      break;
    }

    if (++v8 >= StateMgr::getChildRuleCount(v6, a2))
    {
      return 0;
    }
  }

  return v9;
}

uLong RuleMgr::setName(RuleMgr *this, unsigned int a2, char *a3)
{
  RuleMgr::verifyRule(this, a2, 1);
  RuleMgr::verifyRule(this, a2, 1);
  v6 = *(*this + 168 * a2 + 24);
  result = RuleMgr::getHandle(this, v6, a3);
  if (result != a2)
  {
    if (result)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/rulemgr.cpp", 2965, "voc/rulemgr", 2, "%d", v6);
    }

    *(this + 11) ^= RuleMgr::computeOneRuleIdNameChecksum(this, a2);
    DgnString::operator=((*this + 168 * a2 + 8), a3);
    result = RuleMgr::computeOneRuleIdNameChecksum(this, a2);
    *(this + 11) ^= result;
  }

  return result;
}

void *RuleMgr::getName(RuleMgr *this, unsigned int a2)
{
  RuleMgr::verifyRule(this, a2, 1);
  v4 = *this + 168 * a2;
  if (*(v4 + 16))
  {
    return *(v4 + 8);
  }

  else
  {
    return &unk_26286C229;
  }
}

RuleMgr *RuleMgr::setLMAllowed(RuleMgr *this, unsigned int a2, char a3)
{
  RuleMgr::verifyRule(this, a2, 1);
  *(*this + 168 * a2 + 160) = a3;

  return RuleMgr::killStatesOfRule(this, a2, 0);
}

RuleMgr *RuleMgr::setCoartAllowed(RuleMgr *this, unsigned int a2, char a3)
{
  RuleMgr::verifyRule(this, a2, 1);
  *(*this + 168 * a2 + 161) = a3;

  return RuleMgr::killStatesOfRule(this, a2, 0);
}

RuleMgr *RuleMgr::setPrefilteringAllowed(RuleMgr *this, unsigned int a2, char a3)
{
  RuleMgr::verifyRule(this, a2, 1);
  *(*this + 168 * a2 + 162) = a3;

  return RuleMgr::killStatesOfRule(this, a2, 0);
}

void RuleMgr::fixAlteredState(RuleMgr *this, unsigned int a2, unsigned int a3)
{
  if (*(*this + 168 * a2 + 130) == 1)
  {
    v7 = *this + 168 * a2;
    if (*(v7 + 104))
    {
      v8 = 0;
      v9 = (v7 + 96);
      do
      {
        RuleMgr::fixAlteredState(this, *(*v9 + 2 * v8++), a3);
        v10 = *this + 168 * a2;
        v9 = (v10 + 96);
      }

      while (v8 < *(v10 + 104));
    }
  }

  RuleMgr::verifyRule(this, a2, 1);
  v11 = *this;
  if (*(*this + 168 * a2 + 129) == 1)
  {
    v12 = v11 + 168 * a2;
    if (*(v12 + 88))
    {
      v13 = 0;
      v14 = *(*(this + 9) + 56);
      v15 = (v12 + 80);
      do
      {
        v16 = *(*v15 + 4 * v13);
        if (*(*(v14 + 8) + 4 * v16) == a3)
        {
          StateMgr::setStateCharacteristicsForRuleState(v14, v16, a3);
          v11 = *this;
        }

        ++v13;
        v17 = v11 + 168 * a2;
        v15 = (v17 + 80);
      }

      while (v13 < *(v17 + 88));
    }
  }
}

void RuleMgr::alteredStateInRule(RuleMgr *this, unsigned int a2)
{
  IncludingRules = StateMgr::getIncludingRules(*(*(this + 9) + 56), a2);
  if (*(IncludingRules + 8))
  {
    v5 = IncludingRules;
    v6 = 0;
    do
    {
      RuleMgr::fixAlteredState(this, *(*v5 + 2 * v6++), a2);
    }

    while (v6 < *(v5 + 8));
  }
}

uint64_t DgnArray<DgnArray<ParseToken>>::copyArraySlice(uint64_t result, void *a2, unsigned int a3, int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      result = DgnIArray<Utterance *>::~DgnIArray(*v7 + v9);
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
    result = DgnArray<ParseToken>::copyArraySlice(v15, v14, 0, *(v14 + 8));
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
        result = DgnIArray<Utterance *>::~DgnIArray(*v7 + v17);
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

uint64_t *DgnArray<RuleDesc>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 2) = 0;
  v8 = *(result + 3);
  if (a4 <= v8)
  {
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnArray<RuleDesc>::reallocElts(result, a4 - v8, 0);
  }

  v9 = *(v7 + 2);
  v10 = a4;
  do
  {
    v11 = *a2 + 12 * a3;
    v12 = *v7 + 12 * v9;
    *v12 = *v11;
    *(v12 + 8) = *(v11 + 8);
    v9 = *(v7 + 2) + 1;
    *(v7 + 2) = v9;
    ++a3;
    --v10;
  }

  while (v10);
LABEL_6:
  *(v7 + 2) = a4;
  return result;
}

uint64_t *DgnArray<RuleDesc>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 12 * v6, 12 * v5, 12 * v5, 1);
  *(a1 + 12) = result / 0xC;
  *a1 = v8;
  return result;
}

uint64_t *DgnPrimArray<unsigned short>::copyArraySlice(uint64_t *result, uint64_t *a2, unsigned int a3, unsigned int a4)
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
    result = DgnPrimArray<short>::reallocElts(result, a4 - v8, 0);
    *(v7 + 2) = a4;
  }

  v9 = *a2;
  v10 = *v7;
  v11 = a4;
  do
  {
    *v10++ = *(v9 + 2 * a3++);
    --v11;
  }

  while (v11);
  return result;
}

BOOL DgnArray<ParseToken>::operator==(uint64_t a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 8);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  v3 = *a2;
  v4 = v2 + 1;
  v5 = 4 * v2 - 2;
  do
  {
    v6 = --v4 < 1;
    if (v4 < 1)
    {
      break;
    }

    if (__PAIR64__(*(*a1 + v5 - 1), *(*a1 + v5 - 2)) != __PAIR64__(*(v3 + v5 - 1), *(v3 + v5 - 2)))
    {
      break;
    }

    v7 = *(*a1 + v5);
    v8 = *(v3 + v5);
    v5 -= 4;
  }

  while (v7 == v8);
  return v6;
}

uint64_t readObject<ParseToken>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = 0;
  result = readObject(a1, &v11, a3);
  v7 = v11;
  v8 = *(a2 + 12);
  if (v11 <= v8)
  {
    *(a2 + 8) = v11;
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v11 - v8, 0);
    *(a2 + 8) = v7;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    result = readObject(a1, *a2 + v9, a3);
    ++v10;
    v9 += 4;
  }

  while (v10 < *(a2 + 8));
  return result;
}

uint64_t writeObject<ParseToken>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, (*a2 + v7), a3);
      ++v8;
      v7 += 4;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t sizeObject<ParseToken>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sizeObject(v11, 2);
  if (v2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  if ((v2 & 0xFFFFFFFE) != 2)
  {
    v6 = v4;
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      v9 = 4 * v7 - 4;
      do
      {
        v5 += sizeObject(*a1 + v9, v2);
        --v8;
        v9 -= 4;
      }

      while (v8 > 1);
    }

    if (!v2)
    {
      v5 += v6 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v5;
}

void *DgnArray<Rule>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 168 * v2 - 168;
    do
    {
      Rule::~Rule((*a1 + v3));
      v3 -= 168;
    }

    while (v3 != -168);
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

uint64_t *DgnArray<Rule>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 168 * v6, 168 * v5, 168 * v5, 1);
  *(a1 + 12) = result / 0xA8;
  *a1 = v8;
  return result;
}

uint64_t *DgnArray<ParseToken>::copyArraySlice(uint64_t *result, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 2) = 0;
  v8 = *(result + 3);
  if (a4 <= v8)
  {
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result, a4 - v8, 0);
  }

  v9 = *a2;
  v10 = *v7;
  v11 = a4;
  v12 = *(v7 + 2);
  do
  {
    *(v10 + 4 * v12++) = *(v9 + 4 * a3++);
    --v11;
  }

  while (v11);
LABEL_6:
  *(v7 + 2) = a4;
  return result;
}

uint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523A28;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 12;
  }

  else
  {
    v7 = 16;
  }

  *(a1 + 24) = 16;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26258F83C(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(uint64_t a1)
{
  HashKEV<unsigned int,unsigned int,CWIDScope>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287523A28;
  if (*(a1 + 8))
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::computeDepth(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  result = 0;
  v5 = *(a1 + 80);
  do
  {
    v6 = *(v5 + 8 * v3);
    if (v6)
    {
      v7 = 0;
      do
      {
        v6 = *v6;
        ++v7;
      }

      while (v6);
      if (v7 <= result)
      {
        result = result;
      }

      else
      {
        result = v7;
      }
    }

    ++v3;
  }

  while (v3 != v1);
  return result;
}

uint64_t *HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 3);
  v3 = *(result + 22);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    result = MemChunkAlloc(8 * v2, 0);
    v1[10] = result;
    *(v1 + 22) = v2;
    v3 = v2;
  }

  else if (!v3)
  {
    return result;
  }

  v5 = 0;
  v6 = 8 * v3;
  do
  {
    *(v1[10] + v5) = 0;
    v5 += 8;
  }

  while (v6 != v5);
  return result;
}

uint64_t HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(uint64_t a1, int a2)
{
  v17 = 0;
  RoundUpToPowerOf2(a2, &v17);
  v15 = 0;
  v16 = 0;
  DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice(&v15, (a1 + 80), 0, *(a1 + 88));
  v4 = *(a1 + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  v5 = v17;
  *(a1 + 12) = a2;
  *(a1 + 16) = v5;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  v6 = v16;
  if (v16)
  {
    v7 = 0;
    v8 = v17;
    v9 = 32 - v17;
    do
    {
      v10 = *(v15 + 8 * v7);
      if (v10)
      {
        do
        {
          v11 = *v10;
          v12 = (-1640531527 * *(v10 + 2)) >> v9;
          if (!v8)
          {
            v12 = 0;
          }

          v13 = *(a1 + 80);
          *v10 = *(v13 + 8 * v12);
          *(v13 + 8 * v12) = v10;
          v10 = v11;
        }

        while (v11);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v15);
}

void sub_26258FABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t *DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  if (!a4 || *(result + 2))
  {
    if (!a4)
    {
      return result;
    }
  }

  else
  {
    result = MemChunkAlloc(8 * a4, 0);
    *v7 = result;
    *(v7 + 8) = a4;
  }

  v8 = 0;
  v9 = a4;
  do
  {
    *(*v7 + v8) = *(*a2 + 8 * a3++);
    v8 += 8;
    --v9;
  }

  while (v9);
  return result;
}

void PhnMgr::PhnMgr(PhnMgr *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  v2 = (this + 8);
  DgnString::DgnString((this + 24));
  DgnString::DgnString((this + 40));
  *this = 0;
  v3 = *(this + 4);
  if (v3 >= 1)
  {
    v4 = 16 * v3 - 16;
    do
    {
      DgnString::~DgnString(*v2 + v4);
      v4 -= 16;
    }

    while (v4 != -16);
  }

  *(this + 4) = 0;
  *(this + 30) = -1;
  *(this + 14) = -1;
}

void sub_26258FBDC(_Unwind_Exception *a1)
{
  DgnString::~DgnString(v1 + 16);
  DgnArray<DgnString>::releaseAll(v1);
  _Unwind_Resume(a1);
}

void PhnMgr::~PhnMgr(PhnMgr *this)
{
  DgnString::~DgnString(this + 40);
  DgnString::~DgnString(this + 24);
  DgnArray<DgnString>::releaseAll(this + 8);
}

void PhnMgr::printSize(PhnMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 112);
  if (v44)
  {
    v13 = v43;
  }

  else
  {
    v13 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26286C2BC, a3, &unk_26286C2BC, v13);
  DgnString::~DgnString(&v43);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26286C2BC);
  v15 = (a3 + 1);
  v42 = a3;
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114);
  if (v44)
  {
    v18 = v43;
  }

  else
  {
    v18 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, v15, &unk_26286C2BC, v16, v16, v18, 4, 4, 0);
  DgnString::~DgnString(&v43);
  *a4 += 4;
  *a5 += 4;
  v19 = sizeObject<DgnString>(this + 8, 0);
  v20 = sizeObject<DgnString>(this + 8, 1);
  v21 = sizeObject<DgnString>(this + 8, 3);
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114);
  if (v44)
  {
    v23 = v43;
  }

  else
  {
    v23 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, v15, &unk_26286C2BC, v16, v16, v23, v19, v20, v21);
  DgnString::~DgnString(&v43);
  *a4 += v19;
  *a5 += v20;
  *a6 += v21;
  v24 = sizeObject(this + 24, 0);
  v25 = sizeObject(this + 24, 1);
  v26 = sizeObject(this + 24, 3);
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114);
  if (v44)
  {
    v28 = v43;
  }

  else
  {
    v28 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v15, &unk_26286C2BC, v16, v16, v28, v24, v25, v26);
  DgnString::~DgnString(&v43);
  *a4 += v24;
  *a5 += v25;
  *a6 += v26;
  v29 = sizeObject(this + 40, 0);
  v30 = sizeObject(this + 40, 1);
  v31 = sizeObject(this + 40, 3);
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114);
  if (v44)
  {
    v33 = v43;
  }

  else
  {
    v33 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v15, &unk_26286C2BC, v16, v16, v33, v29, v30, v31);
  DgnString::~DgnString(&v43);
  *a4 += v29;
  *a5 += v30;
  *a6 += v31;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114);
  if (v44)
  {
    v35 = v43;
  }

  else
  {
    v35 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v15, &unk_26286C2BC, v16, v16, v35, 2, 2, 0);
  DgnString::~DgnString(&v43);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114);
  if (v44)
  {
    v37 = v43;
  }

  else
  {
    v37 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v15, &unk_26286C2BC, v16, v16, v37, 2, 2, 0);
  DgnString::~DgnString(&v43);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 114);
  if (v44)
  {
    v39 = v43;
  }

  else
  {
    v39 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v15, &unk_26286C2BC, v16, v16, v39, 2, 2, 0);
  DgnString::~DgnString(&v43);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v43, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 116);
  if (v44)
  {
    v41 = v43;
  }

  else
  {
    v41 = &unk_26286C2BC;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v42, &unk_26286C2BC, (35 - v42), (35 - v42), v41, *a4, *a5, *a6);
  DgnString::~DgnString(&v43);
}

void sub_262590100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnString>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  DgnString::DgnString(v11);
  v4 = sizeObject(v11, 2);
  if (v2 == 3)
  {
    v5 = 0;
  }

  else
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v5 = 12;
    }

    else
    {
      v5 = 16;
    }

    if ((v2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 16 * v7 - 16;
        do
        {
          v5 += sizeObject(*a1 + v9, v2);
          --v8;
          v9 -= 16;
        }

        while (v8 > 1);
      }

      if (!v2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnString::~DgnString(v11);
  return v5;
}

unsigned int *PhnMgr::getPublicPhnIndexArray(unsigned int *result, uint64_t a2)
{
  v3 = result;
  *(a2 + 8) = 0;
  v4 = *result;
  v5 = *(a2 + 12);
  if (*result > v5)
  {
    result = DgnPrimArray<short>::reallocElts(a2, *result - v5, 0);
    v4 = *v3;
  }

  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (i && *(v3 + 30) != i && *(v3 + 28) != i && *(v3 + 29) != i)
      {
        v7 = *(a2 + 8);
        if (v7 == *(a2 + 12))
        {
          result = DgnPrimArray<short>::reallocElts(a2, 1, 1);
          v7 = *(a2 + 8);
          v4 = *v3;
        }

        *(*a2 + 2 * v7) = i;
        *(a2 + 8) = v7 + 1;
      }
    }
  }

  return result;
}

void PhnMgr::getFullAcousticExitContext(uint64_t a1, BitArray *a2)
{
  BitArray::setSize(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = 0;
    v6 = 0;
    v7 = *(a1 + 60);
    do
    {
      if (v7 != v6 && *(a1 + 56) != v6 && *(a1 + 58) != v6)
      {
        *(*a2 + 4 * (v5 >> 5)) |= 1 << v5;
        v4 = *a1;
      }

      v5 = ++v6;
    }

    while (v4 > v6);
  }
}

double PhnMgr::verifyPhonemePron(uint64_t result, uint64_t a2, const char *a3, char a4)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(*a2 + 2 * v5);
      if (*result <= v6 || v6 == *(result + 58) || (a4 & 1) == 0 && v6 == *(result + 56))
      {
        break;
      }

      if (v4 == ++v5)
      {
        return v7;
      }
    }

    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 165, "phoneme/phnmgr", 6, "%u %u %.500s", v6, v5, a3);
  }

  return v7;
}

double PhnMgr::verifyPhonemePron2(uint64_t result, uint64_t a2, const char *a3, char a4)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = *(*a2 + 2 * v5);
      if (*result <= v6 || v6 == *(result + 58) || (a4 & 1) == 0 && v6 == *(result + 56))
      {
        break;
      }

      if (v4 == ++v5)
      {
        return v7;
      }
    }

    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 182, "phoneme/phnmgr", 6, "%u %u %.500s", v6, v5, a3);
  }

  return v7;
}

uint64_t PhnMgr::addPhone(PhnMgr *this, const char *__s)
{
  if (*this >= 0xFFFFu)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 523, "phoneme/phnmgr", 1, "%d", 0xFFFF);
  }

  v4 = strlen(__s);
  if (!v4)
  {
    errThrowInternal(v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 524, "phoneme/phnmgr", 5, "%s", &errStr_phoneme_phnmgr_E_EMPTY_HUMAN_READABLE);
  }

  v5 = *this;
  DgnString::DgnString(v8, __s);
  if (DgnArray<DgnString>::find(this + 2, v8) != -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 534, "phoneme/phnmgr", 10, "%u %.500s", v5, __s);
  }

  v6 = *(this + 4);
  if (v6 == *(this + 5))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 8, 1, 1);
    v6 = *(this + 4);
  }

  DgnString::DgnString((*(this + 1) + 16 * v6), v8);
  ++*(this + 4);
  ++*this;
  DgnString::~DgnString(v8);
  return v5;
}

void sub_262590610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void PhnMgr::loadPhnMgrText(PhnMgr *this, FileSpec **a2)
{
  DgnTextFileParser::DgnTextFileParser(v32);
  DgnTextFileParser::openDgnTextFileParser(v32, a2, 62, 1);
  DgnTextFileParser::verifyMatchingFileType(v32, "PhonemeTable");
  v31[0] = 0;
  v31[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v32, sPHT_Versions, v31);
  DgnTextFileParser::verifyFileVersionInRange(v32, v31);
  v30 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v32, "NumberOfPhones", &v30, 1, 0, 0xFDE8u);
  DgnTextFile::getHeaderField(v32, "Language", (this + 24), 1);
  DgnTextFile::getHeaderField(v32, "PhonemeSetName", (this + 40), 1);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v32);
  v28 = 0;
  v29 = 0;
  v27[0] = 0;
  v27[1] = 0;
  DgnTextFile::getLineFieldNames(v32, &v28);
  DgnTextFile::getLineFieldFormats(v32, v27);
  if (!v29)
  {
    goto LABEL_13;
  }

  v4 = 0;
  v5 = 0;
  v6 = -1;
  do
  {
    if (*(v28 + v4 + 8))
    {
      v7 = *(v28 + v4);
    }

    else
    {
      v7 = &unk_26286C2BC;
    }

    if (!strcmp(v7, "HumanReadable"))
    {
      if (*(v27[0] + 4 * v5))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 286, "phoneme/phnmgr", 12, "%.500s %.500s", "HumanReadable", "String");
      }

      v6 = v5;
    }

    else
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 290, "phoneme/phnmgr", 13, "%.500s", v7);
    }

    ++v5;
    v4 += 16;
  }

  while (v5 < v29);
  if (v6 == -1)
  {
LABEL_13:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 292, "phoneme/phnmgr", 14, "%.500s", "PhoneCode");
    v6 = -1;
  }

  PhnMgr::addPhone(this, "_sil");
  DgnString::DgnString(&v25);
  DgnString::DgnString(v24);
  DgnString::DgnString(v23);
  v8 = MEMORY[0x277D85DE0];
  while (DgnTextFileParser::parseNextLine(v32))
  {
    LineFieldString = DgnTextFileParser::getLineFieldString(v32, v6);
    DgnString::operator=(&v25, LineFieldString);
    if (v26 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 322, "phoneme/phnmgr", 11, "%.500s", "empty string");
    }

    v10 = DgnString::find(&v25, "_");
    if (!v10)
    {
      if (v26)
      {
        v11 = v25;
      }

      else
      {
        v11 = &unk_26286C2BC;
      }

      errThrowInternal(v10, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 324, "phoneme/phnmgr", 11, "%.500s", v11);
    }

    v12 = this;
    v13 = v26;
    if (v26 >= 2)
    {
      v16 = 0;
      do
      {
        v17 = v25[v16];
        if (v17 < 0 || (*(v8 + 4 * v17 + 60) & 0x500) == 0)
        {
          v18 = v25[v16];
          v19 = (v18 - 33) > 0x3F || ((1 << (v18 - 33)) & 0xD4000000FE0057FDLL) == 0;
          if (v19 && (v18 - 123) >= 4)
          {
            if (v13)
            {
              v21 = v25;
            }

            else
            {
              v21 = &unk_26286C2BC;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 358, "phoneme/phnmgr", 11, "%.500s", v21);
            v13 = v26;
          }
        }

        ++v16;
        LODWORD(v20) = v13 - 1;
        if (v13)
        {
          v20 = v20;
        }

        else
        {
          v20 = 0;
        }
      }

      while (v16 < v20);
    }

    if (v13)
    {
      v14 = v25;
    }

    else
    {
      v14 = &unk_26286C2BC;
    }

    this = v12;
    v15 = PhnMgr::addPhone(v12, v14);
    if (v30 < v15)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 363, "phoneme/phnmgr", 8, "%u", v30);
    }
  }

  *(this + 28) = PhnMgr::addPhone(this, "_gen");
  *(this + 29) = PhnMgr::addPhone(this, "_pronless");
  *(this + 30) = PhnMgr::addPhone(this, "_wb");
  v22 = *this - 4;
  if (v22 != v30)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 386, "phoneme/phnmgr", 9, "%u %u", v30, v22);
  }

  DgnString::~DgnString(v23);
  DgnString::~DgnString(v24);
  DgnString::~DgnString(&v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v27);
  DgnArray<DgnString>::releaseAll(&v28);
  DgnIArray<Utterance *>::~DgnIArray(v31);
  DgnTextFileParser::~DgnTextFileParser(v32);
}

void sub_262590AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va5, a11);
  va_start(va4, a11);
  va_start(va3, a11);
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  va_copy(va2, va1);
  v15 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  va_copy(va3, va2);
  v18 = va_arg(va3, void);
  v20 = va_arg(va3, void);
  va_copy(va4, va3);
  v21 = va_arg(va4, void);
  v23 = va_arg(va4, void);
  v24 = va_arg(va4, void);
  va_copy(va5, va4);
  v25 = va_arg(va5, void);
  v27 = va_arg(va5, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnArray<DgnString>::releaseAll(va3);
  DgnIArray<Utterance *>::~DgnIArray(va4);
  DgnTextFileParser::~DgnTextFileParser(va5);
  _Unwind_Resume(a1);
}

void PhnMgr::savePhnMgrText(PhnMgr *this, DFile *a2, uint64_t a3)
{
  v3 = a3;
  DgnTextFileWriter::DgnTextFileWriter(v21);
  DgnTextFileWriter::openDgnTextFileWriter(v21, a2, 62, v3);
  v19 = 0;
  v20 = 0;
  DgnTextFile::legalDgnTextFileVersions(v21, sPHT_Versions, &v19);
  DgnTextFileWriter::setFileType(v21, "PhonemeTable", (v19 + 8 * (v20 - 1)));
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  DgnString::DgnString(v14, "HumanReadable");
  v6 = v18;
  if (v18 == HIDWORD(v18))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v17, 1, 1);
    v6 = v18;
  }

  DgnString::DgnString((v17 + 16 * v6), v14);
  LODWORD(v18) = v18 + 1;
  DgnString::~DgnString(v14);
  v7 = v16;
  if (v16 == HIDWORD(v16))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v15, 1, 1);
    v7 = v16;
  }

  *(v15 + 4 * v7) = 0;
  LODWORD(v16) = v7 + 1;
  DgnTextFileWriter::setLineFieldFormat(v21, &v15, &v17);
  DgnTextFileWriter::setHeaderFieldUnsigned(v21, "NumberOfPhones", (*this - 4));
  if (*(this + 8))
  {
    v8 = *(this + 3);
  }

  else
  {
    v8 = &unk_26286C2BC;
  }

  DgnTextFileWriter::setHeaderField(v21, "Language", v8);
  if (*(this + 12))
  {
    v9 = *(this + 5);
  }

  else
  {
    v9 = &unk_26286C2BC;
  }

  DgnTextFileWriter::setHeaderField(v21, "PhonemeSetName", v9);
  v10 = *this;
  if (*this)
  {
    v11 = 0;
    do
    {
      if (v11 && *(this + 30) != v11 && *(this + 28) != v11 && *(this + 29) != v11)
      {
        v12 = *(this + 1) + 16 * v11;
        if (*(v12 + 8))
        {
          v13 = *v12;
        }

        else
        {
          v13 = &unk_26286C2BC;
        }

        DgnTextFileWriter::setLineFieldValue(v21, 0, v13);
        DgnTextFileWriter::writeNextLine(v21);
        v10 = *this;
      }

      ++v11;
    }

    while (v10 > v11);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
  DgnArray<DgnString>::releaseAll(&v17);
  DgnIArray<Utterance *>::~DgnIArray(&v19);
  DgnTextFileWriter::~DgnTextFileWriter(v21);
}

void sub_262590DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va3, a7);
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

void PhnMgr::loadPhnMgr(PhnMgr *this, FileSpec **a2, DFileChecksums *a3, int a4)
{
  if (DFile::subFileExists(a2, 0x3Eu))
  {

    PhnMgr::loadPhnMgrText(this, a2);
  }

  else
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 450, "phoneme/phnmgr", 17, "%s", &unk_26286C2BC);
    }

    v14 = 0;
    v8 = OpenAndReadMrecHeader(a2, 0x3Du, 1, "MRPHNM!?", &v14 + 1, &v14);
    v9 = v14;
    if (v14 == 0x1300000007)
    {
      v10 = 19;
    }

    else
    {
      if (*(a2 + 6))
      {
        v11 = a2[2];
      }

      else
      {
        v11 = &unk_26286C2BC;
      }

      MrecHeaderCheckVersions(v11, "MRPHNM!?", HIDWORD(v14), v14, 0x17u, 8u);
      v9 = v14;
      v10 = HIDWORD(v14);
    }

    MrecHeaderCheckLatestVersionIfShared(a2, "MRPHNM!?", v10, v9, 23, 8);
    v13 = 0;
    readObject(v8, this, &v13);
    readObject<DgnString>(v8, this + 8, &v13);
    readObject(v8, (this + 24), &v13);
    readObject(v8, (this + 40), &v13);
    readObject(v8, this + 28, &v13);
    readObject(v8, this + 29, &v13);
    readObject(v8, this + 30, &v13);
    readObjectChecksumAndVerify(v8, v13);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 61, v13);
    DgnDelete<DgnStream>(v8);
  }
}

void readObject<DgnString>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v15 = 0;
  readObject(a1, &v15, a3);
  v6 = v15;
  v7 = *(a2 + 12);
  if (v15 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v15 - v7, 0);
  }

  v8 = *(a2 + 8);
  v9 = v8;
  if (v6 >= v8)
  {
    if (v6 > v8)
    {
      v11 = v6 - v8;
      v12 = 16 * v8;
      do
      {
        DgnString::DgnString((*a2 + v12));
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      DgnString::~DgnString(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      readObject(a1, (*a2 + v13), a3);
      ++v14;
      v13 += 16;
    }

    while (v14 < *(a2 + 8));
  }
}

void PhnMgr::savePhnMgr(PhnMgr *this, DFile *a2, DFileChecksums *a3, int a4, uint64_t a5)
{
  if (a4)
  {

    PhnMgr::savePhnMgrText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x3Du, a5, "MRPHNM!?", 23, 8);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObject<DgnString>(v8, this + 8, &v10);
    writeObject(v8, this + 24, &v10);
    writeObject(v8, this + 40, &v10);
    writeObject(v8, this + 28, &v10);
    writeObject(v8, this + 29, &v10);
    writeObject(v8, this + 30, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 61, v10);
    DgnDelete<DgnStream>(v8);
  }
}

uint64_t writeObject<DgnString>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

BOOL PhnMgr::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 60) != *(a2 + 60) || *(a1 + 56) != *(a2 + 56) || *(a1 + 58) != *(a2 + 58))
  {
    return 0;
  }

  v4 = *(a1 + 32) ? *(a1 + 24) : &unk_26286C2BC;
  v5 = *(a2 + 32) ? *(a2 + 24) : &unk_26286C2BC;
  if (strcmp(v4, v5))
  {
    return 0;
  }

  v6 = *(a1 + 48) ? *(a1 + 40) : &unk_26286C2BC;
  v7 = *(a2 + 48) ? *(a2 + 40) : &unk_26286C2BC;
  if (strcmp(v6, v7))
  {
    return 0;
  }

  return DgnArray<DgnString>::operator==(a1 + 8, (a2 + 8));
}

uint64_t PhnMgr::getPhnIndex(PhnMgr *this, const char *a2)
{
  DgnString::DgnString(&v13, a2);
  v4 = *this;
  if (*this)
  {
    v5 = 0;
    v6 = *(this + 1);
    if (v14)
    {
      v7 = v13;
    }

    else
    {
      v7 = &unk_26286C2BC;
    }

    while (1)
    {
      v8 = v6 + 16 * v5;
      v9 = *(v8 + 8);
      v10 = *v8;
      v11 = (v9 ? v10 : &unk_26286C2BC);
      if (!strcmp(v11, v7))
      {
        break;
      }

      if (++v5 >= v4)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/phoneme/phnmgr.cpp", 569, "phoneme/phnmgr", 3, "%.500s", a2);
    LOWORD(v5) = -1;
  }

  DgnString::~DgnString(&v13);
  return v5;
}

void sub_262591478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *DgnArray<DgnString>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnString::~DgnString(*a1 + v3);
      v3 -= 16;
    }

    while (v3 != -16);
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

void DgnArray<DgnString>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      DgnString::~DgnString(*a1 + v9);
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(a1 + 8) = 0;
  v10 = *(a1 + 12);
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
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, a4 - v10, 0);
    v11 = *(a1 + 8);
  }

  v13 = a4;
  v12 = v11;
  do
  {
    DgnString::DgnString((*a1 + 16 * v12), (*a2 + 16 * a3));
    v12 = *(a1 + 8) + 1;
    *(a1 + 8) = v12;
    ++a3;
    --v13;
  }

  while (v13);
  if (v12 > a4)
  {
    if (v12 > a4)
    {
      v14 = v12;
      v15 = 16 * v12 - 16;
      do
      {
        --v14;
        DgnString::~DgnString(*a1 + v15);
        v15 -= 16;
      }

      while (v14 > a4);
    }

    goto LABEL_17;
  }

LABEL_14:
  v16 = a4 - v12;
  if (a4 > v12)
  {
    v17 = 16 * v12;
    do
    {
      DgnString::DgnString((*a1 + v17));
      v17 += 16;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

uint64_t DgnArray<DgnString>::find(unsigned int *a1, uint64_t a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  if (*(a2 + 8))
  {
    v4 = *a2;
  }

  else
  {
    v4 = &unk_26286C2BC;
  }

  for (i = (*a1 + 8); ; i += 4)
  {
    v6 = *i ? *(i - 1) : &unk_26286C2BC;
    if (!strcmp(v6, v4))
    {
      break;
    }

    if (v2 == ++v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v3;
}

BOOL DgnArray<DgnString>::operator==(uint64_t a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  if (v3 != *(a2 + 2))
  {
    return 0;
  }

  v4 = *a2;
  v5 = v3 + 1;
  v6 = 16 * v3;
  do
  {
    v7 = --v5 < 1;
    if (v5 < 1)
    {
      break;
    }

    v8 = v6 - 16;
    v9 = *a1 + v6;
    v10 = v4 + v6;
    v11 = *(v9 - 8);
    v12 = *(v9 - 16);
    v13 = (v11 ? v12 : &unk_26286C2BC);
    v14 = *(v10 - 8);
    v15 = *(v10 - 16);
    v16 = (v14 ? v15 : &unk_26286C2BC);
    v17 = strcmp(v13, v16);
    v6 = v8;
  }

  while (!v17);
  return v7;
}

double fround(double a1, int a2)
{
  v4 = -a1;
  if (a1 >= 0.0)
  {
    v4 = a1;
  }

  __y = 0.0;
  v5 = modf(v4, &__y);
  for (i = 1.0; a2; --a2)
  {
    i = i * 10.0;
  }

  v17 = 0.0;
  v7 = modf(v5 * i, &v17);
  v8 = v7 == 0.5;
  if (v7 > 0.5)
  {
    v9 = v17;
LABEL_11:
    v9 = v9 + 1.0;
    goto LABEL_12;
  }

  v9 = v17;
  v10 = floor(v17 * 0.5);
  v11 = v10 + v10;
  if (v8 && v11 != v17)
  {
    goto LABEL_11;
  }

LABEL_12:
  v13 = __y + v9 / i;
  v14 = -v13;
  if (a1 >= 0.0)
  {
    v14 = v13;
  }

  if (v13 == 0.0)
  {
    return v14 * v14;
  }

  else
  {
    return v14;
  }
}

double eround(double result, int a2)
{
  if (result == 0.0)
  {
    return result * result;
  }

  v2 = -result;
  if (result >= 0.0)
  {
    v2 = result;
  }

  v3 = 1.0;
  if (a2 >= 2)
  {
    v4 = a2 + 1;
    do
    {
      v3 = v3 * 10.0;
      --v4;
    }

    while (v4 > 2);
  }

  v5 = v3 * 10.0;
  if (v2 < v3 * 10.0)
  {
    v6 = 1.0;
    v7 = v2;
    if (v2 < v3)
    {
      do
      {
        v6 = v6 * 10.0;
        v7 = v2 * v6;
      }

      while (v2 * v6 < v3);
    }
  }

  else
  {
    if (v2 * 0.5 == v2)
    {
      return result;
    }

    v6 = 1.0;
    do
    {
      v6 = v6 * 10.0;
      v7 = v2 / v6;
    }

    while (v2 / v6 >= v5);
  }

  v8 = floor(v7);
  v9 = v7 - v8;
  if (v7 - v8 > 0.5 || ((v10 = floor(v8 * 0.5), v11 = v10 + v10, v9 == 0.5) ? (v12 = v11 == v8) : (v12 = 1), !v12))
  {
    v8 = v8 + 1.0;
  }

  v13 = v2 < v5;
  v14 = v8 / v6;
  if (!v13)
  {
    v14 = v6 * v8;
  }

  if (result >= 0.0)
  {
    result = v14;
  }

  else
  {
    result = -v14;
  }

  if (v14 == 0.0)
  {
    return result * result;
  }

  return result;
}

uint64_t StateIdPair::computeHash(_DWORD *a1)
{
  HIDWORD(v1) = *a1;
  LODWORD(v1) = *a1;
  return (v1 >> 19) + a1[1];
}

uint64_t CWIDAC::computeHash(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 20);
  if (v1 == -83886084)
  {
    v1 = 0;
  }

  HIDWORD(v3) = v1;
  LODWORD(v3) = v1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = (v3 >> 19) + v4;
  if (v4)
  {
    v1 = v6;
  }

  v7 = *(a1 + 4);
  HIDWORD(v8) = v1;
  LODWORD(v8) = v1;
  v9 = v7 == 0x3FFF;
  v10 = (v8 >> 19) + v7;
  if (!v9)
  {
    v1 = v10;
  }

  HIDWORD(v11) = v1;
  LODWORD(v11) = v1;
  v12 = (v11 >> 19) + *(a1 + 6);
  if (*(a1 + 6))
  {
    v1 = v12;
  }

  HIDWORD(v13) = v1;
  LODWORD(v13) = v1;
  v14 = (v13 >> 19) + v2;
  if (v2 == -83886084)
  {
    v15 = v1;
  }

  else
  {
    v15 = v14;
  }

  HIDWORD(v16) = v15;
  LODWORD(v16) = v15;
  v17 = (v16 >> 19) + *a1;
  HIDWORD(v16) = v17;
  LODWORD(v16) = v17;
  v18 = (v16 >> 19) + v5;
  if (v5 == -2)
  {
    return v17;
  }

  else
  {
    return v18;
  }
}

uint64_t CWIDAC::cmp(uint64_t a1, uint64_t a2)
{
  v2 = *a1 >= *a2;
  if (*a1 == *a2 && (v3 = *(a1 + 16), v4 = *(a2 + 16), v2 = v3 >= v4, v3 == v4) && (v5 = *(a1 + 20), v6 = *(a2 + 20), v2 = v5 >= v6, v5 == v6) && (v7 = *(a1 + 4), v8 = *(a2 + 4), v2 = v7 >= v8, v7 == v8) && (v9 = *(a1 + 12), v10 = *(a2 + 12), v2 = v9 >= v10, v9 == v10) && (v11 = *(a1 + 6), v12 = *(a2 + 6), v2 = v11 >= v12, v11 == v12))
  {
    v13 = *(a1 + 8);
    v14 = *(a2 + 8);
    v15 = v13 == v14;
    if (v13 < v14)
    {
      v16 = -1;
    }

    else
    {
      v16 = 1;
    }

    if (v15)
    {
      return 0;
    }

    else
    {
      return v16;
    }
  }

  else if (v2)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CWIDACPair::computeHash(uint64_t a1)
{
  HIDWORD(v2) = CWIDAC::computeHash(a1);
  LODWORD(v2) = HIDWORD(v2);
  return (v2 >> 19) + CWIDAC::computeHash(a1 + 24);
}

unint64_t StartupUserDeltaParamSpecMgr(void)
{
  v0 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v0, "UserDeltaTyingType", &byte_262899963, &byte_262899963, &sUserDeltaTyingTypeEnumHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v1, "UserDeltaRunLengthMin", &byte_262899963, &byte_262899963, &sUserDeltaRunLengthMinIntHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v2, "UserDeltaRunLengthRange", &byte_262899963, &byte_262899963, &sUserDeltaRunLengthRangeIntHistory);
  v3 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v3, "UserDeltaInclusionMinDivergence", &byte_262899963, &byte_262899963, &sUserDeltaInclusionMinDivergenceIntHistory);
  ParamSpecMgr::addParam(qword_281051FC8, v0);
  ParamSpecMgr::addParam(qword_281051FC8, v1);
  ParamSpecMgr::addParam(qword_281051FC8, v2);
  ParamSpecMgr::addParam(qword_281051FC8, v3);
  v4 = qword_281051FC8;

  return ParamSpecMgr::sortParams(v4);
}

_DWORD *UserDeltaParamSet::UserDeltaParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287526D40;
  UserDeltaParamSet::setDefaults(a1);
  return a1;
}

void sub_262591C88(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t UserDeltaParamSet::UserDeltaParamSet(uint64_t a1, uint64_t a2, const char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287526D40;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t UserDeltaParamSet::setDefaults(UserDeltaParamSet *this)
{
  *(this + 10) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FC8, 1);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051FC8, 2, 0, 0);
  *(this + 12) = ParamSpecMgr::ParamGetDefault_int(qword_281051FC8, 3, 0, 0);
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051FC8, 4, 0, 0);
  *(this + 13) = result;
  return result;
}

uint64_t UserDeltaParamSet::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sizeObject(a1 + 8, a2);
  v4 = 16;
  if ((v2 == 3) | gShadowDiagnosticShowIdealizedObjectSizes & 1)
  {
    v4 = 0;
  }

  return v3 + 16 * (v2 != 3) + v4;
}

uint64_t UserDeltaParamSet::getBoolParameter(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = "int";
      v3 = 3;
      goto LABEL_11;
    }

    if (a2 == 4)
    {
      v2 = "int";
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v2 = "enum";
      v3 = 1;
      goto LABEL_11;
    }

    if (a2 == 2)
    {
      v2 = "int";
      v3 = 2;
LABEL_11:
      throwWrongTypeForParamId(v3, v2, "BOOL");
      return 0;
    }
  }

  throwWrongParamIdValue(a2, "BOOL");
  return 0;
}

uint64_t UserDeltaParamSet::getIntParameter(unsigned int *a1, int a2, uint64_t a3)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[12];
        }

        if (a3 == 1)
        {
          v3 = qword_281051FC8;
          v4 = 3;
          goto LABEL_20;
        }

        goto LABEL_31;
      }

      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v7 = qword_281051FC8;
          v8 = 3;
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      v10 = qword_281051FC8;
      v11 = 3;
      goto LABEL_40;
    }

    if (a2 == 4)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[13];
        }

        if (a3 == 1)
        {
          v3 = qword_281051FC8;
          v4 = 4;
          goto LABEL_20;
        }

        goto LABEL_31;
      }

      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v7 = qword_281051FC8;
          v8 = 4;
          goto LABEL_30;
        }

LABEL_31:
        throwWrongQueryMode(a3, "int");
        return 0;
      }

      v10 = qword_281051FC8;
      v11 = 4;
LABEL_40:
      ParamByParamId = ParamSpecMgr::getParamByParamId(v10, v11);
    }
  }

  else
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "enum", "int");
      return 0;
    }

    if (a2 == 2)
    {
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 == 1)
        {
          v3 = qword_281051FC8;
          v4 = 2;
LABEL_20:
          v5 = ParamSpecMgr::getParamByParamId(v3, v4);
        }

        goto LABEL_31;
      }

      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v7 = qword_281051FC8;
          v8 = 2;
LABEL_30:
          v9 = ParamSpecMgr::getParamByParamId(v7, v8);
        }

        goto LABEL_31;
      }

      v10 = qword_281051FC8;
      v11 = 2;
      goto LABEL_40;
    }
  }

  throwWrongParamIdValue(a2, "int");
  return 0;
}

double UserDeltaParamSet::getDoubleParameter(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = "int";
      v3 = 3;
      goto LABEL_11;
    }

    if (a2 == 4)
    {
      v2 = "int";
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v2 = "enum";
      v3 = 1;
      goto LABEL_11;
    }

    if (a2 == 2)
    {
      v2 = "int";
      v3 = 2;
LABEL_11:
      throwWrongTypeForParamId(v3, v2, "double");
      return 0.0;
    }
  }

  throwWrongParamIdValue(a2, "double");
  return 0.0;
}

uint64_t UserDeltaParamSet::getStringParameter(uint64_t a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v2 = "int";
      v3 = 3;
      goto LABEL_11;
    }

    if (a2 == 4)
    {
      v2 = "int";
      v3 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (a2 == 1)
    {
      v2 = "enum";
      v3 = 1;
      goto LABEL_11;
    }

    if (a2 == 2)
    {
      v2 = "int";
      v3 = 2;
LABEL_11:
      throwWrongTypeForParamId(v3, v2, "string");
      return 0;
    }
  }

  throwWrongParamIdValue(a2, "string");
  return 0;
}

uint64_t UserDeltaParamSet::getEnumParameter(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v3 = 3;
      goto LABEL_18;
    }

    if (a2 == 4)
    {
      v3 = 4;
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v3 = 2;
LABEL_18:
      throwWrongTypeForParamId(v3, "int", "BOOL");
      return 0;
    }

LABEL_8:
    throwWrongParamIdValue(a2, "enum");
    return 0;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FC8, 1);
      if (ParamByParamId)
      {
      }

      return EnumParamSpec::getMinVal(ParamByParamId);
    }

    if (a3 == 3)
    {
      v10 = ParamSpecMgr::getParamByParamId(qword_281051FC8, 1);
      if (v10)
      {
      }

      return EnumParamSpec::getMaxVal(v10);
    }

LABEL_28:
    throwWrongQueryMode(a3, "enum");
    return 0;
  }

  if (!a3)
  {
    return *(a1 + 40);
  }

  if (a3 != 1)
  {
    goto LABEL_28;
  }

  v4 = ParamSpecMgr::getParamByParamId(qword_281051FC8, 1);
  if (!**(v5 + 24))
  {
    return 0;
  }

  v6 = v5 + 16;
  v7 = 1;
  v8 = v6;
  while (*v8 != 1)
  {
    result = 0;
    v8 = v6 + 32 * v7++;
    if (!**(v8 + 8))
    {
      return result;
    }
  }

  return *(v8 + 16);
}

uint64_t EnumParamSpec::getMinVal(EnumParamSpec *this)
{
  v1 = *(this + 4);
  if (!**(v1 + 24))
  {
    return 0;
  }

  v2 = 0;
  result = 0;
  v4 = v1 + 16;
  v5 = 1;
  v6 = v4;
  do
  {
    if (v5 == 1 || result > *(v6 + 16))
    {
      result = *(v4 + 32 * v2 + 16);
    }

    v2 = v5;
    v6 = v4 + 32 * v5++;
  }

  while (**(v6 + 8));
  return result;
}

uint64_t EnumParamSpec::getMaxVal(EnumParamSpec *this)
{
  v1 = *(this + 4);
  if (!**(v1 + 24))
  {
    return 0;
  }

  v2 = 0;
  result = 0;
  v4 = v1 + 16;
  v5 = 1;
  v6 = v4;
  do
  {
    if (v5 == 1 || result < *(v6 + 16))
    {
      result = *(v4 + 32 * v2 + 16);
    }

    v2 = v5;
    v6 = v4 + 32 * v5++;
  }

  while (**(v6 + 8));
  return result;
}

double UserDeltaParamSet::setBoolParameter(UserDeltaParamSet *this, int a2)
{
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "enum", "BOOL");
    }

    else if (a2 != 2)
    {
      goto LABEL_12;
    }

    throwWrongTypeForParamId(a2, "int", "BOOL");
    goto LABEL_10;
  }

  if (a2 == 3)
  {
LABEL_10:
    throwWrongTypeForParamId(a2, "int", "BOOL");
    goto LABEL_11;
  }

  if (a2 == 4)
  {
LABEL_11:
    throwWrongTypeForParamId(a2, "int", "BOOL");
  }

LABEL_12:

  return throwWrongParamIdValue(a2, "BOOL");
}

void UserDeltaParamSet::setIntParameter(UserDeltaParamSet *this, int a2, int a3)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FC8, 3);
      if (ParamByParamId)
      {
      }

      IntParamSpec::validateValue(ParamByParamId, a3, 0, 0);
      if (!*(this + 9))
      {
        *(this + 12) = a3;
        return;
      }

      v6 = "UserDeltaRunLengthRange";
    }

    else
    {
      if (a2 != 4)
      {
LABEL_11:

        throwWrongParamIdValue(a2, "int");
        return;
      }

      v5 = ParamSpecMgr::getParamByParamId(qword_281051FC8, 4);
      if (v5)
      {
      }

      IntParamSpec::validateValue(v5, a3, 0, 0);
      if (!*(this + 9))
      {
        *(this + 13) = a3;
        return;
      }

      v6 = "UserDeltaInclusionMinDivergence";
    }
  }

  else
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "enum", "int");
    }

    else if (a2 != 2)
    {
      goto LABEL_11;
    }

    v7 = ParamSpecMgr::getParamByParamId(qword_281051FC8, 2);
    if (v7)
    {
    }

    IntParamSpec::validateValue(v7, a3, 0, 0);
    if (!*(this + 9))
    {
      *(this + 11) = a3;
      return;
    }

    v6 = "UserDeltaRunLengthMin";
  }

  throwParamSetSetFailed(v6, "int");
}

double UserDeltaParamSet::setDoubleParameter(UserDeltaParamSet *this, int a2, double a3)
{
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "enum", "double");
    }

    else if (a2 != 2)
    {
      goto LABEL_12;
    }

    throwWrongTypeForParamId(a2, "int", "double");
    goto LABEL_10;
  }

  if (a2 == 3)
  {
LABEL_10:
    throwWrongTypeForParamId(a2, "int", "double");
    goto LABEL_11;
  }

  if (a2 == 4)
  {
LABEL_11:
    throwWrongTypeForParamId(a2, "int", "double");
  }

LABEL_12:

  return throwWrongParamIdValue(a2, "double");
}

double UserDeltaParamSet::setStringParameter(UserDeltaParamSet *this, int a2, const char *a3)
{
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      throwWrongTypeForParamId(1, "enum", "string");
    }

    else if (a2 != 2)
    {
      goto LABEL_12;
    }

    throwWrongTypeForParamId(a2, "int", "string");
    goto LABEL_10;
  }

  if (a2 == 3)
  {
LABEL_10:
    throwWrongTypeForParamId(a2, "int", "string");
    goto LABEL_11;
  }

  if (a2 == 4)
  {
LABEL_11:
    throwWrongTypeForParamId(a2, "int", "string");
  }

LABEL_12:

  return throwWrongParamIdValue(a2, "string");
}

void UserDeltaParamSet::setEnumParameter(UserDeltaParamSet *this, int a2, int a3)
{
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 != 4)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    throwWrongTypeForParamId(a2, "int", "BOOL");
LABEL_9:
    throwWrongTypeForParamId(a2, "int", "BOOL");
    goto LABEL_10;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
LABEL_10:

      throwWrongParamIdValue(a2, "enum");
      return;
    }

    throwWrongTypeForParamId(2, "int", "BOOL");
    goto LABEL_8;
  }

  ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FC8, 1);
  if (ParamByParamId)
  {
  }

  EnumParamSpec::validateValue(ParamByParamId, a3);
  if (*(this + 9))
  {

    throwParamSetSetFailed("UserDeltaTyingType", "enum");
  }

  else
  {
    *(this + 10) = a3;
  }
}

void UserDeltaParamSet::~UserDeltaParamSet(UserDeltaParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);

  JUMPOUT(0x26672B1B0);
}

void TIntegrityChecker::operator()(_BYTE *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if ((v3 & 3) != 2)
  {
    goto LABEL_8;
  }

  v4 = *(*a1 + 8);
  if (v4 != a2)
  {
    if ((v3 & 4) == 0)
    {
      loggableUnicode(*(a2 + 16), __p);
      if (v11 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      tknPrintf("Error: %s : Non-terminal is used but not defined\n", v5, v6);
      goto LABEL_13;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_16;
  }

  loggableUnicode(*(v4 + 16), __p);
  if (v11 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  tknPrintf("Error: %s : Top symbol cannot be used on right hand side of rules\n", v8, v9);
LABEL_13:
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = 1;
LABEL_16:
  a1[8] |= v7;
}

void sub_262592DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TGrammarCompiler::TGrammarCompiler(TGrammarCompiler *this, const TLocaleInfo *a2)
{
  *this = &unk_2875273B0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  operator new();
}

void sub_262593240(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v2, 0x30C40773F8FACLL);
  v5 = v1[4];
  if (v5)
  {
    v1[5] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v1[2] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

void TGrammarCompiler::~TGrammarCompiler(TGrammarCompiler *this)
{
  *this = &unk_2875273B0;
  v2 = *(this + 7);
  if (v2)
  {
    TGrammar::~TGrammar(v2);
    MEMORY[0x26672B1B0]();
  }

  v3 = *(this + 8);
  if (v3)
  {
    TLexerLexicon::~TLexerLexicon(v3);
    MEMORY[0x26672B1B0]();
  }

  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        if (*(v7 + 23) < 0)
        {
          operator delete(*v7);
        }

        MEMORY[0x26672B1B0](v7, 0x1092C40D41393B2);
        v5 = *(this + 1);
        v4 = *(this + 2);
      }

      ++v6;
    }

    while (v6 < (v4 - v5) >> 3);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  if (v9 != v8)
  {
    v10 = 0;
    do
    {
      if (v8[v10])
      {
        MEMORY[0x26672B1B0](v8[v10], 0x1000C4052888210);
        v8 = *(this + 4);
        v9 = *(this + 5);
      }

      ++v10;
    }

    while (v10 < (v9 - v8) >> 3);
  }

  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }

  v11 = *(this + 1);
  if (v11)
  {
    *(this + 2) = v11;
    operator delete(v11);
  }
}

{
  TGrammarCompiler::~TGrammarCompiler(this);

  JUMPOUT(0x26672B1B0);
}

void TGrammarCompiler::loadRule(void *a1, TLexer *a2, uint64_t a3)
{
  v126 = *MEMORY[0x277D85DE8];
  Token = nextToken(a2, a2);
  if (*Token != 1)
  {
    loggableToken(a2, Token);
    if (__p[23] >= 0)
    {
      v58 = __p;
    }

    else
    {
      v58 = *__p;
    }

    tknPrintf("Error: %sExpected a rule symbol\n", v57, v58);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(__sz, &byte_262899963);
    *__p = byte_287529580;
    if (SBYTE7(v95) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], __sz[0], __sz[1]);
    }

    else
    {
      *&__p[8] = *__sz;
      v83[0] = v95;
    }

    *__p = &unk_287527330;
    if (v83[0] >= 0)
    {
      v63 = &__p[8];
    }

    else
    {
      v63 = *&__p[8];
    }

    conditionalAssert(v63, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 855);
    *__p = byte_287529580;
    if (SHIBYTE(v83[0]) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SBYTE7(v95) < 0)
    {
      operator delete(__sz[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v65 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v65, *__p, *&__p[8]);
    }

    else
    {
      v72 = *__p;
      exception[3] = *&__p[16];
      *&v65->__r_.__value_.__l.__data_ = v72;
    }

    *exception = &unk_287527330;
  }

  v76 = *(Token + 16);
  v75 = TGrammar::addNonTerminal(a1[7], *(Token + 8), 1);
  v8 = nextToken(a2, v7);
  if (*v8 != 11)
  {
    loggableToken(a2, v8);
    if (__p[23] >= 0)
    {
      v60 = __p;
    }

    else
    {
      v60 = *__p;
    }

    tknPrintf("Error: %sExpected '=' after LHS\n", v59, v60);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    std::string::basic_string[abi:ne200100]<0>(__sz, &byte_262899963);
    *__p = byte_287529580;
    if (SBYTE7(v95) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], __sz[0], __sz[1]);
    }

    else
    {
      *&__p[8] = *__sz;
      v83[0] = v95;
    }

    *__p = &unk_287527330;
    if (v83[0] >= 0)
    {
      v66 = &__p[8];
    }

    else
    {
      v66 = *&__p[8];
    }

    conditionalAssert(v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 867);
    *__p = byte_287529580;
    if (SHIBYTE(v83[0]) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SBYTE7(v95) < 0)
    {
      operator delete(__sz[0]);
    }

    v67 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v67 = byte_287529580;
    v68 = (v67 + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v68, *__p, *&__p[8]);
    }

    else
    {
      v73 = *__p;
      v67[3] = *&__p[16];
      *&v68->__r_.__value_.__l.__data_ = v73;
    }

    *v67 = &unk_287527330;
  }

  v10 = 0;
  v77 = 0;
  v92[1] = 0;
  v92[0] = 0;
  v91 = v92;
  v89 = 0;
  __src = 0;
  v90 = 0;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v117 = 0u;
  v116 = 0u;
  v115 = 0u;
  v114 = 0u;
  v113 = 0u;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  v100 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  v96 = 0u;
  v95 = 0u;
  *__sz = 0u;
  v86 = 0;
  v85 = 0;
  v87 = 0;
  while (1)
  {
    while (1)
    {
      v11 = nextToken(a2, v9);
      v12 = v11;
      v13 = *v11;
      if (*v11 > 11)
      {
        break;
      }

      if (v13 == 1)
      {
        __sz[v10] = TGrammar::addNonTerminal(a1[7], *(v11 + 8), 0);
        *__p = *(v12 + 8);
        std::__tree<wchar_t const*,TWideCharCompare,std::allocator<wchar_t const*>>::__emplace_unique_key_args<wchar_t const*,wchar_t const* const&>(&v91, __p, __p);
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_73;
        }

        *__p = v83;
        *&__p[8] = xmmword_26286B6F0;
        v84 = 1;
        TRegExp::stringToRegExp(*(v11 + 8), __p, 0, 0);
        v14 = a1[7];
        if (*&__p[16] >= *&__p[8])
        {
          if (v84)
          {
            *v80 = 0;
            TBuffer<wchar_t>::insert(__p, *&__p[16], v80, 1uLL);
            v15 = *__p;
            --*&__p[16];
          }

          else
          {
            v15 = *__p;
            if (*&__p[8])
            {
              *(*__p + 4 * *&__p[8] - 4) = 0;
            }
          }
        }

        else
        {
          v15 = *__p;
          *(*__p + 4 * *&__p[16]) = 0;
        }

        __sz[v10] = TGrammar::addTerminal(v14, v15);
        if (v84 == 1 && *__p != v83 && *__p)
        {
          MEMORY[0x26672B1B0]();
        }
      }

LABEL_20:
      if (a3 && *v12 != 1)
      {
        if ((*(*a3 + 16))(a3, *(v12 + 8), *v12 == 17, &v85))
        {
          if (v87 >= 0)
          {
            v43 = &v85;
          }

          else
          {
            v43 = v85;
          }

          std::string::basic_string[abi:ne200100]<0>(v80, v43);
          *__p = byte_287529580;
          if ((v80[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&__p[8], *v80, *&v80[8]);
          }

          else
          {
            *&__p[8] = *v80;
            v83[0] = *&v80[16];
          }

          *__p = &unk_287526298;
          if (v83[0] >= 0)
          {
            v44 = &__p[8];
          }

          else
          {
            v44 = *&__p[8];
          }

          conditionalAssert(v44, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 910);
          *__p = byte_287529580;
          if (SHIBYTE(v83[0]) < 0)
          {
            operator delete(*&__p[8]);
          }

          if ((v80[23] & 0x80000000) != 0)
          {
            operator delete(*v80);
          }

          v45 = __cxa_allocate_exception(0x20uLL);
          if (v87 >= 0)
          {
            v46 = &v85;
          }

          else
          {
            v46 = v85;
          }

          std::string::basic_string[abi:ne200100]<0>(__p, v46);
          *v45 = byte_287529580;
          v47 = (v45 + 1);
          if ((__p[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v47, *__p, *&__p[8]);
          }

          else
          {
            v51 = *__p;
            v45[3] = *&__p[16];
            *&v47->__r_.__value_.__l.__data_ = v51;
          }

          *v45 = &unk_287526298;
        }

        v17 = HIBYTE(v87);
        if (v87 < 0)
        {
          v17 = v86;
        }

        if (v17)
        {
          loggableToken(a2, v12);
          v19 = __p;
          if (__p[23] < 0)
          {
            v19 = *__p;
          }

          v20 = &v85;
          if (v87 < 0)
          {
            v20 = v85;
          }

          tknPrintf("Warning: %s%s\n", v18, v19, v20);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }
      }

      v93[v10] = 0;
      v21 = nextToken(a2, v16);
      v22 = *(a2 + 3);
      if (*v21 == 25)
      {
        v92[v77 + 66] = v22;
        v92[v77++ + 2] = v10;
      }

      else if (v22)
      {
        *(a2 + 3) = v22 - 1;
      }

      ++v10;
    }

    if (v13 == 17)
    {
      __sz[v10] = TGrammar::addTerminal(a1[7], *(v11 + 8));
      goto LABEL_20;
    }

    if (v13 != 12 && v13 != 14)
    {
LABEL_73:
      loggableToken(a2, v11);
      v38 = __p[23];
      v39 = *__p;
      loggableUnicode(*(v12 + 8), v80);
      v41 = __p;
      if (v38 < 0)
      {
        v41 = v39;
      }

      if (v80[23] >= 0)
      {
        v42 = v80;
      }

      else
      {
        v42 = *v80;
      }

      tknPrintf("Error: %sUnexpected RHS symbol '%s'\n", v40, v41, v42);
      if ((v80[23] & 0x80000000) != 0)
      {
        operator delete(*v80);
      }

      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v80, &byte_262899963);
      *__p = byte_287529580;
      if ((v80[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], *v80, *&v80[8]);
      }

      else
      {
        *&__p[8] = *v80;
        v83[0] = *&v80[16];
      }

      *__p = &unk_287527330;
      if (v83[0] >= 0)
      {
        v52 = &__p[8];
      }

      else
      {
        v52 = *&__p[8];
      }

      conditionalAssert(v52, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 985);
      *__p = byte_287529580;
      if (SHIBYTE(v83[0]) < 0)
      {
        operator delete(*&__p[8]);
      }

      if ((v80[23] & 0x80000000) != 0)
      {
        operator delete(*v80);
      }

      v53 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v53 = byte_287529580;
      v54 = (v53 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v54, *__p, *&__p[8]);
      }

      else
      {
        v56 = *__p;
        v53[3] = *&__p[16];
        *&v54->__r_.__value_.__l.__data_ = v56;
      }

      *v53 = &unk_287527330;
    }

    v24 = 0;
    if (v10)
    {
      while (v93[v24] == 1)
      {
        if (v10 == ++v24)
        {
          goto LABEL_66;
        }
      }
    }

    if (v24 == v10)
    {
LABEL_66:
      loggableToken(a2, v11);
      if (__p[23] >= 0)
      {
        v37 = __p;
      }

      else
      {
        v37 = *__p;
      }

      tknPrintf("Error: %sRight hand side must consist of at least one non-optional symbol\n", v36, v37);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      std::string::basic_string[abi:ne200100]<0>(v80, &byte_262899963);
      *__p = byte_287529580;
      if ((v80[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], *v80, *&v80[8]);
      }

      else
      {
        *&__p[8] = *v80;
        v83[0] = *&v80[16];
      }

      *__p = &unk_287527330;
      if (v83[0] >= 0)
      {
        v48 = &__p[8];
      }

      else
      {
        v48 = *&__p[8];
      }

      conditionalAssert(v48, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 951);
      *__p = byte_287529580;
      if (SHIBYTE(v83[0]) < 0)
      {
        operator delete(*&__p[8]);
      }

      if ((v80[23] & 0x80000000) != 0)
      {
        operator delete(*v80);
      }

      v49 = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v49 = byte_287529580;
      v50 = (v49 + 1);
      if ((__p[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v50, *__p, *&__p[8]);
      }

      else
      {
        v55 = *__p;
        v49[3] = *&__p[16];
        *&v50->__r_.__value_.__l.__data_ = v55;
      }

      *v49 = &unk_287527330;
    }

    v25 = TGrammar::addRule(a1[7], v76, v75, __sz, v93, v10);
    v26 = v89;
    if (v89 >= v90)
    {
      v28 = (v89 - __src) >> 3;
      if ((v28 + 1) >> 61)
      {
        std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
      }

      v29 = (v90 - __src) >> 2;
      if (v29 <= v28 + 1)
      {
        v29 = v28 + 1;
      }

      if (v90 - __src >= 0x7FFFFFFFFFFFFFF8)
      {
        v30 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v30 = v29;
      }

      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(&__src, v30);
      }

      v31 = (8 * v28);
      *v31 = v25;
      v27 = 8 * v28 + 8;
      v32 = v31 - (v89 - __src);
      memcpy(v32, __src, v89 - __src);
      v33 = __src;
      __src = v32;
      v89 = v27;
      v90 = 0;
      if (v33)
      {
        operator delete(v33);
      }
    }

    else
    {
      *v89 = v25;
      v27 = (v26 + 8);
    }

    v89 = v27;
    if (v77)
    {
      *(a2 + 3) = v92[--v77 + 66];
      v34 = v92[v77 + 2];
      v10 = v34 + 1;
      v93[v34] = 1;
    }

    else
    {
      v10 = 0;
      v77 = 0;
      if (*v12 == 14)
      {
        v35 = *(a2 + 3);
        if (v35)
        {
          *(a2 + 3) = v35 - 1;
        }

        *__p = v83;
        *&__p[8] = xmmword_26286B6F0;
        v84 = 1;
        compileCode(a2, __p, &v91, a1 + 1);
        if ((*&__p[16] + 1) < 0x7FFFFFFF)
        {
          operator new[]();
        }

        loggableToken(a2, v12);
        if (v80[23] >= 0)
        {
          v62 = v80;
        }

        else
        {
          v62 = *v80;
        }

        tknPrintf("Error: %sRule is too large\n", v61, v62);
        if ((v80[23] & 0x80000000) != 0)
        {
          operator delete(*v80);
        }

        std::string::basic_string[abi:ne200100]<0>(v78, &byte_262899963);
        *v80 = byte_287529580;
        if (SHIBYTE(v79) < 0)
        {
          std::string::__init_copy_ctor_external(&v80[8], v78[0], v78[1]);
        }

        else
        {
          *&v80[8] = *v78;
          v81 = v79;
        }

        *v80 = &unk_287527330;
        if (v81 >= 0)
        {
          v69 = &v80[8];
        }

        else
        {
          v69 = *&v80[8];
        }

        conditionalAssert(v69, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 1007);
        *v80 = byte_287529580;
        if (SHIBYTE(v81) < 0)
        {
          operator delete(*&v80[8]);
        }

        if (SHIBYTE(v79) < 0)
        {
          operator delete(v78[0]);
        }

        v70 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v80, &byte_262899963);
        *v70 = byte_287529580;
        v71 = (v70 + 1);
        if ((v80[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v71, *v80, *&v80[8]);
        }

        else
        {
          v74 = *v80;
          v70[3] = *&v80[16];
          *&v71->__r_.__value_.__l.__data_ = v74;
        }

        *v70 = &unk_287527330;
      }
    }
  }
}

void sub_2625946D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, void *a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v27)
  {
LABEL_6:
    if (LOBYTE(STACK[0x490]) == 1 && a27 != v29 && a27)
    {
      MEMORY[0x26672B1B0]();
    }

    if (SLOBYTE(STACK[0x4AF]) < 0)
    {
      operator delete(STACK[0x498]);
    }

    v31 = STACK[0x4B0];
    if (STACK[0x4B0])
    {
      STACK[0x4B8] = v31;
      operator delete(v31);
    }

    std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x4C8], STACK[0x4D0]);
    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

void sub_262594820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, void *a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (a32 < 0)
  {
    operator delete(__p);
    if ((v37 & 1) == 0)
    {
LABEL_6:
      if (SLOBYTE(STACK[0x4AF]) < 0)
      {
        operator delete(STACK[0x498]);
      }

      v39 = STACK[0x4B0];
      if (STACK[0x4B0])
      {
        STACK[0x4B8] = v39;
        operator delete(v39);
      }

      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x4C8], STACK[0x4D0]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v37)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v36);
  goto LABEL_6;
}

void sub_2625948A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
    if ((v32 & 1) == 0)
    {
LABEL_6:
      if (a2 == 1)
      {
        __cxa_begin_catch(a1);
        loggableToken(v29, v30);
        tknPrintf("Error : %s%s\n", v35);
        if (a29 < 0)
        {
          operator delete(__p);
        }

        __cxa_rethrow();
      }

      if (SLOBYTE(STACK[0x4AF]) < 0)
      {
        operator delete(STACK[0x498]);
      }

      v36 = STACK[0x4B0];
      if (STACK[0x4B0])
      {
        STACK[0x4B8] = v36;
        operator delete(v36);
      }

      std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x4C8], STACK[0x4D0]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v31);
  goto LABEL_6;
}

void sub_2625948DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, void *a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    loggableToken(v36, v37);
    tknPrintf("Error : %s%s\n", v40);
    if (a32 < 0)
    {
      operator delete(a27);
    }

    __cxa_rethrow();
  }

  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  v41 = STACK[0x4B0];
  if (STACK[0x4B0])
  {
    STACK[0x4B8] = v41;
    operator delete(v41);
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x4C8], STACK[0x4D0]);
  _Unwind_Resume(a1);
}

void sub_262594954(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    JUMPOUT(0x262594968);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    loggableToken(v29, v30, &a24);
    tknPrintf("Error : %s%s\n", v31);
    if (a29 < 0)
    {
      operator delete(a24);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x262594A5CLL);
}

void sub_26259497C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (LOBYTE(STACK[0x490]) == 1)
  {
    TSegmenter::findSegmentEnd(&a24, v31);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    loggableToken(v29, v30);
    tknPrintf("Error : %s%s\n", v34);
    if (a29 < 0)
    {
      operator delete(a24);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x262594A5CLL);
}

void sub_262594A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  __cxa_end_catch();
  if (SLOBYTE(STACK[0x4AF]) < 0)
  {
    operator delete(STACK[0x498]);
  }

  v30 = STACK[0x4B0];
  if (STACK[0x4B0])
  {
    STACK[0x4B8] = v30;
    operator delete(v30);
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(&STACK[0x4C8], STACK[0x4D0]);
  _Unwind_Resume(a1);
}

void sub_262594A48(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x262594A88);
}

uint64_t nextToken(TLexer *a1, uint64_t a2)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 11);
  if (v2 >= (*(a1 + 12) - v3) >> 3)
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    tknPrintf("Error: %s : Unexpected end of file\n", a2, v6);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v22 = byte_287529580;
    if (SHIBYTE(v21) < 0)
    {
      std::string::__init_copy_ctor_external(&v22[8], __p[0], __p[1]);
    }

    else
    {
      *&v22[8] = *__p;
      v23 = v21;
    }

    *v22 = &unk_287527330;
    if (v23 >= 0)
    {
      v12 = &v22[8];
    }

    else
    {
      v12 = *&v22[8];
    }

    conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 211);
    *v22 = byte_287529580;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*&v22[8]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v22, &byte_262899963);
    *exception = byte_287529580;
    v14 = (exception + 1);
    if ((v22[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v14, *v22, *&v22[8]);
    }

    else
    {
      v15 = *v22;
      exception[3] = *&v22[16];
      *&v14->__r_.__value_.__l.__data_ = v15;
    }

    *exception = &unk_287527330;
  }

  *(a1 + 3) = v2 + 1;
  v4 = *(v3 + 8 * v2);
  if (v4 && *v4 == -1)
  {
    loggableToken(a1, v4);
    v7 = v22[23];
    v8 = *v22;
    loggableUnicode(*(v4 + 8), __p);
    if (v7 >= 0)
    {
      v10 = v22;
    }

    else
    {
      v10 = v8;
    }

    if (v21 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    tknPrintf("Error: %sFound unexpected token '%s'\n", v9, v10, v11);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v22[23] & 0x80000000) != 0)
    {
      operator delete(*v22);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v22 = byte_287529580;
    if (SHIBYTE(v21) < 0)
    {
      std::string::__init_copy_ctor_external(&v22[8], __p[0], __p[1]);
    }

    else
    {
      *&v22[8] = *__p;
      v23 = v21;
    }

    *v22 = &unk_287527330;
    if (v23 >= 0)
    {
      v16 = &v22[8];
    }

    else
    {
      v16 = *&v22[8];
    }

    conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 219);
    *v22 = byte_287529580;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*&v22[8]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    v17 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v22, &byte_262899963);
    *v17 = byte_287529580;
    v18 = (v17 + 1);
    if ((v22[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v18, *v22, *&v22[8]);
    }

    else
    {
      v19 = *v22;
      v17[3] = *&v22[16];
      *&v18->__r_.__value_.__l.__data_ = v19;
    }

    *v17 = &unk_287527330;
  }

  return *(v3 + 8 * v2);
}

{
  v2 = *(a1 + 3);
  v3 = *(a1 + 11);
  if (v2 >= (*(a1 + 12) - v3) >> 3)
  {
    if (*(a1 + 23) >= 0)
    {
      v6 = a1;
    }

    else
    {
      v6 = *a1;
    }

    tknPrintf("Error: %s : Unexpected end of file\n", a2, v6);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v22 = byte_287529580;
    if (SHIBYTE(v21) < 0)
    {
      std::string::__init_copy_ctor_external(&v22[8], __p[0], __p[1]);
    }

    else
    {
      *&v22[8] = *__p;
      v23 = v21;
    }

    *v22 = &unk_287527330;
    if (v23 >= 0)
    {
      v12 = &v22[8];
    }

    else
    {
      v12 = *&v22[8];
    }

    conditionalAssert(v12, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 457);
    *v22 = byte_287529580;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*&v22[8]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v22, &byte_262899963);
    *exception = byte_287529580;
    v14 = (exception + 1);
    if ((v22[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v14, *v22, *&v22[8]);
    }

    else
    {
      v15 = *v22;
      exception[3] = *&v22[16];
      *&v14->__r_.__value_.__l.__data_ = v15;
    }

    *exception = &unk_287527330;
  }

  *(a1 + 3) = v2 + 1;
  v4 = *(v3 + 8 * v2);
  if (v4 && *v4 == -1)
  {
    loggableToken(a1, v4);
    v7 = v22[23];
    v8 = *v22;
    loggableUnicode(*(v4 + 8), __p);
    if (v7 >= 0)
    {
      v10 = v22;
    }

    else
    {
      v10 = v8;
    }

    if (v21 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    tknPrintf("Error: %sSyntax error, found unexpected token '%s'\n", v9, v10, v11);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v22[23] & 0x80000000) != 0)
    {
      operator delete(*v22);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *v22 = byte_287529580;
    if (SHIBYTE(v21) < 0)
    {
      std::string::__init_copy_ctor_external(&v22[8], __p[0], __p[1]);
    }

    else
    {
      *&v22[8] = *__p;
      v23 = v21;
    }

    *v22 = &unk_287527330;
    if (v23 >= 0)
    {
      v16 = &v22[8];
    }

    else
    {
      v16 = *&v22[8];
    }

    conditionalAssert(v16, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 465);
    *v22 = byte_287529580;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*&v22[8]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    v17 = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(v22, &byte_262899963);
    *v17 = byte_287529580;
    v18 = (v17 + 1);
    if ((v22[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v18, *v22, *&v22[8]);
    }

    else
    {
      v19 = *v22;
      v17[3] = *&v22[16];
      *&v18->__r_.__value_.__l.__data_ = v19;
    }

    *v17 = &unk_287527330;
  }

  return *(v3 + 8 * v2);
}

void sub_262594E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v28 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v27);
  goto LABEL_6;
}

void TSyntaxException::~TSyntaxException(void **this)
{
  *this = &unk_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = byte_287529580;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

void *compileCode(TLexer *a1, const void **a2, uint64_t a3, uint64_t *a4)
{
  nextToken(a1, a2);
  while (1)
  {
    result = nextToken(a1, v8);
    if (*result == 13)
    {
      break;
    }

    v10 = *(a1 + 3);
    if (v10)
    {
      *(a1 + 3) = v10 - 1;
    }

    compileInstruction(a1, a2, a3, a4);
  }

  return result;
}

void TGrammarCompiler::loadRules(void *a1, TLexer *a2, uint64_t a3)
{
  if (*(a2 + 3) < ((*(a2 + 12) - *(a2 + 11)) >> 3))
  {
    TGrammarCompiler::loadRule(a1, a2, a3);
  }
}

void sub_262595688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v19)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_2625956BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TGrammarCompiler::registerRules(uint64_t a1, TInputStream *this, uint64_t a3)
{
  if (*(this + 8) == 1)
  {
    if (TInputStream::verifyVersion(this, "GrammarFormatVersion", 2uLL, 2uLL, 2uLL))
    {
      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(&v9, &byte_262899963);
      *exception = byte_287529580;
      v7 = (exception + 1);
      if (SHIBYTE(v10) < 0)
      {
        std::string::__init_copy_ctor_external(v7, v9, *(&v9 + 1));
      }

      else
      {
        v8 = v9;
        exception[3] = v10;
        *&v7->__r_.__value_.__l.__data_ = v8;
      }

      *exception = &unk_287528000;
    }

    TLexer::TLexer(&v9, this, 1uLL, *(a1 + 64), 0);
    TGrammarCompiler::loadRules(a1, &v9, a3);
    TLexer::~TLexer(&v9);
  }
}

void sub_262595830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

TLexerLexicon *TGrammarCompiler::finalize(TGrammarCompiler *this)
{
  v2 = *(this + 7);
  v12 = v2;
  v13 = 0;
  TGrammar::forEachNonTerminal<TIntegrityChecker>(v2, &v12);
  TGrammar::forEachTerminal<TIntegrityChecker>(v2, &v12);
  if (v13 == 1)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v9) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v8[0], v8[1]);
    }

    else
    {
      *&__p[8] = *v8;
      v11 = v9;
    }

    *__p = &unk_287526298;
    if (v11 >= 0)
    {
      v4 = &__p[8];
    }

    else
    {
      v4 = *&__p[8];
    }

    conditionalAssert(v4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/gramcomp.cpp", 1080);
    *__p = byte_287529580;
    if (SHIBYTE(v11) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v6 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v6, *__p, *&__p[8]);
    }

    else
    {
      v7 = *__p;
      exception[3] = *&__p[16];
      *&v6->__r_.__value_.__l.__data_ = v7;
    }

    *exception = &unk_287526298;
  }

  TGrammar::finalize(*(this + 7));
  result = *(this + 8);
  if (result)
  {
    TLexerLexicon::~TLexerLexicon(result);
    result = MEMORY[0x26672B1B0]();
  }

  *(this + 8) = 0;
  return result;
}

void sub_262595A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
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

uint64_t TGrammarCompiler::getAttributeValue(void *a1, __int32 *a2, TAllocator *a3, _BYTE *a4)
{
  if (!wcscmp(a2, dword_26286C3E8))
  {
    v21 = v23;
    v22 = xmmword_26286B6F0;
    v24 = 1;
    v10 = a1[1];
    {
      operator new();
    }

    TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v10, &v21, 0);
    if ((*(&v22 + 1) + 1) >> 62)
    {
      v11 = -1;
    }

    else
    {
      v11 = 4 * (*(&v22 + 1) + 1);
    }

    v12 = TAllocator::allocate(a3, v11);
    if (*(&v22 + 1) >= v22)
    {
      if (v24)
      {
        v25 = 0;
        TBuffer<wchar_t>::insert(&v21, *(&v22 + 1), &v25, 1uLL);
        v13 = v21;
        --*(&v22 + 1);
      }

      else
      {
        v13 = v21;
        if (v22)
        {
          v21[v22 - 1] = 0;
        }
      }
    }

    else
    {
      v13 = v21;
      v21[*(&v22 + 1)] = 0;
    }

    wcscpy(v12, v13);
    if (a4)
    {
      *a4 = 1;
    }

    if (v24 != 1)
    {
      return 1;
    }

    v20 = v21;
    if (v21 == v23)
    {
      return 1;
    }

LABEL_41:
    if (v20)
    {
      MEMORY[0x26672B1B0](v20, 0x1000C4052888210);
    }

    return 1;
  }

  if (!wcscmp(a2, dword_26286C400))
  {
    v21 = v23;
    v22 = xmmword_26286B6F0;
    v24 = 1;
    v14 = a1[1];
    v15 = a1[2];
    {
      operator new();
    }

    TLocaleInfo::valueToString(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v15 + v14, &v21, 0);
    if ((*(&v22 + 1) + 1) >> 62)
    {
      v16 = -1;
    }

    else
    {
      v16 = 4 * (*(&v22 + 1) + 1);
    }

    v17 = TAllocator::allocate(a3, v16);
    if (*(&v22 + 1) >= v22)
    {
      if (v24)
      {
        v25 = 0;
        TBuffer<wchar_t>::insert(&v21, *(&v22 + 1), &v25, 1uLL);
        v18 = v21;
        --*(&v22 + 1);
      }

      else
      {
        v18 = v21;
        if (v22)
        {
          v21[v22 - 1] = 0;
        }
      }
    }

    else
    {
      v18 = v21;
      v21[*(&v22 + 1)] = 0;
    }

    wcscpy(v17, v18);
    if (a4)
    {
      *a4 = 1;
    }

    if (v24 != 1)
    {
      return 1;
    }

    v20 = v21;
    if (v21 == v23)
    {
      return 1;
    }

    goto LABEL_41;
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = (*(v8 + 16) + 8 * a1[4]);
  }

  else
  {
    v9 = a1 + 6;
  }

  if ((*(*v9 + 8) & 4) != 0 || wcscmp(a2, dword_26286C410))
  {
    return getAttributeValue(a2, a1[5], a4);
  }

  if (a4)
  {
    *a4 = 1;
  }

  return 1;
}

void sub_262595E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x26672B1B0](v10, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v11)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t getAttributeValue(__int32 *a1, uint64_t *a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (!a2)
  {
    return 1;
  }

  v5 = *a2;
  if (!*a2)
  {
    return 1;
  }

  v6 = a2 + 1;
  v7 = 1;
  while (wcscmp(a1, *v5))
  {
    v8 = *v6++;
    v5 = v8;
    if (!v8)
    {
      return v7;
    }
  }

  if (a3)
  {
    *a3 = 1;
  }

  return *(v5 + 8);
}

uint64_t TGrammarCompiler::compareData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  v4 = *(a3 + 40);
  if (v3)
  {
    v5 = *v3;
    if (*v3)
    {
      v6 = 0;
      v7 = v3 + 1;
      while (1)
      {
        v8 = *(v5 + 8);
        if (!v8)
        {
          goto LABEL_7;
        }

        if (v8 != 1)
        {
          break;
        }

        if (**(v5 + 16))
        {
          goto LABEL_7;
        }

LABEL_8:
        v9 = *v7++;
        v5 = v9;
        if (!v9)
        {
          goto LABEL_13;
        }
      }

      if (!*(v5 + 16))
      {
        goto LABEL_8;
      }

LABEL_7:
      ++v6;
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_13:
  if (v4)
  {
    v10 = *v4;
    if (*v4)
    {
      v11 = 0;
      v12 = v4 + 1;
      while (1)
      {
        v13 = *(v10 + 8);
        if (v13)
        {
          if (v13 == 1)
          {
            if (!**(v10 + 16))
            {
              goto LABEL_28;
            }
          }

          else if (!*(v10 + 16))
          {
            goto LABEL_28;
          }
        }

        if (getAttributeValue(*v10, v3, 0) != v13)
        {
          goto LABEL_32;
        }

        if (v13)
        {
          if (v13 == 1)
          {
            if (wcscmp(v14, *(v10 + 16)))
            {
              goto LABEL_32;
            }
          }

          else if (*(v10 + 16) != v14)
          {
LABEL_32:
            v16 = 0;
            goto LABEL_33;
          }
        }

        ++v11;
LABEL_28:
        v15 = *v12++;
        v10 = v15;
        if (!v15)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v11 = 0;
LABEL_31:
  v16 = 1;
LABEL_33:
  if (v6 == v11)
  {
    return v16;
  }

  else
  {
    return 0;
  }
}

void *TGrammarCompiler::logData(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "{ ", 2);
  if (v4)
  {
    v5 = *v4;
    if (*v4)
    {
      v6 = v4 + 1;
      do
      {
        v7 = *(v5 + 8);
        v8 = operator<<(a3, *v5);
        if (v7 == 1)
        {
          v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " = ", 4);
          v8 = operator<<(v9, *(*(v6 - 1) + 16));
          v10 = "; ";
          v11 = 3;
        }

        else
        {
          v10 = " = [non-serializable object]; ";
          v11 = 30;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
        v12 = *v6++;
        v5 = v12;
      }

      while (v12);
    }
  }

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "}", 1);
}

void TGrammarCompiler::makeData(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v181 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  *(a2 + 424) = 0;
  v3 = *(*(a2 + 408) + 40);
  v5 = (v3 + 1);
  v4 = *v3;
  memset(__src, 0, 512);
  __p = 0;
  v172 = 0;
  v173 = 0;
  std::vector<TGrammarCompiler::TArgument>::resize(&__p, 0);
  if (v4 < 2)
  {
    goto LABEL_398;
  }

  v164 = v2 + 8;
  v168 = v3;
  v169 = v4;
  v167 = v2;
  while (1)
  {
    v8 = *v5;
    if (*v5 > 6)
    {
      if (v8 > 8)
      {
        if ((v8 - 9) < 2)
        {
          if (*(v172 - 2) == 1)
          {
            AttributeValue = 0;
            v16 = *(v172 - 1);
            {
              operator new();
            }

            DigitExtended = TLocaleInfo::stringToInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v16, &AttributeValue);
            v17 = DigitExtended != 0;
            v8 = *v5;
          }

          else
          {
            v17 = *(v172 - 1) != 0;
          }

          if (v17 != (v8 != 10))
          {
LABEL_35:
            v5 += 4 * *(v5 + 4);
            goto LABEL_111;
          }

          goto LABEL_110;
        }

        if (v8 == 12)
        {
          v21 = v172;
          if (*(v172 - 2) == 1)
          {
            AttributeValue = 0;
            v22 = *(v172 - 1);
            {
              operator new();
            }

            v23 = TLocaleInfo::stringToInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v22, &AttributeValue);
            v21 = v172;
          }

          else
          {
            v23 = *(v172 - 1) != 0;
          }

          v172 = v21 - 16;
          v45 = &unk_26286C434;
          if (v23)
          {
            v45 = &unk_26286C42C;
          }

          AttributeValue = 1;
          *&v175 = v45;
          std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &AttributeValue);
          goto LABEL_110;
        }

        if (v8 != 11)
        {
          goto LABEL_111;
        }

        goto LABEL_397;
      }

      if (v8 == 7)
      {
        v172 -= 16;
        v5 += 4;
        goto LABEL_111;
      }

      if (v8 == 8)
      {
        goto LABEL_35;
      }

      goto LABEL_111;
    }

    if (v8 > 3)
    {
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          if (v8 == 6)
          {
            v18 = wcslen((v5 + 4));
            AttributeValue = getAttributeValue((v5 + 4), __src, 0);
            *&v175 = v19;
            std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &AttributeValue);
            v20 = v5 + 4 + 4 * v18;
            goto LABEL_64;
          }

          goto LABEL_111;
        }

        v38 = (v5 + 4);
        v39 = wcslen((v5 + 4));
        v40 = v172 - 16;
        v41 = *(v2 + 416);
        v42 = *&__src[0];
        if (*&__src[0])
        {
          v43 = 0;
          while (1)
          {
            DigitExtended = wcscmp(*v42, v38);
            if (!DigitExtended)
            {
              break;
            }

            v44 = v43 + 1;
            v42 = *(__src + ++v43);
            if (!v42)
            {
              goto LABEL_69;
            }
          }

          *(v42 + 8) = *v40;
        }

        else
        {
          v44 = 0;
LABEL_69:
          DigitExtended = TAllocator::allocate(v41, 24);
          *DigitExtended = v38;
          v54 = __src + v44;
          *(DigitExtended + 8) = *v40;
          *v54 = DigitExtended;
          v54[1] = 0;
        }

        v3 = v168;
        v4 = v169;
        v5 = &v38[v39 + 1];
        v172 -= 16;
        goto LABEL_111;
      }

      v36 = *(v5 + 12);
      if (v36)
      {
        v37 = __p + 16 * (((v172 - __p) >> 4) - v36);
      }

      else
      {
        v37 = 0;
      }

      AttributeValue = (*(*(v5 + 4) + 24))(v37, *(v5 + 12), *(*(v5 + 4) + 48), *(*(v5 + 4) + 56), *(v2 + 416));
      *&v175 = v53;
      if (AttributeValue)
      {
        std::vector<TGrammarCompiler::TArgument>::resize(&__p, ((v172 - __p) >> 4) - v36);
        std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &AttributeValue);
        v5 += 16;
        goto LABEL_111;
      }

      goto LABEL_397;
    }

    if (v8 == 1)
    {
      v24 = *(v5 + 4);
      v25 = (v5 + 8);
      v26 = (v5 + 8 + 4 * wcslen((v5 + 8)) + 4);
      v27 = wcslen(v26);
      if (*(v172 - 2) < 2uLL)
      {
        v28 = v27;
        v29 = *(v172 - 1);
        v172 -= 16;
        v178[0] = 0;
        {
          operator new();
        }

        v30 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v29, v178);
        v31 = *(v2 + 408);
        v32 = *(v31 + 8);
        v33 = v32 - 1;
        if (v32 - 1 < v30)
        {
          goto LABEL_30;
        }

        if (!wcscmp(v25, "R"))
        {
          if (v24)
          {
            v48 = v33 + ~v30;
          }

          else
          {
            v48 = v30;
          }

          goto LABEL_85;
        }

        if (v32 == 1)
        {
LABEL_30:
          v34 = &unk_26286C650;
          v35 = 1;
          v2 = v167;
LABEL_62:
          v4 = v169;
          goto LABEL_63;
        }

        v47 = 0;
        v48 = 0;
        v49 = *(v31 + 16);
        v50 = v32 - 2;
        while (1)
        {
          if (v24)
          {
            v51 = v50;
          }

          else
          {
            v51 = v48;
          }

          v52 = *(v49 + 8 * v51);
          if ((*(v52 + 8) & 4) == 0 && !wcscmp(v25, *(v52 + 16)))
          {
            if (v47 == v30)
            {
              v3 = v168;
LABEL_85:
              v2 = v167;
              v4 = v169;
              if (v48 == v33 || (v59 = *(v164 + 8 * v48)) == 0)
              {
                v34 = &unk_26286C650;
                v35 = 1;
              }

              else
              {
                v35 = TGrammarCompiler::getAttributeValue(v59, v26, *(v167 + 416), 0);
              }

LABEL_63:
              AttributeValue = v35;
              *&v175 = v34;
              std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &AttributeValue);
              v20 = &v26[v28];
LABEL_64:
              v5 = v20 + 4;
              goto LABEL_111;
            }

            ++v47;
          }

          ++v48;
          --v50;
          if (v33 == v48)
          {
            v34 = &unk_26286C650;
            v35 = 1;
            v2 = v167;
            v3 = v168;
            goto LABEL_62;
          }
        }
      }

      goto LABEL_397;
    }

    if (v8 == 2)
    {
      AttributeValue = 1;
      *&v175 = v5 + 4;
      std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &AttributeValue);
      DigitExtended = wcslen(v5);
      v20 = v5 + 4 * DigitExtended;
      goto LABEL_64;
    }

    if (v8 == 3)
    {
      break;
    }

LABEL_111:
    if (v4 <= (v5 - v3) >> 2)
    {
      if (*&__src[0])
      {
        v147 = 0;
          ;
        }

        v149 = 8 * v147;
        if (v147 >> 61)
        {
          v150 = -1;
        }

        else
        {
          v150 = 8 * v147;
        }

        v151 = TAllocator::allocate(*(v2 + 416), v150);
        memcpy(v151, __src, v149);
        *v2 = v151;
      }

      goto LABEL_398;
    }
  }

  v9 = *(v172 - 2);
  v10 = *(v172 - 1);
  v172 -= 16;
  v11 = *(v172 - 1);
  v12 = *(v172 - 2);
  v172 -= 16;
  v13 = *(v5 + 4);
  if (v12 > 1)
  {
    v14 = v11 != 0;
    if (v9 == 1)
    {
      v15 = *v10 == 0;
      goto LABEL_94;
    }

LABEL_93:
    v15 = v10 == 0;
LABEL_94:
    v60 = !v15;
    if (v13 > 15)
    {
      if (v13 == 17)
      {
        goto LABEL_106;
      }

      if (v13 != 16)
      {
        goto LABEL_396;
      }
    }

    else if (v13 != 10)
    {
      if (v13 != 11)
      {
LABEL_396:
        tknPrintf("Error: invalid operator used on objects\n", v7);
        goto LABEL_397;
      }

LABEL_106:
      if (v14 != v60)
      {
        v58 = &unk_26286C434;
      }

      else
      {
        v58 = &unk_26286C42C;
      }

LABEL_109:
      *&v170 = 1;
      *(&v170 + 1) = v58;
      std::vector<TGrammarCompiler::TArgument>::push_back[abi:ne200100](&__p, &v170);
LABEL_110:
      v5 += 8;
      goto LABEL_111;
    }

    if (v14 != v60)
    {
      v58 = &unk_26286C42C;
    }

    else
    {
      v58 = &unk_26286C434;
    }

    goto LABEL_109;
  }

  if (v9 >= 2)
  {
    if (v12 == 1)
    {
      v46 = *v11 == 0;
    }

    else
    {
      v46 = v11 == 0;
    }

    v14 = !v46;
    goto LABEL_93;
  }

  v163 = *(v2 + 416);
  if (v13 <= 15)
  {
    if (v13 <= 13)
    {
      if (v13 == 1)
      {
        AttributeValue = 0;
        {
          operator new();
        }

        v63 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v10, &AttributeValue);
        v64 = wcslen(v11);
        v65 = v63 - v64;
        if (v63 <= v64)
        {
          v3 = v168;
        }

        else
        {
          v66 = TAllocator::allocate(v163, 4 * v63 + 4);
          v3 = v168;
          v67 = v66;
          memset_pattern16(v66, "0", 4 * v65);
          wcscpy(&v67[v65], v11);
          v11 = v67;
        }

        v58 = v11;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_150;
        }

        v55 = wcslen(v11);
        v56 = v55 + wcslen(v10) + 1;
        if (v56 >> 62)
        {
          v57 = -1;
        }

        else
        {
          v57 = 4 * v56;
        }

        v58 = TAllocator::allocate(v163, v57);
        wcscpy(v58, v11);
        wcscpy(&v58[v55], v10);
      }

      goto LABEL_109;
    }

    if (v13 == 14)
    {
      if (wcscmp(v11, v10) <= 0)
      {
        v58 = &unk_26286C42C;
      }

      else
      {
        v58 = &unk_26286C434;
      }

      goto LABEL_109;
    }

    v62 = wcscmp(v11, v10) < 0;
LABEL_137:
    if (v62)
    {
      v58 = &unk_26286C434;
    }

    else
    {
      v58 = &unk_26286C42C;
    }

    goto LABEL_109;
  }

  if (v13 <= 17)
  {
    if (v13 == 16)
    {
      if (!wcscmp(v11, v10))
      {
        v58 = &unk_26286C434;
      }

      else
      {
        v58 = &unk_26286C42C;
      }

      goto LABEL_109;
    }

    v61 = wcscmp(v11, v10);
LABEL_116:
    if (v61)
    {
      v58 = &unk_26286C434;
    }

    else
    {
      v58 = &unk_26286C42C;
    }

    goto LABEL_109;
  }

  if (v13 == 18)
  {
    v62 = wcscmp(v11, v10) < 1;
    goto LABEL_137;
  }

  if (v13 == 19)
  {
    if (wcscmp(v11, v10) < 0)
    {
      v58 = &unk_26286C42C;
    }

    else
    {
      v58 = &unk_26286C434;
    }

    goto LABEL_109;
  }

  do
  {
LABEL_150:
    v68 = v11;
    v69 = *v11;
    if (!*v11)
    {
      break;
    }

    ++v11;
    if (!v68[1])
    {
      break;
    }

    {
      operator new();
    }

    DigitExtended = v69 - 48;
    if (v69 < 48)
    {
      break;
    }

    if (v69 > 0x39)
    {
      if (v69 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v69);
    }
  }

  while (!DigitExtended);
  v165 = 0;
  for (i = 0; ; ++i)
  {
    v71 = v68[i];
    {
      if (DigitExtended)
      {
        operator new();
      }
    }

    if (v71 < 48)
    {
      break;
    }

    if (v71 >= 0x3A)
    {
      if (v71 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v71);
      if (DigitExtended == -1)
      {
        break;
      }
    }

    ++v165;
  }

  if (i <= 1)
  {
    v72 = 1;
  }

  else
  {
    v72 = i;
  }

  v162 = v72;
  v73 = &unk_26286C42C;
  if (i)
  {
    v73 = v68;
  }

  v160 = v73;
  do
  {
    v74 = v10;
    v75 = *v10;
    if (!*v10)
    {
      break;
    }

    ++v10;
    if (!v74[1])
    {
      break;
    }

    {
      operator new();
    }

    DigitExtended = (v75 - 48);
    if (v75 < 48)
    {
      break;
    }

    if (v75 > 0x39)
    {
      if (v75 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v75);
    }
  }

  while (!DigitExtended);
  v166 = 0;
  for (j = 0; ; ++j)
  {
    v77 = v74[j];
    {
      if (DigitExtended)
      {
        operator new();
      }
    }

    if (v77 < 48)
    {
      break;
    }

    if (v77 >= 0x3A)
    {
      if (v77 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v77);
      if (DigitExtended == -1)
      {
        break;
      }
    }

    ++v166;
  }

  if (j <= 1)
  {
    v78 = 1;
  }

  else
  {
    v78 = j;
  }

  v159 = v78;
  v79 = &unk_26286C42C;
  if (j)
  {
    v79 = v74;
  }

  v161 = v79;
  if (v13 > 8)
  {
    if (v13 <= 10)
    {
      if (v13 == 9)
      {
        if (j <= v162 && (v162 != v159 || (wcsncmp(v160, v79, v162) & 0x80000000) == 0))
        {
          goto LABEL_330;
        }
      }

      else if (v162 != v159 || wcsncmp(v160, v79, v162))
      {
        goto LABEL_330;
      }

      goto LABEL_278;
    }

    switch(v13)
    {
      case 0xB:
        if (v162 == v159)
        {
          v61 = wcsncmp(v160, v79, v162);
          goto LABEL_116;
        }

        goto LABEL_278;
      case 0xC:
        if (j <= v162 && (v162 != v159 || wcsncmp(v160, v79, v162) >= 1))
        {
          goto LABEL_330;
        }

        goto LABEL_278;
      case 0xD:
        if (i <= v159 && (v162 != v159 || wcsncmp(v160, v79, v162) < 0))
        {
          goto LABEL_330;
        }

LABEL_278:
        v58 = &unk_26286C434;
        goto LABEL_109;
    }

    goto LABEL_350;
  }

  if (v13 > 4)
  {
    if (v13 != 5)
    {
      if (v13 == 8)
      {
        if (i <= v159 && (v162 != v159 || wcsncmp(v160, v79, v162) <= 0))
        {
          goto LABEL_330;
        }

        goto LABEL_278;
      }

      goto LABEL_350;
    }

    if (j > v162 || v162 == v159 && (DigitExtended = wcsncmp(v160, v79, v162), (DigitExtended & 0x80000000) != 0))
    {
      v58 = v160;
      goto LABEL_109;
    }

    v113 = *v161;
    DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    v114 = v113 - 48;
    if (v113 >= 48)
    {
      if (v113 > 0x39)
      {
        if (v113 < 0x660)
        {
          goto LABEL_331;
        }

        DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v113);
        v114 = DigitExtended;
      }

      if (v114 == 1)
      {
        v115 = v161 + 1;
        do
        {
          v116 = v115;
          v117 = *v115;
          GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
          DigitExtended = v117 - 48;
          if (v117 < 48)
          {
            break;
          }

          if (v117 > 0x39)
          {
            if (v117 < 0x660)
            {
              break;
            }

            DigitExtended = TLocaleInfo::getDigitExtended(GlobalLocaleInfo, v117);
          }

          v115 = v116 + 1;
        }

        while (!DigitExtended);
        v119 = *v116;
        DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
        if (v119 >= 48)
        {
          if (v119 < 0x3A)
          {
            goto LABEL_350;
          }

          if (v119 >= 0x660)
          {
            DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v119);
            if (DigitExtended != -1)
            {
              goto LABEL_350;
            }
          }
        }

        if (v159 != 1)
        {
          v120 = 0;
          v121 = v166;
          if (v166 <= 1)
          {
            v121 = 1;
          }

          v122 = v121 - 1;
          v123 = 4 * (v121 - 1);
          if (v165 <= 1uLL)
          {
            v124 = 1;
          }

          else
          {
            v124 = v165;
          }

          v125 = &v160[v124 - v122];
          while (1)
          {
            v126 = *(v125 + 4 * v120);
            DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
            v127 = v126 - 48;
            if (v126 < 48)
            {
              break;
            }

            if (v126 > 0x39)
            {
              if (v126 < 0x660)
              {
                break;
              }

              DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v126);
              v127 = DigitExtended;
            }

            if (v127)
            {
              break;
            }

            v123 -= 4;
            ++v120;
            v58 = &unk_26286C42C;
            if (v122 == v120)
            {
              goto LABEL_109;
            }
          }

          v141 = v166;
          if (v166 <= 1uLL)
          {
            v141 = 1;
          }

          if (v165 <= 1uLL)
          {
            v142 = 1;
          }

          else
          {
            v142 = v165;
          }

          v143 = TAllocator::allocate(v163, 4 * (v141 - v120));
          v58 = v143;
          v144 = v166;
          if (v166 <= 1)
          {
            v144 = 1;
          }

          wcsncpy(v143, &v160[v142 + v123 / 0xFFFFFFFFFFFFFFFCLL], (v144 - 1) - v120);
          v58[v123 / 4] = 0;
          goto LABEL_109;
        }

        goto LABEL_330;
      }
    }

LABEL_331:
    if (j > 1 || i < 3)
    {
      goto LABEL_350;
    }

    v128 = *v161;
    DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    if (v128 <= 47)
    {
      goto LABEL_349;
    }

    if (v128 > 0x39)
    {
      if (v128 <= 0x65F)
      {
        goto LABEL_349;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v128);
    }

    else
    {
      DigitExtended = v128 - 48;
    }

    if (DigitExtended == 2)
    {
LABEL_348:
      v160 = &v68[(i - 1)];
      goto LABEL_352;
    }

    if (DigitExtended != 4)
    {
      if (DigitExtended == 5)
      {
        goto LABEL_348;
      }

LABEL_349:
      LODWORD(v162) = i;
      goto LABEL_350;
    }

    v160 = &v68[(i - 2)];
    v145 = *v160;
    DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    v146 = v145 - 48;
    if (v145 >= 48)
    {
      if (v145 > 0x39)
      {
        v3 = v168;
        v4 = v169;
        if (v145 < 0x660)
        {
          goto LABEL_352;
        }

        DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v145);
        v146 = DigitExtended;
      }

      v160 = &v68[(v146 == 0) + (i - 2)];
    }

    v3 = v168;
    v4 = v169;
LABEL_352:
    v178[0] = 0;
    v132 = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    v133 = TLocaleInfo::stringToUInt(v132, v160, v178);
    v134 = v133;
    v135 = TLocaleInfo::getGlobalLocaleInfo(v133);
    v136 = TLocaleInfo::stringToUInt(v135, v161, v178);
    if (v13 <= 4)
    {
      if (v13 == 3)
      {
        v137 = v136 * v134;
      }

      else
      {
        if (v13 != 4 || !v136)
        {
          goto LABEL_397;
        }

        v137 = v134 / v136;
      }
    }

    else if (v13 == 7)
    {
      if (v134 < v136)
      {
        goto LABEL_397;
      }

      v137 = v134 - v136;
    }

    else if (v13 == 6)
    {
      v137 = v136 + v134;
    }

    else
    {
      if (v13 != 5 || !v136)
      {
        goto LABEL_397;
      }

      v137 = v134 % v136;
    }

    AttributeValue = v176;
    v175 = xmmword_26286B6F0;
    v177 = 1;
    v138 = TLocaleInfo::getGlobalLocaleInfo(v136);
    TLocaleInfo::valueToString(v138, v137, &AttributeValue, 0);
    if ((*(&v175 + 1) + 1) >> 62)
    {
      v139 = -1;
    }

    else
    {
      v139 = 4 * (*(&v175 + 1) + 1);
    }

    v58 = TAllocator::allocate(v163, v139);
    v140 = TBuffer<wchar_t>::c_str(&AttributeValue);
    wcscpy(v58, v140);
    if (v177 == 1 && AttributeValue != v176 && AttributeValue)
    {
      MEMORY[0x26672B1B0]();
    }

    goto LABEL_109;
  }

  if (v13 == 3)
  {
    v80 = *v160;
    v81 = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    v82 = v80 - 48;
    if (v80 >= 48)
    {
      if (v80 <= 0x39)
      {
        goto LABEL_226;
      }

      if (v80 >= 0x660)
      {
        v81 = TLocaleInfo::getDigitExtended(v81, v80);
        v82 = v81;
LABEL_226:
        if (!v82)
        {
          goto LABEL_330;
        }
      }
    }

    v83 = *v161;
    v84 = TLocaleInfo::getGlobalLocaleInfo(v81);
    v85 = v83 - 48;
    if (v83 < 48)
    {
      goto LABEL_232;
    }

    if (v83 > 0x39)
    {
      if (v83 < 0x660)
      {
        goto LABEL_232;
      }

      v84 = TLocaleInfo::getDigitExtended(v84, v83);
      v85 = v84;
    }

    if (v85)
    {
LABEL_232:
      v86 = *v161;
      v87 = TLocaleInfo::getGlobalLocaleInfo(v84);
      v88 = v86 - 48;
      if (v86 >= 48)
      {
        if (v86 > 0x39)
        {
          if (v86 < 0x660)
          {
            goto LABEL_247;
          }

          v87 = TLocaleInfo::getDigitExtended(v87, v86);
          v88 = v87;
        }

        if (v88 == 1)
        {
          v89 = v161 + 1;
          do
          {
            v90 = v89;
            v91 = *v89;
            v92 = TLocaleInfo::getGlobalLocaleInfo(v87);
            v87 = v91 - 48;
            if (v91 < 48)
            {
              break;
            }

            if (v91 > 0x39)
            {
              if (v91 < 0x660)
              {
                break;
              }

              v87 = TLocaleInfo::getDigitExtended(v92, v91);
            }

            v89 = v90 + 1;
          }

          while (!v87);
          v93 = *v90;
          v87 = TLocaleInfo::getGlobalLocaleInfo(v87);
          if (v93 < 48 || v93 >= 0x3A && (v93 < 0x660 || (v87 = TLocaleInfo::getDigitExtended(v87, v93), v87 == -1)))
          {
            v101 = v159 + v162;
            v58 = TAllocator::allocate(v163, 4 * (v159 + v162));
            wcsncpy(v58, v160, v162);
            if (v159 != 1)
            {
              v130 = v165;
              v129 = v166;
              if (v166 <= 1)
              {
                v129 = 1;
              }

              v131 = (v129 - 1);
              if (v165 <= 1)
              {
                v130 = 1;
              }

              do
              {
                v58[v130++] = 48;
                --v131;
              }

              while (v131);
            }

            goto LABEL_342;
          }
        }
      }

LABEL_247:
      v94 = *v160;
      DigitExtended = TLocaleInfo::getGlobalLocaleInfo(v87);
      v95 = v94 - 48;
      if (v94 < 48)
      {
        goto LABEL_350;
      }

      if (v94 > 0x39)
      {
        if (v94 < 0x660)
        {
          goto LABEL_350;
        }

        DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v94);
        v95 = DigitExtended;
      }

      if (v95 != 1)
      {
        goto LABEL_350;
      }

      v96 = (v160 + 1);
      do
      {
        v97 = v96;
        v98 = *v96;
        v99 = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
        DigitExtended = v98 - 48;
        if (v98 < 48)
        {
          break;
        }

        if (v98 > 0x39)
        {
          if (v98 < 0x660)
          {
            break;
          }

          DigitExtended = TLocaleInfo::getDigitExtended(v99, v98);
        }

        v96 = v97 + 1;
      }

      while (!DigitExtended);
      v100 = *v97;
      DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
      if (v100 >= 48)
      {
        if (v100 < 0x3A)
        {
          goto LABEL_350;
        }

        if (v100 >= 0x660)
        {
          DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v100);
          if (DigitExtended != -1)
          {
            goto LABEL_350;
          }
        }
      }

      v101 = v159 + v162;
      v58 = TAllocator::allocate(v163, 4 * (v159 + v162));
      wcsncpy(v58, v161, v159);
      if (v162 != 1)
      {
        v102 = v165;
        v103 = v166;
        if (v165 <= 1)
        {
          v102 = 1;
        }

        v104 = (v102 - 1);
        if (v166 <= 1)
        {
          v103 = 1;
        }

        do
        {
          v58[v103++] = 48;
          --v104;
        }

        while (v104);
      }

LABEL_342:
      v58[v101 - 1] = 0;
      goto LABEL_109;
    }

LABEL_330:
    v58 = &unk_26286C42C;
    goto LABEL_109;
  }

  if (v13 == 4)
  {
    if (j > v162 || (v105 = v162 - v159, v162 == v159) && (DigitExtended = wcsncmp(v160, v79, v162), (DigitExtended & 0x80000000) != 0))
    {
      v58 = TAllocator::allocate(v163, 8);
      *v58 = 48;
      goto LABEL_109;
    }

    v106 = *v161;
    DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
    v107 = v106 - 48;
    if (v106 >= 48)
    {
      if (v106 > 0x39)
      {
        if (v106 < 0x660)
        {
          goto LABEL_350;
        }

        DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v106);
        v107 = DigitExtended;
      }

      if (v107 == 1)
      {
        v108 = v161 + 1;
        do
        {
          v109 = v108;
          v110 = *v108;
          v111 = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
          DigitExtended = v110 - 48;
          if (v110 < 48)
          {
            break;
          }

          if (v110 > 0x39)
          {
            if (v110 < 0x660)
            {
              break;
            }

            DigitExtended = TLocaleInfo::getDigitExtended(v111, v110);
          }

          v108 = v109 + 1;
        }

        while (!DigitExtended);
        v112 = *v109;
        DigitExtended = TLocaleInfo::getGlobalLocaleInfo(DigitExtended);
        if (v112 < 48 || v112 >= 0x3A && (v112 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v112), DigitExtended == -1)))
        {
          v58 = TAllocator::allocate(v163, 4 * (v105 + 2));
          wcsncpy(v58, v160, (v105 + 1));
          v58[v105 + 1] = 0;
          goto LABEL_109;
        }
      }
    }
  }

LABEL_350:
  if (v162 >= 0xA)
  {
    loggableUnicode(v160, &AttributeValue);
    v152 = SHIBYTE(v175);
    v153 = AttributeValue;
    loggableUnicode(v161, v178);
    p_AttributeValue = &AttributeValue;
    if (v152 < 0)
    {
      p_AttributeValue = v153;
    }

    if (v179 >= 0)
    {
      v156 = v178;
    }

    else
    {
      v156 = v178[0];
    }
  }

  else
  {
    if (j < 0xA)
    {
      goto LABEL_352;
    }

    loggableUnicode(v160, &AttributeValue);
    v157 = SHIBYTE(v175);
    v158 = AttributeValue;
    loggableUnicode(v74, v178);
    p_AttributeValue = &AttributeValue;
    if (v157 < 0)
    {
      p_AttributeValue = v158;
    }

    if (v179 >= 0)
    {
      v156 = v178;
    }

    else
    {
      v156 = v178[0];
    }
  }

  tknPrintf("Warning: (%s,%s,%llu)  : Operand out of bounds, overflow\n", v154, p_AttributeValue, v156, v13);
  if (v179 < 0)
  {
    operator delete(v178[0]);
  }

  if (SHIBYTE(v175) < 0)
  {
    operator delete(AttributeValue);
  }

LABEL_397:
  *(v2 + 424) = 1;
LABEL_398:
  if (__p)
  {
    v172 = __p;
    operator delete(__p);
  }
}