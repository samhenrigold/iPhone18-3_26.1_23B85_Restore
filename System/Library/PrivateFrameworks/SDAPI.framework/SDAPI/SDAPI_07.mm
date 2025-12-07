uint64_t ParamSetHolderMgr::getParamSetHolder(ParamSetHolderMgr *this, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  if (*(this + 2) <= a2 || (result = *(*this + 8 * a2)) == 0)
  {
    v4 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2796, "recogctl/psholder", 1, "%u", a2);
    return *(*this + 8 * v4);
  }

  return result;
}

uint64_t ParamSetHolder::getParamSet(ParamSetHolder *this, unsigned int a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  result = *(*(this + 1) + 8 * a2);
  if (!result)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2223, "recogctl/psholder", 9, "%u", a2);
    return *(*(this + 1) + 8 * a2);
  }

  return result;
}

void Hash<DgnString,DgnString,DgnStringScope,unsigned int>::add(uint64_t a1, char **a2, _DWORD *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v6);
  }

  v7 = *a2;
  if (!*(a2 + 2))
  {
    v7 = byte_26286EA0E;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = 0;
    v10 = (v7 + 1);
    do
    {
      HIDWORD(v11) = v9;
      LODWORD(v11) = v9;
      v9 = (v11 >> 19) + v8;
      v12 = *v10++;
      v8 = v12;
    }

    while (v12);
  }

  else
  {
    v9 = 0;
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (-1640531527 * v9) >> -v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 32);
  if (!v16)
  {
    DgnPool::addChunk((a1 + 24));
    v16 = *(a1 + 32);
  }

  v17 = (v15 + 8 * v14);
  *(a1 + 32) = *v16;
  *(v16 + 8) = 0;
  DgnString::DgnString((v16 + 16), a2);
  *(v16 + 32) = *a3;
  *(v16 + 8) = v9;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v16 = *v17;
  }

  else
  {
    *v16 = 0;
    v18 = *v17;
    if (*v17)
    {
      do
      {
        v17 = v18;
        v18 = *v18;
      }

      while (v18);
    }
  }

  *v17 = v16;
}

DynamicParamSet *DgnDelete<DynamicParamSet>(DynamicParamSet *result)
{
  if (result)
  {
    DynamicParamSet::~DynamicParamSet(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

unint64_t ParamSetHolderMgr::startupParamSetHolderMgr(ParamSetHolderMgr *this)
{
  DgnTextFileWriter::DgnTextFileWriter(v15);
  v14[0] = 0;
  v14[1] = 0;
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  v3[0] = 0;
  v3[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v15, sADPT_Versions, v14);
  DgnTextFile::legalDgnTextFileVersions(v15, sCHPT_Versions, v13);
  DgnTextFile::legalDgnTextFileVersions(v15, sCOPT_Versions, v12);
  DgnTextFile::legalDgnTextFileVersions(v15, sLNPT_Versions, v11);
  DgnTextFile::legalDgnTextFileVersions(v15, sLPPT_Versions, v10);
  DgnTextFile::legalDgnTextFileVersions(v15, sPBPT_Versions, v9);
  DgnTextFile::legalDgnTextFileVersions(v15, sPSPT_Versions, v8);
  DgnTextFile::legalDgnTextFileVersions(v15, sPGPT_Versions, v7);
  DgnTextFile::legalDgnTextFileVersions(v15, sSAPT_Versions, v6);
  DgnTextFile::legalDgnTextFileVersions(v15, sSRPT_Versions, v5);
  DgnTextFile::legalDgnTextFileVersions(v15, sSCPT_Versions, v4);
  DgnTextFile::legalDgnTextFileVersions(v15, sUDPT_Versions, v3);
  DgnIArray<Utterance *>::~DgnIArray(v3);
  DgnIArray<Utterance *>::~DgnIArray(v4);
  DgnIArray<Utterance *>::~DgnIArray(v5);
  DgnIArray<Utterance *>::~DgnIArray(v6);
  DgnIArray<Utterance *>::~DgnIArray(v7);
  DgnIArray<Utterance *>::~DgnIArray(v8);
  DgnIArray<Utterance *>::~DgnIArray(v9);
  DgnIArray<Utterance *>::~DgnIArray(v10);
  DgnIArray<Utterance *>::~DgnIArray(v11);
  DgnIArray<Utterance *>::~DgnIArray(v12);
  DgnIArray<Utterance *>::~DgnIArray(v13);
  DgnIArray<Utterance *>::~DgnIArray(v14);
  DgnTextFileWriter::~DgnTextFileWriter(v15);
  v1 = MemChunkAlloc(0x40uLL, 0);
  *v1 = 0u;
  v1[2] = 0x10000001DLL;
  *(v1 + 6) = 1;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  *(v1 + 14) = 0;
  ParamSetHolderMgr::smpParamSetHolderMgr = v1;
  StartupAdapterParamSpecMgr();
  StartupChannelParamSpecMgr();
  StartupConfidenceParamSpecMgr();
  StartupLatticeNBestParamSpecMgr();
  StartupLatticePostProbParamSpecMgr();
  StartupPrefiltererBuildParamSpecMgr();
  StartupPrefiltererSearchParamSpecMgr();
  StartupPronGuessParamSpecMgr();
  StartupSausageParamSpecMgr();
  StartupSearchParamSpecMgr();
  StartupSearchCrossLayerParamSpecMgr();
  return StartupUserDeltaParamSpecMgr();
}

void sub_2625CCF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  DgnIArray<Utterance *>::~DgnIArray(&a10);
  DgnIArray<Utterance *>::~DgnIArray(&a12);
  DgnIArray<Utterance *>::~DgnIArray(&a14);
  DgnIArray<Utterance *>::~DgnIArray(&a16);
  DgnIArray<Utterance *>::~DgnIArray(&a18);
  DgnIArray<Utterance *>::~DgnIArray(&a20);
  DgnIArray<Utterance *>::~DgnIArray(&a22);
  DgnIArray<Utterance *>::~DgnIArray(&a24);
  DgnIArray<Utterance *>::~DgnIArray(&a26);
  DgnIArray<Utterance *>::~DgnIArray(&a28);
  DgnIArray<Utterance *>::~DgnIArray(&a30);
  DgnIArray<Utterance *>::~DgnIArray(&a32);
  DgnTextFileWriter::~DgnTextFileWriter(va);
  _Unwind_Resume(a1);
}

void ParamSetHolderMgr::deleteParamSetHolder(ParamSetHolderMgr *this, unsigned int a2)
{
  ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(this, a2);
  v5 = ParamSetHolder;
  v6 = *(ParamSetHolder + 16);
  if (v6)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      v9 = *(*(ParamSetHolder + 8) + 8 * i);
      if (v9)
      {
        v7 += *(v9 + 36);
      }
    }

    if (v7)
    {
      ParamSetHolder::getRefDetails(ParamSetHolder, &v11);
      if (v12)
      {
        v10 = v11;
      }

      else
      {
        v10 = byte_26286EA0E;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2820, "recogctl/psholder", 2, "%u %.500s", a2, v10);
      DgnString::~DgnString(&v11);
    }
  }

  DgnDelete<ParamSetHolder>(v5);
  *(*this + 8 * a2) = 0;
  IdMgr<unsigned int>::recycleId(this + 4, a2);
}

void sub_2625CD0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

EnvMgr **DgnDelete<ParamSetHolder>(EnvMgr **result)
{
  if (result)
  {
    ParamSetHolder::~ParamSetHolder(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t ParamSetHolderMgr::loadParamSetHolder(ParamSetHolderMgr *this, const char **a2)
{
  NextId = IdMgr<unsigned int>::getNextId(this + 4);
  for (i = *(this + 2); i <= NextId; *(this + 2) = i)
  {
    if (i == *(this + 3))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this, 1, 1);
      i = *(this + 2);
    }

    *(*this + 8 * i++) = 0;
  }

  v6 = MemChunkAlloc(0x4B0uLL, 0);
  ParamSetHolder::ParamSetHolder(v6, NextId);
  ParamSetHolder::loadParamSetHolder(v7, a2);
  *(*this + 8 * NextId) = v6;
  return NextId;
}

void ParamSetHolderMgr::printSize(ParamSetHolderMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2862);
  if (v50)
  {
    v13 = v49;
  }

  else
  {
    v13 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26286EA0E, a3, byte_26286EA0E, v13);
  DgnString::~DgnString(&v49);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26286EA0E);
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2864);
  if (v50)
  {
    v16 = v49;
  }

  else
  {
    v16 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v15, (a3 + 1), byte_26286EA0E, (a3 + 1), byte_26286EA0E, v16);
  v46 = a6;
  DgnString::~DgnString(&v49);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, (a3 + 1), byte_26286EA0E);
  v18 = *(this + 2);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(*this + 8 * v19);
      if (v23)
      {
        v48 = 0;
        v49 = 0;
        v47 = 0;
        ParamSetHolder::printSize(v23, v19, (a3 + 2), &v49, &v48, &v47);
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
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2864);
  if (v50)
  {
    v31 = v49;
  }

  else
  {
    v31 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), byte_26286EA0E, (34 - a3), (34 - a3), v31, v28, v29, v21);
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

  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2866);
  if (v50)
  {
    v43 = v49;
  }

  else
  {
    v43 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, (a3 + 1), byte_26286EA0E, (34 - a3), (34 - a3), v43, v38, v39, v41);
  DgnString::~DgnString(&v49);
  *a4 += v38;
  *a5 += v39;
  *v46 += v41;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/psholder.cpp", 2867);
  if (v50)
  {
    v45 = v49;
  }

  else
  {
    v45 = byte_26286EA0E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, a3, byte_26286EA0E, (35 - a3), (35 - a3), v45, *a4, *a5, *v46);
  DgnString::~DgnString(&v49);
}

void sub_2625CD584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *ParamSetHolderMgr::getLatticeNBestParamSet(ParamSetHolderMgr *this, unsigned int a2, unsigned int a3)
{
  ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(this, a2);
  if (!ParamSetHolder)
  {
    return 0;
  }

  ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, a3);
  if (!ParamSet)
  {
    return 0;
  }
}

void *ParamSetHolderMgr::getPronGuessParamSet(ParamSetHolderMgr *this, unsigned int a2, unsigned int a3)
{
  ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(this, a2);
  if (!ParamSetHolder)
  {
    return 0;
  }

  ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, a3);
  if (!ParamSet)
  {
    return 0;
  }
}

void *ParamSetHolderMgr::getSearchParamSet(ParamSetHolderMgr *this, unsigned int a2, unsigned int a3)
{
  ParamSetHolder = ParamSetHolderMgr::getParamSetHolder(this, a2);
  if (!ParamSetHolder)
  {
    return 0;
  }

  ParamSet = ParamSetHolder::getParamSet(ParamSetHolder, a3);
  if (!ParamSet)
  {
    return 0;
  }
}

void *upgrade0002(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  BoolParameter = DynamicParamSet::getBoolParameter(a3, "AdaptationConTransAccComputeExtraGlobalTransform");
  DynamicParamSet::setBoolParameter(a15, "AdaptationConTransAccComputeHierScorerTransforms", BoolParameter);

  return DynamicParamSet::removeParameter(a15, "AdaptationConTransAccComputeExtraGlobalTransform");
}

uint64_t upgrade0006(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  BoolParameter = DynamicParamSet::getBoolParameter(a4, "ChannelAdaptationMeansUseGlobalAccum");
  DynamicParamSet::removeParameter(a16, "ChannelAdaptationMeansUseGlobalAccum");

  return DynamicParamSet::setIntParameter(a16, "ChannelAdaptationMeansAccumSmoothingWindowMicroseconds", BoolParameter << 31 >> 31);
}

void *upgrade0009(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::removeParameter(a24, "SearchConstraintLatticeMaxSyntheticSilenceFrames");
  DynamicParamSet::removeParameter(a24, "SearchConstraintLatticeMergeNodeMaxFrames");
  DynamicParamSet::removeParameter(a24, "SearchConstraintLatticePreserveTimes");

  return DynamicParamSet::removeParameter(a24, "SearchGenerateConstraintLattice");
}

uint64_t upgrade0012(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a24, "SearchActiveWordHasMergedLatticeLinkId", 0);

  return DynamicParamSet::setIntParameter(a24, "SearchLatticeTimeConstraintDistanceMaxFrames", -1);
}

void *upgrade0014(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  result = DynamicParamSet::removeParameter(a24, "SearchActiveCountLimitScoreCompareWithBeam");
  if (*(a1 + 2) <= 1u)
  {

    return DgnString::stringPrintf(a1, " Removed parameter SearchActiveCountLimitScoreCompareWithBeam added in 1.22.100 fork.");
  }

  return result;
}

uint64_t upgrade0015(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a20, "PrefiltererBuildDisableHierarchicalScorer", 0);
  DynamicParamSet::setBoolParameter(a20, "PrefiltererBuildDisableGPUScorer", 0);
  DynamicParamSet::setBoolParameter(a24, "SearchDisableHierarchicalScorer", 0);

  return DynamicParamSet::setBoolParameter(a24, "SearchDisableGPUScorer", 0);
}

uint64_t upgrade0016(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a21, "PrefiltererPelScoreUseBestCompScore", 0);

  return DynamicParamSet::setBoolParameter(a24, "SearchPelScoreUseBestCompScore", 0);
}

void upgrade0017(DgnString *a1, const char **a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::removeParameter(a20, "PrefiltererBuildHierScorerCutoffList");
  DynamicParamSet::removeParameter(a24, "SearchHierScorerCutoffList");
  DynamicParamSet::setStringParameter(a20, "PrefiltererBuildHierScorerCutoffRatioList", byte_26286EA0E, 0);
  DynamicParamSet::setStringParameter(a24, "SearchHierScorerCutoffRatioList", byte_26286EA0E, 0);
  DgnString::DgnString(v33);
  IntParameter = DynamicParamSet::getIntParameter(a8, "PrefiltererBuildHierInactiveComponentScore");
  if (IntParameter <= 299)
  {
    DynamicParamSet::setIntParameter(a20, "PrefiltererBuildHierInactiveComponentScore", 400);
    if (*(a1 + 2) <= 1u)
    {
      if (v34 >= 2)
      {
        DgnString::operator+=(v33, ";");
      }

      if (*(a2 + 2))
      {
        v30 = *a2;
      }

      else
      {
        v30 = byte_26286EA0E;
      }

      DgnString::printfAppend(v33, " Increased parameter PrefiltererBuildHierInactiveComponentScore from %d to %d in param set '%.500s'", IntParameter, 400, v30);
    }
  }

  v31 = DynamicParamSet::getIntParameter(a12, "SearchHierInactiveComponentScore");
  if (v31 <= 299)
  {
    DynamicParamSet::setIntParameter(a24, "SearchHierInactiveComponentScore", 400);
    if (*(a1 + 2) <= 1u)
    {
      if (v34 >= 2)
      {
        DgnString::operator+=(v33, ";");
      }

      if (*(a2 + 2))
      {
        v32 = *a2;
      }

      else
      {
        v32 = byte_26286EA0E;
      }

      DgnString::printfAppend(v33, " Increased parameter SearchHierInactiveComponentScore from %d to %d in param set '%.500s'", v31, 400, v32);
    }
  }

  if (*(a1 + 2) <= 1u)
  {
    DgnString::operator=(a1, v33);
  }

  DgnString::~DgnString(v33);
}

void sub_2625CDC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t upgrade0018(DgnString *a1, const char **a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  result = DynamicParamSet::getIntParameter(a8, "PrefiltererBuildHierInactiveComponentScore");
  if (result <= 299)
  {
    v29 = result;
    result = DynamicParamSet::setIntParameter(a20, "PrefiltererBuildHierInactiveComponentScore", 400);
    if (*(a1 + 2) <= 1u)
    {
      if (*(a2 + 2))
      {
        v30 = *a2;
      }

      else
      {
        v30 = byte_26286EA0E;
      }

      return DgnString::stringPrintf(a1, " Increased parameter PrefiltererBuildHierInactiveComponentScore from %d to %d in param set '%.500s'", v29, 400, v30);
    }
  }

  return result;
}

uint64_t upgrade0020(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  EnumParameter = DynamicParamSet::getEnumParameter(a12, "FstCoreSearchType");
  DynamicParamSet::removeParameter(a24, "FstCoreSearchType");
  v27 = strcmp(EnumParameter, "ViteAIX") != 0;

  return DynamicParamSet::setBoolParameter(a24, "FstCoreGenerateLattice", v27);
}

uint64_t upgrade0021(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a24, "FstCoreHashTokens", 0);

  return DynamicParamSet::setBoolParameter(a24, "FstCoreUseFwdBwdAlgorithm", 0);
}

void upgrade0024(DgnString *a1, const char **a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DgnString::DgnString(v53);
  EnumParameter = DynamicParamSet::getEnumParameter(a9, "PrefiltererAdjustThreshScoreType");
  v29 = strcmp(EnumParameter, "BestPel");
  if (!v29)
  {
    if (*(a1 + 2) <= 1u)
    {
      if (v54 >= 2)
      {
        DgnString::operator+=(v53, ";");
      }

      if (*(a2 + 2))
      {
        v30 = *a2;
      }

      else
      {
        v30 = byte_26286EA0E;
      }

      DgnString::printfAppend(v53, " Removed parameter PrefiltererAdjustThreshScoreType='%.500s' in param set '%.500s'", EnumParameter, v30);
    }

    IntParameter = DynamicParamSet::getIntParameter(a9, "PrefiltererMaxSeedScore");
    v32 = IntParameter;
    if ((IntParameter & 0x80000000) == 0)
    {
      v33 = IntParameter <= 0x3D3 ? IntParameter + 20 : 1000;
      DynamicParamSet::setIntParameter(a21, "PrefiltererMaxSeedScore", v33);
      if (*(a1 + 2) <= 1u)
      {
        if (v54 >= 2)
        {
          DgnString::operator+=(v53, ";");
        }

        if (*(a2 + 2))
        {
          v34 = *a2;
        }

        else
        {
          v34 = byte_26286EA0E;
        }

        DgnString::printfAppend(v53, " Changed parameter PrefiltererMaxSeedScore from %d to %d in param set '%.500s'", v32, v33, v34);
      }
    }

    v35 = DynamicParamSet::getIntParameter(a9, "PrefiltererPelBackoffThreshScoreDecrement");
    v36 = v35;
    if ((v35 & 0x80000000) == 0)
    {
      v37 = v35 <= 0x14 ? 20 : v35;
      v38 = v37 - 20;
      DynamicParamSet::setIntParameter(a21, "PrefiltererPelBackoffThreshScoreDecrement", v37 - 20);
      if (*(a1 + 2) <= 1u)
      {
        if (v54 >= 2)
        {
          DgnString::operator+=(v53, ";");
        }

        if (*(a2 + 2))
        {
          v39 = *a2;
        }

        else
        {
          v39 = byte_26286EA0E;
        }

        DgnString::printfAppend(v53, " Changed parameter PrefiltererPelBackoffThreshScoreDecrement from %d to %d in param set '%.500s'", v36, v38, v39);
      }
    }

    v40 = DynamicParamSet::getIntParameter(a9, "PrefiltererReturnListThreshScoreDecrement");
    if (v40 >= 100)
    {
      DynamicParamSet::setIntParameter(a21, "PrefiltererReturnListThreshScoreDecrement", v40 - 20);
      if (*(a1 + 2) <= 1u)
      {
        if (v54 >= 2)
        {
          DgnString::operator+=(v53, ";");
        }

        if (*(a2 + 2))
        {
          v41 = *a2;
        }

        else
        {
          v41 = byte_26286EA0E;
        }

        DgnString::printfAppend(v53, " Changed parameter PrefiltererReturnListThreshScoreDecrement from %d to %d in param set '%.500s'", v40, v40 - 20, v41);
      }
    }
  }

  v42 = DynamicParamSet::getEnumParameter(a12, "SearchAdjustThreshScoreType");
  if (!strcmp(v42, "BestPelAndSuccessor") || !strcmp(v42, "BestPel"))
  {
    if (*(a1 + 2) <= 1u)
    {
      if (v54 >= 2)
      {
        DgnString::operator+=(v53, ";");
      }

      if (*(a2 + 2))
      {
        v44 = *a2;
      }

      else
      {
        v44 = byte_26286EA0E;
      }

      DgnString::printfAppend(v53, " Removed parameter SearchAdjustThreshScoreType='%.500s' in param set '%.500s'", v42, v44);
    }

    v45 = DynamicParamSet::getIntParameter(a12, "SearchWordEndAgainstBestWordEndThreshScoreDecrement");
    if (v45 <= 99)
    {
      v46 = 190;
    }

    else
    {
      v46 = 210;
    }

    DynamicParamSet::setIntParameter(a24, "SearchWordEndAgainstBestWordEndThreshScoreDecrement", v46);
    if (*(a1 + 2) <= 1u)
    {
      if (v54 >= 2)
      {
        DgnString::operator+=(v53, ";");
      }

      if (*(a2 + 2))
      {
        v47 = *a2;
      }

      else
      {
        v47 = byte_26286EA0E;
      }

      DgnString::printfAppend(v53, " Changed parameter SearchWordEndAgainstBestWordEndThreshScoreDecrement from %d to %d in param set '%.500s'", v45, v46, v47);
    }

    v48 = DynamicParamSet::getIntParameter(a12, "SearchWordEndThreshScoreDecrement");
    DynamicParamSet::setIntParameter(a24, "SearchWordEndThreshScoreDecrement", 120);
    if (*(a1 + 2) <= 1u)
    {
      if (v54 >= 2)
      {
        DgnString::operator+=(v53, ";");
      }

      if (*(a2 + 2))
      {
        v49 = *a2;
      }

      else
      {
        v49 = byte_26286EA0E;
      }

      DgnString::printfAppend(v53, " Changed parameter SearchWordEndThreshScoreDecrement from %d to %d in param set '%.500s'", v48, 120, v49);
    }

    v43 = 1;
  }

  else
  {
    v43 = 0;
  }

  DynamicParamSet::removeParameter(a21, "PrefiltererAdjustThreshScoreType");
  DynamicParamSet::removeParameter(a24, "SearchAdjustThreshScoreType");
  v50 = DynamicParamSet::getIntParameter(a12, "SearchWordEndAgainstPrevBestNodeThreshScore");
  DynamicParamSet::removeParameter(a24, "SearchWordEndAgainstPrevBestNodeThreshScore");
  v51 = v43 ^ 1;
  if (!v29)
  {
    v51 = 0;
  }

  if ((v51 & 1) == 0 && *(a1 + 2) <= 1u)
  {
    if (v54 >= 2)
    {
      DgnString::operator+=(v53, ";");
    }

    if (*(a2 + 2))
    {
      v52 = *a2;
    }

    else
    {
      v52 = byte_26286EA0E;
    }

    DgnString::printfAppend(v53, " Removed parameter SearchWordEndAgainstPrevBestNodeThreshScore=%d in param set '%.500s'", v50, v52);
  }

  if (*(a1 + 2) <= 1u)
  {
    DgnString::operator=(a1, v53);
  }

  DgnString::~DgnString(v53);
}

