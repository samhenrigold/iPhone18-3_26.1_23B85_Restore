uint64_t FstSearchLeaf::getBestScoreThisFrame(FstSearchLeaf *this)
{
  v1 = *(this + 70);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearchBackoff::~FstSearchBackoff(FstSearchBackoff *this)
{
  *this = &unk_2875274B8;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_2875274B8;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearchBackoff::getBestScoreThisFrame(FstSearchBackoff *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

void FstSearch::~FstSearch(FstSearch *this)
{
  *this = &unk_287523008;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);

  SearchItf::~SearchItf(this);
}

{
  *this = &unk_287523008;
  v2 = this + 160;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 304);
  DgnIArray<Utterance *>::~DgnIArray(this + 288);
  DgnIArray<Utterance *>::~DgnIArray(this + 272);
  DgnIArray<Utterance *>::~DgnIArray(this + 256);
  DgnIArray<Utterance *>::~DgnIArray(this + 240);
  DgnIArray<Utterance *>::~DgnIArray(this + 208);
  DgnIArray<Utterance *>::~DgnIArray(this + 192);
  DgnIArray<Utterance *>::~DgnIArray(this + 176);
  DgnIArray<Utterance *>::~DgnIArray(v2);
  SearchItf::~SearchItf(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t FstSearch::getBestScoreThisFrame(FstSearch *this)
{
  v1 = *(this + 58);
  if (v1 >= 20000)
  {
    return 20000;
  }

  else
  {
    return v1;
  }
}

__n128 WordLatticeLC::WordLatticeLC(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *(a1 + 8) = 0xBFF0000000000000;
  *(a1 + 16) = a3;
  *(a1 + 20) = a4;
  *(a1 + 24) = a5;
  *(a1 + 28) = *a6;
  *(a1 + 44) = *(a6 + 16);
  *(a1 + 52) = *(a6 + 24);
  *(a1 + 56) = xmmword_26287F8A0;
  *(a1 + 72) = 0;
  *(a1 + 80) = -1;
  *a1 = &unk_2875281A8;
  *(a1 + 88) = *a2;
  *(a1 + 92) = *(a2 + 4);
  *(a1 + 94) = *(a2 + 6);
  result = *(a2 + 8);
  *(a1 + 96) = result;
  return result;
}

uint64_t *DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 36 * v6, 36 * v5, 36 * v5, 1);
  *(a1 + 12) = result / 0x24;
  *a1 = v8;
  return result;
}

uint64_t HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(uint64_t a1, const char *a2, int a3)
{
  HashProbeBase::HashProbeBase(a1, a2);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 8));
  *a1 = 0;
  *(a1 + 4) = v6;
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::initBuckets(a1);
  *(a1 + 32) = 0;
  return a1;
}

void sub_26266B300(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

unsigned int *HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::initBuckets(unsigned int *result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[7];
  if (v2 <= v3)
  {
    result[6] = v2;
    if (!v2)
    {
      return result;
    }
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts((result + 4), v2 - v3, 0);
    v1[6] = v2;
  }

  v4 = *(v1 + 2);

  return memset(v4, 255, 8 * v2);
}

uint64_t *DgnArray<WordLatticeLC>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 112 * v6, 112 * v5, 112 * v5, 1);
  *(a1 + 12) = ((result >> 4) * 0x2492492492492493uLL) >> 64;
  *a1 = v8;
  return result;
}

uint64_t *DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 20 * v6, 20 * v5, 20 * v5, 1);
  *(a1 + 12) = result / 0x14;
  *a1 = v8;
  return result;
}

uint64_t *DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 28 * v6, 28 * v5, 28 * v5, 1);
  *(a1 + 12) = result / 0x1C;
  *a1 = v8;
  return result;
}

uint64_t *DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 40 * v6, 40 * v5, 40 * v5, 1);
  *(a1 + 12) = result / 0x28;
  *a1 = v8;
  return result;
}

void MrecInitLibrary_mrecutil(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_ddump_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_dmatrix_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_dsmset_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_dthread_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_filespec_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_generr_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_hashbase_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_memchunk_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_osfile_mrecutil();
  MrecInitModule_param_mrecutil();
  MrecInitModule_paramset_mrecutil();
  MrecInitModule_paramspec_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_timer_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_util_mrecutil();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_dcuda_mrecutil();
}

void MrecInitLibrary_recogctl(void)
{
  MrecInitModule_adaptctl_recogctl();
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
  MrecInitModule_model_recogctl();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_psholder_recogctl();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_recogctl_recogctl();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_recoggrm_recogctl();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_sdpres_sdapi();
}

void MrecInitLibrarySet_throughRecogctl(void)
{
  MrecInitLibrarySet_throughPrefilt();
  MrecInitLibrarySet_throughChannel();
  MrecInitLibrarySet_throughFst();

  MrecInitLibrary_recogctl();
}

void MrecInitLibrarySet_throughNeuralN(void)
{
  MrecInitLibrarySet_throughFrame();

  MrecInitModule_neuraln_neuraln();
}

uint64_t verifyLexiconHandle(unint64_t a1, char *a2)
{
  Registry = TRegisterable<TLexicon>::getRegistry();
  v5 = TBaseRegistry<TTokenizer *>::find(Registry, a1);
  if (*(Registry + 16) == v5)
  {
    conditionalAssert(a2, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 33);
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

void sub_26266B8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void TPLexicon_Open(uint64_t a1, uint64_t a2, void *a3)
{
  TReentrancyHandler::TReentrancyHandler(&v12, "TPLexicon_Open");
  TLocaleHandler::TLocaleHandler(&v11);
  MrecInitModule_sdpres_sdapi();
  if (g_bInitialized)
  {
    verifyHandleArgument<SDhVoc_fake **>(a2, 0, "Bad input voc handle");
    verifyPointerArgument<TPLexiconHandle_fake **>(a3, 0, "Bad output lexicon handle pointer");
    verifyPointerArgument<TPDataSpec>(a1, 0, "Bad input static data spec");
    makeDataManager(a1, 1uLL);
    operator new();
  }

  conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 57);
  exception = __cxa_allocate_exception(0x28uLL);
  std::string::basic_string[abi:ne200100]<0>(&v9, "Not initialized");
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

  *exception = &unk_2875282E0;
  exception[4] = 4;
}

void sub_26266BB5C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __cxa_end_catch();
  MrecInitModule_sdpres_sdapi();
  TLocaleHandler::~TLocaleHandler(va);
  TReentrancyHandler::ms_bIn = 0;
  switch(a2)
  {
    case 7:
      v14 = __cxa_begin_catch(a1);
      v15 = v14 + 8;
      if (v14[31] < 0)
      {
        v15 = *v15;
      }

      handleException(v15, "TPLexicon_Open", *(v14 + 4));
      break;
    case 6:
      v16 = __cxa_begin_catch(a1);
      v17 = v16 + 8;
      if (v16[31] < 0)
      {
        v17 = *v17;
      }

      handleException(v17, "TPLexicon_Open", 6);
      break;
    case 5:
      v18 = __cxa_begin_catch(a1);
      v19 = v18 + 8;
      if (v18[31] < 0)
      {
        v19 = *v19;
      }

LABEL_12:
      handleException(v19, "TPLexicon_Open", 2);
      break;
    case 4:
      v20 = __cxa_begin_catch(a1);
      v21 = v20 + 8;
      if (v20[31] < 0)
      {
        v21 = *v21;
      }

      handleException(v21, "TPLexicon_Open", 11);
      break;
    case 3:
      v22 = __cxa_begin_catch(a1);
      v19 = v22 + 8;
      if (v22[31] < 0)
      {
        v19 = *v19;
      }

      goto LABEL_12;
    case 2:
      v23 = __cxa_begin_catch(a1);
      v24 = (*(*v23 + 16))(v23);
      handleException(v24, "TPLexicon_Open", 1);
      break;
    case 1:
      v25 = __cxa_begin_catch(a1);
      v26 = (*(*v25 + 16))(v25);
      handleException(v26, "TPLexicon_Open", 2);
      break;
    default:
      JUMPOUT(0x26266BD90);
  }

  __cxa_end_catch();
  JUMPOUT(0x26266B9D4);
}

uint64_t verifyHandleArgument<SDhVoc_fake **>(uint64_t result, char a2, char *a3)
{
  if (result != -1)
  {
    a2 = 1;
  }

  if (!result || (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 339);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v8, a3);
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

void sub_26266BE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t verifyPointerArgument<TPLexiconHandle_fake **>(uint64_t result, char a2, char *a3)
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

void sub_26266BFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t verifyPointerArgument<TPDataSpec>(uint64_t result, char a2, char *a3)
{
  if (!result && (a2 & 1) == 0)
  {
    conditionalAssert(a3, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/api.h", 288);
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

void sub_26266C0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t TPLexicon_Close(unint64_t a1)
{
  TReentrancyHandler::TReentrancyHandler(&v14, "TPLexicon_Close");
  TLocaleHandler::TLocaleHandler(&v12);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 86);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "Not initialized");
    *exception = byte_287529580;
    v5 = (exception + 1);
    if (SHIBYTE(v11) < 0)
    {
      std::string::__init_copy_ctor_external(v5, v10, *(&v10 + 1));
    }

    else
    {
      v8 = v10;
      exception[3] = v11;
      *&v5->__r_.__value_.__l.__data_ = v8;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v2 = verifyLexiconHandle(a1, "Bad input lexicon handle");
  if (v2[90])
  {
    conditionalAssert("Lexicon is referenced", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 89);
    v6 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v10, "Lexicon is referenced");
    *v6 = byte_287529580;
    v7 = (v6 + 1);
    if (SHIBYTE(v11) < 0)
    {
      std::string::__init_copy_ctor_external(v7, v10, *(&v10 + 1));
    }

    else
    {
      v9 = v10;
      v6[3] = v11;
      *&v7->__r_.__value_.__l.__data_ = v9;
    }

    *v6 = &unk_2875282E0;
    v6[4] = 7;
  }

  (*(*v2 + 8))(v2);
  MrecInitModule_sdpres_sdapi();
  if ((v13 & 1) == 0)
  {
    uselocale(v12);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_26266C38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
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

        handleException(v25, "TPLexicon_Close", *(v24 + 4));
        break;
      case 6:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPLexicon_Close", 6);
        break;
      case 5:
        v28 = __cxa_begin_catch(a1);
        v29 = v28 + 8;
        if (v28[31] < 0)
        {
          v29 = *v29;
        }

LABEL_17:
        handleException(v29, "TPLexicon_Close", 2);
        break;
      case 4:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPLexicon_Close", 11);
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
        handleException(v34, "TPLexicon_Close", 1);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v35 = __cxa_begin_catch(a1);
        v36 = (*(*v35 + 16))(v35);
        handleException(v36, "TPLexicon_Close", 2);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x26266C1E4);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t TPLexicon_GetInfo(unint64_t a1, uint64_t a2)
{
  TReentrancyHandler::TReentrancyHandler(&v17, "TPLexicon_GetInfo");
  TLocaleHandler::TLocaleHandler(&v15);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 134);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v13, "Not initialized");
    *exception = byte_287529580;
    v11 = (exception + 1);
    if (SHIBYTE(v14) < 0)
    {
      std::string::__init_copy_ctor_external(v11, v13, *(&v13 + 1));
    }

    else
    {
      v12 = v13;
      exception[3] = v14;
      *&v11->__r_.__value_.__l.__data_ = v12;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v4 = verifyLexiconHandle(a1, "Bad input lexicon handle");
  verifyPointerArgument<TPLexiconInfo>(a2, 0, "Bad output lexicon info pointer");
  *(a2 + 8) = *(v4 + 104);
  v5 = *(v4 + 336);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v5 + 144));
  ValidConfig = TParam::getValidConfig((v5 + 144), ActiveConfigHandle);
  v8 = *(v4 + 360);
  *(a2 + 16) = *(v5 + 4 * ValidConfig + 304);
  *(a2 + 20) = v8;
  *a2 = *(*(v4 + 336) + 8);
  MrecInitModule_sdpres_sdapi();
  if ((v16 & 1) == 0)
  {
    uselocale(v15);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_26266C7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
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

        handleException(v25, "TPLexicon_GetInfo", *(v24 + 4));
        break;
      case 6:
        v26 = __cxa_begin_catch(a1);
        v27 = v26 + 8;
        if (v26[31] < 0)
        {
          v27 = *v27;
        }

        handleException(v27, "TPLexicon_GetInfo", 6);
        break;
      case 5:
        v28 = __cxa_begin_catch(a1);
        v29 = v28 + 8;
        if (v28[31] < 0)
        {
          v29 = *v29;
        }

LABEL_17:
        handleException(v29, "TPLexicon_GetInfo", 2);
        break;
      case 4:
        v30 = __cxa_begin_catch(a1);
        v31 = v30 + 8;
        if (v30[31] < 0)
        {
          v31 = *v31;
        }

        handleException(v31, "TPLexicon_GetInfo", 11);
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
        handleException(v34, "TPLexicon_GetInfo", 1);
        break;
      default:
        if (a2 != 1)
        {
          _Unwind_Resume(a1);
        }

        v35 = __cxa_begin_catch(a1);
        v36 = (*(*v35 + 16))(v35);
        handleException(v36, "TPLexicon_GetInfo", 2);
        break;
    }

    __cxa_end_catch();
    JUMPOUT(0x26266C708);
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t verifyPointerArgument<TPLexiconInfo>(uint64_t result, char a2, char *a3)
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

void sub_26266CB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t TPLexicon_GetHeadClone(unint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4, _DWORD *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  TReentrancyHandler::TReentrancyHandler(&v33, "TPLexicon_GetHeadClone");
  TLocaleHandler::TLocaleHandler(&v31);
  MrecInitModule_sdpres_sdapi();
  if ((g_bInitialized & 1) == 0)
  {
    conditionalAssert("Not initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 314);
    exception = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(v28, "Not initialized");
    *exception = byte_287529580;
    v18 = (exception + 1);
    if ((v28[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v18, *v28, *&v28[8]);
    }

    else
    {
      v23 = *v28;
      exception[3] = *&v28[16];
      *&v18->__r_.__value_.__l.__data_ = v23;
    }

    *exception = &unk_2875282E0;
    exception[4] = 4;
  }

  v10 = verifyLexiconHandle(a1, "Bad input lexicon handle");
  verifyStringArgument(a2, 0, 0, "Bad input word name pointer");
  *v28 = v29;
  *&v28[8] = xmmword_26286B6F0;
  v30 = 1;
  if (TLocaleInfo::multiByteToUnicode((v10 + 30), a2, v28))
  {
    conditionalAssert("Bad input wordname", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 320);
    v19 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&__s, "Bad input wordname");
    *v19 = byte_287529580;
    v20 = (v19 + 1);
    if (SHIBYTE(v35) < 0)
    {
      std::string::__init_copy_ctor_external(v20, __s, *(&__s + 1));
    }

    else
    {
      v24 = __s;
      v19[3] = v35;
      *&v20->__r_.__value_.__l.__data_ = v24;
    }

    *v19 = &unk_2875282E0;
    v19[4] = 3;
  }

  verifyPointerArgument<char,unsigned int>(a3, a4, 1, "Bad output head clone buffer");
  *&__s = a3;
  *(&__s + 1) = a4;
  v35 = 0;
  v37 = 0;
  if (*&v28[16] >= *&v28[8])
  {
    if (v30)
    {
      LODWORD(v26) = 0;
      TBuffer<wchar_t>::insert(v28, *&v28[16], &v26, 1uLL);
      v11 = *v28;
      --*&v28[16];
    }

    else
    {
      v11 = *v28;
      if (*&v28[8])
      {
        *(*v28 + 4 * *&v28[8] - 4) = 0;
      }
    }
  }

  else
  {
    v11 = *v28;
    *(*v28 + 4 * *&v28[16]) = 0;
  }

  if (TLexicon::checkName(v10, v11, 0, 0xFFFFFFFFFFFFFFFFLL))
  {
    conditionalAssert("Bad wordname format", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tplexicon.cpp", 326);
    v21 = __cxa_allocate_exception(0x28uLL);
    std::string::basic_string[abi:ne200100]<0>(&v26, "Bad wordname format");
    *v21 = byte_287529580;
    v22 = (v21 + 1);
    if (SHIBYTE(v27) < 0)
    {
      std::string::__init_copy_ctor_external(v22, v26, *(&v26 + 1));
    }

    else
    {
      v25 = v26;
      v21[3] = v27;
      *&v22->__r_.__value_.__l.__data_ = v25;
    }

    *v21 = &unk_2875282E0;
    v21[4] = 3;
  }

  if (*&v28[16] >= *&v28[8])
  {
    if (v30)
    {
      LODWORD(v26) = 0;
      TBuffer<wchar_t>::insert(v28, *&v28[16], &v26, 1uLL);
      v12 = *v28;
      --*&v28[16];
    }

    else
    {
      v12 = *v28;
      if (*&v28[8])
      {
        *(*v28 + 4 * *&v28[8] - 4) = 0;
      }
    }
  }

  else
  {
    v12 = *v28;
    *(*v28 + 4 * *&v28[16]) = 0;
  }

  HeadClone = TLexicon::findHeadClone(v10, v12);
  if (HeadClone)
  {
    TLocaleInfo::unicodeToMultiByte((v10 + 30), *HeadClone, &__s);
  }

  else
  {
    v14 = 0;
    v35 = 0;
      ;
    }

    TBuffer<char>::insert(&__s, 0, a2, v14 - 1);
  }

  if (v35 >= *(&__s + 1))
  {
    if (v37)
    {
      LOBYTE(v26) = 0;
      TBuffer<char>::insert(&__s, v35--, &v26, 1uLL);
    }

    else if (*(&__s + 1))
    {
      *(__s + *(&__s + 1) - 1) = 0;
    }
  }

  else
  {
    v35[__s] = 0;
  }

  if (a5)
  {
    *a5 = v35 + 1;
  }

  if (v37 == 1 && __s != &v36 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v30 == 1 && *v28 != v29 && *v28)
  {
    MEMORY[0x26672B1B0]();
  }

  MrecInitModule_sdpres_sdapi();
  if ((v32 & 1) == 0)
  {
    uselocale(v31);
  }

  TReentrancyHandler::ms_bIn = 0;
  return 0;
}

void sub_26266D158(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_7:
      if (LOBYTE(STACK[0x570]) == 1)
      {
        v20 = STACK[0x458];
        if (STACK[0x458] != &STACK[0x470])
        {
          if (v20)
          {
            MEMORY[0x26672B1B0](v20, 0x1000C4077774924, a3, a4, a5, a6, a7, a8);
          }
        }
      }

      if (LOBYTE(STACK[0x430]) == 1 && a15 != v17 && a15)
      {
        MEMORY[0x26672B1B0]();
      }

      MrecInitModule_sdpres_sdapi();
      TLocaleHandler::~TLocaleHandler(&STACK[0x440]);
      TReentrancyHandler::ms_bIn = 0;
      switch(a2)
      {
        case 7:
          v21 = __cxa_begin_catch(a1);
          v22 = v21 + 8;
          if (v21[31] < 0)
          {
            v22 = *v22;
          }

          handleException(v22, "TPLexicon_GetHeadClone", *(v21 + 4));
          __cxa_end_catch();
          break;
        case 6:
          v23 = __cxa_begin_catch(a1);
          v24 = v23 + 8;
          if (v23[31] < 0)
          {
            v24 = *v24;
          }

          handleException(v24, "TPLexicon_GetHeadClone", 6);
          __cxa_end_catch();
          break;
        case 5:
          v25 = __cxa_begin_catch(a1);
          v26 = v25 + 8;
          if (v25[31] < 0)
          {
            v26 = *v26;
          }

LABEL_26:
          handleException(v26, "TPLexicon_GetHeadClone", 2);
          __cxa_end_catch();
          break;
        case 4:
          v27 = __cxa_begin_catch(a1);
          v28 = v27 + 8;
          if (v27[31] < 0)
          {
            v28 = *v28;
          }

          handleException(v28, "TPLexicon_GetHeadClone", 11);
          __cxa_end_catch();
          break;
        case 3:
          v29 = __cxa_begin_catch(a1);
          v26 = v29 + 8;
          if (v29[31] < 0)
          {
            v26 = *v26;
          }

          goto LABEL_26;
        case 2:
          v30 = __cxa_begin_catch(a1);
          v31 = (*(*v30 + 16))(v30);
          handleException(v31, "TPLexicon_GetHeadClone", 1);
          __cxa_end_catch();
          break;
        default:
          if (a2 != 1)
          {
            _Unwind_Resume(a1);
          }

          v32 = __cxa_begin_catch(a1);
          v33 = (*(*v32 + 16))(v32);
          handleException(v33, "TPLexicon_GetHeadClone", 2);
          __cxa_end_catch();
          break;
      }

      JUMPOUT(0x26266CEBCLL);
    }
  }

  else if (!v16)
  {
    goto LABEL_7;
  }

  __cxa_free_exception(v15);
  goto LABEL_7;
}

