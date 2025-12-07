void WordList::deleteWords(EnvMgr **this, uint64_t a2, BOOL *a3)
{
  if (*(a2 + 8))
  {
    v6 = 0;
    do
    {
      v7 = *(*a2 + 4 * v6);
      WordList::verifyValid(this, v7);
      ItemEnvId = EnvMgr::getItemEnvId(this[3], v7);
      if (ItemEnvId)
      {
        EnvMgr::killEnv(this[3], ItemEnvId);
        EnvMgr::setItemEnvId(this[3], v7, 0);
      }

      *(this + 94) ^= WordList::computeWordIdNameChecksum(this, v7);
      *(this + 95) ^= WordList::computeWordIdPronChecksum(this, v7);
      ++v6;
    }

    while (v6 < *(a2 + 8));
  }

  WordIdPronCollArray::removeArray((this + 44), a2);
  DgnCollArray<unsigned int,WordList>::removeArray((this + 34), a2);
  if (*(a2 + 8))
  {
    v9 = 0;
    do
    {
      v10 = *(*a2 + 4 * v9);
      *(this + 16) += *(this[4] + v10);
      if (*(this[32] + v10) == v10)
      {
        --*(this + 96);
        v11 = this[25];
        v12 = this[28];
        *(this + 54) += strlen(v12 + *(v11 + v10)) + 1;
        *(v12 + *(v11 + v10)) = 0;
        if (*(this[4] + v10))
        {
          *(this[9] + *(this[6] + v10)) = *(this[2] + 28);
        }
      }

      WordList::invalidateId(this, v10);
      v13 = *(this + 62);
      if (v13 == *(this + 63))
      {
        DgnPrimArray<unsigned int>::reallocElts((this + 30), 1, 1);
        v13 = *(this + 62);
      }

      *(this[30] + v13) = v10;
      ++*(this + 62);
      ++v9;
    }

    while (v9 < *(a2 + 8));
  }

  if (*(this + 109) || *(this + 16) >= 0x10000u)
  {
    WordList::compact(this);
    if (*(this + 512) == 1)
    {
      TagBitsAndStrings::compact((this + 64));
    }
  }

  v14 = *(this + 72);
  if (!v14)
  {
    WordList::resetWordList(this);
  }

  *a3 = v14 == 0;
}

uint64_t *WordList::getNumProns(uint64_t *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  if (*(this[4] + 2 * a2))
  {
    v4[0] = 0;
    v4[1] = 0;
    WordList::lookupAll(this, this[28] + *(this[25] + 4 * a2), v4, a3, a4);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  }

  else
  {
    *a3 = 0;
    *a4 = 0;
  }

  return this;
}

uint64_t *WordList::getPron(uint64_t *result, unsigned int a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result[4] + 2 * a2);
  v7 = *(a3 + 12);
  if (v6 > v7)
  {
    result = DgnPrimArray<short>::reallocElts(a3, v6 - v7, 0);
  }

  *(a3 + 8) = v6;
  if (v6)
  {
    v8 = (v5[9] + 2 * *(v5[6] + 4 * a2));
    v9 = *a3;
    do
    {
      v10 = *v8++;
      *v9++ = v10;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t WordList::getWordFamilyCollatedSeedableProns(uint64_t a1, unsigned int a2, int a3, unsigned int a4, uint64_t a5)
{
  v23 = 0;
  v24 = 0;
  WordList::lookupAll(a1, *(a1 + 224) + *(*(a1 + 200) + 4 * *(*(a1 + 256) + 4 * a2)), &v23, 0, 0);
  v9 = v24;
  if (v24)
  {
    v10 = 0;
    do
    {
      v11 = *(v23 + 4 * v10);
      if (!a3 || (*(a1 + 392) < 2u ? (v12 = 0) : (v12 = *(*(a1 + 424) + v11)), *(*(*(a1 + 400) + 16 * v12) + a4) == 1))
      {
        v21 = 0;
        v22 = 0;
        WordList::getPronWithWB(a1, v11, &v21);
        v13 = *(a5 + 8);
        if (v13 == *(a5 + 12))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a5, 1, 1);
          v13 = *(a5 + 8);
        }

        v14 = (*a5 + 16 * v13);
        *v14 = 0;
        v14[1] = 0;
        ++*(a5 + 8);
        v15 = v22;
        if (v22)
        {
          v16 = 0;
          do
          {
            v17 = *(*(*(a1 + 8) + 8) + 2 * *(v21 + 2 * v16));
            if (v17 != 0xFFFF)
            {
              v18 = *a5 + 16 * (*(a5 + 8) - 1);
              v19 = *(v18 + 8);
              if (v19 == *(v18 + 12))
              {
                DgnPrimArray<short>::reallocElts(*a5 + 16 * (*(a5 + 8) - 1), 1, 1);
                v19 = *(v18 + 8);
              }

              *(*v18 + 2 * v19) = v17;
              *(v18 + 8) = v19 + 1;
              v15 = v22;
            }

            ++v16;
          }

          while (v16 < v15);
        }

        DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
        v9 = v24;
      }

      ++v10;
    }

    while (v10 < v9);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
}

void sub_26273E9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

DgnString *WordList::phonemesToStr(DgnString *result, uint64_t a2, DgnString *this)
{
  *(this + 2) = 0;
  if (*(a2 + 8))
  {
    v5 = result;
    v6 = 0;
    do
    {
      if (v6)
      {
        DgnString::operator+=(this, ".");
      }

      v7 = *(*(v5 + 2) + 8) + 16 * *(*a2 + 2 * v6);
      if (*(v7 + 8))
      {
        v8 = *v7;
      }

      else
      {
        v8 = &unk_26288C6A6;
      }

      result = DgnString::operator+=(this, v8);
      ++v6;
    }

    while (v6 < *(a2 + 8));
  }

  return result;
}

uint64_t WordList::compareElements(CollMgr **this, unsigned int *a2, unsigned int *a3, const void *a4, double a5)
{
  v5 = *this;
  v6 = *(this + 8);
  v7 = *a2;
  v8 = *a3;
  result = CollMgr::collStrcmpUns8(this[1], v6, (*(*this + 28) + *(*(*this + 25) + 4 * v7)), (*(*this + 28) + *(*(*this + 25) + 4 * v8)), a5);
  if (!result)
  {
    if (v6 > 0xFFFD)
    {
      return *(v5[13] + v7) - *(v5[13] + v8);
    }

    v10 = v5[32];
    v11 = *(v10 + 4 * v7);
    LODWORD(v10) = *(v10 + 4 * v8);
    result = (v11 - v10);
    if (v11 == v10)
    {
      return *(v5[13] + v7) - *(v5[13] + v8);
    }
  }

  return result;
}

uint64_t HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::HashNCHV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523490;
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
  *(a1 + 104) = 0;
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

void sub_26273ECB8(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::~HashNCHV(uint64_t a1)
{
  HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::~HashNCHV(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287523490;
  if (*(a1 + 8))
  {
    HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(uint64_t result)
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
            result = v7(v5 + 1);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 12);
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

uint64_t *HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::reInit(uint64_t a1, int a2)
{
  if (*(a1 + 8))
  {
    HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(a1);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  DgnPool::deleteAllWithoutDestroying((a1 + 24));
  v5 = RoundUpToPowerOf2(a2, (a1 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v5;
  result = HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return result;
}

uint64_t HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::add(uint64_t result, int *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = *a2;
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = (-1640531527 * *a2) >> -v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 32);
  if (!v11)
  {
    result = DgnPool::addChunk((v5 + 24));
    v11 = *(v5 + 32);
    v7 = *a2;
  }

  v12 = (v10 + 8 * v9);
  *(v5 + 32) = *v11;
  *(v11 + 8) = v7;
  *(v11 + 12) = *a3;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v11 = *v12;
  }

  else
  {
    *v11 = 0;
    v13 = *v12;
    if (*v12)
    {
      do
      {
        v12 = v13;
        v13 = *v13;
      }

      while (v13);
    }
  }

  *v12 = v11;
  return result;
}

void DummyLanguageModel::printSize(DummyLanguageModel *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/dummylm.cpp", 56);
  if (v20)
  {
    v13 = v19;
  }

  else
  {
    v13 = &unk_26288C72C;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288C72C, a3, &unk_26288C72C, v13);
  DgnString::~DgnString(&v19);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288C72C);
  v18 = 0;
  v19 = 0;
  v17 = 0;
  LanguageModel::printSize(this, 0xFFFFFFFFLL, (a3 + 1), &v19, &v18, &v17);
  *a4 += v19;
  *a5 += v18;
  *a6 += v17;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/dummylm.cpp", 60);
  if (v20)
  {
    v16 = v19;
  }

  else
  {
    v16 = &unk_26288C72C;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, a3, &unk_26288C72C, (35 - a3), (35 - a3), v16, *a4, *a5, *a6);
  DgnString::~DgnString(&v19);
}

void sub_26273F12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t DummyLanguageModel::languageScore(DummyLanguageModel *this, unsigned int a2, unsigned int a3, LMStats *a4, LMContextData *a5, LMScoreDetails *a6, BOOL a7, BOOL a8, BOOL *a9)
{
  *a9 = 1;
  if (a6)
  {
    LMScoreDetails::addDetails(a6, 0, 7, 0);
  }

  return 0;
}

void DummyLanguageModel::languageScoreForPrefilterer(int a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v6 = *(a3 + 12);
  v7 = v5;
  if (v5 > v6)
  {
    DgnPrimArray<short>::reallocElts(a3, v5 - v6, 0);
    v7 = *(a2 + 8);
  }

  *(a3 + 8) = v5;
  if (v7)
  {
    v8 = *a3;

    bzero(v8, 2 * v7);
  }
}

void DummyLanguageModel::~DummyLanguageModel(RecentBuffer **this)
{
  LanguageModel::~LanguageModel(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t *LanguageModel::createContextData(LanguageModel *this)
{
  if (!*(this + 1))
  {
    return 0;
  }

  result = MemChunkAlloc(0x10uLL, 0);
  *result = &unk_2875285D0;
  *(result + 2) = 16777212;
  return result;
}

void MrecInitModule_osfile_mrecutil(void)
{
  if (!gParDebugOsFile)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugOsFile", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugOsFile = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugOsFile);
  }

  if (!gParDiagnosticShowTestReadFileInfo)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DiagnosticShowTestReadFileInfo", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDiagnosticShowTestReadFileInfo = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticShowTestReadFileInfo);
  }

  if (!gParDiagnosticShowTestReadFileDetails)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DiagnosticShowTestReadFileDetails", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDiagnosticShowTestReadFileDetails = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticShowTestReadFileDetails);
  }

  if (!gParDiagnosticOsFileSimulateReadFailure)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DiagnosticOsFileSimulateReadFailure", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDiagnosticOsFileSimulateReadFailure = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDiagnosticOsFileSimulateReadFailure);
  }
}

void OsFile::OsFile(OsFile *this, const FileSpec *a2, int a3)
{
  FileSpec::FileSpec(this);
  FileSpec::operator=(v6, a2);
  *(this + 4) = a3;
  *(this + 3) = 0;
}

void OsFile::~OsFile(OsFile *this)
{
  v2 = *(this + 4);
  if ((v2 & 0x80000000) == 0)
  {
    *(this + 4) = -1;
    if (close(v2))
    {
      if (*(this + 2))
      {
        v3 = *this;
      }

      else
      {
        v3 = &byte_262899963;
      }

      v4 = *__error();
      v5 = __error();
      v6 = strerror(*v5);
      DgnString::DgnString(&v8, v6);
      if (v9)
      {
        v7 = v8;
      }

      else
      {
        v7 = &byte_262899963;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 125, "mrecutil/osfile", 1, "%.500s %.500s %d %.500s", "close", v3, v4, v7);
      DgnString::~DgnString(&v8);
    }
  }

  FileSpec::~FileSpec(this);
}

uint64_t OsFile::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = FileSpec::sizeObject(a1, a2);
  v4 = 12;
  if (v2 == 3)
  {
    v4 = 0;
  }

  return v4 + v3;
}

BOOL OsFile::deleteFileAndCleanUp(OsFile *this, std::error_code *a2)
{
  v3 = *(this + 4);
  if ((v3 & 0x80000000) == 0)
  {
    *(this + 4) = -1;
    if (close(v3))
    {
      if (*(this + 2))
      {
        v4 = *this;
      }

      else
      {
        v4 = &byte_262899963;
      }

      v5 = *__error();
      v6 = __error();
      v7 = strerror(*v6);
      DgnString::DgnString(&v11, v7);
      if (v12)
      {
        v8 = v11;
      }

      else
      {
        v8 = &byte_262899963;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 148, "mrecutil/osfile", 1, "%.500s %.500s %d %.500s", "close", v4, v5, v8);
      DgnString::~DgnString(&v11);
    }
  }

  if (*(this + 2))
  {
    v9 = *this;
  }

  else
  {
    v9 = &byte_262899963;
  }

  return remove(v9, a2);
}

void sub_26273F820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void OsFile::seekFromBeg(OsFile *this, off_t a2)
{
  if (*(this + 3) != a2)
  {
    if (lseek(*(this + 4), a2, 0) < 0)
    {
      if (*(this + 2))
      {
        v4 = *this;
      }

      else
      {
        v4 = &byte_262899963;
      }

      v5 = *__error();
      v6 = __error();
      v7 = strerror(*v6);
      DgnString::DgnString(&v9, v7);
      if (v10)
      {
        v8 = v9;
      }

      else
      {
        v8 = &byte_262899963;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 173, "mrecutil/osfile", 2, "%.500s %.500s %llu %d %.500s", "lseek", v4, a2, v5, v8);
      DgnString::~DgnString(&v9);
    }

    *(this + 3) = a2;
  }
}

void sub_26273F920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void OsFile::seekFromBegGrowWithZeros(OsFile *this, off_t a2)
{
  if (*(this + 3) != a2)
  {
    OsFile::seekFromBeg(this, a2);
  }
}

void OsFile::seekToEnd(OsFile *this)
{
  if (lseek(*(this + 4), 0, 2) < 0)
  {
    if (*(this + 2))
    {
      v2 = *this;
    }

    else
    {
      v2 = &byte_262899963;
    }

    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    DgnString::DgnString(&v13, v5);
    if (v14)
    {
      v6 = v13;
    }

    else
    {
      v6 = &byte_262899963;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 221, "mrecutil/osfile", 2, "%.500s %.500s %llu %d %.500s", "lseek", v2, 0, v3, v6);
    DgnString::~DgnString(&v13);
  }

  v7 = lseek(*(this + 4), 0, 1);
  if (v7 < 0)
  {
    if (*(this + 2))
    {
      v8 = *this;
    }

    else
    {
      v8 = &byte_262899963;
    }

    v9 = *__error();
    v10 = __error();
    v11 = strerror(*v10);
    DgnString::DgnString(&v13, v11);
    if (v14)
    {
      v12 = v13;
    }

    else
    {
      v12 = &byte_262899963;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 225, "mrecutil/osfile", 1, "%.500s %.500s %d %.500s", "tell", v8, v9, v12);
    DgnString::~DgnString(&v13);
  }

  *(this + 3) = v7;
}

void sub_26273FACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

ssize_t OsFile::readBytes(OsFile *this, char *a2, unsigned int a3)
{
  if (*(gParDiagnosticOsFileSimulateReadFailure + 41))
  {
    if (*(this + 2))
    {
      v5 = *this;
    }

    else
    {
      v5 = &byte_262899963;
    }

    v6 = a3;
    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 257, "mrecutil/osfile", 2, "%.500s %.500s %llu %d %.500s", "read", v5, a3, 0, "simulated failure");
  }

  else
  {
    v6 = a3;
  }

  v7 = read(*(this + 4), a2, v6);
  if (v7 == -1)
  {
    if (*(this + 2))
    {
      v8 = *this;
    }

    else
    {
      v8 = &byte_262899963;
    }

    v9 = *__error();
    v10 = __error();
    v11 = strerror(*v10);
    DgnString::DgnString(&v14, v11);
    if (v15)
    {
      v12 = v14;
    }

    else
    {
      v12 = &byte_262899963;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 261, "mrecutil/osfile", 2, "%.500s %.500s %llu %d %.500s", "read", v8, v6, v9, v12);
    DgnString::~DgnString(&v14);
  }

  *(this + 3) += v7;
  return v7;
}

void sub_26273FC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void OsFile::writeBytes(OsFile *this, const char *a2, size_t __nbyte)
{
  v4 = __nbyte;
  if (write(*(this + 4), a2, __nbyte) == -1)
  {
    if (*(this + 2))
    {
      v5 = *this;
    }

    else
    {
      v5 = &byte_262899963;
    }

    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    DgnString::DgnString(&v10, v8);
    if (v11)
    {
      v9 = v10;
    }

    else
    {
      v9 = &byte_262899963;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 303, "mrecutil/osfile", 2, "%.500s %.500s %llu %d %.500s", "write", v5, v4, v6, v9);
    DgnString::~DgnString(&v10);
  }

  *(this + 3) += v4;
}

void sub_26273FD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

off_t OsFile::getFileSize(OsFile *this)
{
  if (fstat(*(this + 4), &v10))
  {
    if (*(this + 2))
    {
      v2 = *this;
    }

    else
    {
      v2 = &byte_262899963;
    }

    v3 = *__error();
    v4 = __error();
    v5 = strerror(*v4);
    DgnString::DgnString(&v8, v5);
    if (v9)
    {
      v6 = v8;
    }

    else
    {
      v6 = &byte_262899963;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 334, "mrecutil/osfile", 1, "%.500s %.500s %d %.500s", "fstat", v2, v3, v6);
    DgnString::~DgnString(&v8);
  }

  return v10.st_size;
}

void sub_26273FE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void OsFile::shrinkSize(OsFile *this, off_t a2)
{
  if (ftruncate(*(this + 4), a2) < 0)
  {
    if (*(this + 2))
    {
      v4 = *this;
    }

    else
    {
      v4 = &byte_262899963;
    }

    v5 = *__error();
    v6 = __error();
    v7 = strerror(*v6);
    DgnString::DgnString(&v15, v7);
    if (v16)
    {
      v8 = v15;
    }

    else
    {
      v8 = &byte_262899963;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 345, "mrecutil/osfile", 2, "%.500s %.500s %llu %d %.500s", "ftruncate", v4, a2, v5, v8);
    DgnString::~DgnString(&v15);
  }

  v9 = lseek(*(this + 4), 0, 1);
  if (v9 < 0)
  {
    if (*(this + 2))
    {
      v10 = *this;
    }

    else
    {
      v10 = &byte_262899963;
    }

    v11 = *__error();
    v12 = __error();
    v13 = strerror(*v12);
    DgnString::DgnString(&v15, v13);
    if (v16)
    {
      v14 = v15;
    }

    else
    {
      v14 = &byte_262899963;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 362, "mrecutil/osfile", 1, "%.500s %.500s %d %.500s", "tell", v10, v11, v14);
    DgnString::~DgnString(&v15);
  }

  *(this + 3) = v9;
}

void sub_26273FFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void OsFile::openOsFile(const char **a1, int a2)
{
  if ((a2 - 1) > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_26288C750[a2 - 1];
  }

  if (*(a1 + 2))
  {
    v4 = *a1;
  }

  else
  {
    v4 = &byte_262899963;
  }

  v5 = open(v4, v3, 438);
  v6 = v5;
  if (v5 > 2)
  {
    if ((v5 & 0x80000000) != 0)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 2))
    {
      v7 = *a1;
    }

    else
    {
      v7 = &byte_262899963;
    }

    errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 405, "mrecutil/osfile", 4, "%.500s %d", v7, v5);
  }

  v8 = MemChunkAlloc(0x20uLL, 0);
  OsFile::OsFile(v8, a1, v6);
}

BOOL OsFile::fileExists(OsFile **this, const FileSpec *a2)
{
  if (*(this + 2))
  {
    v2 = *this;
  }

  else
  {
    v2 = &byte_262899963;
  }

  return OsFile::fileExists(v2, a2);
}