void sub_2625CE354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t upgrade0025(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a21, "PrefiltererFmpeWindowTruncateUnavailableFrames", 1);

  return DynamicParamSet::setBoolParameter(a24, "SearchFmpeWindowTruncateUnavailableFrames", 1);
}

uint64_t upgrade0031(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  if (*(a1 + 2) <= 1u)
  {
    DgnString::stringPrintf(a1, " Added ParamSetType PARAMSETTYPE_USERDELTA (%d).", *(a26 + 6));
  }

  DynamicParamSet::setEnumParameter(a26, "UserDeltaTyingType", "SingleGenone", 0);
  DynamicParamSet::setIntParameter(a26, "UserDeltaRunLengthMin", 1);
  DynamicParamSet::setIntParameter(a26, "UserDeltaRunLengthRange", 126);

  return DynamicParamSet::setIntParameter(a26, "UserDeltaInclusionMinDivergence", 0);
}

void upgrade0032(DgnString *a1, const char **a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::removeParameter(a21, "PrefiltererFmpeWindowTruncateUnavailableFrames");
  DynamicParamSet::removeParameter(a24, "SearchFmpeWindowTruncateUnavailableFrames");
  DgnString::DgnString(v30);
  if (DynamicParamSet::getBoolParameter(a9, "PrefiltererFmpeWindowTruncateUnavailableFrames") && *(a1 + 2) <= 1u)
  {
    if (v31 >= 2)
    {
      DgnString::operator+=(v30, ";");
    }

    if (*(a2 + 2))
    {
      v28 = *a2;
    }

    else
    {
      v28 = byte_26286EA0E;
    }

    DgnString::printfAppend(v30, " Changed behavior away from existing True setting of PrefiltererFmpeWindowTruncateUnavailableFrames in param set '%.500s'", v28);
  }

  if (DynamicParamSet::getBoolParameter(a12, "SearchFmpeWindowTruncateUnavailableFrames") && *(a1 + 2) <= 1u)
  {
    if (v31 >= 2)
    {
      DgnString::operator+=(v30, ";");
    }

    if (*(a2 + 2))
    {
      v29 = *a2;
    }

    else
    {
      v29 = byte_26286EA0E;
    }

    DgnString::printfAppend(v30, " Changed behavior away from existing True setting of SearchFmpeWindowTruncateUnavailableFrames in param set '%.500s'", v29);
  }

  if (*(a1 + 2) <= 1u)
  {
    DgnString::operator=(a1, v30);
  }

  DgnString::~DgnString(v30);
}

void sub_2625CE660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t upgrade0033(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a16, "ChannelMaxNormEnergyUseOnline", 0);
  DynamicParamSet::setIntParameter(a16, "ChannelOnlineMaxNormEnergyInitialWindowFrames", 0);
  DynamicParamSet::setIntParameter(a16, "ChannelOnlineMaxNormEnergyGeneralRampFactor", 1000);

  return DynamicParamSet::setIntParameter(a16, "ChannelOnlineMaxNormEnergyGeneralDecayValue", 0);
}

uint64_t upgrade0034(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  IntParameter = DynamicParamSet::getIntParameter(a12, "SearchLatticeLinksPerSecondLimit");
  DynamicParamSet::setIntParameter(a24, "SearchLatticePruneLinksPerSecondLimit", IntParameter);
  DynamicParamSet::removeParameter(a24, "SearchLatticeLinksPerSecondLimit");
  DynamicParamSet::setIntParameter(a24, "SearchLatticeAbortOnNumLinks", 0);
  DynamicParamSet::setIntParameter(a24, "SearchLatticeAbortOnNumNodes", 0);
  DynamicParamSet::setIntParameter(a24, "SearchLatticeAbortOnScaledAverageLinksPerFrame", 0);

  return DynamicParamSet::setIntParameter(a24, "SearchLatticeAbortOnScaledAverageNodesPerFrame", 0);
}

uint64_t upgrade0037(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  if (DynamicParamSet::getBoolParameter(a12, "FstCoreGenerateLattice"))
  {
    v26 = "Immediate";
  }

  else
  {
    v26 = "None";
  }

  DynamicParamSet::setEnumParameter(a24, "FstCoreLatticeGeneration", v26, 0);
  DynamicParamSet::removeParameter(a24, "FstCoreGenerateLattice");
  DoubleParameter = DynamicParamSet::getDoubleParameter(a12, "FstCoreBeam");
  DynamicParamSet::setDoubleParameter(a24, "FstCoreLatticeBeam", DoubleParameter);
  v28 = DoubleParameter * -0.5;
  if (DoubleParameter * -0.5 < -10000.0)
  {
    v28 = -10000.0;
  }

  return DynamicParamSet::setDoubleParameter(a24, "FstCoreLateLatticeArcFingerSuckPenalty", v28);
}

void *upgrade0039(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::removeParameter(a24, "FstCorePelScoreScale");

  return DynamicParamSet::removeParameter(a24, "FstCoreAttilaLatticeOutputFileNamePrefix");
}

uint64_t upgrade0044(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DoubleParameter = DynamicParamSet::getDoubleParameter(a12, "FstCoreLateLatticeArcFingerSuckPenalty");
  if (DoubleParameter > -1.0)
  {
    DoubleParameter = -1.0;
  }

  return DynamicParamSet::setDoubleParameter(a24, "FstCoreLateLatticeArcFingerSuckPenalty", DoubleParameter);
}

char *upgrade0048(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::removeParameter(a24, "SearchPartialExtendWithPrefilterer");
  if (DynamicParamSet::getBoolParameter(a12, "SearchPartialExtendWithPrefilterer"))
  {
    v26 = "Complete";
  }

  else
  {
    v26 = "None";
  }

  return DynamicParamSet::setEnumParameter(a24, "SearchPartialIncludePrefiltererResult", v26, 0);
}

uint64_t upgrade0051(DgnString *a1, const DgnString *a2, const DynamicParamSet *a3, const DynamicParamSet *a4, const DynamicParamSet *a5, const DynamicParamSet *a6, const DynamicParamSet *a7, const DynamicParamSet *a8, const DynamicParamSet *a9, const DynamicParamSet *a10, const DynamicParamSet *a11, const DynamicParamSet *a12, const DynamicParamSet *a13, const DynamicParamSet *a14, DynamicParamSet *a15, DynamicParamSet *a16, DynamicParamSet *a17, DynamicParamSet *a18, DynamicParamSet *a19, DynamicParamSet *a20, DynamicParamSet *a21, DynamicParamSet *a22, DynamicParamSet *a23, DynamicParamSet *a24, DynamicParamSet *a25, DynamicParamSet *a26)
{
  DynamicParamSet::setBoolParameter(a21, "PrefiltererReturnDistanceAdjustDuration", 0);
  DynamicParamSet::setIntParameter(a24, "SearchPartialIncompleteMaxWords", 0);
  DynamicParamSet::setIntParameter(a24, "SearchPartialIncompleteMinListFrames", 1);
  DynamicParamSet::setIntParameter(a24, "SearchPartialIncompleteMinWordFrames", 1);
  DynamicParamSet::setIntParameter(a24, "SearchPartialCompleteMinWordFrames", 1);

  return DynamicParamSet::setIntParameter(a24, "SearchPartialRegularMinWordFrames", 1);
}

uint64_t DgnPrimArray<unsigned int>::searchLastOrBefore(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2;
  LODWORD(v6) = a2;
  if (a3 > a2)
  {
    v10 = a3 - 1;
    v11 = a2;
    do
    {
      if (v11 == v10 - 1)
      {
        v6 = v10;
      }

      else
      {
        v6 = ((v11 + v10) / 2);
      }

      v12 = a5(*a1 + 4 * v6, a4);
      if (v12)
      {
        if (v12 < 0)
        {
          v6 = (v6 + 1);
        }

        else
        {
          v10 = v6 - 1;
          v6 = v11;
        }
      }

      else if (v10 == v11)
      {
        return v6;
      }

      v11 = v6;
    }

    while (v6 <= v10);
  }

  if (v6 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v6 - 1);
  }
}

void *DgnIOwnArray<DgnPrimArray<unsigned int> *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<DgnPrimArray<unsigned int>>(*(*a1 + v3));
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

uint64_t DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(uint64_t a1)
{
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::wipeOtherArrays(a1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 40);
  DgnIOwnArray<DgnPrimArray<unsigned int> *>::releaseAll(a1 + 24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 8);
  return a1;
}

uint64_t DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::wipeOtherArrays(uint64_t result)
{
  if (*(result + 32))
  {
    v1 = result;
    v2 = 0;
    do
    {
      result = DgnDelete<DgnPrimArray<unsigned int>>(*(*(v1 + 24) + 8 * v2));
      *(*(v1 + 24) + 8 * v2++) = 0;
    }

    while (v2 < *(v1 + 32));
  }

  return result;
}

void *DgnIOwnArray<ParamSetBase *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<AdapterParamSet>(*(*a1 + v3));
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

uint64_t DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sizeObject<unsigned int>(a1 + 8, a2);
  v5 = sizeObject<DgnPrimArray<unsigned int> *>(a1 + 24, v2);
  v6 = sizeObject<unsigned short>(a1 + 40, v2);
  v7 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 4;
  }

  if (v2 == 3)
  {
    v7 = 0;
  }

  return ((v2 != 3) | (2 * (v2 != 3))) + 2 * (v2 != 3) + v4 + v5 + v6 + v7 + 2 * v7;
}

uint64_t sizeObject<DgnPrimArray<unsigned int> *>(uint64_t a1, int a2)
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
          v9 += sizeObject<unsigned int>(v10, a2);
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

uint64_t Hash<DgnString,DgnString,DgnStringScope,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524040;
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
  DgnString::DgnString(v11);
  v7 = gShadowDiagnosticShowIdealizedObjectSizes;
  v8 = sizeObject(v11, 2);
  if (v7)
  {
    v9 = 4;
  }

  else
  {
    v9 = 8;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v8 + v9 + 8;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  DgnString::~DgnString(v11);
  return a1;
}

void sub_2625CF004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v8);
  DgnPool::~DgnPool(v7);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<DgnString,DgnString,DgnStringScope,unsigned int>::~Hash(uint64_t a1)
{
  Hash<DgnString,DgnString,DgnStringScope,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287524040;
  if (*(a1 + 8))
  {
    Hash<DgnString,DgnString,DgnStringScope,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

void Hash<DgnString,DgnString,DgnStringScope,unsigned int>::removeAll(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(a1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(a1 + 96);
          if (v7)
          {
            v7(v5 + 2);
          }

          v8 = *(a1 + 104);
          if (v8)
          {
            v8(v5 + 4);
          }

          DgnString::~DgnString((v5 + 2));
          *v5 = *(a1 + 32);
          *(a1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(a1 + 80);
        v2 = *(a1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(a1 + 8) = 0;
}

uint64_t *Hash<DgnString,DgnString,DgnStringScope,unsigned int>::findBucket(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    v2 = *a2;
  }

  else
  {
    v2 = byte_26286EA0E;
  }

  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    v5 = (v2 + 1);
    do
    {
      HIDWORD(v6) = v4;
      LODWORD(v6) = v4;
      v4 = (v6 >> 19) + v3;
      v7 = *v5++;
      v3 = v7;
    }

    while (v7);
  }

  else
  {
    v4 = 0;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (-1640531527 * v4) >> -v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = (*(a1 + 80) + 8 * v9);
  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11;
      if (*(v11 + 8) == v4)
      {
        v13 = *(v11 + 24) ? *(v11 + 16) : byte_26286EA0E;
        if (!strcmp(v13, v2))
        {
          break;
        }
      }

      v11 = *v12;
      v10 = v12;
    }

    while (*v12);
  }

  return v10;
}

void DynamicParamSet::~DynamicParamSet(DynamicParamSet *this)
{
  DgnArray<ParamValue>::releaseAll(this + 32);

  DgnString::~DgnString(this);
}

void *DgnArray<ParamValue>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 40 * v2 - 40;
    do
    {
      ParamValue::~ParamValue((*a1 + v3));
      v3 -= 40;
    }

    while (v3 != -40);
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

unint64_t StartupChannelParamSpecMgr(void)
{
  v65 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v65, "ChannelEnablePitchTracking", &byte_262899963, &byte_262899963, &sChannelEnablePitchTrackingBoolHistory);
  v71 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v71, "ChannelWaveInputClippingThreshold", &byte_262899963, &byte_262899963, &sChannelWaveInputClippingThresholdIntHistory);
  v69 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v69, "ChannelWaveInputEnableSpectralWarping", &byte_262899963, &byte_262899963, &sChannelWaveInputEnableSpectralWarpingBoolHistory);
  v72 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v72, "ChannelWaveStereoInputSelectSource", &byte_262899963, &byte_262899963, &sChannelWaveStereoInputSelectSourceIntHistory);
  v70 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v70, "ChannelMaxNormEnergyUseOnline", &byte_262899963, &byte_262899963, &sChannelMaxNormEnergyUseOnlineBoolHistory);
  v68 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v68, "ChannelOnlineMaxNormEnergyInitialWindowFrames", &byte_262899963, &byte_262899963, &sChannelOnlineMaxNormEnergyInitialWindowFramesIntHistory);
  v67 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v67, "ChannelOnlineMaxNormEnergyGeneralRampFactor", &byte_262899963, &byte_262899963, &sChannelOnlineMaxNormEnergyGeneralRampFactorIntHistory);
  v66 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v66, "ChannelOnlineMaxNormEnergyGeneralDecayValue", &byte_262899963, &byte_262899963, &sChannelOnlineMaxNormEnergyGeneralDecayValueIntHistory);
  v64 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v64, "ChannelWavePacketLossDetectionPacketSize", &byte_262899963, &byte_262899963, &sChannelWavePacketLossDetectionPacketSizeIntHistory);
  v63 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v63, "ChannelWavePacketLossDetectionSlopeThresh", &byte_262899963, &byte_262899963, &sChannelWavePacketLossDetectionSlopeThreshIntHistory);
  v61 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v61, "ChannelWavePacketLossDetectionSlopeCountPercent", &byte_262899963, &byte_262899963, &sChannelWavePacketLossDetectionSlopeCountPercentIntHistory);
  v60 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v60, "ChannelWavePacketLossDetectionWindowSize", &byte_262899963, &byte_262899963, &sChannelWavePacketLossDetectionWindowSizeIntHistory);
  v58 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v58, "ChannelAdaptationDelayApplyTillUttEnd", &byte_262899963, &byte_262899963, &sChannelAdaptationDelayApplyTillUttEndBoolHistory);
  v59 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v59, "ChannelAdaptationMeansRelevance", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansRelevanceIntHistory);
  v57 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v57, "ChannelAdaptationMeansAccumSmoothingWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansAccumSmoothingWindowMicrosecondsIntHistory);
  v54 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v54, "ChannelAdaptationMeansAdaptFastInitially", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansAdaptFastInitiallyBoolHistory);
  v55 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v55, "ChannelAdaptationMeansDelayApplyInitially", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansDelayApplyInitiallyBoolHistory);
  v53 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v53, "ChannelAdaptationMeansInitialWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansInitialWindowMicrosecondsIntHistory);
  v56 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v56, "ChannelAdaptationMeansWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansWindowMicrosecondsIntHistory);
  v52 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v52, "ChannelAdaptationMeansRelevanceScale", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansRelevanceScaleDoubleHistory);
  v62 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v62, "ChannelAdaptationMeansUseGlobalAccum", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansUseGlobalAccumBoolHistory);
  v50 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v50, "ChannelAdaptationMeansReestimationType", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansReestimationTypeEnumHistory);
  v51 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v51, "ChannelAdaptationMeansUseSilenceTracker", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansUseSilenceTrackerBoolHistory);
  v49 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v49, "ChannelAdaptationMeansC0UseSilenceTracker", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansC0UseSilenceTrackerBoolHistory);
  v48 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v48, "ChannelAdaptationMeansApplySynchronous", &byte_262899963, &byte_262899963, &sChannelAdaptationMeansApplySynchronousBoolHistory);
  v45 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v45, "ChannelAdaptationCDFRelevance", &byte_262899963, &byte_262899963, &sChannelAdaptationCDFRelevanceIntHistory);
  v39 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v39, "ChannelAdaptationCDFAdaptFastInitially", &byte_262899963, &byte_262899963, &sChannelAdaptationCDFAdaptFastInitiallyBoolHistory);
  v41 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v41, "ChannelAdaptationCDFWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelAdaptationCDFWindowMicrosecondsIntHistory);
  v36 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v36, "ChannelAdaptationCDFUseSilenceTracker", &byte_262899963, &byte_262899963, &sChannelAdaptationCDFUseSilenceTrackerBoolHistory);
  v37 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v37, "ChannelAdaptationInterpolatedCDFMaxPercentMassPerBin", &byte_262899963, &byte_262899963, &sChannelAdaptationInterpolatedCDFMaxPercentMassPerBinIntHistory);
  v47 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v47, "ChannelAdaptationVarianceRelevance", &byte_262899963, &byte_262899963, &sChannelAdaptationVarianceRelevanceIntHistory);
  v44 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v44, "ChannelAdaptationVarianceAdaptFastInitially", &byte_262899963, &byte_262899963, &sChannelAdaptationVarianceAdaptFastInitiallyBoolHistory);
  v46 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v46, "ChannelAdaptationVarianceWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelAdaptationVarianceWindowMicrosecondsIntHistory);
  v40 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v40, "ChannelAdaptationVarianceUseSilenceTracker", &byte_262899963, &byte_262899963, &sChannelAdaptationVarianceUseSilenceTrackerBoolHistory);
  v43 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v43, "ChannelSilenceTrackerInitialLevel", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerInitialLevelIntHistory);
  v38 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v38, "ChannelSilenceTrackerBackgroundThresh", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerBackgroundThreshIntHistory);
  v42 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v42, "ChannelSilenceTrackerSpeechThresh", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerSpeechThreshIntHistory);
  v33 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v33, "ChannelSilenceTrackerIncrementPerSecond", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerIncrementPerSecondIntHistory);
  v30 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v30, "ChannelSilenceTrackerDecrementPerSecond", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerDecrementPerSecondIntHistory);
  v31 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v31, "ChannelSilenceTrackerOutlierWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerOutlierWindowMicrosecondsIntHistory);
  v27 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v27, "ChannelSilenceTrackerOutlierMinTriggerPercent", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerOutlierMinTriggerPercentIntHistory);
  v29 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v29, "ChannelSilenceTrackerRelevance", &byte_262899963, &byte_262899963, &sChannelSilenceTrackerRelevanceIntHistory);
  v35 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v35, "ChannelThreadingType", &byte_262899963, &byte_262899963, &sChannelThreadingTypeEnumHistory);
  v26 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v26, "ChannelSpectralSubtractionDelayMicroseconds", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionDelayMicrosecondsIntHistory);
  v28 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v28, "ChannelSpectralSubtractionTargetSNR", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionTargetSNRDoubleHistory);
  v24 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v24, "ChannelSpectralSubtractionDisableAtTargetSNR", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionDisableAtTargetSNRBoolHistory);
  v23 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v23, "ChannelSpectralSubtractionInitialWindowMicroseconds", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionInitialWindowMicrosecondsIntHistory);
  v17 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v17, "ChannelSpectralSubtractionDecayRate", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionDecayRateDoubleHistory);
  v20 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v20, "ChannelSpectralSubtractionMinSNRMicroseconds", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionMinSNRMicrosecondsIntHistory);
  v15 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v15, "ChannelSpectralSubtractionMaxNoiseScaleChange", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionMaxNoiseScaleChangeDoubleHistory);
  v14 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v14, "ChannelSpectralSubtractionStartDecimationMicroseconds", &byte_262899963, &byte_262899963, &sChannelSpectralSubtractionStartDecimationMicrosecondsIntHistory);
  v25 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v25, "UttDetBackgroundFloorIncreasePerSecond", &byte_262899963, &byte_262899963, &sUttDetBackgroundFloorIncreasePerSecondIntHistory);
  v32 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v32, "UttDetResetFileChannelStateAfterSection", &byte_262899963, &byte_262899963, &sUttDetResetFileChannelStateAfterSectionBoolHistory);
  v34 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v34, "UttDetSpeechThreshOffsetPercent", &byte_262899963, &byte_262899963, &sUttDetSpeechThreshOffsetPercentIntHistory);
  v22 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v22, "UttDetBackgroundThreshPercent", &byte_262899963, &byte_262899963, &sUttDetBackgroundThreshPercentIntHistory);
  v21 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v21, "UttDetBeginUttWindowMicroseconds", &byte_262899963, &byte_262899963, &sUttDetBeginUttWindowMicrosecondsIntHistory);
  v18 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v18, "UttDetBeginUttMinTriggerPercent", &byte_262899963, &byte_262899963, &sUttDetBeginUttMinTriggerPercentIntHistory);
  v19 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v19, "UttDetEndUttWindowMicroseconds", &byte_262899963, &byte_262899963, &sUttDetEndUttWindowMicrosecondsIntHistory);
  v13 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v13, "UttDetEndUttMinTriggerPercent", &byte_262899963, &byte_262899963, &sUttDetEndUttMinTriggerPercentIntHistory);
  v16 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v16, "UttDetInitializeWindowMicroseconds", &byte_262899963, &byte_262899963, &sUttDetInitializeWindowMicrosecondsIntHistory);
  v11 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v11, "UttDetInitialBackgroundLevelMin", &byte_262899963, &byte_262899963, &sUttDetInitialBackgroundLevelMinIntHistory);
  v0 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v0, "UttDetInitialBackgroundLevelRange", &byte_262899963, &byte_262899963, &sUttDetInitialBackgroundLevelRangeIntHistory);
  v12 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v12, "UttDetSpeechOffsetMin", &byte_262899963, &byte_262899963, &sUttDetSpeechOffsetMinIntHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v1, "UttDetSpeechOffsetRange", &byte_262899963, &byte_262899963, &sUttDetSpeechOffsetRangeIntHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v2, "UttDetSpeechUttSecondsMin", &byte_262899963, &byte_262899963, &sUttDetSpeechUttSecondsMinIntHistory);
  v3 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v3, "UttDetSpeechUttSecondsRange", &byte_262899963, &byte_262899963, &sUttDetSpeechUttSecondsRangeIntHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v4, "UttDetMaxNonSpeechUttSeconds", &byte_262899963, &byte_262899963, &sUttDetMaxNonSpeechUttSecondsIntHistory);
  v5 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v5, "UttDetLimitFrameEnergy", &byte_262899963, &byte_262899963, &sUttDetLimitFrameEnergyBoolHistory);
  v6 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v6, "UttDetBackgroundFloorDecreasePerSecond", &byte_262899963, &byte_262899963, &sUttDetBackgroundFloorDecreasePerSecondIntHistory);
  v7 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v7, "UttDetBackgroundFloorOutlierWindowMicroseconds", &byte_262899963, &byte_262899963, &sUttDetBackgroundFloorOutlierWindowMicrosecondsIntHistory);
  v8 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v8, "UttDetBackgroundFloorOutlierMinTriggerPercent", &byte_262899963, &byte_262899963, &sUttDetBackgroundFloorOutlierMinTriggerPercentIntHistory);
  ParamSpecMgr::addParam(qword_281051F78, v39);
  ParamSpecMgr::addParam(qword_281051F78, v45);
  ParamSpecMgr::addParam(qword_281051F78, v36);
  ParamSpecMgr::addParam(qword_281051F78, v41);
  ParamSpecMgr::addParam(qword_281051F78, v58);
  ParamSpecMgr::addParam(qword_281051F78, v37);
  ParamSpecMgr::addParam(qword_281051F78, v57);
  ParamSpecMgr::addParam(qword_281051F78, v54);
  ParamSpecMgr::addParam(qword_281051F78, v48);
  ParamSpecMgr::addParam(qword_281051F78, v49);
  ParamSpecMgr::addParam(qword_281051F78, v55);
  ParamSpecMgr::addParam(qword_281051F78, v53);
  ParamSpecMgr::addParam(qword_281051F78, v50);
  ParamSpecMgr::addParam(qword_281051F78, v59);
  ParamSpecMgr::addParam(qword_281051F78, v52);
  ParamSpecMgr::addParam(qword_281051F78, v51);
  ParamSpecMgr::addParam(qword_281051F78, v56);
  ParamSpecMgr::addParam(qword_281051F78, v44);
  ParamSpecMgr::addParam(qword_281051F78, v47);
  ParamSpecMgr::addParam(qword_281051F78, v40);
  ParamSpecMgr::addParam(qword_281051F78, v46);
  ParamSpecMgr::addParam(qword_281051F78, v65);
  ParamSpecMgr::addParam(qword_281051F78, v38);
  ParamSpecMgr::addParam(qword_281051F78, v30);
  ParamSpecMgr::addParam(qword_281051F78, v33);
  ParamSpecMgr::addParam(qword_281051F78, v43);
  ParamSpecMgr::addParam(qword_281051F78, v27);
  ParamSpecMgr::addParam(qword_281051F78, v31);
  ParamSpecMgr::addParam(qword_281051F78, v42);
  ParamSpecMgr::addParam(qword_281051F78, v29);
  ParamSpecMgr::addParam(qword_281051F78, v17);
  ParamSpecMgr::addParam(qword_281051F78, v26);
  ParamSpecMgr::addParam(qword_281051F78, v24);
  ParamSpecMgr::addParam(qword_281051F78, v23);
  ParamSpecMgr::addParam(qword_281051F78, v15);
  ParamSpecMgr::addParam(qword_281051F78, v20);
  ParamSpecMgr::addParam(qword_281051F78, v14);
  ParamSpecMgr::addParam(qword_281051F78, v28);
  ParamSpecMgr::addParam(qword_281051F78, v35);
  ParamSpecMgr::addParam(qword_281051F78, v71);
  ParamSpecMgr::addParam(qword_281051F78, v69);
  ParamSpecMgr::addParam(qword_281051F78, v64);
  ParamSpecMgr::addParam(qword_281051F78, v61);
  ParamSpecMgr::addParam(qword_281051F78, v63);
  ParamSpecMgr::addParam(qword_281051F78, v60);
  ParamSpecMgr::addParam(qword_281051F78, v72);
  ParamSpecMgr::addParam(qword_281051F78, v70);
  ParamSpecMgr::addParam(qword_281051F78, v68);
  ParamSpecMgr::addParam(qword_281051F78, v67);
  ParamSpecMgr::addParam(qword_281051F78, v66);
  ParamSpecMgr::addParam(qword_281051F78, v6);
  ParamSpecMgr::addParam(qword_281051F78, v25);
  ParamSpecMgr::addParam(qword_281051F78, v8);
  ParamSpecMgr::addParam(qword_281051F78, v7);
  ParamSpecMgr::addParam(qword_281051F78, v22);
  ParamSpecMgr::addParam(qword_281051F78, v18);
  ParamSpecMgr::addParam(qword_281051F78, v21);
  ParamSpecMgr::addParam(qword_281051F78, v13);
  ParamSpecMgr::addParam(qword_281051F78, v19);
  ParamSpecMgr::addParam(qword_281051F78, v11);
  ParamSpecMgr::addParam(qword_281051F78, v0);
  ParamSpecMgr::addParam(qword_281051F78, v16);
  ParamSpecMgr::addParam(qword_281051F78, v5);
  ParamSpecMgr::addParam(qword_281051F78, v4);
  ParamSpecMgr::addParam(qword_281051F78, v32);
  ParamSpecMgr::addParam(qword_281051F78, v12);
  ParamSpecMgr::addParam(qword_281051F78, v1);
  ParamSpecMgr::addParam(qword_281051F78, v34);
  ParamSpecMgr::addParam(qword_281051F78, v2);
  ParamSpecMgr::addParam(qword_281051F78, v3);
  ParamSpecMgr::addParam(qword_281051F78, v62);
  v9 = qword_281051F78;

  return ParamSpecMgr::sortParams(v9);
}