void std::vector<wchar_t const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<wchar_t const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void DgnException::DgnException(DgnException *this, int CurrentThreadId, char *a3, int a4, char *a5, int a6, char *a7)
{
  *this = &unk_287528CC0;
  v14 = (this + 32);
  DgnString::DgnString((this + 8));
  DgnString::DgnString(v14);
  DgnString::DgnString((this + 56));
  if (CurrentThreadId == -1)
  {
    CurrentThreadId = DgnThreadMgr::getCurrentThreadId(v15);
  }

  *(this + 18) = CurrentThreadId;
  DgnString::preAllocate(this + 1, 96);
  DgnString::operator=((this + 8), a3);
  *(this + 6) = a4;
  DgnString::operator=(v14, a5);
  *(this + 12) = a6;
  DgnString::preAllocate(this + 7, 512);
  DgnString::operator=((this + 56), a7);
}

void sub_26266D6EC(_Unwind_Exception *a1)
{
  DgnString::~DgnString(v2);
  DgnString::~DgnString(v1 + 8);
  _Unwind_Resume(a1);
}

void DgnException::~DgnException(DgnException *this)
{
  *this = &unk_287528CC0;
  v2 = this + 8;
  DgnString::~DgnString(this + 56);
  DgnString::~DgnString(this + 32);
  DgnString::~DgnString(v2);
}

{
  DgnException::~DgnException(this);

  JUMPOUT(0x26672B1B0);
}

void DgnFileIOException::~DgnFileIOException(DgnFileIOException *this)
{
  DgnException::~DgnException(this);

  JUMPOUT(0x26672B1B0);
}

double EncryptBuffer(_BYTE *result, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      if (a2)
      {
        v4 = a2;
        do
        {
          *result = sEncryptPerm256Table[*result];
          ++result;
          --v4;
        }

        while (v4);
      }
    }

    else if (a3 == 1)
    {
      if (a2)
      {
        v3 = a2;
        do
        {
          *result++ ^= 0x80u;
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      return errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/encrypt.cpp", 60, "dfutil/encrypt", 1, "%d", a3);
    }
  }

  return v5;
}

double DecryptBuffer(_BYTE *result, unsigned int a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      if (a2)
      {
        v4 = a2;
        do
        {
          *result = sDecryptPerm256Table[*result];
          ++result;
          --v4;
        }

        while (v4);
      }
    }

    else if (a3 == 1)
    {
      if (a2)
      {
        v3 = a2;
        do
        {
          *result++ ^= 0x80u;
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      return errThrowInternal(1, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/encrypt.cpp", 87, "dfutil/encrypt", 1, "%d", a3);
    }
  }

  return v5;
}

void MrecInitModule_active_kernel(void)
{
  if (!gParDebugActive)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugActive", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugActive = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugActive);
  }
}

uint64_t ActiveWordCoartN::unpackEndFromCallBack(ActiveWordCoartN *this)
{
  ActiveWordCoartBase::getEndPics(this, 0xFFFF, *(this + 2) + 302992);
  v2 = (*(**(this + 1) + 256))();
  (*(**(this + 1) + 120))(*(this + 1), *(this + 9), v2);
  v3 = *(**(this + 1) + 176);

  return v3();
}

uint64_t ActiveWordCoartN::unpackMidFromCallBack(ActiveWordCoartN *this)
{
  v2 = ActiveWordCoartN::unpackMid(this);
  (*(**(this + 1) + 120))(*(this + 1), *(this + 8), v2);
  v3 = *(**(this + 1) + 176);

  return v3();
}

void ActiveWordMgr::~ActiveWordMgr(ActiveWordMgr *this)
{
  DgnIArray<Utterance *>::~DgnIArray(this + 302992);

  NetMgr::~NetMgr(this);
}

void ActiveWordMgr::newActiveWordNonAcoustic(ActiveWordMgr *a1, uint64_t a2)
{
  NetMgr::addEmptyNet(a1, a2);
  v4 = v3;
  v5 = MemChunkAlloc(0x28uLL, 0);

  ActiveWordNonAcoustic::ActiveWordNonAcoustic(v5, a1, v4);
}

void ActiveWordMgr::newActiveWordSilence(ActiveWordMgr *a1, uint64_t a2)
{
  v3 = NetMgr::addSilNet(a1, a2);
  v4 = (*(*v3 + 200))(v3);
  BitArray::operator=(v4, a1 + 40);
  v5 = MemChunkAlloc(0x28uLL, 0);

  ActiveWordSilence::ActiveWordSilence(v5, a1, v3);
}

void ActiveWordMgr::newActiveWord(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1 + 299008;
  v11 = *a2;
  v12 = *(*(**VocMgr::smpVocMgr + ((v11 >> 22) & 0x3F8)) + 48);
  v13 = v11 & 0xFFFFFF;
  if (a2[2] == -1)
  {
    v16 = 1;
    v14 = v11 & 0xFFFFFF;
  }

  else
  {
    v14 = v13;
    if (*(v12[74] + 2 * v13) || *(v12[76] + 2 * v13))
    {
      v15 = *(a1 + 302984);
      v16 = (*(v15 + 68) & 0xFFFFFFFD) != 0 || Constraint::isCoartAllowedForState(v15, a2);
    }

    else
    {
      v16 = 0;
    }
  }

  v17 = v12[4];
  v18 = *(v17 + 2 * v14);
  if (*(v17 + 2 * v14))
  {
    v19 = 0;
    v20 = v18 + 1;
    v21 = (2 * *(v12[6] + 4 * v14) + 2 * v18 + v12[9] - 2);
    do
    {
      v22 = *v21--;
      v19 += *(*(*(v10 + 3968) + 16) + v22);
      --v20;
    }

    while (v20 > 1);
  }

  else
  {
    v19 = 0;
  }

  NetMgr::addNonSilNet(a1, a2, v16, a5, v18, v19, a3, a4);
  v24 = v23;
  v25 = (*(*v23 + 200))(v23);
  v26 = v25;
  if ((v16 & 1) == 0 && *(a1 + 12) == 1)
  {
    BitArray::operator=(v25, a1 + 40);
LABEL_26:
    v31 = MemChunkAlloc(0x28uLL, 0);
    ActiveWordNoCoart::ActiveWordNoCoart(v31, a1, v24);
    return;
  }

  v27 = a2[2] == -1 || a2[3] == -3;
  if (v27 || (v28 = *(v10 + 3976), v33 = *(a1 + 4), (Constraint::getNextPhones(v28, a2, &v33, v26) & 1) == 0))
  {
    PhnMgr::getFullAcousticExitContext(**(v10 + 3968), v26);
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v18 == 1)
  {
    v29 = MemChunkAlloc(0x40uLL, 0);
    ActiveWordCoartBase::ActiveWordCoartBase(v29, a1, v24);
    *v30 = &unk_287527600;
  }

  else
  {
    v32 = MemChunkAlloc(0x50uLL, 0);
    ActiveWordCoartN::ActiveWordCoartN(v32, a1, v24);
  }
}

uint64_t Constraint::getNextPhones(uint64_t a1, unsigned int *a2, int *a3, BitArray *a4)
{
  if ((*(a1 + 68) - 1) > 1)
  {
    v5 = *a3;
    return Constraint::getStateNextPhones(a1, a2, &v5, a4);
  }

  else
  {
    v6 = *a3;
    return Constraint::getTraceNextPhones(a1, a2, &v6, a4);
  }
}

void (***DgnDelete<ActiveWord>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ActiveWordMgr::printSize(ActiveWordMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 224);
  if (v34)
  {
    v13 = v33;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v33);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  if (this)
  {
    v32 = 0;
    v33 = 0;
    v15 = (a3 + 1);
    v31 = 0;
    NetMgr::printSize(this, 0xFFFFFFFFLL, v15, &v33, &v32, &v31);
    *a4 += v33;
    *a5 += v32;
    *a6 += v31;
  }

  else
  {
    v15 = (a3 + 1);
  }

  v16 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v16 = 12;
  }

  v17 = *(this + 75750);
  v18 = 12 * v17;
  if (v17 <= 0)
  {
    v18 = 0;
  }

  v19 = v18 + v16;
  v20 = v18 + v16 + 12 * (*(this + 75751) - v17);
  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 226);
  if (v34)
  {
    v22 = v33;
  }

  else
  {
    v22 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v15, &byte_262899963, (34 - a3), (34 - a3), v22, v20, v19, 0);
  DgnString::~DgnString(&v33);
  *a4 += v20;
  *a5 += v19;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 227);
  if (v34)
  {
    v25 = v33;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v15, &byte_262899963, (34 - a3), (34 - a3), v25, v23, v23, 0);
  DgnString::~DgnString(&v33);
  *a4 += v23;
  *a5 += v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v26 = 4;
  }

  else
  {
    v26 = 8;
  }

  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 228);
  if (v34)
  {
    v28 = v33;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v15, &byte_262899963, (34 - a3), (34 - a3), v28, v26, v26, 0);
  DgnString::~DgnString(&v33);
  *a4 += v26;
  *a5 += v26;
  getShipObjectSizeDescription(&v33, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 229);
  if (v34)
  {
    v30 = v33;
  }

  else
  {
    v30 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, a3, &byte_262899963, (35 - a3), (35 - a3), v30, *a4, *a5, *a6);
  DgnString::~DgnString(&v33);
}

void sub_26266E2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void ActiveWord::ActiveWord(ActiveWord *this, ActiveWordMgr *a2, HmmNet *a3)
{
  *this = &unk_287529628;
  *(this + 1) = a3;
  *(this + 2) = a2;
  if (*(a3 + 6) == -1 || *(a3 + 7) == -3)
  {
    v5 = MemChunkAlloc(0x38uLL, 0);
    *v5 = 0;
    v5[1] = 0;
    *(v5 + 4) = -1;
    *(v5 + 3) = 0u;
    *(v5 + 5) = 0u;
    *(this + 3) = v5;
    *(this + 8) = 0;
  }

  else
  {
    *(this + 3) = 0;
    v6 = *(a2 + 37873);
    if (*(v6 + 68) & 0xFFFFFFFD) == 0 && (*(v6 + 64))
    {
      *(this + 8) = Constraint::getMaxEndTime(v6, a3 + 4);
      *(this + 36) = Constraint::getSuccessorRecursivePrefilteringAllowed(v6, a3 + 4);
      return;
    }

    *(this + 8) = 268435200;
  }

  *(this + 36) = 0;
}

void ActiveWord::~ActiveWord(ActiveWord *this)
{
  *this = &unk_287529628;
  DgnDelete<MergedStateTransition>(*(this + 3));
  *(this + 3) = 0;
}

uint64_t DgnDelete<MergedStateTransition>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    DgnArray<PhnIndexSet>::releaseAll(result + 40);
    DgnIArray<Utterance *>::~DgnIArray(v1 + 24);
    v2 = DgnIArray<Utterance *>::~DgnIArray(v1);

    return MemChunkFree(v2, 0);
  }

  return result;
}

uint64_t ActiveWord::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v2 = 4;
  }

  if (a2 == 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  if (a2 == 2)
  {
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v4 = 8;
    }

    else
    {
      v4 = 16;
    }

    v3 = v2;
  }

  else
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      v8 = (*(*v7 + 280))(v7, a2) + v3;
      v9 = 8;
      if (gShadowDiagnosticShowIdealizedObjectSizes)
      {
        v9 = 4;
      }

      if (a2 == 3)
      {
        v3 = 0;
      }

      else
      {
        v3 = v9;
      }
    }

    else
    {
      v8 = v3;
    }

    v4 = v3 + v8;
    v10 = *(a1 + 24);
    if (v10)
    {
      v3 += sizeObject(v10, a2);
    }
  }

  return v3 + v4;
}

uint64_t ActiveWordNoCoartBase::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = ActiveWord::sizeObject(a1, a2);
  if (v2 != 3)
  {
    ++result;
  }

  return result;
}

void ActiveWordNonAcoustic::ActiveWordNonAcoustic(ActiveWordNonAcoustic *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWord::ActiveWord(this, a2, a3);
  *v4 = &unk_2875259A8;
  *(this + 37) = HmmNet::unpackNonAcoustic(*(v4 + 8));
}

void ActiveWordNonAcoustic::~ActiveWordNonAcoustic(ActiveWordNonAcoustic *this)
{
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

void ActiveWordSilence::ActiveWordSilence(ActiveWordSilence *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWord::ActiveWord(this, a2, a3);
  *v4 = &unk_287527288;
  *(this + 37) = HmmNet::unpackSilence(*(v4 + 8));
}

void ActiveWordSilence::~ActiveWordSilence(ActiveWordSilence *this)
{
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

void ActiveWordNoCoart::ActiveWordNoCoart(ActiveWordNoCoart *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWord::ActiveWord(this, a2, a3);
  *v4 = &unk_2875272C8;
  v5 = v4[1];
  v7 = v5 + 4;
  v6 = v5[4];
  v13[0] = *(**(*(this + 2) + 302976) + 56);
  v13[1] = v13[0];
  v12[0] = v13[0];
  v12[1] = v13[0];
  v8 = *(**VocMgr::smpVocMgr + ((v6 >> 22) & 0x3F8));
  v10 = 0;
  v11 = 0;
  v9 = (*(*v5 + 40))(v5);
  Voc::getPics(v8, v7, 0, v13, v12, v9, &v10);
  *(this + 37) = HmmNet::unpackNoCoart(*(this + 1), v10, v11);
  DgnIArray<Utterance *>::~DgnIArray(&v10);
}

void sub_26266E824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnIArray<Utterance *>::~DgnIArray(va);
  ActiveWord::~ActiveWord(v3);
  _Unwind_Resume(a1);
}

void ActiveWordNoCoart::~ActiveWordNoCoart(ActiveWordNoCoart *this)
{
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t ActiveWordNoCoartBase::seedInPort(uint64_t this, unsigned __int16 a2, int a3, int a4)
{
  v4 = *(this + 8);
  v5 = *(*(v4 + 56) + 8 * *(this + 37));
  if (*(v5 + 8) > a3)
  {
    v6 = *(v4 + 114);
    *(v5 + 8) = a3;
    *v5 = a4;
    if ((v6 & 1) == 0)
    {
      *(v5 + 4) = 0;
    }

    *(v4 + 112) = 1;
  }

  return this;
}

void ActiveWordCoartBase::ActiveWordCoartBase(ActiveWordCoartBase *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWord::ActiveWord(this, a2, a3);
  *v4 = &unk_287526250;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  *(v4 + 38) = -1;
  *(v4 + 42) = -1;
  v5 = **(*(v4 + 16) + 302976);
  v6 = *(v5 + 28);
  *(v4 + 44) = v6;
  *(v4 + 40) = v6;
  v7 = *v5;
  v8 = (v7 - 2);
  if (v7 == 2)
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = MemChunkAlloc((v7 - 2), 0);
    *(this + 6) = v9;
    *(this + 14) = v8;
  }

  memset(v9, 255, v8);
}

void sub_26266E974(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  ActiveWord::~ActiveWord(v1);
  _Unwind_Resume(a1);
}

void ActiveWordCoartBase::~ActiveWordCoartBase(ActiveWordCoartBase *this)
{
  *this = &unk_287526250;
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 48);

  ActiveWord::~ActiveWord(this);
}

uint64_t ActiveWordCoartBase::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = ActiveWord::sizeObject(a1, a2);
  if (v2 == 3)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 12;
    v5 = 8;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v6 = 8;
    }

    if ((v2 & 0xFFFFFFFE) != 2)
    {
      v7 = *(a1 + 56);
      v8 = __OFSUB__(v7, 1);
      v9 = (v7 - 1);
      if (v9 < 0 == v8)
      {
        v6 += v9 + 1;
        v5 = 8;
      }
    }
  }

  return v5 + v6 + v4;
}

uint64_t ActiveWordCoartBase::getEndPics(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(**VocMgr::smpVocMgr + ((v5[4] >> 22) & 0x3F8));
  v8 = **(v6 + 302976);
  v9 = *(v8 + 56);
  LODWORD(v6) = *(v6 + 4);
  *(a1 + 44) = v9;
  *(a1 + 40) = v9;
  v10 = v6 == 1;
  if (v6 == 1)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (v10)
  {
    v12 = 38;
  }

  else
  {
    v12 = 42;
  }

  if (v10)
  {
    v13 = 42;
  }

  else
  {
    v13 = 38;
  }

  if (a2 != 0xFFFF)
  {
    v9 = a2;
  }

  *(a1 + v12) = v9;
  if (a2 == 0xFFFF)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  v15 = *v8 - 2;
  *(a3 + 8) = 0;
  v16 = *(a3 + 12);
  v17 = v15 - v16;
  if (v15 > v16)
  {
    DgnArray<RuleDesc>::reallocElts(a3, v17, 0);
    v5 = *(a1 + 8);
  }

  v18 = (*(*v5 + 192))(v5, v17);
  v19 = *(a1 + 8);
  if (v19[6] == -1)
  {
    v20 = 1;
  }

  else
  {
    v20 = (*(*v19 + 40))(v19);
  }

  v26[0] = 0;
  v26[1] = 0;
  if (v15)
  {
    v21 = 0;
    do
    {
      if ((*(*v18 + 4 * (v21 >> 5)) >> v21))
      {
        *(a1 + v13) = v21;
        Voc::getPics(v7, (*(a1 + 8) + 16), v14, (a1 + 38), (a1 + 42), v20, v26);
        v22 = v26[0];
        v23 = *a3 + 12 * *(a3 + 8);
        v24 = *v26[0];
        *(v23 + 8) = *(v26[0] + 8);
        *v23 = v24;
        *(v23 + 10) = *(v22 + 10);
        *(v23 + 11) = *(v22 + 11);
        ++*(a3 + 8);
      }

      ++v21;
    }

    while (v15 > v21);
  }

  return DgnIArray<Utterance *>::~DgnIArray(v26);
}

uint64_t ActiveWordCoartBase::seedInPort(ActiveWordCoartBase *this, unsigned int a2, int a3, int a4)
{
  result = *(*(this + 6) + a2);
  if (result == 255)
  {
    result = (*(*this + 48))(this);
    *(*(this + 6) + a2) = result;
  }

  v9 = *(this + 1);
  v10 = *(*(v9 + 56) + 8 * result);
  if (*(v10 + 8) > a3)
  {
    v11 = *(v9 + 114);
    *(v10 + 8) = a3;
    *v10 = a4;
    if ((v11 & 1) == 0)
    {
      *(v10 + 4) = 0;
    }

    *(v9 + 112) = 1;
  }

  return result;
}

void ActiveWordCoart1::~ActiveWordCoart1(ActiveWordCoart1 *this)
{
  *this = &unk_287526250;
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 48);

  ActiveWord::~ActiveWord(this);
}

{
  *this = &unk_287526250;
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 48);
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t ActiveWordCoart1::addInPort(ActiveWordCoart1 *this, int a2)
{
  ActiveWordCoartBase::getEndPics(this, a2, *(this + 2) + 302992);
  v3 = (*(**(this + 1) + 256))();
  v4 = HmmNet::newInPort(*(this + 1));
  (*(**(this + 1) + 160))(*(this + 1), v4, v3);
  return v4;
}

uint64_t HmmNet::newInPort(HmmNet *this)
{
  v2 = *(this + 16);
  if (*(this + 11))
  {
    v3 = 0;
    v4 = *(this + 16);
  }

  else
  {
    v3 = MemChunkAlloc(0xCuLL, 0);
    *v3 = 0x100000001;
    *(v3 + 2) = 1310740000;
    v4 = *(this + 16);
  }

  if (v4 == *(this + 17))
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 56, 1, 1);
    v4 = *(this + 16);
  }

  *(*(this + 7) + 8 * v4) = v3;
  *(this + 16) = v4 + 1;
  return v2;
}