BOOL OsFile::fileExists(OsFile *this, const char *a2)
{
  v3 = access(this, 0);
  if (v3)
  {
    v4 = __error();
    v5 = *v4;
    if (*v4 > 0x16 || ((1 << v5) & 0x402004) == 0)
    {
      v7 = strerror(*v4);
      DgnString::DgnString(&v10, v7);
      if (v11)
      {
        v8 = v10;
      }

      else
      {
        v8 = &byte_262899963;
      }

      errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/osfile.cpp", 441, "mrecutil/osfile", 1, "%.500s %.500s %d %.500s", "access", this, v5, v8);
      DgnString::~DgnString(&v10);
    }
  }

  return v3 == 0;
}

void sub_2627401C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

OsFile *DgnDelete<OsFile>(OsFile *result)
{
  if (result)
  {
    OsFile::~OsFile(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t OsFile::compareElements(OsFile *this, unsigned int *a2, unsigned int *a3, const void *a4)
{
  v4 = *this;
  v5 = *this + 16 * *a2;
  if (*(v5 + 8))
  {
    v6 = *v5;
  }

  else
  {
    v6 = &byte_262899963;
  }

  v7 = v4 + 16 * *a3;
  if (*(v7 + 8))
  {
    v8 = *v7;
  }

  else
  {
    v8 = &byte_262899963;
  }

  return strcmp(v6, v8);
}

uint64_t FindMatchingFiles(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = &byte_262899963;
  if (*(a1 + 8))
  {
    v7 = *a1;
  }

  else
  {
    v7 = &byte_262899963;
  }

  result = glob(v7, 36, 0, &v43);
  if (result)
  {
    v9 = result == -3;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v43.gl_pathc)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = a2[2];
        if (v12 == a2[3])
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a2, 1, 1);
          v12 = a2[2];
        }

        FileSpec::FileSpec((*a2 + 16 * v12));
        v13 = a2[2];
        a2[2] = v13 + 1;
        FileSpec::fillFromName((*a2 + 16 * v13), v43.gl_pathv[v10]);
        if (a3)
        {
          v14 = *a2 + 16 * (a2[2] - 1);
          if (*(v14 + 8))
          {
            v15 = *v14;
          }

          else
          {
            v15 = &byte_262899963;
          }

          if (stat(v15, &v42))
          {
            v16 = 0;
          }

          else
          {
            v16 = (v42.st_mode & 0xF000) == 0x4000;
          }

          v17 = v16;
          v18 = *(a3 + 8);
          if (v18 == *(a3 + 12))
          {
            DgnPrimArray<char>::reallocElts(a3, 1, 1);
            v18 = *(a3 + 8);
          }

          *(*a3 + v18) = v17;
          *(a3 + 8) = v18 + 1;
        }

        v10 = v11;
      }

      while (v43.gl_pathc > v11++);
    }

    globfree(&v43);
    if (*(a1 + 8))
    {
      v6 = *a1;
    }

    v20 = strlen(v6);
    if (v20 > 2 && v6[v20 - 3] != 47)
    {
      v21 = v20 - 2;
      if (v6[v20 - 2] == 46 && v6[v20 - 1] == 42)
      {
        v22 = MemChunkAlloc(v20 + 1, 0);
        v23 = strcpy(v22, v6);
        v23[v21] = 0;
        if (!stat(v23, &v42))
        {
          DgnArray<FileSpec>::add(a2);
          FileSpec::fillFromName((*a2 + 16 * (a2[2] - 1)), v22);
          if (a3)
          {
            DgnPrimArray<BOOL>::add(a3, (v42.st_mode & 0xF000) == 0x4000);
          }
        }

        MemChunkFree(v22, 0);
      }
    }

    v24 = a2[2];
    *&v42.st_dev = 0;
    v42.st_ino = 0;
    if (v24)
    {
      v46 = 0;
      v25 = realloc_array(0, &v46, 4 * v24, 0, 0, 1);
      v26 = 0;
      v27 = v25 >> 2;
      v28 = v46;
      *&v42.st_dev = v46;
      v42.st_ino = __PAIR64__(v27, v24);
      v29 = vdupq_n_s64(v24 - 1);
      v30 = xmmword_26286BF80;
      v31 = xmmword_26286B680;
      v32 = vdupq_n_s64(4uLL);
      v33 = v46 + 8;
      do
      {
        v34 = vmovn_s64(vcgeq_u64(v29, v31));
        if (vuzp1_s16(v34, *v29.i8).u8[0])
        {
          *(v33 - 2) = v26;
        }

        if (vuzp1_s16(v34, *&v29).i8[2])
        {
          *(v33 - 1) = v26 + 1;
        }

        if (vuzp1_s16(*&v29, vmovn_s64(vcgeq_u64(v29, *&v30))).i32[1])
        {
          *v33 = v26 + 2;
          v33[1] = v26 + 3;
        }

        v26 += 4;
        v30 = vaddq_s64(v30, v32);
        v31 = vaddq_s64(v31, v32);
        v33 += 4;
      }

      while (((v24 + 3) & 0x1FFFFFFFCLL) != v26);
      st_ino_low = LODWORD(v42.st_ino);
    }

    else
    {
      v28 = 0;
      st_ino_low = 0;
    }

    mrec_qsort_r<OsFile>(v28, st_ino_low, 4, a2);
    v46 = 0;
    v47 = 0;
    if (v24)
    {
      v44 = 0;
      HIDWORD(v47) = realloc_array(0, &v44, 16 * v24, 0, 0, 1) >> 4;
      v36 = v44;
      v46 = v44;
      v37 = v24;
      do
      {
        FileSpec::FileSpec(v36);
        v36 = (v38 + 16);
        --v37;
      }

      while (v37);
      LODWORD(v47) = v24;
      v44 = 0;
      v45 = 0;
      v48 = 0;
      v39 = realloc_array(0, &v48, v24, 0, 0, 1);
      v40 = 0;
      v41 = 0;
      v44 = v48;
      v45 = __PAIR64__(v39, v24);
      do
      {
        FileSpec::operator=((v46 + v40), (*a2 + 16 * *(*&v42.st_dev + 4 * v41)));
        if (a3)
        {
          *(v44 + v41) = *(*a3 + *(*&v42.st_dev + 4 * v41));
        }

        ++v41;
        v40 += 16;
      }

      while (v24 != v41);
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    DgnArray<FileSpec>::releaseAll(a2);
    DgnArray<FileSpec>::copyArraySlice(a2, &v46, 0, v47);
    if (a3)
    {
      DgnPrimArray<BOOL>::copyArraySlice(a3, &v44, 0, v45);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
    DgnArray<FileSpec>::releaseAll(&v46);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  }

  return result;
}

void sub_2627406F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  DgnArray<FileSpec>::releaseAll(v9 - 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  _Unwind_Resume(a1);
}

void DgnArray<FileSpec>::add(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == *(a1 + 12))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1, 1, 1);
    v2 = *(a1 + 8);
  }

  FileSpec::FileSpec((*a1 + 16 * v2));
  ++*(a1 + 8);
}

uint64_t *DgnPrimArray<BOOL>::add(uint64_t *result, char a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    result = DgnPrimArray<char>::reallocElts(result, 1, 1);
    v4 = *(v3 + 2);
  }

  *(*v3 + v4) = a2;
  *(v3 + 2) = v4 + 1;
  return result;
}

uint64_t mrec_qsort_r<OsFile>(uint64_t result, unint64_t a2, int64_t a3, OsFile *a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  v8 = -a3;
  v108 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a3 != 8;
  }

  v113 = ((result | a3) & 7) == 0;
  v114 = v9;
  if (a2 < 7)
  {
LABEL_117:
    if ((v6 * a3) > a3)
    {
      v79 = v4;
      v111 = (v7 + v6 * a3);
      v80 = (v7 + a3);
      v81 = v7;
      do
      {
        if (v80 > v7)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v8);
            result = OsFile::compareElements(v79, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v114)
            {
              if (v113)
              {
                v85 = 0;
                v86 = v83;
                do
                {
                  v87 = *&v84[2 * v85];
                  *&v84[2 * v85] = *v86;
                  *v86 = v87;
                  v86 += 2;
                  ++v85;
                }

                while (a3 >> 3 != v85);
              }

              else
              {
                v89 = 0;
                v90 = a3;
                do
                {
                  v91 = *(v84 + v89);
                  *(v84 + v89) = *(v82 + v89);
                  *(v82 + v89++) = v91;
                  --v90;
                }

                while (v90);
              }
            }

            else
            {
              v88 = *v84;
              *v84 = *v83;
              *v83 = v88;
            }

            v82 = (v82 + v8);
          }

          while (v83 > v7);
        }

        v80 = (v80 + a3);
        v81 = (v81 + a3);
      }

      while (v80 < v111);
    }

    return result;
  }

  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v7 + (v6 >> 1) * a3);
    if (v6 == 7)
    {
      goto LABEL_44;
    }

    v12 = (v7 + (v6 - 1) * a3);
    if (v6 >= 0x29)
    {
      v109 = (v7 + (v6 - 1) * a3);
      v13 = (v6 >> 3) * a3;
      v14 = (v7 + v13);
      v105 = v13;
      v15 = (v7 + 2 * v13);
      v16 = OsFile::compareElements(v4, v7, (v7 + v13), a4);
      v107 = v14;
      v18 = OsFile::compareElements(v4, v14, v15, v17);
      if (v16 < 0)
      {
        if ((v18 & 0x80000000) == 0)
        {
          if (OsFile::compareElements(v4, v7, v15, v19) >= 0)
          {
            v20 = v7;
          }

          else
          {
            v20 = v15;
          }

          goto LABEL_18;
        }
      }

      else if (v18 <= 0)
      {
        if (OsFile::compareElements(v4, v7, v15, v19) >= 0)
        {
          v20 = v15;
        }

        else
        {
          v20 = v7;
        }

LABEL_18:
        v107 = v20;
      }

      v22 = (v6 >> 3) * a3;
      v23 = (v11 + v105);
      v104 = (v11 - v105);
      v24 = OsFile::compareElements(v4, (v11 - v105), (v7 + (v6 >> 1) * a3), v19);
      v26 = OsFile::compareElements(v4, (v7 + (v6 >> 1) * a3), (v11 + v105), v25);
      if (v24 < 0)
      {
        if ((v26 & 0x80000000) == 0)
        {
          v11 = (v11 - v105);
          if (OsFile::compareElements(v4, v104, v23, v27) < 0)
          {
            v11 = v23;
          }
        }
      }

      else if (v26 <= 0)
      {
        v11 = (v11 - v105);
        if (OsFile::compareElements(v4, v104, v23, v27) >= 0)
        {
          v11 = v23;
        }
      }

      v12 = (v109 - v105);
      v106 = (v109 - 2 * v105);
      v28 = OsFile::compareElements(v4, (v109 - 2 * v22), (v109 - v22), v27);
      v30 = OsFile::compareElements(v4, (v109 - v22), v109, v29);
      if (v28 < 0)
      {
        v21 = v107;
        if ((v30 & 0x80000000) == 0)
        {
          v12 = (v7 + (v6 - 1) * a3);
          if (OsFile::compareElements(v4, v106, v109, a4) >= 0)
          {
            v12 = v106;
          }
        }
      }

      else
      {
        v21 = v107;
        if (v30 <= 0)
        {
          v12 = (v7 + (v6 - 1) * a3);
          if (OsFile::compareElements(v4, v106, v109, a4) < 0)
          {
            v12 = v106;
          }
        }
      }

      goto LABEL_35;
    }

    v21 = v7;
LABEL_35:
    v31 = OsFile::compareElements(v4, v21, v11, a4);
    result = OsFile::compareElements(v4, v11, v12, v32);
    if (v31 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = OsFile::compareElements(v4, v21, v12, a4);
        if (result >= 0)
        {
          v11 = v21;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = OsFile::compareElements(v4, v21, v12, a4);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v21;
      }
    }

LABEL_44:
    if (v114)
    {
      if (v113)
      {
        v33 = v7;
        v34 = a3 >> 3;
        do
        {
          v35 = *v33;
          *v33 = *v11;
          v33 += 2;
          *v11 = v35;
          v11 += 2;
          --v34;
        }

        while (v34);
      }

      else
      {
        v37 = a3;
        v38 = v7;
        do
        {
          v39 = *v38;
          *v38 = *v11;
          v38 = (v38 + 1);
          *v11 = v39;
          v11 = (v11 + 1);
          --v37;
        }

        while (v37);
      }
    }

    else
    {
      v36 = *v7;
      *v7 = *v11;
      *v11 = v36;
    }

    v40 = 0;
    v41 = (v7 + a3);
    v110 = v6;
    v42 = (v7 + (v6 - 1) * a3);
    v43 = v42;
    v44 = (v7 + a3);
LABEL_53:
    while (v44 <= v43)
    {
      result = OsFile::compareElements(v4, v44, v7, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v114)
        {
          if (v113)
          {
            v45 = 0;
            do
            {
              v46 = v41[v45];
              v41[v45] = *&v44[2 * v45];
              *&v44[2 * v45++] = v46;
            }

            while (v10 != v45);
          }

          else
          {
            v55 = 0;
            do
            {
              v56 = *(v41 + v55);
              *(v41 + v55) = *(v44 + v55);
              *(v44 + v55++) = v56;
            }

            while (a3 != v55);
          }
        }

        else
        {
          v54 = *v41;
          *v41 = *v44;
          *v44 = v54;
        }

        v41 = (v41 + a3);
        v40 = 1;
      }

      v44 = (v44 + a3);
    }

    while (v44 <= v43)
    {
      result = OsFile::compareElements(v4, v43, v7, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v114)
        {
          if (v113)
          {
            v52 = 0;
            do
            {
              v53 = *&v44[2 * v52];
              *&v44[2 * v52] = *&v43[2 * v52];
              *&v43[2 * v52++] = v53;
            }

            while (v10 != v52);
          }

          else
          {
            v58 = 0;
            do
            {
              v59 = *(v44 + v58);
              *(v44 + v58) = *(v43 + v58);
              *(v43 + v58++) = v59;
            }

            while (a3 != v58);
          }
        }

        else
        {
          v57 = *v44;
          *v44 = *v43;
          *v43 = v57;
        }

        v44 = (v44 + a3);
        v43 = (v43 + v8);
        v40 = 1;
        goto LABEL_53;
      }

      if (!result)
      {
        if (v114)
        {
          if (v113)
          {
            v47 = 0;
            do
            {
              v48 = *&v43[2 * v47];
              *&v43[2 * v47] = *&v42[2 * v47];
              *&v42[2 * v47++] = v48;
            }

            while (v10 != v47);
          }

          else
          {
            v50 = 0;
            do
            {
              v51 = *(v43 + v50);
              *(v43 + v50) = *(v42 + v50);
              *(v42 + v50++) = v51;
            }

            while (a3 != v50);
          }
        }

        else
        {
          v49 = *v43;
          *v43 = *v42;
          *v42 = v49;
        }

        v42 = (v42 + v8);
        v40 = 1;
      }

      v43 = (v43 + v8);
    }

    v60 = (v7 + v110 * a3);
    if (!v40)
    {
      break;
    }

    v61 = v44 - v41;
    if (v41 - v7 >= v44 - v41)
    {
      v62 = v44 - v41;
    }

    else
    {
      v62 = v41 - v7;
    }

    if (v62)
    {
      if (v113)
      {
        v63 = (v44 - v62);
        v64 = v62 >> 3;
        v65 = v7;
        do
        {
          v66 = *v65;
          *v65 = *v63;
          v65 += 2;
          *v63++ = v66;
          --v64;
        }

        while (v64);
      }

      else
      {
        v67 = -v62;
        v68 = v7;
        do
        {
          v69 = *v68;
          *v68 = *(v44 + v67);
          v68 = (v68 + 1);
          *(v44 + v67) = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v42 - v43;
    if (v42 - v43 >= v60 - (v42 + a3))
    {
      v72 = v60 - (v42 + a3);
    }

    else
    {
      v72 = v42 - v43;
    }

    if (v72)
    {
      if (v113)
      {
        v73 = v60 - v72;
        v74 = v72 >> 3;
        do
        {
          v75 = *v44;
          *v44 = *v73;
          v44 += 2;
          *v73 = v75;
          v73 += 8;
          --v74;
        }

        while (v74);
      }

      else
      {
        v76 = -v72;
        do
        {
          v77 = *v44;
          *v44 = *(v60 + v76);
          v44 = (v44 + 1);
          *(v60 + v76) = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<OsFile>(v7, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v7 = (v60 - v71);
    v6 = v71 / a3;
    v78 = v108;
    if ((((v60 - v71) | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v113 = (((v60 - v71) | a3) & 7) == 0;
    v114 = v78;
    v4 = a4;
    if (v6 < 7)
    {
      goto LABEL_117;
    }
  }

  v92 = (v7 + a3);
  if (v110 * a3 > a3)
  {
    v93 = v7;
    do
    {
      if (v92 > v7)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v8);
          result = OsFile::compareElements(a4, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v114)
          {
            if (v113)
            {
              v97 = 0;
              v98 = v95;
              do
              {
                v99 = *&v96[2 * v97];
                *&v96[2 * v97] = *v98;
                *v98 = v99;
                v98 += 2;
                ++v97;
              }

              while (v10 != v97);
            }

            else
            {
              v101 = 0;
              v102 = a3;
              do
              {
                v103 = *(v96 + v101);
                *(v96 + v101) = *(v94 + v101);
                *(v94 + v101++) = v103;
                --v102;
              }

              while (v102);
            }
          }

          else
          {
            v100 = *v96;
            *v96 = *v95;
            *v95 = v100;
          }

          v94 = (v94 + v8);
        }

        while (v95 > v7);
      }

      v92 = (v92 + a3);
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

void DgnArray<FileSpec>::copyArraySlice(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v8 = *(a1 + 8);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      FileSpec::~FileSpec(*a1 + v9);
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
    FileSpec::FileSpec((*a1 + 16 * v12), (*a2 + 16 * a3));
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
        FileSpec::~FileSpec(*a1 + v15);
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
      FileSpec::FileSpec((*a1 + v17));
      v17 += 16;
      --v16;
    }

    while (v16);
  }

LABEL_17:
  *(a1 + 8) = a4;
}

void MrecInitModule_retlist_prefilt(void)
{
  if (!gParDebugShowPrefiltererReturnLists)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowPrefiltererReturnLists", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowPrefiltererReturnLists = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPrefiltererReturnLists);
  }

  if (!gParDiagnosticPrefiltererReturnListSortByScore)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DiagnosticPrefiltererReturnListSortByScore", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDiagnosticPrefiltererReturnListSortByScore = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDiagnosticPrefiltererReturnListSortByScore);
  }
}

void ReturnListMgr::ReturnListMgr(ReturnListMgr *this)
{
  *(this + 4) = 0u;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *this = 127;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
}

void ReturnListMgr::~ReturnListMgr(ReturnListMgr *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 88);
  DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(this + 56);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 24);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 8);
}

void ReturnListMgr::printSize(ReturnListMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 129);
  if (v59)
  {
    v13 = v58;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v58);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 130);
  if (v59)
  {
    v18 = v58;
  }

  else
  {
    v18 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v18, 2, 2, 0);
  DgnString::~DgnString(&v58);
  *a4 += 2;
  *a5 += 2;
  v19 = sizeObject<DgnPrimArray<unsigned short>>(this + 8, 0);
  v20 = sizeObject<DgnPrimArray<unsigned short>>(this + 8, 1);
  v58 = 0;
  v59 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v58);
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 132);
  if (v59)
  {
    v22 = v58;
  }

  else
  {
    v22 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v22, v19, v20, 0);
  v57 = a3;
  DgnString::~DgnString(&v58);
  *a4 += v19;
  *a5 += v20;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 12;
  }

  else
  {
    v23 = 16;
  }

  v24 = *(this + 8);
  v25 = *(this + 9);
  if (v25 >= v24)
  {
    v26 = 0;
    if (v24 > 0)
    {
      v23 += 4 * (v24 - 1) + 4;
    }

    v27 = v23 + 4 * (v25 - v24);
  }

  else
  {
    v26 = 4 * v24;
    v27 = v23;
  }

  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 133);
  if (v59)
  {
    v29 = v58;
  }

  else
  {
    v29 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v15, &byte_262899963, v16, v16, v29, v27, v23, v26);
  DgnString::~DgnString(&v58);
  *a4 += v27;
  *a5 += v23;
  *a6 += v26;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 4;
  }

  else
  {
    v30 = 8;
  }

  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 135);
  if (v59)
  {
    v32 = v58;
  }

  else
  {
    v32 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v15, &byte_262899963, v16, v16, v32, v30, v30, 0);
  DgnString::~DgnString(&v58);
  *a4 += v30;
  *a5 += v30;
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 136);
  if (v59)
  {
    v34 = v58;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v15, &byte_262899963, v16, v16, v34, 4, 4, 0);
  DgnString::~DgnString(&v58);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 137);
  if (v59)
  {
    v36 = v58;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v15, &byte_262899963, v16, v16, v36, 4, 4, 0);
  DgnString::~DgnString(&v58);
  *a4 += 4;
  *a5 += 4;
  v37 = sizeObject<Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int> *>(this + 56, 0);
  v38 = sizeObject<Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int> *>(this + 56, 1);
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 139);
  if (v59)
  {
    v40 = v58;
  }

  else
  {
    v40 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v15, &byte_262899963, v16, v16, v40, v37, v38, 0);
  DgnString::~DgnString(&v58);
  *a4 += v37;
  *a5 += v38;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v41 = 12;
  }

  else
  {
    v41 = 16;
  }

  v42 = *(this + 24);
  v43 = *(this + 25);
  if (v43 >= v42)
  {
    v44 = 0;
    if (v42 > 0)
    {
      v41 += 2 * (v42 - 1) + 2;
    }

    v45 = v41 + 2 * (v43 - v42);
  }

  else
  {
    v44 = 2 * v42;
    v45 = v41;
  }

  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 141);
  if (v59)
  {
    v47 = v58;
  }

  else
  {
    v47 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v15, &byte_262899963, v16, v16, v47, v45, v41, v44);
  DgnString::~DgnString(&v58);
  *a4 += v45;
  *a5 += v41;
  *a6 += v44;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v48 = 12;
  }

  else
  {
    v48 = 16;
  }

  v49 = *(this + 28);
  v50 = *(this + 29);
  if (v50 >= v49)
  {
    v51 = 0;
    if (v49 > 0)
    {
      v48 += 2 * (v49 - 1) + 2;
    }

    v52 = v48 + 2 * (v50 - v49);
  }

  else
  {
    v51 = 2 * v49;
    v52 = v48;
  }

  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 143);
  if (v59)
  {
    v54 = v58;
  }

  else
  {
    v54 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &byte_262899963, v16, v16, v54, v52, v48, v51);
  DgnString::~DgnString(&v58);
  *a4 += v52;
  *a5 += v48;
  *a6 += v51;
  getShipObjectSizeDescription(&v58, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 144);
  if (v59)
  {
    v56 = v58;
  }

  else
  {
    v56 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v57, &byte_262899963, (35 - v57), (35 - v57), v56, *a4, *a5, *a6);
  DgnString::~DgnString(&v58);
}