_DWORD *ChannelParamSet::ChannelParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287527CE0;
  ChannelParamSet::setDefaults(a1);
  return a1;
}

void sub_2625D038C(_Unwind_Exception *a1)
{
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t ChannelParamSet::ChannelParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  v11 = (a1 + 260);
  v12 = (a2 + 260);
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287527CE0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 176) = *(a2 + 176);
  v13 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v13;
  v14 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v14;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 244) = *(a2 + 244);
  *v11 = *v12;
  v11[1] = v12[1];
  *(a1 + 292) = *(a2 + 292);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 308) = *(a2 + 308);
  *(a1 + 312) = *(a2 + 312);
  *(v11 + 56) = *(v12 + 56);
  *(a1 + 332) = *(a2 + 332);
  return a1;
}

uint64_t ChannelParamSet::setDefaults(ChannelParamSet *this)
{
  *(this + 40) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 1, 0, 0);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 2, 0, 0);
  *(this + 48) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 3, 0, 0);
  *(this + 13) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 4, 0, 0);
  *(this + 56) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 5, 0, 0);
  *(this + 15) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 6, 0, 0);
  *(this + 16) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 7, 0, 0);
  *(this + 68) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 8, 0, 0);
  *(this + 69) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 9, 0, 0);
  *(this + 70) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 10, 0, 0);
  *(this + 71) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 11, 0, 0);
  *(this + 18) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 12, 0, 0);
  *(this + 19) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F78, 13);
  *(this + 20) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 14, 0, 0);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_double(qword_281051F78, 15, 0, 0);
  *(this + 96) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 16, 0, 0);
  *(this + 25) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 17, 0, 0);
  *(this + 104) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 18, 0, 0);
  *(this + 27) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 19, 0, 0);
  *(this + 112) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 20, 0, 0);
  *(this + 29) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 21, 0, 0);
  *(this + 120) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 22, 0, 0);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 23, 0, 0);
  *(this + 32) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 24, 0, 0);
  *(this + 33) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 25, 0, 0);
  *(this + 34) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 26, 0, 0);
  *(this + 35) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 27, 0, 0);
  *(this + 36) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 28, 0, 0);
  *(this + 37) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 29, 0, 0);
  *(this + 38) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 30, 0, 0);
  *(this + 20) = ParamSpecMgr::ParamGetDefault_double(qword_281051F78, 31, 0, 0);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 32, 0, 0);
  *(this + 172) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 33, 0, 0);
  *(this + 44) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 34, 0, 0);
  *(this + 23) = ParamSpecMgr::ParamGetDefault_double(qword_281051F78, 35, 0, 0);
  *(this + 48) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 36, 0, 0);
  *(this + 49) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 37, 0, 0);
  *(this + 25) = ParamSpecMgr::ParamGetDefault_double(qword_281051F78, 38, 0, 0);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F78, 39);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 40, 0, 0);
  *(this + 216) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 41, 0, 0);
  *(this + 55) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 42, 0, 0);
  *(this + 56) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 43, 0, 0);
  *(this + 57) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 44, 0, 0);
  *(this + 58) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 45, 0, 0);
  *(this + 59) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 46, 0, 0);
  *(this + 240) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 47, 0, 0);
  *(this + 61) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 48, 0, 0);
  *(this + 62) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 49, 0, 0);
  *(this + 63) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 50, 0, 0);
  *(this + 64) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 51, 0, 0);
  *(this + 65) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 52, 0, 0);
  *(this + 66) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 53, 0, 0);
  *(this + 67) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 54, 0, 0);
  *(this + 68) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 55, 0, 0);
  *(this + 69) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 56, 0, 0);
  *(this + 70) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 57, 0, 0);
  *(this + 71) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 58, 0, 0);
  *(this + 72) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 59, 0, 0);
  *(this + 73) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 60, 0, 0);
  *(this + 74) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 61, 0, 0);
  *(this + 75) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 62, 0, 0);
  *(this + 304) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 63, 0, 0);
  *(this + 77) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 64, 0, 0);
  *(this + 312) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F78, 65, 0, 0);
  *(this + 79) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 66, 0, 0);
  *(this + 80) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 67, 0, 0);
  *(this + 81) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 68, 0, 0);
  *(this + 82) = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 69, 0, 0);
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051F78, 70, 0, 0);
  *(this + 83) = result;
  return result;
}

uint64_t ChannelParamSet::sizeObject(uint64_t a1, int a2)
{
  v3 = a2 != 3;
  v4 = sizeObject(a1 + 8, a2);
  v5 = 36;
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
    return v5 + 152 * (a2 != 3) + v4 + 16 * v3 + 12 * ((a2 != 3) | (4 * (a2 != 3)));
  }
}

uint64_t ChannelParamSet::getBoolParameter(_BYTE *a1, int a2, uint64_t a3)
{
  switch(a2)
  {
    case 1:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 1;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[40];
      return v3 & 1;
    case 2:
      v4 = "int";
      v5 = 2;
      goto LABEL_105;
    case 3:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 3;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[48];
      return v3 & 1;
    case 4:
      v4 = "int";
      v5 = 4;
      goto LABEL_105;
    case 5:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 5;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[56];
      return v3 & 1;
    case 6:
      v4 = "int";
      v5 = 6;
      goto LABEL_105;
    case 7:
      v4 = "int";
      v5 = 7;
      goto LABEL_105;
    case 8:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 8;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[68];
      return v3 & 1;
    case 9:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 9;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[69];
      return v3 & 1;
    case 10:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 10;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[70];
      return v3 & 1;
    case 11:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 11;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[71];
      return v3 & 1;
    case 12:
      v4 = "int";
      v5 = 12;
      goto LABEL_105;
    case 13:
      v4 = "enum";
      v5 = 13;
      goto LABEL_105;
    case 14:
      v4 = "int";
      v5 = 14;
      goto LABEL_105;
    case 15:
      v4 = "double";
      v5 = 15;
      goto LABEL_105;
    case 16:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 16;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[96];
      return v3 & 1;
    case 17:
      v4 = "int";
      v5 = 17;
      goto LABEL_105;
    case 18:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 18;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[104];
      return v3 & 1;
    case 19:
      v4 = "int";
      v5 = 19;
      goto LABEL_105;
    case 20:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 20;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[112];
      return v3 & 1;
    case 21:
      v4 = "int";
      v5 = 21;
      goto LABEL_105;
    case 22:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 22;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[120];
      return v3 & 1;
    case 23:
      v4 = "int";
      v5 = 23;
      goto LABEL_105;
    case 24:
      v4 = "int";
      v5 = 24;
      goto LABEL_105;
    case 25:
      v4 = "int";
      v5 = 25;
      goto LABEL_105;
    case 26:
      v4 = "int";
      v5 = 26;
      goto LABEL_105;
    case 27:
      v4 = "int";
      v5 = 27;
      goto LABEL_105;
    case 28:
      v4 = "int";
      v5 = 28;
      goto LABEL_105;
    case 29:
      v4 = "int";
      v5 = 29;
      goto LABEL_105;
    case 30:
      v4 = "int";
      v5 = 30;
      goto LABEL_105;
    case 31:
      v4 = "double";
      v5 = 31;
      goto LABEL_105;
    case 32:
      v4 = "int";
      v5 = 32;
      goto LABEL_105;
    case 33:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 33;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[172];
      return v3 & 1;
    case 34:
      v4 = "int";
      v5 = 34;
      goto LABEL_105;
    case 35:
      v4 = "double";
      v5 = 35;
      goto LABEL_105;
    case 36:
      v4 = "int";
      v5 = 36;
      goto LABEL_105;
    case 37:
      v4 = "int";
      v5 = 37;
      goto LABEL_105;
    case 38:
      v4 = "double";
      v5 = 38;
      goto LABEL_105;
    case 39:
      v4 = "enum";
      v5 = 39;
      goto LABEL_105;
    case 40:
      v4 = "int";
      v5 = 40;
      goto LABEL_105;
    case 41:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 41;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[216];
      return v3 & 1;
    case 42:
      v4 = "int";
      v5 = 42;
      goto LABEL_105;
    case 43:
      v4 = "int";
      v5 = 43;
      goto LABEL_105;
    case 44:
      v4 = "int";
      v5 = 44;
      goto LABEL_105;
    case 45:
      v4 = "int";
      v5 = 45;
      goto LABEL_105;
    case 46:
      v4 = "int";
      v5 = 46;
      goto LABEL_105;
    case 47:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 47;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[240];
      return v3 & 1;
    case 48:
      v4 = "int";
      v5 = 48;
      goto LABEL_105;
    case 49:
      v4 = "int";
      v5 = 49;
      goto LABEL_105;
    case 50:
      v4 = "int";
      v5 = 50;
      goto LABEL_105;
    case 51:
      v4 = "int";
      v5 = 51;
      goto LABEL_105;
    case 52:
      v4 = "int";
      v5 = 52;
      goto LABEL_105;
    case 53:
      v4 = "int";
      v5 = 53;
      goto LABEL_105;
    case 54:
      v4 = "int";
      v5 = 54;
      goto LABEL_105;
    case 55:
      v4 = "int";
      v5 = 55;
      goto LABEL_105;
    case 56:
      v4 = "int";
      v5 = 56;
      goto LABEL_105;
    case 57:
      v4 = "int";
      v5 = 57;
      goto LABEL_105;
    case 58:
      v4 = "int";
      v5 = 58;
      goto LABEL_105;
    case 59:
      v4 = "int";
      v5 = 59;
      goto LABEL_105;
    case 60:
      v4 = "int";
      v5 = 60;
      goto LABEL_105;
    case 61:
      v4 = "int";
      v5 = 61;
      goto LABEL_105;
    case 62:
      v4 = "int";
      v5 = 62;
      goto LABEL_105;
    case 63:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 63;
        goto LABEL_125;
      }

      if (a3)
      {
        goto LABEL_102;
      }

      v3 = a1[304];
      break;
    case 64:
      v4 = "int";
      v5 = 64;
      goto LABEL_105;
    case 65:
      if (a3 == 1)
      {
        v7 = qword_281051F78;
        v8 = 65;
LABEL_125:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v7, v8);
      }

      else if (a3)
      {
LABEL_102:
        throwWrongQueryMode(a3, "BOOL");
LABEL_106:
        v3 = 0;
      }

      else
      {
        v3 = a1[312];
      }

      break;
    case 66:
      v4 = "int";
      v5 = 66;
      goto LABEL_105;
    case 67:
      v4 = "int";
      v5 = 67;
      goto LABEL_105;
    case 68:
      v4 = "int";
      v5 = 68;
      goto LABEL_105;
    case 69:
      v4 = "int";
      v5 = 69;
      goto LABEL_105;
    case 70:
      v4 = "int";
      v5 = 70;
LABEL_105:
      throwWrongTypeForParamId(v5, v4, "BOOL");
      goto LABEL_106;
    default:
      throwWrongParamIdValue(a2, "BOOL");
      goto LABEL_106;
  }

  return v3 & 1;
}