uint64_t ActiveWordCoartN::unpackMid(ActiveWordCoartN *this)
{
  v12 = 0;
  v2 = *(**(*(this + 2) + 302976) + 56);
  *(this + 19) = v2;
  v3 = (this + 38);
  v4 = *(this + 1);
  v5 = v4 + 4;
  v6 = *(**VocMgr::smpVocMgr + ((v4[4] >> 22) & 0x3F8));
  v3[2] = v2;
  v10 = 0;
  v11 = 0;
  if (v4[6] == -1)
  {
    v7 = 1;
  }

  else
  {
    v7 = (*(*v4 + 40))(v4);
  }

  Voc::getPics(v6, v5, 1u, v3, v3 + 2, v7, &v10);
  (*(**(this + 1) + 208))(*(this + 1), v10, v11, &v12, this + 72, 2);
  v8 = v12;
  DgnIArray<Utterance *>::~DgnIArray(&v10);
  return v8;
}

void sub_26266F080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

void ActiveWordCoartN::ActiveWordCoartN(ActiveWordCoartN *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWordCoartBase::ActiveWordCoartBase(this, a2, a3);
  *v5 = &unk_2875275B8;
  v5[8] = 0;
  v6 = v5 + 8;
  v5[9] = 0;
  v7 = *(v5[1] + 16);
  v8 = *(*(*(*(**VocMgr::smpVocMgr + ((v7 >> 22) & 0x3F8)) + 48) + 32) + 2 * (v7 & 0xFFFFFF));
  if ((*(*a3 + 168))(a3))
  {
    v9 = (*(**(this + 1) + 128))(*(this + 1));
    *v9 = 0x100000001;
    *(v9 + 8) = 1310740000;
    *(v9 + 12) = 0;
    *(v9 + 20) = -65536;
    *v6 = v9;
    v10 = unpackMidCallBack;
    if (v8 == 2)
    {
      *(this + 9) = v9;
      v10 = unpackEndCallBack;
    }

    (*(*a3 + 176))(a3, v10, this, 3);
  }

  else
  {
    ActiveWordCoartBase::getEndPics(this, 0xFFFF, *(this + 2) + 302992);
    (*(**(this + 1) + 256))(*(this + 1), *(this + 2) + 302992, 1);
    if (v8 == 2)
    {
      v11 = (*(**(this + 1) + 128))(*(this + 1));
      *v11 = 0x100000001;
      *(v11 + 8) = 1310740000;
      *(v11 + 12) = 0;
      *(v11 + 20) = -65536;
      *(this + 8) = v11;
      *(this + 9) = v11;
    }

    else
    {
      ActiveWordCoartN::unpackMid(this);
      v12 = (*(**(this + 1) + 128))(*(this + 1));
      *v12 = 0x100000001;
      *(v12 + 8) = 1310740000;
      *(v12 + 12) = 0;
      *(v12 + 20) = -65536;
      *(this + 8) = v12;
      (*(**(this + 1) + 120))(*(this + 1));
    }

    (*(**(this + 1) + 120))(*(this + 1));
  }
}

uint64_t ActiveWordCoartN::addInPort(ActiveWordCoartN *this, __int16 a2)
{
  v3 = *(this + 2);
  v4 = *(**(v3 + 302976) + 56);
  LODWORD(v3) = *(v3 + 4);
  v5 = v3 == 1;
  if (v3 == 1)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  if (!v5)
  {
    v4 = a2;
  }

  *(this + 21) = v4;
  v7 = (this + 42);
  *(this + 19) = v6;
  v8 = (this + 38);
  v9 = *(this + 1);
  v10 = v9 + 4;
  if (v5)
  {
    v11 = 2;
  }

  else
  {
    v11 = 3;
  }

  v12 = *(**VocMgr::smpVocMgr + ((v9[4] >> 22) & 0x3F8));
  v16[0] = 0;
  v16[1] = 0;
  if (v9[6] == -1)
  {
    v13 = 1;
  }

  else
  {
    v13 = (*(*v9 + 40))(v9);
  }

  Voc::getPics(v12, v10, v11, v8, v7, v13, v16);
  v14 = HmmNet::unpackInPort(*(this + 1), v16[0], *(this + 8));
  DgnIArray<Utterance *>::~DgnIArray(v16);
  return v14;
}

void ActiveWordCoartN::~ActiveWordCoartN(ActiveWordCoartN *this)
{
  *this = &unk_287526250;
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 48);

  ActiveWord::~ActiveWord(this);
}

{
  *this = &unk_287526250;
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 48);
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t ActiveWordCoartN::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = ActiveWordCoartBase::sizeObject(a1, a2);
  v4 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 8;
  }

  if (v2 == 3)
  {
    v4 = 0;
  }

  return v4 + v3;
}

void ActiveWordEmbeddedFst::ActiveWordEmbeddedFst(ActiveWordEmbeddedFst *this, ActiveWordMgr *a2, HmmNet *a3)
{
  ActiveWord::ActiveWord(this, a2, a3);
  *v4 = &unk_2875259E8;
  *(this + 37) = HmmNet::unpackEmbeddedFst(*(v4 + 8));
}

void ActiveWordEmbeddedFst::~ActiveWordEmbeddedFst(ActiveWordEmbeddedFst *this)
{
  ActiveWord::~ActiveWord(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t Active::Active(uint64_t a1, int a2, int *a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2 == 2;
  *(a1 + 8) = 0;
  *(a1 + 4) = 0;
  v8 = *a3;
  NetMgr::NetMgr(a1 + 16, a2, a4, &v8);
  *(a1 + 302992) = a5;
  *(a1 + 303008) = 0;
  *(a1 + 303016) = 0;
  *(a1 + 303000) = 0;
  Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::Hash(a1 + 303024, 0, 256);
  HashKEV<CWIDAC,CWIDAC,CWIDAC>::HashKEV(a1 + 303136, 0, 1);
  *(a1 + 303240) = 0u;
  return a1;
}

void sub_26266F74C(_Unwind_Exception *a1)
{
  Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::~Hash(v1 + 303024);
  DgnIArray<Utterance *>::~DgnIArray(v1 + 303008);
  NetMgr::~NetMgr((v1 + 16));
  _Unwind_Resume(a1);
}

void Active::printSize(Active *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 898);
  if (v71)
  {
    v13 = v70;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v70);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  getShipObjectSizeDescription(&v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 899);
  if (v71)
  {
    v16 = v70;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v16, 4, 4, 0);
  v64 = a3;
  DgnString::~DgnString(&v70);
  *a4 += 4;
  *a5 += 4;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  ActiveWordMgr::printSize((this + 16), 0xFFFFFFFFLL, (a3 + 1), &v70, &v69, &v68);
  *a4 += v70;
  *a5 += v69;
  v65 = a6;
  *a6 += v68;
  getShipObjectSizeDescription(&v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 902);
  if (v71)
  {
    v18 = v70;
  }

  else
  {
    v18 = &byte_262899963;
  }

  v66 = (34 - a3);
  v67 = (a3 + 1);
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, v67, &byte_262899963, v66, v66, v18, 1, 1, 0);
  v19 = (this + 303104);
  DgnString::~DgnString(&v70);
  ++*a4;
  ++*a5;
  v20 = this;
  v21 = sizeObject(this + 303048, 0);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 8;
  }

  else
  {
    v22 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  v24 = *(this + 75778) << v23;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 8;
  }

  else
  {
    v25 = 16;
  }

  v26 = v21 + v25 + v22 + v24 + 13;
  v27 = sizeObject(this + 303048, 1);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 8;
  }

  else
  {
    v28 = 12;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v29 = 2;
  }

  else
  {
    v29 = 3;
  }

  v30 = *(this + 75778) << v29;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 8;
  }

  else
  {
    v31 = 16;
  }

  v32 = v27 + v31 + v28 + v30 + 13;
  v33 = sizeObject(this + 303048, 3);
  getShipObjectSizeDescription(&v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 903);
  if (v71)
  {
    v35 = v70;
  }

  else
  {
    v35 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v67, &byte_262899963, v66, v66, v35, v26, v32, v33);
  DgnString::~DgnString(&v70);
  *a4 += v26;
  *a5 += v32;
  *v65 += v33;
  v36 = sizeObject(v20 + 303160, 0);
  v37 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 8;
    v38 = 2;
  }

  else
  {
    v38 = 3;
  }

  v39 = v19[30] << v38;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v40 = 4;
  }

  else
  {
    v40 = 8;
  }

  v41 = v36 + v40 + v37 + v39 + 13;
  v42 = sizeObject(v20 + 303160, 1);
  v43 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 8;
    v44 = 2;
  }

  else
  {
    v44 = 3;
  }

  v45 = v19[30] << v44;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 4;
  }

  else
  {
    v46 = 8;
  }

  v47 = v42 + v46 + v43 + v45 + 13;
  v48 = sizeObject(v20 + 303160, 3);
  getShipObjectSizeDescription(&v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 904);
  if (v71)
  {
    v50 = v70;
  }

  else
  {
    v50 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v67, &byte_262899963, v66, v66, v50, v41, v47, v48);
  DgnString::~DgnString(&v70);
  *a4 += v41;
  *a5 += v47;
  *v65 += v48;
  getShipObjectSizeDescription(&v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 906);
  if (v71)
  {
    v52 = v70;
  }

  else
  {
    v52 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v67, &byte_262899963, v66, v66, v52, 4, 4, 0);
  DgnString::~DgnString(&v70);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 908);
  if (v71)
  {
    v54 = v70;
  }

  else
  {
    v54 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v67, &byte_262899963, v66, v66, v54, 4, 4, 0);
  DgnString::~DgnString(&v70);
  *a4 += 4;
  *a5 += 4;
  v55 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v55 = 12;
  }

  v56 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v56 = 3;
  }

  v57 = v19[36];
  v58 = ((v19[37] - v57 + v57) << v56) + v55;
  v59 = (v57 << v56) + v55;
  getShipObjectSizeDescription(&v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 910);
  if (v71)
  {
    v61 = v70;
  }

  else
  {
    v61 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v67, &byte_262899963, v66, v66, v61, v58, v59, 0);
  DgnString::~DgnString(&v70);
  *a4 += v58;
  *a5 += v59;
  getShipObjectSizeDescription(&v70, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/active.cpp", 911);
  if (v71)
  {
    v63 = v70;
  }

  else
  {
    v63 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v64, &byte_262899963, (35 - v64), (35 - v64), v63, *a4, *a5, *v65);
  DgnString::~DgnString(&v70);
}

void (***Active::removeActiveWord(Active *this, ActiveWord *a2, unsigned int a3))(void)
{
  v6 = this + 303104;
  Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::remove(this + 303024, *(a2 + 1) + 16);
  v7 = *(a2 + 1);
  *(a2 + 1) = 0;
  NetMgr::removeNet((this + 16), v7);
  result = DgnDelete<ActiveWord>(a2);
  v9 = *(v6 + 36) - 1;
  *(*(v6 + 17) + 8 * a3) = *(*(v6 + 17) + 8 * v9);
  *(v6 + 36) = v9;
  return result;
}

uint64_t *Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::remove(uint64_t a1, uint64_t a2)
{
  result = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(a1, a2);
  if (*result)
  {

    return Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::removeBucket(a1, result);
  }

  return result;
}

Active *Active::prune(Active *this)
{
  v1 = this + 303104;
  v2 = *(this + 75812);
  if (v2 >= 1)
  {
    v3 = this;
    do
    {
      v4 = *(*(v1 + 17) + 8 * v2 - 8);
      v5 = *(v4 + 1);
      if (!*(v5 + 104) && (*(v5 + 112) & 1) == 0)
      {
        this = Active::removeActiveWord(v3, v4, v2 - 1);
      }

      --v2;
    }

    while ((v2 + 1) > 1);
  }

  return this;
}

uint64_t Active::pruneTimeConstrained(Active *this, int a2)
{
  v2 = this + 303104;
  v3 = *(this + 75812);
  if (v3 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(*(v2 + 17) + 8 * v3 - 8);
      if (*(v7 + 8) <= a2)
      {
        Active::removeActiveWord(this, v7, v3 - 1);
        v6 = 1;
      }

      --v3;
    }

    while ((v3 + 1) > 1);
  }

  return v6 & 1;
}

ActiveWordNonAcoustic *Active::newActiveWordNonAcoustic(uint64_t a1, int *a2)
{
  ActiveWordMgr::newActiveWordNonAcoustic((a1 + 16), a2);
  v5 = v4;
  Active::addActiveWord(a1, a2, v4);
  return v5;
}

uint64_t *Active::addActiveWord(uint64_t a1, int *a2, uint64_t a3)
{
  v6 = a1 + 303104;
  v10 = a3;
  v7 = *(a1 + 303248);
  if (v7 == *(a1 + 303252) && v7 + (v7 >> 1) + 256 > v7)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1 + 303240, (v7 >> 1) + 256, 0);
    v7 = *(v6 + 144);
  }

  *(*(v6 + 136) + 8 * v7) = a3;
  *(v6 + 144) = v7 + 1;
  result = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::add(a1 + 303024, a2, &v10);
  if (*a1 == 1)
  {
    result = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(a1 + 303136, a2);
    if (!*result)
    {
      return HashKEV<CWIDAC,CWIDAC,CWIDAC>::add(a1 + 303136, a2);
    }
  }

  return result;
}

ActiveWordSilence *Active::newActiveWordSilence(uint64_t a1, int *a2)
{
  ActiveWordMgr::newActiveWordSilence((a1 + 16), a2);
  v5 = v4;
  Active::addActiveWord(a1, a2, v4);
  return v5;
}

ActiveWordCoartBase *Active::newActiveWord(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ActiveWordMgr::newActiveWord(a1 + 16, a2, a3, a4, a5);
  v8 = v7;
  Active::addActiveWord(a1, a2, v7);
  return v8;
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::add(uint64_t a1, int *a2, void *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v6);
  }

  result = CWIDAC::computeHash(a2);
  v8 = result;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = (-1640531527 * result) >> -v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 80);
  v12 = *(a1 + 32);
  if (!v12)
  {
    result = DgnPool::addChunk((a1 + 24));
    v12 = *(a1 + 32);
  }

  v13 = (v11 + 8 * v10);
  *(a1 + 32) = *v12;
  v14 = *a2;
  *(v12 + 8) = 0;
  *(v12 + 12) = v14;
  *(v12 + 16) = a2[1];
  *(v12 + 20) = *(a2 + 2);
  *(v12 + 40) = *a3;
  *(v12 + 8) = v8;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v12 = *v13;
  }

  else
  {
    *v12 = 0;
    v15 = *v13;
    if (*v13)
    {
      do
      {
        v13 = v15;
        v15 = *v15;
      }

      while (v15);
    }
  }

  *v13 = v12;
  return result;
}

uint64_t HashKEV<CWIDAC,CWIDAC,CWIDAC>::add(uint64_t a1, int *a2)
{
  v4 = *(a1 + 12);
  if (*(a1 + 8) >= v4 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v4);
  }

  result = CWIDAC::computeHash(a2);
  v6 = result;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (-1640531527 * result) >> -v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 80);
  v10 = *(a1 + 32);
  if (!v10)
  {
    result = DgnPool::addChunk((a1 + 24));
    v10 = *(a1 + 32);
  }

  v11 = (v9 + 8 * v8);
  *(a1 + 32) = *v10;
  v12 = *a2;
  *(v10 + 8) = 0;
  *(v10 + 12) = v12;
  *(v10 + 16) = a2[1];
  *(v10 + 20) = *(a2 + 2);
  *(v10 + 8) = v6;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v10 = *v11;
  }

  else
  {
    *v10 = 0;
    v13 = *v11;
    if (*v11)
    {
      do
      {
        v11 = v13;
        v13 = *v13;
      }

      while (v13);
    }
  }

  *v11 = v10;
  return result;
}

uint64_t Active::scoreActiveWords(uint64_t this, uint64_t a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = this + 303104;
  *(this + 8) = 0;
  v8 = *(this + 303248);
  if (v8 >= 1)
  {
    v15 = this;
    v16 = v8 - 1;
    do
    {
      v17 = *(*(v7 + 136) + 8 * v16);
      v18 = v17[1];
      if (*(v18 + 104) || *(v18 + 112) == 1)
      {
        if (*(v18 + 16) == -50331651)
        {
          v19 = a5;
        }

        else
        {
          v19 = 0;
        }

        (*(*v17 + 16))(*(*(v7 + 136) + 8 * v16), a2, (v19 + a3), (v19 + a4), a6, a7);
        v20 = v17[1];
        *(v15 + 8) += v20[26];
        this = (*(*v20 + 72))(v20);
        *(v15 + 12) += this;
      }

      v21 = v16-- + 1;
    }

    while (v21 > 1);
  }

  return this;
}

BOOL Active::thresholdActiveWords(Active *this, uint64_t a2, __int16 a3, __int16 a4)
{
  v4 = this + 303104;
  v5 = *(this + 75812);
  if (v5 < 1)
  {
    return 0;
  }

  else
  {
    v9 = 0;
    v10 = *(this + 132);
    v11 = v5 - 1;
    do
    {
      v12 = *(*(*(v4 + 17) + 8 * v11) + 8);
      if (*(v12 + 104) || *(v12 + 112) == 1)
      {
        v13 = *(v12 + 16);
        v9 = v9 || *(v12 + 108) <= v10 && v13 != -50331651;
        if (v13 == -50331651)
        {
          v15 = a4;
        }

        else
        {
          v15 = 0;
        }

        HmmNet::thresholdNet(v12, a2, v15 + a3);
      }

      v16 = v11-- + 1;
    }

    while (v16 > 1);
  }

  return v9;
}

void *Active::endActiveSyncRecog(Active *this)
{
  v2 = this + 303104;
  Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::removeAll(this + 303024);
  HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(this + 303136);
  v3 = *(v2 + 36);
  if (v3 >= 1)
  {
    v4 = v3 - 1;
    do
    {
      v5 = *(*(v2 + 17) + 8 * v4);
      v6 = *(v5 + 8);
      *(v5 + 8) = 0;
      NetMgr::removeNet((this + 16), v6);
      DgnDelete<ActiveWord>(v5);
      v7 = v4-- + 1;
    }

    while (v7 > 1);
  }

  *(v2 + 36) = 0;

  return NetMgr::endNetMgrSyncRecog((this + 16));
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::removeAll(uint64_t result)
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

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 5);
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

uint64_t Active::estimateActivePelsThisFrame(Active *this, BitArray *a2)
{
  v3 = this + 303104;
  result = NetMgr::estimateActivePelsPrevFrame(this + 16, a2);
  v5 = *(v3 + 36);
  if (v5 >= 1)
  {
    v6 = v5 - 1;
    do
    {
      result = *(*(*(v3 + 17) + 8 * v6) + 8);
      if (*(result + 104) || *(result + 112) == 1)
      {
        result = (*(*result + 16))(result, a2);
      }

      v7 = v6-- + 1;
    }

    while (v7 > 1);
  }

  return result;
}