void sub_2627418B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t ReturnListMgr::setReturnScoreAndDuration(uint64_t this, unsigned int a2, int a3, __int16 a4, __int16 a5)
{
  v8 = this;
  v20 = a3;
  v9 = *(this + 96);
  if (v9 <= a2)
  {
    v11 = *(this + 88);
    v10 = *(this + 104);
    v12 = *(this + 112);
    do
    {
      *(v11 + 2 * v9++) = 20000;
      *(v10 + 2 * v12++) = 20000;
    }

    while (v9 <= a2);
    *(this + 96) = v9;
    *(this + 112) = v12;
  }

  else
  {
    v10 = *(this + 104);
  }

  v13 = a4;
  if (a4 <= *(v10 + 2 * a2))
  {
    v14 = *(*(this + 56) + 8 * a2);
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (-1640531527 * a3) >> -v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(v14 + 80) + 8 * v16;
    while (1)
    {
      v17 = *v17;
      if (!v17)
      {
        break;
      }

      if (*(v17 + 8) == a3)
      {
        if (a4 < *(v17 + 12))
        {
          *(v17 + 12) = a4;
          *(v17 + 14) = a5;
        }

        goto LABEL_19;
      }
    }

    if (*(v14 + 12) >= *(this + 72) && *(v14 + 8) >= *(this + 76))
    {
      *(*(this + 104) + 2 * a2) = ReturnListMgr::makeRoomInHash(this, *(*(this + 56) + 8 * a2), *(this + 80));
    }

    LOWORD(v19) = a4;
    HIWORD(v19) = a5;
    this = HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::add(v14, &v20, &v19);
LABEL_19:
    v18 = *(v8 + 88);
    if (v13 < *(v18 + 2 * a2))
    {
      *(v18 + 2 * a2) = a4;
    }
  }

  return this;
}

uint64_t ReturnListMgr::makeRoomInHash(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CutoffScore = ReturnListMgr::getCutoffScore(a1, a2, a3, &v16, &v15);
  v5 = *(a2 + 12);
  if (v5)
  {
    v6 = *(a2 + 80);
    v7 = *v6;
    if (!*v6)
    {
      v8 = 0;
      v9 = v6 + 1;
      while (v5 - 1 != v8)
      {
        v7 = v9[v8++];
        if (v7)
        {
          goto LABEL_9;
        }
      }

      return CutoffScore;
    }
  }

  else
  {
    v7 = 0;
  }

  LODWORD(v8) = 0;
LABEL_9:
  while (v8 < v5)
  {
    v14 = *(v7 + 2);
    v10 = *v7;
    if (!*v7)
    {
      v8 = (v8 + 1);
      if (v8 >= v5)
      {
        v10 = v7;
      }

      else
      {
        v11 = *(a2 + 80);
        v10 = *(v11 + 8 * v8);
        if (!v10)
        {
          v12 = v8 + 1;
          while (v5 != v12)
          {
            v10 = *(v11 + 8 * v12);
            LODWORD(v8) = v8 + 1;
            ++v12;
            if (v10)
            {
              goto LABEL_18;
            }
          }

          v10 = 0;
          LODWORD(v8) = v5;
        }
      }
    }

LABEL_18:
    if (*(v7 + 6) > CutoffScore)
    {
      HashNCHV<unsigned int,unsigned int,WordToScoreAndDurationHashHelper,ScoreAndDuration>::remove(a2, &v14);
      LODWORD(v5) = *(a2 + 12);
    }

    v7 = v10;
  }

  return CutoffScore;
}

uint64_t ReturnListMgr::compareElements(ReturnListMgr *this, _WORD *a2, _WORD *a3, const void *a4)
{
  v4 = a2[2];
  v5 = *a2;
  v6 = *(this + 4);
  if (*a2 >> 25 < v6)
  {
    v7 = *(this + 1) + 16 * (v5 >> 25);
    if ((v5 & 0xFFFFFF) < *(v7 + 8))
    {
      v8 = *(*v7 + 2 * (v5 & 0xFFFFFF));
      if (v8 != 20000)
      {
        v4 += v8;
      }
    }
  }

  v9 = a3[2];
  v10 = *a3;
  if (*a3 >> 25 < v6)
  {
    v11 = *(this + 1) + 16 * (v10 >> 25);
    if ((v10 & 0xFFFFFF) < *(v11 + 8))
    {
      v12 = *(*v11 + 2 * (v10 & 0xFFFFFF));
      if (v12 != 20000)
      {
        v9 += v12;
      }
    }
  }

  v13 = v5 >= v10;
  v14 = v5 > v10;
  if (!v13)
  {
    v14 = -1;
  }

  if (v4 > v9)
  {
    v14 = 1;
  }

  if (v4 >= v9)
  {
    return v14;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t *ReturnListMgr::finishList(uint64_t *this, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v6 = this;
  if (*(this + 16) > a2 && *(this[7] + 8 * a2))
  {
    v8 = *(this + 8);
    if (v8 >= 1)
    {
      v9 = v8 - 1;
      do
      {
        ReturnListMgr::setReturnScoreAndDuration(v6, a2, *(*(v6 + 24) + 4 * v9), *(*(v6 + 88) + 2 * a2), -1);
        v10 = v9-- + 1;
      }

      while (v10 > 1);
    }

    ReturnListMgr::returnGerms(v6, a2, a3, a4);
    this = DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(*(v6 + 56) + 8 * a2));
    *(*(v6 + 56) + 8 * a2) = 0;
  }

  else
  {
    *(a3 + 8) = 0;
    v11 = *(this + 8);
    if (v11)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(*(v6 + 24) + 4 * v12);
        if (v11 == *(a3 + 12))
        {
          this = DgnPrimArray<unsigned long long>::reallocElts(a3, 1, 1);
          v11 = *(a3 + 8);
        }

        *(*a3 + 8 * v11) = v13;
        v11 = *(a3 + 8) + 1;
        *(a3 + 8) = v11;
        ++v12;
      }

      while (v12 < *(v6 + 32));
    }

    *a4 = v11;
  }

  if (*(gParDiagnosticPrefiltererReturnListSortByScore + 41) == 1)
  {
    v14 = *a3;
    v15 = *(a3 + 8);

    return mrec_qsort_r<ReturnListMgr>(v14, v15, 8, v6);
  }

  return this;
}