uint64_t ChannelParamSet::getIntParameter(unsigned int *a1, int a2, uint64_t a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_208;
    case 2:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 2;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 2;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 2;
      goto LABEL_363;
    case 3:
      v3 = "BOOL";
      v4 = 3;
      goto LABEL_208;
    case 4:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[13];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 4;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 4;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 4;
      goto LABEL_363;
    case 5:
      v3 = "BOOL";
      v4 = 5;
      goto LABEL_208;
    case 6:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[15];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 6;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 6;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 6;
      goto LABEL_363;
    case 7:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[16];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 7;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 7;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 7;
      goto LABEL_363;
    case 8:
      v3 = "BOOL";
      v4 = 8;
      goto LABEL_208;
    case 9:
      v3 = "BOOL";
      v4 = 9;
      goto LABEL_208;
    case 10:
      v3 = "BOOL";
      v4 = 10;
      goto LABEL_208;
    case 11:
      v3 = "BOOL";
      v4 = 11;
      goto LABEL_208;
    case 12:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[18];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 12;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 12;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 12;
      goto LABEL_363;
    case 13:
      v3 = "enum";
      v4 = 13;
      goto LABEL_208;
    case 14:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[20];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 14;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 14;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 14;
      goto LABEL_363;
    case 15:
      v3 = "double";
      v4 = 15;
      goto LABEL_208;
    case 16:
      v3 = "BOOL";
      v4 = 16;
      goto LABEL_208;
    case 17:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[25];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 17;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 17;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 17;
      goto LABEL_363;
    case 18:
      v3 = "BOOL";
      v4 = 18;
      goto LABEL_208;
    case 19:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[27];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 19;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 19;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 19;
      goto LABEL_363;
    case 20:
      v3 = "BOOL";
      v4 = 20;
      goto LABEL_208;
    case 21:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[29];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 21;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 21;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 21;
      goto LABEL_363;
    case 22:
      v3 = "BOOL";
      v4 = 22;
      goto LABEL_208;
    case 23:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 23;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 23;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 23;
      goto LABEL_363;
    case 24:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[32];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 24;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 24;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 24;
      goto LABEL_363;
    case 25:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[33];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 25;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 25;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 25;
      goto LABEL_363;
    case 26:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[34];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 26;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 26;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 26;
      goto LABEL_363;
    case 27:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[35];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 27;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 27;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 27;
      goto LABEL_363;
    case 28:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[36];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 28;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 28;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 28;
      goto LABEL_363;
    case 29:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[37];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 29;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 29;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 29;
      goto LABEL_363;
    case 30:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[38];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 30;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 30;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 30;
      goto LABEL_363;
    case 31:
      v3 = "double";
      v4 = 31;
      goto LABEL_208;
    case 32:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[42];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 32;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 32;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 32;
      goto LABEL_363;
    case 33:
      v3 = "BOOL";
      v4 = 33;
      goto LABEL_208;
    case 34:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[44];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 34;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 34;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 34;
      goto LABEL_363;
    case 35:
      v3 = "double";
      v4 = 35;
      goto LABEL_208;
    case 36:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[48];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 36;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 36;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 36;
      goto LABEL_363;
    case 37:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[49];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 37;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 37;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 37;
      goto LABEL_363;
    case 38:
      v3 = "double";
      v4 = 38;
      goto LABEL_208;
    case 39:
      v3 = "enum";
      v4 = 39;
      goto LABEL_208;
    case 40:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[53];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 40;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 40;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 40;
      goto LABEL_363;
    case 41:
      v3 = "BOOL";
      v4 = 41;
      goto LABEL_208;
    case 42:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[55];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 42;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 42;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 42;
      goto LABEL_363;
    case 43:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[56];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 43;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 43;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 43;
      goto LABEL_363;
    case 44:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[57];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 44;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 44;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 44;
      goto LABEL_363;
    case 45:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[58];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 45;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 45;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 45;
      goto LABEL_363;
    case 46:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[59];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 46;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 46;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 46;
      goto LABEL_363;
    case 47:
      v3 = "BOOL";
      v4 = 47;
      goto LABEL_208;
    case 48:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[61];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 48;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 48;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 48;
      goto LABEL_363;
    case 49:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[62];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 49;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 49;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 49;
      goto LABEL_363;
    case 50:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[63];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 50;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 50;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 50;
      goto LABEL_363;
    case 51:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[64];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 51;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 51;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 51;
      goto LABEL_363;
    case 52:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[65];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 52;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 52;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 52;
      goto LABEL_363;
    case 53:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[66];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 53;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 53;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 53;
      goto LABEL_363;
    case 54:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[67];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 54;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 54;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 54;
      goto LABEL_363;
    case 55:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[68];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 55;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 55;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 55;
      goto LABEL_363;
    case 56:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[69];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 56;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 56;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 56;
      goto LABEL_363;
    case 57:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[70];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 57;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 57;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 57;
      goto LABEL_363;
    case 58:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[71];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 58;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 58;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 58;
      goto LABEL_363;
    case 59:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[72];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 59;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 59;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 59;
      goto LABEL_363;
    case 60:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[73];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 60;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 60;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 60;
      goto LABEL_363;
    case 61:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[74];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 61;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 61;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 61;
      goto LABEL_363;
    case 62:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[75];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 62;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 62;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 62;
      goto LABEL_363;
    case 63:
      v3 = "BOOL";
      v4 = 63;
      goto LABEL_208;
    case 64:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[77];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 64;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 64;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 64;
      goto LABEL_363;
    case 65:
      v3 = "BOOL";
      v4 = 65;
LABEL_208:
      throwWrongTypeForParamId(v4, v3, "int");
      return 0;
    case 66:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[79];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 66;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 66;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 66;
      goto LABEL_363;
    case 67:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[80];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 67;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 67;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 67;
      goto LABEL_363;
    case 68:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[81];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 68;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 68;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 68;
      goto LABEL_363;
    case 69:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[82];
        }

        if (a3 != 1)
        {
          goto LABEL_364;
        }

        v5 = qword_281051F78;
        v6 = 69;
        goto LABEL_217;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 69;
        goto LABEL_462;
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 69;
      goto LABEL_363;
    case 70:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[83];
        }

        if (a3 == 1)
        {
          v5 = qword_281051F78;
          v6 = 70;
LABEL_217:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v5, v6);
        }

LABEL_364:
        throwWrongQueryMode(a3, "int");
        return 0;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 70;
LABEL_462:
        v14 = ParamSpecMgr::getParamByParamId(v12, v13);
      }

      if (a3 != 3)
      {
        goto LABEL_364;
      }

      v9 = qword_281051F78;
      v10 = 70;
LABEL_363:
      v11 = ParamSpecMgr::getParamByParamId(v9, v10);
    default:
      throwWrongParamIdValue(a2, "int");
      return 0;
  }
}

double ChannelParamSet::getDoubleParameter(double *a1, int a2, uint64_t a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_85;
    case 2:
      v3 = "int";
      v4 = 2;
      goto LABEL_85;
    case 3:
      v3 = "BOOL";
      v4 = 3;
      goto LABEL_85;
    case 4:
      v3 = "int";
      v4 = 4;
      goto LABEL_85;
    case 5:
      v3 = "BOOL";
      v4 = 5;
      goto LABEL_85;
    case 6:
      v3 = "int";
      v4 = 6;
      goto LABEL_85;
    case 7:
      v3 = "int";
      v4 = 7;
      goto LABEL_85;
    case 8:
      v3 = "BOOL";
      v4 = 8;
      goto LABEL_85;
    case 9:
      v3 = "BOOL";
      v4 = 9;
      goto LABEL_85;
    case 10:
      v3 = "BOOL";
      v4 = 10;
      goto LABEL_85;
    case 11:
      v3 = "BOOL";
      v4 = 11;
      goto LABEL_85;
    case 12:
      v3 = "int";
      v4 = 12;
      goto LABEL_85;
    case 13:
      v3 = "enum";
      v4 = 13;
      goto LABEL_85;
    case 14:
      v3 = "int";
      v4 = 14;
      goto LABEL_85;
    case 15:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v5 = qword_281051F78;
        v6 = 15;
        goto LABEL_65;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 15;
        goto LABEL_111;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v9 = qword_281051F78;
      v10 = 15;
      goto LABEL_101;
    case 16:
      v3 = "BOOL";
      v4 = 16;
      goto LABEL_85;
    case 17:
      v3 = "int";
      v4 = 17;
      goto LABEL_85;
    case 18:
      v3 = "BOOL";
      v4 = 18;
      goto LABEL_85;
    case 19:
      v3 = "int";
      v4 = 19;
      goto LABEL_85;
    case 20:
      v3 = "BOOL";
      v4 = 20;
      goto LABEL_85;
    case 21:
      v3 = "int";
      v4 = 21;
      goto LABEL_85;
    case 22:
      v3 = "BOOL";
      v4 = 22;
      goto LABEL_85;
    case 23:
      v3 = "int";
      v4 = 23;
      goto LABEL_85;
    case 24:
      v3 = "int";
      v4 = 24;
      goto LABEL_85;
    case 25:
      v3 = "int";
      v4 = 25;
      goto LABEL_85;
    case 26:
      v3 = "int";
      v4 = 26;
      goto LABEL_85;
    case 27:
      v3 = "int";
      v4 = 27;
      goto LABEL_85;
    case 28:
      v3 = "int";
      v4 = 28;
      goto LABEL_85;
    case 29:
      v3 = "int";
      v4 = 29;
      goto LABEL_85;
    case 30:
      v3 = "int";
      v4 = 30;
      goto LABEL_85;
    case 31:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[20];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v5 = qword_281051F78;
        v6 = 31;
        goto LABEL_65;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 31;
        goto LABEL_111;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v9 = qword_281051F78;
      v10 = 31;
      goto LABEL_101;
    case 32:
      v3 = "int";
      v4 = 32;
      goto LABEL_85;
    case 33:
      v3 = "BOOL";
      v4 = 33;
      goto LABEL_85;
    case 34:
      v3 = "int";
      v4 = 34;
      goto LABEL_85;
    case 35:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[23];
        }

        if (a3 != 1)
        {
          goto LABEL_102;
        }

        v5 = qword_281051F78;
        v6 = 35;
        goto LABEL_65;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 35;
        goto LABEL_111;
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v9 = qword_281051F78;
      v10 = 35;
      goto LABEL_101;
    case 36:
      v3 = "int";
      v4 = 36;
      goto LABEL_85;
    case 37:
      v3 = "int";
      v4 = 37;
      goto LABEL_85;
    case 38:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[25];
        }

        if (a3 == 1)
        {
          v5 = qword_281051F78;
          v6 = 38;
LABEL_65:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v5, v6);
        }

LABEL_102:
        throwWrongQueryMode(a3, "double");
        return 0.0;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F78;
        v13 = 38;
LABEL_111:
        v14 = ParamSpecMgr::getParamByParamId(v12, v13);
      }

      if (a3 != 3)
      {
        goto LABEL_102;
      }

      v9 = qword_281051F78;
      v10 = 38;
LABEL_101:
      v11 = ParamSpecMgr::getParamByParamId(v9, v10);
    case 39:
      v3 = "enum";
      v4 = 39;
      goto LABEL_85;
    case 40:
      v3 = "int";
      v4 = 40;
      goto LABEL_85;
    case 41:
      v3 = "BOOL";
      v4 = 41;
      goto LABEL_85;
    case 42:
      v3 = "int";
      v4 = 42;
      goto LABEL_85;
    case 43:
      v3 = "int";
      v4 = 43;
      goto LABEL_85;
    case 44:
      v3 = "int";
      v4 = 44;
      goto LABEL_85;
    case 45:
      v3 = "int";
      v4 = 45;
      goto LABEL_85;
    case 46:
      v3 = "int";
      v4 = 46;
      goto LABEL_85;
    case 47:
      v3 = "BOOL";
      v4 = 47;
      goto LABEL_85;
    case 48:
      v3 = "int";
      v4 = 48;
      goto LABEL_85;
    case 49:
      v3 = "int";
      v4 = 49;
      goto LABEL_85;
    case 50:
      v3 = "int";
      v4 = 50;
      goto LABEL_85;
    case 51:
      v3 = "int";
      v4 = 51;
      goto LABEL_85;
    case 52:
      v3 = "int";
      v4 = 52;
      goto LABEL_85;
    case 53:
      v3 = "int";
      v4 = 53;
      goto LABEL_85;
    case 54:
      v3 = "int";
      v4 = 54;
      goto LABEL_85;
    case 55:
      v3 = "int";
      v4 = 55;
      goto LABEL_85;
    case 56:
      v3 = "int";
      v4 = 56;
      goto LABEL_85;
    case 57:
      v3 = "int";
      v4 = 57;
      goto LABEL_85;
    case 58:
      v3 = "int";
      v4 = 58;
      goto LABEL_85;
    case 59:
      v3 = "int";
      v4 = 59;
      goto LABEL_85;
    case 60:
      v3 = "int";
      v4 = 60;
      goto LABEL_85;
    case 61:
      v3 = "int";
      v4 = 61;
      goto LABEL_85;
    case 62:
      v3 = "int";
      v4 = 62;
      goto LABEL_85;
    case 63:
      v3 = "BOOL";
      v4 = 63;
      goto LABEL_85;
    case 64:
      v3 = "int";
      v4 = 64;
      goto LABEL_85;
    case 65:
      v3 = "BOOL";
      v4 = 65;
      goto LABEL_85;
    case 66:
      v3 = "int";
      v4 = 66;
      goto LABEL_85;
    case 67:
      v3 = "int";
      v4 = 67;
      goto LABEL_85;
    case 68:
      v3 = "int";
      v4 = 68;
      goto LABEL_85;
    case 69:
      v3 = "int";
      v4 = 69;
      goto LABEL_85;
    case 70:
      v3 = "int";
      v4 = 70;
LABEL_85:
      throwWrongTypeForParamId(v4, v3, "double");
      return 0.0;
    default:
      throwWrongParamIdValue(a2, "double");
      return 0.0;
  }
}

uint64_t ChannelParamSet::getStringParameter(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 1:
      v2 = "BOOL";
      v3 = 1;
      goto LABEL_72;
    case 2:
      v2 = "int";
      v3 = 2;
      goto LABEL_72;
    case 3:
      v2 = "BOOL";
      v3 = 3;
      goto LABEL_72;
    case 4:
      v2 = "int";
      v3 = 4;
      goto LABEL_72;
    case 5:
      v2 = "BOOL";
      v3 = 5;
      goto LABEL_72;
    case 6:
      v2 = "int";
      v3 = 6;
      goto LABEL_72;
    case 7:
      v2 = "int";
      v3 = 7;
      goto LABEL_72;
    case 8:
      v2 = "BOOL";
      v3 = 8;
      goto LABEL_72;
    case 9:
      v2 = "BOOL";
      v3 = 9;
      goto LABEL_72;
    case 10:
      v2 = "BOOL";
      v3 = 10;
      goto LABEL_72;
    case 11:
      v2 = "BOOL";
      v3 = 11;
      goto LABEL_72;
    case 12:
      v2 = "int";
      v3 = 12;
      goto LABEL_72;
    case 13:
      v2 = "enum";
      v3 = 13;
      goto LABEL_72;
    case 14:
      v2 = "int";
      v3 = 14;
      goto LABEL_72;
    case 15:
      v2 = "double";
      v3 = 15;
      goto LABEL_72;
    case 16:
      v2 = "BOOL";
      v3 = 16;
      goto LABEL_72;
    case 17:
      v2 = "int";
      v3 = 17;
      goto LABEL_72;
    case 18:
      v2 = "BOOL";
      v3 = 18;
      goto LABEL_72;
    case 19:
      v2 = "int";
      v3 = 19;
      goto LABEL_72;
    case 20:
      v2 = "BOOL";
      v3 = 20;
      goto LABEL_72;
    case 21:
      v2 = "int";
      v3 = 21;
      goto LABEL_72;
    case 22:
      v2 = "BOOL";
      v3 = 22;
      goto LABEL_72;
    case 23:
      v2 = "int";
      v3 = 23;
      goto LABEL_72;
    case 24:
      v2 = "int";
      v3 = 24;
      goto LABEL_72;
    case 25:
      v2 = "int";
      v3 = 25;
      goto LABEL_72;
    case 26:
      v2 = "int";
      v3 = 26;
      goto LABEL_72;
    case 27:
      v2 = "int";
      v3 = 27;
      goto LABEL_72;
    case 28:
      v2 = "int";
      v3 = 28;
      goto LABEL_72;
    case 29:
      v2 = "int";
      v3 = 29;
      goto LABEL_72;
    case 30:
      v2 = "int";
      v3 = 30;
      goto LABEL_72;
    case 31:
      v2 = "double";
      v3 = 31;
      goto LABEL_72;
    case 32:
      v2 = "int";
      v3 = 32;
      goto LABEL_72;
    case 33:
      v2 = "BOOL";
      v3 = 33;
      goto LABEL_72;
    case 34:
      v2 = "int";
      v3 = 34;
      goto LABEL_72;
    case 35:
      v2 = "double";
      v3 = 35;
      goto LABEL_72;
    case 36:
      v2 = "int";
      v3 = 36;
      goto LABEL_72;
    case 37:
      v2 = "int";
      v3 = 37;
      goto LABEL_72;
    case 38:
      v2 = "double";
      v3 = 38;
      goto LABEL_72;
    case 39:
      v2 = "enum";
      v3 = 39;
      goto LABEL_72;
    case 40:
      v2 = "int";
      v3 = 40;
      goto LABEL_72;
    case 41:
      v2 = "BOOL";
      v3 = 41;
      goto LABEL_72;
    case 42:
      v2 = "int";
      v3 = 42;
      goto LABEL_72;
    case 43:
      v2 = "int";
      v3 = 43;
      goto LABEL_72;
    case 44:
      v2 = "int";
      v3 = 44;
      goto LABEL_72;
    case 45:
      v2 = "int";
      v3 = 45;
      goto LABEL_72;
    case 46:
      v2 = "int";
      v3 = 46;
      goto LABEL_72;
    case 47:
      v2 = "BOOL";
      v3 = 47;
      goto LABEL_72;
    case 48:
      v2 = "int";
      v3 = 48;
      goto LABEL_72;
    case 49:
      v2 = "int";
      v3 = 49;
      goto LABEL_72;
    case 50:
      v2 = "int";
      v3 = 50;
      goto LABEL_72;
    case 51:
      v2 = "int";
      v3 = 51;
      goto LABEL_72;
    case 52:
      v2 = "int";
      v3 = 52;
      goto LABEL_72;
    case 53:
      v2 = "int";
      v3 = 53;
      goto LABEL_72;
    case 54:
      v2 = "int";
      v3 = 54;
      goto LABEL_72;
    case 55:
      v2 = "int";
      v3 = 55;
      goto LABEL_72;
    case 56:
      v2 = "int";
      v3 = 56;
      goto LABEL_72;
    case 57:
      v2 = "int";
      v3 = 57;
      goto LABEL_72;
    case 58:
      v2 = "int";
      v3 = 58;
      goto LABEL_72;
    case 59:
      v2 = "int";
      v3 = 59;
      goto LABEL_72;
    case 60:
      v2 = "int";
      v3 = 60;
      goto LABEL_72;
    case 61:
      v2 = "int";
      v3 = 61;
      goto LABEL_72;
    case 62:
      v2 = "int";
      v3 = 62;
      goto LABEL_72;
    case 63:
      v2 = "BOOL";
      v3 = 63;
      goto LABEL_72;
    case 64:
      v2 = "int";
      v3 = 64;
      goto LABEL_72;
    case 65:
      v2 = "BOOL";
      v3 = 65;
      goto LABEL_72;
    case 66:
      v2 = "int";
      v3 = 66;
      goto LABEL_72;
    case 67:
      v2 = "int";
      v3 = 67;
      goto LABEL_72;
    case 68:
      v2 = "int";
      v3 = 68;
      goto LABEL_72;
    case 69:
      v2 = "int";
      v3 = 69;
      goto LABEL_72;
    case 70:
      v2 = "int";
      v3 = 70;
LABEL_72:
      throwWrongTypeForParamId(v3, v2, "string");
      break;
    default:
      throwWrongParamIdValue(a2, "string");
      break;
  }

  return 0;
}

uint64_t ChannelParamSet::getEnumParameter(uint64_t a1, int a2, uint64_t a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_84;
    case 2:
      v3 = "int";
      v4 = 2;
      goto LABEL_84;
    case 3:
      v3 = "BOOL";
      v4 = 3;
      goto LABEL_84;
    case 4:
      v3 = "int";
      v4 = 4;
      goto LABEL_84;
    case 5:
      v3 = "BOOL";
      v4 = 5;
      goto LABEL_84;
    case 6:
      v3 = "int";
      v4 = 6;
      goto LABEL_84;
    case 7:
      v3 = "int";
      v4 = 7;
      goto LABEL_84;
    case 8:
      v3 = "BOOL";
      v4 = 8;
      goto LABEL_84;
    case 9:
      v3 = "BOOL";
      v4 = 9;
      goto LABEL_84;
    case 10:
      v3 = "BOOL";
      v4 = 10;
      goto LABEL_84;
    case 11:
      v3 = "BOOL";
      v4 = 11;
      goto LABEL_84;
    case 12:
      v3 = "int";
      v4 = 12;
      goto LABEL_84;
    case 13:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v18 = qword_281051F78;
          v19 = 13;
          goto LABEL_105;
        }

        if (a3 != 3)
        {
          goto LABEL_100;
        }

        v15 = qword_281051F78;
        v16 = 13;
        goto LABEL_95;
      }

      if (!a3)
      {
        return *(a1 + 76);
      }

      if (a3 != 1)
      {
        goto LABEL_100;
      }

      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F78, 13);
      if (**(v6 + 24))
      {
        v7 = v6 + 16;
        v8 = 1;
        v9 = v7;
        do
        {
          if (*v9 == 1)
          {
            return *(v9 + 16);
          }

          result = 0;
          v9 = v7 + 32 * v8++;
        }

        while (**(v9 + 8));
        return result;
      }

      return 0;
    case 14:
      v3 = "int";
      v4 = 14;
      goto LABEL_84;
    case 15:
      v3 = "double";
      v4 = 15;
      goto LABEL_84;
    case 16:
      v3 = "BOOL";
      v4 = 16;
      goto LABEL_84;
    case 17:
      v3 = "int";
      v4 = 17;
      goto LABEL_84;
    case 18:
      v3 = "BOOL";
      v4 = 18;
      goto LABEL_84;
    case 19:
      v3 = "int";
      v4 = 19;
      goto LABEL_84;
    case 20:
      v3 = "BOOL";
      v4 = 20;
      goto LABEL_84;
    case 21:
      v3 = "int";
      v4 = 21;
      goto LABEL_84;
    case 22:
      v3 = "BOOL";
      v4 = 22;
      goto LABEL_84;
    case 23:
      v3 = "int";
      v4 = 23;
      goto LABEL_84;
    case 24:
      v3 = "int";
      v4 = 24;
      goto LABEL_84;
    case 25:
      v3 = "int";
      v4 = 25;
      goto LABEL_84;
    case 26:
      v3 = "int";
      v4 = 26;
      goto LABEL_84;
    case 27:
      v3 = "int";
      v4 = 27;
      goto LABEL_84;
    case 28:
      v3 = "int";
      v4 = 28;
      goto LABEL_84;
    case 29:
      v3 = "int";
      v4 = 29;
      goto LABEL_84;
    case 30:
      v3 = "int";
      v4 = 30;
      goto LABEL_84;
    case 31:
      v3 = "double";
      v4 = 31;
      goto LABEL_84;
    case 32:
      v3 = "int";
      v4 = 32;
      goto LABEL_84;
    case 33:
      v3 = "BOOL";
      v4 = 33;
      goto LABEL_84;
    case 34:
      v3 = "int";
      v4 = 34;
      goto LABEL_84;
    case 35:
      v3 = "double";
      v4 = 35;
      goto LABEL_84;
    case 36:
      v3 = "int";
      v4 = 36;
      goto LABEL_84;
    case 37:
      v3 = "int";
      v4 = 37;
      goto LABEL_84;
    case 38:
      v3 = "double";
      v4 = 38;
      goto LABEL_84;
    case 39:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v18 = qword_281051F78;
          v19 = 39;