uint64_t HmmNet::thresholdNet(HmmNet *this, uint64_t a2, __int16 a3)
{
  result = (*(*this + 304))(this, a2);
  if (*(this + 54) > a3)
  {
    *(this + 54) = 20000;
  }

  v6 = *(this + 16);
  if (v6 >= 1)
  {
    v7 = v6 + 1;
    v8 = (*(this + 7) + 8 * v6 - 8);
    do
    {
      v9 = *v8--;
      *(v9 + 8) = 20000;
      --v7;
    }

    while (v7 > 1);
  }

  *(this + 112) = 0;
  return result;
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524090;
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
  v13[1] = 0x3FFF;
  v14 = xmmword_26286CC40;
  v7 = gShadowDiagnosticShowIdealizedObjectSizes;
  v8 = sizeObject(v13, 2);
  if (v7)
  {
    v9 = 8;
  }

  else
  {
    v9 = 12;
  }

  v10 = v9 + v8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v11 = 4;
  }

  else
  {
    v11 = 8;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v10 + v11;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2626709AC(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::~Hash(uint64_t a1)
{
  Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287524090;
  if (*(a1 + 8))
  {
    Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t HashKEV<CWIDAC,CWIDAC,CWIDAC>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523AC8;
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
  v10[1] = 0x3FFF;
  v11 = xmmword_26286CC40;
  LOBYTE(a3) = gShadowDiagnosticShowIdealizedObjectSizes;
  v7 = sizeObject(v10, 2);
  if (a3)
  {
    v8 = 8;
  }

  else
  {
    v8 = 12;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v8 + v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_262670AFC(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<CWIDAC,CWIDAC,CWIDAC>::~HashKEV(uint64_t a1)
{
  HashKEV<CWIDAC,CWIDAC,CWIDAC>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287523AC8;
  if (*(a1 + 8))
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::removeBucket(uint64_t result, char ***a2)
{
  v2 = result;
  v3 = *a2;
  *a2 = **a2;
  v4 = *(result + 96);
  if (v4)
  {
    result = v4(v3 + 12);
  }

  v5 = *(v2 + 104);
  if (v5)
  {
    result = v5(v3 + 5);
  }

  *v3 = *(v2 + 32);
  *(v2 + 32) = v3;
  --*(v2 + 8);
  return result;
}

__n128 AcousticFormat::AcousticFormat(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t AcousticFormat::getMicrosecPerFrame(AcousticFormat *this)
{
  v1 = *(this + 3);
  if (v1 && (v2 = *(this + 6)) != 0)
  {
    return 1000000 * v2 / v1;
  }

  else
  {
    return 0;
  }
}

void MrecInitModule_user_user(void)
{
  if (!gParDebugUserDelta)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugUserDelta", &unk_26287FEB9, &unk_26287FEB9, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugUserDelta = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugUserDelta);
  }
}

void User::~User(User *this)
{
  if (*(this + 51))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 243, "user/user", 2, "%u", *(this + 92));
  }

  if (*(this + 52))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 244, "user/user", 6, "%u", *(this + 92));
  }

  if (*(this + 53))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 245, "user/user", 39, "%u", *(this + 92));
  }

  DgnDelete<EnvMgr>(*this);
  DgnDelete<MulTable>(*(this + 1));
  DgnDelete<Imelda>(*(this + 2));
  DgnDelete<VarClassMgr>(*(this + 3));
  DgnDelete<FmpeMgr>(*(this + 4));
  DgnDelete<OnlineConstrainedTransAccMgr>(*(this + 5));
  DgnDelete<PicMgr>(*(this + 6));
  DgnDelete<PelMgr>(*(this + 7));
  DgnDelete<GenoneClassTree>(*(this + 8));
  DgnDelete<SigProcDescriptor>(*(this + 9));
  DgnDelete<Lookahead>(*(this + 18));
  DgnDelete<AdaptStatsHistory>(*(this + 22));
  DgnDelete<NeuralNet>(*(this + 46));
  v2 = *(this + 24);
  if (v2)
  {
    DgnSharedMemSet::unrefDSMEx(v2, *(this + 50));
  }

  DgnArray<BandwidthTransform>::releaseAll(this + 352);
  DgnArray<SigProcDescriptor>::releaseAll(this + 336);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 280);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 264);
  DgnArray<DgnString>::releaseAll(this + 248);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 224);
  FileHistory::~FileHistory((this + 152));
  PhnMgr::~PhnMgr((this + 80));
}