unint64_t ReturnListMgr::returnGerms(unint64_t result, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  v6 = result;
  v7 = *(*(result + 56) + 8 * a2);
  v8 = *(v7 + 8);
  v9 = *(result + 80);
  if (v8 > v9)
  {
    v53 = 0;
    result = ReturnListMgr::getCutoffScore(result, v7, v9, &v53, &v53 + 1);
    v10 = result;
    v11 = v53;
    v12 = *(a3 + 12);
    if (v53 > v12)
    {
      result = DgnPrimArray<unsigned long long>::reallocElts(a3, v53 - v12, 0);
    }

    v13 = *(a3 + 8);
    if (v13 < v11)
    {
      v14 = v11 - v13;
      v15 = *a3 + 8 * v13 + 6;
      do
      {
        *(v15 - 6) = 4211081215;
        v15 += 8;
        --v14;
      }

      while (v14);
    }

    *(a3 + 8) = v11;
    v16 = *(v7 + 12);
    if (v16)
    {
      v17 = *(v7 + 80);
      v18 = *v17;
      if (*v17)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v22 = 0;
        v23 = v17 + 1;
        while (v16 - 1 != v22)
        {
          v18 = v23[v22++];
          if (v18)
          {
            LODWORD(v16) = v22;
            goto LABEL_24;
          }
        }

        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_24:
    v26 = 0;
    if (v11)
    {
      v27 = 0;
      do
      {
        if (v18)
        {
          v28 = v18 + 6;
        }

        else
        {
          v28 = 0;
        }

        v29 = *v28;
        if (v29 <= v10)
        {
          v30 = *(v18 + 2);
          if (*(v18 + 2) >> 25 < *(v6 + 16))
          {
            v31 = *(v6 + 8) + 16 * (v30 >> 25);
            result = *(v31 + 8);
            if ((v30 & 0xFFFFFF) < result)
            {
              v32 = *(*v31 + 2 * (v30 & 0xFFFFFF));
              if (v32 != 20000)
              {
                LOWORD(v29) = v29 - v32;
              }
            }
          }

          *(*a3 + 8 * v27++) = (v28[1] << 48) | (v29 << 32) | v30;
        }

        v33 = *v18;
        if (!*v18)
        {
          v16 = (v16 + 1);
          v34 = *(v7 + 12);
          if (v16 >= v34)
          {
            v33 = v18;
          }

          else
          {
            v35 = *(v7 + 80);
            v33 = *(v35 + 8 * v16);
            if (!v33)
            {
              v36 = v16 + 1;
              while (v34 != v36)
              {
                v33 = *(v35 + 8 * v36);
                LODWORD(v16) = v16 + 1;
                ++v36;
                if (v33)
                {
                  goto LABEL_43;
                }
              }

              v33 = 0;
              LODWORD(v16) = *(v7 + 12);
            }
          }
        }

LABEL_43:
        ++v26;
        v18 = v33;
      }

      while (v27 < v11);
    }

    *a4 = v26;
    return result;
  }

  v19 = *(v7 + 12);
  if (v19)
  {
    v20 = *(v7 + 80);
    v21 = *v20;
    if (*v20)
    {
      LODWORD(v19) = 0;
    }

    else
    {
      v24 = 0;
      v25 = v20 + 1;
      while (v19 - 1 != v24)
      {
        v21 = v25[v24++];
        if (v21)
        {
          LODWORD(v19) = v24;
          goto LABEL_48;
        }
      }

      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_48:
  v37 = *(a3 + 12);
  if (v8 > v37)
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(a3, v8 - v37, 0);
  }

  v38 = *(a3 + 8);
  if (v38 < v8)
  {
    v39 = v8 - v38;
    v40 = *a3 + 8 * v38 + 6;
    do
    {
      *(v40 - 6) = 4211081215;
      v40 += 8;
      --v39;
    }

    while (v39);
  }

  *(a3 + 8) = v8;
  if (v19 >= *(v7 + 12))
  {
    goto LABEL_72;
  }

  v41 = 0;
  while (1)
  {
    v42 = *(v21 + 2);
    if (v21)
    {
      v43 = v21 + 6;
    }

    else
    {
      v43 = 0;
    }

    v44 = *v43;
    if (*(v21 + 2) >> 25 < *(v6 + 16))
    {
      v45 = *(v6 + 8) + 16 * (v42 >> 25);
      if ((v42 & 0xFFFFFF) < *(v45 + 8))
      {
        v46 = *(*v45 + 2 * (v42 & 0xFFFFFF));
        if (v46 != 20000)
        {
          v44 -= v46;
        }
      }
    }

    *(*a3 + 8 * v41) = (v43[1] << 48) | (v44 << 32) | v42;
    v47 = *v21;
    v48 = *(v7 + 12);
    if (*v21)
    {
      goto LABEL_70;
    }

    v19 = (v19 + 1);
    if (v19 >= v48)
    {
      v47 = v21;
      goto LABEL_70;
    }

    v49 = *(v7 + 80);
    v47 = *(v49 + 8 * v19);
    if (!v47)
    {
      break;
    }

LABEL_70:
    ++v41;
    v21 = v47;
    if (v19 >= v48)
    {
      goto LABEL_71;
    }
  }

  v50 = (v49 + 8 * v19 + 8);
  v51 = ~v19 + v48;
  while (v51)
  {
    v52 = *v50++;
    v47 = v52;
    LODWORD(v19) = v19 + 1;
    --v51;
    if (v52)
    {
      goto LABEL_70;
    }
  }

LABEL_71:
  LODWORD(v8) = *(a3 + 8);
LABEL_72:
  *a4 = v8;
  return result;
}

uint64_t mrec_qsort_r<ReturnListMgr>(uint64_t result, unint64_t a2, int64_t a3, ReturnListMgr *a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  v8 = -a3;
  v108 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a3 != 8;
  }

  v113 = ((result | a3) & 7) == 0;
  v114 = v9;
  if (a2 < 7)
  {
LABEL_117:
    if ((v6 * a3) > a3)
    {
      v79 = v4;
      v111 = &v7[v6 * a3];
      v80 = &v7[a3];
      v81 = v7;
      do
      {
        if (v80 > v7)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v8);
            result = ReturnListMgr::compareElements(v79, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v114)
            {
              if (v113)
              {
                v85 = 0;
                v86 = v83;
                do
                {
                  v87 = *&v84[4 * v85];
                  *&v84[4 * v85] = *v86;
                  *v86++ = v87;
                  ++v85;
                }

                while (a3 >> 3 != v85);
              }

              else
              {
                v89 = 0;
                v90 = a3;
                do
                {
                  v91 = *(v84 + v89);
                  *(v84 + v89) = *(v82 + v89);
                  *(v82 + v89++) = v91;
                  --v90;
                }

                while (v90);
              }
            }

            else
            {
              v88 = *v84;
              *v84 = *v83;
              *v83 = v88;
            }

            v82 = (v82 + v8);
          }

          while (v83 > v7);
        }

        v80 += a3;
        v81 = (v81 + a3);
      }

      while (v80 < v111);
    }

    return result;
  }

  v10 = a3 >> 3;
  while (1)
  {
    v11 = &v7[(v6 >> 1) * a3];
    if (v6 == 7)
    {
      goto LABEL_44;
    }

    v12 = &v7[(v6 - 1) * a3];
    if (v6 >= 0x29)
    {
      v109 = &v7[(v6 - 1) * a3];
      v13 = (v6 >> 3) * a3;
      v14 = &v7[v13];
      v105 = v13;
      v15 = &v7[2 * v13];
      v16 = ReturnListMgr::compareElements(v4, v7, &v7[v13], a4);
      v107 = v14;
      v18 = ReturnListMgr::compareElements(v4, v14, v15, v17);
      if (v16 < 0)
      {
        if ((v18 & 0x80000000) == 0)
        {
          if (ReturnListMgr::compareElements(v4, v7, v15, v19) >= 0)
          {
            v20 = v7;
          }

          else
          {
            v20 = v15;
          }

          goto LABEL_18;
        }
      }

      else if (v18 <= 0)
      {
        if (ReturnListMgr::compareElements(v4, v7, v15, v19) >= 0)
        {
          v20 = v15;
        }

        else
        {
          v20 = v7;
        }

LABEL_18:
        v107 = v20;
      }

      v22 = (v6 >> 3) * a3;
      v23 = &v11[v105];
      v104 = &v11[-v105];
      v24 = ReturnListMgr::compareElements(v4, &v11[-v105], &v7[(v6 >> 1) * a3], v19);
      v26 = ReturnListMgr::compareElements(v4, &v7[(v6 >> 1) * a3], &v11[v105], v25);
      if (v24 < 0)
      {
        if ((v26 & 0x80000000) == 0)
        {
          v11 -= v105;
          if (ReturnListMgr::compareElements(v4, v104, v23, v27) < 0)
          {
            v11 = v23;
          }
        }
      }

      else if (v26 <= 0)
      {
        v11 -= v105;
        if (ReturnListMgr::compareElements(v4, v104, v23, v27) >= 0)
        {
          v11 = v23;
        }
      }

      v12 = &v109[-v105];
      v106 = &v109[-2 * v105];
      v28 = ReturnListMgr::compareElements(v4, &v109[-2 * v22], &v109[-v22], v27);
      v30 = ReturnListMgr::compareElements(v4, &v109[-v22], v109, v29);
      if (v28 < 0)
      {
        v21 = v107;
        if ((v30 & 0x80000000) == 0)
        {
          v12 = &v7[(v6 - 1) * a3];
          if (ReturnListMgr::compareElements(v4, v106, v109, a4) >= 0)
          {
            v12 = v106;
          }
        }
      }

      else
      {
        v21 = v107;
        if (v30 <= 0)
        {
          v12 = &v7[(v6 - 1) * a3];
          if (ReturnListMgr::compareElements(v4, v106, v109, a4) < 0)
          {
            v12 = v106;
          }
        }
      }

      goto LABEL_35;
    }

    v21 = v7;
LABEL_35:
    v31 = ReturnListMgr::compareElements(v4, v21, v11, a4);
    result = ReturnListMgr::compareElements(v4, v11, v12, v32);
    if (v31 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = ReturnListMgr::compareElements(v4, v21, v12, a4);
        if (result >= 0)
        {
          v11 = v21;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = ReturnListMgr::compareElements(v4, v21, v12, a4);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v21;
      }
    }

LABEL_44:
    if (v114)
    {
      if (v113)
      {
        v33 = v7;
        v34 = a3 >> 3;
        do
        {
          v35 = *v33;
          *v33 = *v11;
          v33 += 8;
          *v11 = v35;
          v11 += 8;
          --v34;
        }

        while (v34);
      }

      else
      {
        v37 = a3;
        v38 = v7;
        do
        {
          v39 = *v38;
          *v38++ = *v11;
          *v11++ = v39;
          --v37;
        }

        while (v37);
      }
    }

    else
    {
      v36 = *v7;
      *v7 = *v11;
      *v11 = v36;
    }

    v40 = 0;
    v41 = &v7[a3];
    v110 = v6;
    v42 = &v7[(v6 - 1) * a3];
    v43 = v42;
    v44 = &v7[a3];
LABEL_53:
    while (v44 <= v43)
    {
      result = ReturnListMgr::compareElements(v4, v44, v7, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v114)
        {
          if (v113)
          {
            v45 = 0;
            do
            {
              v46 = *&v41[8 * v45];
              *&v41[8 * v45] = *&v44[8 * v45];
              *&v44[8 * v45++] = v46;
            }

            while (v10 != v45);
          }

          else
          {
            v55 = 0;
            do
            {
              v56 = v41[v55];
              v41[v55] = v44[v55];
              v44[v55++] = v56;
            }

            while (a3 != v55);
          }
        }

        else
        {
          v54 = *v41;
          *v41 = *v44;
          *v44 = v54;
        }

        v41 += a3;
        v40 = 1;
      }

      v44 += a3;
    }

    while (v44 <= v43)
    {
      result = ReturnListMgr::compareElements(v4, v43, v7, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v114)
        {
          if (v113)
          {
            v52 = 0;
            do
            {
              v53 = *&v44[8 * v52];
              *&v44[8 * v52] = *&v43[8 * v52];
              *&v43[8 * v52++] = v53;
            }

            while (v10 != v52);
          }

          else
          {
            v58 = 0;
            do
            {
              v59 = v44[v58];
              v44[v58] = v43[v58];
              v43[v58++] = v59;
            }

            while (a3 != v58);
          }
        }

        else
        {
          v57 = *v44;
          *v44 = *v43;
          *v43 = v57;
        }

        v44 += a3;
        v43 += v8;
        v40 = 1;
        goto LABEL_53;
      }

      if (!result)
      {
        if (v114)
        {
          if (v113)
          {
            v47 = 0;
            do
            {
              v48 = *&v43[8 * v47];
              *&v43[8 * v47] = *&v42[8 * v47];
              *&v42[8 * v47++] = v48;
            }

            while (v10 != v47);
          }

          else
          {
            v50 = 0;
            do
            {
              v51 = v43[v50];
              v43[v50] = v42[v50];
              v42[v50++] = v51;
            }

            while (a3 != v50);
          }
        }

        else
        {
          v49 = *v43;
          *v43 = *v42;
          *v42 = v49;
        }

        v42 += v8;
        v40 = 1;
      }

      v43 += v8;
    }

    v60 = &v7[v110 * a3];
    if (!v40)
    {
      break;
    }

    v61 = v44 - v41;
    if (v41 - v7 >= v44 - v41)
    {
      v62 = v44 - v41;
    }

    else
    {
      v62 = v41 - v7;
    }

    if (v62)
    {
      if (v113)
      {
        v63 = &v44[-v62];
        v64 = v62 >> 3;
        v65 = v7;
        do
        {
          v66 = *v65;
          *v65 = *v63;
          v65 += 8;
          *v63 = v66;
          v63 += 8;
          --v64;
        }

        while (v64);
      }

      else
      {
        v67 = -v62;
        v68 = v7;
        do
        {
          v69 = *v68;
          *v68++ = v44[v67];
          v44[v67] = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v42 - v43;
    if (v42 - v43 >= v60 - &v42[a3])
    {
      v72 = v60 - &v42[a3];
    }

    else
    {
      v72 = v42 - v43;
    }

    if (v72)
    {
      if (v113)
      {
        v73 = &v60[-v72];
        v74 = v72 >> 3;
        do
        {
          v75 = *v44;
          *v44 = *v73;
          v44 += 8;
          *v73 = v75;
          v73 += 8;
          --v74;
        }

        while (v74);
      }

      else
      {
        v76 = -v72;
        do
        {
          v77 = *v44;
          *v44++ = v60[v76];
          v60[v76] = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<ReturnListMgr>(v7, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v7 = &v60[-v71];
    v6 = v71 / a3;
    v78 = v108;
    if ((((v60 - v71) | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v113 = (((v60 - v71) | a3) & 7) == 0;
    v114 = v78;
    v4 = a4;
    if (v6 < 7)
    {
      goto LABEL_117;
    }
  }

  v92 = &v7[a3];
  if (v110 * a3 > a3)
  {
    v93 = v7;
    do
    {
      if (v92 > v7)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v8);
          result = ReturnListMgr::compareElements(a4, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v114)
          {
            if (v113)
            {
              v97 = 0;
              v98 = v95;
              do
              {
                v99 = *&v96[4 * v97];
                *&v96[4 * v97] = *v98;
                *v98++ = v99;
                ++v97;
              }

              while (v10 != v97);
            }

            else
            {
              v101 = 0;
              v102 = a3;
              do
              {
                v103 = *(v96 + v101);
                *(v96 + v101) = *(v94 + v101);
                *(v94 + v101++) = v103;
                --v102;
              }

              while (v102);
            }
          }

          else
          {
            v100 = *v96;
            *v96 = *v95;
            *v95 = v100;
          }

          v94 = (v94 + v8);
        }

        while (v95 > v7);
      }

      v92 += a3;
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t ReturnListMgr::getCutoffScore(void x0_0, uint64_t a1, unsigned int a2, unsigned int *a3, _DWORD *a4)
{
  v31 = 0;
  v9 = realloc_array(0, &v31, 4uLL, 0, 0, 1) >> 2;
  v10 = v31;
  v28 = v31;
  v29 = 1;
  v30 = v9;
  *v31 = 0;
  v11 = *(a1 + 12);
  if (v11)
  {
    v12 = *(a1 + 80);
    v13 = *v12;
    if (!*v12)
    {
      v14 = 0;
      v15 = v12 + 1;
      while (v11 - 1 != v14)
      {
        v13 = v15[v14++];
        if (v13)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_28;
    }
  }

  else
  {
    v13 = 0;
  }

  LODWORD(v14) = 0;
LABEL_9:
  if (v14 >= v11)
  {
LABEL_28:
    v25 = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v16 = *(v13 + 6);
    if (v16 < 1)
    {
      v18 = v10;
    }

    else
    {
      v17 = v29;
      if (v29 <= v16)
      {
        if (v30 <= v16)
        {
          v31 = 0;
          v30 = realloc_array(v10, &v31, 4 * v16 + 4, 4 * v29, 4 * v29, 1) >> 2;
          v10 = v31;
          v28 = v31;
          v17 = v29;
        }

        while (v17 <= v16)
        {
          *(v10 + v17) = 0;
          v17 = ++v29;
        }
      }

      v18 = v10 + v16;
    }

    ++*v18;
    v19 = *v13;
    v20 = *(a1 + 12);
    if (*v13)
    {
      goto LABEL_26;
    }

    v14 = (v14 + 1);
    if (v14 >= v20)
    {
      v19 = v13;
      goto LABEL_26;
    }

    v21 = *(a1 + 80);
    v19 = *(v21 + 8 * v14);
    if (!v19)
    {
      break;
    }

LABEL_26:
    v13 = v19;
    if (v14 >= v20)
    {
      goto LABEL_27;
    }
  }

  v22 = (v21 + 8 * v14 + 8);
  v23 = ~v14 + v20;
  while (v23)
  {
    v24 = *v22++;
    v19 = v24;
    LODWORD(v14) = v14 + 1;
    --v23;
    if (v24)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v25 = *v10;
LABEL_29:
  *a3 = v25;
  if (v25 >= a2)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0;
    do
    {
      v25 += *(v10 + ++v26);
      *a3 = v25;
    }

    while (v25 < a2);
  }

  *a4 = *(v10 + v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v28);
  return v26;
}

void sub_262742AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t ReturnListMgr::addToReturnList(ReturnListMgr *this, signed int a2, __int16 a3, unsigned int a4, int a5)
{
  v5 = a5;
  v9 = a3 - a2;
  v10 = *(this + 13);
  v11 = *(this + 12) * (a3 - a2);
  v12 = *(*(this + 5) + 100);
  v13 = *(*(this + 5) + 104);
  v14 = v12 < v11 >> 8;
  v15 = v11 >> 8;
  if (!v14)
  {
    v12 = v15;
  }

  if (a5 + v12 * v13 <= v10 || v12 == 0)
  {
    v17 = v12;
  }

  else
  {
    v18 = a5 + v13 * (v12 - 1);
    do
    {
      v17 = v12 - 1;
      if (v18 <= v10)
      {
        break;
      }

      v18 -= v13;
      --v12;
    }

    while (v12);
  }

  if (a2 >= v17)
  {
    v19 = a2 - v17;
  }

  else
  {
    v19 = 0;
  }

  v20 = v17 + a2;
  if ((v17 + a2) >= *(this + 16))
  {
    v21 = v20 + 1;
    v22 = *(this + 17);
    if (v20 + 1 > v22)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 56, v20 + 1 - v22, 1);
    }

    v23 = *(this + 25);
    if (v21 > v23)
    {
      DgnPrimArray<short>::reallocElts(this + 88, v21 - v23, 1);
    }

    v24 = *(this + 29);
    if (v21 > v24)
    {
      DgnPrimArray<short>::reallocElts(this + 104, v21 - v24, 1);
    }

    v25 = *(this + 16);
    if (v25 <= v20)
    {
      do
      {
        *(*(this + 7) + 8 * v25++) = 0;
      }

      while (v25 <= v20);
      *(this + 16) = v25;
    }
  }

  result = getCwidForIndex(*this, a4);
  if (v19 <= v20)
  {
    v27 = result;
    v28 = a2;
    v29 = v5 + (a2 - v19) * v13;
    if (v17 > a2)
    {
      v28 = v17;
    }

    v30 = v17 + a3 - v28;
    do
    {
      v31 = v19;
      if (!*(*(this + 7) + 8 * v19))
      {
        v32 = MemChunkAlloc(0x70uLL, 0);
        *(*(this + 7) + 8 * v19) = HashNCHV<unsigned int,unsigned int,WordToScoreAndDurationHashHelper,ScoreAndDuration>::HashNCHV(v32, 0, 32);
      }

      v33 = v30;
      if (v30 <= 1)
      {
        v33 = 1;
      }

      if (*(*(this + 5) + 120))
      {
        v34 = v33;
      }

      else
      {
        v34 = v9;
      }

      v9 = v34;
      result = ReturnListMgr::setReturnScoreAndDuration(this, v19, v27, v29, v34);
      if (v19 >= a2)
      {
        LOWORD(v35) = v13;
      }

      else
      {
        v35 = -v13;
      }

      v29 += v35;
      ++v19;
      --v30;
    }

    while (v31 < v20);
  }

  return result;
}

uint64_t *ReturnListMgr::setInjectCwids(uint64_t *result, uint64_t a2)
{
  *(result + 8) = 0;
  if (a2)
  {
    v3 = *(a2 + 8);
    if (v3 >= 1)
    {
      v4 = result;
      v5 = 0;
      for (i = 0; i != v3; ++i)
      {
        v7 = *a2 + 16 * i;
        v8 = *(v7 + 8);
        if (v8 >= 1)
        {
          for (j = 0; j != v8; ++j)
          {
            v10 = *(*v7 + 4 * j);
            v11 = v10 & 0xFFFFFF;
            v12 = *(*v7 + 4 * j) >> 25 == 125 || v11 > 0xFFFFF3;
            if (!v12 && *(*(*(*(**VocMgr::smpVocMgr + 8 * (v10 >> 25)) + 48) + 32) + 2 * v11))
            {
              if (!v5)
              {
                goto LABEL_17;
              }

              v13 = *(v4 + 24);
              v14 = v5;
              v15 = 0xFFFFFFFFLL;
              while (1)
              {
                v16 = *v13++;
                if (v16 == v10)
                {
                  break;
                }

                --v15;
                if (!--v14)
                {
                  goto LABEL_17;
                }
              }

              if (!v15)
              {
LABEL_17:
                if (v5 == *(v4 + 36))
                {
                  result = DgnPrimArray<unsigned int>::reallocElts(v4 + 24, 1, 1);
                  v5 = *(v4 + 32);
                }

                *(*(v4 + 24) + 4 * v5) = v10;
                v5 = *(v4 + 32) + 1;
                *(v4 + 32) = v5;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void ReturnListMgr::beginRetListSyncRecog(ReturnListMgr *this, const PrefiltererSearchParamSet *a2)
{
  *(this + 5) = a2;
  v3 = *(a2 + 33);
  v4 = *(a2 + 34);
  v5 = *(a2 + 35);
  *(this + 12) = vcvtd_n_s64_f64(*(a2 + 14), 8uLL);
  *(this + 13) = v4 + v3 - v5;
  if (v4 + v3 - v5 < 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/prefilt/retlist.cpp", 574, "prefilt/retlist", 1, "%d %d %d %d", v4 + v3 - v5, v3, v4, v5);
    a2 = *(this + 5);
  }

  v6 = *(a2 + 31);
  if (v6 == -1)
  {
    *(this + 20) = 100000000;
    v7 = 500000000;
  }

  else
  {
    *(this + 20) = v6;
    v7 = 5 * v6;
    if (v7 < 4)
    {
      v8 = 2;
      goto LABEL_8;
    }
  }

  v8 = 2 * RoundUpToPowerOf2(v7 >> 2, 0);
LABEL_8:
  if (v8 <= 0x20)
  {
    v8 = 32;
  }

  *(this + 18) = v8;
  *(this + 19) = (v8 >> 1) - 1;
}

_DWORD *ReturnListMgr::endRetListSyncRecog(_DWORD *this)
{
  v1 = this;
  this[8] = 0;
  this[24] = 0;
  this[28] = 0;
  v2 = this[16];
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      this = DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(*(*(v1 + 7) + v3));
      *(*(v1 + 7) + v3) = 0;
      v3 -= 8;
    }

    while (v3 != -8);
  }

  v1[16] = 0;
  return this;
}

void ReturnListMgr::setEffectiveLmForCwid(ReturnListMgr *this, unsigned int a2, __int16 a3)
{
  v5 = a2 >> 25;
  v6 = a2 & 0xFFFFFF;
  LODWORD(v7) = *(this + 4);
  if (v7 <= a2 >> 25)
  {
    v8 = v5 + 1;
    v9 = *(this + 5);
    if (v5 >= v9)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 8, v8 - v9, 1);
      v8 = v8 - v7 + *(this + 4);
      LODWORD(v7) = *(this + 4);
    }

    if (v7 <= v8)
    {
      if (v7 < v8)
      {
        v11 = v8 - v7;
        v12 = 16 * v7;
        do
        {
          v13 = (*(this + 1) + v12);
          *v13 = 0;
          v13[1] = 0;
          v12 += 16;
          --v11;
        }

        while (v11);
      }
    }

    else if (v7 > v8)
    {
      v7 = v7;
      v10 = 16 * v7 - 16;
      do
      {
        --v7;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 1) + v10);
        v10 -= 16;
      }

      while (v7 > v8);
    }

    *(this + 4) = v8;
  }

  v14 = *(this + 1) + 16 * v5;
  v15 = *(v14 + 8);
  if (v6 >= v15)
  {
    v17 = v6 + 1;
    v18 = *(v14 + 12);
    if (v6 >= v18)
    {
      DgnPrimArray<short>::reallocElts(*(this + 1) + 16 * v5, v17 - v18, 1);
      v17 = v17 - v15 + *(v14 + 8);
    }

    *(v14 + 8) = v17;
    v16 = *(*(this + 1) + 16 * v5);
    memset_pattern16((v16 + 2 * v15), &unk_262888330, 2 * (v6 - v15) + 2);
  }

  else
  {
    v16 = *v14;
  }

  *(v16 + 2 * v6) = a3;
}

uint64_t HashNCHV<unsigned int,unsigned int,WordToScoreAndDurationHashHelper,ScoreAndDuration>::remove(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (-1640531527 * *a2) >> -v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(result + 80) + 8 * v4;
  while (1)
  {
    v6 = v5;
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (*(v5 + 8) == v2)
    {
      return HashNCHV<unsigned int,unsigned int,WordToScoreAndDurationHashHelper,ScoreAndDuration>::removeBucket(result, v6);
    }
  }

  return result;
}

uint64_t HashNCHV<unsigned int,unsigned int,WordToScoreAndDurationHashHelper,ScoreAndDuration>::HashNCHV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523468;
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
  *(a1 + 104) = 0;
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

void sub_2627431E4(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashNCHV<unsigned int,unsigned int,WordToScoreAndDurationHashHelper,ScoreAndDuration>::~HashNCHV(uint64_t a1)
{
  HashNCHV<unsigned int,unsigned int,WordToScoreAndDurationHashHelper,ScoreAndDuration>::~HashNCHV(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287523468;
  if (*(a1 + 8))
  {
    HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t HashNCHV<unsigned int,unsigned int,WordToScoreAndDurationHashHelper,ScoreAndDuration>::removeBucket(uint64_t result, char ***a2)
{
  v2 = result;
  v3 = *a2;
  *a2 = **a2;
  v4 = *(result + 96);
  if (v4)
  {
    result = v4(v3 + 1);
  }

  v5 = *(v2 + 104);
  if (v5)
  {
    result = v5(v3 + 12);
  }

  *v3 = *(v2 + 32);
  *(v2 + 32) = v3;
  --*(v2 + 8);
  return result;
}

void MrecInitLibrary_pel(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_fmpe_pel();
  MrecInitModule_genclass_pel();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_pel_pel();
  MrecInitModule_pelsc_pel();
  MrecInitModule_scrcache_pel();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_hiersc_pel();
  MrecInitModule_gpuscsm_pel();
  MrecInitModule_pelsrvsm_pel();

  MrecInitModule_sdpres_sdapi();
}

void MrecInitLibrarySet_throughPel(void)
{
  MrecInitLibrarySet_throughSigproc();
  MrecInitLibrarySet_throughNeuralN();

  MrecInitLibrary_pel();
}

void TPItn_Open(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6)
{
  TReentrancyHandler::TReentrancyHandler(&v34, "TPItn_Open");
  TLocaleHandler::TLocaleHandler(&v33);
  MrecInitModule_sdpres_sdapi();
  if (g_bInitialized)
  {
    if (a3 != -1)
    {
      if (a1 | a2)
      {
        if (a5 == -1)
        {
          v12 = 0;
        }

        else
        {
          v12 = verifyTokenizerHandle(a5, "Bad input tokenizer handle");
        }

        v13 = verifyLexiconHandle(a4, "Bad input lexicon handle");
        verifyPointerArgument<TPItnHandle_fake **>(a6, 0, "Bad output ITN handle pointer");
        DataManager = makeDataManager(a1, 1uLL);
        v15 = makeDataManager(a2, 1uLL);
        if (!v12 || *(v12 + 5) == v13)
        {
          if (a3 == 1)
          {
            createFormatter(DataManager, v15, v13, v12);
          }

          if (v15)
          {
            (*(*v15 + 8))(v15);
          }

          conditionalAssert("Bad input formatter tool type", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 106);
          exception = __cxa_allocate_exception(0x28uLL);
          std::string::basic_string[abi:ne200100]<0>(&v31, "Bad input formatter tool type");
          *exception = byte_287529580;
          v23 = (exception + 1);
          if (SHIBYTE(v32) < 0)
          {
            std::string::__init_copy_ctor_external(v23, v31, *(&v31 + 1));
          }

          else
          {
            v29 = v31;
            exception[3] = v32;
            *&v23->__r_.__value_.__l.__data_ = v29;
          }

          *exception = &unk_2875282E0;
          exception[4] = 3;
        }

        conditionalAssert("Lexicon handle does not match tokenizer lexicon", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 97);
        v24 = __cxa_allocate_exception(0x28uLL);
        std::string::basic_string[abi:ne200100]<0>(&v31, "Lexicon handle does not match tokenizer lexicon");
        *v24 = byte_287529580;
        v25 = (v24 + 1);
        if (SHIBYTE(v32) < 0)
        {
          std::string::__init_copy_ctor_external(v25, v31, *(&v31 + 1));
        }

        else
        {
          v30 = v31;
          v24[3] = v32;
          *&v25->__r_.__value_.__l.__data_ = v30;
        }

        *v24 = &unk_2875282E0;
        v24[4] = 3;
      }

      conditionalAssert("Bad model", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 74);
      v20 = __cxa_allocate_exception(0x28uLL);
      std::string::basic_string[abi:ne200100]<0>(&v31, "Bad model");
      *v20 = byte_287529580;
      v21 = (v20 + 1);
      if (SHIBYTE(v32) < 0)
      {
        std::string::__init_copy_ctor_external(v21, v31, *(&v31 + 1));
      }

      else
      {
        v28 = v31;
        v20[3] = v32;
        *&v21->__r_.__value_.__l.__data_ = v28;
      }

      *v20 = &unk_2875282E0;
      v20[4] = 3;
    }

    conditionalAssert("Bad input tool type", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 73);
    v18 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v31, "Bad input tool type");
    *v18 = byte_287529580;
    v19 = (v18 + 1);
    if (SHIBYTE(v32) < 0)
    {
      std::string::__init_copy_ctor_external(v19, v31, *(&v31 + 1));
    }

    else
    {
      v27 = v31;
      v18[3] = v32;
      *&v19->__r_.__value_.__l.__data_ = v27;
    }

    *v18 = &unk_2875282E0;
    v18[4] = 3;
  }

  conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 71);
  v16 = __cxa_allocate_exception(0x28uLL);
  std::string::basic_string[abi:ne200100]<0>(&v31, "Not initialized");
  *v16 = byte_287529580;
  v17 = (v16 + 1);
  if (SHIBYTE(v32) < 0)
  {
    std::string::__init_copy_ctor_external(v17, v31, *(&v31 + 1));
  }

  else
  {
    v26 = v31;
    v16[3] = v32;
    *&v17->__r_.__value_.__l.__data_ = v26;
  }

  *v16 = &unk_2875282E0;
  v16[4] = 4;
}

void sub_262743934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v22)
  {
LABEL_6:
    if (a2 != 3)
    {
      MrecInitModule_sdpres_sdapi();
      TLocaleHandler::~TLocaleHandler(&a20);
      TReentrancyHandler::ms_bIn = 0;
      switch(a2)
      {
        case 7:
          v25 = __cxa_begin_catch(a1);
          v26 = v25 + 8;
          if (v25[31] < 0)
          {
            v26 = *v26;
          }

          handleException(v26, "TPItn_Open", *(v25 + 4));
          break;
        case 6:
          v27 = __cxa_begin_catch(a1);
          v28 = v27 + 8;
          if (v27[31] < 0)
          {
            v28 = *v28;
          }

          handleException(v28, "TPItn_Open", 6);
          break;
        case 5:
          v29 = __cxa_begin_catch(a1);
          v30 = v29 + 8;
          if (v29[31] < 0)
          {
            v30 = *v30;
          }

          handleException(v30, "TPItn_Open", 2);
          break;
        case 4:
          v31 = __cxa_begin_catch(a1);
          v32 = v31 + 8;
          if (v31[31] < 0)
          {
            v32 = *v32;
          }

          handleException(v32, "TPItn_Open", 11);
          break;
        case 2:
          v33 = __cxa_begin_catch(a1);
          v34 = (*(*v33 + 16))(v33);
          handleException(v34, "TPItn_Open", 1);
          break;
        default:
          if (a2 != 1)
          {
            _Unwind_Resume(a1);
          }

          v35 = __cxa_begin_catch(a1);
          v36 = (*(*v35 + 16))(v35);
          handleException(v36, "TPItn_Open", 2);
          break;
      }

      __cxa_end_catch();
      JUMPOUT(0x262743504);
    }

    __cxa_begin_catch(a1);
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    __cxa_rethrow();
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t verifyPointerArgument<TPItnHandle_fake **>(uint64_t result, char a2, char *a3)
{
  if (!result && (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 279);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v7, a3);
    *exception = byte_287529580;
    v5 = (exception + 1);
    if (SHIBYTE(v8) < 0)
    {
      std::string::__init_copy_ctor_external(v5, v7, *(&v7 + 1));
    }

    else
    {
      v6 = v7;
      exception[3] = v8;
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  return result;
}

void sub_262743D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t TPItn_Close(unint64_t a1)
{
  TReentrancyHandler::TReentrancyHandler(&v11, "TPItn_Close");
  TLocaleHandler::TLocaleHandler(&v9);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 129);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v7, "Not initialized");
    *exception = byte_287529580;
    v5 = (exception + 1);
    if (SHIBYTE(v8) < 0)
    {
      std::string::__init_copy_ctor_external(v5, v7, *(&v7 + 1));
    }

    else
    {
      v6 = v7;
      exception[3] = v8;
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v2 = verifyFormatterHandle(a1, "Bad input ITN handle");
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  MrecInitModule_sdpres_sdapi();
  if ((v10 & 1) == 0)
  {
    uselocale(v9);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_262743F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v21)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&a20);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v24 = __cxa_begin_catch(a1);
        v25 = v24 + 8;
        if (v24[31] < 0)
        {
          v25 = *v25;
        }

        handleException(v25, "TPItn_Close", *(v24 + 4));
        break;
      case 6:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPItn_Close", 6);
        break;
      case 5:
        v28 = __cxa_begin_catch(a1);
        v29 = v28 + 8;
        if (v28[31] < 0)
        {
          v29 = *v29;
        }

LABEL_17:
        handleException(v29, "TPItn_Close", 2);
        break;
      case 4:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPItn_Close", 11);
        break;
      case 3:
        v32 = __cxa_begin_catch(a1);
        v29 = v32 + 8;
        if (v32[31] < 0)
        {
          v29 = *v29;
        }

        goto LABEL_17;
      case 2:
        v33 = __cxa_begin_catch(a1);
        v34 = (*(*v33 + 16))(v33);
        handleException(v34, "TPItn_Close", 1);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v35 = __cxa_begin_catch(a1);
        v36 = (*(*v35 + 16))(v35);
        handleException(v36, "TPItn_Close", 2);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x262743E6CLL);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t verifyFormatterHandle(unint64_t a1, char *a2)
{
  Registry = TRegisterable<TIFormatter>::getRegistry();
  v5 = TBaseRegistry<TTokenizer *>::find(Registry, a1);
  if (*(Registry + 16) == v5)
  {
    conditionalAssert(a2, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 47);
    exception = __cxa_allocate_exception(0x28uLL);
    v8 = a2;
    v9 = exception;
    std::string::basic_string[abi:ne200100]<0>(&v12, v8);
    *v9 = byte_287529580;
    v10 = (v9 + 1);
    if (SHIBYTE(v13) < 0)
    {
      std::string::__init_copy_ctor_external(v10, v12, *(&v12 + 1));
    }

    else
    {
      v11 = v12;
      v9[3] = v13;
      *&v10->__r_.__value_.__l.__data_ = v11;
    }

    *v9 = &unk_2875282E0;
    v9[4] = 3;
  }

  return *v5;
}

void sub_2627442F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t verifyStringStreamArgument(uint64_t result, unint64_t a2, char a3, char *a4)
{
  if (!result && (a3 & 1) == 0)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 326);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, a4);
    *exception = byte_287529580;
    v6 = (exception + 1);
    if (SHIBYTE(v9) < 0)
    {
      std::string::__init_copy_ctor_external(v6, v8, *(&v8 + 1));
    }

    else
    {
      v7 = v8;
      exception[3] = v9;
      *&v6->__r_.__value_.__l.__data_ = v7;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  return result;
}

void sub_262744428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_262744630(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TPItn_WordSequenceToResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, void *a10, _DWORD *a11, const char *a12)
{
  v12 = MEMORY[0x28223BE20](a1, a2);
  v81 = v14;
  v82 = v13;
  v16 = v15;
  v18 = v17;
  v80 = v19;
  v21 = v20;
  v23 = v22;
  v24 = v12;
  v105[128] = *MEMORY[0x277D85DE8];
  TReentrancyHandler::TReentrancyHandler(&v97, "TPItn_WordSequenceToResult");
  TLocaleHandler::TLocaleHandler(&v95);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 671);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v91, "Not initialized");
    *exception = byte_287529580;
    v71 = (exception + 1);
    if ((v91[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v71, *v91, *&v91[8]);
    }

    else
    {
      v75 = *v91;
      exception[3] = *&v91[16];
      *&v71->__r_.__value_.__l.__data_ = v75;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v79 = v21;
  v25 = verifyFormatterHandle(v24, "Bad input ITN handle");
  v26 = (*(*v25 + 8))(v25);
  if (!v26)
  {
    conditionalAssert("Results not supported", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 675);
    v72 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v91, "Results not supported");
    *v72 = byte_287529580;
    v73 = (v72 + 1);
    if ((v91[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v73, *v91, *&v91[8]);
    }

    else
    {
      v76 = *v91;
      v72[3] = *&v91[16];
      *&v73->__r_.__value_.__l.__data_ = v76;
    }

    *v72 = &unk_2875282E0;
    v72[4] = 13;
  }

  v27 = (*(*v25 + 4))(v25);
  if (!v23 || ((*(v27 + 80) - *(v27 + 72)) >> 5) - 1 < v23)
  {
    conditionalAssert("Bad input parameter configuration handle", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 678);
    v68 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v91, "Bad input parameter configuration handle");
    *v68 = byte_287529580;
    v69 = (v68 + 1);
    if ((v91[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v69, *v91, *&v91[8]);
    }

    else
    {
      v74 = *v91;
      v68[3] = *&v91[16];
      *&v69->__r_.__value_.__l.__data_ = v74;
    }

    *v68 = &unk_2875282E0;
    v68[4] = 3;
  }

  v28 = (*(*v25 + 4))(v25);
  v77 = *(v28 + 136);
  v78 = v28;
  *(v28 + 136) = v23;
  verifyPointerArgument<TPItnResultHandle_fake **,unsigned int>(v21, v82, 1, "Bad input result array");
  if (v82)
  {
    v29 = v82;
    do
    {
      if (((*(*v26 + 128))(v26, *v21) & 1) == 0)
      {
        conditionalAssert("Bad input result handle", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 685);
        v59 = __cxa_allocate_exception(0x28uLL);
        std::string::basic_string[abi:ne200100]<0>(v91, "Bad input result handle");
        *v59 = byte_287529580;
        v60 = (v59 + 1);
        if ((v91[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v60, *v91, *&v91[8]);
        }

        else
        {
          v65 = *v91;
          v59[3] = *&v91[16];
          *&v60->__r_.__value_.__l.__data_ = v65;
        }

        *v59 = &unk_2875282E0;
        v59[4] = 3;
      }

      ++v21;
      --v29;
    }

    while (v29);
  }

  verifyRange(v80, 0, v82, 0, "Bad input replaced range");
  verifyStringStreamArgument(v18, v81, 0, "Bad input word stream");
  TAllocator::TAllocator(v94, 2048);
  *&v91[8] = xmmword_26286B6F0;
  v93 = 1;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  *v91 = v92;
  std::vector<wchar_t const*>::reserve(&v88, v81);
  if (v81)
  {
    v30 = v81;
    do
    {
      TBuffer<wchar_t>::resize(v91, 0);
      if (TLocaleInfo::multiByteToUnicode(v25[4] + 240, v18, v91))
      {
        conditionalAssert("Bad input wordname encoding", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 701);
        v61 = __cxa_allocate_exception(0x28uLL);
        std::string::basic_string[abi:ne200100]<0>(v84, "Bad input wordname encoding");
        *v61 = byte_287529580;
        v62 = (v61 + 1);
        if ((v84[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v62, *v84, *&v84[8]);
        }

        else
        {
          v66 = *v84;
          v61[3] = *&v84[16];
          *&v62->__r_.__value_.__l.__data_ = v66;
        }

        *v61 = &unk_2875282E0;
        v61[4] = 3;
      }

      v31 = v25[4];
      if (*&v91[16] >= *&v91[8])
      {
        if (v93)
        {
          *v84 = 0;
          TBuffer<wchar_t>::insert(v91, *&v91[16], v84, 1uLL);
          --*&v91[16];
          v32 = *v91;
        }

        else
        {
          v32 = *v91;
          if (*&v91[8])
          {
            *(*v91 + 4 * *&v91[8] - 4) = 0;
          }
        }
      }

      else
      {
        v32 = *v91;
        *(*v91 + 4 * *&v91[16]) = 0;
      }

      if (TLexicon::checkName(v31, v32, 0, 0xFFFFFFFFFFFFFFFFLL))
      {
        conditionalAssert("Bad input wordname format", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 703);
        v63 = __cxa_allocate_exception(0x28uLL);
        std::string::basic_string[abi:ne200100]<0>(v84, "Bad input wordname format");
        *v63 = byte_287529580;
        v64 = (v63 + 1);
        if ((v84[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v64, *v84, *&v84[8]);
        }

        else
        {
          v67 = *v84;
          v63[3] = *&v84[16];
          *&v64->__r_.__value_.__l.__data_ = v67;
        }

        *v63 = &unk_2875282E0;
        v63[4] = 3;
      }

      if ((*&v91[16] + 1) >> 62)
      {
        v33 = -1;
      }

      else
      {
        v33 = 4 * (*&v91[16] + 1);
      }

      v34 = TAllocator::allocate(v94, v33);
      if (*&v91[16] >= *&v91[8])
      {
        if (v93)
        {
          *v84 = 0;
          TBuffer<wchar_t>::insert(v91, *&v91[16], v84, 1uLL);
          --*&v91[16];
          v35 = *v91;
        }

        else
        {
          v35 = *v91;
          if (*&v91[8])
          {
            *(*v91 + 4 * *&v91[8] - 4) = 0;
          }
        }
      }

      else
      {
        v35 = *v91;
        *(*v91 + 4 * *&v91[16]) = 0;
      }

      wcscpy(v34, v35);
      v36 = v89;
      if (v89 >= v90)
      {
        v38 = (v89 - v88) >> 3;
        if ((v38 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v39 = (v90 - v88) >> 2;
        if (v39 <= v38 + 1)
        {
          v39 = v38 + 1;
        }

        if (v90 - v88 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(&v88, v40);
        }

        v41 = (8 * v38);
        *v41 = v34;
        v37 = 8 * v38 + 8;
        v42 = v41 - (v89 - v88);
        memcpy(v42, v88, v89 - v88);
        v43 = v88;
        v88 = v42;
        v89 = v37;
        v90 = 0;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        *v89 = v34;
        v37 = (v36 + 8);
      }

      v89 = v37;
      v18 += strlen(v18) + 1;
      --v30;
    }

    while (v30);
  }

  if (v16 != 0 && v81 != 0)
  {
    v44 = v81 - 1;
  }

  else
  {
    v44 = 0;
  }

  verifyPointerArgument<unsigned int,unsigned int>(v16, v44, 1, "Bad input pause duration array");
  v45 = a10;
  verifyPointerArgument<TPItnResultHandle_fake **>(a10, 0, "Bad output result handle pointer");
  v46 = a11;
  verifyPointerArgument<TPRange>(a11, 0, "Bad output real replaced range");
  v47 = a9;
  if (a12)
  {
    DirSep = getDirSep();
    sprintf(v105, "%s%citn.txt", a12, DirSep);
    std::ofstream::basic_ofstream(&v101, v105, 16);
    TOutputStream::TOutputStream(v87, &v101, v105, v25[4] + 240);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "NumInResult=", 12);
    MEMORY[0x26672B070](v87[0], v82);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "NumReplacementStart=", 20);
    MEMORY[0x26672B070](v87[0], *v80);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "NumReplacementLength=", 21);
    MEMORY[0x26672B070](v87[0], v80[1] - *v80);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "NumToken=", 9);
    MEMORY[0x26672B070](v87[0], v81);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "\n", 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "TokenSequence=", 14);
    *v84 = v85;
    *&v84[8] = xmmword_26286B6F0;
    v86 = 1;
    if (v81)
    {
      for (i = 0; i != v81; ++i)
      {
        if (i)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], " ", 1);
        }

        TBuffer<wchar_t>::resize(v84, 0);
        tildeEscape(*&v88[8 * i], v84);
        if (*&v84[16] >= *&v84[8])
        {
          if (v86)
          {
            LODWORD(v98) = 0;
            TBuffer<wchar_t>::insert(v84, *&v84[16], &v98, 1uLL);
            v50 = *v84;
            --*&v84[16];
          }

          else
          {
            v50 = *v84;
            if (*&v84[8])
            {
              *(*v84 + 4 * *&v84[8] - 4) = 0;
            }
          }
        }

        else
        {
          v50 = *v84;
          *(*v84 + 4 * *&v84[16]) = 0;
        }

        TOutputStream::operator<<(v87, v50);
        if (v16 && i < v81 - 1 && *(v16 + 4 * i))
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], " [", 2);
          MEMORY[0x26672B070](v87[0], *(v16 + 4 * i));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "]", 1);
        }
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "\n", 1);
    v47 = a9;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "NumFlags=", 9);
    MEMORY[0x26672B070](v87[0], a9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87[0], "\n", 1);
    v51 = getDirSep();
    sprintf(v105, "%s%citn_d.enh", a12, v51);
    v83[0] = 1;
    v83[1] = v105;
    DataManager = makeDataManager(v83, 6uLL);
    (*(*v25 + 2))(v25, DataManager, 0);
    if (DataManager)
    {
      (*(*DataManager + 8))(DataManager);
    }

    v53 = getDirSep();
    sprintf(v104, "%s%cgeneral.voc", a12, v53);
    TLexicon::save(v25[4], 0, v104);
    v54 = getDirSep();
    sprintf(v105, "%s%citn.res", a12, v54);
    std::ofstream::basic_ofstream(&v98, v105, 4);
    if (v82)
    {
      (*(*v26 + 112))(v26, *v79, 0, 0);
      operator new[]();
    }

    v98 = *MEMORY[0x277D82810];
    v55 = v98;
    v56 = *(MEMORY[0x277D82810] + 24);
    *(&v98 + *(v98 - 24)) = v56;
    MEMORY[0x26672AFA0](&v99);
    std::ostream::~ostream();
    MEMORY[0x26672B160](&v100);
    if (v86 == 1 && *v84 != v85 && *v84)
    {
      MEMORY[0x26672B1B0]();
    }

    v101 = v55;
    *(&v101 + *(v55 - 24)) = v56;
    MEMORY[0x26672AFA0](&v102);
    std::ostream::~ostream();
    MEMORY[0x26672B160](&v103);
    v46 = a11;
    v45 = a10;
  }

  *v84 = 0;
  v105[0] = 0;
  *v45 = (*(*v26 + 16))(v26, v79, &v79[*v80], &v79[v80[1]], &v79[v82], &v88, v16, v47, v84, v105);
  v57 = (v105[0] - v79) >> 3;
  *v46 = (*v84 - v79) >> 3;
  v46[1] = v57;
  TLexicon::cleanCache(v25[4]);
  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v93 == 1 && *v91 != v92 && *v91)
  {
    MEMORY[0x26672B1B0](*v91, 0x1000C4052888210);
  }

  TAllocator::clear(v94);
  *(v78 + 136) = v77;
  MrecInitModule_sdpres_sdapi();
  if ((v96 & 1) == 0)
  {
    uselocale(v95);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_2627456F8(void *a1, int a2)
{
  if (SLOBYTE(STACK[0x4FF]) < 0)
  {
    operator delete(*(v4 + 48));
    if ((v3 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&STACK[0x938]);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v7 = __cxa_begin_catch(a1);
        v8 = v7 + 8;
        if (v7[31] < 0)
        {
          v8 = *v8;
        }

        handleException(v8, "TPItn_WordSequenceToResult", *(v7 + 4));
        __cxa_end_catch();
        break;
      case 6:
        v9 = __cxa_begin_catch(a1);
        v10 = v9 + 8;
        if (v9[31] < 0)
        {
          v10 = *v10;
        }

        handleException(v10, "TPItn_WordSequenceToResult", 6);
        __cxa_end_catch();
        break;
      case 5:
        v11 = __cxa_begin_catch(a1);
        v12 = v11 + 8;
        if (v11[31] < 0)
        {
          v12 = *v12;
        }

LABEL_17:
        handleException(v12, "TPItn_WordSequenceToResult", 2);
        __cxa_end_catch();
        break;
      case 4:
        v13 = __cxa_begin_catch(a1);
        v14 = v13 + 8;
        if (v13[31] < 0)
        {
          v14 = *v14;
        }

        handleException(v14, "TPItn_WordSequenceToResult", 11);
        __cxa_end_catch();
        break;
      case 3:
        v15 = __cxa_begin_catch(a1);
        v12 = v15 + 8;
        if (v15[31] < 0)
        {
          v12 = *v12;
        }

        goto LABEL_17;
      case 2:
        v16 = __cxa_begin_catch(a1);
        v17 = (*(*v16 + 16))(v16);
        handleException(v17, "TPItn_WordSequenceToResult", 1);
        __cxa_end_catch();
        break;
      case 1:
        v18 = __cxa_begin_catch(a1);
        v19 = (*(*v18 + 16))(v18);
        handleException(v19, "TPItn_WordSequenceToResult", 2);
        __cxa_end_catch();
        break;
      default:
        JUMPOUT(0x26274579CLL);
    }

    JUMPOUT(0x2627451FCLL);
  }

  __cxa_free_exception(v2);
  goto LABEL_6;
}

void sub_262745754(void *a1, int a2)
{
  if (a2 == 3)
  {
    __cxa_begin_catch(a1);
    __cxa_rethrow();
  }

  JUMPOUT(0x2627458FCLL);
}

void sub_262745794(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_2627457E0(void *a1, int a2)
{
  if (a2 == 3)
  {
    saveDump(a1, v2);
    __cxa_rethrow();
  }

  JUMPOUT(0x2627458FCLL);
}

void sub_262745824(void *a1, int a2)
{
  MrecInitModule_sdpres_sdapi();
  TLocaleHandler::~TLocaleHandler(&STACK[0x938]);
  TReentrancyHandler::ms_bIn = 0;
  switch(a2)
  {
    case 7:
      v4 = __cxa_begin_catch(a1);
      v5 = v4 + 8;
      if (v4[31] < 0)
      {
        v5 = *v5;
      }

      handleException(v5, "TPItn_WordSequenceToResult", *(v4 + 4));
      __cxa_end_catch();
      break;
    case 6:
      v6 = __cxa_begin_catch(a1);
      v7 = v6 + 8;
      if (v6[31] < 0)
      {
        v7 = *v7;
      }

      handleException(v7, "TPItn_WordSequenceToResult", 6);
      __cxa_end_catch();
      break;
    case 5:
      v8 = __cxa_begin_catch(a1);
      v9 = v8 + 8;
      if (v8[31] < 0)
      {
        v9 = *v9;
      }

LABEL_12:
      handleException(v9, "TPItn_WordSequenceToResult", 2);
      __cxa_end_catch();
      break;
    case 4:
      v10 = __cxa_begin_catch(a1);
      v11 = v10 + 8;
      if (v10[31] < 0)
      {
        v11 = *v11;
      }

      handleException(v11, "TPItn_WordSequenceToResult", 11);
      __cxa_end_catch();
      break;
    case 3:
      v12 = __cxa_begin_catch(a1);
      v9 = v12 + 8;
      if (v12[31] < 0)
      {
        v9 = *v9;
      }

      goto LABEL_12;
    case 2:
      v13 = __cxa_begin_catch(a1);
      v14 = (*(*v13 + 16))(v13);
      handleException(v14, "TPItn_WordSequenceToResult", 1);
      __cxa_end_catch();
      break;
    case 1:
      v15 = __cxa_begin_catch(a1);
      v16 = (*(*v15 + 16))(v15);
      handleException(v16, "TPItn_WordSequenceToResult", 2);
      __cxa_end_catch();
      break;
    default:
      JUMPOUT(0x26274579CLL);
  }

  JUMPOUT(0x2627451FCLL);
}

void sub_262745830(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((v34 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v34)
  {
LABEL_6:
    JUMPOUT(0x262745944);
  }

  __cxa_free_exception(v33);
  goto LABEL_6;
}

void sub_262745874()
{
  if (SLOBYTE(STACK[0x4FF]) < 0)
  {
    operator delete(*(v2 + 48));
    if ((v1 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v1)
  {
LABEL_6:
    JUMPOUT(0x262745990);
  }

  __cxa_free_exception(v0);
  goto LABEL_6;
}

void sub_2627458F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (LOBYTE(STACK[0x4B0]) == 1 && a28 != a11 && a28)
  {
    MEMORY[0x26672B1B0]();
  }

  std::ofstream::~ofstream(&STACK[0xB88]);
  v29 = v28[3];
  if (v29)
  {
    v28[4] = v29;
    operator delete(v29);
  }

  if (LOBYTE(STACK[0x900]) == 1)
  {
    v30 = v28[6];
    if (v30 != a16)
    {
      if (v30)
      {
        MEMORY[0x26672B1B0](v30, 0x1000C4052888210);
      }
    }
  }

  TAllocator::clear(&STACK[0x908]);
  *(a20 + 136) = a19;
  JUMPOUT(0x262745998);
}

uint64_t verifyPointerArgument<TPItnResultHandle_fake **,unsigned int>(uint64_t result, int a2, int a3, char *a4)
{
  if (!result && a2 && a3)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 269);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, a4);
    *exception = byte_287529580;
    v7 = (exception + 1);
    if (SHIBYTE(v14) < 0)
    {
      std::string::__init_copy_ctor_external(v7, v13, *(&v13 + 1));
    }

    else
    {
      v11 = v13;
      exception[3] = v14;
      *&v7->__r_.__value_.__l.__data_ = v11;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  if (a2)
  {
    v4 = result == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 && (a3 & 1) == 0)
  {
    conditionalAssert(a4, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 270);
    v9 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, a4);
    *v9 = byte_287529580;
    v10 = (v9 + 1);
    if (SHIBYTE(v14) < 0)
    {
      std::string::__init_copy_ctor_external(v10, v13, *(&v13 + 1));
    }

    else
    {
      v12 = v13;
      v9[3] = v14;
      *&v10->__r_.__value_.__l.__data_ = v12;
    }

    *v9 = &unk_2875282E0;
    v9[4] = 3;
  }

  return result;
}

void sub_262745DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *verifyRange(unsigned int *result, unsigned int a2, unsigned int a3, char a4, char *a5)
{
  if (!result && (a4 & 1) == 0)
  {
    conditionalAssert(a5, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 349);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, a5);
    *exception = byte_287529580;
    v8 = (exception + 1);
    if (SHIBYTE(v20) < 0)
    {
      std::string::__init_copy_ctor_external(v8, v19, *(&v19 + 1));
    }

    else
    {
      v15 = v19;
      exception[3] = v20;
      *&v8->__r_.__value_.__l.__data_ = v15;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  if (result)
  {
    v6 = result[1];
    if (*result > v6)
    {
      conditionalAssert(a5, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 352);
      v9 = __cxa_allocate_exception(0x28uLL);
      std::string::basic_string[abi:ne200100]<0>(&v19, a5);
      *v9 = byte_287529580;
      v10 = (v9 + 1);
      if (SHIBYTE(v20) < 0)
      {
        std::string::__init_copy_ctor_external(v10, v19, *(&v19 + 1));
      }

      else
      {
        v16 = v19;
        v9[3] = v20;
        *&v10->__r_.__value_.__l.__data_ = v16;
      }

      *v9 = &unk_2875282E0;
      v9[4] = 3;
    }

    if (*result < a2)
    {
      conditionalAssert(a5, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 353);
      v11 = __cxa_allocate_exception(0x28uLL);
      std::string::basic_string[abi:ne200100]<0>(&v19, a5);
      *v11 = byte_287529580;
      v12 = (v11 + 1);
      if (SHIBYTE(v20) < 0)
      {
        std::string::__init_copy_ctor_external(v12, v19, *(&v19 + 1));
      }

      else
      {
        v17 = v19;
        v11[3] = v20;
        *&v12->__r_.__value_.__l.__data_ = v17;
      }

      *v11 = &unk_2875282E0;
      v11[4] = 3;
    }

    if (v6 > a3)
    {
      conditionalAssert(a5, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 354);
      v13 = __cxa_allocate_exception(0x28uLL);
      std::string::basic_string[abi:ne200100]<0>(&v19, a5);
      *v13 = byte_287529580;
      v14 = (v13 + 1);
      if (SHIBYTE(v20) < 0)
      {
        std::string::__init_copy_ctor_external(v14, v19, *(&v19 + 1));
      }

      else
      {
        v18 = v19;
        v13[3] = v20;
        *&v14->__r_.__value_.__l.__data_ = v18;
      }

      *v13 = &unk_2875282E0;
      v13[4] = 3;
    }
  }

  return result;
}

void sub_262746158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t verifyPointerArgument<TPItnResultHandle_fake **>(uint64_t result, char a2, char *a3)
{
  if (!result && (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 279);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v7, a3);
    *exception = byte_287529580;
    v5 = (exception + 1);
    if (SHIBYTE(v8) < 0)
    {
      std::string::__init_copy_ctor_external(v5, v7, *(&v7 + 1));
    }

    else
    {
      v6 = v7;
      exception[3] = v8;
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  return result;
}

void sub_262746298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t verifyPointerArgument<TPRange>(uint64_t result, char a2, char *a3)
{
  if (!result && (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 279);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v7, a3);
    *exception = byte_287529580;
    v5 = (exception + 1);
    if (SHIBYTE(v8) < 0)
    {
      std::string::__init_copy_ctor_external(v5, v7, *(&v7 + 1));
    }

    else
    {
      v6 = v7;
      exception[3] = v8;
      *&v5->__r_.__value_.__l.__data_ = v6;
    }

    *exception = &unk_2875282E0;
    exception[4] = 3;
  }

  return result;
}

void sub_2627463C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x26672AFA0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x26672B160](a1 + 52);
  return a1;
}

uint64_t TPItn_DeleteResult(unint64_t a1, uint64_t a2)
{
  TReentrancyHandler::TReentrancyHandler(&v21, "TPItn_DeleteResult");
  TLocaleHandler::TLocaleHandler(&v19);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 1087);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "Not initialized");
    *exception = byte_287529580;
    v9 = (exception + 1);
    if (SHIBYTE(v18) < 0)
    {
      std::string::__init_copy_ctor_external(v9, v17, *(&v17 + 1));
    }

    else
    {
      v14 = v17;
      exception[3] = v18;
      *&v9->__r_.__value_.__l.__data_ = v14;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v4 = verifyFormatterHandle(a1, "Bad input ITN handle");
  v5 = (*(*v4 + 64))(v4);
  v6 = v5;
  if (!v5)
  {
    conditionalAssert("Results not supported", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 1091);
    v10 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "Results not supported");
    *v10 = byte_287529580;
    v11 = (v10 + 1);
    if (SHIBYTE(v18) < 0)
    {
      std::string::__init_copy_ctor_external(v11, v17, *(&v17 + 1));
    }

    else
    {
      v15 = v17;
      v10[3] = v18;
      *&v11->__r_.__value_.__l.__data_ = v15;
    }

    *v10 = &unk_2875282E0;
    v10[4] = 13;
  }

  if (((*(*v5 + 128))(v5, a2) & 1) == 0)
  {
    conditionalAssert("Bad input result handle", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 1094);
    v12 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v17, "Bad input result handle");
    *v12 = byte_287529580;
    v13 = (v12 + 1);
    if (SHIBYTE(v18) < 0)
    {
      std::string::__init_copy_ctor_external(v13, v17, *(&v17 + 1));
    }

    else
    {
      v16 = v17;
      v12[3] = v18;
      *&v13->__r_.__value_.__l.__data_ = v16;
    }

    *v12 = &unk_2875282E0;
    v12[4] = 3;
  }

  (*(*v6 + 64))(v6, a2);
  MrecInitModule_sdpres_sdapi();
  if ((v20 & 1) == 0)
  {
    uselocale(v19);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_26274684C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v21)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&a20);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v24 = __cxa_begin_catch(a1);
        v25 = v24 + 8;
        if (v24[31] < 0)
        {
          v25 = *v25;
        }

        handleException(v25, "TPItn_DeleteResult", *(v24 + 4));
        break;
      case 6:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPItn_DeleteResult", 6);
        break;
      case 5:
        v28 = __cxa_begin_catch(a1);
        v29 = v28 + 8;
        if (v28[31] < 0)
        {
          v29 = *v29;
        }