LABEL_105:
          v20 = ParamSpecMgr::getParamByParamId(v18, v19);
          if (v20)
          {
          }

          return EnumParamSpec::getMinVal(v20);
        }

        if (a3 == 3)
        {
          v15 = qword_281051F78;
          v16 = 39;
LABEL_95:
          v17 = ParamSpecMgr::getParamByParamId(v15, v16);
          if (v17)
          {
          }

          return EnumParamSpec::getMaxVal(v17);
        }

        goto LABEL_100;
      }

      if (!a3)
      {
        return *(a1 + 208);
      }

      if (a3 != 1)
      {
LABEL_100:
        throwWrongQueryMode(a3, "enum");
        return 0;
      }

      v11 = ParamSpecMgr::getParamByParamId(qword_281051F78, 39);
      if (!**(v12 + 24))
      {
        return 0;
      }

      v13 = v12 + 16;
      v14 = 1;
      v9 = v13;
      while (*v9 != 1)
      {
        result = 0;
        v9 = v13 + 32 * v14++;
        if (!**(v9 + 8))
        {
          return result;
        }
      }

      return *(v9 + 16);
    case 40:
      v3 = "int";
      v4 = 40;
      goto LABEL_84;
    case 41:
      v3 = "BOOL";
      v4 = 41;
      goto LABEL_84;
    case 42:
      v3 = "int";
      v4 = 42;
      goto LABEL_84;
    case 43:
      v3 = "int";
      v4 = 43;
      goto LABEL_84;
    case 44:
      v3 = "int";
      v4 = 44;
      goto LABEL_84;
    case 45:
      v3 = "int";
      v4 = 45;
      goto LABEL_84;
    case 46:
      v3 = "int";
      v4 = 46;
      goto LABEL_84;
    case 47:
      v3 = "BOOL";
      v4 = 47;
      goto LABEL_84;
    case 48:
      v3 = "int";
      v4 = 48;
      goto LABEL_84;
    case 49:
      v3 = "int";
      v4 = 49;
      goto LABEL_84;
    case 50:
      v3 = "int";
      v4 = 50;
      goto LABEL_84;
    case 51:
      v3 = "int";
      v4 = 51;
      goto LABEL_84;
    case 52:
      v3 = "int";
      v4 = 52;
      goto LABEL_84;
    case 53:
      v3 = "int";
      v4 = 53;
      goto LABEL_84;
    case 54:
      v3 = "int";
      v4 = 54;
      goto LABEL_84;
    case 55:
      v3 = "int";
      v4 = 55;
      goto LABEL_84;
    case 56:
      v3 = "int";
      v4 = 56;
      goto LABEL_84;
    case 57:
      v3 = "int";
      v4 = 57;
      goto LABEL_84;
    case 58:
      v3 = "int";
      v4 = 58;
      goto LABEL_84;
    case 59:
      v3 = "int";
      v4 = 59;
      goto LABEL_84;
    case 60:
      v3 = "int";
      v4 = 60;
      goto LABEL_84;
    case 61:
      v3 = "int";
      v4 = 61;
      goto LABEL_84;
    case 62:
      v3 = "int";
      v4 = 62;
      goto LABEL_84;
    case 63:
      v3 = "BOOL";
      v4 = 63;
      goto LABEL_84;
    case 64:
      v3 = "int";
      v4 = 64;
      goto LABEL_84;
    case 65:
      v3 = "BOOL";
      v4 = 65;
      goto LABEL_84;
    case 66:
      v3 = "int";
      v4 = 66;
      goto LABEL_84;
    case 67:
      v3 = "int";
      v4 = 67;
      goto LABEL_84;
    case 68:
      v3 = "int";
      v4 = 68;
      goto LABEL_84;
    case 69:
      v3 = "int";
      v4 = 69;
      goto LABEL_84;
    case 70:
      v3 = "int";
      v4 = 70;
LABEL_84:
      throwWrongTypeForParamId(v4, v3, "BOOL");
      return 0;
    default:
      throwWrongParamIdValue(a2, "enum");
      return 0;
  }
}

void ChannelParamSet::setBoolParameter(uint64_t this, int a2, char a3)
{
  switch(a2)
  {
    case 1:
      if (*(this + 36))
      {
        v6 = "ChannelAdaptationCDFAdaptFastInitially";
        goto LABEL_96;
      }

      *(this + 40) = a3;
      return;
    case 2:
      throwWrongTypeForParamId(2, "int", "BOOL");
      goto LABEL_31;
    case 3:
LABEL_31:
      if (*(this + 36))
      {
        v6 = "ChannelAdaptationCDFUseSilenceTracker";
        goto LABEL_96;
      }

      *(this + 48) = a3;
      return;
    case 4:
      throwWrongTypeForParamId(4, "int", "BOOL");
      goto LABEL_13;
    case 5:
LABEL_13:
      if (*(this + 36))
      {
        v6 = "ChannelAdaptationDelayApplyTillUttEnd";
        goto LABEL_96;
      }

      *(this + 56) = a3;
      return;
    case 6:
      throwWrongTypeForParamId(6, "int", "BOOL");
      goto LABEL_41;
    case 7:
LABEL_41:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_42;
    case 8:
LABEL_42:
      if (*(this + 36))
      {
        v6 = "ChannelAdaptationMeansAdaptFastInitially";
        goto LABEL_96;
      }

      *(this + 68) = a3;
      return;
    case 9:
      if (*(this + 36))
      {
        v6 = "ChannelAdaptationMeansApplySynchronous";
        goto LABEL_96;
      }

      *(this + 69) = a3;
      return;
    case 10:
      if (*(this + 36))
      {
        v6 = "ChannelAdaptationMeansC0UseSilenceTracker";
        goto LABEL_96;
      }

      *(this + 70) = a3;
      return;
    case 11:
      if (*(this + 36))
      {
        v6 = "ChannelAdaptationMeansDelayApplyInitially";
        goto LABEL_96;
      }

      *(this + 71) = a3;
      return;
    case 12:
      throwWrongTypeForParamId(12, "int", "BOOL");
      goto LABEL_34;
    case 13:
LABEL_34:
      throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_35;
    case 14:
LABEL_35:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_36;
    case 15:
LABEL_36:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_37;
    case 16:
LABEL_37:
      if (*(this + 36))
      {
        v6 = "ChannelAdaptationMeansUseSilenceTracker";
        goto LABEL_96;
      }

      *(this + 96) = a3;
      return;
    case 17:
      throwWrongTypeForParamId(17, "int", "BOOL");
      goto LABEL_46;
    case 18:
LABEL_46:
      if (*(this + 36))
      {
        v6 = "ChannelAdaptationVarianceAdaptFastInitially";
        goto LABEL_96;
      }

      *(this + 104) = a3;
      return;
    case 19:
      throwWrongTypeForParamId(19, "int", "BOOL");
      goto LABEL_87;
    case 20:
LABEL_87:
      if (*(this + 36))
      {
        v6 = "ChannelAdaptationVarianceUseSilenceTracker";
        goto LABEL_96;
      }

      *(this + 112) = a3;
      return;
    case 21:
      throwWrongTypeForParamId(21, "int", "BOOL");
      goto LABEL_67;
    case 22:
LABEL_67:
      if (*(this + 36))
      {
        v6 = "ChannelEnablePitchTracking";
        goto LABEL_96;
      }

      *(this + 120) = a3;
      return;
    case 23:
      throwWrongTypeForParamId(23, "int", "BOOL");
      goto LABEL_74;
    case 24:
LABEL_74:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_75;
    case 25:
LABEL_75:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_76;
    case 26:
LABEL_76:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_77;
    case 27:
LABEL_77:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_78;
    case 28:
LABEL_78:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_79;
    case 29:
LABEL_79:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_80;
    case 30:
LABEL_80:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_81;
    case 31:
LABEL_81:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_82;
    case 32:
LABEL_82:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_83;
    case 33:
LABEL_83:
      if (*(this + 36))
      {
        v6 = "ChannelSpectralSubtractionDisableAtTargetSNR";
        goto LABEL_96;
      }

      *(this + 172) = a3;
      return;
    case 34:
      throwWrongTypeForParamId(34, "int", "BOOL");
      goto LABEL_16;
    case 35:
LABEL_16:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_17;
    case 36:
LABEL_17:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_18;
    case 37:
LABEL_18:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_19;
    case 38:
LABEL_19:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_20;
    case 39:
LABEL_20:
      throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_21;
    case 40:
LABEL_21:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_22;
    case 41:
LABEL_22:
      if (*(this + 36))
      {
        v6 = "ChannelWaveInputEnableSpectralWarping";
        goto LABEL_96;
      }

      *(this + 216) = a3;
      return;
    case 42:
      throwWrongTypeForParamId(42, "int", "BOOL");
      goto LABEL_90;
    case 43:
LABEL_90:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_91;
    case 44:
LABEL_91:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_92;
    case 45:
LABEL_92:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_93;
    case 46:
LABEL_93:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_94;
    case 47:
LABEL_94:
      if (*(this + 36))
      {
        v6 = "ChannelMaxNormEnergyUseOnline";
        goto LABEL_96;
      }

      *(this + 240) = a3;
      return;
    case 48:
      throwWrongTypeForParamId(48, "int", "BOOL");
      goto LABEL_49;
    case 49:
LABEL_49:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_50;
    case 50:
LABEL_50:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_51;
    case 51:
LABEL_51:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_52;
    case 52:
LABEL_52:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_53;
    case 53:
LABEL_53:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_54;
    case 54:
LABEL_54:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_55;
    case 55:
LABEL_55:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_56;
    case 56:
LABEL_56:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_57;
    case 57:
LABEL_57:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_58;
    case 58:
LABEL_58:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_59;
    case 59:
LABEL_59:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_60;
    case 60:
LABEL_60:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_61;
    case 61:
LABEL_61:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_62;
    case 62:
LABEL_62:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_63;
    case 63:
LABEL_63:
      if (*(this + 36))
      {
        v6 = "UttDetLimitFrameEnergy";
        goto LABEL_96;
      }

      *(this + 304) = a3;
      break;
    case 64:
      throwWrongTypeForParamId(64, "int", "BOOL");
      goto LABEL_26;
    case 65:
LABEL_26:
      if (*(this + 36))
      {
        v6 = "UttDetResetFileChannelStateAfterSection";
LABEL_96:

        throwParamSetSetFailed(v6, "BOOL");
      }

      else
      {
        *(this + 312) = a3;
      }

      break;
    case 66:
      throwWrongTypeForParamId(66, "int", "BOOL");
      goto LABEL_5;
    case 67:
LABEL_5:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_6;
    case 68:
LABEL_6:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_7;
    case 69:
LABEL_7:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_8;
    case 70:
LABEL_8:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_9;
    default:
LABEL_9:

      throwWrongParamIdValue(a2, "BOOL");
      return;
  }
}

void ChannelParamSet::setIntParameter(ChannelParamSet *this, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "int");
      goto LABEL_3;
    case 2:
LABEL_3:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F78, 2);
      if (ParamByParamId)
      {
      }

      IntParamSpec::validateValue(ParamByParamId, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationCDFRelevance";
        goto LABEL_219;
      }

      *(this + 11) = a3;
      return;
    case 3:
      throwWrongTypeForParamId(3, "BOOL", "int");
      goto LABEL_108;
    case 4:
LABEL_108:
      v30 = ParamSpecMgr::getParamByParamId(qword_281051F78, 4);
      if (v30)
      {
      }

      IntParamSpec::validateValue(v30, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationCDFWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 13) = a3;
      return;
    case 5:
      throwWrongTypeForParamId(5, "BOOL", "int");
      goto LABEL_132;
    case 6:
LABEL_132:
      v35 = ParamSpecMgr::getParamByParamId(qword_281051F78, 6);
      if (v35)
      {
      }

      IntParamSpec::validateValue(v35, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationInterpolatedCDFMaxPercentMassPerBin";
        goto LABEL_219;
      }

      *(this + 15) = a3;
      return;
    case 7:
      v38 = ParamSpecMgr::getParamByParamId(qword_281051F78, 7);
      if (v38)
      {
      }

      IntParamSpec::validateValue(v38, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationMeansAccumSmoothingWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 16) = a3;
      return;
    case 8:
      throwWrongTypeForParamId(8, "BOOL", "int");
      goto LABEL_78;
    case 9:
LABEL_78:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_79;
    case 10:
LABEL_79:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_80;
    case 11:
LABEL_80:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_81;
    case 12:
LABEL_81:
      v24 = ParamSpecMgr::getParamByParamId(qword_281051F78, 12);
      if (v24)
      {
      }

      IntParamSpec::validateValue(v24, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationMeansInitialWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 18) = a3;
      return;
    case 13:
      throwWrongTypeForParamId(13, "enum", "int");
      goto LABEL_142;
    case 14:
LABEL_142:
      v37 = ParamSpecMgr::getParamByParamId(qword_281051F78, 14);
      if (v37)
      {
      }

      IntParamSpec::validateValue(v37, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationMeansRelevance";
        goto LABEL_219;
      }

      *(this + 20) = a3;
      return;
    case 15:
      throwWrongTypeForParamId(15, "double", "int");
      goto LABEL_50;
    case 16:
LABEL_50:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_51;
    case 17:
LABEL_51:
      v18 = ParamSpecMgr::getParamByParamId(qword_281051F78, 17);
      if (v18)
      {
      }

      IntParamSpec::validateValue(v18, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationMeansWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 25) = a3;
      return;
    case 18:
      throwWrongTypeForParamId(18, "BOOL", "int");
      goto LABEL_151;
    case 19:
LABEL_151:
      v39 = ParamSpecMgr::getParamByParamId(qword_281051F78, 19);
      if (v39)
      {
      }

      IntParamSpec::validateValue(v39, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationVarianceRelevance";
        goto LABEL_219;
      }

      *(this + 27) = a3;
      return;
    case 20:
      throwWrongTypeForParamId(20, "BOOL", "int");
      goto LABEL_123;
    case 21:
LABEL_123:
      v33 = ParamSpecMgr::getParamByParamId(qword_281051F78, 21);
      if (v33)
      {
      }

      IntParamSpec::validateValue(v33, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationVarianceWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 29) = a3;
      return;
    case 22:
      throwWrongTypeForParamId(22, "BOOL", "int");
      goto LABEL_160;
    case 23:
LABEL_160:
      v41 = ParamSpecMgr::getParamByParamId(qword_281051F78, 23);
      if (v41)
      {
      }

      IntParamSpec::validateValue(v41, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSilenceTrackerBackgroundThresh";
        goto LABEL_219;
      }

      *(this + 31) = a3;
      return;
    case 24:
      v46 = ParamSpecMgr::getParamByParamId(qword_281051F78, 24);
      if (v46)
      {
      }

      IntParamSpec::validateValue(v46, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSilenceTrackerDecrementPerSecond";
        goto LABEL_219;
      }

      *(this + 32) = a3;
      return;
    case 25:
      v28 = ParamSpecMgr::getParamByParamId(qword_281051F78, 25);
      if (v28)
      {
      }

      IntParamSpec::validateValue(v28, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSilenceTrackerIncrementPerSecond";
        goto LABEL_219;
      }

      *(this + 33) = a3;
      return;
    case 26:
      v27 = ParamSpecMgr::getParamByParamId(qword_281051F78, 26);
      if (v27)
      {
      }

      IntParamSpec::validateValue(v27, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSilenceTrackerInitialLevel";
        goto LABEL_219;
      }

      *(this + 34) = a3;
      return;
    case 27:
      v49 = ParamSpecMgr::getParamByParamId(qword_281051F78, 27);
      if (v49)
      {
      }

      IntParamSpec::validateValue(v49, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSilenceTrackerOutlierMinTriggerPercent";
        goto LABEL_219;
      }

      *(this + 35) = a3;
      return;
    case 28:
      v17 = ParamSpecMgr::getParamByParamId(qword_281051F78, 28);
      if (v17)
      {
      }

      IntParamSpec::validateValue(v17, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSilenceTrackerOutlierWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 36) = a3;
      return;
    case 29:
      v47 = ParamSpecMgr::getParamByParamId(qword_281051F78, 29);
      if (v47)
      {
      }

      IntParamSpec::validateValue(v47, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSilenceTrackerSpeechThresh";
        goto LABEL_219;
      }

      *(this + 37) = a3;
      return;
    case 30:
      v48 = ParamSpecMgr::getParamByParamId(qword_281051F78, 30);
      if (v48)
      {
      }

      IntParamSpec::validateValue(v48, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSilenceTrackerRelevance";
        goto LABEL_219;
      }

      *(this + 38) = a3;
      return;
    case 31:
      throwWrongTypeForParamId(31, "double", "int");
      goto LABEL_113;
    case 32:
LABEL_113:
      v31 = ParamSpecMgr::getParamByParamId(qword_281051F78, 32);
      if (v31)
      {
      }

      IntParamSpec::validateValue(v31, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSpectralSubtractionDelayMicroseconds";
        goto LABEL_219;
      }

      *(this + 42) = a3;
      return;
    case 33:
      throwWrongTypeForParamId(33, "BOOL", "int");
      goto LABEL_65;
    case 34:
LABEL_65:
      v21 = ParamSpecMgr::getParamByParamId(qword_281051F78, 34);
      if (v21)
      {
      }

      IntParamSpec::validateValue(v21, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSpectralSubtractionInitialWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 44) = a3;
      return;
    case 35:
      throwWrongTypeForParamId(35, "double", "int");
      goto LABEL_33;
    case 36:
LABEL_33:
      v14 = ParamSpecMgr::getParamByParamId(qword_281051F78, 36);
      if (v14)
      {
      }

      IntParamSpec::validateValue(v14, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSpectralSubtractionMinSNRMicroseconds";
        goto LABEL_219;
      }

      *(this + 48) = a3;
      return;
    case 37:
      v15 = ParamSpecMgr::getParamByParamId(qword_281051F78, 37);
      if (v15)
      {
      }

      IntParamSpec::validateValue(v15, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSpectralSubtractionStartDecimationMicroseconds";
        goto LABEL_219;
      }

      *(this + 49) = a3;
      return;
    case 38:
      throwWrongTypeForParamId(38, "double", "int");
      goto LABEL_165;
    case 39:
LABEL_165:
      throwWrongTypeForParamId(a2, "enum", "int");
      goto LABEL_166;
    case 40:
LABEL_166:
      v42 = ParamSpecMgr::getParamByParamId(qword_281051F78, 40);
      if (v42)
      {
      }

      IntParamSpec::validateValue(v42, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelWaveInputClippingThreshold";
        goto LABEL_219;
      }

      *(this + 53) = a3;
      return;
    case 41:
      throwWrongTypeForParamId(41, "BOOL", "int");
      goto LABEL_118;
    case 42:
LABEL_118:
      v32 = ParamSpecMgr::getParamByParamId(qword_281051F78, 42);
      if (v32)
      {
      }

      IntParamSpec::validateValue(v32, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelWavePacketLossDetectionPacketSize";
        goto LABEL_219;
      }

      *(this + 55) = a3;
      return;
    case 43:
      v44 = ParamSpecMgr::getParamByParamId(qword_281051F78, 43);
      if (v44)
      {
      }

      IntParamSpec::validateValue(v44, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelWavePacketLossDetectionSlopeCountPercent";
        goto LABEL_219;
      }

      *(this + 56) = a3;
      return;
    case 44:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051F78, 44);
      if (v9)
      {
      }

      IntParamSpec::validateValue(v9, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelWavePacketLossDetectionSlopeThresh";
        goto LABEL_219;
      }

      *(this + 57) = a3;
      return;
    case 45:
      v20 = ParamSpecMgr::getParamByParamId(qword_281051F78, 45);
      if (v20)
      {
      }

      IntParamSpec::validateValue(v20, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelWavePacketLossDetectionWindowSize";
        goto LABEL_219;
      }

      *(this + 58) = a3;
      return;
    case 46:
      v40 = ParamSpecMgr::getParamByParamId(qword_281051F78, 46);
      if (v40)
      {
      }

      IntParamSpec::validateValue(v40, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelWaveStereoInputSelectSource";
        goto LABEL_219;
      }

      *(this + 59) = a3;
      return;
    case 47:
      throwWrongTypeForParamId(47, "BOOL", "int");
      goto LABEL_24;
    case 48:
LABEL_24:
      v12 = ParamSpecMgr::getParamByParamId(qword_281051F78, 48);
      if (v12)
      {
      }

      IntParamSpec::validateValue(v12, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelOnlineMaxNormEnergyInitialWindowFrames";
        goto LABEL_219;
      }

      *(this + 61) = a3;
      return;
    case 49:
      v22 = ParamSpecMgr::getParamByParamId(qword_281051F78, 49);
      if (v22)
      {
      }

      IntParamSpec::validateValue(v22, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelOnlineMaxNormEnergyGeneralRampFactor";
        goto LABEL_219;
      }

      *(this + 62) = a3;
      return;
    case 50:
      v25 = ParamSpecMgr::getParamByParamId(qword_281051F78, 50);
      if (v25)
      {
      }

      IntParamSpec::validateValue(v25, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelOnlineMaxNormEnergyGeneralDecayValue";
        goto LABEL_219;
      }

      *(this + 63) = a3;
      return;
    case 51:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051F78, 51);
      if (v8)
      {
      }

      IntParamSpec::validateValue(v8, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetBackgroundFloorDecreasePerSecond";
        goto LABEL_219;
      }

      *(this + 64) = a3;
      return;
    case 52:
      v53 = ParamSpecMgr::getParamByParamId(qword_281051F78, 52);
      if (v53)
      {
      }

      IntParamSpec::validateValue(v53, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetBackgroundFloorIncreasePerSecond";
        goto LABEL_219;
      }

      *(this + 65) = a3;
      return;
    case 53:
      v52 = ParamSpecMgr::getParamByParamId(qword_281051F78, 53);
      if (v52)
      {
      }

      IntParamSpec::validateValue(v52, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetBackgroundFloorOutlierMinTriggerPercent";
        goto LABEL_219;
      }

      *(this + 66) = a3;
      return;
    case 54:
      v11 = ParamSpecMgr::getParamByParamId(qword_281051F78, 54);
      if (v11)
      {
      }

      IntParamSpec::validateValue(v11, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetBackgroundFloorOutlierWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 67) = a3;
      return;
    case 55:
      v50 = ParamSpecMgr::getParamByParamId(qword_281051F78, 55);
      if (v50)
      {
      }

      IntParamSpec::validateValue(v50, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetBackgroundThreshPercent";
        goto LABEL_219;
      }

      *(this + 68) = a3;
      return;
    case 56:
      v51 = ParamSpecMgr::getParamByParamId(qword_281051F78, 56);
      if (v51)
      {
      }

      IntParamSpec::validateValue(v51, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetBeginUttMinTriggerPercent";
        goto LABEL_219;
      }

      *(this + 69) = a3;
      return;
    case 57:
      v13 = ParamSpecMgr::getParamByParamId(qword_281051F78, 57);
      if (v13)
      {
      }

      IntParamSpec::validateValue(v13, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetBeginUttWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 70) = a3;
      return;
    case 58:
      v43 = ParamSpecMgr::getParamByParamId(qword_281051F78, 58);
      if (v43)
      {
      }

      IntParamSpec::validateValue(v43, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetEndUttMinTriggerPercent";
        goto LABEL_219;
      }

      *(this + 71) = a3;
      return;
    case 59:
      v23 = ParamSpecMgr::getParamByParamId(qword_281051F78, 59);
      if (v23)
      {
      }

      IntParamSpec::validateValue(v23, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetEndUttWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 72) = a3;
      return;
    case 60:
      v45 = ParamSpecMgr::getParamByParamId(qword_281051F78, 60);
      if (v45)
      {
      }

      IntParamSpec::validateValue(v45, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetInitialBackgroundLevelMin";
        goto LABEL_219;
      }

      *(this + 73) = a3;
      return;
    case 61:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051F78, 61);
      if (v26)
      {
      }

      IntParamSpec::validateValue(v26, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetInitialBackgroundLevelRange";
        goto LABEL_219;
      }

      *(this + 74) = a3;
      return;
    case 62:
      v34 = ParamSpecMgr::getParamByParamId(qword_281051F78, 62);
      if (v34)
      {
      }

      IntParamSpec::validateValue(v34, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetInitializeWindowMicroseconds";
        goto LABEL_219;
      }

      *(this + 75) = a3;
      return;
    case 63:
      throwWrongTypeForParamId(63, "BOOL", "int");
      goto LABEL_103;
    case 64:
LABEL_103:
      v29 = ParamSpecMgr::getParamByParamId(qword_281051F78, 64);
      if (v29)
      {
      }

      IntParamSpec::validateValue(v29, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetMaxNonSpeechUttSeconds";
        goto LABEL_219;
      }

      *(this + 77) = a3;
      return;
    case 65:
      throwWrongTypeForParamId(65, "BOOL", "int");
      goto LABEL_137;
    case 66:
LABEL_137:
      v36 = ParamSpecMgr::getParamByParamId(qword_281051F78, 66);
      if (v36)
      {
      }

      IntParamSpec::validateValue(v36, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetSpeechOffsetMin";
        goto LABEL_219;
      }

      *(this + 79) = a3;
      return;
    case 67:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051F78, 67);
      if (v10)
      {
      }

      IntParamSpec::validateValue(v10, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetSpeechOffsetRange";
        goto LABEL_219;
      }

      *(this + 80) = a3;
      return;
    case 68:
      v19 = ParamSpecMgr::getParamByParamId(qword_281051F78, 68);
      if (v19)
      {
      }

      IntParamSpec::validateValue(v19, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetSpeechThreshOffsetPercent";
        goto LABEL_219;
      }

      *(this + 81) = a3;
      return;
    case 69:
      v54 = ParamSpecMgr::getParamByParamId(qword_281051F78, 69);
      if (v54)
      {
      }

      IntParamSpec::validateValue(v54, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetSpeechUttSecondsMin";
        goto LABEL_219;
      }

      *(this + 82) = a3;
      break;
    case 70:
      v16 = ParamSpecMgr::getParamByParamId(qword_281051F78, 70);
      if (v16)
      {
      }

      IntParamSpec::validateValue(v16, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "UttDetSpeechUttSecondsRange";
LABEL_219:

        throwParamSetSetFailed(v7, "int");
      }

      else
      {
        *(this + 83) = a3;
      }

      break;
    default:

      throwWrongParamIdValue(a2, "int");
      return;
  }
}

void ChannelParamSet::setDoubleParameter(ChannelParamSet *this, int a2, double a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "double");
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_16;
    case 15:
LABEL_16:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F78, 15);
      if (ParamByParamId)
      {
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationMeansRelevanceScale";
        goto LABEL_90;
      }

      *(this + 11) = a3;
      return;
    case 16:
      throwWrongTypeForParamId(16, "BOOL", "double");
      goto LABEL_72;
    case 17:
LABEL_72:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_73;
    case 18:
LABEL_73:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_74;
    case 19:
LABEL_74:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_75;
    case 20:
LABEL_75:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_76;
    case 21:
LABEL_76:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_77;
    case 22:
LABEL_77:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_78;
    case 23:
LABEL_78:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_79;
    case 24:
LABEL_79:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_80;
    case 25:
LABEL_80:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_81;
    case 26:
LABEL_81:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_82;
    case 27:
LABEL_82:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_83;
    case 28:
LABEL_83:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_84;
    case 29:
LABEL_84:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_85;
    case 30:
LABEL_85:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_86;
    case 31:
LABEL_86:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051F78, 31);
      if (v10)
      {
      }

      DoubleParamSpec::validateValue(v10, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSpectralSubtractionDecayRate";
        goto LABEL_90;
      }

      *(this + 20) = a3;
      return;
    case 32:
      throwWrongTypeForParamId(32, "int", "double");
      goto LABEL_64;
    case 33:
LABEL_64:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_65;
    case 34:
LABEL_65:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_66;
    case 35:
LABEL_66:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051F78, 35);
      if (v9)
      {
      }

      DoubleParamSpec::validateValue(v9, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSpectralSubtractionMaxNoiseScaleChange";
        goto LABEL_90;
      }

      *(this + 23) = a3;
      break;
    case 36:
      throwWrongTypeForParamId(36, "int", "double");
      goto LABEL_22;
    case 37:
LABEL_22:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_23;
    case 38:
LABEL_23:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051F78, 38);
      if (v8)
      {
      }

      DoubleParamSpec::validateValue(v8, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "ChannelSpectralSubtractionTargetSNR";
LABEL_90:

        throwParamSetSetFailed(v7, "double");
      }

      else
      {
        *(this + 25) = a3;
      }

      break;
    case 39:
      throwWrongTypeForParamId(39, "enum", "double");
      goto LABEL_29;
    case 40:
LABEL_29:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_30;
    case 41:
LABEL_30:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_31;
    case 42:
LABEL_31:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_32;
    case 43:
LABEL_32:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_33;
    case 44:
LABEL_33:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_34;
    case 45:
LABEL_34:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_35;
    case 46:
LABEL_35:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_36;
    case 47:
LABEL_36:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_37;
    case 48:
LABEL_37:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_38;
    case 49:
LABEL_38:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_39;
    case 50:
LABEL_39:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_40;
    case 51:
LABEL_40:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_41;
    case 52:
LABEL_41:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_42;
    case 53:
LABEL_42:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_43;
    case 54:
LABEL_43:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_44;
    case 55:
LABEL_44:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_45;
    case 56:
LABEL_45:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_46;
    case 57:
LABEL_46:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_47;
    case 58:
LABEL_47:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_48;
    case 59:
LABEL_48:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_49;
    case 60:
LABEL_49:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_50;
    case 61:
LABEL_50:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_51;
    case 62:
LABEL_51:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_52;
    case 63:
LABEL_52:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_53;
    case 64:
LABEL_53:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_54;
    case 65:
LABEL_54:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_55;
    case 66:
LABEL_55:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_56;
    case 67:
LABEL_56:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_57;
    case 68:
LABEL_57:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_58;
    case 69:
LABEL_58:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_59;
    case 70:
LABEL_59:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_60;
    default:
LABEL_60:

      throwWrongParamIdValue(a2, "double");
      return;
  }
}

double ChannelParamSet::setStringParameter(ChannelParamSet *this, int a2, const char *a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "string");
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_20;
    case 19:
LABEL_20:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_21;
    case 20:
LABEL_21:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_24;
    case 23:
LABEL_24:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_25;
    case 24:
LABEL_25:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_26;
    case 25:
LABEL_26:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_27;
    case 26:
LABEL_27:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_28;
    case 27:
LABEL_28:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_29;
    case 28:
LABEL_29:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_30;
    case 29:
LABEL_30:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_31;
    case 30:
LABEL_31:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_32;
    case 31:
LABEL_32:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_33;
    case 32:
LABEL_33:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_34;
    case 33:
LABEL_34:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_35;
    case 34:
LABEL_35:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_36;
    case 35:
LABEL_36:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_37;
    case 36:
LABEL_37:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_38;
    case 37:
LABEL_38:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_39;
    case 38:
LABEL_39:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_40;
    case 39:
LABEL_40:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_41;
    case 40:
LABEL_41:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_42;
    case 41:
LABEL_42:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_43;
    case 42:
LABEL_43:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_44;
    case 43:
LABEL_44:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_45;
    case 44:
LABEL_45:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_46;
    case 45:
LABEL_46:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_47;
    case 46:
LABEL_47:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_48;
    case 47:
LABEL_48:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_49;
    case 48:
LABEL_49:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_50;
    case 49:
LABEL_50:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_51;
    case 50:
LABEL_51:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_52;
    case 51:
LABEL_52:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_53;
    case 52:
LABEL_53:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_54;
    case 53:
LABEL_54:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_55;
    case 54:
LABEL_55:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_56;
    case 55:
LABEL_56:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_57;
    case 56:
LABEL_57:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_58;
    case 57:
LABEL_58:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_59;
    case 58:
LABEL_59:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_60;
    case 59:
LABEL_60:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_61;
    case 60:
LABEL_61:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_62;
    case 61:
LABEL_62:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_63;
    case 62:
LABEL_63:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_64;
    case 63:
LABEL_64:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_65;
    case 64:
LABEL_65:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_66;
    case 65:
LABEL_66:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_67;
    case 66:
LABEL_67:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_68;
    case 67:
LABEL_68:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_69;
    case 68:
LABEL_69:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_70;
    case 69:
LABEL_70:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_71;
    case 70:
LABEL_71:
      throwWrongTypeForParamId(a2, "int", "string");
      break;
    default:
      break;
  }

  return throwWrongParamIdValue(a2, "string");
}

void ChannelParamSet::setEnumParameter(ChannelParamSet *this, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "BOOL");
      goto LABEL_3;
    case 2:
LABEL_3:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_4;
    case 3:
LABEL_4:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_7;
    case 6:
LABEL_7:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_8;
    case 7:
LABEL_8:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_9;
    case 8:
LABEL_9:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_14;
    case 13:
LABEL_14:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F78, 13);
      if (ParamByParamId)
      {
      }

      EnumParamSpec::validateValue(ParamByParamId, a3);
      if (*(this + 9))
      {
        v7 = "ChannelAdaptationMeansReestimationType";
        goto LABEL_82;
      }

      *(this + 19) = a3;
      break;
    case 14:
      throwWrongTypeForParamId(14, "int", "BOOL");
      goto LABEL_54;
    case 15:
LABEL_54:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_55;
    case 16:
LABEL_55:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_56;
    case 17:
LABEL_56:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_57;
    case 18:
LABEL_57:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_58;
    case 19:
LABEL_58:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_59;
    case 20:
LABEL_59:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_60;
    case 21:
LABEL_60:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_61;
    case 22:
LABEL_61:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_62;
    case 23:
LABEL_62:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_63;
    case 24:
LABEL_63:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_64;
    case 25:
LABEL_64:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_65;
    case 26:
LABEL_65:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_66;
    case 27:
LABEL_66:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_67;
    case 28:
LABEL_67:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_68;
    case 29:
LABEL_68:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_69;
    case 30:
LABEL_69:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_70;
    case 31:
LABEL_70:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_71;
    case 32:
LABEL_71:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_72;
    case 33:
LABEL_72:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_73;
    case 34:
LABEL_73:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_74;
    case 35:
LABEL_74:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_75;
    case 36:
LABEL_75:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_76;
    case 37:
LABEL_76:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_77;
    case 38:
LABEL_77:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_78;
    case 39:
LABEL_78:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051F78, 39);
      if (v8)
      {
      }

      EnumParamSpec::validateValue(v8, a3);
      if (*(this + 9))
      {
        v7 = "ChannelThreadingType";
LABEL_82:

        throwParamSetSetFailed(v7, "enum");
      }

      else
      {
        *(this + 52) = a3;
      }

      break;
    case 40:
      throwWrongTypeForParamId(40, "int", "BOOL");
      goto LABEL_20;
    case 41:
LABEL_20:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_21;
    case 42:
LABEL_21:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_22;
    case 43:
LABEL_22:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_23;
    case 44:
LABEL_23:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_24;
    case 45:
LABEL_24:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_25;
    case 46:
LABEL_25:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_26;
    case 47:
LABEL_26:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_27;
    case 48:
LABEL_27:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_28;
    case 49:
LABEL_28:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_29;
    case 50:
LABEL_29:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_30;
    case 51:
LABEL_30:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_31;
    case 52:
LABEL_31:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_32;
    case 53:
LABEL_32:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_33;
    case 54:
LABEL_33:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_34;
    case 55:
LABEL_34:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_35;
    case 56:
LABEL_35:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_36;
    case 57:
LABEL_36:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_37;
    case 58:
LABEL_37:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_38;
    case 59:
LABEL_38:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_39;
    case 60:
LABEL_39:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_40;
    case 61:
LABEL_40:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_41;
    case 62:
LABEL_41:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_42;
    case 63:
LABEL_42:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_43;
    case 64:
LABEL_43:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_44;
    case 65:
LABEL_44:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_45;
    case 66:
LABEL_45:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_46;
    case 67:
LABEL_46:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_47;
    case 68:
LABEL_47:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_48;
    case 69:
LABEL_48:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_49;
    case 70:
LABEL_49:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_50;
    default:
LABEL_50:

      throwWrongParamIdValue(a2, "enum");
      return;
  }
}

void ChannelParamSet::~ChannelParamSet(ChannelParamSet *this)
{
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);
}

{
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);

  JUMPOUT(0x26672B1B0);
}

void MrecInitModule_dtxtfile_dfutil(void)
{
  if (!gParDebugDgnTextFileParser)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugDgnTextFileParser", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugDgnTextFileParser = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugDgnTextFileParser);
  }
}

uint64_t DgnTextFile::atoui(DgnTextFile *this, const char *a2)
{
  v2 = a2;
  v4 = MEMORY[0x277D85DE0];
  if (*a2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = *a2;
    do
    {
      if ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x4000) == 0)
      {
        break;
      }

      v6 = *++v2;
      v5 = v6;
    }

    while (v6 > 0);
    v7 = v5 == 43;
  }

  v8 = v2[v7];
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v2[v7 + 1];
  do
  {
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_27;
    }

    v11 = *(v4 + 4 * v8 + 60);
    if ((v11 & 0x4000) != 0)
    {
      return v9;
    }

    if ((v11 & 0x400) == 0)
    {
LABEL_27:
      if (*(this + 10))
      {
        v12 = *(this + 4);
      }

      else
      {
        v12 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 273, "dfutil/dtxtfile", 15, "%02x %c %.500s %u", v8, v8, v12, *(this + 25));
      v8 = *(v10 - 1);
    }

    v13 = v8 - 48;
    if ((~(v8 - 48) | 0xFFFFFF01) / 0xA < v9)
    {
      if (*(this + 10))
      {
        v14 = *(this + 4);
      }

      else
      {
        v14 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 279, "dfutil/dtxtfile", 16, "%.500s %.500s %u", v2, v14, *(this + 25));
    }

    v9 = (v13 + 10 * v9);
    v15 = *v10++;
    v8 = v15;
  }

  while (v15);
  return v9;
}

unint64_t DgnTextFile::atou64(DgnTextFile *this, const char *a2)
{
  v2 = a2;
  v4 = MEMORY[0x277D85DE0];
  if (*a2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = *a2;
    do
    {
      if ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x4000) == 0)
      {
        break;
      }

      v6 = *++v2;
      v5 = v6;
    }

    while (v6 > 0);
    v7 = v5 == 43;
  }

  v8 = v2[v7];
  if (!v8)
  {
    return 0;
  }

  v9 = 0;
  v10 = &v2[v7 + 1];
  do
  {
    if ((v8 & 0x80) != 0)
    {
      goto LABEL_27;
    }

    v11 = *(v4 + 4 * v8 + 60);
    if ((v11 & 0x4000) != 0)
    {
      return v9;
    }

    if ((v11 & 0x400) == 0)
    {
LABEL_27:
      if (*(this + 10))
      {
        v12 = *(this + 4);
      }

      else
      {
        v12 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 304, "dfutil/dtxtfile", 15, "%02x %c %.500s %u", v8, v8, v12, *(this + 25));
      v8 = *(v10 - 1);
    }

    v13 = v8 - 48;
    if (v9 > (~(v8 - 48) | 0xFFFFFF01) / 0xAuLL)
    {
      if (*(this + 10))
      {
        v14 = *(this + 4);
      }

      else
      {
        v14 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 310, "dfutil/dtxtfile", 16, "%.500s %.500s %u", v2, v14, *(this + 25));
    }

    v9 = 10 * v9 + v13;
    v15 = *v10++;
    v8 = v15;
  }

  while (v15);
  return v9;
}

uint64_t DgnTextFile::atosi(DgnTextFile *this, const char *a2)
{
  v2 = a2;
  v4 = *a2;
  v5 = MEMORY[0x277D85DE0];
  if (v4 >= 1)
  {
    do
    {
      if ((*(MEMORY[0x277D85DE0] + 4 * v4 + 60) & 0x4000) == 0)
      {
        break;
      }

      v6 = *++v2;
      LOBYTE(v4) = v6;
    }

    while (v6 > 0);
  }

  if (v4 == 45 || v4 == 43)
  {
    v7 = v4 == 45;
    v8 = v2 + 1;
    LOBYTE(v4) = v2[1];
  }

  else
  {
    v7 = 0;
    v8 = v2;
  }

  if (!v4)
  {
    return 0;
  }

  v9 = 0;
  v10 = (v8 + 1);
  do
  {
    if ((v4 & 0x80) != 0)
    {
      goto LABEL_36;
    }

    v11 = *(v5 + 4 * v4 + 60);
    if ((v11 & 0x4000) != 0)
    {
      return v9;
    }

    if ((v11 & 0x400) == 0)
    {
LABEL_36:
      if (*(this + 10))
      {
        v12 = *(this + 4);
      }

      else
      {
        v12 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 337, "dfutil/dtxtfile", 15, "%02x %c %.500s %u", v4, v4, v12, *(this + 25));
      LOBYTE(v4) = *(v10 - 1);
    }

    v13 = v4 - 48;
    if (v7)
    {
      if ((v4 + 2147483600) / 10 > v9)
      {
        if (*(this + 10))
        {
          v14 = *(this + 4);
        }

        else
        {
          v14 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 345, "dfutil/dtxtfile", 16, "%.500s %.500s %u", v2, v14, *(this + 25));
      }

      v9 = (10 * v9 - v13);
    }

    else
    {
      if (((-2147483601 - v4) / 0xA) < v9)
      {
        if (*(this + 10))
        {
          v15 = *(this + 4);
        }

        else
        {
          v15 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 354, "dfutil/dtxtfile", 16, "%.500s %.500s %u", v2, v15, *(this + 25));
      }

      v9 = (v13 + 10 * v9);
    }

    v16 = *v10++;
    LOBYTE(v4) = v16;
  }

  while (v16);
  return v9;
}

void DgnTextFile::DgnTextFile(DgnTextFile *this)
{
  *this = &unk_2875290F0;
  v2 = (this + 32);
  DgnString::DgnString((this + 16));
  DgnString::DgnString(v2);
  DgnString::DgnString((this + 48));
  DgnString::DgnString((this + 80));
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 208) = 0;
}