MulTable *DgnDelete<MulTable>(MulTable *result)
{
  if (result)
  {
    MulTable::~MulTable(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnDelete<Imelda>(void *result)
{
  if (result)
  {
    v1 = result;
    LinearTransform::~LinearTransform((result + 1));

    return MemChunkFree(v1, 0);
  }

  return result;
}

VarClassMgr *DgnDelete<VarClassMgr>(VarClassMgr *result)
{
  if (result)
  {
    VarClassMgr::~VarClassMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

PelMgr **DgnDelete<FmpeMgr>(PelMgr **result)
{
  if (result)
  {
    FmpeMgr::~FmpeMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnDelete<OnlineConstrainedTransAccMgr>(void *result)
{
  if (result)
  {
    v1 = result;
    DgnPrimArray<unsigned int>::~DgnPrimArray((result + 4));
    DgnPrimArray<unsigned int>::~DgnPrimArray((v1 + 2));

    return MemChunkFree(v1, 0);
  }

  return result;
}

PicMgr *DgnDelete<PicMgr>(PicMgr *result)
{
  if (result)
  {
    PicMgr::~PicMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

PelMgr *DgnDelete<PelMgr>(PelMgr *result)
{
  if (result)
  {
    PelMgr::~PelMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

GenoneClassTree *DgnDelete<GenoneClassTree>(GenoneClassTree *result)
{
  if (result)
  {
    GenoneClassTree::~GenoneClassTree(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

SigProcDescriptor *DgnDelete<SigProcDescriptor>(SigProcDescriptor *result)
{
  if (result)
  {
    SigProcDescriptor::~SigProcDescriptor(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

Lookahead *DgnDelete<Lookahead>(Lookahead *result)
{
  if (result)
  {
    Lookahead::~Lookahead(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

AdaptStatsHistory *DgnDelete<AdaptStatsHistory>(AdaptStatsHistory *result)
{
  if (result)
  {
    AdaptStatsHistory::~AdaptStatsHistory(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

NeuralNet *DgnDelete<NeuralNet>(NeuralNet *result)
{
  if (result)
  {
    NeuralNet::~NeuralNet(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void User::printSize(User *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 273);
  if (v120)
  {
    v13 = v119;
  }

  else
  {
    v13 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26287FEB9, a3, &unk_26287FEB9, v13);
  DgnString::~DgnString(&v119);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26287FEB9);
  v15 = *this;
  if (*this)
  {
    v118 = 0;
    v119 = 0;
    v16 = (a3 + 1);
    v117 = 0;
    EnvMgr::printSize(v15, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  else
  {
    v16 = (a3 + 1);
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v17 = 4;
  }

  else
  {
    v17 = 8;
  }

  v18 = (34 - a3);
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 274);
  if (v120)
  {
    v20 = v119;
  }

  else
  {
    v20 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v20, v17, v17, 0);
  DgnString::~DgnString(&v119);
  *a4 += v17;
  *a5 += v17;
  v21 = *(this + 1);
  if (v21)
  {
    v118 = 0;
    v119 = 0;
    v117 = 0;
    MulTable::printSize(v21, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 276);
  if (v120)
  {
    v24 = v119;
  }

  else
  {
    v24 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v24, v22, v22, 0);
  DgnString::~DgnString(&v119);
  *a4 += v22;
  *a5 += v22;
  v25 = *(this + 2);
  if (v25)
  {
    v118 = 0;
    v119 = 0;
    v117 = 0;
    Imelda::printSize(v25, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v26 = 4;
  }

  else
  {
    v26 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 277);
  if (v120)
  {
    v28 = v119;
  }

  else
  {
    v28 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v28, v26, v26, 0);
  DgnString::~DgnString(&v119);
  *a4 += v26;
  *a5 += v26;
  v29 = *(this + 3);
  if (v29)
  {
    v118 = 0;
    v119 = 0;
    v117 = 0;
    VarClassMgr::printSize(v29, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 4;
  }

  else
  {
    v30 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 279);
  if (v120)
  {
    v32 = v119;
  }

  else
  {
    v32 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v32, v30, v30, 0);
  DgnString::~DgnString(&v119);
  *a4 += v30;
  *a5 += v30;
  v33 = *(this + 4);
  if (v33)
  {
    v118 = 0;
    v119 = 0;
    v117 = 0;
    FmpeMgr::printSize(v33, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 4;
  }

  else
  {
    v34 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 280);
  if (v120)
  {
    v36 = v119;
  }

  else
  {
    v36 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v36, v34, v34, 0);
  DgnString::~DgnString(&v119);
  *a4 += v34;
  *a5 += v34;
  v37 = *(this + 5);
  if (v37)
  {
    v118 = 0;
    v119 = 0;
    v117 = 0;
    OnlineConstrainedTransAccMgr::printSize(v37, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 282);
  if (v120)
  {
    v40 = v119;
  }

  else
  {
    v40 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v40, v38, v38, 0);
  DgnString::~DgnString(&v119);
  *a4 += v38;
  *a5 += v38;
  v41 = *(this + 6);
  if (v41)
  {
    v118 = 0;
    v119 = 0;
    v117 = 0;
    PicMgr::printSize(v41, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 4;
  }

  else
  {
    v42 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 283);
  if (v120)
  {
    v44 = v119;
  }

  else
  {
    v44 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v44, v42, v42, 0);
  DgnString::~DgnString(&v119);
  *a4 += v42;
  *a5 += v42;
  v45 = *(this + 7);
  if (v45)
  {
    v118 = 0;
    v119 = 0;
    v117 = 0;
    PelMgr::printSize(v45, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 4;
  }

  else
  {
    v46 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 284);
  if (v120)
  {
    v48 = v119;
  }

  else
  {
    v48 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v48, v46, v46, 0);
  DgnString::~DgnString(&v119);
  *a4 += v46;
  *a5 += v46;
  v49 = *(this + 8);
  if (v49)
  {
    v118 = 0;
    v119 = 0;
    v117 = 0;
    GenoneClassTree::printSize(v49, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v50 = 4;
  }

  else
  {
    v50 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 285);
  if (v120)
  {
    v52 = v119;
  }

  else
  {
    v52 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v52, v50, v50, 0);
  DgnString::~DgnString(&v119);
  *a4 += v50;
  *a5 += v50;
  v53 = *(this + 9);
  if (v53)
  {
    v118 = 0;
    v119 = 0;
    v117 = 0;
    SigProcDescriptor::printSize(v53, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v54 = 4;
  }

  else
  {
    v54 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 287);
  if (v120)
  {
    v56 = v119;
  }

  else
  {
    v56 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v56, v54, v54, 0);
  DgnString::~DgnString(&v119);
  *a4 += v54;
  *a5 += v54;
  v118 = 0;
  v119 = 0;
  v117 = 0;
  PhnMgr::printSize((this + 80), 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
  *a4 += v119;
  *a5 += v118;
  *a6 += v117;
  v57 = *(this + 18);
  if (v57)
  {
    v118 = 0;
    v119 = 0;
    v117 = 0;
    Lookahead::printSize(v57, 0xFFFFFFFFLL, v16, &v119, &v118, &v117);
    *a4 += v119;
    *a5 += v118;
    *a6 += v117;
  }

  v116 = a3;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 4;
  }

  else
  {
    v58 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 290);
  if (v120)
  {
    v60 = v119;
  }

  else
  {
    v60 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v16, &unk_26287FEB9, (34 - a3), (34 - a3), v60, v58, v58, 0);
  DgnString::~DgnString(&v119);
  *a4 += v58;
  *a5 += v58;
  v61 = sizeObject(this + 152, 0);
  v62 = sizeObject(this + 152, 1);
  v63 = sizeObject(this + 152, 3);
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 292);
  if (v120)
  {
    v65 = v119;
  }

  else
  {
    v65 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v16, &unk_26287FEB9, v18, v18, v65, v61, v62, v63);
  DgnString::~DgnString(&v119);
  *a4 += v61;
  *a5 += v62;
  *a6 += v63;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v66 = 4;
  }

  else
  {
    v66 = 8;
  }

  if (*(this + 22))
  {
    v67 = sizeObject() + v66;
    if (gShadowDiagnosticShowIdealizedObjectSizes)
    {
      v66 = 4;
    }

    else
    {
      v66 = 8;
    }

    if (*(this + 22) && (v66 += sizeObject(), *(this + 22)))
    {
      v68 = sizeObject();
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    v68 = 0;
    v67 = v66;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 294);
  if (v120)
  {
    v70 = v119;
  }

  else
  {
    v70 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v69, v16, &unk_26287FEB9, v18, v18, v70, v67, v66, v68);
  DgnString::~DgnString(&v119);
  *a4 += v67;
  *a5 += v66;
  *a6 += v68;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 295);
  if (v120)
  {
    v72 = v119;
  }

  else
  {
    v72 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v16, &unk_26287FEB9, v18, v18, v72, 2, 2, 0);
  DgnString::~DgnString(&v119);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 297);
  if (v120)
  {
    v74 = v119;
  }

  else
  {
    v74 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v16, &unk_26287FEB9, v18, v18, v74, 1, 1, 0);
  DgnString::~DgnString(&v119);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v75 = 4;
  }

  else
  {
    v75 = 8;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 298);
  if (v120)
  {
    v77 = v119;
  }

  else
  {
    v77 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v16, &unk_26287FEB9, v18, v18, v77, v75, v75, 0);
  DgnString::~DgnString(&v119);
  *a4 += v75;
  *a5 += v75;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 299);
  if (v120)
  {
    v79 = v119;
  }

  else
  {
    v79 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v78, v16, &unk_26287FEB9, v18, v18, v79, 4, 4, 0);
  DgnString::~DgnString(&v119);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 300);
  if (v120)
  {
    v81 = v119;
  }

  else
  {
    v81 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v16, &unk_26287FEB9, v18, v18, v81, 4, 4, 0);
  DgnString::~DgnString(&v119);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 302);
  if (v120)
  {
    v83 = v119;
  }

  else
  {
    v83 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v16, &unk_26287FEB9, v18, v18, v83, 4, 4, 0);
  DgnString::~DgnString(&v119);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 304);
  if (v120)
  {
    v85 = v119;
  }

  else
  {
    v85 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v84, v16, &unk_26287FEB9, v18, v18, v85, 4, 4, 0);
  DgnString::~DgnString(&v119);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 306);
  if (v120)
  {
    v87 = v119;
  }

  else
  {
    v87 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v16, &unk_26287FEB9, v18, v18, v87, 4, 4, 0);
  DgnString::~DgnString(&v119);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v88 = 12;
  }

  else
  {
    v88 = 16;
  }

  v89 = *(this + 58);
  v90 = *(this + 59);
  if (v90 >= v89)
  {
    v91 = 0;
    if (v89 > 0)
    {
      v88 += 4 * (v89 - 1) + 4;
    }

    v92 = v88 + 4 * (v90 - v89);
  }

  else
  {
    v91 = 4 * v89;
    v92 = v88;
  }

  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 308);
  if (v120)
  {
    v94 = v119;
  }

  else
  {
    v94 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v16, &unk_26287FEB9, v18, v18, v94, v92, v88, v91);
  DgnString::~DgnString(&v119);
  *a4 += v92;
  *a5 += v88;
  *a6 += v91;
  v95 = sizeObject(this + 240, 0);
  v96 = sizeObject(this + 240, 1);
  v97 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 310);
  if (v120)
  {
    v99 = v119;
  }

  else
  {
    v99 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v16, &unk_26287FEB9, v18, v18, v99, v95, v96, v97);
  DgnString::~DgnString(&v119);
  *a4 += v95;
  *a5 += v96;
  *a6 += v97;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 312);
  if (v120)
  {
    v101 = v119;
  }

  else
  {
    v101 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v16, &unk_26287FEB9, v18, v18, v101, 4, 4, 0);
  DgnString::~DgnString(&v119);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 314);
  if (v120)
  {
    v103 = v119;
  }

  else
  {
    v103 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v16, &unk_26287FEB9, v18, v18, v103, 4, 4, 0);
  DgnString::~DgnString(&v119);
  *a4 += 4;
  *a5 += 4;
  v104 = sizeObject<SigProcDescriptor>(this + 336, 0);
  v105 = sizeObject<SigProcDescriptor>(this + 336, 1);
  v106 = sizeObject<SigProcDescriptor>(this + 336, 3);
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 316);
  if (v120)
  {
    v108 = v119;
  }

  else
  {
    v108 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v16, &unk_26287FEB9, v18, v18, v108, v104, v105, v106);
  DgnString::~DgnString(&v119);
  *a4 += v104;
  *a5 += v105;
  *a6 += v106;
  v109 = sizeObject<BandwidthTransform>(this + 352, 0);
  v110 = sizeObject<BandwidthTransform>(this + 352, 1);
  v111 = sizeObject<BandwidthTransform>(this + 352, 3);
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 318);
  if (v120)
  {
    v113 = v119;
  }

  else
  {
    v113 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v16, &unk_26287FEB9, v18, v18, v113, v109, v110, v111);
  DgnString::~DgnString(&v119);
  *a4 += v109;
  *a5 += v110;
  *a6 += v111;
  getShipObjectSizeDescription(&v119, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 319);
  if (v120)
  {
    v115 = v119;
  }

  else
  {
    v115 = &unk_26287FEB9;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v114, v116, &unk_26287FEB9, (35 - v116), (35 - v116), v115, *a4, *a5, *a6);
  DgnString::~DgnString(&v119);
}

void sub_2626724E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<SigProcDescriptor>(uint64_t a1, uint64_t a2)
{
  SigProcDescriptor::SigProcDescriptor(v11);
  v4 = sizeObject(v11, 2);
  if (a2 == 3)
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

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 344 * v7 - 344;
        do
        {
          v5 += sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 344;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  SigProcDescriptor::~SigProcDescriptor(v11);
  return v5;
}

void sub_262672654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  SigProcDescriptor::~SigProcDescriptor(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<BandwidthTransform>(uint64_t a1, int a2)
{
  LinearTransform::LinearTransform(v12);
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
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

    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v6 = v4;
      v7 = *(a1 + 8);
      if (v7 >= 1)
      {
        v8 = v7 + 1;
        v9 = 80 * v7 - 80;
        do
        {
          v5 += sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 80;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  LinearTransform::~LinearTransform(v12);
  return v5;
}

void User::saveUser(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, ProgressCallbackHandler *a6)
{
  v31 = 0u;
  v32 = 0u;
  SnapTime::recordTime(&v31, 1, 1, 1, 1);
  LoadSaveTracker::LoadSaveTracker(&v30);
  DFileProgressInfo::attachProgressHandler((a1 + 240), a6, v12);
  if (a4)
  {
    v13 = a4 != 2;
  }

  else if (*(a1 + 186) == 1)
  {
    v13 = *(*a1 + 264);
  }

  else
  {
    v13 = 0;
  }

  DFileOwner::DFileOwner(v29);
  *a3 = 1;
  v14 = DFile::openDFile(a2, 1, 3, v29);
  *a3 = 2;
  (*(*v14 + 96))(v14, a1 + 240);
  DFileProgressInfo::resetReportedInfo((a1 + 240));
  DFileChecksums::DFileChecksums(v28);
  AdaptStatsHistory::saveASB(*(a1 + 176), v14, v28, v13 & 1, a5);
  EnvMgr::saveEnvMgr(*a1, v14, v28, v13 & 1, a5);
  PhnMgr::savePhnMgr((a1 + 80), v14, v28, v13 & 1, a5);
  MulTable::saveMulTable(*(a1 + 8), v14, v28, v13 & 1, a5);
  v15 = *(a1 + 144);
  if (v15)
  {
    Lookahead::saveLookahead(v15, v14, v28, v13 & 1, a5);
  }

  SigProcDescriptor::saveSigProcDescriptor(*(a1 + 72), v14, v28, v13 & 1, a5);
  if (*(a1 + 360))
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      v26.i32[0] = 2;
      v26.i32[1] = v18;
      DFile::pushCurrentSubDirComponent(v14, &v26);
      SigProcDescriptor::saveSigProcDescriptor((*(a1 + 336) + v17), v14, v28, v13 & 1, a5);
      BandwidthTransform::saveBandwidthTransform((*(a1 + 352) + v16), v14, v28, v13 & 1, a5);
      DFile::popCurrentSubDirComponent(v14);
      ++v18;
      v17 += 344;
      v16 += 80;
    }

    while (v18 < *(a1 + 360));
  }

  v19 = *(a1 + 368);
  if (v19)
  {
    NeuralNet::saveNeuralNet(v19, v14, v28, v13 & 1, a5);
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    Imelda::saveImelda(v20, v14, v28, v13 & 1, a5);
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    FmpeMgr::saveFmpeModel(v21, v14, v28, v13 & 1, a5);
  }

  v22 = *(a1 + 40);
  if (v22)
  {
    OnlineConstrainedTransAccMgr::saveOnlineConstrainedTransAcc(v22, v14, v28, v13 & 1, a5);
  }

  v23 = *(a1 + 24);
  if (v23)
  {
    VarClassMgr::saveVarClassMgr(v23, v14, v28, v13 & 1, a5);
  }

  PelMgr::savePelMgr(*(a1 + 56), v14, v28, v13 & 1, a5);
  PicMgr::savePicMgr(*(a1 + 48), v14, v28, v13 & 1, a5);
  GenoneClassTree::saveGenoneClassTree(*(a1 + 64), v14, v28, v13 & 1, a5);
  if ((v13 & 1) == 0)
  {
    if (*(a1 + 232))
    {
      User::saveChecksums(a1, v14, v28, a5);
    }

    v24 = OpenAndWriteMrecHeader(v14, 0x63u, 0, "MRUCH!? ", 19, 2);
    v26.i32[0] = 0;
    writeObject(v24, v28, &v26);
    writeObjectChecksum(v24, v26.i32);
    DgnDelete<DgnStream>(v24);
  }

  v26 = 0u;
  v27 = 0u;
  SnapTime::recordTime(&v26, 1, 1, 1, 1);
  v26 = vsubq_s64(v26, v31);
  v27 = vsubq_s64(v27, v32);
  FileHistory::addEntryWithElapsedTime((a1 + 152), " saveUser time: ", &v26);
  FileHistory::saveFileHistory((a1 + 152), v14, v13 & 1);
  DFileOwner::setRemoveFileOnDestruction(v29, 0);
  *a3 = 0;
  DFileChecksums::~DFileChecksums(v28);
  DFileOwner::~DFileOwner(v29, v25);
  LoadSaveTracker::~LoadSaveTracker(&v30);
}

void sub_262672B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  DFileChecksums::~DFileChecksums(&a13);
  DFileOwner::~DFileOwner(&a16, v22);
  LoadSaveTracker::~LoadSaveTracker(&a21);
  _Unwind_Resume(a1);
}

void (***User::saveChecksums(User *this, DFile *a2, DFileChecksums *a3, uint64_t a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x12u, a4, "MRCXM!? ", 15, 3);
  v10 = 0;
  writeObject(v7, this + 54, &v10);
  writeObject<unsigned int>(v7, this + 224, &v10);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 18, v10);
  return DgnDelete<DgnStream>(v7);
}

OnDemandPelScorer *User::newPelScorer(User *this, int a2, double a3, BOOL a4, double a5, char *a6, char *a7, int a8, int a9)
{
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  v16 = *(*(this + 7) + 620);
  if (v16)
  {
    v17 = a9 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v29 = 0;
    v20 = realloc_array(0, &v29, 4 * v16, 0, 0, 1);
    v27 = v29;
    LODWORD(v28) = v16;
    HIDWORD(v28) = v20 >> 2;
    DgnSplitStringParValueIntoUintArray("(Search|PrefiltererBuild)HierScorerBeamList", "recognizer configuration", a6, 3000, 0, 0xBB8u, &v27);
    v21 = *(*(this + 7) + 620);
    if (HIDWORD(v26) < v21)
    {
      v29 = 0;
      HIDWORD(v26) = realloc_array(v25, &v29, 4 * v21, 4 * v26, 4 * v26, 1) >> 2;
      v25 = v29;
    }

    LODWORD(v26) = v21;
    DgnSplitStringParValueIntoUintArray("(Search|PrefiltererBuild)HierScorerCutoffRatioList", "recognizer configuration", a7, 10, 0, 0x64u, &v25);
    LODWORD(v16) = *(*(this + 7) + 620);
  }

  if (v16)
  {
    v22 = a9 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = MemChunkAlloc(0x298uLL, 0);
    OnDemandPelScorer::OnDemandPelScorer(v23, *(this + 7), *(this + 8), *(this + 3), *(this + 4), *(this + 46), *(this + 2), a2, a3, a5, a4);
  }

  else
  {
    v23 = MemChunkAlloc(0x320uLL, 0);
    HScorer::HScorer(v23, *(this + 7), *(this + 8), *(this + 3), *(this + 4), *(this + 46), *(this + 2), a2, a3, a5, a4, &v27, &v25, a8);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return v23;
}

void sub_262672E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

void User::decrementAdapterCount(uint64_t this)
{
  v2 = *(this + 204);
  if (!v2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/user.cpp", 1488, "user/user", 3, "%u", *(this + 184));
    v2 = *(this + 204);
  }

  *(this + 204) = v2 - 1;
}

void *DgnArray<SigProcDescriptor>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 344 * v2 - 344;
    do
    {
      SigProcDescriptor::~SigProcDescriptor((*a1 + v3));
      v3 -= 344;
    }

    while (v3 != -344);
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

void *DgnArray<BandwidthTransform>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 80 * v2 - 72;
    do
    {
      LinearTransform::~LinearTransform((*a1 + v3));
      v3 -= 80;
    }

    while (v3 != -72);
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

void VarClassMgr::~VarClassMgr(VarClassMgr *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnArray<LinearTransform>::releaseAll(this + 16);
}

void PicMgr::~PicMgr(PicMgr *this)
{
  BitArray::~BitArray((this + 216));
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 200);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 184);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 168);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 152);
  DgnArray<DgnArray<ParseToken>>::releaseAll(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 72);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 56);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 16);
}

void *DgnIOwnArray<DgnSharedMemStream *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnStream>(*(*a1 + v3));
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

void *TAllocator::clear(TAllocator *this)
{
  result = *(this + 4);
  if (result)
  {
    do
    {
      v3 = *result;
      MEMORY[0x26672B190]();
      result = v3;
    }

    while (v3);
  }

  *this = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  return result;
}

void TAllocator::TAllocator(TAllocator *this, uint64_t a2)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
}

void *TAllocator::allocate(TAllocator *this, uint64_t a2)
{
  v3 = (a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v5 = this + 16;
  result = *(this + 2);
  if (*(v5 + 1) - result < v3)
  {
    if (v3 + 8 <= *(this + 1))
    {
      v6 = *(this + 1);
    }

    else
    {
      v6 = v3 + 8;
    }

    *this += v6;
    operator new[]();
  }

  *(this + 2) = result + v3;
  return result;
}

unint64_t StartupConfidenceParamSpecMgr(void)
{
  v69 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v69, "ConfidenceEnableWordLevel", &byte_262899963, &byte_262899963, &sConfidenceEnableWordLevelBoolHistory);
  v68 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v68, "ConfidenceEnableUttLevel", &byte_262899963, &byte_262899963, &sConfidenceEnableUttLevelBoolHistory);
  v66 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v66, "ConfidenceEnableForAllNBest", &byte_262899963, &byte_262899963, &sConfidenceEnableForAllNBestBoolHistory);
  v65 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v65, "ConfidenceUttNBestHighThresh", &byte_262899963, &byte_262899963, &sConfidenceUttNBestHighThreshDoubleHistory);
  v64 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v64, "ConfidenceUttNBestLowThresh", &byte_262899963, &byte_262899963, &sConfidenceUttNBestLowThreshDoubleHistory);
  v74 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v74, "ConfidenceWordProbConstantTerm", &byte_262899963, &byte_262899963, &sConfidenceWordProbConstantTermDoubleHistory);
  v62 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v62, "ConfidenceUttProbConstantTerm", &byte_262899963, &byte_262899963, &sConfidenceUttProbConstantTermDoubleHistory);
  v67 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v67, "ConfidenceUttProbTotalLMScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbTotalLMScoreFactorDoubleHistory);
  v60 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v60, "ConfidenceUttProbAverageLMScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbAverageLMScoreFactorDoubleHistory);
  v63 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v63, "ConfidenceUttProbUttAverageAMinusBScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbUttAverageAMinusBScoreFactorDoubleHistory);
  v61 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v61, "ConfidenceUttProbNBestWordAverageFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbNBestWordAverageFactorDoubleHistory);
  v59 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v59, "ConfidenceUttProbNBestMaxFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbNBestMaxFactorDoubleHistory);
  v57 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v57, "ConfidenceUttProbNBestMinFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbNBestMinFactorDoubleHistory);
  v53 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v53, "ConfidenceUttProbNBestHighCountFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbNBestHighCountFactorDoubleHistory);
  v51 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v51, "ConfidenceUttProbNBestLowCountFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbNBestLowCountFactorDoubleHistory);
  v49 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v49, "ConfidenceUttProbAverageActiveNodeCountFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbAverageActiveNodeCountFactorDoubleHistory);
  v50 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v50, "ConfidenceUttProbMaxWordsEndingFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbMaxWordsEndingFactorDoubleHistory);
  v47 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v47, "ConfidenceUttProbAverageDurationFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbAverageDurationFactorDoubleHistory);
  v48 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v48, "ConfidenceUttProbLogWordCountFactor", &byte_262899963, &byte_262899963, &sConfidenceUttProbLogWordCountFactorDoubleHistory);
  v71 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v71, "ConfidenceWordProbLeftContextIndicator2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLeftContextIndicator2FactorDoubleHistory);
  v70 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v70, "ConfidenceWordProbLeftContextIndicator1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLeftContextIndicator1FactorDoubleHistory);
  v73 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v73, "ConfidenceWordProbRightContextIndicator1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbRightContextIndicator1FactorDoubleHistory);
  v72 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v72, "ConfidenceWordProbRightContextIndicator2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbRightContextIndicator2FactorDoubleHistory);
  v58 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v58, "ConfidenceWordProbDurationFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbDurationFactorDoubleHistory);
  v56 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v56, "ConfidenceWordProbDurationLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbDurationLCntx2FactorDoubleHistory);
  v55 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v55, "ConfidenceWordProbDurationLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbDurationLCntx1FactorDoubleHistory);
  v54 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v54, "ConfidenceWordProbDurationRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbDurationRCntx1FactorDoubleHistory);
  v52 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v52, "ConfidenceWordProbDurationRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbDurationRCntx2FactorDoubleHistory);
  v46 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v46, "ConfidenceWordProbAverageActiveNodeCountFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageActiveNodeCountFactorDoubleHistory);
  v45 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v45, "ConfidenceWordProbAverageActiveNodeCountLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageActiveNodeCountLCntx2FactorDoubleHistory);
  v44 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v44, "ConfidenceWordProbAverageActiveNodeCountLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageActiveNodeCountLCntx1FactorDoubleHistory);
  v43 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v43, "ConfidenceWordProbAverageActiveNodeCountRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageActiveNodeCountRCntx1FactorDoubleHistory);
  v42 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v42, "ConfidenceWordProbAverageActiveNodeCountRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageActiveNodeCountRCntx2FactorDoubleHistory);
  v28 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v28, "ConfidenceWordProbAverageAMinusBScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAMinusBScoreFactorDoubleHistory);
  v26 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v26, "ConfidenceWordProbAverageAMinusBScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAMinusBScoreLCntx2FactorDoubleHistory);
  v24 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v24, "ConfidenceWordProbAverageAMinusBScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAMinusBScoreLCntx1FactorDoubleHistory);
  v23 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v23, "ConfidenceWordProbAverageAMinusBScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAMinusBScoreRCntx1FactorDoubleHistory);
  v22 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v22, "ConfidenceWordProbAverageAMinusBScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAMinusBScoreRCntx2FactorDoubleHistory);
  v41 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v41, "ConfidenceWordProbLMScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLMScoreFactorDoubleHistory);
  v40 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v40, "ConfidenceWordProbLMScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLMScoreLCntx2FactorDoubleHistory);
  v37 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v37, "ConfidenceWordProbLMScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLMScoreLCntx1FactorDoubleHistory);
  v36 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v36, "ConfidenceWordProbLMScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLMScoreRCntx1FactorDoubleHistory);
  v33 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v33, "ConfidenceWordProbLMScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLMScoreRCntx2FactorDoubleHistory);
  v39 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v39, "ConfidenceWordProbNBestScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbNBestScoreFactorDoubleHistory);
  v38 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v38, "ConfidenceWordProbNBestScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbNBestScoreLCntx2FactorDoubleHistory);
  v35 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v35, "ConfidenceWordProbNBestScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbNBestScoreLCntx1FactorDoubleHistory);
  v34 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v34, "ConfidenceWordProbNBestScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbNBestScoreRCntx1FactorDoubleHistory);
  v31 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v31, "ConfidenceWordProbNBestScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbNBestScoreRCntx2FactorDoubleHistory);
  v32 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v32, "ConfidenceWordProbWordsEndingCountFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbWordsEndingCountFactorDoubleHistory);
  v30 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v30, "ConfidenceWordProbWordsEndingCountLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbWordsEndingCountLCntx2FactorDoubleHistory);
  v29 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v29, "ConfidenceWordProbWordsEndingCountLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbWordsEndingCountLCntx1FactorDoubleHistory);
  v27 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v27, "ConfidenceWordProbWordsEndingCountRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbWordsEndingCountRCntx1FactorDoubleHistory);
  v25 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v25, "ConfidenceWordProbWordsEndingCountRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbWordsEndingCountRCntx2FactorDoubleHistory);
  v21 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v21, "ConfidenceWordProbAverageBestScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageBestScoreFactorDoubleHistory);
  v20 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v20, "ConfidenceWordProbAverageBestScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageBestScoreLCntx2FactorDoubleHistory);
  v19 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v19, "ConfidenceWordProbAverageBestScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageBestScoreLCntx1FactorDoubleHistory);
  v18 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v18, "ConfidenceWordProbAverageBestScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageBestScoreRCntx1FactorDoubleHistory);
  v17 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v17, "ConfidenceWordProbAverageBestScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageBestScoreRCntx2FactorDoubleHistory);
  v11 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v11, "ConfidenceWordProbAcousticScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAcousticScoreFactorDoubleHistory);
  v0 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v0, "ConfidenceWordProbAcousticScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAcousticScoreLCntx2FactorDoubleHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v1, "ConfidenceWordProbAcousticScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAcousticScoreLCntx1FactorDoubleHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v2, "ConfidenceWordProbAcousticScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAcousticScoreRCntx1FactorDoubleHistory);
  v3 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v3, "ConfidenceWordProbAcousticScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAcousticScoreRCntx2FactorDoubleHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v4, "ConfidenceWordProbAverageAcousticScoreFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAcousticScoreFactorDoubleHistory);
  v5 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v5, "ConfidenceWordProbAverageAcousticScoreLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAcousticScoreLCntx2FactorDoubleHistory);
  v6 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v6, "ConfidenceWordProbAverageAcousticScoreLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAcousticScoreLCntx1FactorDoubleHistory);
  v7 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v7, "ConfidenceWordProbAverageAcousticScoreRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAcousticScoreRCntx1FactorDoubleHistory);
  v8 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v8, "ConfidenceWordProbAverageAcousticScoreRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbAverageAcousticScoreRCntx2FactorDoubleHistory);
  v16 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v16, "ConfidenceWordProbLogWordCountFactor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLogWordCountFactorDoubleHistory);
  v15 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v15, "ConfidenceWordProbLogWordCountLCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLogWordCountLCntx2FactorDoubleHistory);
  v14 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v14, "ConfidenceWordProbLogWordCountLCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLogWordCountLCntx1FactorDoubleHistory);
  v13 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v13, "ConfidenceWordProbLogWordCountRCntx1Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLogWordCountRCntx1FactorDoubleHistory);
  v12 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v12, "ConfidenceWordProbLogWordCountRCntx2Factor", &byte_262899963, &byte_262899963, &sConfidenceWordProbLogWordCountRCntx2FactorDoubleHistory);
  ParamSpecMgr::addParam(qword_281051F80, v69);
  ParamSpecMgr::addParam(qword_281051F80, v68);
  ParamSpecMgr::addParam(qword_281051F80, v66);
  ParamSpecMgr::addParam(qword_281051F80, v65);
  ParamSpecMgr::addParam(qword_281051F80, v64);
  ParamSpecMgr::addParam(qword_281051F80, v49);
  ParamSpecMgr::addParam(qword_281051F80, v47);
  ParamSpecMgr::addParam(qword_281051F80, v60);
  ParamSpecMgr::addParam(qword_281051F80, v62);
  ParamSpecMgr::addParam(qword_281051F80, v48);
  ParamSpecMgr::addParam(qword_281051F80, v50);
  ParamSpecMgr::addParam(qword_281051F80, v53);
  ParamSpecMgr::addParam(qword_281051F80, v51);
  ParamSpecMgr::addParam(qword_281051F80, v59);
  ParamSpecMgr::addParam(qword_281051F80, v57);
  ParamSpecMgr::addParam(qword_281051F80, v61);
  ParamSpecMgr::addParam(qword_281051F80, v67);
  ParamSpecMgr::addParam(qword_281051F80, v63);
  ParamSpecMgr::addParam(qword_281051F80, v11);
  ParamSpecMgr::addParam(qword_281051F80, v1);
  ParamSpecMgr::addParam(qword_281051F80, v0);
  ParamSpecMgr::addParam(qword_281051F80, v2);
  ParamSpecMgr::addParam(qword_281051F80, v3);
  ParamSpecMgr::addParam(qword_281051F80, v28);
  ParamSpecMgr::addParam(qword_281051F80, v24);
  ParamSpecMgr::addParam(qword_281051F80, v26);
  ParamSpecMgr::addParam(qword_281051F80, v23);
  ParamSpecMgr::addParam(qword_281051F80, v22);
  ParamSpecMgr::addParam(qword_281051F80, v4);
  ParamSpecMgr::addParam(qword_281051F80, v6);
  ParamSpecMgr::addParam(qword_281051F80, v5);
  ParamSpecMgr::addParam(qword_281051F80, v7);
  ParamSpecMgr::addParam(qword_281051F80, v8);
  ParamSpecMgr::addParam(qword_281051F80, v46);
  ParamSpecMgr::addParam(qword_281051F80, v44);
  ParamSpecMgr::addParam(qword_281051F80, v45);
  ParamSpecMgr::addParam(qword_281051F80, v43);
  ParamSpecMgr::addParam(qword_281051F80, v42);
  ParamSpecMgr::addParam(qword_281051F80, v21);
  ParamSpecMgr::addParam(qword_281051F80, v19);
  ParamSpecMgr::addParam(qword_281051F80, v20);
  ParamSpecMgr::addParam(qword_281051F80, v18);
  ParamSpecMgr::addParam(qword_281051F80, v17);
  ParamSpecMgr::addParam(qword_281051F80, v74);
  ParamSpecMgr::addParam(qword_281051F80, v58);
  ParamSpecMgr::addParam(qword_281051F80, v55);
  ParamSpecMgr::addParam(qword_281051F80, v56);
  ParamSpecMgr::addParam(qword_281051F80, v54);
  ParamSpecMgr::addParam(qword_281051F80, v52);
  ParamSpecMgr::addParam(qword_281051F80, v41);
  ParamSpecMgr::addParam(qword_281051F80, v37);
  ParamSpecMgr::addParam(qword_281051F80, v40);
  ParamSpecMgr::addParam(qword_281051F80, v36);
  ParamSpecMgr::addParam(qword_281051F80, v33);
  ParamSpecMgr::addParam(qword_281051F80, v70);
  ParamSpecMgr::addParam(qword_281051F80, v71);
  ParamSpecMgr::addParam(qword_281051F80, v16);
  ParamSpecMgr::addParam(qword_281051F80, v14);
  ParamSpecMgr::addParam(qword_281051F80, v15);
  ParamSpecMgr::addParam(qword_281051F80, v13);
  ParamSpecMgr::addParam(qword_281051F80, v12);
  ParamSpecMgr::addParam(qword_281051F80, v39);
  ParamSpecMgr::addParam(qword_281051F80, v35);
  ParamSpecMgr::addParam(qword_281051F80, v38);
  ParamSpecMgr::addParam(qword_281051F80, v34);
  ParamSpecMgr::addParam(qword_281051F80, v31);
  ParamSpecMgr::addParam(qword_281051F80, v73);
  ParamSpecMgr::addParam(qword_281051F80, v72);
  ParamSpecMgr::addParam(qword_281051F80, v32);
  ParamSpecMgr::addParam(qword_281051F80, v29);
  ParamSpecMgr::addParam(qword_281051F80, v30);
  ParamSpecMgr::addParam(qword_281051F80, v27);
  ParamSpecMgr::addParam(qword_281051F80, v25);
  v9 = qword_281051F80;

  return ParamSpecMgr::sortParams(v9);
}

_DWORD *ConfidenceParamSet::ConfidenceParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287526980;
  ConfidenceParamSet::setDefaults(a1);
  return a1;
}

void sub_2626742DC(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t ConfidenceParamSet::ConfidenceParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287526980;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = *(a2 + 464);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = *(a2 + 544);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 592) = *(a2 + 592);
  return a1;
}

void ConfidenceParamSet::setDefaults(ConfidenceParamSet *this)
{
  *(this + 40) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F80, 1, 0, 0);
  *(this + 41) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F80, 2, 0, 0);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F80, 3, 0, 0);
  *(this + 6) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 4, 0, 0);
  *(this + 7) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 5, 0, 0);
  *(this + 8) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 6, 0, 0);
  *(this + 9) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 7, 0, 0);
  *(this + 10) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 8, 0, 0);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 9, 0, 0);
  *(this + 12) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 10, 0, 0);
  *(this + 13) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 11, 0, 0);
  *(this + 14) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 12, 0, 0);
  *(this + 15) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 13, 0, 0);
  *(this + 16) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 14, 0, 0);
  *(this + 17) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 15, 0, 0);
  *(this + 18) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 16, 0, 0);
  *(this + 19) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 17, 0, 0);
  *(this + 20) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 18, 0, 0);
  *(this + 21) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 19, 0, 0);
  *(this + 22) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 20, 0, 0);
  *(this + 23) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 21, 0, 0);
  *(this + 24) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 22, 0, 0);
  *(this + 25) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 23, 0, 0);
  *(this + 26) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 24, 0, 0);
  *(this + 27) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 25, 0, 0);
  *(this + 28) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 26, 0, 0);
  *(this + 29) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 27, 0, 0);
  *(this + 30) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 28, 0, 0);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 29, 0, 0);
  *(this + 32) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 30, 0, 0);
  *(this + 33) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 31, 0, 0);
  *(this + 34) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 32, 0, 0);
  *(this + 35) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 33, 0, 0);
  *(this + 36) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 34, 0, 0);
  *(this + 37) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 35, 0, 0);
  *(this + 38) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 36, 0, 0);
  *(this + 39) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 37, 0, 0);
  *(this + 40) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 38, 0, 0);
  *(this + 41) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 39, 0, 0);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 40, 0, 0);
  *(this + 43) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 41, 0, 0);
  *(this + 44) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 42, 0, 0);
  *(this + 45) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 43, 0, 0);
  *(this + 46) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 44, 0, 0);
  *(this + 47) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 45, 0, 0);
  *(this + 48) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 46, 0, 0);
  *(this + 49) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 47, 0, 0);
  *(this + 50) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 48, 0, 0);
  *(this + 51) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 49, 0, 0);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 50, 0, 0);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 51, 0, 0);
  *(this + 54) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 52, 0, 0);
  *(this + 55) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 53, 0, 0);
  *(this + 56) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 54, 0, 0);
  *(this + 57) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 55, 0, 0);
  *(this + 58) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 56, 0, 0);
  *(this + 59) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 57, 0, 0);
  *(this + 60) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 58, 0, 0);
  *(this + 61) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 59, 0, 0);
  *(this + 62) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 60, 0, 0);
  *(this + 63) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 61, 0, 0);
  *(this + 64) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 62, 0, 0);
  *(this + 65) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 63, 0, 0);
  *(this + 66) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 64, 0, 0);
  *(this + 67) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 65, 0, 0);
  *(this + 68) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 66, 0, 0);
  *(this + 69) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 67, 0, 0);
  *(this + 70) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 68, 0, 0);
  *(this + 71) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 69, 0, 0);
  *(this + 72) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 70, 0, 0);
  *(this + 73) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 71, 0, 0);
  *(this + 74) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 72, 0, 0);
  *(this + 75) = ParamSpecMgr::ParamGetDefault_double(qword_281051F80, 73, 0, 0);
}