LABEL_17:
        handleException(v29, "TPItn_DeleteResult", 2);
        break;
      case 4:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPItn_DeleteResult", 11);
        break;
      case 3:
        v32 = __cxa_begin_catch(a1);
        v29 = v32 + 8;
        if (v32[31] < 0)
        {
          v29 = *v29;
        }

        goto LABEL_17;
      case 2:
        v33 = __cxa_begin_catch(a1);
        v34 = (*(*v33 + 16))(v33);
        handleException(v34, "TPItn_DeleteResult", 1);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v35 = __cxa_begin_catch(a1);
        v36 = (*(*v35 + 16))(v35);
        handleException(v36, "TPItn_DeleteResult", 2);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x2627465DCLL);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t TPItn_GetResultText(unint64_t a1, uint64_t a2, uint64_t a3, int a4, _DWORD *a5)
{
  v31 = *MEMORY[0x277D85DE8];
  TReentrancyHandler::TReentrancyHandler(&v25, "TPItn_GetResultText");
  TLocaleHandler::TLocaleHandler(&v23);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 1143);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v27, "Not initialized");
    *exception = byte_287529580;
    v15 = (exception + 1);
    if (SHIBYTE(v28) < 0)
    {
      std::string::__init_copy_ctor_external(v15, v27, *(&v27 + 1));
    }

    else
    {
      v20 = v27;
      exception[3] = v28;
      *&v15->__r_.__value_.__l.__data_ = v20;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v10 = verifyFormatterHandle(a1, "Bad input ITN handle");
  v11 = (*(*v10 + 64))(v10);
  v12 = v11;
  if (!v11)
  {
    conditionalAssert("Results not supported", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 1147);
    v16 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v27, "Results not supported");
    *v16 = byte_287529580;
    v17 = (v16 + 1);
    if (SHIBYTE(v28) < 0)
    {
      std::string::__init_copy_ctor_external(v17, v27, *(&v27 + 1));
    }

    else
    {
      v21 = v27;
      v16[3] = v28;
      *&v17->__r_.__value_.__l.__data_ = v21;
    }

    *v16 = &unk_2875282E0;
    v16[4] = 13;
  }

  if (((*(*v11 + 128))(v11, a2) & 1) == 0)
  {
    conditionalAssert("Bad input result handle", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 1150);
    v18 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v27, "Bad input result handle");
    *v18 = byte_287529580;
    v19 = (v18 + 1);
    if (SHIBYTE(v28) < 0)
    {
      std::string::__init_copy_ctor_external(v19, v27, *(&v27 + 1));
    }

    else
    {
      v22 = v27;
      v18[3] = v28;
      *&v19->__r_.__value_.__l.__data_ = v22;
    }

    *v18 = &unk_2875282E0;
    v18[4] = 3;
  }

  verifyPointerArgument<char,unsigned int>(a3, a4, 1, "Bad output text buffer");
  *&v27 = a3;
  *(&v27 + 1) = a4;
  v28 = 0;
  v30 = 0;
  (*(*v12 + 96))(v12, a2, &v27);
  if (v28 >= *(&v27 + 1))
  {
    if (v30)
    {
      v26 = 0;
      TBuffer<char>::insert(&v27, v28--, &v26, 1uLL);
    }

    else if (*(&v27 + 1))
    {
      *(v27 + *(&v27 + 1) - 1) = 0;
    }
  }

  else
  {
    v28[v27] = 0;
  }

  if (a5)
  {
    *a5 = v28 + 1;
  }

  if (v30 == 1 && v27 != &v29 && v27)
  {
    MEMORY[0x26672B1B0]();
  }

  MrecInitModule_sdpres_sdapi();
  if ((v24 & 1) == 0)
  {
    uselocale(v23);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_262746F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, locale_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v56 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v56)
  {
LABEL_7:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler(&a14);
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v59 = __cxa_begin_catch(a1);
        v60 = v59 + 8;
        if (v59[31] < 0)
        {
          v60 = *v60;
        }

        handleException(v60, "TPItn_GetResultText", *(v59 + 4));
        __cxa_end_catch();
        break;
      case 6:
        v61 = __cxa_begin_catch(a1);
        v62 = v61 + 8;
        if (v61[31] < 0)
        {
          v62 = *v62;
        }

        handleException(v62, "TPItn_GetResultText", 6);
        __cxa_end_catch();
        break;
      case 5:
        v63 = __cxa_begin_catch(a1);
        v64 = v63 + 8;
        if (v63[31] < 0)
        {
          v64 = *v64;
        }

LABEL_18:
        handleException(v64, "TPItn_GetResultText", 2);
        __cxa_end_catch();
        break;
      case 4:
        v65 = __cxa_begin_catch(a1);
        v66 = v65 + 8;
        if (v65[31] < 0)
        {
          v66 = *v66;
        }

        handleException(v66, "TPItn_GetResultText", 11);
        __cxa_end_catch();
        break;
      case 3:
        v67 = __cxa_begin_catch(a1);
        v64 = v67 + 8;
        if (v67[31] < 0)
        {
          v64 = *v64;
        }

        goto LABEL_18;
      case 2:
        v68 = __cxa_begin_catch(a1);
        v69 = (*(*v68 + 16))(v68);
        handleException(v69, "TPItn_GetResultText", 1);
        __cxa_end_catch();
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v70 = __cxa_begin_catch(a1);
        v71 = (*(*v70 + 16))(v70);
        handleException(v71, "TPItn_GetResultText", 2);
        __cxa_end_catch();
        break;
    }

    JUMPOUT(0x262746CF0);
  }

  __cxa_free_exception(v55);
  goto LABEL_7;
}