void sub_2625D874C(_Unwind_Exception *a1)
{
  DgnString::~DgnString(v1 + 48);
  DgnString::~DgnString(v2);
  DgnString::~DgnString(v1 + 16);
  _Unwind_Resume(a1);
}

void DgnTextFile::~DgnTextFile(DgnTextFile *this)
{
  *this = &unk_2875290F0;
  DgnTextFile::closeDgnTextFile(this);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnArray<DgnString>::releaseAll(this + 176);
  DgnArray<DgnString>::releaseAll(this + 160);
  DgnArray<DgnString>::releaseAll(this + 144);
  DgnArray<DgnString>::releaseAll(this + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 112);
  DgnString::~DgnString(this + 80);
  DgnString::~DgnString(this + 48);
  DgnString::~DgnString(this + 32);
  DgnString::~DgnString(this + 16);
}

{
  DgnTextFile::~DgnTextFile(this);

  JUMPOUT(0x26672B1B0);
}

void DgnTextFile::closeDgnTextFile(DgnTextFile *this)
{
  DgnDelete<DgnStream>(*(this + 1));
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 10) = 0;
  *(this + 14) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 22) = 0;
  *(this + 30) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  v2 = *(this + 34);
  if (v2 >= 1)
  {
    v3 = 16 * v2 - 16;
    do
    {
      DgnString::~DgnString(*(this + 16) + v3);
      v3 -= 16;
    }

    while (v3 != -16);
  }

  *(this + 34) = 0;
  v4 = *(this + 38);
  if (v4 >= 1)
  {
    v5 = 16 * v4 - 16;
    do
    {
      DgnString::~DgnString(*(this + 18) + v5);
      v5 -= 16;
    }

    while (v5 != -16);
  }

  *(this + 38) = 0;
  v6 = *(this + 42);
  if (v6 >= 1)
  {
    v7 = 16 * v6 - 16;
    do
    {
      DgnString::~DgnString(*(this + 20) + v7);
      v7 -= 16;
    }

    while (v7 != -16);
  }

  *(this + 42) = 0;
  v8 = *(this + 46);
  if (v8 >= 1)
  {
    v9 = 16 * v8 - 16;
    do
    {
      DgnString::~DgnString(*(this + 22) + v9);
      v9 -= 16;
    }

    while (v9 != -16);
  }

  *(this + 46) = 0;
  *(this + 50) = 0;
  *(this + 208) = 0;
}

void DgnTextFile::legalDgnTextFileVersions(unint64_t result, unsigned int *a2, uint64_t a3)
{
  v6 = *a2;
  if (*a2 == -1)
  {
    if (*(result + 104) == 1 && *(result + 24))
    {
      v7 = *(result + 16);
    }

    else
    {
      v7 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 416, "dfutil/dtxtfile", 38, "%.500s %u %.500s", "major", 0, v7);
    v6 = *a2;
  }

  if (v6 != 1 && v6 <= 0x12)
  {
    if (*(result + 104) == 1 && *(result + 24))
    {
      v9 = *(result + 16);
    }

    else
    {
      v9 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 420, "dfutil/dtxtfile", 38, "%.500s %u %.500s", "major", 0, v9);
  }

  if (a2[1] == -1)
  {
    if (*(result + 104) == 1 && *(result + 24))
    {
      v10 = *(result + 16);
    }

    else
    {
      v10 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 423, "dfutil/dtxtfile", 38, "%.500s %u %.500s", "minor", 0, v10);
  }

  if (*a2 == 1 && a2[1])
  {
    if (*(result + 104) == 1 && *(result + 24))
    {
      v11 = *(result + 16);
    }

    else
    {
      v11 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 427, "dfutil/dtxtfile", 38, "%.500s %u %.500s", "minor", 0, v11);
  }

  *(a3 + 8) = 0;
  if (*(a3 + 12))
  {
    v12 = 0;
  }

  else
  {
    DgnPrimArray<unsigned long long>::reallocElts(a3, 1, 1);
    v12 = *(a3 + 8);
  }

  v13 = 0;
  *(*a3 + 8 * v12) = *a2;
  ++*(a3 + 8);
  while (1)
  {
    v14 = &a2[2 * (v13 + 1)];
    v15 = *v14;
    if (*v14 != 1)
    {
      break;
    }

    if (*(result + 104) == 1 && *(result + 24))
    {
      v16 = *(result + 16);
    }

    else
    {
      v16 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 435, "dfutil/dtxtfile", 38, "%.500s %u %.500s", "major", v13 + 1, v16);
    v15 = *v14;
LABEL_41:
    v17 = &a2[2 * v13];
    if (v15 < *v17)
    {
      if (*(result + 104) == 1 && *(result + 24))
      {
        v18 = *(result + 16);
      }

      else
      {
        v18 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 438, "dfutil/dtxtfile", 38, "%.500s %u %.500s", "major", v13 + 1, v18);
    }

    v19 = v14[1];
    if (v19 != -1)
    {
      if (v19)
      {
        goto LABEL_60;
      }

LABEL_55:
      if (*(result + 104) == 1 && *(result + 24))
      {
        v21 = *(result + 16);
      }

      else
      {
        v21 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 445, "dfutil/dtxtfile", 38, "%.500s %u %.500s", "minor", v13 + 1, v21);
      goto LABEL_60;
    }

    if (*(result + 104) == 1 && *(result + 24))
    {
      v20 = *(result + 16);
    }

    else
    {
      v20 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 442, "dfutil/dtxtfile", 38, "%.500s %u %.500s", "minor", v13 + 1, v20);
    if (!v14[1])
    {
      goto LABEL_55;
    }

LABEL_60:
    v22 = *v17;
    if (*v17 == 1)
    {
      v22 = v14[1];
      if (v22 != 1)
      {
        if (*(result + 104) == 1 && *(result + 24))
        {
          v23 = *(result + 16);
        }

        else
        {
          v23 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 449, "dfutil/dtxtfile", 38, "%.500s %u %.500s", "minor", v13 + 1, v23);
        v22 = *v17;
      }
    }

    if (*v14 == v22 && v14[1] != v17[1] + 1)
    {
      if (*(result + 104) == 1 && *(result + 24))
      {
        v24 = *(result + 16);
      }

      else
      {
        v24 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 453, "dfutil/dtxtfile", 38, "%.500s %u %.500s", "minor", v13 + 1, v24);
    }

    v25 = *(a3 + 8);
    if (v25 == *(a3 + 12))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a3, 1, 1);
      v25 = *(a3 + 8);
    }

    *(*a3 + 8 * v25) = *v14;
    ++*(a3 + 8);
    ++v13;
  }

  if (v15 != -1)
  {
    goto LABEL_41;
  }
}

uint64_t DgnTextFile::getFileVersion(DgnTextFile *this)
{
  if (*(this + 104))
  {
    return *(this + 68);
  }

  else
  {
    return -1;
  }
}

BOOL DgnTextFile::getHeaderField(DgnTextFile *this, const char *a2, DgnString *a3, int a4)
{
  DgnString::DgnString(v14, a2);
  v8 = DgnArray<DgnString>::find(this + 40, v14);
  v9 = v8;
  if (v8 == -1)
  {
    if (a4)
    {
      if (*(this + 6))
      {
        v11 = *(this + 2);
      }

      else
      {
        v11 = &byte_262899963;
      }

      if (*(this + 10))
      {
        v12 = *(this + 4);
      }

      else
      {
        v12 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 478, "dfutil/dtxtfile", 29, "%.500s %.500s %.500s", a2, v11, v12);
    }

    if (a3)
    {
      *(a3 + 2) = 0;
    }
  }

  else
  {
    if (a3)
    {
      DgnString::operator=(a3, (*(this + 22) + 16 * v8));
    }

    v10 = *(this + 24);
    if ((*(v10 + v9) & 1) == 0)
    {
      *(v10 + v9) = 1;
    }
  }

  DgnString::~DgnString(v14);
  return v9 != -1;
}

void sub_2625D8FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

BOOL DgnTextFile::getHeaderFieldUnsigned(const char **this, const char *a2, unsigned int *a3, int a4, unsigned int a5, unsigned int a6)
{
  DgnString::DgnString(&v19);
  HeaderField = DgnTextFile::getHeaderField(this, a2, &v19, a4);
  if (HeaderField)
  {
    if (v20)
    {
      v13 = v19;
    }

    else
    {
      v13 = &byte_262899963;
    }

    v14 = DgnTextFile::atoui(this, v13);
    *a3 = v14;
    if (v14 < a5 || v14 > a6)
    {
      if (*(this + 6))
      {
        v16 = this[2];
      }

      else
      {
        v16 = &byte_262899963;
      }

      if (*(this + 10))
      {
        v17 = this[4];
      }

      else
      {
        v17 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 525, "dfutil/dtxtfile", 32, "%.500s %.500s %.500s %u %u %u", a2, v16, v17, v14, a5, a6);
    }
  }

  else
  {
    *a3 = 0;
  }

  DgnString::~DgnString(&v19);
  return HeaderField;
}