uint64_t ConfidenceParamSet::sizeObject(uint64_t a1, int a2)
{
  v3 = a2 != 3;
  v4 = sizeObject(a1 + 8, a2);
  v5 = 560;
  if (a2 == 3)
  {
    v5 = 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    return v4 + 16 * v3;
  }

  else
  {
    return ((a2 != 3) | (2 * (a2 != 3)) | v5) + v4 + 16 * v3;
  }
}

uint64_t ConfidenceParamSet::getBoolParameter(_BYTE *a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      if (a3 == 1)
      {
        v6 = qword_281051F80;
        v7 = 1;
        goto LABEL_89;
      }

      if (a3)
      {
        goto LABEL_60;
      }

      v3 = a1[40];
      return v3 & 1;
    case 2:
      if (a3 == 1)
      {
        v6 = qword_281051F80;
        v7 = 2;
        goto LABEL_89;
      }

      if (a3)
      {
        goto LABEL_60;
      }

      v3 = a1[41];
      return v3 & 1;
    case 3:
      if (a3 == 1)
      {
        v6 = qword_281051F80;
        v7 = 3;
LABEL_89:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v6, v7);
      }

      else
      {
        if (a3)
        {
LABEL_60:
          throwWrongQueryMode(a3, "BOOL");
          break;
        }

        v3 = a1[42];
      }

      return v3 & 1;
    case 4:
      v4 = 4;
      goto LABEL_83;
    case 5:
      v4 = 5;
      goto LABEL_83;
    case 6:
      v4 = 6;
      goto LABEL_83;
    case 7:
      v4 = 7;
      goto LABEL_83;
    case 8:
      v4 = 8;
      goto LABEL_83;
    case 9:
      v4 = 9;
      goto LABEL_83;
    case 10:
      v4 = 10;
      goto LABEL_83;
    case 11:
      v4 = 11;
      goto LABEL_83;
    case 12:
      v4 = 12;
      goto LABEL_83;
    case 13:
      v4 = 13;
      goto LABEL_83;
    case 14:
      v4 = 14;
      goto LABEL_83;
    case 15:
      v4 = 15;
      goto LABEL_83;
    case 16:
      v4 = 16;
      goto LABEL_83;
    case 17:
      v4 = 17;
      goto LABEL_83;
    case 18:
      v4 = 18;
      goto LABEL_83;
    case 19:
      v4 = 19;
      goto LABEL_83;
    case 20:
      v4 = 20;
      goto LABEL_83;
    case 21:
      v4 = 21;
      goto LABEL_83;
    case 22:
      v4 = 22;
      goto LABEL_83;
    case 23:
      v4 = 23;
      goto LABEL_83;
    case 24:
      v4 = 24;
      goto LABEL_83;
    case 25:
      v4 = 25;
      goto LABEL_83;
    case 26:
      v4 = 26;
      goto LABEL_83;
    case 27:
      v4 = 27;
      goto LABEL_83;
    case 28:
      v4 = 28;
      goto LABEL_83;
    case 29:
      v4 = 29;
      goto LABEL_83;
    case 30:
      v4 = 30;
      goto LABEL_83;
    case 31:
      v4 = 31;
      goto LABEL_83;
    case 32:
      v4 = 32;
      goto LABEL_83;
    case 33:
      v4 = 33;
      goto LABEL_83;
    case 34:
      v4 = 34;
      goto LABEL_83;
    case 35:
      v4 = 35;
      goto LABEL_83;
    case 36:
      v4 = 36;
      goto LABEL_83;
    case 37:
      v4 = 37;
      goto LABEL_83;
    case 38:
      v4 = 38;
      goto LABEL_83;
    case 39:
      v4 = 39;
      goto LABEL_83;
    case 40:
      v4 = 40;
      goto LABEL_83;
    case 41:
      v4 = 41;
      goto LABEL_83;
    case 42:
      v4 = 42;
      goto LABEL_83;
    case 43:
      v4 = 43;
      goto LABEL_83;
    case 44:
      v4 = 44;
      goto LABEL_83;
    case 45:
      v4 = 45;
      goto LABEL_83;
    case 46:
      v4 = 46;
      goto LABEL_83;
    case 47:
      v4 = 47;
      goto LABEL_83;
    case 48:
      v4 = 48;
      goto LABEL_83;
    case 49:
      v4 = 49;
      goto LABEL_83;
    case 50:
      v4 = 50;
      goto LABEL_83;
    case 51:
      v4 = 51;
      goto LABEL_83;
    case 52:
      v4 = 52;
      goto LABEL_83;
    case 53:
      v4 = 53;
      goto LABEL_83;
    case 54:
      v4 = 54;
      goto LABEL_83;
    case 55:
      v4 = 55;
      goto LABEL_83;
    case 56:
      v4 = 56;
      goto LABEL_83;
    case 57:
      v4 = 57;
      goto LABEL_83;
    case 58:
      v4 = 58;
      goto LABEL_83;
    case 59:
      v4 = 59;
      goto LABEL_83;
    case 60:
      v4 = 60;
      goto LABEL_83;
    case 61:
      v4 = 61;
      goto LABEL_83;
    case 62:
      v4 = 62;
      goto LABEL_83;
    case 63:
      v4 = 63;
      goto LABEL_83;
    case 64:
      v4 = 64;
      goto LABEL_83;
    case 65:
      v4 = 65;
      goto LABEL_83;
    case 66:
      v4 = 66;
      goto LABEL_83;
    case 67:
      v4 = 67;
      goto LABEL_83;
    case 68:
      v4 = 68;
      goto LABEL_83;
    case 69:
      v4 = 69;
      goto LABEL_83;
    case 70:
      v4 = 70;
      goto LABEL_83;
    case 71:
      v4 = 71;
      goto LABEL_83;
    case 72:
      v4 = 72;
      goto LABEL_83;
    case 73:
      v4 = 73;
LABEL_83:
      throwWrongTypeForParamId(v4, "double", "BOOL");
      break;
    default:
      throwWrongParamIdValue(a2, "BOOL");
      break;
  }

  v3 = 0;
  return v3 & 1;
}

uint64_t ConfidenceParamSet::getIntParameter(int a1, int a2)
{
  switch(a2)
  {
    case 1:
      v2 = "BOOL";
      v3 = 1;
      goto LABEL_76;
    case 2:
      v2 = "BOOL";
      v3 = 2;
      goto LABEL_76;
    case 3:
      v2 = "BOOL";
      v3 = 3;
      goto LABEL_76;
    case 4:
      v2 = "double";
      v3 = 4;
      goto LABEL_76;
    case 5:
      v2 = "double";
      v3 = 5;
      goto LABEL_76;
    case 6:
      v2 = "double";
      v3 = 6;
      goto LABEL_76;
    case 7:
      v2 = "double";
      v3 = 7;
      goto LABEL_76;
    case 8:
      v2 = "double";
      v3 = 8;
      goto LABEL_76;
    case 9:
      v2 = "double";
      v3 = 9;
      goto LABEL_76;
    case 10:
      v2 = "double";
      v3 = 10;
      goto LABEL_76;
    case 11:
      v2 = "double";
      v3 = 11;
      goto LABEL_76;
    case 12:
      v2 = "double";
      v3 = 12;
      goto LABEL_76;
    case 13:
      v2 = "double";
      v3 = 13;
      goto LABEL_76;
    case 14:
      v2 = "double";
      v3 = 14;
      goto LABEL_76;
    case 15:
      v2 = "double";
      v3 = 15;
      goto LABEL_76;
    case 16:
      v2 = "double";
      v3 = 16;
      goto LABEL_76;
    case 17:
      v2 = "double";
      v3 = 17;
      goto LABEL_76;
    case 18:
      v2 = "double";
      v3 = 18;
      goto LABEL_76;
    case 19:
      v2 = "double";
      v3 = 19;
      goto LABEL_76;
    case 20:
      v2 = "double";
      v3 = 20;
      goto LABEL_76;
    case 21:
      v2 = "double";
      v3 = 21;
      goto LABEL_76;
    case 22:
      v2 = "double";
      v3 = 22;
      goto LABEL_76;
    case 23:
      v2 = "double";
      v3 = 23;
      goto LABEL_76;
    case 24:
      v2 = "double";
      v3 = 24;
      goto LABEL_76;
    case 25:
      v2 = "double";
      v3 = 25;
      goto LABEL_76;
    case 26:
      v2 = "double";
      v3 = 26;
      goto LABEL_76;
    case 27:
      v2 = "double";
      v3 = 27;
      goto LABEL_76;
    case 28:
      v2 = "double";
      v3 = 28;
      goto LABEL_76;
    case 29:
      v2 = "double";
      v3 = 29;
      goto LABEL_76;
    case 30:
      v2 = "double";
      v3 = 30;
      goto LABEL_76;
    case 31:
      v2 = "double";
      v3 = 31;
      goto LABEL_76;
    case 32:
      v2 = "double";
      v3 = 32;
      goto LABEL_76;
    case 33:
      v2 = "double";
      v3 = 33;
      goto LABEL_76;
    case 34:
      v2 = "double";
      v3 = 34;
      goto LABEL_76;
    case 35:
      v2 = "double";
      v3 = 35;
      goto LABEL_76;
    case 36:
      v2 = "double";
      v3 = 36;
      goto LABEL_76;
    case 37:
      v2 = "double";
      v3 = 37;
      goto LABEL_76;
    case 38:
      v2 = "double";
      v3 = 38;
      goto LABEL_76;
    case 39:
      v2 = "double";
      v3 = 39;
      goto LABEL_76;
    case 40:
      v2 = "double";
      v3 = 40;
      goto LABEL_76;
    case 41:
      v2 = "double";
      v3 = 41;
      goto LABEL_76;
    case 42:
      v2 = "double";
      v3 = 42;
      goto LABEL_76;
    case 43:
      v2 = "double";
      v3 = 43;
      goto LABEL_76;
    case 44:
      v2 = "double";
      v3 = 44;
      goto LABEL_76;
    case 45:
      v2 = "double";
      v3 = 45;
      goto LABEL_76;
    case 46:
      v2 = "double";
      v3 = 46;
      goto LABEL_76;
    case 47:
      v2 = "double";
      v3 = 47;
      goto LABEL_76;
    case 48:
      v2 = "double";
      v3 = 48;
      goto LABEL_76;
    case 49:
      v2 = "double";
      v3 = 49;
      goto LABEL_76;
    case 50:
      v2 = "double";
      v3 = 50;
      goto LABEL_76;
    case 51:
      v2 = "double";
      v3 = 51;
      goto LABEL_76;
    case 52:
      v2 = "double";
      v3 = 52;
      goto LABEL_76;
    case 53:
      v2 = "double";
      v3 = 53;
      goto LABEL_76;
    case 54:
      v2 = "double";
      v3 = 54;
      goto LABEL_76;
    case 55:
      v2 = "double";
      v3 = 55;
      goto LABEL_76;
    case 56:
      v2 = "double";
      v3 = 56;
      goto LABEL_76;
    case 57:
      v2 = "double";
      v3 = 57;
      goto LABEL_76;
    case 58:
      v2 = "double";
      v3 = 58;
      goto LABEL_76;
    case 59:
      v2 = "double";
      v3 = 59;
      goto LABEL_76;
    case 60:
      v2 = "double";
      v3 = 60;
      goto LABEL_76;
    case 61:
      v2 = "double";
      v3 = 61;
      goto LABEL_76;
    case 62:
      v2 = "double";
      v3 = 62;
      goto LABEL_76;
    case 63:
      v2 = "double";
      v3 = 63;
      goto LABEL_76;
    case 64:
      v2 = "double";
      v3 = 64;
      goto LABEL_76;
    case 65:
      v2 = "double";
      v3 = 65;
      goto LABEL_76;
    case 66:
      v2 = "double";
      v3 = 66;
      goto LABEL_76;
    case 67:
      v2 = "double";
      v3 = 67;
      goto LABEL_76;
    case 68:
      v2 = "double";
      v3 = 68;
      goto LABEL_76;
    case 69:
      v2 = "double";
      v3 = 69;
      goto LABEL_76;
    case 70:
      v2 = "double";
      v3 = 70;
      goto LABEL_76;
    case 71:
      v2 = "double";
      v3 = 71;
      goto LABEL_76;
    case 72:
      v2 = "double";
      v3 = 72;
      goto LABEL_76;
    case 73:
      v2 = "double";
      v3 = 73;
LABEL_76:
      throwWrongTypeForParamId(v3, v2, "int");
      break;
    default:
      throwWrongParamIdValue(a2, "int");
      break;
  }

  return 0;
}

double ConfidenceParamSet::getDoubleParameter(double *a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      v3 = 1;
      goto LABEL_145;
    case 2:
      v3 = 2;
      goto LABEL_145;
    case 3:
      v3 = 3;
LABEL_145:
      throwWrongTypeForParamId(v3, "BOOL", "double");
      return 0.0;
    case 4:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[6];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 4;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 4;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 4;
      goto LABEL_498;
    case 5:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[7];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 5;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 5;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 5;
      goto LABEL_498;
    case 6:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[8];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 6;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 6;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 6;
      goto LABEL_498;
    case 7:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[9];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 7;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 7;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 7;
      goto LABEL_498;
    case 8:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[10];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 8;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 8;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 8;
      goto LABEL_498;
    case 9:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 9;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 9;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 9;
      goto LABEL_498;
    case 10:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[12];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 10;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 10;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 10;
      goto LABEL_498;
    case 11:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[13];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 11;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 11;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 11;
      goto LABEL_498;
    case 12:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[14];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 12;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 12;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 12;
      goto LABEL_498;
    case 13:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[15];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 13;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 13;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 13;
      goto LABEL_498;
    case 14:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[16];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 14;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 14;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 14;
      goto LABEL_498;
    case 15:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[17];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 15;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 15;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 15;
      goto LABEL_498;
    case 16:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[18];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 16;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 16;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 16;
      goto LABEL_498;
    case 17:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[19];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 17;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 17;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 17;
      goto LABEL_498;
    case 18:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[20];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 18;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 18;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 18;
      goto LABEL_498;
    case 19:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[21];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 19;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 19;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 19;
      goto LABEL_498;
    case 20:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[22];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 20;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 20;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 20;
      goto LABEL_498;
    case 21:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[23];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 21;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 21;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 21;
      goto LABEL_498;
    case 22:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[24];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 22;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 22;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 22;
      goto LABEL_498;
    case 23:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[25];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 23;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 23;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 23;
      goto LABEL_498;
    case 24:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[26];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 24;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 24;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 24;
      goto LABEL_498;
    case 25:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[27];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 25;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 25;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 25;
      goto LABEL_498;
    case 26:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[28];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 26;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 26;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 26;
      goto LABEL_498;
    case 27:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[29];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 27;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 27;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 27;
      goto LABEL_498;
    case 28:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[30];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 28;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 28;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 28;
      goto LABEL_498;
    case 29:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 29;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 29;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 29;
      goto LABEL_498;
    case 30:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[32];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 30;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 30;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 30;
      goto LABEL_498;
    case 31:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[33];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 31;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 31;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 31;
      goto LABEL_498;
    case 32:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[34];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 32;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 32;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 32;
      goto LABEL_498;
    case 33:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[35];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 33;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 33;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 33;
      goto LABEL_498;
    case 34:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[36];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 34;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 34;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 34;
      goto LABEL_498;
    case 35:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[37];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 35;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 35;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 35;
      goto LABEL_498;
    case 36:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[38];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 36;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 36;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 36;
      goto LABEL_498;
    case 37:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[39];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 37;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 37;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 37;
      goto LABEL_498;
    case 38:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[40];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 38;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 38;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 38;
      goto LABEL_498;
    case 39:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[41];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 39;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 39;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 39;
      goto LABEL_498;
    case 40:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[42];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 40;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 40;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 40;
      goto LABEL_498;
    case 41:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[43];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 41;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 41;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 41;
      goto LABEL_498;
    case 42:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[44];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 42;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 42;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 42;
      goto LABEL_498;
    case 43:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[45];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 43;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 43;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 43;
      goto LABEL_498;
    case 44:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[46];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 44;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 44;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 44;
      goto LABEL_498;
    case 45:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[47];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 45;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 45;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 45;
      goto LABEL_498;
    case 46:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[48];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 46;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 46;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 46;
      goto LABEL_498;
    case 47:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[49];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 47;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 47;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 47;
      goto LABEL_498;
    case 48:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[50];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 48;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 48;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 48;
      goto LABEL_498;
    case 49:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[51];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 49;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 49;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 49;
      goto LABEL_498;
    case 50:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[52];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 50;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 50;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 50;
      goto LABEL_498;
    case 51:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[53];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 51;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 51;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 51;
      goto LABEL_498;
    case 52:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[54];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 52;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 52;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 52;
      goto LABEL_498;
    case 53:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[55];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 53;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 53;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 53;
      goto LABEL_498;
    case 54:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[56];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 54;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 54;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 54;
      goto LABEL_498;
    case 55:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[57];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 55;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 55;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 55;
      goto LABEL_498;
    case 56:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[58];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 56;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 56;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 56;
      goto LABEL_498;
    case 57:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[59];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 57;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 57;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 57;
      goto LABEL_498;
    case 58:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[60];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 58;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 58;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 58;
      goto LABEL_498;
    case 59:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[61];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 59;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 59;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 59;
      goto LABEL_498;
    case 60:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[62];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 60;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 60;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 60;
      goto LABEL_498;
    case 61:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[63];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 61;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 61;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 61;
      goto LABEL_498;
    case 62:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[64];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 62;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 62;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 62;
      goto LABEL_498;
    case 63:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[65];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 63;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 63;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 63;
      goto LABEL_498;
    case 64:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[66];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 64;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 64;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 64;
      goto LABEL_498;
    case 65:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[67];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 65;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 65;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 65;
      goto LABEL_498;
    case 66:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[68];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 66;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 66;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 66;
      goto LABEL_498;
    case 67:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[69];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 67;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 67;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 67;
      goto LABEL_498;
    case 68:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[70];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 68;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 68;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 68;
      goto LABEL_498;
    case 69:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[71];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 69;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 69;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 69;
      goto LABEL_498;
    case 70:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[72];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 70;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 70;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 70;
      goto LABEL_498;
    case 71:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[73];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 71;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 71;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 71;
      goto LABEL_498;
    case 72:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[74];
        }

        if (a3 != 1)
        {
          goto LABEL_499;
        }

        v4 = qword_281051F80;
        v5 = 72;
        goto LABEL_287;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 72;
        goto LABEL_641;
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 72;
      goto LABEL_498;
    case 73:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[75];
        }

        if (a3 == 1)
        {
          v4 = qword_281051F80;
          v5 = 73;
LABEL_287:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v4, v5);
        }