uint64_t TPItn_GetResultAlignment(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6)
{
  TReentrancyHandler::TReentrancyHandler(&v35, "TPItn_GetResultAlignment");
  TLocaleHandler::TLocaleHandler(&v33);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 1172);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v30, "Not initialized");
    *exception = byte_287529580;
    v22 = (exception + 1);
    if ((v30[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v22, *v30, *&v30[8]);
    }

    else
    {
      v27 = *v30;
      exception[3] = *&v30[16];
      *&v22->__r_.__value_.__l.__data_ = v27;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v12 = verifyFormatterHandle(a1, "Bad input ITN handle");
  v13 = (*(*v12 + 64))(v12);
  v14 = v13;
  if (!v13)
  {
    conditionalAssert("Results not supported", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 1176);
    v23 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v30, "Results not supported");
    *v23 = byte_287529580;
    v24 = (v23 + 1);
    if ((v30[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v24, *v30, *&v30[8]);
    }

    else
    {
      v28 = *v30;
      v23[3] = *&v30[16];
      *&v24->__r_.__value_.__l.__data_ = v28;
    }

    *v23 = &unk_2875282E0;
    v23[4] = 13;
  }

  if (((*(*v13 + 128))(v13, a2) & 1) == 0)
  {
    conditionalAssert("Bad input result handle", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpitn.cpp", 1179);
    v25 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v30, "Bad input result handle");
    *v25 = byte_287529580;
    v26 = (v25 + 1);
    if ((v30[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v26, *v30, *&v30[8]);
    }

    else
    {
      v29 = *v30;
      v25[3] = *&v30[16];
      *&v26->__r_.__value_.__l.__data_ = v29;
    }

    *v25 = &unk_2875282E0;
    v25[4] = 3;
  }

  verifyPointerArgument<unsigned int,unsigned int>(a3, a5, 1, "Bad output relative-text buffer");
  verifyPointerArgument<unsigned int,unsigned int>(a4, a5, 1, "Bad output relative-word buffer");
  *v30 = v31;
  *&v30[8] = xmmword_26286B6F0;
  v32 = 1;
  (*(*v14 + 120))(v14, a2, v30);
  v15 = *&v30[16];
  if (a5 && *&v30[16])
  {
    v16 = 0;
    v17 = (*v30 + 8);
    v18 = 2;
    do
    {
      if (a3)
      {
        *(a3 + 4 * v16) = *(v17 - 1);
      }

      if (a4)
      {
        *(a4 + 4 * v16) = *v17;
      }

      if (++v16 >= a5)
      {
        break;
      }

      v17 += 2;
      v19 = v18 >= v15;
      v18 += 2;
    }

    while (!v19);
  }

  if (a6)
  {
    *a6 = v15 >> 1;
  }

  if (v32 == 1 && *v30 != v31 && *v30)
  {
    MEMORY[0x26672B1B0]();
  }

  MrecInitModule_sdpres_sdapi();
  if ((v34 & 1) == 0)
  {
    uselocale(v33);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_262747724(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v15)
  {
LABEL_6:
    MrecInitModule_sdpres_sdapi();
    TLocaleHandler::~TLocaleHandler((v16 - 104));
    TReentrancyHandler::ms_bIn = 0;
    switch(a2)
    {
      case 7:
        v19 = __cxa_begin_catch(a1);
        v20 = v19 + 8;
        if (v19[31] < 0)
        {
          v20 = *v20;
        }

        handleException(v20, "TPItn_GetResultAlignment", *(v19 + 4));
        break;
      case 6:
        v21 = __cxa_begin_catch(a1);
        v22 = v21 + 8;
        if (v21[31] < 0)
        {
          v22 = *v22;
        }

        handleException(v22, "TPItn_GetResultAlignment", 6);
        break;
      case 5:
        v23 = __cxa_begin_catch(a1);
        v24 = v23 + 8;
        if (v23[31] < 0)
        {
          v24 = *v24;
        }

LABEL_17:
        handleException(v24, "TPItn_GetResultAlignment", 2);
        break;
      case 4:
        v25 = __cxa_begin_catch(a1);
        v26 = v25 + 8;
        if (v25[31] < 0)
        {
          v26 = *v26;
        }

        handleException(v26, "TPItn_GetResultAlignment", 11);
        break;
      case 3:
        v27 = __cxa_begin_catch(a1);
        v24 = v27 + 8;
        if (v27[31] < 0)
        {
          v24 = *v24;
        }

        goto LABEL_17;
      case 2:
        v28 = __cxa_begin_catch(a1);
        v29 = (*(*v28 + 16))(v28);
        handleException(v29, "TPItn_GetResultAlignment", 1);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v30 = __cxa_begin_catch(a1);
        v31 = (*(*v30 + 16))(v30);
        handleException(v31, "TPItn_GetResultAlignment", 2);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x2627474A8);
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void OUTLINED_FUNCTION_2()
{

  JUMPOUT(0x26672B1B0);
}

void MrecInitLibrary_sdapi(void)
{
  MrecInitModule_apist_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_sdpres_sdapi();
}

void MrecInitLibrarySet_throughSdapi(void)
{
  MrecInitLibrarySet_throughRecogctl();
  MrecInitLibrarySet_throughFstgraph();

  MrecInitLibrary_sdapi();
}

void ParentFirstStateIdIterator::ParentFirstStateIdIterator(ParentFirstStateIdIterator *this, const StateMgr *a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue(this + 8, 0);
}

void ParentFirstStateIdIterator::addChildStatesToQueue(StateMgr **this, unsigned int a2)
{
  ChildStates = StateMgr::getChildStates(*this, a2);
  v4 = *(ChildStates + 8);
  if (v4)
  {
    v5 = ChildStates;
    for (i = 0; i < v4; ++i)
    {
      v7 = *(*v5 + 4 * i);
      if (*(*this + 180) > v7)
      {
        if (*(*(*this + 70) + v7))
        {
          DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue((this + 1), v7);
          v4 = *(v5 + 8);
        }
      }
    }
  }
}

void TextStateRule::TextStateRule(TextStateRule *this)
{
  *(this + 20) = -1;
  *(this + 12) = -1;
  *(this + 4) = -1;
  *(this + 7) = -1;
  DgnString::DgnString((this + 40));
}

uint64_t TextStateRule::parseHeader(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnTextFileParser::verifyMatchingFileType(a2, "TSR");
  v14[0] = 0;
  v14[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(a2, sTSR_Versions, v14);
  DgnTextFileParser::verifyFileVersionInRange(a2, v14);
  FileVersion = DgnTextFile::getFileVersion(a2);
  v5 = HIDWORD(FileVersion) == 12;
  if (FileVersion != 19)
  {
    v5 = 0;
  }

  if (FileVersion == 20)
  {
    v5 = HIDWORD(FileVersion) == 13;
  }

  if (FileVersion == 23)
  {
    v5 = HIDWORD(FileVersion) == 14;
  }

  *(this + 32) = v5;
  v12 = 0;
  v13 = 0;
  DgnTextFile::getLineFieldNames(a2, &v12);
  v11[0] = 0;
  v11[1] = 0;
  DgnTextFile::getLineFieldFormats(a2, v11);
  if (v13 >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(v12 + v6 + 8))
      {
        v8 = *(v12 + v6);
      }

      else
      {
        v8 = &byte_262899963;
      }

      if (!strcmp(v8, "Type"))
      {
        if (*(v11[0] + 4 * v7))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 252, "voc/tsr", 25, "%.500s %.500s", v8, "String");
        }

        *(this + 1) = v7;
      }

      else if (*(this + 32) == 1 && !strcmp(v8, "VocName"))
      {
        if (*(v11[0] + 4 * v7))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 260, "voc/tsr", 25, "%.500s %.500s", v8, "String");
        }

        *(this + 2) = v7;
      }

      else if (!strcmp(v8, "IntValue1"))
      {
        if (*(v11[0] + 4 * v7) != 1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 268, "voc/tsr", 25, "%.500s %.500s", v8, "Integer");
        }

        *(this + 3) = v7;
      }

      else if (!strcmp(v8, "StrValue1"))
      {
        if (*(v11[0] + 4 * v7))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 276, "voc/tsr", 25, "%.500s %.500s", v8, "String");
        }

        *(this + 4) = v7;
      }

      else if (!strcmp(v8, "StrValue2"))
      {
        if (*(v11[0] + 4 * v7))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 284, "voc/tsr", 25, "%.500s %.500s", v8, "String");
        }

        *(this + 5) = v7;
      }

      else if (!strcmp(v8, "StrValue3"))
      {
        if (*(v11[0] + 4 * v7))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 292, "voc/tsr", 25, "%.500s %.500s", v8, "String");
        }

        *(this + 6) = v7;
      }

      else if (!strcmp(v8, "IntValue2"))
      {
        if (*(v11[0] + 4 * v7) != 1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 300, "voc/tsr", 25, "%.500s %.500s", v8, "Integer");
        }

        *(this + 7) = v7;
      }

      else
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 306, "voc/tsr", 2, "%u %.500s", *(a2 + 25), v8);
      }

      ++v7;
      v6 += 16;
    }

    while (v7 < v13);
  }

  if (*(this + 1) == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 309, "voc/tsr", 3, "%u %.500s", *(a2 + 25), "Type");
  }

  if (*(this + 32) == 1 && *(this + 2) == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 311, "voc/tsr", 3, "%u %.500s", *(a2 + 25), "VocName");
  }

  if (*(this + 3) == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 313, "voc/tsr", 3, "%u %.500s", *(a2 + 25), "IntValue1");
  }

  if (*(this + 4) == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 315, "voc/tsr", 3, "%u %.500s", *(a2 + 25), "StrValue1");
  }

  if (*(this + 5) == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 317, "voc/tsr", 3, "%u %.500s", *(a2 + 25), "StrValue2");
  }

  if (*(this + 6) == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 319, "voc/tsr", 3, "%u %.500s", *(a2 + 25), "StrValue3");
  }

  if (*(this + 7) == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 321, "voc/tsr", 3, "%u %.500s", *(a2 + 25), "IntValue2");
  }

  if (*(this + 32) == 1)
  {
    *&v10[2] = 0;
    DgnTextFile::getHeaderFieldUnsigned(a2, "NumberOfVocs", &v10[2], 1, 0, 0xFFFFFFFF);
    if (*&v10[2] != 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 329, "voc/tsr", 30, "%u %u", *(a2 + 25), *&v10[2]);
    }
  }

  else
  {
    *v10 = 0;
    DgnTextFile::getHeaderFieldUnsigned(a2, "MaxStateId", &v10[2], 1, 0, 0xFFFFFFFF);
    DgnTextFile::getHeaderFieldUnsigned(a2, "MaxRuleId", v10, 1, 0, 0xFFFFFFFF);
    StateMgr::preAllocToEnsureStateId(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), *&v10[2]);
    RuleMgr::preAllocToEnsureRuleId(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), v10[0]);
  }

  DgnTextFileParser::verifyNoUnknownHeaderFields(a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  DgnArray<DgnString>::releaseAll(&v12);
  return DgnIArray<Utterance *>::~DgnIArray(v14);
}