void sub_2625D90D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t DgnTextFile::checkAgainstFormat(DgnTextFile *a1, const char *a2)
{
  if ((a2 - 1) >= 3)
  {
    return a2 == 0;
  }

  v2 = *a1;
  v3 = *a1 == 0;
  if (*a1 >= 1)
  {
    v4 = 1;
    v5 = *a1;
    while ((*(MEMORY[0x277D85DE0] + 4 * v5 + 60) & 0x4000) == 0)
    {
      v5 = *(a1 + v4);
      v3 = *(a1 + v4) == 0;
      if (v4 == -1)
      {
        v3 = 1;
      }

      if ((*(a1 + v4) & 0x80000000) == 0)
      {
        ++v4;
        if (!v3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  if (!v3)
  {
    return 0;
  }

  if (a2 != 1)
  {
    if (a2 != 3)
    {
      if (a2 == 2)
      {
        return DgnTextFile::checkReal(a1, a2);
      }

      return 0;
    }

    if (*a1)
    {
      v7 = a1 + 1;
      do
      {
        v8 = v2 - 48;
        result = v8 < 0xA;
        if (v8 >= 0xA)
        {
          break;
        }

        v9 = *v7++;
        v2 = v9;
      }

      while (v9);
      return result;
    }

    return 0;
  }

  if (!*a1)
  {
    return 0;
  }

  if (v2 == 45 || v2 == 43)
  {
    v10 = *(a1 + 1);
    a1 = (a1 + 1);
    v2 = v10;
  }

  if (!v2)
  {
    return 0;
  }

  v11 = a1 + 1;
  do
  {
    v12 = v2 - 48;
    result = v12 < 0xA;
    if (v12 >= 0xA)
    {
      break;
    }

    v13 = *v11++;
    v2 = v13;
  }

  while (v13);
  return result;
}

BOOL DgnTextFile::getHeaderFieldUnsigned64(const char **this, const char *a2, unint64_t *a3, int a4, unint64_t a5, unint64_t a6)
{
  DgnString::DgnString(&v19);
  HeaderField = DgnTextFile::getHeaderField(this, a2, &v19, a4);
  if (HeaderField)
  {
    if (v20)
    {
      v13 = v19;
    }

    else
    {
      v13 = &byte_262899963;
    }

    v14 = DgnTextFile::atou64(this, v13);
    *a3 = v14;
    if (v14 < a5 || v14 > a6)
    {
      if (*(this + 6))
      {
        v16 = this[2];
      }

      else
      {
        v16 = &byte_262899963;
      }

      if (*(this + 10))
      {
        v17 = this[4];
      }

      else
      {
        v17 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 549, "dfutil/dtxtfile", 36, "%.500s %.500s %.500s %llu %llu %llu", a2, v16, v17, v14, a5, a6);
    }
  }

  else
  {
    *a3 = 0;
  }

  DgnString::~DgnString(&v19);
  return HeaderField;
}

void sub_2625D92F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

BOOL DgnTextFile::getHeaderFieldBool(const char **this, const char *a2, BOOL *a3, int a4)
{
  v7 = 0;
  result = DgnTextFile::getHeaderFieldUnsigned(this, a2, &v7, a4, 0, 1u);
  v6 = v7 == 1 && result;
  *a3 = v6;
  return result;
}

BOOL DgnTextFile::getHeaderFieldInteger(const char **this, const char *a2, int *a3, int a4, int a5, int a6)
{
  DgnString::DgnString(&v19);
  HeaderField = DgnTextFile::getHeaderField(this, a2, &v19, a4);
  if (HeaderField)
  {
    if (v20)
    {
      v13 = v19;
    }

    else
    {
      v13 = &byte_262899963;
    }

    v14 = DgnTextFile::atosi(this, v13);
    *a3 = v14;
    if (v14 < a5 || v14 > a6)
    {
      if (*(this + 6))
      {
        v16 = this[2];
      }

      else
      {
        v16 = &byte_262899963;
      }

      if (*(this + 10))
      {
        v17 = this[4];
      }

      else
      {
        v17 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 590, "dfutil/dtxtfile", 33, "%.500s %.500s %.500s %d %d %d", a2, v16, v17, v14, a5, a6);
    }
  }

  else
  {
    *a3 = 0;
  }

  DgnString::~DgnString(&v19);
  return HeaderField;
}

void sub_2625D946C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

BOOL DgnTextFile::getHeaderFieldReal(const char **this, const char *a2, double *a3, int a4, double a5, double a6)
{
  DgnString::DgnString(&v20);
  HeaderField = DgnTextFile::getHeaderField(this, a2, &v20, a4);
  if (HeaderField)
  {
    if (v21)
    {
      v13 = v20;
    }

    else
    {
      v13 = &byte_262899963;
    }

    v14 = atof(v13);
    v15 = eround(v14, 14);
    *a3 = v15;
    if (v15 < a5 || v15 > a6)
    {
      if (*(this + 6))
      {
        v17 = this[2];
      }

      else
      {
        v17 = &byte_262899963;
      }

      if (*(this + 10))
      {
        v18 = this[4];
      }

      else
      {
        v18 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 615, "dfutil/dtxtfile", 34, "%.500s %.500s %.500s %g %g %g", a2, v17, v18, v15, a5, a6);
    }
  }

  else
  {
    *a3 = 0.0;
  }

  DgnString::~DgnString(&v20);
  return HeaderField;
}

void sub_2625D95A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

DgnString *DgnTextFile::convertToDTFFormat(DgnTextFile *this, const DgnString *a2, DgnString *a3)
{
  if (*(this + 2) > 1u)
  {
    *(a2 + 2) = 0;
    v6 = *(this + 2);
    v7 = v6 != 0;
    v8 = v6 - 1;
    if (!v7)
    {
      v8 = 0;
    }

    if (v8 > 0x60)
    {
      v9 = 3 * v8 + 1;
    }

    else
    {
      v9 = 289;
    }

    result = DgnString::preAllocate(a2, v9);
    if (*(this + 2) >= 2u)
    {
      v10 = 0;
      v11 = MEMORY[0x277D85DE0];
      do
      {
        v12 = *(*this + v10);
        if ((*(*this + v10) & 0x80000000) == 0 && (*(v11 + 4 * *(*this + v10) + 60) & 0x40000) != 0 && (v12 != 94 ? (v13 = (*(v11 + 4 * *(*this + v10) + 60) & 0x4000) == 0) : (v13 = 0), v13))
        {
          result = DgnString::appendCharWithGrow(a2, v12);
        }

        else
        {
          snprintf(__str, 6uLL, "^%02x", *(*this + v10));
          result = DgnString::operator+=(a2, __str);
        }

        ++v10;
        v14 = *(this + 2);
        v7 = v14 != 0;
        LODWORD(v15) = v14 - 1;
        if (v7)
        {
          v15 = v15;
        }

        else
        {
          v15 = 0;
        }
      }

      while (v10 < v15);
    }
  }

  else
  {

    return DgnString::operator=(a2, "^");
  }

  return result;
}

uint64_t DgnTextFile::convertFromDTFFormat(DgnTextFile *this, const DgnString *a2, DgnString *a3, const char *a4)
{
  v4 = a4;
  v6 = a2;
  *(a2 + 2) = 0;
  v8 = *(this + 2);
  if (v8)
  {
    v9 = *this;
  }

  else
  {
    v9 = &byte_262899963;
  }

  result = strcmp(v9, "^");
  if (result)
  {
    v11 = v8 ? v8 - 1 : 0;
    result = DgnString::preAllocate(v6, v11);
    v12 = *(this + 2);
    if (v12 >= 2)
    {
      v13 = 0;
      v14 = v12 - 1;
      v15 = 1;
      v16 = MEMORY[0x277D85DE0];
      v31 = v6;
      while (1)
      {
        v17 = *(*this + v13);
        if (v17 == 94)
        {
          break;
        }

        if ((v17 & 0x80) != 0 || (*(v16 + 4 * *(*this + v13) + 60) & 0x44000) != 0x40000)
        {
          v18 = v15 == 0;
          v30 = &byte_262899963;
          if (!v18)
          {
            v30 = *this;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 700, "dfutil/dtxtfile", 19, "%02x %u %.500s %.500s %u", v17, v13, v30, a3, v4);
        }

        result = DgnString::appendCharWithGrow(v6, v17);
LABEL_39:
        ++v13;
        v15 = *(this + 2);
        v14 = v15 - 1;
        if (!v15)
        {
          v14 = 0;
        }

        if (v13 >= v14)
        {
          return result;
        }
      }

      if (v13 + 2 >= v14)
      {
        v18 = v15 == 0;
        v19 = &byte_262899963;
        if (!v18)
        {
          v19 = *this;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 707, "dfutil/dtxtfile", 35, "%.500s %u %.500s %u", v19, v13, a3, v4);
      }

      v20 = 0;
      v21 = 1;
      while (1)
      {
        v22 = v21;
        v23 = *(*this + ++v13);
        v24 = *(*this + v13);
        v25 = 16 * v20;
        if (v23 < 0 || (v26 = *(v16 + 4 * v23 + 60), (v26 & 0x10000) == 0))
        {
          v27 = &byte_262899963;
          if (*(this + 2))
          {
            v27 = *this;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 715, "dfutil/dtxtfile", 20, "%c %u %.500s %.500s %u", v24, v13, v27, a3, v4);
          if ((v23 & 0x80000000) != 0)
          {
            goto LABEL_25;
          }

          v26 = *(v16 + 4 * v24 + 60);
        }

        if ((v26 & 0x400) != 0)
        {
          v28 = v24 - 48;
          goto LABEL_27;
        }

        if ((v26 & 0x1000) != 0)
        {
          LODWORD(v24) = __toupper(v24);
        }

LABEL_25:
        v28 = v24 - 55;
LABEL_27:
        v21 = 0;
        v20 = v28 + v25;
        if ((v22 & 1) == 0)
        {
          if (!v20)
          {
            v29 = &byte_262899963;
            if (*(this + 2))
            {
              v29 = *this;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 736, "dfutil/dtxtfile", 21, "%.500s %.500s %u", v29, a3, v4);
          }

          v6 = v31;
          result = DgnString::operator+=(v31, v20);
          goto LABEL_39;
        }
      }
    }
  }

  return result;
}

void *DgnTextFile::convertToEnvValueFormat(uint64_t a1, DgnString *this)
{
  *(this + 2) = 0;
  v4 = *(a1 + 8);
  if (v4 > 0x60)
  {
    v5 = 3 * v4 + 1;
  }

  else
  {
    v5 = 289;
  }

  result = DgnString::preAllocate(this, v5);
  if (*(a1 + 8))
  {
    v7 = 0;
    v8 = MEMORY[0x277D85DE0];
    do
    {
      v9 = *(*a1 + v7);
      if (*(*a1 + v7) < 0 || (*(v8 + 4 * *(*a1 + v7) + 60) & 0x40000) == 0 || (v9 != 94 ? (v10 = (*(v8 + 4 * *(*a1 + v7) + 60) & 0x4000) == 0) : (v10 = 0), v10 ? (v11 = v9 == 0) : (v11 = 1), v11 || v9 == 96))
      {
        result = DgnString::operator+=(this, __str);
      }

      else
      {
        result = DgnString::appendCharWithGrow(this, v9);
      }

      ++v7;
    }

    while (v7 < *(a1 + 8));
  }

  return result;
}

uint64_t DgnTextFile::convertFromEnvValueFormat(uint64_t a1, void **a2, const char *a3, int a4)
{
  v6 = a2;
  if (*a2)
  {
    MemChunkFree(*a2, 0);
    *v6 = 0;
  }

  *(v6 + 2) = 0;
  v32 = 0;
  v33 = 0;
  v8 = *(a1 + 8);
  if (v8 < 2 || (v34 = 0, HIDWORD(v33) = realloc_array(0, &v34, v8 - 1, 0, 0, 1), v32 = v34, v9 = *(a1 + 8), v10 = v9 - 1, v9 <= 1))
  {
    v11 = v33;
    goto LABEL_40;
  }

  v31 = v6;
  v12 = 0;
  v13 = MEMORY[0x277D85DE0];
  v14 = 1;
  do
  {
    v15 = *(*a1 + v12);
    if (v15 == 96)
    {
      if (v12 + 2 >= v10)
      {
        v16 = v14 == 0;
        v17 = &byte_262899963;
        if (!v16)
        {
          v17 = *a1;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 799, "dfutil/dtxtfile", 35, "%.500s %u %.500s %u", v17, v12, a3, a4);
      }

      v18 = 0;
      v19 = 1;
      while (1)
      {
        v20 = v19;
        v21 = *(*a1 + ++v12);
        v22 = *(*a1 + v12);
        if ((v21 & 0x8000000000000000) == 0 && (v23 = *(v13 + 4 * v21 + 60), (v23 & 0x10000) != 0))
        {
          v25 = 16 * v18;
          if ((v23 & 0x400) != 0)
          {
LABEL_23:
            v26 = v22 - 48;
            goto LABEL_24;
          }
        }

        else
        {
          v24 = &byte_262899963;
          if (*(a1 + 8))
          {
            v24 = *a1;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 807, "dfutil/dtxtfile", 20, "%c %u %.500s %.500s %u", v22, v12, v24, a3, a4);
          v25 = 16 * v18;
          if ((v21 & 0x80000000) != 0)
          {
            goto LABEL_21;
          }

          v23 = *(v13 + 4 * v22 + 60);
          if ((v23 & 0x400) != 0)
          {
            goto LABEL_23;
          }
        }

        if ((v23 & 0x1000) != 0)
        {
          LODWORD(v22) = __toupper(v22);
        }

LABEL_21:
        v26 = v22 - 55;
LABEL_24:
        v19 = 0;
        v18 = v26 + v25;
        if ((v20 & 1) == 0)
        {
          v27 = v33;
          if (v33 == HIDWORD(v33))
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        }
      }
    }

    LOBYTE(v18) = *(*a1 + v12);
    if (v15 < 0 || (*(v13 + 4 * v15 + 60) & 0x44000) != 0x40000)
    {
      v16 = v14 == 0;
      v28 = &byte_262899963;
      if (!v16)
      {
        v28 = *a1;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 792, "dfutil/dtxtfile", 19, "%02x %u %.500s %.500s %u", v15, v12, v28, a3, a4);
    }

    v27 = v33;
    if (v33 == HIDWORD(v33))
    {
LABEL_33:
      DgnPrimArray<char>::reallocElts(&v32, 1, 1);
      v27 = v33;
    }

LABEL_34:
    v32[v27] = v18;
    v11 = v33 + 1;
    LODWORD(v33) = v33 + 1;
    ++v12;
    v14 = *(a1 + 8);
    v10 = v14 - 1;
    if (!v14)
    {
      v10 = 0;
    }
  }

  while (v12 < v10);
  v6 = v31;
  if (v11 && !*(v31 + 2))
  {
    *v31 = MemChunkAlloc(v11, 0);
    *(v31 + 2) = v11;
    v11 = v33;
  }

LABEL_40:
  if (v11)
  {
    v29 = 0;
    do
    {
      *(*v6 + v29) = v32[v29];
      ++v29;
    }

    while (v29 < v33);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
}

void sub_2625D9E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t DgnTextFile::checkSafe(DgnTextFile *this, const char *a2)
{
  for (i = this; ; i = (i + 1))
  {
    v3 = *i;
    if (v3 < 1)
    {
      break;
    }

    if ((*(MEMORY[0x277D85DE0] + 4 * v3 + 60) & 0x40000) == 0)
    {
      return 0;
    }
  }

  if (!*i)
  {
    while (1)
    {
      v6 = *this;
      if (v6 != 32 && v6 != 94)
      {
        if (!*this)
        {
          return 1;
        }

        this = (this + 1);
      }

      v4 = 0;
      if (v6 == 94 || v6 == 32)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t DgnTextFile::checkReal(DgnTextFile *this, const char *a2)
{
  v2 = *this;
  if (*this)
  {
    v3 = 0;
    v4 = 0;
    for (i = 1; ; i = 0)
    {
      if (v2 == 43 || v2 == 45)
      {
        v6 = *(this + 1);
        this = (this + 1);
        v2 = v6;
        if (!v6)
        {
LABEL_16:
          v4 = 0;
          goto LABEL_17;
        }
      }

      else if (!v2)
      {
        return v4 & 1;
      }

      v7 = 0;
      v4 = 0;
      this = (this + 1);
      do
      {
        if ((v2 - 58) > 0xFFFFFFF5)
        {
          v4 = 1;
        }

        else
        {
          if ((v2 & 0xDF) == 0x45)
          {
            goto LABEL_16;
          }

          if ((v3 | v7) & 1 | (v2 != 46))
          {
            goto LABEL_19;
          }

          v7 = 1;
        }

        v8 = *this;
        this = (this + 1);
        v2 = v8;
      }

      while (v8);
      this = (this - 1);
LABEL_17:
      if ((i & 1) == 0)
      {
        return v4 & 1;
      }

      v2 = *this;
      v3 = 1;
    }
  }

LABEL_19:
  v4 = 0;
  return v4 & 1;
}

void DgnTextFileParser::DgnTextFileParser(DgnTextFileParser *this)
{
  DgnTextFile::DgnTextFile(this);
  *v1 = &unk_287527248;
  DgnString::DgnString((v1 + 27));
}

void DgnTextFileParser::~DgnTextFileParser(DgnTextFileParser *this)
{
  *this = &unk_287527248;
  DgnString::~DgnString(this + 216);

  DgnTextFile::~DgnTextFile(this);
}

{
  *this = &unk_287527248;
  DgnString::~DgnString(this + 216);
  DgnTextFile::~DgnTextFile(this);

  JUMPOUT(0x26672B1B0);
}

void DgnTextFileParser::verifyMatchingFileType(DgnTextFileParser *this, const char *a2)
{
  DgnString::DgnString(&v6);
  if (*(this + 104) != 1)
  {
    v7 = 0;
LABEL_8:
    if (*(this + 10))
    {
      v5 = *(this + 4);
    }

    else
    {
      v5 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1073, "dfutil/dtxtfile", 27, "%.500s %.500s", a2, v5);
    goto LABEL_12;
  }

  DgnString::operator=(&v6, (this + 16));
  if (v7)
  {
    v4 = v6;
  }

  else
  {
    v4 = &byte_262899963;
  }

  if (strcmp(v4, a2))
  {
    goto LABEL_8;
  }

LABEL_12:
  DgnString::~DgnString(&v6);
}

void sub_2625DA138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

double DgnTextFileParser::verifyFileVersionInRange(uint64_t result, unsigned int *a2)
{
  v2 = *(result + 72);
  v3 = a2[2];
  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = (*a2 + 4);
  v5 = 1;
  v6 = a2[2];
  v7 = 1;
  do
  {
    if (*(v4 - 1) == *(result + 68) && *v4 == v2)
    {
      break;
    }

    v7 = v5++ < v3;
    v4 += 2;
    --v6;
  }

  while (v6);
  if (!v7)
  {
LABEL_16:
    if (*(result + 24))
    {
      v8 = *(result + 16);
    }

    else
    {
      v8 = &byte_262899963;
    }

    if (*(result + 40))
    {
      v9 = *(result + 32);
    }

    else
    {
      v9 = &byte_262899963;
    }

    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1082, "dfutil/dtxtfile", 28, "%.500s %.500s %u %u", v8, v9, *(result + 68), v2);
  }

  return v10;
}

double DgnTextFileParser::verifyMatchingNumFieldSpecs(uint64_t this, int a2)
{
  v2 = *(this + 136);
  if (v2 != a2)
  {
    if (*(this + 24))
    {
      v3 = *(this + 16);
    }

    else
    {
      v3 = &byte_262899963;
    }

    if (*(this + 40))
    {
      v4 = *(this + 32);
    }

    else
    {
      v4 = &byte_262899963;
    }

    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1091, "dfutil/dtxtfile", 30, "%.500s %.500s %d %d", v3, v4, v2, a2);
  }

  return result;
}

double DgnTextFileParser::verifyNoBodyLines(const char **this)
{
  if (DgnTextFileParser::parseNextLine(this))
  {
    if (*(this + 6))
    {
      v3 = this[2];
    }

    else
    {
      v3 = &byte_262899963;
    }

    if (*(this + 10))
    {
      v4 = this[4];
    }

    else
    {
      v4 = &byte_262899963;
    }

    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1098, "dfutil/dtxtfile", 31, "%.500s %.500s", v3, v4);
  }

  return result;
}

uint64_t DgnTextFileParser::parseNextLine(DgnTextFileParser *this)
{
  v2 = *(this + 30);
  v3 = *(this + 39);
  if (v2 > v3)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 144, v2 - v3, 0);
  }

  v4 = *(this + 38);
  v5 = v4;
  if (v2 >= v4)
  {
    if (v2 > v4)
    {
      v7 = v2 - v4;
      v8 = 16 * v4;
      do
      {
        DgnString::DgnString((*(this + 18) + v8));
        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  else if (v4 > v2)
  {
    v6 = 16 * v4 - 16;
    do
    {
      --v5;
      DgnString::~DgnString(*(this + 18) + v6);
      v6 -= 16;
    }

    while (v5 > v2);
  }

  *(this + 38) = v2;
  Line = DgnTextFileParser::getLine(this);
  v10 = Line;
  if (Line)
  {
    if (*(this + 22))
    {
      v11 = *(this + 10);
    }

    else
    {
      v11 = &byte_262899963;
    }

    v36 = Line;
    DgnString::preAllocate(this + 27, 256);
    if (v2)
    {
      v14 = 0;
      v15 = MEMORY[0x277D85DE0];
      v16 = v11;
      while (1)
      {
        v17 = *(*(this + 14) + 4 * v14);
        if ((v17 - 1) < 3)
        {
          break;
        }

        if (!v17)
        {
          v21 = *v16;
          if (*v16 < 1)
          {
LABEL_32:
            if (v21)
            {
              goto LABEL_44;
            }

            v23 = *(this + 10) ? *(this + 4) : &byte_262899963;
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1596, "dfutil/dtxtfile", 17, "%d %.500s %.500s %u", v14, v11, v23, *(this + 25));
            v21 = *v16;
            v24 = v16;
            if (*v16)
            {
              goto LABEL_44;
            }
          }

          else
          {
            while ((*(v15 + 4 * v21 + 60) & 0x4000) != 0)
            {
              v22 = *++v16;
              v21 = v22;
              if (v22 <= 0)
              {
                goto LABEL_32;
              }
            }

LABEL_44:
            v24 = v16;
            do
            {
              if ((v21 & 0x80) == 0 && (*(v15 + 4 * v21 + 60) & 0x4000) != 0)
              {
                break;
              }

              v26 = *++v16;
              v21 = v26;
            }

            while (v26);
          }

LABEL_48:
          DgnString::set((this + 216), v24, v16 - v24);
        }

        DgnString::preAllocate((*(this + 18) + 16 * v14), 256);
        if (*(this + 10))
        {
          v27 = *(this + 4);
        }

        else
        {
          v27 = &byte_262899963;
        }

        DgnTextFile::convertFromDTFFormat((this + 216), (*(this + 18) + 16 * v14), v27, *(this + 25));
        v28 = *(this + 18) + 16 * v14;
        if (*(v28 + 8))
        {
          v29 = *v28;
        }

        else
        {
          v29 = &byte_262899963;
        }

        if ((DgnTextFile::checkAgainstFormat(v29, v17) & 1) == 0)
        {
          if (*(this + 10))
          {
            v30 = *(this + 4);
          }

          else
          {
            v30 = &byte_262899963;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1629, "dfutil/dtxtfile", 17, "%d %.500s %.500s %u", v14, v11, v30, *(this + 25));
        }

        if (++v14 == v2)
        {
          goto LABEL_63;
        }
      }

      v18 = *v16;
      if (*v16 < 1)
      {
LABEL_25:
        if (!v18)
        {
          v20 = *(this + 10) ? *(this + 4) : &byte_262899963;
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1578, "dfutil/dtxtfile", 17, "%d %.500s %.500s %u", v14, v11, v20, *(this + 25));
          v18 = *v16;
          v24 = v16;
          if (!*v16)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        while ((*(v15 + 4 * v18 + 60) & 0x4000) != 0)
        {
          v19 = *++v16;
          v18 = v19;
          if (v19 <= 0)
          {
            goto LABEL_25;
          }
        }
      }

      v24 = v16;
      do
      {
        if ((v18 & 0x80) == 0 && (*(v15 + 4 * v18 + 60) & 0x4000) != 0)
        {
          break;
        }

        v25 = *++v16;
        v18 = v25;
      }

      while (v25);
      goto LABEL_48;
    }

    v16 = v11;
LABEL_63:
    if (*v16 < 1)
    {
      v10 = v36;
    }

    else
    {
      v31 = *v16;
      v10 = v36;
      do
      {
        if ((*(MEMORY[0x277D85DE0] + 4 * v31 + 60) & 0x4000) == 0)
        {
          break;
        }

        v32 = *++v16;
        v31 = v32;
      }

      while (v32 > 0);
    }

    if (strlen(v16))
    {
      if (*(this + 22))
      {
        v33 = *(this + 10);
      }

      else
      {
        v33 = &byte_262899963;
      }

      if (*(this + 10))
      {
        v34 = *(this + 4);
      }

      else
      {
        v34 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1648, "dfutil/dtxtfile", 18, "%.500s %d %.500s %.500s %u", v33, v2, v16, v34, *(this + 25));
    }
  }

  else
  {
    v12 = *(this + 38);
    if (v12 >= 1)
    {
      v13 = 16 * v12 - 16;
      do
      {
        DgnString::~DgnString(*(this + 18) + v13);
        v13 -= 16;
      }

      while (v13 != -16);
    }

    *(this + 38) = 0;
  }

  return v10;
}

void DgnTextFileParser::verifyNoUnknownHeaderFields(uint64_t this)
{
  v1 = *(this + 200);
  if (v1)
  {
    v3 = 0;
    for (i = 0; i < v1; ++i)
    {
      if ((*(*(this + 192) + i) & 1) == 0)
      {
        v5 = *(this + 160) + v3;
        if (*(v5 + 8))
        {
          v6 = *v5;
        }

        else
        {
          v6 = &byte_262899963;
        }

        if (*(this + 24))
        {
          v7 = *(this + 16);
        }

        else
        {
          v7 = &byte_262899963;
        }

        if (*(this + 40))
        {
          v8 = *(this + 32);
        }

        else
        {
          v8 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1108, "dfutil/dtxtfile", 37, "%.500s %.500s %.500s", v6, v7, v8);
        v1 = *(this + 200);
      }

      v3 += 16;
    }
  }
}

void DgnTextFileParser::openDgnTextFileParser(uint64_t *a1, FileSpec **a2, uint64_t a3, int a4)
{
  v5 = a3;
  SubFileExtensionString = GetSubFileExtensionString(a3);
  DgnString::DgnString(v15);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFile::makeSubFileName(CurrentSubDirComponents, SubFileExtensionString, v15);
  DgnString::preAllocate(a1 + 4, 192);
  DgnString::operator=((a1 + 4), v15);
  DgnString::operator+=((a1 + 4), " subfile of ");
  DgnString::preAllocate(a1 + 6, 192);
  DgnString::operator=((a1 + 6), (a1 + 4));
  if (*(a2 + 6))
  {
    v10 = a2[2];
  }

  else
  {
    v10 = &byte_262899963;
  }

  DgnString::operator+=((a1 + 4), v10);
  DgnString::DgnString(v14);
  FileSpec::getDiagnosticMaskedName(a2 + 2, v14, v11);
  DgnString::operator+=((a1 + 6), v14);
  if (a4)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  v13 = DFile::openSubFile(a2, v5, v12, 1);
  DgnTextFileParser::openDgnTextFileParser(a1, v13);
  DgnString::~DgnString(v14);
  DgnString::~DgnString(v15);
}

void sub_2625DA984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnTextFileParser::openDgnTextFileParser(DgnTextFileParser *this, DgnStream *a2)
{
  *(this + 1) = a2;
  *(this + 25) = 0;
  DgnString::DgnString(&v39);
  DgnString::DgnString(&v37);
  if (!DgnTextFileParser::getNextHeaderField(this, &v39, &v37, 1) || ((v3 = v40, v4 = v39, v40) ? (v5 = v39) : (v5 = &byte_262899963), strncmp(v5, "DGNTEXTFILE_VERSION", 0x13uLL)))
  {
    if (*(this + 22))
    {
      v6 = *(this + 10);
    }

    else
    {
      v6 = &byte_262899963;
    }

    if (*(this + 10))
    {
      v7 = *(this + 4);
    }

    else
    {
      v7 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1169, "dfutil/dtxtfile", 1, "%.500s %.500s %u", v6, v7, *(this + 25));
    v3 = v40;
    v4 = v39;
  }

  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = &byte_262899963;
  }

  if (strcmp(v8, "DGNTEXTFILE_VERSION"))
  {
    if (*(this + 22))
    {
      v9 = *(this + 10);
    }

    else
    {
      v9 = &byte_262899963;
    }

    if (*(this + 10))
    {
      v10 = *(this + 4);
    }

    else
    {
      v10 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1173, "dfutil/dtxtfile", 2, "%.500s %.500s %u", v9, v10, *(this + 25));
  }

  if (v38)
  {
    v11 = v37;
  }

  else
  {
    v11 = &byte_262899963;
  }

  v36 = 0;
  v35 = 0;
  if (sscanf(v11, "%d%c", &v36, &v35) != 1 || (v12 = v36, v36 < 0))
  {
    if (*(this + 10))
    {
      v13 = *(this + 4);
    }

    else
    {
      v13 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1181, "dfutil/dtxtfile", 12, "%.500s %.500s %u", v11, v13, *(this + 25));
    v12 = v36;
  }

  if (v12 != 5)
  {
    if (*(this + 10))
    {
      v14 = *(this + 4);
    }

    else
    {
      v14 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1184, "dfutil/dtxtfile", 12, "%.500s %.500s %u", v11, v14, *(this + 25));
    v12 = v36;
  }

  v15 = 0;
  *(this + 16) = v12;
  do
  {
    DgnTextFileParser::getNextHeaderField(this, &v39, &v37, 0);
    if (v40)
    {
      v16 = v39;
    }

    else
    {
      v16 = &byte_262899963;
    }

    if (v15 == 2)
    {
      if (strcmp(v16, "DGNTEXTFILE_FILEVERSION_MINOR"))
      {
        if (*(this + 22))
        {
          v21 = *(this + 10);
        }

        else
        {
          v21 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v28 = *(this + 4);
        }

        else
        {
          v28 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1240, "dfutil/dtxtfile", 3, "%.500s %.500s %u", v21, v28, *(this + 25));
      }

      if (v38)
      {
        v29 = v37;
      }

      else
      {
        v29 = &byte_262899963;
      }

      v36 = 0;
      v35 = 0;
      if (sscanf(v29, "%d%c", &v36, &v35) != 1 || (v30 = v36, v36 < 0))
      {
        if (*(this + 6))
        {
          v31 = *(this + 2);
        }

        else
        {
          v31 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v34 = *(this + 4);
        }

        else
        {
          v34 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1250, "dfutil/dtxtfile", 13, "%.500s %.500s %.500s %u", v31, v29, v34, *(this + 25));
        v30 = v36;
      }

      *(this + 18) = v30;
    }

    else if (v15 == 1)
    {
      if (strcmp(v16, "DGNTEXTFILE_FILEVERSION_MAJOR"))
      {
        if (*(this + 22))
        {
          v20 = *(this + 10);
        }

        else
        {
          v20 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v24 = *(this + 4);
        }

        else
        {
          v24 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1218, "dfutil/dtxtfile", 3, "%.500s %.500s %u", v20, v24, *(this + 25));
      }

      if (v38)
      {
        v25 = v37;
      }

      else
      {
        v25 = &byte_262899963;
      }

      v36 = 0;
      v35 = 0;
      if (sscanf(v25, "%d%c", &v36, &v35) != 1 || (v26 = v36, v36 < 0))
      {
        if (*(this + 6))
        {
          v27 = *(this + 2);
        }

        else
        {
          v27 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v33 = *(this + 4);
        }

        else
        {
          v33 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1228, "dfutil/dtxtfile", 13, "%.500s %.500s %.500s %u", v27, v25, v33, *(this + 25));
        v26 = v36;
      }

      *(this + 17) = v26;
    }

    else if (v15)
    {
      if (strcmp(v16, "DGNTEXTFILE_FIELDS"))
      {
        if (*(this + 22))
        {
          v22 = *(this + 10);
        }

        else
        {
          v22 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v32 = *(this + 4);
        }

        else
        {
          v32 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1262, "dfutil/dtxtfile", 14, "%.500s %.500s %u", v22, v32, *(this + 25));
      }

      DgnTextFileParser::scanValueForLineFieldFormats(this, &v37);
    }

    else
    {
      v18 = !strcmp(v16, "DGNTEXTFILE_TYPE") && v38 >= 2;
      if (!v18 || (DgnTextFile::checkSafe(v37, v17) & 1) == 0)
      {
        if (*(this + 22))
        {
          v19 = *(this + 10);
        }

        else
        {
          v19 = &byte_262899963;
        }

        if (*(this + 10))
        {
          v23 = *(this + 4);
        }

        else
        {
          v23 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/dfutil/dtxtfile.cpp", 1205, "dfutil/dtxtfile", 1, "%.500s %.500s %u", v19, v23, *(this + 25));
      }

      DgnString::operator=((this + 16), &v37);
    }

    ++v15;
  }

  while (v15 != 4);
  *(this + 208) = 1;
  *(this + 104) = 1;
  DgnTextFileParser::readHeader(this);
  DgnString::~DgnString(&v37);
  DgnString::~DgnString(&v39);
}

void sub_2625DAFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  _Unwind_Resume(a1);
}