LABEL_499:
        throwWrongQueryMode(a3, "double");
        return 0.0;
      }

      if (a3 == 2)
      {
        v11 = qword_281051F80;
        v12 = 73;
LABEL_641:
        v13 = ParamSpecMgr::getParamByParamId(v11, v12);
      }

      if (a3 != 3)
      {
        goto LABEL_499;
      }

      v8 = qword_281051F80;
      v9 = 73;
LABEL_498:
      v10 = ParamSpecMgr::getParamByParamId(v8, v9);
    default:
      throwWrongParamIdValue(a2, "double");
      return 0.0;
  }
}

uint64_t ConfidenceParamSet::getStringParameter(int a1, int a2)
{
  switch(a2)
  {
    case 1:
      v2 = "BOOL";
      v3 = 1;
      goto LABEL_76;
    case 2:
      v2 = "BOOL";
      v3 = 2;
      goto LABEL_76;
    case 3:
      v2 = "BOOL";
      v3 = 3;
      goto LABEL_76;
    case 4:
      v2 = "double";
      v3 = 4;
      goto LABEL_76;
    case 5:
      v2 = "double";
      v3 = 5;
      goto LABEL_76;
    case 6:
      v2 = "double";
      v3 = 6;
      goto LABEL_76;
    case 7:
      v2 = "double";
      v3 = 7;
      goto LABEL_76;
    case 8:
      v2 = "double";
      v3 = 8;
      goto LABEL_76;
    case 9:
      v2 = "double";
      v3 = 9;
      goto LABEL_76;
    case 10:
      v2 = "double";
      v3 = 10;
      goto LABEL_76;
    case 11:
      v2 = "double";
      v3 = 11;
      goto LABEL_76;
    case 12:
      v2 = "double";
      v3 = 12;
      goto LABEL_76;
    case 13:
      v2 = "double";
      v3 = 13;
      goto LABEL_76;
    case 14:
      v2 = "double";
      v3 = 14;
      goto LABEL_76;
    case 15:
      v2 = "double";
      v3 = 15;
      goto LABEL_76;
    case 16:
      v2 = "double";
      v3 = 16;
      goto LABEL_76;
    case 17:
      v2 = "double";
      v3 = 17;
      goto LABEL_76;
    case 18:
      v2 = "double";
      v3 = 18;
      goto LABEL_76;
    case 19:
      v2 = "double";
      v3 = 19;
      goto LABEL_76;
    case 20:
      v2 = "double";
      v3 = 20;
      goto LABEL_76;
    case 21:
      v2 = "double";
      v3 = 21;
      goto LABEL_76;
    case 22:
      v2 = "double";
      v3 = 22;
      goto LABEL_76;
    case 23:
      v2 = "double";
      v3 = 23;
      goto LABEL_76;
    case 24:
      v2 = "double";
      v3 = 24;
      goto LABEL_76;
    case 25:
      v2 = "double";
      v3 = 25;
      goto LABEL_76;
    case 26:
      v2 = "double";
      v3 = 26;
      goto LABEL_76;
    case 27:
      v2 = "double";
      v3 = 27;
      goto LABEL_76;
    case 28:
      v2 = "double";
      v3 = 28;
      goto LABEL_76;
    case 29:
      v2 = "double";
      v3 = 29;
      goto LABEL_76;
    case 30:
      v2 = "double";
      v3 = 30;
      goto LABEL_76;
    case 31:
      v2 = "double";
      v3 = 31;
      goto LABEL_76;
    case 32:
      v2 = "double";
      v3 = 32;
      goto LABEL_76;
    case 33:
      v2 = "double";
      v3 = 33;
      goto LABEL_76;
    case 34:
      v2 = "double";
      v3 = 34;
      goto LABEL_76;
    case 35:
      v2 = "double";
      v3 = 35;
      goto LABEL_76;
    case 36:
      v2 = "double";
      v3 = 36;
      goto LABEL_76;
    case 37:
      v2 = "double";
      v3 = 37;
      goto LABEL_76;
    case 38:
      v2 = "double";
      v3 = 38;
      goto LABEL_76;
    case 39:
      v2 = "double";
      v3 = 39;
      goto LABEL_76;
    case 40:
      v2 = "double";
      v3 = 40;
      goto LABEL_76;
    case 41:
      v2 = "double";
      v3 = 41;
      goto LABEL_76;
    case 42:
      v2 = "double";
      v3 = 42;
      goto LABEL_76;
    case 43:
      v2 = "double";
      v3 = 43;
      goto LABEL_76;
    case 44:
      v2 = "double";
      v3 = 44;
      goto LABEL_76;
    case 45:
      v2 = "double";
      v3 = 45;
      goto LABEL_76;
    case 46:
      v2 = "double";
      v3 = 46;
      goto LABEL_76;
    case 47:
      v2 = "double";
      v3 = 47;
      goto LABEL_76;
    case 48:
      v2 = "double";
      v3 = 48;
      goto LABEL_76;
    case 49:
      v2 = "double";
      v3 = 49;
      goto LABEL_76;
    case 50:
      v2 = "double";
      v3 = 50;
      goto LABEL_76;
    case 51:
      v2 = "double";
      v3 = 51;
      goto LABEL_76;
    case 52:
      v2 = "double";
      v3 = 52;
      goto LABEL_76;
    case 53:
      v2 = "double";
      v3 = 53;
      goto LABEL_76;
    case 54:
      v2 = "double";
      v3 = 54;
      goto LABEL_76;
    case 55:
      v2 = "double";
      v3 = 55;
      goto LABEL_76;
    case 56:
      v2 = "double";
      v3 = 56;
      goto LABEL_76;
    case 57:
      v2 = "double";
      v3 = 57;
      goto LABEL_76;
    case 58:
      v2 = "double";
      v3 = 58;
      goto LABEL_76;
    case 59:
      v2 = "double";
      v3 = 59;
      goto LABEL_76;
    case 60:
      v2 = "double";
      v3 = 60;
      goto LABEL_76;
    case 61:
      v2 = "double";
      v3 = 61;
      goto LABEL_76;
    case 62:
      v2 = "double";
      v3 = 62;
      goto LABEL_76;
    case 63:
      v2 = "double";
      v3 = 63;
      goto LABEL_76;
    case 64:
      v2 = "double";
      v3 = 64;
      goto LABEL_76;
    case 65:
      v2 = "double";
      v3 = 65;
      goto LABEL_76;
    case 66:
      v2 = "double";
      v3 = 66;
      goto LABEL_76;
    case 67:
      v2 = "double";
      v3 = 67;
      goto LABEL_76;
    case 68:
      v2 = "double";
      v3 = 68;
      goto LABEL_76;
    case 69:
      v2 = "double";
      v3 = 69;
      goto LABEL_76;
    case 70:
      v2 = "double";
      v3 = 70;
      goto LABEL_76;
    case 71:
      v2 = "double";
      v3 = 71;
      goto LABEL_76;
    case 72:
      v2 = "double";
      v3 = 72;
      goto LABEL_76;
    case 73:
      v2 = "double";
      v3 = 73;
LABEL_76:
      throwWrongTypeForParamId(v3, v2, "string");
      break;
    default:
      throwWrongParamIdValue(a2, "string");
      break;
  }

  return 0;
}

uint64_t ConfidenceParamSet::getEnumParameter(int a1, int a2)
{
  switch(a2)
  {
    case 1:
      v2 = "BOOL";
      v3 = 1;
      goto LABEL_77;
    case 2:
      v2 = "BOOL";
      v3 = 2;
      goto LABEL_77;
    case 3:
      v2 = "BOOL";
      v3 = 3;
      goto LABEL_77;
    case 4:
      v2 = "double";
      v3 = 4;
      goto LABEL_77;
    case 5:
      v2 = "double";
      v3 = 5;
      goto LABEL_77;
    case 6:
      v2 = "double";
      v3 = 6;
      goto LABEL_77;
    case 7:
      v2 = "double";
      v3 = 7;
      goto LABEL_77;
    case 8:
      v2 = "double";
      v3 = 8;
      goto LABEL_77;
    case 9:
      v2 = "double";
      v3 = 9;
      goto LABEL_77;
    case 10:
      v2 = "double";
      v3 = 10;
      goto LABEL_77;
    case 11:
      v2 = "double";
      v3 = 11;
      goto LABEL_77;
    case 12:
      v2 = "double";
      v3 = 12;
      goto LABEL_77;
    case 13:
      v2 = "double";
      v3 = 13;
      goto LABEL_77;
    case 14:
      v2 = "double";
      v3 = 14;
      goto LABEL_77;
    case 15:
      v2 = "double";
      v3 = 15;
      goto LABEL_77;
    case 16:
      v2 = "double";
      v3 = 16;
      goto LABEL_77;
    case 17:
      v2 = "double";
      v3 = 17;
      goto LABEL_77;
    case 18:
      v2 = "double";
      v3 = 18;
      goto LABEL_77;
    case 19:
      v2 = "double";
      v3 = 19;
      goto LABEL_77;
    case 20:
      v2 = "double";
      v3 = 20;
      goto LABEL_77;
    case 21:
      v2 = "double";
      v3 = 21;
      goto LABEL_77;
    case 22:
      v2 = "double";
      v3 = 22;
      goto LABEL_77;
    case 23:
      v2 = "double";
      v3 = 23;
      goto LABEL_77;
    case 24:
      v2 = "double";
      v3 = 24;
      goto LABEL_77;
    case 25:
      v2 = "double";
      v3 = 25;
      goto LABEL_77;
    case 26:
      v2 = "double";
      v3 = 26;
      goto LABEL_77;
    case 27:
      v2 = "double";
      v3 = 27;
      goto LABEL_77;
    case 28:
      v2 = "double";
      v3 = 28;
      goto LABEL_77;
    case 29:
      v2 = "double";
      v3 = 29;
      goto LABEL_77;
    case 30:
      v2 = "double";
      v3 = 30;
      goto LABEL_77;
    case 31:
      v2 = "double";
      v3 = 31;
      goto LABEL_77;
    case 32:
      v2 = "double";
      v3 = 32;
      goto LABEL_77;
    case 33:
      v2 = "double";
      v3 = 33;
      goto LABEL_77;
    case 34:
      v2 = "double";
      v3 = 34;
      goto LABEL_77;
    case 35:
      v2 = "double";
      v3 = 35;
      goto LABEL_77;
    case 36:
      v2 = "double";
      v3 = 36;
      goto LABEL_77;
    case 37:
      v2 = "double";
      v3 = 37;
      goto LABEL_77;
    case 38:
      v2 = "double";
      v3 = 38;
      goto LABEL_77;
    case 39:
      v2 = "double";
      v3 = 39;
      goto LABEL_77;
    case 40:
      v2 = "double";
      v3 = 40;
      goto LABEL_77;
    case 41:
      v2 = "double";
      v3 = 41;
      goto LABEL_77;
    case 42:
      v2 = "double";
      v3 = 42;
      goto LABEL_77;
    case 43:
      v2 = "double";
      v3 = 43;
      goto LABEL_77;
    case 44:
      v2 = "double";
      v3 = 44;
      goto LABEL_77;
    case 45:
      v2 = "double";
      v3 = 45;
      goto LABEL_77;
    case 46:
      v2 = "double";
      v3 = 46;
      goto LABEL_77;
    case 47:
      v2 = "double";
      v3 = 47;
      goto LABEL_77;
    case 48:
      v2 = "double";
      v3 = 48;
      goto LABEL_77;
    case 49:
      v2 = "double";
      v3 = 49;
      goto LABEL_77;
    case 50:
      v2 = "double";
      v3 = 50;
      goto LABEL_77;
    case 51:
      v2 = "double";
      v3 = 51;
      goto LABEL_77;
    case 52:
      v2 = "double";
      v3 = 52;
      goto LABEL_77;
    case 53:
      v2 = "double";
      v3 = 53;
      goto LABEL_77;
    case 54:
      v2 = "double";
      v3 = 54;
      goto LABEL_77;
    case 55:
      v2 = "double";
      v3 = 55;
      goto LABEL_77;
    case 56:
      v2 = "double";
      v3 = 56;
      goto LABEL_77;
    case 57:
      v2 = "double";
      v3 = 57;
      goto LABEL_77;
    case 58:
      v2 = "double";
      v3 = 58;
      goto LABEL_77;
    case 59:
      v2 = "double";
      v3 = 59;
      goto LABEL_77;
    case 60:
      v2 = "double";
      v3 = 60;
      goto LABEL_77;
    case 61:
      v2 = "double";
      v3 = 61;
      goto LABEL_77;
    case 62:
      v2 = "double";
      v3 = 62;
      goto LABEL_77;
    case 63:
      v2 = "double";
      v3 = 63;
      goto LABEL_77;
    case 64:
      v2 = "double";
      v3 = 64;
      goto LABEL_77;
    case 65:
      v2 = "double";
      v3 = 65;
      goto LABEL_77;
    case 66:
      v2 = "double";
      v3 = 66;
      goto LABEL_77;
    case 67:
      v2 = "double";
      v3 = 67;
      goto LABEL_77;
    case 68:
      v2 = "double";
      v3 = 68;
      goto LABEL_77;
    case 69:
      v2 = "double";
      v3 = 69;
      goto LABEL_77;
    case 70:
      v2 = "double";
      v3 = 70;
      goto LABEL_77;
    case 71:
      v2 = "double";
      v3 = 71;
      goto LABEL_77;
    case 72:
      v2 = "double";
      v3 = 72;
      goto LABEL_77;
    case 73:
      v2 = "double";
      v3 = 73;
LABEL_77:
      throwWrongTypeForParamId(v3, v2, "BOOL");
      break;
    default:
      throwWrongParamIdValue(a2, "enum");
      break;
  }

  return 0;
}

void ConfidenceParamSet::setBoolParameter(uint64_t this, int a2, char a3)
{
  switch(a2)
  {
    case 1:
      if (*(this + 36))
      {
        v4 = "ConfidenceEnableWordLevel";
        goto LABEL_8;
      }

      *(this + 40) = a3;
      return;
    case 2:
      if (*(this + 36))
      {
        v4 = "ConfidenceEnableUttLevel";
        goto LABEL_8;
      }

      *(this + 41) = a3;
      return;
    case 3:
      if (*(this + 36))
      {
        v4 = "ConfidenceEnableForAllNBest";
LABEL_8:

        throwParamSetSetFailed(v4, "BOOL");
      }

      else
      {
        *(this + 42) = a3;
      }

      return;
    case 4:
      throwWrongTypeForParamId(4, "double", "BOOL");
      goto LABEL_12;
    case 5:
LABEL_12:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_13;
    case 6:
LABEL_13:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_14;
    case 7:
LABEL_14:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_15;
    case 8:
LABEL_15:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_16;
    case 9:
LABEL_16:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_17;
    case 10:
LABEL_17:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_18;
    case 11:
LABEL_18:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_19;
    case 12:
LABEL_19:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_20;
    case 13:
LABEL_20:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_21;
    case 14:
LABEL_21:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_22;
    case 15:
LABEL_22:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_23;
    case 16:
LABEL_23:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_24;
    case 17:
LABEL_24:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_25;
    case 18:
LABEL_25:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_26;
    case 19:
LABEL_26:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_27;
    case 20:
LABEL_27:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_28;
    case 21:
LABEL_28:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_29;
    case 22:
LABEL_29:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_30;
    case 23:
LABEL_30:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_31;
    case 24:
LABEL_31:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_32;
    case 25:
LABEL_32:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_33;
    case 26:
LABEL_33:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_34;
    case 27:
LABEL_34:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_35;
    case 28:
LABEL_35:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_36;
    case 29:
LABEL_36:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_37;
    case 30:
LABEL_37:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_38;
    case 31:
LABEL_38:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_39;
    case 32:
LABEL_39:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_40;
    case 33:
LABEL_40:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_41;
    case 34:
LABEL_41:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_42;
    case 35:
LABEL_42:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_43;
    case 36:
LABEL_43:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_44;
    case 37:
LABEL_44:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_45;
    case 38:
LABEL_45:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_46;
    case 39:
LABEL_46:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_47;
    case 40:
LABEL_47:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_48;
    case 41:
LABEL_48:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_49;
    case 42:
LABEL_49:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_50;
    case 43:
LABEL_50:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_51;
    case 44:
LABEL_51:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_52;
    case 45:
LABEL_52:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_53;
    case 46:
LABEL_53:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_54;
    case 47:
LABEL_54:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_55;
    case 48:
LABEL_55:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_56;
    case 49:
LABEL_56:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_57;
    case 50:
LABEL_57:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_58;
    case 51:
LABEL_58:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_59;
    case 52:
LABEL_59:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_60;
    case 53:
LABEL_60:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_61;
    case 54:
LABEL_61:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_62;
    case 55:
LABEL_62:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_63;
    case 56:
LABEL_63:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_64;
    case 57:
LABEL_64:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_65;
    case 58:
LABEL_65:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_66;
    case 59:
LABEL_66:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_67;
    case 60:
LABEL_67:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_68;
    case 61:
LABEL_68:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_69;
    case 62:
LABEL_69:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_70;
    case 63:
LABEL_70:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_71;
    case 64:
LABEL_71:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_72;
    case 65:
LABEL_72:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_73;
    case 66:
LABEL_73:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_74;
    case 67:
LABEL_74:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_75;
    case 68:
LABEL_75:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_76;
    case 69:
LABEL_76:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_77;
    case 70:
LABEL_77:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_78;
    case 71:
LABEL_78:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_79;
    case 72:
LABEL_79:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_80;
    case 73:
LABEL_80:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      break;
    default:
      break;
  }

  throwWrongParamIdValue(a2, "BOOL");
}

double ConfidenceParamSet::setIntParameter(ConfidenceParamSet *this, int a2)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "int");
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_20;
    case 19:
LABEL_20:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_21;
    case 20:
LABEL_21:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_24;
    case 23:
LABEL_24:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_25;
    case 24:
LABEL_25:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_26;
    case 25:
LABEL_26:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_27;
    case 26:
LABEL_27:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_28;
    case 27:
LABEL_28:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_29;
    case 28:
LABEL_29:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_30;
    case 29:
LABEL_30:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_31;
    case 30:
LABEL_31:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_32;
    case 31:
LABEL_32:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_33;
    case 32:
LABEL_33:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_34;
    case 33:
LABEL_34:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_35;
    case 34:
LABEL_35:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_36;
    case 35:
LABEL_36:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_37;
    case 36:
LABEL_37:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_38;
    case 37:
LABEL_38:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_39;
    case 38:
LABEL_39:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_40;
    case 39:
LABEL_40:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_41;
    case 40:
LABEL_41:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_42;
    case 41:
LABEL_42:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_43;
    case 42:
LABEL_43:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_44;
    case 43:
LABEL_44:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_45;
    case 44:
LABEL_45:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_46;
    case 45:
LABEL_46:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_47;
    case 46:
LABEL_47:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_48;
    case 47:
LABEL_48:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_49;
    case 48:
LABEL_49:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_50;
    case 49:
LABEL_50:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_51;
    case 50:
LABEL_51:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_52;
    case 51:
LABEL_52:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_53;
    case 52:
LABEL_53:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_54;
    case 53:
LABEL_54:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_55;
    case 54:
LABEL_55:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_56;
    case 55:
LABEL_56:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_57;
    case 56:
LABEL_57:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_58;
    case 57:
LABEL_58:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_59;
    case 58:
LABEL_59:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_60;
    case 59:
LABEL_60:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_61;
    case 60:
LABEL_61:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_62;
    case 61:
LABEL_62:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_63;
    case 62:
LABEL_63:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_64;
    case 63:
LABEL_64:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_65;
    case 64:
LABEL_65:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_66;
    case 65:
LABEL_66:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_67;
    case 66:
LABEL_67:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_68;
    case 67:
LABEL_68:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_69;
    case 68:
LABEL_69:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_70;
    case 69:
LABEL_70:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_71;
    case 70:
LABEL_71:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_72;
    case 71:
LABEL_72:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_73;
    case 72:
LABEL_73:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_74;
    case 73:
LABEL_74:
      throwWrongTypeForParamId(a2, "double", "int");
      break;
    default:
      break;
  }

  return throwWrongParamIdValue(a2, "int");
}

void ConfidenceParamSet::setDoubleParameter(ConfidenceParamSet *this, int a2, double a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "double");
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_5;
    case 4:
LABEL_5:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F80, 4);
      if (ParamByParamId)
      {
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttNBestHighThresh";
        goto LABEL_289;
      }

      *(this + 6) = a3;
      return;
    case 5:
      v31 = ParamSpecMgr::getParamByParamId(qword_281051F80, 5);
      if (v31)
      {
      }

      DoubleParamSpec::validateValue(v31, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttNBestLowThresh";
        goto LABEL_289;
      }

      *(this + 7) = a3;
      return;
    case 6:
      v47 = ParamSpecMgr::getParamByParamId(qword_281051F80, 6);
      if (v47)
      {
      }

      DoubleParamSpec::validateValue(v47, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbAverageActiveNodeCountFactor";
        goto LABEL_289;
      }

      *(this + 8) = a3;
      return;
    case 7:
      v52 = ParamSpecMgr::getParamByParamId(qword_281051F80, 7);
      if (v52)
      {
      }

      DoubleParamSpec::validateValue(v52, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbAverageDurationFactor";
        goto LABEL_289;
      }

      *(this + 9) = a3;
      return;
    case 8:
      v41 = ParamSpecMgr::getParamByParamId(qword_281051F80, 8);
      if (v41)
      {
      }

      DoubleParamSpec::validateValue(v41, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbAverageLMScoreFactor";
        goto LABEL_289;
      }

      *(this + 10) = a3;
      return;
    case 9:
      v55 = ParamSpecMgr::getParamByParamId(qword_281051F80, 9);
      if (v55)
      {
      }

      DoubleParamSpec::validateValue(v55, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbConstantTerm";
        goto LABEL_289;
      }

      *(this + 11) = a3;
      return;
    case 10:
      v36 = ParamSpecMgr::getParamByParamId(qword_281051F80, 10);
      if (v36)
      {
      }

      DoubleParamSpec::validateValue(v36, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbLogWordCountFactor";
        goto LABEL_289;
      }

      *(this + 12) = a3;
      return;
    case 11:
      v54 = ParamSpecMgr::getParamByParamId(qword_281051F80, 11);
      if (v54)
      {
      }

      DoubleParamSpec::validateValue(v54, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbMaxWordsEndingFactor";
        goto LABEL_289;
      }

      *(this + 13) = a3;
      return;
    case 12:
      v29 = ParamSpecMgr::getParamByParamId(qword_281051F80, 12);
      if (v29)
      {
      }

      DoubleParamSpec::validateValue(v29, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbNBestHighCountFactor";
        goto LABEL_289;
      }

      *(this + 14) = a3;
      return;
    case 13:
      v35 = ParamSpecMgr::getParamByParamId(qword_281051F80, 13);
      if (v35)
      {
      }

      DoubleParamSpec::validateValue(v35, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbNBestLowCountFactor";
        goto LABEL_289;
      }

      *(this + 15) = a3;
      return;
    case 14:
      v51 = ParamSpecMgr::getParamByParamId(qword_281051F80, 14);
      if (v51)
      {
      }

      DoubleParamSpec::validateValue(v51, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbNBestMaxFactor";
        goto LABEL_289;
      }

      *(this + 16) = a3;
      return;
    case 15:
      v25 = ParamSpecMgr::getParamByParamId(qword_281051F80, 15);
      if (v25)
      {
      }

      DoubleParamSpec::validateValue(v25, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbNBestMinFactor";
        goto LABEL_289;
      }

      *(this + 17) = a3;
      return;
    case 16:
      v39 = ParamSpecMgr::getParamByParamId(qword_281051F80, 16);
      if (v39)
      {
      }

      DoubleParamSpec::validateValue(v39, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbNBestWordAverageFactor";
        goto LABEL_289;
      }

      *(this + 18) = a3;
      return;
    case 17:
      v22 = ParamSpecMgr::getParamByParamId(qword_281051F80, 17);
      if (v22)
      {
      }

      DoubleParamSpec::validateValue(v22, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbTotalLMScoreFactor";
        goto LABEL_289;
      }

      *(this + 19) = a3;
      return;
    case 18:
      v43 = ParamSpecMgr::getParamByParamId(qword_281051F80, 18);
      if (v43)
      {
      }

      DoubleParamSpec::validateValue(v43, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceUttProbUttAverageAMinusBScoreFactor";
        goto LABEL_289;
      }

      *(this + 20) = a3;
      return;
    case 19:
      v53 = ParamSpecMgr::getParamByParamId(qword_281051F80, 19);
      if (v53)
      {
      }

      DoubleParamSpec::validateValue(v53, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAcousticScoreFactor";
        goto LABEL_289;
      }

      *(this + 21) = a3;
      return;
    case 20:
      v61 = ParamSpecMgr::getParamByParamId(qword_281051F80, 20);
      if (v61)
      {
      }

      DoubleParamSpec::validateValue(v61, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAcousticScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 22) = a3;
      return;
    case 21:
      v45 = ParamSpecMgr::getParamByParamId(qword_281051F80, 21);
      if (v45)
      {
      }

      DoubleParamSpec::validateValue(v45, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAcousticScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 23) = a3;
      return;
    case 22:
      v50 = ParamSpecMgr::getParamByParamId(qword_281051F80, 22);
      if (v50)
      {
      }

      DoubleParamSpec::validateValue(v50, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAcousticScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 24) = a3;
      return;
    case 23:
      v59 = ParamSpecMgr::getParamByParamId(qword_281051F80, 23);
      if (v59)
      {
      }

      DoubleParamSpec::validateValue(v59, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAcousticScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 25) = a3;
      return;
    case 24:
      v65 = ParamSpecMgr::getParamByParamId(qword_281051F80, 24);
      if (v65)
      {
      }

      DoubleParamSpec::validateValue(v65, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageAMinusBScoreFactor";
        goto LABEL_289;
      }

      *(this + 26) = a3;
      return;
    case 25:
      v38 = ParamSpecMgr::getParamByParamId(qword_281051F80, 25);
      if (v38)
      {
      }

      DoubleParamSpec::validateValue(v38, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageAMinusBScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 27) = a3;
      return;
    case 26:
      v37 = ParamSpecMgr::getParamByParamId(qword_281051F80, 26);
      if (v37)
      {
      }

      DoubleParamSpec::validateValue(v37, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageAMinusBScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 28) = a3;
      return;
    case 27:
      v69 = ParamSpecMgr::getParamByParamId(qword_281051F80, 27);
      if (v69)
      {
      }

      DoubleParamSpec::validateValue(v69, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageAMinusBScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 29) = a3;
      return;
    case 28:
      v20 = ParamSpecMgr::getParamByParamId(qword_281051F80, 28);
      if (v20)
      {
      }

      DoubleParamSpec::validateValue(v20, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageAMinusBScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 30) = a3;
      return;
    case 29:
      v66 = ParamSpecMgr::getParamByParamId(qword_281051F80, 29);
      if (v66)
      {
      }

      DoubleParamSpec::validateValue(v66, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageAcousticScoreFactor";
        goto LABEL_289;
      }

      *(this + 31) = a3;
      return;
    case 30:
      v67 = ParamSpecMgr::getParamByParamId(qword_281051F80, 30);
      if (v67)
      {
      }

      DoubleParamSpec::validateValue(v67, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageAcousticScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 32) = a3;
      return;
    case 31:
      v56 = ParamSpecMgr::getParamByParamId(qword_281051F80, 31);
      if (v56)
      {
      }

      DoubleParamSpec::validateValue(v56, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageAcousticScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 33) = a3;
      return;
    case 32:
      v42 = ParamSpecMgr::getParamByParamId(qword_281051F80, 32);
      if (v42)
      {
      }

      DoubleParamSpec::validateValue(v42, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageAcousticScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 34) = a3;
      return;
    case 33:
      v57 = ParamSpecMgr::getParamByParamId(qword_281051F80, 33);
      if (v57)
      {
      }

      DoubleParamSpec::validateValue(v57, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageAcousticScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 35) = a3;
      return;
    case 34:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051F80, 34);
      if (v26)
      {
      }

      DoubleParamSpec::validateValue(v26, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageActiveNodeCountFactor";
        goto LABEL_289;
      }

      *(this + 36) = a3;
      return;
    case 35:
      v21 = ParamSpecMgr::getParamByParamId(qword_281051F80, 35);
      if (v21)
      {
      }

      DoubleParamSpec::validateValue(v21, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageActiveNodeCountLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 37) = a3;
      return;
    case 36:
      v17 = ParamSpecMgr::getParamByParamId(qword_281051F80, 36);
      if (v17)
      {
      }

      DoubleParamSpec::validateValue(v17, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageActiveNodeCountLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 38) = a3;
      return;
    case 37:
      v18 = ParamSpecMgr::getParamByParamId(qword_281051F80, 37);
      if (v18)
      {
      }

      DoubleParamSpec::validateValue(v18, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageActiveNodeCountRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 39) = a3;
      return;
    case 38:
      v13 = ParamSpecMgr::getParamByParamId(qword_281051F80, 38);
      if (v13)
      {
      }

      DoubleParamSpec::validateValue(v13, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageActiveNodeCountRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 40) = a3;
      return;
    case 39:
      v68 = ParamSpecMgr::getParamByParamId(qword_281051F80, 39);
      if (v68)
      {
      }

      DoubleParamSpec::validateValue(v68, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageBestScoreFactor";
        goto LABEL_289;
      }

      *(this + 41) = a3;
      return;
    case 40:
      v60 = ParamSpecMgr::getParamByParamId(qword_281051F80, 40);
      if (v60)
      {
      }

      DoubleParamSpec::validateValue(v60, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageBestScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 42) = a3;
      return;
    case 41:
      v32 = ParamSpecMgr::getParamByParamId(qword_281051F80, 41);
      if (v32)
      {
      }

      DoubleParamSpec::validateValue(v32, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageBestScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 43) = a3;
      return;
    case 42:
      v44 = ParamSpecMgr::getParamByParamId(qword_281051F80, 42);
      if (v44)
      {
      }

      DoubleParamSpec::validateValue(v44, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageBestScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 44) = a3;
      return;
    case 43:
      v63 = ParamSpecMgr::getParamByParamId(qword_281051F80, 43);
      if (v63)
      {
      }

      DoubleParamSpec::validateValue(v63, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbAverageBestScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 45) = a3;
      return;
    case 44:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051F80, 44);
      if (v10)
      {
      }

      DoubleParamSpec::validateValue(v10, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbConstantTerm";
        goto LABEL_289;
      }

      *(this + 46) = a3;
      return;
    case 45:
      v24 = ParamSpecMgr::getParamByParamId(qword_281051F80, 45);
      if (v24)
      {
      }

      DoubleParamSpec::validateValue(v24, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbDurationFactor";
        goto LABEL_289;
      }

      *(this + 47) = a3;
      return;
    case 46:
      v58 = ParamSpecMgr::getParamByParamId(qword_281051F80, 46);
      if (v58)
      {
      }

      DoubleParamSpec::validateValue(v58, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbDurationLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 48) = a3;
      return;
    case 47:
      v74 = ParamSpecMgr::getParamByParamId(qword_281051F80, 47);
      if (v74)
      {
      }

      DoubleParamSpec::validateValue(v74, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbDurationLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 49) = a3;
      return;
    case 48:
      v15 = ParamSpecMgr::getParamByParamId(qword_281051F80, 48);
      if (v15)
      {
      }

      DoubleParamSpec::validateValue(v15, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbDurationRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 50) = a3;
      return;
    case 49:
      v27 = ParamSpecMgr::getParamByParamId(qword_281051F80, 49);
      if (v27)
      {
      }

      DoubleParamSpec::validateValue(v27, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbDurationRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 51) = a3;
      return;
    case 50:
      v30 = ParamSpecMgr::getParamByParamId(qword_281051F80, 50);
      if (v30)
      {
      }

      DoubleParamSpec::validateValue(v30, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLMScoreFactor";
        goto LABEL_289;
      }

      *(this + 52) = a3;
      return;
    case 51:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051F80, 51);
      if (v9)
      {
      }

      DoubleParamSpec::validateValue(v9, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLMScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 53) = a3;
      return;
    case 52:
      v75 = ParamSpecMgr::getParamByParamId(qword_281051F80, 52);
      if (v75)
      {
      }

      DoubleParamSpec::validateValue(v75, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLMScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 54) = a3;
      return;
    case 53:
      v73 = ParamSpecMgr::getParamByParamId(qword_281051F80, 53);
      if (v73)
      {
      }

      DoubleParamSpec::validateValue(v73, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLMScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 55) = a3;
      return;
    case 54:
      v14 = ParamSpecMgr::getParamByParamId(qword_281051F80, 54);
      if (v14)
      {
      }

      DoubleParamSpec::validateValue(v14, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLMScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 56) = a3;
      return;
    case 55:
      v70 = ParamSpecMgr::getParamByParamId(qword_281051F80, 55);
      if (v70)
      {
      }

      DoubleParamSpec::validateValue(v70, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLeftContextIndicator1Factor";
        goto LABEL_289;
      }

      *(this + 57) = a3;
      return;
    case 56:
      v72 = ParamSpecMgr::getParamByParamId(qword_281051F80, 56);
      if (v72)
      {
      }

      DoubleParamSpec::validateValue(v72, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLeftContextIndicator2Factor";
        goto LABEL_289;
      }

      *(this + 58) = a3;
      return;
    case 57:
      v16 = ParamSpecMgr::getParamByParamId(qword_281051F80, 57);
      if (v16)
      {
      }

      DoubleParamSpec::validateValue(v16, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLogWordCountFactor";
        goto LABEL_289;
      }

      *(this + 59) = a3;
      return;
    case 58:
      v62 = ParamSpecMgr::getParamByParamId(qword_281051F80, 58);
      if (v62)
      {
      }

      DoubleParamSpec::validateValue(v62, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLogWordCountLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 60) = a3;
      return;
    case 59:
      v28 = ParamSpecMgr::getParamByParamId(qword_281051F80, 59);
      if (v28)
      {
      }

      DoubleParamSpec::validateValue(v28, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLogWordCountLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 61) = a3;
      return;
    case 60:
      v64 = ParamSpecMgr::getParamByParamId(qword_281051F80, 60);
      if (v64)
      {
      }

      DoubleParamSpec::validateValue(v64, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLogWordCountRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 62) = a3;
      return;
    case 61:
      v33 = ParamSpecMgr::getParamByParamId(qword_281051F80, 61);
      if (v33)
      {
      }

      DoubleParamSpec::validateValue(v33, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbLogWordCountRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 63) = a3;
      return;
    case 62:
      v46 = ParamSpecMgr::getParamByParamId(qword_281051F80, 62);
      if (v46)
      {
      }

      DoubleParamSpec::validateValue(v46, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbNBestScoreFactor";
        goto LABEL_289;
      }

      *(this + 64) = a3;
      return;
    case 63:
      v49 = ParamSpecMgr::getParamByParamId(qword_281051F80, 63);
      if (v49)
      {
      }

      DoubleParamSpec::validateValue(v49, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbNBestScoreLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 65) = a3;
      return;
    case 64:
      v40 = ParamSpecMgr::getParamByParamId(qword_281051F80, 64);
      if (v40)
      {
      }

      DoubleParamSpec::validateValue(v40, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbNBestScoreLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 66) = a3;
      return;
    case 65:
      v34 = ParamSpecMgr::getParamByParamId(qword_281051F80, 65);
      if (v34)
      {
      }

      DoubleParamSpec::validateValue(v34, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbNBestScoreRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 67) = a3;
      return;
    case 66:
      v48 = ParamSpecMgr::getParamByParamId(qword_281051F80, 66);
      if (v48)
      {
      }

      DoubleParamSpec::validateValue(v48, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbNBestScoreRCntx2Factor";
        goto LABEL_289;
      }

      *(this + 68) = a3;
      return;
    case 67:
      v11 = ParamSpecMgr::getParamByParamId(qword_281051F80, 67);
      if (v11)
      {
      }

      DoubleParamSpec::validateValue(v11, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbRightContextIndicator1Factor";
        goto LABEL_289;
      }

      *(this + 69) = a3;
      return;
    case 68:
      v23 = ParamSpecMgr::getParamByParamId(qword_281051F80, 68);
      if (v23)
      {
      }

      DoubleParamSpec::validateValue(v23, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbRightContextIndicator2Factor";
        goto LABEL_289;
      }

      *(this + 70) = a3;
      return;
    case 69:
      v76 = ParamSpecMgr::getParamByParamId(qword_281051F80, 69);
      if (v76)
      {
      }

      DoubleParamSpec::validateValue(v76, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbWordsEndingCountFactor";
        goto LABEL_289;
      }

      *(this + 71) = a3;
      return;
    case 70:
      v19 = ParamSpecMgr::getParamByParamId(qword_281051F80, 70);
      if (v19)
      {
      }

      DoubleParamSpec::validateValue(v19, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbWordsEndingCountLCntx1Factor";
        goto LABEL_289;
      }

      *(this + 72) = a3;
      return;
    case 71:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051F80, 71);
      if (v8)
      {
      }

      DoubleParamSpec::validateValue(v8, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbWordsEndingCountLCntx2Factor";
        goto LABEL_289;
      }

      *(this + 73) = a3;
      return;
    case 72:
      v12 = ParamSpecMgr::getParamByParamId(qword_281051F80, 72);
      if (v12)
      {
      }

      DoubleParamSpec::validateValue(v12, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbWordsEndingCountRCntx1Factor";
        goto LABEL_289;
      }

      *(this + 74) = a3;
      break;
    case 73:
      v71 = ParamSpecMgr::getParamByParamId(qword_281051F80, 73);
      if (v71)
      {
      }

      DoubleParamSpec::validateValue(v71, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ConfidenceWordProbWordsEndingCountRCntx2Factor";
LABEL_289:

        throwParamSetSetFailed(v7, "double");
      }

      else
      {
        *(this + 75) = a3;
      }

      break;
    default:

      throwWrongParamIdValue(a2, "double");
      return;
  }
}