void sub_2627482C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  _Unwind_Resume(a1);
}

void TextStateRule::parseBody(TextStateRule *this, DgnTextFileParser *a2)
{
  FileVersion = DgnTextFile::getFileVersion(a2);
  if ((DgnTextFileParser::parseNextLine(a2) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 358, "voc/tsr", 22, "%u", *(a2 + 25));
  }

  LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
  DgnString::DgnString(&v85, LineFieldString);
  v6 = v85;
  if (*(this + 32) == 1)
  {
    v7 = v86;
    if (v86)
    {
      v8 = v85;
    }

    else
    {
      v8 = &byte_262899963;
    }

    if (strcmp(v8, "VocMaxIdInfo"))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 364, "voc/tsr", 19, "%u", *(a2 + 25));
      v7 = v86;
      v6 = v85;
    }

    if (v7)
    {
      v9 = v6;
    }

    else
    {
      v9 = &byte_262899963;
    }

    if (!strcmp(v9, "VocMaxIdInfo"))
    {
      TextStateRule::parseVocMaxIdInfo(this, a2);
      if (DgnTextFileParser::atEof(a2))
      {
        v10 = "None";
      }

      else
      {
        v10 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      }

      DgnString::operator=(&v85, v10);
      v6 = v85;
    }
  }

  v11 = v86;
  if (v86)
  {
    v12 = v6;
  }

  else
  {
    v12 = &byte_262899963;
  }

  if (!strcmp(v12, "StateDefinition"))
  {
    TextStateRule::parseStateDefinition(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v13 = "None";
    }

    else
    {
      v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v13);
    v11 = v86;
    v6 = v85;
  }

  if (v11)
  {
    v14 = v6;
  }

  else
  {
    v14 = &byte_262899963;
  }

  if (!strcmp(v14, "StateName"))
  {
    TextStateRule::parseStateName(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v15 = "None";
    }

    else
    {
      v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v15);
    v11 = v86;
    v6 = v85;
  }

  if (v11)
  {
    v16 = v6;
  }

  else
  {
    v16 = &byte_262899963;
  }

  if (!strcmp(v16, "StateAllowLM"))
  {
    TextStateRule::parseStateAllowLM(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v17 = "None";
    }

    else
    {
      v17 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v17);
    v11 = v86;
    v6 = v85;
  }

  if (v11)
  {
    v18 = v6;
  }

  else
  {
    v18 = &byte_262899963;
  }

  if (!strcmp(v18, "StateWeightsName"))
  {
    TextStateRule::parseStateWeightsName(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v19 = "None";
    }

    else
    {
      v19 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v19);
    v11 = v86;
    v6 = v85;
  }

  if (!v11)
  {
    v6 = &byte_262899963;
  }

  if (!strcmp(v6, "StateWordPenalty"))
  {
    TextStateRule::parseStateWordPenalty(this, a2, v6);
    if (DgnTextFileParser::atEof(a2))
    {
      v20 = "None";
    }

    else
    {
      v20 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v20);
  }

  v21 = HIDWORD(FileVersion);
  if (FileVersion != 19 || v21 != 12)
  {
    if (v86)
    {
      v22 = v85;
    }

    else
    {
      v22 = &byte_262899963;
    }

    if (!strcmp(v22, "StateMinStartTime"))
    {
      TextStateRule::parseStateMinStartTime(this, a2);
      if (DgnTextFileParser::atEof(a2))
      {
        v23 = "None";
      }

      else
      {
        v23 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      }

      DgnString::operator=(&v85, v23);
    }

    if (v86)
    {
      v24 = v85;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (!strcmp(v24, "StateMaxStartTime"))
    {
      TextStateRule::parseStateMaxStartTime(this, a2);
      if (DgnTextFileParser::atEof(a2))
      {
        v25 = "None";
      }

      else
      {
        v25 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      }

      DgnString::operator=(&v85, v25);
    }

    if (v86)
    {
      v26 = v85;
    }

    else
    {
      v26 = &byte_262899963;
    }

    if (!strcmp(v26, "StateMinEndTime"))
    {
      TextStateRule::parseStateMinEndTime(this, a2);
      if (DgnTextFileParser::atEof(a2))
      {
        v27 = "None";
      }

      else
      {
        v27 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      }

      DgnString::operator=(&v85, v27);
    }

    if (v86)
    {
      v28 = v85;
    }

    else
    {
      v28 = &byte_262899963;
    }

    if (!strcmp(v28, "StateMaxEndTime"))
    {
      TextStateRule::parseStateMaxEndTime(this, a2);
      if (DgnTextFileParser::atEof(a2))
      {
        v29 = "None";
      }

      else
      {
        v29 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      }

      DgnString::operator=(&v85, v29);
    }
  }

  v30 = v86;
  v31 = v85;
  if (v86)
  {
    v32 = v85;
  }

  else
  {
    v32 = &byte_262899963;
  }

  if (!strcmp(v32, "StateCollapsible"))
  {
    TextStateRule::parseStateCollapsible(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v33 = "None";
    }

    else
    {
      v33 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v33);
    v30 = v86;
    v31 = v85;
  }

  if (v30)
  {
    v34 = v31;
  }

  else
  {
    v34 = &byte_262899963;
  }

  if (!strcmp(v34, "StateAllowCoart"))
  {
    TextStateRule::parseStateAllowCoart(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v35 = "None";
    }

    else
    {
      v35 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v35);
    v30 = v86;
    v31 = v85;
  }

  if (v30)
  {
    v36 = v31;
  }

  else
  {
    v36 = &byte_262899963;
  }

  if (!strcmp(v36, "StateAllowSkip"))
  {
    TextStateRule::parseStateAllowSkip(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v37 = "None";
    }

    else
    {
      v37 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v37);
    v30 = v86;
    v31 = v85;
  }

  if (v30)
  {
    v38 = v31;
  }

  else
  {
    v38 = &byte_262899963;
  }

  if (!strcmp(v38, "StateAllowLeftWordBoundary"))
  {
    TextStateRule::parseStateAllowLeftWordBoundary(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v39 = "None";
    }

    else
    {
      v39 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v39);
    v30 = v86;
    v31 = v85;
  }

  if (v30)
  {
    v40 = v31;
  }

  else
  {
    v40 = &byte_262899963;
  }

  if (!strcmp(v40, "StateAllowRightWordBoundary"))
  {
    TextStateRule::parseStateAllowRightWordBoundary(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v41 = "None";
    }

    else
    {
      v41 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v41);
  }

  if (FileVersion == 19)
  {
    if (v21 != 12)
    {
      goto LABEL_143;
    }
  }

  else if (FileVersion != 20 || v21 != 13)
  {
    goto LABEL_143;
  }

  if (v86)
  {
    v42 = v85;
  }

  else
  {
    v42 = &byte_262899963;
  }

  if (!strcmp(v42, "StateAllowPrecedingNonAcousticWords"))
  {
    TextStateRule::parseStateAllowPrecedingNonAcousticWords(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v43 = "None";
    }

    else
    {
      v43 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v43);
  }

LABEL_143:
  v44 = v86;
  v45 = v85;
  if (v86)
  {
    v46 = v85;
  }

  else
  {
    v46 = &byte_262899963;
  }

  if (!strcmp(v46, "StateAllowPrefiltering"))
  {
    TextStateRule::parseStateAllowPrefiltering(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v47 = "None";
    }

    else
    {
      v47 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v47);
    v44 = v86;
    v45 = v85;
  }

  if (v44)
  {
    v48 = v45;
  }

  else
  {
    v48 = &byte_262899963;
  }

  if (!strcmp(v48, "StateAllowEndOfUtt"))
  {
    TextStateRule::parseStateAllowEndOfUtt(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v49 = "None";
    }

    else
    {
      v49 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v49);
    v44 = v86;
    v45 = v85;
  }

  if (v44)
  {
    v50 = v45;
  }

  else
  {
    v50 = &byte_262899963;
  }

  if (!strcmp(v50, "StateAliasState"))
  {
    TextStateRule::parseStateAliasState(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v51 = "None";
    }

    else
    {
      v51 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v51);
  }

  if (FileVersion == 19)
  {
    if (v21 == 12)
    {
      goto LABEL_188;
    }
  }

  else if (FileVersion == 20 && v21 == 13)
  {
    goto LABEL_188;
  }

  v52 = v86;
  v53 = v85;
  if (v86)
  {
    v54 = v85;
  }

  else
  {
    v54 = &byte_262899963;
  }

  if (!strcmp(v54, "StatePrecedingNonAcousticWordState"))
  {
    TextStateRule::parseStatePrecedingNonAcousticWordState(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v55 = "None";
    }

    else
    {
      v55 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v55);
    v52 = v86;
    v53 = v85;
  }

  if (v52)
  {
    v56 = v53;
  }

  else
  {
    v56 = &byte_262899963;
  }

  if (!strcmp(v56, "StatePrecedingNonAcousticWordRequired"))
  {
    TextStateRule::parseStatePrecedingNonAcousticWordRequired(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v57 = "None";
    }

    else
    {
      v57 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v57);
  }

LABEL_188:
  v58 = v86;
  v59 = v85;
  if (v86)
  {
    v60 = v85;
  }

  else
  {
    v60 = &byte_262899963;
  }

  if (!strcmp(v60, "StateIncludedWord"))
  {
    TextStateRule::parseStateIncludedWord(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v61 = "None";
    }

    else
    {
      v61 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v61);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v62 = v59;
  }

  else
  {
    v62 = &byte_262899963;
  }

  if (!strcmp(v62, "StateTransitionState"))
  {
    TextStateRule::parseStateTransitionState(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v63 = "None";
    }

    else
    {
      v63 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v63);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v64 = v59;
  }

  else
  {
    v64 = &byte_262899963;
  }

  if (!strcmp(v64, "StateAllowedCollations"))
  {
    TextStateRule::parseStateAllowedCollations(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v65 = "None";
    }

    else
    {
      v65 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v65);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v66 = v59;
  }

  else
  {
    v66 = &byte_262899963;
  }

  if (!strcmp(v66, "StateEnv"))
  {
    TextStateRule::parseStateEnv(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v67 = "None";
    }

    else
    {
      v67 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v67);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v68 = v59;
  }

  else
  {
    v68 = &byte_262899963;
  }

  if (!strcmp(v68, "StateIncludedWordEnv"))
  {
    TextStateRule::parseStateIncludedWordEnv(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v69 = "None";
    }

    else
    {
      v69 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v69);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v70 = v59;
  }

  else
  {
    v70 = &byte_262899963;
  }

  if (!strcmp(v70, "RuleDefinition"))
  {
    TextStateRule::parseRuleDefinition(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v71 = "None";
    }

    else
    {
      v71 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v71);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v72 = v59;
  }

  else
  {
    v72 = &byte_262899963;
  }

  if (!strcmp(v72, "RuleName"))
  {
    TextStateRule::parseRuleName(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v73 = "None";
    }

    else
    {
      v73 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v73);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v74 = v59;
  }

  else
  {
    v74 = &byte_262899963;
  }

  if (!strcmp(v74, "RuleAllowLM"))
  {
    TextStateRule::parseRuleAllowLM(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v75 = "None";
    }

    else
    {
      v75 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v75);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v76 = v59;
  }

  else
  {
    v76 = &byte_262899963;
  }

  if (!strcmp(v76, "RuleAllowCoart"))
  {
    TextStateRule::parseRuleAllowCoart(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v77 = "None";
    }

    else
    {
      v77 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v77);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v78 = v59;
  }

  else
  {
    v78 = &byte_262899963;
  }

  if (!strcmp(v78, "RuleAllowPrefiltering"))
  {
    TextStateRule::parseRuleAllowPrefiltering(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v79 = "None";
    }

    else
    {
      v79 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v79);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v80 = v59;
  }

  else
  {
    v80 = &byte_262899963;
  }

  if (!strcmp(v80, "RuleDescription"))
  {
    TextStateRule::parseRuleDescription(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v81 = "None";
    }

    else
    {
      v81 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v81);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v82 = v59;
  }

  else
  {
    v82 = &byte_262899963;
  }

  if (!strcmp(v82, "RuleEnv"))
  {
    TextStateRule::parseRuleEnv(this, a2);
    if (DgnTextFileParser::atEof(a2))
    {
      v83 = "None";
    }

    else
    {
      v83 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    }

    DgnString::operator=(&v85, v83);
    v58 = v86;
    v59 = v85;
  }

  if (v58)
  {
    v84 = v59;
  }

  else
  {
    v84 = &byte_262899963;
  }

  if (strcmp(v84, "None"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 628, "voc/tsr", 23, "%u", *(a2 + 25));
  }

  DgnString::~DgnString(&v85);
}

void sub_2627490B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

double TextStateRule::parseVocMaxIdInfo(TextStateRule *this, DgnTextFileParser *a2)
{
  v4 = 1;
  do
  {
    DgnString::DgnString(&v27);
    DgnString::DgnString(v26);
    DgnString::DgnString(v24);
    DgnString::DgnString(v22);
    DgnString::DgnString(v20);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v26, LineFieldString);
    if (*(this + 32) == 1)
    {
      v6 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v27, v6);
      DgnString::operator=((this + 40), &v27);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v24, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v22, v9);
    v10 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v20, v10);
    v11 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v12 = *(this + 5);
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (v28)
    {
      v13 = v27;
    }

    else
    {
      v13 = &byte_262899963;
    }

    if (strcmp(v12, v13))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 680, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "VocMaxIdInfo", v13);
    }

    if (v25 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 682, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v23 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 684, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v21 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 686, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if ((LineFieldInteger & 0x80000000) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 688, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v11 < 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 690, "voc/tsr", 18, "%u", *(a2 + 25));
    }

    StateMgr::preAllocToEnsureStateId(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger);
    RuleMgr::preAllocToEnsureRuleId(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), v11);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v18, v14);
      if (v19)
      {
        v15 = v18;
      }

      else
      {
        v15 = &byte_262899963;
      }

      v16 = strcmp(v15, "VocMaxIdInfo") == 0;
      DgnString::~DgnString(&v18);
    }

    else
    {
      v16 = 0;
    }

    DgnString::~DgnString(v20);
    DgnString::~DgnString(v22);
    DgnString::~DgnString(v24);
    DgnString::~DgnString(v26);
    DgnString::~DgnString(&v27);
    --v4;
  }

  while (v16);
  if (v4)
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 708, "voc/tsr", 21, "%u", *(a2 + 25));
  }

  return result;
}

void sub_262749468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va3, a13);
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  va_copy(va3, va2);
  v21 = va_arg(va3, void);
  v23 = va_arg(va3, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  DgnString::~DgnString(va3);
  DgnString::~DgnString(v13 - 96);
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateDefinition(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 723, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateDefinition", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 725, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 727, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 729, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 734, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v10 <= 0 && v10 != -1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 739, "voc/tsr", 18, "%u", *(a2 + 25));
    }

    if (v10 == -1)
    {
      v10 = 0;
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 759, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateDefinition", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::newState(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), v10, LineFieldInteger);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StateDefinition");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_37;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_37:
  StateMgr::doneEnsureStateId(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56));
  BitArray::~BitArray(&v28);
}

void TextStateRule::parseStateName(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v29);
  while (1)
  {
    DgnString::DgnString(&v27);
    DgnString::DgnString(v26);
    DgnString::DgnString(&v24);
    DgnString::DgnString(v22);
    DgnString::DgnString(v20);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v26, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v27, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v24, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v22, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v20, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v28)
    {
      v12 = v27;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 794, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateName", v12);
    }

    if (v23 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 796, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v21 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 798, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 800, "voc/tsr", 13, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 805, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v30 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v29, LineFieldInteger + 1);
    }

    v13 = *(v29 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 818, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateName", LineFieldInteger, *this);
    }

    else
    {
      *(v29 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    v14 = v25 ? v24 : &byte_262899963;
    StateMgr::setName(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v14);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v18, v15);
    if (v19)
    {
      v16 = v18;
    }

    else
    {
      v16 = &byte_262899963;
    }

    v17 = strcmp(v16, "StateName");
    DgnString::~DgnString(&v18);
    DgnString::~DgnString(v20);
    DgnString::~DgnString(v22);
    DgnString::~DgnString(&v24);
    DgnString::~DgnString(v26);
    DgnString::~DgnString(&v27);
    if (v17)
    {
      goto LABEL_35;
    }
  }

  DgnString::~DgnString(v20);
  DgnString::~DgnString(v22);
  DgnString::~DgnString(&v24);
  DgnString::~DgnString(v26);
  DgnString::~DgnString(&v27);
LABEL_35:
  BitArray::~BitArray(&v29);
}

void sub_262749CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  BitArray::~BitArray((v18 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowLM(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 848, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateAllowLM", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 850, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 852, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 854, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 857, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 862, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 875, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAllowLM", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setLMAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10 == 1, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StateAllowLM");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26274A140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateWeightsName(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v31);
  while (1)
  {
    DgnString::DgnString(&v29);
    DgnString::DgnString(v28);
    DgnString::DgnString(v26);
    DgnString::DgnString(v24);
    DgnString::DgnString(v22);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v28, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v29, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v26, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v24, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v22, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v30)
    {
      v12 = v29;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      v13.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 905, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateWeightsName", v12);
    }

    if (v25 >= 2)
    {
      v13.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 907, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v23 >= 2)
    {
      v13.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 909, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10)
    {
      v13.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 911, "voc/tsr", 13, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      v13.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 916, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v32 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v31, LineFieldInteger + 1);
    }

    v14 = *(v31 + 4 * (LineFieldInteger >> 5));
    if ((v14 & (1 << LineFieldInteger)) != 0)
    {
      v13.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 929, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateWeightsName", LineFieldInteger, *this);
    }

    else
    {
      *(v31 + 4 * (LineFieldInteger >> 5)) = v14 | (1 << LineFieldInteger);
    }

    if (v27 >= 2)
    {
      v15 = *(*(**VocMgr::smpVocMgr + 8 * *this) + 72);
      v16 = (*(*v15 + 664))(v15, v26, v13);
      if (v16 == 0xFFFF)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 944, "voc/tsr", 27, "%u %.500s %u %u", *(a2 + 25), "StateWeightsName", LineFieldInteger, *this);
      }

      StateMgr::setWeights(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v16, 1);
    }

    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v17 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v20, v17);
    if (v21)
    {
      v18 = v20;
    }

    else
    {
      v18 = &byte_262899963;
    }

    v19 = strcmp(v18, "StateWeightsName");
    DgnString::~DgnString(&v20);
    DgnString::~DgnString(v22);
    DgnString::~DgnString(v24);
    DgnString::~DgnString(v26);
    DgnString::~DgnString(v28);
    DgnString::~DgnString(&v29);
    if (v19)
    {
      goto LABEL_36;
    }
  }

  DgnString::~DgnString(v22);
  DgnString::~DgnString(v24);
  DgnString::~DgnString(v26);
  DgnString::~DgnString(v28);
  DgnString::~DgnString(&v29);
LABEL_36:
  BitArray::~BitArray(&v31);
}

void sub_26274A5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  BitArray::~BitArray((v18 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateWordPenalty(TextStateRule *this, DgnTextFileParser *a2, const char *a3)
{
  DgnString::DgnString(&v30);
  while (1)
  {
    DgnString::DgnString(&v28);
    DgnString::DgnString(v27);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v27, LineFieldString);
    if (*(this + 32) == 1)
    {
      v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v28, v7);
      if (!strcmp(a3, "VocMaxIdInfo"))
      {
        DgnString::operator=((this + 40), &v28);
      }
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v25, v9);
    v10 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v23, v10);
    v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v21, v11);
    v12 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v13 = *(this + 5);
    }

    else
    {
      v13 = &byte_262899963;
    }

    if (v29)
    {
      v14 = v28;
    }

    else
    {
      v14 = &byte_262899963;
    }

    if (strcmp(v13, v14))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 970, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), a3, v14);
    }

    if (v26 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 972, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 974, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 976, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 980, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v31 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v30, LineFieldInteger + 1);
    }

    v15 = *(v30 + 4 * (LineFieldInteger >> 5));
    if ((v15 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 993, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), a3, LineFieldInteger, *this);
    }

    else
    {
      *(v30 + 4 * (LineFieldInteger >> 5)) = v15 | (1 << LineFieldInteger);
    }

    if ((v12 - 1001) <= 0xFFFFF82E)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1003, "voc/tsr", 26, "%u %500s %d", *(a2 + 25), a3, v12);
    }

    StateMgr::setWordPenalty(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v12, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v16 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v19, v16);
    if (v20)
    {
      v17 = v19;
    }

    else
    {
      v17 = &byte_262899963;
    }

    v18 = strcmp(v17, a3);
    DgnString::~DgnString(&v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(v27);
    DgnString::~DgnString(&v28);
    if (v18)
    {
      goto LABEL_35;
    }
  }

  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(v27);
  DgnString::~DgnString(&v28);
LABEL_35:
  BitArray::~BitArray(&v30);
}

void sub_26274AA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va3, a16);
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  va_copy(va3, va2);
  v24 = va_arg(va3, void);
  v26 = va_arg(va3, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  DgnString::~DgnString(va3);
  BitArray::~BitArray((v16 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateMinStartTime(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v30);
  do
  {
    DgnString::DgnString(&v28);
    DgnString::DgnString(v27);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v27, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v28, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v25, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v23, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v21, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v29)
    {
      v12 = v28;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1027, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateMinStartTime", v12);
    }

    if (v26 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1029, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1031, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1033, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1037, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v31 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v30, LineFieldInteger + 1);
    }

    v13 = *(v30 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1050, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateMinStartTime", LineFieldInteger, *this);
    }

    else
    {
      *(v30 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    if (v10 - 268435201 <= 0xF00000FD)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1060, "voc/tsr", 28, "%u %500s %d %u", *(a2 + 25), "StateMinStartTime", v10, 268435200);
    }

    *v19 = 0;
    *v20 = 0;
    StateMgr::getTimeConstraint(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, &v20[1], v20, &v19[1], v19);
    v20[1] = v10;
    StateMgr::setTimeConstraint(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10, v20[0], v19[1], v19[0]);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v17, v14);
      if (v18)
      {
        v15 = v17;
      }

      else
      {
        v15 = &byte_262899963;
      }

      v16 = strcmp(v15, "StateMinStartTime") == 0;
      DgnString::~DgnString(&v17);
    }

    else
    {
      v16 = 0;
    }

    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(v27);
    DgnString::~DgnString(&v28);
  }

  while (v16);
  BitArray::~BitArray(&v30);
}

void sub_26274AEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va3, a17);
  va_start(va2, a17);
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  va_copy(va2, va1);
  v22 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  va_copy(va3, va2);
  v25 = va_arg(va3, void);
  v27 = va_arg(va3, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  DgnString::~DgnString(va3);
  DgnString::~DgnString(v17 - 120);
  BitArray::~BitArray((v17 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateMaxStartTime(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v30);
  do
  {
    DgnString::DgnString(&v28);
    DgnString::DgnString(v27);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v27, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v28, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v25, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v23, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v21, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v29)
    {
      v12 = v28;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1091, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateMaxStartTime", v12);
    }

    if (v26 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1093, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1095, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1097, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1101, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v31 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v30, LineFieldInteger + 1);
    }

    v13 = *(v30 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1114, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateMaxStartTime", LineFieldInteger, *this);
    }

    else
    {
      *(v30 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    if (v10 - 268435201 <= 0xF00000FD)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1124, "voc/tsr", 28, "%u %500s %d %u", *(a2 + 25), "StateMaxStartTime", v10, 268435200);
    }

    *v19 = 0;
    *v20 = 0;
    StateMgr::getTimeConstraint(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, &v20[1], v20, &v19[1], v19);
    v20[0] = v10;
    StateMgr::setTimeConstraint(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v20[1], v10, v19[1], v19[0]);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v17, v14);
      if (v18)
      {
        v15 = v17;
      }

      else
      {
        v15 = &byte_262899963;
      }

      v16 = strcmp(v15, "StateMaxStartTime") == 0;
      DgnString::~DgnString(&v17);
    }

    else
    {
      v16 = 0;
    }

    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(v27);
    DgnString::~DgnString(&v28);
  }

  while (v16);
  BitArray::~BitArray(&v30);
}

void sub_26274B364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va3, a17);
  va_start(va2, a17);
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  va_copy(va2, va1);
  v22 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  va_copy(va3, va2);
  v25 = va_arg(va3, void);
  v27 = va_arg(va3, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  DgnString::~DgnString(va3);
  DgnString::~DgnString(v17 - 120);
  BitArray::~BitArray((v17 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateMinEndTime(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v30);
  do
  {
    DgnString::DgnString(&v28);
    DgnString::DgnString(v27);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v27, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v28, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v25, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v23, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v21, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v29)
    {
      v12 = v28;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1155, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateMinEndTime", v12);
    }

    if (v26 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1157, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1159, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1161, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1165, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v31 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v30, LineFieldInteger + 1);
    }

    v13 = *(v30 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1178, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateMinEndTime", LineFieldInteger, *this);
    }

    else
    {
      *(v30 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    if (v10 - 268435201 <= 0xF00000FD)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1188, "voc/tsr", 28, "%u %500s %d %u", *(a2 + 25), "StateMinEndTime", v10, 268435200);
    }

    *v19 = 0;
    *v20 = 0;
    StateMgr::getTimeConstraint(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, &v20[1], v20, &v19[1], v19);
    v19[1] = v10;
    StateMgr::setTimeConstraint(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v20[1], v20[0], v10, v19[0]);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v17, v14);
      if (v18)
      {
        v15 = v17;
      }

      else
      {
        v15 = &byte_262899963;
      }

      v16 = strcmp(v15, "StateMinEndTime") == 0;
      DgnString::~DgnString(&v17);
    }

    else
    {
      v16 = 0;
    }

    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(v27);
    DgnString::~DgnString(&v28);
  }

  while (v16);
  BitArray::~BitArray(&v30);
}

void sub_26274B7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va3, a17);
  va_start(va2, a17);
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  va_copy(va2, va1);
  v22 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  va_copy(va3, va2);
  v25 = va_arg(va3, void);
  v27 = va_arg(va3, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  DgnString::~DgnString(va3);
  DgnString::~DgnString(v17 - 120);
  BitArray::~BitArray((v17 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateMaxEndTime(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v30);
  do
  {
    DgnString::DgnString(&v28);
    DgnString::DgnString(v27);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v27, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v28, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v25, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v23, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v21, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v29)
    {
      v12 = v28;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1219, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateMaxEndTime", v12);
    }

    if (v26 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1221, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1223, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1225, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1229, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v31 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v30, LineFieldInteger + 1);
    }

    v13 = *(v30 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1242, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateMaxEndTime", LineFieldInteger, *this);
    }

    else
    {
      *(v30 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    if (v10 - 268435201 <= 0xF00000FD)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1252, "voc/tsr", 28, "%u %500s %d %u", *(a2 + 25), "StateMaxEndTime", v10, 268435200);
    }

    *v19 = 0;
    *v20 = 0;
    StateMgr::getTimeConstraint(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, &v20[1], v20, &v19[1], v19);
    v19[0] = v10;
    StateMgr::setTimeConstraint(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v20[1], v20[0], v19[1], v10);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v17, v14);
      if (v18)
      {
        v15 = v17;
      }

      else
      {
        v15 = &byte_262899963;
      }

      v16 = strcmp(v15, "StateMaxEndTime") == 0;
      DgnString::~DgnString(&v17);
    }

    else
    {
      v16 = 0;
    }

    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(v27);
    DgnString::~DgnString(&v28);
  }

  while (v16);
  BitArray::~BitArray(&v30);
}

void sub_26274BC6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va3, a17);
  va_start(va2, a17);
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  va_copy(va2, va1);
  v22 = va_arg(va2, void);
  v24 = va_arg(va2, void);
  va_copy(va3, va2);
  v25 = va_arg(va3, void);
  v27 = va_arg(va3, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  DgnString::~DgnString(va3);
  DgnString::~DgnString(v17 - 120);
  BitArray::~BitArray((v17 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateCollapsible(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1283, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateCollapsible", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1285, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1287, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1289, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1292, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1297, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1310, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateCollapsible", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setCollapsible(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10 == 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StateCollapsible");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26274C0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowCoart(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1340, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateAllowCoart", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1342, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1344, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1346, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1349, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1354, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1367, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAllowCoart", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setCoartAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10 == 1, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StateAllowCoart");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}

void sub_26274C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v22 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v20 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowSkip(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v28);
  while (1)
  {
    DgnString::DgnString(&v26);
    DgnString::DgnString(v25);
    DgnString::DgnString(v23);
    DgnString::DgnString(v21);
    DgnString::DgnString(v19);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v25, LineFieldString);
    if (*(this + 32) == 1)
    {
      v5 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v26, v5);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3));
    v7 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v23, v7);
    v8 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v21, v8);
    v9 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v19, v9);
    v10 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7));
    if (*(this + 12))
    {
      v11 = *(this + 5);
    }

    else
    {
      v11 = &byte_262899963;
    }

    if (v27)
    {
      v12 = v26;
    }

    else
    {
      v12 = &byte_262899963;
    }

    if (strcmp(v11, v12))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1398, "voc/tsr", 29, "%u %500s %500s", *(a2 + 25), "StateAllowSkip", v12);
    }

    if (v24 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1400, "voc/tsr", 10, "%u", *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1402, "voc/tsr", 11, "%u", *(a2 + 25));
    }

    if (v20 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1404, "voc/tsr", 12, "%u", *(a2 + 25));
    }

    if (v10 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1407, "voc/tsr", 14, "%u", *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1412, "voc/tsr", 17, "%u", *(a2 + 25));
    }

    if (v29 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v28, LineFieldInteger + 1);
    }

    v13 = *(v28 + 4 * (LineFieldInteger >> 5));
    if ((v13 & (1 << LineFieldInteger)) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1425, "voc/tsr", 4, "%u %.500s %u %u", *(a2 + 25), "StateAllowSkip", LineFieldInteger, *this);
    }

    else
    {
      *(v28 + 4 * (LineFieldInteger >> 5)) = v13 | (1 << LineFieldInteger);
    }

    StateMgr::setSkipAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v10 == 1, 1);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v17, v14);
    if (v18)
    {
      v15 = v17;
    }

    else
    {
      v15 = &byte_262899963;
    }

    v16 = strcmp(v15, "StateAllowSkip");
    DgnString::~DgnString(&v17);
    DgnString::~DgnString(v19);
    DgnString::~DgnString(v21);
    DgnString::~DgnString(v23);
    DgnString::~DgnString(v25);
    DgnString::~DgnString(&v26);
    if (v16)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v19);
  DgnString::~DgnString(v21);
  DgnString::~DgnString(v23);
  DgnString::~DgnString(v25);
  DgnString::~DgnString(&v26);
LABEL_34:
  BitArray::~BitArray(&v28);
}