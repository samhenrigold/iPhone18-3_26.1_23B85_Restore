uint64_t PelScorer::MICFeaturesFunction(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 112);
  v4 = *(*(a1 + 16) + 152);
  v46 = 0;
  v47 = 0;
  if (v4)
  {
    v44 = 0;
    v6 = realloc_array(0, &v44, 8 * v4, 0, 0, 1);
    v45 = 0;
    v46 = v44;
    LODWORD(v47) = v4;
    HIDWORD(v47) = v6 >> 3;
    v44 = 0;
    v42 = 0;
    v7 = realloc_array(0, &v42, 4 * v4, 0, 0, 1);
    v43 = 0;
    v44 = v42;
    LODWORD(v45) = v4;
    HIDWORD(v45) = v7 >> 2;
    v42 = 0;
    v48 = 0;
    v8 = realloc_array(0, &v48, 4 * v4, 0, 0, 1);
    v9 = 0;
    v10 = v3 + 3;
    v11 = v10 & 0xFFFFFFFC;
    v42 = v48;
    LODWORD(v43) = v4;
    HIDWORD(v43) = v8 >> 2;
    v12 = *(a1 + 16);
    v13 = 32;
    do
    {
      v14 = 0;
      v15 = v46;
      v46[v9] = 0;
      if (v10 >= 4)
      {
        v16 = 0;
        v14 = 0;
        v17 = 0;
        v18 = v12[25] + 24 * v9;
        v19 = v10 & 0xFFFFFFFC;
        v20 = 4 * v11;
        do
        {
          v21 = 0;
          v22 = *a2;
          v23 = v16;
          do
          {
            if (4 * v17 >= v11)
            {
              v24 = 0;
            }

            else
            {
              v24 = 0;
              v25 = v19;
              v26 = v23;
              do
              {
                v24 += *(*v18 + 2 * (*(v18 + 16) + v26)) * *(v22 + *(v12[27] + v26));
                v26 += 4;
                --v25;
              }

              while (v25);
            }

            v14 = (v14 + v24 * v24);
            v15[v9] = v14;
            ++v21;
            ++v23;
          }

          while (v21 != 4);
          ++v17;
          v16 += v20;
          v20 -= 16;
          v19 -= 4;
        }

        while (v17 != v10 >> 2);
      }

      UnscaleBits = BinaryIntScale::getUnscaleBits(v14, 14);
      *(v44 + v9) = UnscaleBits;
      v12 = *(a1 + 16);
      v28 = 2 * *(v12[21] + 4 * v9) - UnscaleBits;
      *(v42 + v9) = v28;
      if (v13 >= v28)
      {
        v13 = v28;
      }

      ++v9;
    }

    while (v9 != v4);
    *(a1 + 264) = v13;
    v29 = *(*(a1 + 16) + 168);
    v30 = v46;
    v31 = *(a1 + 248);
    v32 = v4;
    do
    {
      v33 = *v29++;
      v34 = 2 * v33 - v13 - 1;
      v36 = 2 * v33 - v13;
      v35 = 2 * v33 == v13;
      v38 = *v30++;
      v37 = v38;
      v39 = 1 << v34;
      if (v35)
      {
        v39 = 0;
      }

      *v31++ = (v39 + v37) >> v36;
      --v32;
    }

    while (v32);
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v43 = 0;
    *(a1 + 264) = 32;
  }

  v40 = (v4 + 1) & 0xFFFFFFFE;
  if (v4 < v40)
  {
    bzero((*(a1 + 248) + 2 * v4), 2 * (v40 + ~v4) + 2);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v46);
}

void sub_26283A4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

void sub_26283A630(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  PelScorer::~PelScorer(v1);
  _Unwind_Resume(a1);
}

void OnDemandPelScorer::~OnDemandPelScorer(PelScoreCache **this)
{
  *this = &unk_287527098;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 81));

  PelScorer::~PelScorer(this);
}

{
  *this = &unk_287527098;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 81));

  PelScorer::~PelScorer(this);
}

{
  *this = &unk_287527098;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 81));
  PelScorer::~PelScorer(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t OnDemandPelScorer::loadFrames(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  if (a3 && *(a3 + 16) > a2)
  {
    return 1;
  }

  result = 0;
  if (a4)
  {
    *a4 = a2;
  }

  return result;
}

uint64_t OnDemandPelScorer::computeScoreForActivePelsThisFrame(uint64_t this, const BitArray *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    v4 = this;
    for (i = 0; i != v2; ++i)
    {
      if ((*(*a2 + 4 * (i >> 5)) >> i))
      {
        this = PelScoreCache::getScoreNoBackoff(*(v4 + 120), i);
      }
    }
  }

  return this;
}

void OnDemandPelScorer::printSize(OnDemandPelScorer *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 3172);
  if (v20)
  {
    v13 = v19;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v19);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v17 = 0;
  v18 = 0;
  PelScorer::printSize(this, a2, (a3 + 1), &v18, &v17, a6);
  *a4 += v18;
  *a5 += v17;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/pelsc.cpp", 3178);
  if (v20)
  {
    v16 = v19;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, a3, &byte_262899963, (35 - a3), (35 - a3), v16, *a4, *a5, *a6);
  DgnString::~DgnString(&v19);
}

void sub_26283A968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t OnDemandPelScorer::getPackedIntComponentScore(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 16);
  v4 = *(v3 + 132);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = this;
  LODWORD(this) = 0;
  v6 = *(*(v3 + 256) + 4 * a2);
  v7 = *(v3 + 232);
  v8 = *(v3 + 248);
  v9 = (*(v3 + 148) * a3);
  v10 = *(v5 + 616);
  v11 = v4 + 1;
  v12 = (v10 + 2 * v4 - 2);
  v13 = (v6 + 2 * v4 + v8 + v9 + v7 - 1);
  do
  {
    v14 = *v12--;
    v15 = v14 - *(v13 - 1);
    v16 = *v13;
    v13 -= 2;
    this = (this + v15 * v16 * v15);
    --v11;
  }

  while (v11 > 1);
  return this;
}

uint64_t OnDemandPelScorer::getQuantPerDimComponentScore(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 16);
  v4 = *(v3 + 132);
  if (v4 < 1)
  {
    return 0;
  }

  v5 = this;
  v6 = 0;
  LODWORD(this) = 0;
  v7 = (*(v3 + 232) + *(v3 + 248) + *(*(v3 + 256) + 4 * a2) + (*(v3 + 148) * a3));
  v8 = *(v5 + 616);
  v9 = *(v5 + 648);
  v10 = 32 * v4;
  do
  {
    v12 = *v8++;
    v11 = v12;
    v13 = *v7++;
    v14 = *(v9 + (v6 + (v13 >> 4)));
    this = this + (v11 - v14) * (v11 - v14) * *(v9 + (v6 + (v13 & 0xF) + 16));
    v6 += 32;
  }

  while (v10 != v6);
  return this;
}

uint64_t AlignedArray<short>::AlignedArray(uint64_t a1, unsigned int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = a2 + 7;
  if (a2 == -7)
  {
    v5 = 0;
  }

  else
  {
    DgnPrimArray<short>::reallocElts(a1, a2 + 7, 0);
    v5 = *a1;
  }

  *(a1 + 8) = v4;
  v6 = ((v5 + 15) & 0xFFFFFFF0) - v5;
  *(a1 + 16) = v6 >> 1;
  bzero(v5, v6);
  bzero((*a1 + 2 * *(a1 + 16) + 2 * a2), 2 * (7 - *(a1 + 16)));
  return a1;
}

void Segmentation::printSize(Segmentation *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v21, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/segment.cpp", 176);
  if (v22)
  {
    v13 = v21;
  }

  else
  {
    v13 = &unk_262891637;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_262891637, a3, &unk_262891637, v13);
  DgnString::~DgnString(&v21);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_262891637);
  v15 = sizeObject<PelSegment *>(this, 0);
  v16 = sizeObject<PelSegment *>(this, 1);
  getShipObjectSizeDescription(&v21, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/segment.cpp", 177);
  if (v22)
  {
    v18 = v21;
  }

  else
  {
    v18 = &unk_262891637;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_262891637, (34 - a3), (34 - a3), v18, v15, v16, 0);
  DgnString::~DgnString(&v21);
  *a4 += v15;
  *a5 += v16;
  getShipObjectSizeDescription(&v21, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/segment.cpp", 178);
  if (v22)
  {
    v20 = v21;
  }

  else
  {
    v20 = &unk_262891637;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, a3, &unk_262891637, (35 - a3), (35 - a3), v20, *a4, *a5, *a6);
  DgnString::~DgnString(&v21);
}

void sub_26283AD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<PelSegment *>(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  v3 = a2;
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
          v9 += sizeObject(v10, v3);
          v8 = gShadowDiagnosticShowIdealizedObjectSizes;
        }

        v2 += v9;
        v11 = v7-- + 1;
      }

      while (v11 > 1);
    }

    if (!v3)
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

void MrecInitModule_leafgraph_fstgraph(void)
{
  if (!gParDebugShowFstGraphDiagnostic)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowFstGraphDiagnostic", byte_262891653, byte_262891653, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowFstGraphDiagnostic = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowFstGraphDiagnostic);
  }

  if (!gParDebugFstGraphConstruction)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugFstGraphConstruction", byte_262891653, byte_262891653, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugFstGraphConstruction = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstGraphConstruction);
  }

  if (!gParDebugFstGraphConstruction2)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugFstGraphConstruction2", byte_262891653, byte_262891653, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugFstGraphConstruction2 = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstGraphConstruction2);
  }

  if (!gParDebugFstGraphConstruction3)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugFstGraphConstruction3", byte_262891653, byte_262891653, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugFstGraphConstruction3 = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstGraphConstruction3);
  }

  if (!gParDebugFstGraphConstruction4)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugFstGraphConstruction4", byte_262891653, byte_262891653, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugFstGraphConstruction4 = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugFstGraphConstruction4);
  }

  if (!gParFstGraphLeftCtxSize)
  {
    v10 = MemChunkAlloc(0x38uLL, 0);
    *&v38 = 0x400000000;
    v11 = IntGlobalParamBase::IntGlobalParamBase(v10, "FstGraphLeftCtxSize", byte_262891653, byte_262891653, 1, &v38, 0);
    *v11 = &unk_287528130;
    gParFstGraphLeftCtxSize = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphLeftCtxSize);
  }

  if (!gParFstGraphRightCtxSize)
  {
    v12 = MemChunkAlloc(0x38uLL, 0);
    *&v38 = 0x100000000;
    v13 = IntGlobalParamBase::IntGlobalParamBase(v12, "FstGraphRightCtxSize", byte_262891653, byte_262891653, 1, &v38, 0);
    *v13 = &unk_287528130;
    gParFstGraphRightCtxSize = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphRightCtxSize);
  }

  if (!gParFstGraphBigEndian)
  {
    v14 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v14, "FstGraphBigEndian", byte_262891653, byte_262891653, 0, 0, 0);
    *v15 = &unk_287527EA0;
    gParFstGraphBigEndian = v15;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphBigEndian);
  }

  if (!gParFstGraphFinalMin)
  {
    v16 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v16, "FstGraphFinalMin", byte_262891653, byte_262891653, 1, 0, 0);
    *v17 = &unk_287527EA0;
    gParFstGraphFinalMin = v17;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphFinalMin);
  }

  if (!gParFstGraphFullMin)
  {
    v18 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v18, "FstGraphFullMin", byte_262891653, byte_262891653, 0, 0, 0);
    *v19 = &unk_287527EA0;
    gParFstGraphFullMin = v19;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphFullMin);
  }

  if (!gParFstGraphRegularizePush)
  {
    v20 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v20, "FstGraphRegularizePush", byte_262891653, byte_262891653, 0, 0, 0);
    *v21 = &unk_287527EA0;
    gParFstGraphRegularizePush = v21;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphRegularizePush);
  }

  if (!gParFstGraphInsertSilence)
  {
    v22 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v22, "FstGraphInsertSilence", byte_262891653, byte_262891653, 1, 0, 0);
    *v23 = &unk_287527EA0;
    gParFstGraphInsertSilence = v23;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphInsertSilence);
  }

  if (!gParFstGraphSilenceCost)
  {
    v24 = MemChunkAlloc(0x48uLL, 0);
    v38 = xmmword_262891640;
    v25 = DoubleGlobalParamBase::DoubleGlobalParamBase(v24, "FstGraphSilenceCost", byte_262891653, byte_262891653, &v38, 0, 0.0);
    *v25 = &unk_2875271F0;
    gParFstGraphSilenceCost = v25;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphSilenceCost);
  }

  if (!gParFstGraphAstraFormat)
  {
    v26 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v26, "FstGraphAstraFormat", byte_262891653, byte_262891653, 0, 0, 0);
    *v27 = &unk_287527EA0;
    gParFstGraphAstraFormat = v27;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphAstraFormat);
  }

  if (!gParFstGraphSkipArcs)
  {
    v28 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v28, "FstGraphSkipArcs", byte_262891653, byte_262891653, 0, 0, 0);
    *v29 = &unk_287527EA0;
    gParFstGraphSkipArcs = v29;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphSkipArcs);
  }

  if (!gParFstGraphWordInsertionCost)
  {
    v30 = MemChunkAlloc(0x48uLL, 0);
    v38 = xmmword_262891640;
    v31 = DoubleGlobalParamBase::DoubleGlobalParamBase(v30, "FstGraphWordInsertionCost", byte_262891653, byte_262891653, &v38, 0, 0.0);
    *v31 = &unk_2875271F0;
    gParFstGraphWordInsertionCost = v31;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphWordInsertionCost);
  }

  if (!gParFstGraphPush)
  {
    v32 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v32, "FstGraphPush", byte_262891653, byte_262891653, 0, 0, 0);
    *v33 = &unk_287527EA0;
    gParFstGraphPush = v33;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphPush);
  }

  if (!gParFstGraphPushForwardCost)
  {
    v34 = MemChunkAlloc(0x38uLL, 0);
    *&v38 = 0x1F400000000;
    v35 = IntGlobalParamBase::IntGlobalParamBase(v34, "FstGraphPushForwardCost", byte_262891653, byte_262891653, 0, &v38, 0);
    *v35 = &unk_287528130;
    gParFstGraphPushForwardCost = v35;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphPushForwardCost);
  }

  if (!gParFstGraphOutputFormat)
  {
    v36 = MemChunkAlloc(0x38uLL, 0);
    *&v38 = 0x900000004;
    v37 = IntGlobalParamBase::IntGlobalParamBase(v36, "FstGraphOutputFormat", byte_262891653, byte_262891653, 4, &v38, 0);
    *v37 = &unk_287528130;
    gParFstGraphOutputFormat = v37;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParFstGraphOutputFormat);
  }
}

uint64_t TDataManager::getBoolVar(TDataManager *this, const char *a2, uint64_t a3)
{
  if ((*(*this + 40))(this))
  {
    operator new[]();
  }

  return a3;
}

void sub_26283BA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25)
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

uint64_t TDataManager::setBoolVar(TDataManager *this, const char *a2, int a3)
{
  if (a3)
  {
    v3 = "1";
  }

  else
  {
    v3 = "0";
  }

  return (*(*this + 48))(this, a2, v3, 1);
}

uint64_t TDataManager::getIntVar(TDataManager *this, const char *a2, uint64_t a3)
{
  if ((*(*this + 40))(this))
  {
    operator new[]();
  }

  return a3;
}

uint64_t TDataManager::setIntVar(TDataManager *this, const char *a2, uint64_t a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  MEMORY[0x26672B060](&v14, a3);
  std::stringbuf::str();
  std::stringbuf::str();
  if (v13 >= 0)
  {
    v6 = &v12;
  }

  else
  {
    v6 = v12;
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v10;
  }

  (*(*this + 48))(this, a2, v6, v7);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  v14 = *MEMORY[0x277D82828];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  v15 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x26672B160](&v18);
}

void sub_26283BE98(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, void *a9, void *a10, int a11, __int16 a12, char a13, char a14, char a15, __int16 _1A, __int16 _1C, char _1E, char arg1F, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  if (arg1F < 0)
  {
    operator delete(a10);
  }

  if (SHIBYTE(a18) < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a19, MEMORY[0x277D82828]);
  MEMORY[0x26672B160](va);
  _Unwind_Resume(a1);
}

void TDataManager::getStringVar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 40))(a1))
  {
    operator new[]();
  }

  JUMPOUT(0x26672AEC0);
}

off_t TDataManager::getVar(TDataManager *this, char *a2, char *a3, size_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  __filename = v23;
  v21 = 256;
  v24 = 1;
  v7 = this + 16;
  if (*(this + 39) < 0)
  {
    v7 = *v7;
  }

  v8 = 0;
  v22 = 0;
    ;
  }

  TBuffer<char>::insert(&__filename, 0, v7, v8 - 1);
  DirSep = getDirSep();
  TBuffer<char>::insert(&__filename, v22, &DirSep, 1uLL);
  v10 = 0;
    ;
  }

  TBuffer<char>::insert(&__filename, v22, a2, v10 - 1);
  v12 = 0;
    ;
  }

  TBuffer<char>::insert(&__filename, v22, FILE_EXTENSION, v12 - 1);
  if (v22 >= v21)
  {
    if (v24)
    {
      DirSep = 0;
      TBuffer<char>::insert(&__filename, v22--, &DirSep, 1uLL);
    }

    else if (v21)
    {
      __filename[v21 - 1] = 0;
    }
  }

  else
  {
    v22[__filename] = 0;
  }

  v14 = fopen(__filename, "rb");
  v15 = v14;
  if (v14)
  {
    fseek(v14, 0, 2);
    v16 = ftello(v15);
    v17 = v16;
    if (a4 && v16)
    {
      fseek(v15, 0, 0);
      fread(a3, 1uLL, a4, v15);
    }

    fclose(v15);
  }

  else
  {
    v17 = 0;
  }

  if (v24 == 1 && __filename != v23 && __filename)
  {
    MEMORY[0x26672B1B0]();
  }

  return v17;
}

void sub_26283C224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 1 && a10 != v45)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(exception_object);
}

char *TDataManager::setVar(TDataManager *this, char *a2, const char *a3, size_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  __filename = v31;
  v29 = 256;
  v32 = 1;
  v7 = this + 16;
  if (*(this + 39) < 0)
  {
    v7 = *v7;
  }

  v8 = 0;
  v30 = 0;
    ;
  }

  TBuffer<char>::insert(&__filename, 0, v7, v8 - 1);
  __p[0] = getDirSep();
  TBuffer<char>::insert(&__filename, v30, __p, 1uLL);
  v10 = 0;
    ;
  }

  TBuffer<char>::insert(&__filename, v30, a2, v10 - 1);
  v12 = 0;
    ;
  }

  TBuffer<char>::insert(&__filename, v30, FILE_EXTENSION, v12 - 1);
  if (v30 >= v29)
  {
    if (v32)
    {
      __p[0] = 0;
      TBuffer<char>::insert(&__filename, v30--, __p, 1uLL);
    }

    else if (v29)
    {
      __filename[v29 - 1] = 0;
    }
  }

  else
  {
    v30[__filename] = 0;
  }

  v14 = fopen(__filename, "rb");
  if (v14)
  {
    fclose(v14);
  }

  v15 = v30;
  if (a4)
  {
    if (v30 >= v29)
    {
      if (v32)
      {
        __p[0] = 0;
        TBuffer<char>::insert(&__filename, v30--, __p, 1uLL);
      }

      else if (v29)
      {
        __filename[v29 - 1] = 0;
      }
    }

    else
    {
      v30[__filename] = 0;
    }

    v16 = fopen(__filename, "wb");
    if (!v16)
    {
      v18 = TBuffer<char>::c_str(&__filename);
      tknPrintf("Error: Couldn't save '%s' to '%s'.\n", v19, a2, v18);
      std::string::basic_string[abi:ne200100]<0>(v24, &byte_262899963);
      *__p = byte_287529580;
      if (SHIBYTE(v25) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v24[0], v24[1]);
      }

      else
      {
        *&__p[8] = *v24;
        v27 = v25;
      }

      *__p = &unk_287528A80;
      if (v27 >= 0)
      {
        v20 = &__p[8];
      }

      else
      {
        v20 = *&__p[8];
      }

      conditionalAssert(v20, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/datamgr.cpp", 201);
      *__p = byte_287529580;
      if (SHIBYTE(v27) < 0)
      {
        operator delete(*&__p[8]);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24[0]);
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

      *exception = &unk_287528A80;
    }

    fwrite(a3, 1uLL, a4, v16);
    result = fclose(v16);
  }

  else
  {
    if (v30 >= v29)
    {
      if (v32)
      {
        __p[0] = 0;
        TBuffer<char>::insert(&__filename, v30--, __p, 1uLL);
      }

      else if (v29)
      {
        __filename[v29 - 1] = 0;
      }
    }

    else
    {
      v30[__filename] = 0;
    }

    result = remove(__filename, v15);
  }

  if (v32 == 1)
  {
    result = __filename;
    if (__filename != v31)
    {
      if (__filename)
      {
        return MEMORY[0x26672B1B0]();
      }
    }
  }

  return result;
}

void sub_26283C688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v63 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v63)
  {
LABEL_6:
    if (a62 == 1 && a27 != v64)
    {
      if (a27)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    _Unwind_Resume(a1);
  }

  __cxa_free_exception(v62);
  goto LABEL_6;
}

void TDataSaver::~TDataSaver(char **this)
{
  v2 = this + 1;
  v3 = *this;
  if (*this != (this + 1))
  {
    do
    {
      v4 = *(v3 + 7);
      if (v4)
      {
        MEMORY[0x26672B1B0](v4, 0x1000C4077774924);
      }

      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::destroy(this, this[1]);
}

void TDataSaver::load(uint64_t **this, const TDataManager *a2, char *a3, char *a4)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if ((*(*a2 + 40))(a2, a3, 0, 0))
  {
    operator new[]();
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v5);
  v9 = __p;
  v6 = std::__tree<std::__value_type<std::string,std::pair<char *,unsigned long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<char *,unsigned long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<char *,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this, __p, &std::piecewise_construct, &v9);
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26283C928(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TDataSaver::save(void *this, TDataManager *a2)
{
  v2 = this + 1;
  v3 = *this;
  if (*this != this + 1)
  {
    do
    {
      v5 = v3 + 4;
      if (*(v3 + 55) < 0)
      {
        v5 = *v5;
      }

      this = (*(*a2 + 48))(a2, v5, v3[7], v3[8]);
      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }

  return this;
}

uint64_t TDataSaver::getStringVar(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  v7 = std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::find<std::string>(a1, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 != v7 && *(v7 + 56))
  {
    a4 = *(v7 + 56);
  }

  return MEMORY[0x26672AEC0](a3, a4);
}

void sub_26283CA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void TDataManager::~TDataManager(void **this)
{
  *this = &unk_287528AD0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  *this = &unk_287528AD0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  JUMPOUT(0x26672B1B0);
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<char *,unsigned long>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<char *,unsigned long>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<char *,unsigned long>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void MrecInitModule_snr_channel(void)
{
  if (!gParDebugSnrEstimation)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugSnrEstimation", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugSnrEstimation = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugSnrEstimation);
  }
}

void MrecInitLibrary_audiosrc(void)
{
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_filesrc_audiosrc();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_sdpres_sdapi();
}

void MrecInitLibrarySet_throughAudiosrc(void)
{
  MrecInitLibrarySet_throughFrame();

  MrecInitLibrary_audiosrc();
}

uint64_t *realloc_array(void *a1, void **a2, unint64_t a3, size_t a4, uint64_t a5, char a6)
{
  v15 = 0;
  MemChunkRegionAndSuggestSize = GetMemChunkRegionAndSuggestSize(a1, a3, &v15);
  if ((a6 & 1) != 0 || v15 != a5)
  {
    v12 = MemChunkAlloc(v15, MemChunkRegionAndSuggestSize);
    v13 = v12;
    if (a1)
    {
      if (a4)
      {
        memcpy(v12, a1, a4);
      }

      MemChunkFree(a1, MemChunkRegionAndSuggestSize);
    }

    *a2 = v13;
    return v15;
  }

  else
  {
    *a2 = a1;
  }

  return a5;
}

void TGrammar::TGrammar(TGrammar *this, const TLocaleInfo *a2)
{
  *(this + 3) = 0;
  *(this + 2) = this + 24;
  *(this + 4) = 0;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  TAllocator::TAllocator((this + 72), 2048);
  *(this + 120) = 0u;
  *(this + 8) = 0;
  *this = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  operator new();
}

void sub_26283CE8C(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v4, 0x60C40CE5A77A8);
  v9 = *(v3 + 144);
  if (v9)
  {
    *(v3 + 152) = v9;
    operator delete(v9);
  }

  if (*v7)
  {
    operator delete(*v7);
  }

  TAllocator::clear((v1 + 56));
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v2, *v6);
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(v1, *v5);
  _Unwind_Resume(a1);
}

void *TGrammar::addNonTerminal(uint64_t a1, __int32 *a2, int a3)
{
  v14 = a2;
  v5 = std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(a1 + 40, &v14);
  if (a1 + 48 == v5)
  {
    v7 = wcslen(v14);
    if ((v7 + 1) >> 62)
    {
      v8 = -1;
    }

    else
    {
      v8 = 4 * (v7 + 1);
    }

    v9 = TAllocator::allocate((a1 + 72), v8);
    v13 = v9;
    wcscpy(v9, v14);
    v6 = TAllocator::allocate((a1 + 72), 40);
    v10 = *(a1 + 64);
    *(a1 + 64) = v10 + 1;
    v6[2] = v9;
    v6[3] = v10;
    *v6 = 0;
    v6[1] = 0;
    v6[4] = 0;
    v15 = &v13;
    std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::__emplace_unique_key_args<wchar_t const*,std::piecewise_construct_t const&,std::tuple<wchar_t const* const&>,std::tuple<>>((a1 + 40), &v13, &std::piecewise_construct, &v15)[5] = v6;
  }

  else
  {
    v6 = *(v5 + 40);
  }

  v11 = 1;
  if (!a3)
  {
    v11 = 2;
  }

  v6[1] |= v11;
  return v6;
}

void TGrammar::~TGrammar(TGrammar *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    TRegExp::~TRegExp(v2);
    MEMORY[0x26672B1B0]();
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    operator delete(v4);
  }

  TAllocator::clear((this + 72));
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(this + 40, *(this + 6));
  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(this + 16, *(this + 3));
}

uint64_t TGrammar::computeDerivationForSymbol(uint64_t result, void *a2, void *a3)
{
  v3 = a2[3];
  v4 = v3 >> 6;
  v5 = 1 << v3;
  v6 = *(*a3 + 8 * v4);
  if ((v5 & v6) == 0)
  {
    v7 = result;
    *(*a3 + 8 * v4) = v6 | v5;
    v8 = a2[3];
    v9 = *(result + 64) * v8;
    *(*(result + 120) + (((v9 + v8) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v9 + v8);
    v10 = *a2;
    if (*a2)
    {
      do
      {
        v12 = *(v10[2] + 8 * v10[1] - 8);
        *(*(v7 + 120) + (((v12[3] + v9) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (*(v12 + 24) + v9);
        result = TGrammar::computeDerivationForSymbol(v7, v12, a3);
        v13 = *(v7 + 64);
        if (v13)
        {
          v14 = 0;
          v15 = v13 * v12[3];
          v16 = *(v7 + 120);
          do
          {
            if ((*(v16 + (((v15 + v14) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 + v14)))
            {
              *(v16 + (((v9 + v14) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (v9 + v14);
              v13 = *(v7 + 64);
            }

            ++v14;
          }

          while (v14 < v13);
        }

        v10 = v10[4];
      }

      while (v10);
    }
  }

  return result;
}

void TGrammar::finalize(TGrammar *this)
{
  std::vector<BOOL>::resize(this + 120, *(this + 8) * *(this + 8), 0);
  std::vector<BOOL>::vector(__p, *(this + 8));
  v2 = *(this + 5);
  if (v2 != (this + 48))
  {
    do
    {
      TGrammar::computeDerivationForSymbol(this, *(v2 + 5), __p);
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 48));
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(this + 16, *(this + 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = this + 24;
  TRegExp::doneAdding(*(this + 14));
  *this = 1;
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_26283D29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(&v18, v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = (*a1 + 8 * (v4 >> 6));
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_26283D404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TGrammar::addTerminal(uint64_t a1, __int32 *a2)
{
  v23 = a2;
  v3 = std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::find<wchar_t const*>(a1 + 16, &v23);
  if (a1 + 24 != v3)
  {
    return *(v3 + 40);
  }

  v5 = (a1 + 144);
  TRegExp::add(*(a1 + 112), v23, (*(a1 + 152) - *(a1 + 144)) >> 3);
  v6 = wcslen(v23);
  if ((v6 + 1) >> 62)
  {
    v7 = -1;
  }

  else
  {
    v7 = 4 * (v6 + 1);
  }

  v22 = TAllocator::allocate((a1 + 72), v7);
  wcscpy(v22, v23);
  v4 = TAllocator::allocate((a1 + 72), 40);
  v8 = (*(a1 + 152) - *(a1 + 144)) >> 3;
  v4[2] = v22;
  v4[3] = v8;
  *v4 = xmmword_262891680;
  v4[4] = 0;
  v24 = &v22;
  std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::__emplace_unique_key_args<wchar_t const*,std::piecewise_construct_t const&,std::tuple<wchar_t const* const&>,std::tuple<>>((a1 + 16), &v22, &std::piecewise_construct, &v24)[5] = v4;
  v10 = *(a1 + 152);
  v9 = *(a1 + 160);
  if (v10 >= v9)
  {
    v12 = (v10 - *v5) >> 3;
    if ((v12 + 1) >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v13 = v9 - *v5;
    v14 = v13 >> 2;
    if (v13 >> 2 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a1 + 144, v15);
    }

    v16 = (8 * v12);
    *v16 = v4;
    v11 = 8 * v12 + 8;
    v17 = *(a1 + 144);
    v18 = *(a1 + 152) - v17;
    v19 = v16 - v18;
    memcpy(v16 - v18, v17, v18);
    v20 = *(a1 + 144);
    *(a1 + 144) = v19;
    *(a1 + 152) = v11;
    *(a1 + 160) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v10 = v4;
    v11 = (v10 + 1);
  }

  *(a1 + 152) = v11;
  return v4;
}

void *TGrammar::addRule(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, const void *a5, size_t a6)
{
  v12 = a6 + 1;
  v13 = TAllocator::allocate((a1 + 72), a6 + 1);
  v14 = v13;
  if (a6)
  {
    memmove(v13, a5, a6);
  }

  v14[a6] = 0;
  if (v12 >> 61)
  {
    v15 = -1;
  }

  else
  {
    v15 = 8 * v12;
  }

  v16 = TAllocator::allocate((a1 + 72), v15);
  v17 = v16;
  if (a6)
  {
    memmove(v16, a4, 8 * a6);
  }

  v17[a6] = a3;
  result = TAllocator::allocate((a1 + 72), 48);
  result[2] = v17;
  result[3] = v14;
  *result = a2;
  result[1] = v12;
  v19 = (v17 - 1);
  result[4] = 0;
  result[5] = 0;
  do
  {
    v20 = *v14++;
    ++v19;
  }

  while ((v20 & 1) != 0);
  v21 = *v19;
  result[4] = *v21;
  *v21 = result;
  return result;
}

uint64_t TGrammar::getTerminals(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<TRegExpMatch>::resize(&v22, 0);
  v21 = TRegExp::match(*(a1 + 112), a2, 3, &v22);
  v6 = v22;
  if (v23 != v22)
  {
    v7 = 0;
    v8 = *(a3 + 8);
    v9 = 16;
    do
    {
      v10 = *(*(a1 + 144) + 8 * *&v6[v9]);
      v11 = *(a3 + 16);
      if (v8 >= v11)
      {
        v12 = (v8 - *a3) >> 3;
        if ((v12 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v13 = v11 - *a3;
        v14 = v13 >> 2;
        if (v13 >> 2 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a3, v15);
        }

        v16 = (8 * v12);
        *v16 = v10;
        v8 = (8 * v12 + 8);
        v17 = *(a3 + 8) - *a3;
        v18 = v16 - v17;
        memcpy(v16 - v17, *a3, v17);
        v19 = *a3;
        *a3 = v18;
        *(a3 + 8) = v8;
        *(a3 + 16) = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v8++ = v10;
      }

      *(a3 + 8) = v8;
      ++v7;
      v6 = v22;
      v9 += 24;
    }

    while (v7 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3));
  }

  if (v6)
  {
    v23 = v6;
    operator delete(v6);
  }

  return v21;
}

void sub_26283D830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t **__return_ptr a1@<X8>, unint64_t *__src@<X0>, unsigned int a3@<W1>, uint64_t a4@<X2>, unsigned int a5@<W3>, uint64_t a6@<X4>)
{
  v8 = a5 - a3 + 8 * (a4 - __src);
  if (v8 <= 0)
  {
    v16 = *a6;
  }

  else
  {
    v9 = __src;
    __src = *a6;
    if (a3)
    {
      if (v8 >= (64 - a3))
      {
        v10 = 64 - a3;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3);
      v12 = v10 + *(a6 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a6 = __src;
      *(a6 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a6;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a6 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a6 + 8) = v15;
    }
  }

  *a1 = v16;
  *(a1 + 2) = *(a6 + 8);
  return __src;
}

void *std::__tree<std::__value_type<wchar_t const*,TSymbol *>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,TSymbol *>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,TSymbol *>>>::__emplace_unique_key_args<wchar_t const*,std::piecewise_construct_t const&,std::tuple<wchar_t const* const&>,std::tuple<>>(uint64_t **a1, const __int32 **a2, uint64_t a3, void **a4)
{
  v4 = *std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::__find_equal<wchar_t const*>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void MrecInitModule_ltf_sigproc(void)
{
  if (!gParDiagnosticLinearTransformation)
  {
    v4 = v0;
    v5 = v1;
    v2 = MemChunkAlloc(0x40uLL, 0);
    EnumParamRange::EnumParamRange(&v3, &sDiagnosticLinearTransformationEnum);
    EnumGlobalParamBase::EnumGlobalParamBase(v2, "DiagnosticLinearTransformation", &unk_2628916DE, &unk_2628916DE, 0, &v3, 0);
    v2->n128_u64[0] = &unk_287527B80;
    gParDiagnosticLinearTransformation = v2;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticLinearTransformation);
  }
}

void LinearTransform::LinearTransform(LinearTransform *this)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 28) = 0u;
  *(this + 22) = 3;
  *(this + 46) = 0;
  *(this + 12) = 0;
}

void LinearTransform::LinearTransform(LinearTransform *this, const LinearTransform *a2)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v4 = this + 24;
  *(this + 7) = 0;
  v5 = this + 56;
  *(this + 8) = 0;
  *(this + 10) = 0;
  *(this + 10) = *(a2 + 10);
  DgnPrimArray<int>::copyArraySlice(this + 1, a2 + 1, 0, *(a2 + 4));
  DgnArray<DgnPrimArray<unsigned int>>::copyArraySlice(v4, a2 + 3, 0, *(a2 + 8));
  *this = *a2;
  *(this + 12) = *(a2 + 12);
  DgnArray<DgnPrimArray<short>>::copyArraySlice(v5, a2 + 7, 0, *(a2 + 16));
  *(this + 22) = *(a2 + 22);
  *(this + 46) = *(a2 + 46);
}

void sub_26283DBC4(_Unwind_Exception *a1)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v3);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void LinearTransform::~LinearTransform(LinearTransform *this)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 56);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 8);
}

uint64_t LinearTransform::setSize(uint64_t this, int a2, int a3)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6 >= 1)
  {
    v7 = 16 * v6 - 16;
    do
    {
      this = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v5 + 24) + v7);
      v7 -= 16;
    }

    while (v7 != -16);
  }

  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  if (*v5 != a2 || *(v5 + 4) != a3)
  {
    *(v5 + 48) = 0;
    v8 = *(v5 + 64);
    if (v8 >= 1)
    {
      v9 = 16 * v8 - 16;
      do
      {
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(*(v5 + 56) + v9);
        v9 -= 16;
      }

      while (v9 != -16);
    }

    *(v5 + 64) = 0;
  }

  *v5 = a2;
  *(v5 + 4) = a3;
  if (!*(v5 + 48))
  {
    *(v5 + 48) = (a2 + 7) & 0xFFFFFFF8;
  }

  return this;
}

void LinearTransform::setTransform(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v8 = a6;
  if (!*(a1 + 4) || !*a1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ltf.cpp", 167, "sigproc/ltf", 5, "%s", &unk_2628916DE);
  }

  BinaryIntScale::setScale((a1 + 40), v8);
  if (1 << *(a1 + 40) != v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ltf.cpp", 171, "sigproc/ltf", 1, "%u", v8);
  }

  *(a1 + 44) = a3;
  if (a3 != 3)
  {
    v14 = *(a1 + 4);
    if (*(a2 + 8) != v14)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ltf.cpp", 177, "sigproc/ltf", 3, "%.500s %u %u", "row", *(a2 + 8), v14);
      a3 = *(a1 + 44);
    }

    v21 = a7;
    if (a3 == 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = *a1;
    }

    v16 = *(a1 + 4);
    if (v16)
    {
      v17 = 0;
      v18 = 8;
      do
      {
        if (*(*a2 + v18) != v15)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ltf.cpp", 194, "sigproc/ltf", 3, "%.500s %u %u", "column", *(*a2 + v18), v15);
          v16 = *(a1 + 4);
        }

        ++v17;
        v18 += 16;
      }

      while (v17 < v16);
    }

    DgnArray<DgnPrimArray<unsigned int>>::copyArraySlice(a1 + 24, a2, 0, *(a2 + 8));
    a7 = v21;
  }

  *(a1 + 46) = a5;
  if (a5)
  {
    v19 = *(a4 + 8);
    v20 = *(a1 + 4);
    if (v19 != v20)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ltf.cpp", 209, "sigproc/ltf", 4, "%u %u", *(a4 + 8), v20);
      v19 = *(a4 + 8);
    }

    DgnPrimArray<int>::copyArraySlice((a1 + 8), a4, 0, v19);
  }

  if (a7)
  {
    LinearTransform::verifyMatrix(a1);
  }

  LinearTransform::padMatrix(a1);
}

void LinearTransform::verifyMatrix(LinearTransform *this)
{
  v2 = *(this + 22);
  if (v2 == 2)
  {
    v9 = *(this + 1);
    if (v9)
    {
      v10 = 0;
      for (i = 0; i < v9; ++i)
      {
        v12 = **(*(this + 3) + v10);
        if (v12 != v12)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ltf.cpp", 303, "sigproc/ltf", 6, "%u %u %d", i, 0, v12);
          v9 = *(this + 1);
        }

        v10 += 16;
      }
    }
  }

  else if (v2 == 1)
  {
    v3 = *(this + 1);
    if (v3)
    {
      v4 = 0;
      v5 = *this;
      v6 = v5;
      do
      {
        if (v6)
        {
          v7 = 0;
          do
          {
            v8 = *(*(*(this + 3) + 16 * v4) + 4 * v7);
            if (v8 != v8)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ltf.cpp", 315, "sigproc/ltf", 6, "%u %u %d", v4, v7, v8);
              v5 = *this;
            }

            ++v7;
          }

          while (v7 < v5);
          v3 = *(this + 1);
          v6 = v5;
        }

        ++v4;
      }

      while (v4 < v3);
    }
  }
}

void LinearTransform::padMatrix(LinearTransform *this)
{
  if (!*(this + 12))
  {
    *(this + 12) = (*this + 7) & 0xFFFFFFF8;
  }

  if (*(this + 22) == 1)
  {
    v2 = *(this + 1);
    v3 = *(this + 17);
    if (v2 > v3)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 56, v2 - v3, 0);
    }

    v4 = *(this + 16);
    if (v4 <= v2)
    {
      if (v4 < v2)
      {
        v7 = v2 - v4;
        v8 = 16 * v4;
        do
        {
          v9 = (*(this + 7) + v8);
          *v9 = 0;
          v9[1] = 0;
          v8 += 16;
          --v7;
        }

        while (v7);
      }
    }

    else if (v4 > v2)
    {
      v5 = v4;
      v6 = 16 * v4 - 16;
      do
      {
        --v5;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 7) + v6);
        v6 -= 16;
      }

      while (v5 > v2);
    }

    *(this + 16) = v2;
    if (*(this + 1))
    {
      v10 = 0;
      v11 = *(this + 12);
      do
      {
        v12 = *(this + 7) + 16 * v10;
        v13 = *(v12 + 12);
        if (v11 > v13)
        {
          DgnPrimArray<short>::reallocElts(*(this + 7) + 16 * v10, v11 - v13, 0);
        }

        *(v12 + 8) = v11;
        v14 = *this;
        if (v14)
        {
          v15 = *(*(this + 3) + 16 * v10);
          v16 = *(*(this + 7) + 16 * v10);
          v17 = *this;
          do
          {
            v18 = *v15++;
            *v16++ = v18;
            --v17;
          }

          while (v17);
        }

        v11 = *(this + 12);
        if (v14 < v11)
        {
          bzero((*(*(this + 7) + 16 * v10) + 2 * v14), 2 * (v11 + ~v14) + 2);
        }

        ++v10;
      }

      while (v10 < *(this + 1));
    }
  }
}

uint64_t LinearTransform::getUnscaledData(int *a1, uint64_t *a2, double **a3)
{
  DgnMatrix::makeIdentity(a1[1], &v24);
  *a2 = v24;
  DgnPrimFixArray<double>::copyArraySlice((a2 + 1), &v25, 0, v26);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v25);
  v6 = a1[1];
  LODWORD(v25) = 0;
  v24 = 0;
  if (v6)
  {
    v24 = MemChunkAlloc(8 * v6, 0);
    LODWORD(v25) = v6;
    bzero(v24, 8 * v6);
  }

  DgnPrimFixArray<double>::copyArraySlice(a3, &v24, 0, v6);
  result = DgnPrimFixArray<double>::~DgnPrimFixArray(&v24);
  v8 = *(a1 + 22);
  if (v8 != 2)
  {
    if (v8 == 3)
    {
      goto LABEL_12;
    }

    result = DgnMatrix::setNumRowsAndCols(a2, a1[1], *a1);
  }

  v9 = a1[1];
  if (v9)
  {
    v10 = 0;
    v11 = *a1;
    v12 = *a2;
    v13 = a2[1];
    do
    {
      if (v11)
      {
        v14 = *(*(a1 + 3) + 16 * v10);
        v15 = (1 << a1[10]);
        v16 = v11;
        v17 = v10;
        do
        {
          v18 = *v14++;
          *(v13 + 8 * v17) = v18 / v15;
          v17 += v12;
          --v16;
        }

        while (v16);
      }

      ++v10;
    }

    while (v10 != v9);
  }

LABEL_12:
  if (*(a1 + 46) == 1)
  {
    v19 = a1[1];
    if (v19)
    {
      v20 = *(a1 + 1);
      v21 = (1 << a1[10]);
      v22 = *a3;
      do
      {
        v23 = *v20++;
        *v22++ = v23 / v21;
        --v19;
      }

      while (v19);
    }
  }

  return result;
}

void sub_26283E3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t LinearTransform::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned int>(a1 + 8, a2);
  v5 = sizeObject<DgnPrimArray<unsigned int>>(a1 + 24, a2);
  v6 = sizeObject(a1 + 40, a2);
  v7 = sizeObject<DgnPrimArray<unsigned short>>(a1 + 56, a2);
  if (a2 == 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = 15;
  }

  return v8 + v4 + v5 + v6 + v7;
}

uint64_t LinearTransform::writeObject(LinearTransform *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this + 10, a3);
  writeObject<unsigned int>(a2, this + 8, a3);
  writeObject<DgnPrimArray<unsigned int>>(a2, this + 24, a3);
  writeObject(a2, this, a3);
  writeObject(a2, this + 1, a3);
  writeObject(a2, this + 22, a3);

  return writeObject(a2, this + 46, a3);
}

uint64_t LinearTransform::transformMeans(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v18 = 0;
  v19 = 0;
  if (v5)
  {
    v16 = 0;
    v7 = realloc_array(0, &v16, v5, 0, 0, 1);
    v8 = 0;
    v9 = v16;
    v17 = 0;
    v18 = v16;
    v19 = __PAIR64__(v7, v5);
    v16 = 0;
    do
    {
      v9[v8] = *(*a2 + 4 * v8);
      ++v8;
    }

    while (v5 != v8);
  }

  else
  {
    LODWORD(v19) = 0;
    v16 = 0;
    v17 = 0;
  }

  v15[0] = 0;
  v15[1] = 0;
  LinearTransform::doTransform(a1, &v18, &v16);
  v10 = *(a3 + 12);
  if (v5 > v10)
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, v5 - v10, 0);
  }

  *(a3 + 8) = v5;
  if (v5)
  {
    v11 = v16;
    v12 = *a3;
    do
    {
      v13 = *v11++;
      *v12++ = v13;
      --v5;
    }

    while (v5);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v18);
}

void sub_26283E638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void LinearTransform::doTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  if (*a1 != v6)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ltf.cpp", 390, "sigproc/ltf", 2, "%u %u", *a1, v6);
  }

  v7 = *(a1 + 4);
  if (*(a3 + 12) < v7)
  {
    v22 = 0;
    *(a3 + 12) = realloc_array(*a3, &v22, v7, *(a3 + 8), *(a3 + 8), 1);
    *a3 = v22;
  }

  *(a3 + 8) = v7;
  v8 = *(a1 + 44);
  if (v8 == 3)
  {
    v9 = (*(a1 + 4) - 1);
    if (v9 >= 0)
    {
      do
      {
        v10 = *(a1 + 40);
        v11 = 1 << (v10 - 1);
        if (!v10)
        {
          LODWORD(v11) = 0;
        }

        v12 = ((*(*a2 + v9) << v10) + *(*(a1 + 8) + 4 * v9) + v11) >> v10;
        if (v12 <= 0)
        {
          v13 = 0;
        }

        else
        {
          v13 = -1;
        }

        if (v12 >= 0x100)
        {
          LOBYTE(v12) = v13;
        }

        *(*a3 + v9--) = v12;
      }

      while (v9 != -1);
    }
  }

  else
  {
    v14 = (*(a1 + 4) - 1);
    if (v14 >= 0)
    {
      do
      {
        if (*(a1 + 46) == 1)
        {
          v15 = *(*(a1 + 8) + 4 * v14);
        }

        else
        {
          v15 = 0;
        }

        if (v8 == 2)
        {
          v15 += **(*(a1 + 24) + 16 * v14) * *(*a2 + v14);
        }

        else
        {
          v16 = (*a1 - 1);
          if (*a1 - 1 >= 0)
          {
            do
            {
              v15 += *(*(*(a1 + 24) + 16 * v14) + 4 * v16) * *(*a2 + v16);
              --v16;
            }

            while (v16 != -1);
          }
        }

        v17 = *(a1 + 40);
        v18 = 1 << (v17 - 1);
        if (!v17)
        {
          LODWORD(v18) = 0;
        }

        v19 = (v18 + v15) >> v17;
        if (v19 <= 0)
        {
          v20 = 0;
        }

        else
        {
          v20 = -1;
        }

        if (v19 >= 0x100)
        {
          LOBYTE(v19) = v20;
        }

        *(*a3 + v14) = v19;
      }

      while (v14-- > 0);
    }
  }
}

void MrecInitLibrarySet_throughFstgraph(void)
{
  MrecInitLibrarySet_throughFst();
  MrecInitModule_sdpres_sdapi();
  MrecInitModule_sdpres_sdapi();

  MrecInitModule_leafgraph_fstgraph();
}

void MrecInitModule_util_mrecutil(void)
{
  if (!gParDiagnosticShowIdealizedObjectSizes)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DiagnosticShowIdealizedObjectSizes", &byte_262899963, &byte_262899963, 0, SetShadowDiagnosticShowIdealizedObjectSizes, 0);
    *v1 = &unk_287527EA0;
    gParDiagnosticShowIdealizedObjectSizes = v1;
    gShadowDiagnosticShowIdealizedObjectSizes = 0;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticShowIdealizedObjectSizes);
  }

  if (!gParDiagnosticTrackObjectPointerAllocation)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DiagnosticTrackObjectPointerAllocation", &byte_262899963, &byte_262899963, 0, SetTrackObjectPointerAllocation, 0);
    *v3 = &unk_287527EA0;
    gParDiagnosticTrackObjectPointerAllocation = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDiagnosticTrackObjectPointerAllocation);
  }
}

void *getShipObjectSizeDescription@<X0>(DgnString *__return_ptr a1@<X8>, FileSpec *a2@<X0>, int a3@<W1>)
{
  DgnString::DgnString(a1);
  FileSpec::getRelativeSourceFileName(a2, a1, v6);
  return DgnString::printfAppend(a1, "(%u)", a3);
}

double MrecBeginningOfTime(void)
{
  CPUID::initCPUID(&CPUID::smCPUID);
  ClockTimer::initClockTimer(&ClockTimer::smClockTimer);
  MemChunkInit();
  DgnPrinterMgr::startupDgnPrinterMgr(v0);
  ++sLogRefCount;
  DgnThreadMgr::startupThreadMgr(v1);
  ClockTimer::initCyclesPerSecondAndSpeedFactor(&ClockTimer::smClockTimer);
  if (MemChunkRegion::smTlsID == -1)
  {
    goto LABEL_5;
  }

  v2 = pthread_getspecific(MemChunkRegion::smTlsID);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = *v2;
  if (!v3)
  {
    pthread_setspecific(MemChunkRegion::smTlsID, 0);
LABEL_5:
    v3 = &gGlobalMemChunkRegion;
  }

  return MemChunkRegion::resetMaxAlloc(v3);
}

void StartupMrecutil(DgnSharedMemMgr *a1, const char *a2)
{
  DgnSharedMemMgr::startupDSMMgr(a1, a2);
  MrecInitModule_sdpres_sdapi();
  v3 = GlobalParamMgr::startupGlobalParamMgr(v2);

  ParamSpecMgr::startupParamSpecMgrs(v3);
}

void MrecutilPrintSize(unsigned int a1, int a2, unint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  if (DgnPrinterMgr::smpDgnPrinterMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    DgnPrinterMgr::printSize(DgnPrinterMgr::smpDgnPrinterMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (DgnSharedMemMgr::smpDSMMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    DgnSharedMemMgr::printSize(DgnSharedMemMgr::smpDSMMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (GlobalParamMgr::smpGlobalParamMgr)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    GlobalParamMgr::printSize(GlobalParamMgr::smpGlobalParamMgr, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051F70)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051F70, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051F78)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051F78, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051F80)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051F80, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051F88)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051F88, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051F90)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051F90, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051F98)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051F98, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051FA0)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051FA0, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051FA8)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051FA8, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051FB0)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051FB0, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051FB8)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051FB8, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051FC0)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051FC0, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }

  if (qword_281051FC8)
  {
    v10 = 0;
    v11 = 0;
    v9 = 0;
    ParamSpecMgr::printSize(qword_281051FC8, 0xFFFFFFFFLL, (a2 + 1), &v11, &v10, &v9);
    *a3 += v11;
    *a4 += v10;
    *a5 += v9;
  }
}

DgnString *AppendFullMrecMachineInfo(DgnString *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  MrecName = GetMrecName();
  snprintf(__str, 0x400uLL, "%s Machine OS: ", MrecName);
  DgnString::operator+=(a1, __str);
  if (uname(&v22))
  {
    strcpy(__str, "<Unknown>\n");
  }

  else
  {
    snprintf(__str, 0x400uLL, "%s %s %s\n", v22.sysname, v22.release, v22.machine);
  }

  DgnString::operator+=(a1, __str);
  CyclesPerSecond = ClockTimer::getCyclesPerSecond(&ClockTimer::smClockTimer);
  DynamicSpeechRecognitionSpeedFactor = ClockTimer::getDynamicSpeechRecognitionSpeedFactor(&ClockTimer::smClockTimer);
  StaticSpeechRecognitionSpeedFactor = ClockTimer::getStaticSpeechRecognitionSpeedFactor(&ClockTimer::smClockTimer);
  v6 = GetMrecName();
  snprintf(__str, 0x64uLL, "%s Machine Speed: CyclesPerMicrosec: %llu; DynSRSF: %u; StatSRSF: %u\n", v6, (CyclesPerSecond + 500000) / 0xF4240uLL, DynamicSpeechRecognitionSpeedFactor, StaticSpeechRecognitionSpeedFactor);
  DgnString::operator+=(a1, __str);
  v20 = 8;
  v21 = 0;
  sysctlbyname("hw.memsize", &v21, &v20, 0, 0);
  v7 = GetMrecName();
  snprintf(v22.sysname, 0x64uLL, "%s Machine Memory: RAM: %lluM\n", v7, v21 >> 20);
  DgnString::operator+=(a1, v22.sysname);
  v20 = 8;
  v21 = 0;
  sysctlbyname("hw.logicalcpu", &v21, &v20, 0, 0);
  v8 = v21;
  v9 = sysconf(29);
  v10 = GetMrecName();
  snprintf(v22.sysname, 0x64uLL, "%s Machine Info: #LPUs: %llu; PageSize: %llu; AllocGran: %llu\n", v10, v8, v9, v9);
  DgnString::operator+=(a1, v22.sysname);
  v11 = GetMrecName();
  DgnString::operator+=(a1, v11);
  DgnString::operator+=(a1, " Machine Name: ");
  if (gethostname(v22.sysname, 0x400uLL))
  {
    strcpy(v22.sysname, "<Unknown>");
  }

  DgnString::operator+=(a1, v22.sysname);
  result = DgnString::operator+=(a1, "\n");
  v13 = dword_281051F34;
  v14 = &CPUID::smCPUID + 9369;
  if (v14[dword_281051F34])
  {
    v15 = GetMrecName();
    DgnString::operator+=(a1, v15);
    DgnString::operator+=(a1, " CPU Label: ");
    DgnString::operator+=(a1, &v14[v13]);
    result = DgnString::operator+=(a1, "\n");
  }

  if (byte_28104FED1)
  {
    v16 = GetMrecName();
    DgnString::operator+=(a1, v16);
    DgnString::operator+=(a1, " CPU Details: ");
    DgnString::operator+=(a1, &byte_28104FED1);
    result = DgnString::operator+=(a1, "\n");
  }

  if (byte_2810506D1)
  {
    v17 = GetMrecName();
    DgnString::operator+=(a1, v17);
    DgnString::operator+=(a1, " CPU Processors: ");
    DgnString::operator+=(a1, &byte_2810506D1);
    result = DgnString::operator+=(a1, "\n");
  }

  if (*(&CPUID::smCPUID + 5241))
  {
    v18 = GetMrecName();
    DgnString::operator+=(a1, v18);
    DgnString::operator+=(a1, " CPU Instruction Sets: ");
    DgnString::operator+=(a1, &CPUID::smCPUID + 5241);
    result = DgnString::operator+=(a1, "\n");
  }

  if (*(&CPUID::smCPUID + 7289))
  {
    v19 = GetMrecName();
    DgnString::operator+=(a1, v19);
    DgnString::operator+=(a1, " CPU Cache Sizes: ");
    DgnString::operator+=(a1, &CPUID::smCPUID + 7289);
    return DgnString::operator+=(a1, "\n");
  }

  return result;
}

uint64_t RoundUpToPowerOf2(int a1, unsigned int *a2)
{
  v2 = 32 - __clz(a1 - 1);
  if (a1 == 1)
  {
    v2 = 0;
  }

  if (a2)
  {
    *a2 = v2;
  }

  return (1 << v2);
}

uint64_t NetNBestAlg::getNBest(NetNBestAlg *this, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  *(this + 36) = 0;
  *(this + 32) = 0;
  *(this + 15) = 0;
  for (*(this + 28) = 0; *(this + 24); *(this + 5) = Min)
  {
    Min = DgnHeap<NBestQueueItem>::extractMin(this + 11);
    *Min = *(this + 5);
  }

  if (a3 <= 0xFFFFFFFD)
  {
    v31 = a2 >> 5;
    v32 = 1 << a2;
    *(*(this + 2) + 4 * (a2 >> 5)) |= 1 << a2;
    DgnPrimQueue<NBestQueueItem,DgnPrimStructArray<NBestQueueItem>>::enqueue(this + 104, a2 | (a3 << 32), a4);
    while (1)
    {
      while (*(this + 32))
      {
        v11 = DgnPrimQueue<NBestQueueItem,DgnPrimStructArray<NBestQueueItem>>::dequeue(this + 104);
        if (HIDWORD(v11) != 4294967294)
        {
          v13 = v12;
          v14 = HIDWORD(v11);
          do
          {
            v15 = *(**this + 8 * WORD1(v14)) + 16 * v14;
            v16 = (*(v15 + 12) + v13);
            if (v16 < a5)
            {
              v17 = *(v15 + 8);
              LODWORD(v33) = *v15;
              HIDWORD(v33) = v17;
              v34 = v16;
              if ((*(*(this + 2) + ((v33 >> 3) & 0x1FFFFFFC)) >> v33))
              {
                a4 = a4 & 0xFFFFFFFF00000000 | v16;
                DgnPrimQueue<NBestQueueItem,DgnPrimStructArray<NBestQueueItem>>::enqueue(this + 104, v33, a4);
              }

              else
              {
                DgnPriorityQueue<NBestQueueItem>::push((this + 32), &v33);
              }
            }

            LODWORD(v14) = *(v15 + 4);
          }

          while (v14 != -2);
        }
      }

      if (!*(this + 24))
      {
        break;
      }

      v18 = DgnHeap<NBestQueueItem>::extractMin(this + 11);
      v19 = *v18;
      v20 = *(v18 + 8);
      *v18 = *(this + 5);
      *(this + 5) = v18;
      v21 = *(this + 2);
      v22 = v19 >> 5;
      if ((*(v21 + 4 * v22) & (1 << v19)) == 0)
      {
        v23 = *(this + 36);
        if (v23 == *(this + 37))
        {
          DgnArray<RuleDesc>::reallocElts(this + 136, 1, 1);
          v23 = *(this + 36);
          v21 = *(this + 2);
        }

        v24 = *(this + 17) + 12 * v23;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(this + 36) = v23 + 1;
        *(v21 + 4 * v22) |= 1 << v19;
      }

      a2 = a2 & 0xFFFFFFFF00000000 | v20;
      DgnPrimQueue<NBestQueueItem,DgnPrimStructArray<NBestQueueItem>>::enqueue(this + 104, v19, a2);
    }

    v25 = *(this + 36);
    v26 = *(this + 2);
    if (v25 >= 1)
    {
      v27 = v25 + 1;
      v28 = (*(this + 17) + 12 * v25 - 12);
      do
      {
        v29 = *v28;
        v28 -= 3;
        *(v26 + ((v29 >> 3) & 0x1FFFFFFC)) &= ~(1 << v29);
        --v27;
      }

      while (v27 > 1);
    }

    *(v26 + 4 * v31) &= ~v32;
  }

  return this + 136;
}

void DgnPrimQueue<NBestQueueItem,DgnPrimStructArray<NBestQueueItem>>::enqueue(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 8);
  if (v6 == v7)
  {
    v8 = *(a1 + 12);
    if (v6 == v8)
    {
      DgnArray<RuleDesc>::reallocElts(a1, 1, 1);
      v8 = *(a1 + 12);
      v6 = *(a1 + 24);
    }

    *(a1 + 8) = v8;
    v9 = v8 - v6;
    if (v6)
    {
      v10 = *(a1 + 16);
      if (v10)
      {
        memmove((*a1 + 12 * v10 + 12 * v9), (*a1 + 12 * v10), 12 * (v6 - v10));
        v6 = *(a1 + 20);
        *(a1 + 16) += v9;
      }

      else
      {
        *(a1 + 20) = v6;
      }
    }

    else
    {
      *(a1 + 16) = 0;
    }

    bzero((*a1 + 12 * v6), 12 * v9);
    v7 = *(a1 + 8);
    v6 = *(a1 + 24);
  }

  v11 = *(a1 + 20);
  v12 = *a1 + 12 * v11;
  *v12 = a2;
  *(v12 + 8) = a3;
  if (v11 + 1 == v7)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11 + 1;
  }

  *(a1 + 20) = v13;
  *(a1 + 24) = v6 + 1;
}

uint64_t DgnPrimQueue<NBestQueueItem,DgnPrimStructArray<NBestQueueItem>>::dequeue(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*a1 + 12 * v1);
  v3 = v1 + 1;
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

uint64_t DgnPriorityQueue<NBestQueueItem>::push(DgnPool *this, uint64_t *a2)
{
  v4 = *(this + 1);
  if (!v4)
  {
    DgnPool::addChunk(this);
    v4 = *(this + 1);
  }

  *(this + 1) = *v4;
  v5 = *a2;
  *(v4 + 8) = *(a2 + 2);
  *v4 = v5;

  return DgnHeap<NBestQueueItem>::insert(this + 56, v4);
}

uint64_t DgnHeap<NBestQueueItem>::insert(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = v4;
  if (v4 == *(a1 + 12))
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
    v5 = *(a1 + 8);
  }

  *(*a1 + 8 * v5) = 0;
  *(a1 + 8) = v5 + 1;
  *(*a1 + 8 * v4) = a2;

  return DgnHeap<NBestQueueItem>::heapifyUp(a1, v4);
}

uint64_t DgnHeap<NBestQueueItem>::heapifyUp(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 8 * a2);
  if (a2 < 1)
  {
    v7 = a2;
  }

  else
  {
    v4 = *(v3 + 8);
    while (1)
    {
      v5 = ((a2 + 1) >> 1) - 1;
      v2 = *a1;
      v6 = *(*a1 + 8 * v5);
      v7 = a2;
      if (v4 >= *(v6 + 8))
      {
        break;
      }

      *(v2 + 8 * a2) = v6;
      v8 = a2 > 2;
      a2 = ((a2 + 1) >> 1) - 1;
      if (!v8)
      {
        v2 = *a1;
        v7 = v5;
        a2 = v5;
        break;
      }
    }
  }

  *(v2 + 8 * v7) = v3;
  return a2;
}

void MrecInitModule_model_recogctl(void)
{
  if (!gParDebugShowLoadVocCalls)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowLoadVocCalls", &unk_2628916DF, &unk_2628916DF, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowLoadVocCalls = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowLoadVocCalls);
  }

  if (!gParDebugShowFstCompilationTimes)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowFstCompilationTimes", &unk_2628916DF, &unk_2628916DF, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowFstCompilationTimes = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugShowFstCompilationTimes);
  }
}

void ModelMgr::ModelMgr(ModelMgr *this)
{
  *(this + 1) = 0;
  *this = 0x100010000001DLL;
  *(this + 1) = 0u;
  *(this + 40) = 0u;
  v24 = this + 40;
  *(this + 8) = 0;
  *(this + 56) = 0u;
  *(this + 9) = 0x100010000001DLL;
  *(this + 10) = 0;
  *(this + 88) = 0u;
  *(this + 7) = 0u;
  v23 = this + 112;
  *(this + 8) = 0u;
  v22 = this + 128;
  *(this + 9) = 0u;
  v2 = this + 144;
  *(this + 10) = 0u;
  v3 = this + 160;
  *(this + 11) = 0u;
  v4 = this + 176;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  v5 = this + 208;
  *(this + 26) = 0;
  *(this + 29) = 0;
  v6 = this + 232;
  *(this + 28) = 0x100010000001DLL;
  *(this + 64) = 0;
  *(this + 15) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 38) = 0x100010000001DLL;
  *(this + 39) = 0;
  *(this + 84) = 0;
  *(this + 20) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  v7 = this + 344;
  *(this + 47) = 0x10000001DLL;
  *(this + 49) = 0;
  *(this + 96) = 1;
  *(this + 104) = 0;
  *(this + 25) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  v8 = this + 424;
  *(this + 114) = 29;
  *(this + 230) = 1;
  *(this + 58) = 0;
  *(this + 231) = 1;
  *(this + 122) = 0;
  *(this + 472) = 0u;
  v25 = this + 496;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 66) = 0x100010000001DLL;
  *(this + 67) = 0;
  *(this + 140) = 0;
  *(this + 34) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 75) = 0x1000100000000;
  *(this + 76) = 0;
  *(this + 158) = 0;
  *(this + 616) = 0u;
  *(this + 40) = 0u;
  DgnPrimArray<unsigned long long>::reallocElts(this + 264, 1, 1);
  v9 = *(this + 89);
  v10 = *(this + 88);
  v11 = *(this + 68);
  *(*(this + 33) + 8 * v11) = 0;
  *(this + 68) = v11 + 1;
  *(this + 74) = 0;
  if (v10 == v9)
  {
    DgnPrimArray<unsigned long long>::reallocElts(v7, 1, 1);
    v10 = *(this + 88);
  }

  *(*(this + 43) + 8 * v10) = 0;
  *(this + 88) = v10 + 1;
  v12 = *(this + 12);
  if (v12 == *(this + 13))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v24, 1, 1);
    v12 = *(this + 12);
  }

  *(*(this + 5) + 8 * v12) = 0;
  *(this + 12) = v12 + 1;
  v13 = *(this + 108);
  if (v13 == *(this + 109))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v8, 1, 1);
    v13 = *(this + 108);
  }

  *(*(this + 53) + 8 * v13) = 0;
  *(this + 108) = v13 + 1;
  v14 = *(this + 126);
  if (v14 == *(this + 127))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v25, 1, 1);
    v14 = *(this + 126);
  }

  *(*(this + 62) + 8 * v14) = 0;
  *(this + 126) = v14 + 1;
  v15 = *(this + 144);
  if (v15 == *(this + 145))
  {
    DgnPrimArray<unsigned long long>::reallocElts((v6 + 336), 1, 1);
    v15 = *(this + 144);
  }

  *(*(this + 71) + 8 * v15) = 0;
  *(this + 144) = v15 + 1;
  v16 = *(this + 42);
  if (v16 == *(this + 43))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v3, 1, 1);
    v16 = *(this + 42);
  }

  *(*(this + 20) + 8 * v16) = 0;
  *(this + 42) = v16 + 1;
  v17 = *(this + 46);
  if (v17 == *(this + 47))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v4, 1, 1);
    v17 = *(this + 46);
  }

  *(*(this + 22) + 8 * v17) = 0;
  *(this + 46) = v17 + 1;
  v18 = *(this + 30);
  if (v18 == *(this + 31))
  {
    DgnPrimArray<short>::reallocElts(v23, 1, 1);
    v18 = *(this + 30);
  }

  *(*(this + 14) + 2 * v18) = -1;
  *(this + 30) = v18 + 1;
  v19 = *(this + 34);
  if (v19 == *(this + 35))
  {
    DgnPrimArray<short>::reallocElts(v22, 1, 1);
    v19 = *(this + 34);
  }

  *(*(this + 16) + 2 * v19) = 127;
  *(this + 34) = v19 + 1;
  v20 = *(this + 38);
  if (v20 == *(this + 39))
  {
    DgnPrimArray<unsigned int>::reallocElts(v2, 1, 1);
    v20 = *(this + 38);
  }

  *(*(this + 18) + 4 * v20) = 0;
  ++*(this + 38);
  v21 = *(this + 54);
  if (v21 == *(this + 55))
  {
    DgnPrimArray<unsigned long long>::reallocElts(v5, 1, 1);
    v21 = *(this + 54);
  }

  *(*(this + 26) + 8 * v21) = 0;
  *(this + 54) = v21 + 1;
}

void sub_26283FF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  DgnIOwnArray<DgnString *>::releaseAll(a16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21 + 376);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21 + 352);
  DgnIOwnArray<TransducerGrammar *>::releaseAll(v21 + 336);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21 + 304);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a15);
  DgnIOwnArray<ArcGraph *>::releaseAll(a20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21 + 232);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21 + 208);
  DgnIOwnArray<ReproData *>::releaseAll(v28);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21 + 128);
  DgnIOwnArray<Corpus *>::releaseAll(v23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21 + 48);
  DgnIOwnArray<Voc *>::releaseAll(v22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21);
  DgnIOwnArray<ParamSetBase *>::releaseAll(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a10);
  DgnIOwnArray<LookaheadScorer *>::releaseAll(v27);
  DgnIOwnArray<Prefilterer *>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a12);
  DgnIOwnArray<User *>::releaseAll(a19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a13);
  _Unwind_Resume(a1);
}

void ModelMgr::freeVoc(ModelMgr *this, unsigned int a2)
{
  VocOrThrow = ModelMgr::getVocOrThrow(this, a2);
  if (Voc::getVocReferringReproRefCount(VocOrThrow))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1158, "recogctl/model", 17, "%s", &errStr_recogctl_model_E_REPRO_REF_PRESENT);
  }

  if (*(VocOrThrow + 136))
  {
    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1160, "recogctl/model", 1, "%u", a2);
  }

  if (*(VocOrThrow + 248))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1162, "recogctl/model", 27, "%u", a2);
  }

  DgnDelete<Voc>(*(*(this + 33) + 8 * a2));
  *(*(this + 33) + 8 * a2) = 0;
  if (a2)
  {
    v5 = *(this + 72);
    if (v5)
    {
      v6 = *(this + 72);
      v7 = *(this + 35);
      while (*v7 != a2)
      {
        ++v7;
        if (!--v6)
        {
          goto LABEL_14;
        }
      }

      v8 = v5 - 1;
      *v7 = *(*(this + 35) + 2 * v8);
      *(this + 72) = v8;
    }

LABEL_14:
    IdMgr<unsigned short>::recycleId(this + 56, a2);
  }

  v9 = *(this + 34);
  if (v9 >= 2)
  {
    v10 = 1;
    for (i = 1; i < v9; v10 = ++i)
    {
      if (*(*(this + 16) + 2 * i) == a2)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1177, "recogctl/model", 23, "%u %u", a2, v10);
        v9 = *(this + 34);
      }
    }
  }
}

uint64_t *ModelMgr::startupModelMgr(ModelMgr *this)
{
  v1 = MemChunkAlloc(0x290uLL, 0);
  ModelMgr::ModelMgr(v1);
  ModelMgr::smpModelMgr = v2;
  ArcGraphMgr::startupArcGraphMgr(v2 + 496);
  TransducerGrammarMgr::startupTransducerGrammarMgr(ModelMgr::smpModelMgr + 568);
  VocMgr::startupVocMgr(ModelMgr::smpModelMgr + 264);
  v3 = ModelMgr::smpModelMgr + 40;

  return UserMgr::startupUserMgr(v3);
}

void ModelMgr::printSize(ModelMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 322);
  if (v284)
  {
    v13 = v283;
  }

  else
  {
    v13 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_2628916DF, a3, &unk_2628916DF, v13);
  DgnString::~DgnString(&v283);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_2628916DF);
  if (VocMgr::smpVocMgr)
  {
    v282 = 0;
    v283 = 0;
    v281 = 0;
    VocMgr::printSize(VocMgr::smpVocMgr, 0xFFFFFFFFLL, (a3 + 1), &v283, &v282, &v281);
    *a4 += v283;
    *a5 += v282;
    *a6 += v281;
  }

  v280 = a6;
  if (UserMgr::smpUserMgr)
  {
    v282 = 0;
    v283 = 0;
    v15 = (a3 + 1);
    v281 = 0;
    UserMgr::printSize(UserMgr::smpUserMgr, 0xFFFFFFFFLL, v15, &v283, &v282, &v281);
    *a4 += v283;
    *a5 += v282;
    *v280 += v281;
  }

  else
  {
    v15 = (a3 + 1);
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 327);
  if (v284)
  {
    v17 = v283;
  }

  else
  {
    v17 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v16, v15, &unk_2628916DF, v15, &unk_2628916DF, v17);
  DgnString::~DgnString(&v283);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v18, v15, &unk_2628916DF);
  v19 = *(this + 12);
  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(this + 5);
      if (*(v24 + 8 * v20))
      {
        v282 = 0;
        v283 = 0;
        v281 = 0;
        User::printSize(*(v24 + 8 * v20), v20, (a3 + 2), &v283, &v282, &v281);
        v21 += v283;
        v22 += v282;
        v23 += v281;
        v19 = *(this + 12);
      }

      ++v20;
    }

    while (v20 < v19);
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v21 = 0;
    v19 = 0;
  }

  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = v25 + v21;
  v27 = v25 + v22;
  v28 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v28 = 3;
  }

  v29 = v26 + (*(this + 13) << v28);
  v30 = v27 + (v19 << v28);
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 327);
  if (v284)
  {
    v32 = v283;
  }

  else
  {
    v32 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v15, &unk_2628916DF, (34 - a3), (34 - a3), v32, v29, v30, v23);
  DgnString::~DgnString(&v283);
  *a4 += v29;
  *a5 += v30;
  *v280 += v23;
  v33 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v33 = 12;
  }

  v34 = *(this + 16);
  v35 = *(this + 17);
  v36 = v33 + 2 * (v34 - 1) + 2;
  if (v34 <= 0)
  {
    v36 = v33;
  }

  if (v35 >= v34)
  {
    v37 = v36;
  }

  else
  {
    v37 = v33;
  }

  if (v35 >= v34)
  {
    v38 = v36 + 2 * (v35 - v34);
  }

  else
  {
    v38 = v33;
  }

  if (v35 >= v34)
  {
    v39 = 0;
  }

  else
  {
    v39 = 2 * v34;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 328);
  if (v284)
  {
    v41 = v283;
  }

  else
  {
    v41 = &unk_2628916DF;
  }

  v279 = (34 - a3);
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v15, &unk_2628916DF, v279, v279, v41, v38, v37, v39);
  DgnString::~DgnString(&v283);
  *a4 += v38;
  *a5 += v37;
  *v280 += v39;
  v42 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 12;
  }

  v43 = *(this + 4);
  v44 = *(this + 5);
  v45 = v44 >= v43;
  v46 = v44 - v43;
  if (v45)
  {
    if (v43 > 0)
    {
      v42 += 2 * (v43 - 1) + 2;
    }

    v42 += 2 * v46;
  }

  v47 = v42 + 20;
  v48 = DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::sizeObject(this + 2, 1u) + 8;
  v49 = *(this + 4);
  if (v49 <= *(this + 5))
  {
    v50 = 0;
  }

  else
  {
    v50 = 2 * v49;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 329);
  if (v284)
  {
    v52 = v283;
  }

  else
  {
    v52 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_2628916DF, v279, v279, v52, v47, v48, v50);
  DgnString::~DgnString(&v283);
  *a4 += v47;
  *a5 += v48;
  *v280 += v50;
  v53 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v53 = 12;
  }

  v54 = *(this + 22);
  v55 = *(this + 23);
  v45 = v55 >= v54;
  v56 = v55 - v54;
  if (v45)
  {
    if (v54 > 0)
    {
      v53 += 2 * (v54 - 1) + 2;
    }

    v53 += 2 * v56;
  }

  v57 = v53 + 20;
  v58 = DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::sizeObject(this + 20, 1u) + 8;
  v59 = *(this + 22);
  if (v59 <= *(this + 23))
  {
    v60 = 0;
  }

  else
  {
    v60 = 2 * v59;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 331);
  if (v284)
  {
    v62 = v283;
  }

  else
  {
    v62 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v15, &unk_2628916DF, v279, v279, v62, v57, v58, v60);
  DgnString::~DgnString(&v283);
  *a4 += v57;
  *a5 += v58;
  *v280 += v60;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v63 = 12;
  }

  else
  {
    v63 = 16;
  }

  v64 = *(this + 30);
  v65 = *(this + 31);
  if (v65 >= v64)
  {
    v66 = 0;
    if (v64 > 0)
    {
      v63 += 2 * (v64 - 1) + 2;
    }

    v67 = v63 + 2 * (v65 - v64);
  }

  else
  {
    v66 = 2 * v64;
    v67 = v63;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 333);
  if (v284)
  {
    v69 = v283;
  }

  else
  {
    v69 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v15, &unk_2628916DF, v279, v279, v69, v67, v63, v66);
  DgnString::~DgnString(&v283);
  *a4 += v67;
  *a5 += v63;
  *v280 += v66;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v70 = 12;
  }

  else
  {
    v70 = 16;
  }

  v71 = *(this + 34);
  v72 = *(this + 35);
  if (v72 >= v71)
  {
    v73 = 0;
    if (v71 > 0)
    {
      v70 += 2 * (v71 - 1) + 2;
    }

    v74 = v70 + 2 * (v72 - v71);
  }

  else
  {
    v73 = 2 * v71;
    v74 = v70;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 335);
  if (v284)
  {
    v76 = v283;
  }

  else
  {
    v76 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v15, &unk_2628916DF, v279, v279, v76, v74, v70, v73);
  DgnString::~DgnString(&v283);
  *a4 += v74;
  *a5 += v70;
  *v280 += v73;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v77 = 12;
  }

  else
  {
    v77 = 16;
  }

  v78 = *(this + 38);
  v79 = *(this + 39);
  if (v79 >= v78)
  {
    v80 = 0;
    if (v78 > 0)
    {
      v77 += 4 * (v78 - 1) + 4;
    }

    v81 = v77 + 4 * (v79 - v78);
  }

  else
  {
    v80 = 4 * v78;
    v81 = v77;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 337);
  if (v284)
  {
    v83 = v283;
  }

  else
  {
    v83 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v15, &unk_2628916DF, v279, v279, v83, v81, v77, v80);
  DgnString::~DgnString(&v283);
  *a4 += v81;
  *a5 += v77;
  *v280 += v80;
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 338);
  if (v284)
  {
    v85 = v283;
  }

  else
  {
    v85 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v84, v15, &unk_2628916DF, v15, &unk_2628916DF, v85);
  DgnString::~DgnString(&v283);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v86, v15, &unk_2628916DF);
  v87 = *(this + 42);
  if (v87)
  {
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    do
    {
      v92 = *(this + 20);
      if (*(v92 + 8 * v88))
      {
        v282 = 0;
        v283 = 0;
        v281 = 0;
        (*(**(v92 + 8 * v88) + 16))(*(v92 + 8 * v88), v88, (a3 + 2), &v283, &v282, &v281);
        v89 += v283;
        v90 += v282;
        v91 += v281;
        v87 = *(this + 42);
      }

      ++v88;
    }

    while (v88 < v87);
  }

  else
  {
    v91 = 0;
    v90 = 0;
    v89 = 0;
    v87 = 0;
  }

  v93 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v93 = 12;
  }

  v94 = v93 + v89;
  v95 = v93 + v90;
  v96 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v96 = 3;
  }

  v97 = v94 + (*(this + 43) << v96);
  v98 = v95 + (v87 << v96);
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 338);
  if (v284)
  {
    v100 = v283;
  }

  else
  {
    v100 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v99, v15, &unk_2628916DF, v279, v279, v100, v97, v98, v91);
  DgnString::~DgnString(&v283);
  *a4 += v97;
  *a5 += v98;
  *v280 += v91;
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 340);
  if (v284)
  {
    v102 = v283;
  }

  else
  {
    v102 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v101, v15, &unk_2628916DF, v15, &unk_2628916DF, v102);
  DgnString::~DgnString(&v283);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v103, v15, &unk_2628916DF);
  v104 = *(this + 46);
  if (v104)
  {
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    do
    {
      v109 = *(this + 22);
      if (*(v109 + 8 * v105))
      {
        v282 = 0;
        v283 = 0;
        v281 = 0;
        (*(**(v109 + 8 * v105) + 16))(*(v109 + 8 * v105), v105, (a3 + 2), &v283, &v282, &v281);
        v106 += v283;
        v107 += v282;
        v108 += v281;
        v104 = *(this + 46);
      }

      ++v105;
    }

    while (v105 < v104);
  }

  else
  {
    v108 = 0;
    v107 = 0;
    v106 = 0;
    v104 = 0;
  }

  v110 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v110 = 12;
  }

  v111 = v110 + v106;
  v112 = v110 + v107;
  v113 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v113 = 3;
  }

  v114 = v111 + (*(this + 47) << v113);
  v115 = v112 + (v104 << v113);
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 340);
  if (v284)
  {
    v117 = v283;
  }

  else
  {
    v117 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v15, &unk_2628916DF, v279, v279, v117, v114, v115, v108);
  DgnString::~DgnString(&v283);
  *a4 += v114;
  *a5 += v115;
  *v280 += v108;
  v118 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v118 = 12;
  }

  v119 = *(this + 50);
  v120 = *(this + 51);
  v121 = v118 + 2 * (v119 - 1) + 2;
  if (v119 <= 0)
  {
    v121 = v118;
  }

  if (v120 >= v119)
  {
    v122 = v121;
  }

  else
  {
    v122 = v118;
  }

  if (v120 >= v119)
  {
    v123 = v121 + 2 * (v120 - v119);
  }

  else
  {
    v123 = v118;
  }

  if (v120 >= v119)
  {
    v124 = 0;
  }

  else
  {
    v124 = 2 * v119;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 342);
  if (v284)
  {
    v126 = v283;
  }

  else
  {
    v126 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v125, v15, &unk_2628916DF, v279, v279, v126, v123, v122, v124);
  DgnString::~DgnString(&v283);
  *a4 += v123;
  *a5 += v122;
  *v280 += v124;
  v127 = sizeObject<ParamSetBase *>(this + 208, 0);
  v128 = sizeObject<ParamSetBase *>(this + 208, 1);
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 344);
  if (v284)
  {
    v130 = v283;
  }

  else
  {
    v130 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v129, v15, &unk_2628916DF, v279, v279, v130, v127, v128, 0);
  DgnString::~DgnString(&v283);
  *a4 += v127;
  *a5 += v128;
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 345);
  if (v284)
  {
    v132 = v283;
  }

  else
  {
    v132 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v131, v15, &unk_2628916DF, v15, &unk_2628916DF, v132);
  DgnString::~DgnString(&v283);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v133, v15, &unk_2628916DF);
  v134 = *(this + 68);
  if (v134)
  {
    v135 = 0;
    v136 = 0;
    v137 = 0;
    v138 = 0;
    do
    {
      v139 = *(this + 33);
      if (*(v139 + 8 * v135))
      {
        v282 = 0;
        v283 = 0;
        v281 = 0;
        Voc::printSize(*(v139 + 8 * v135), v135, (a3 + 2), &v283, &v282, &v281);
        v136 += v283;
        v137 += v282;
        v138 += v281;
        v134 = *(this + 68);
      }

      ++v135;
    }

    while (v135 < v134);
  }

  else
  {
    v138 = 0;
    v137 = 0;
    v136 = 0;
    v134 = 0;
  }

  v140 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v140 = 12;
  }

  v141 = v140 + v136;
  v142 = v140 + v137;
  v143 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v143 = 3;
  }

  v144 = v141 + (*(this + 69) << v143);
  v145 = v142 + (v134 << v143);
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 345);
  if (v284)
  {
    v147 = v283;
  }

  else
  {
    v147 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v146, v15, &unk_2628916DF, v279, v279, v147, v144, v145, v138);
  DgnString::~DgnString(&v283);
  *a4 += v144;
  *a5 += v145;
  *v280 += v138;
  v148 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v148 = 12;
  }

  v149 = *(this + 72);
  v150 = *(this + 73);
  v151 = v148 + 2 * (v149 - 1) + 2;
  if (v149 <= 0)
  {
    v151 = v148;
  }

  if (v150 >= v149)
  {
    v152 = v151;
  }

  else
  {
    v152 = v148;
  }

  if (v150 >= v149)
  {
    v153 = v151 + 2 * (v150 - v149);
  }

  else
  {
    v153 = v148;
  }

  if (v150 >= v149)
  {
    v154 = 0;
  }

  else
  {
    v154 = 2 * v149;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 346);
  if (v284)
  {
    v156 = v283;
  }

  else
  {
    v156 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v155, v15, &unk_2628916DF, v279, v279, v156, v153, v152, v154);
  DgnString::~DgnString(&v283);
  *a4 += v153;
  *a5 += v152;
  *v280 += v154;
  v157 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v157 = 12;
  }

  v158 = *(this + 60);
  v159 = *(this + 61);
  v45 = v159 >= v158;
  v160 = v159 - v158;
  if (v45)
  {
    if (v158 > 0)
    {
      v157 += 2 * (v158 - 1) + 2;
    }

    v157 += 2 * v160;
  }

  v161 = v157 + 20;
  v162 = DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::sizeObject(this + 58, 1u) + 8;
  v163 = *(this + 60);
  if (v163 <= *(this + 61))
  {
    v164 = 0;
  }

  else
  {
    v164 = 2 * v163;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 347);
  if (v284)
  {
    v166 = v283;
  }

  else
  {
    v166 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v165, v15, &unk_2628916DF, v279, v279, v166, v161, v162, v164);
  DgnString::~DgnString(&v283);
  *a4 += v161;
  *a5 += v162;
  *v280 += v164;
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 349);
  if (v284)
  {
    v168 = v283;
  }

  else
  {
    v168 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v167, v15, &unk_2628916DF, v279, v279, v168, 4, 4, 0);
  DgnString::~DgnString(&v283);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 350);
  if (v284)
  {
    v170 = v283;
  }

  else
  {
    v170 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v169, v15, &unk_2628916DF, v15, &unk_2628916DF, v170);
  DgnString::~DgnString(&v283);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v171, v15, &unk_2628916DF);
  v172 = *(this + 88);
  if (v172)
  {
    v173 = 0;
    v174 = 0;
    v175 = 0;
    v176 = 0;
    do
    {
      v177 = *(this + 43);
      if (*(v177 + 8 * v173))
      {
        v282 = 0;
        v283 = 0;
        v281 = 0;
        Corpus::printSize(*(v177 + 8 * v173), v173, (a3 + 2), &v283, &v282, &v281);
        v176 += v283;
        v175 += v282;
        v174 += v281;
        v172 = *(this + 88);
      }

      ++v173;
    }

    while (v173 < v172);
  }

  else
  {
    v176 = 0;
    v175 = 0;
    v174 = 0;
    v172 = 0;
  }

  v178 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v178 = 12;
  }

  v179 = v178 + v176;
  v180 = v178 + v175;
  v181 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v181 = 3;
  }

  v182 = v179 + (*(this + 89) << v181);
  v183 = v180 + (v172 << v181);
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 350);
  if (v284)
  {
    v185 = v283;
  }

  else
  {
    v185 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v184, v15, &unk_2628916DF, v279, v279, v185, v182, v183, v174);
  DgnString::~DgnString(&v283);
  *a4 += v182;
  *a5 += v183;
  *v280 += v174;
  v186 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v186 = 12;
  }

  v187 = *(this + 92);
  v188 = *(this + 93);
  v189 = v186 + 2 * (v187 - 1) + 2;
  if (v187 <= 0)
  {
    v189 = v186;
  }

  if (v188 >= v187)
  {
    v190 = v189;
  }

  else
  {
    v190 = v186;
  }

  if (v188 >= v187)
  {
    v191 = v189 + 2 * (v188 - v187);
  }

  else
  {
    v191 = v186;
  }

  if (v188 >= v187)
  {
    v192 = 0;
  }

  else
  {
    v192 = 2 * v187;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 351);
  if (v284)
  {
    v194 = v283;
  }

  else
  {
    v194 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v193, v15, &unk_2628916DF, v279, v279, v194, v191, v190, v192);
  DgnString::~DgnString(&v283);
  *a4 += v191;
  *a5 += v190;
  *v280 += v192;
  v195 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v195 = 12;
  }

  v196 = *(this + 80);
  v197 = *(this + 81);
  v45 = v197 >= v196;
  v198 = v197 - v196;
  if (v45)
  {
    if (v196 > 0)
    {
      v195 += 2 * (v196 - 1) + 2;
    }

    v195 += 2 * v198;
  }

  v199 = v195 + 20;
  v200 = DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::sizeObject(this + 78, 1u) + 8;
  v201 = *(this + 80);
  if (v201 <= *(this + 81))
  {
    v202 = 0;
  }

  else
  {
    v202 = 2 * v201;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 352);
  if (v284)
  {
    v204 = v283;
  }

  else
  {
    v204 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v203, v15, &unk_2628916DF, v279, v279, v204, v199, v200, v202);
  DgnString::~DgnString(&v283);
  *a4 += v199;
  *a5 += v200;
  *v280 += v202;
  v205 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v205 = 12;
  }

  v206 = *(this + 118);
  v207 = *(this + 119);
  v45 = v207 >= v206;
  v208 = v207 - v206;
  if (v45)
  {
    if (v206 > 0)
    {
      v205 += 2 * (v206 - 1) + 2;
    }

    v205 += 2 * v208;
  }

  v209 = v205 + 20;
  v210 = DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::sizeObject(this + 116, 1u) + 8;
  v211 = *(this + 118);
  if (v211 <= *(this + 119))
  {
    v212 = 0;
  }

  else
  {
    v212 = 2 * v211;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 354);
  if (v284)
  {
    v214 = v283;
  }

  else
  {
    v214 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v213, v15, &unk_2628916DF, v279, v279, v214, v209, v210, v212);
  DgnString::~DgnString(&v283);
  *a4 += v209;
  *a5 += v210;
  *v280 += v212;
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 355);
  if (v284)
  {
    v216 = v283;
  }

  else
  {
    v216 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v215, v15, &unk_2628916DF, v15, &unk_2628916DF, v216);
  DgnString::~DgnString(&v283);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v217, v15, &unk_2628916DF);
  v218 = *(this + 126);
  if (v218)
  {
    v219 = 0;
    v220 = 0;
    v221 = 0;
    v222 = 0;
    do
    {
      v223 = *(this + 62);
      if (*(v223 + 8 * v219))
      {
        v282 = 0;
        v283 = 0;
        v281 = 0;
        ArcGraph::printSize(*(v223 + 8 * v219), v219, (a3 + 2), &v283, &v282, &v281);
        v222 += v283;
        v221 += v282;
        v220 += v281;
        v218 = *(this + 126);
      }

      ++v219;
    }

    while (v219 < v218);
  }

  else
  {
    v222 = 0;
    v221 = 0;
    v220 = 0;
    v218 = 0;
  }

  v224 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v224 = 12;
  }

  v225 = v224 + v222;
  v226 = v224 + v221;
  v227 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v227 = 3;
  }

  v228 = v225 + (*(this + 127) << v227);
  v229 = v226 + (v218 << v227);
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 355);
  if (v284)
  {
    v231 = v283;
  }

  else
  {
    v231 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v230, v15, &unk_2628916DF, v279, v279, v231, v228, v229, v220);
  DgnString::~DgnString(&v283);
  *a4 += v228;
  *a5 += v229;
  *v280 += v220;
  v232 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v232 = 12;
  }

  v233 = *(this + 130);
  v234 = *(this + 131);
  v235 = v232 + 2 * (v233 - 1) + 2;
  if (v233 <= 0)
  {
    v235 = v232;
  }

  if (v234 >= v233)
  {
    v236 = v235;
  }

  else
  {
    v236 = v232;
  }

  if (v234 >= v233)
  {
    v237 = v235 + 2 * (v234 - v233);
  }

  else
  {
    v237 = v232;
  }

  if (v234 >= v233)
  {
    v238 = 0;
  }

  else
  {
    v238 = 2 * v233;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 356);
  if (v284)
  {
    v240 = v283;
  }

  else
  {
    v240 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v239, v15, &unk_2628916DF, v279, v279, v240, v237, v236, v238);
  DgnString::~DgnString(&v283);
  *a4 += v237;
  *a5 += v236;
  *v280 += v238;
  if (ArcGraphMgr::smpArcGraphMgr)
  {
    v282 = 0;
    v283 = 0;
    v281 = 0;
    ArcGraphMgr::printSize(ArcGraphMgr::smpArcGraphMgr, 0xFFFFFFFFLL, v15, &v283, &v282, &v281);
    *a4 += v283;
    *a5 += v282;
    *v280 += v281;
  }

  v241 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v241 = 12;
  }

  v242 = *(this + 136);
  v243 = *(this + 137);
  v45 = v243 >= v242;
  v244 = v243 - v242;
  if (v45)
  {
    if (v242 > 0)
    {
      v241 += 2 * (v242 - 1) + 2;
    }

    v241 += 2 * v244;
  }

  v245 = v241 + 20;
  v246 = DgnPrimQueue<unsigned short,DgnPrimArray<unsigned short>>::sizeObject(this + 134, 1u) + 8;
  v247 = *(this + 136);
  if (v247 <= *(this + 137))
  {
    v248 = 0;
  }

  else
  {
    v248 = 2 * v247;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 360);
  if (v284)
  {
    v250 = v283;
  }

  else
  {
    v250 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v249, v15, &unk_2628916DF, v279, v279, v250, v245, v246, v248);
  DgnString::~DgnString(&v283);
  *a4 += v245;
  *a5 += v246;
  *v280 += v248;
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 362);
  if (v284)
  {
    v252 = v283;
  }

  else
  {
    v252 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v251, v15, &unk_2628916DF, v15, &unk_2628916DF, v252);
  DgnString::~DgnString(&v283);
  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v253, v15, &unk_2628916DF);
  v254 = *(this + 144);
  if (v254)
  {
    v255 = 0;
    v256 = 0;
    v257 = 0;
    v258 = 0;
    do
    {
      v259 = *(this + 71);
      if (*(v259 + 8 * v255))
      {
        v282 = 0;
        v283 = 0;
        v281 = 0;
        (*(**(v259 + 8 * v255) + 16))(*(v259 + 8 * v255), v255, (a3 + 2), &v283, &v282, &v281);
        v258 += v283;
        v257 += v282;
        v256 += v281;
        v254 = *(this + 144);
      }

      ++v255;
    }

    while (v255 < v254);
  }

  else
  {
    v258 = 0;
    v257 = 0;
    v256 = 0;
    v254 = 0;
  }

  v260 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v260 = 12;
  }

  v261 = v260 + v258;
  v262 = v260 + v257;
  v263 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v263 = 3;
  }

  v264 = v261 + (*(this + 145) << v263);
  v265 = v262 + (v254 << v263);
  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 362);
  if (v284)
  {
    v267 = v283;
  }

  else
  {
    v267 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v266, v15, &unk_2628916DF, v279, v279, v267, v264, v265, v256);
  DgnString::~DgnString(&v283);
  *a4 += v264;
  *a5 += v265;
  *v280 += v256;
  v268 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v268 = 12;
  }

  v269 = *(this + 148);
  v270 = *(this + 149);
  v271 = v268 + 2 * (v269 - 1) + 2;
  if (v269 <= 0)
  {
    v271 = v268;
  }

  if (v270 >= v269)
  {
    v272 = v271;
  }

  else
  {
    v272 = v268;
  }

  if (v270 >= v269)
  {
    v273 = v271 + 2 * (v270 - v269);
  }

  else
  {
    v273 = v268;
  }

  if (v270 >= v269)
  {
    v274 = 0;
  }

  else
  {
    v274 = 2 * v269;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 364);
  if (v284)
  {
    v276 = v283;
  }

  else
  {
    v276 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v275, v15, &unk_2628916DF, v279, v279, v276, v273, v272, v274);
  DgnString::~DgnString(&v283);
  *a4 += v273;
  *a5 += v272;
  *v280 += v274;
  if (TransducerGrammarMgr::smpTransducerGrammarMgr)
  {
    v282 = 0;
    v283 = 0;
    v281 = 0;
    TransducerGrammarMgr::printSize(TransducerGrammarMgr::smpTransducerGrammarMgr, 0xFFFFFFFFLL, v15, &v283, &v282, &v281);
    *a4 += v283;
    *a5 += v282;
    *v280 += v281;
  }

  getShipObjectSizeDescription(&v283, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 368);
  if (v284)
  {
    v278 = v283;
  }

  else
  {
    v278 = &unk_2628916DF;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v277, a3, &unk_2628916DF, (35 - a3), (35 - a3), v278, *a4, *a5, *v280);
  DgnString::~DgnString(&v283);
}

uint64_t ModelMgr::rebuildPrefilterer(ModelMgr *this, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  DgnDelete<TreePrefilterer>(*(*(this + 20) + 8 * a2));
  *(*(this + 20) + 8 * a2) = 0;
  DgnDelete<SimpleLookaheadScorer>(*(*(this + 22) + 8 * a2));
  *(*(this + 22) + 8 * a2) = 0;
  v10 = *(*(this + 5) + 8 * a3);
  LookaheadScorer = Prefilterer::maybeMakeLookaheadScorer(v10, *(*(this + 26) + 8 * a2), v11);
  Prefilterer = Prefilterer::makePrefilterer(*(*(this + 26) + 8 * a2), v13);
  result = (*(*Prefilterer + 104))(Prefilterer, v10, a4, a5, LookaheadScorer != 0);
  *(*(this + 20) + 8 * a2) = Prefilterer;
  *(*(this + 22) + 8 * a2) = LookaheadScorer;
  *(*(this + 14) + 2 * a2) = a3;
  *(*(this + 16) + 2 * a2) = a4;
  *(*(this + 18) + 4 * a2) = a5;
  return result;
}

uint64_t ModelMgr::rebuildAllStalePrefilterers(uint64_t this)
{
  v1 = *(this + 120);
  if (v1 >= 2)
  {
    v2 = this;
    v3 = 1;
    do
    {
      v4 = v3;
      v5 = *(*(v2 + 112) + 2 * v3);
      if (v5 != 0xFFFF && !*(*(v2 + 160) + 8 * v3))
      {
        this = ModelMgr::rebuildPrefilterer(v2, v3, v5, *(*(v2 + 128) + 2 * v3), *(*(v2 + 144) + 4 * v3));
        v1 = *(v2 + 120);
      }

      v3 = v4 + 1;
    }

    while (v1 > (v4 + 1));
  }

  return this;
}

uint64_t ModelMgr::getUserOrThrow(ModelMgr *this, unsigned int a2)
{
  if (*(this + 12) <= a2 || (result = *(*(this + 5) + 8 * a2)) == 0)
  {
    v4 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 710, "recogctl/model", 6, "%u", a2);
    return *(*(this + 5) + 8 * v4);
  }

  return result;
}

User *DgnDelete<User>(User *result)
{
  if (result)
  {
    User::~User(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

Corpus *DgnDelete<Corpus>(Corpus *result)
{
  if (result)
  {
    Corpus::~Corpus(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void VocOwner::~VocOwner(VocOwner *this)
{
  if (*(this + 8) == 1)
  {
    ModelMgr::freeVoc(ModelMgr::smpModelMgr, **this);
  }
}

uint64_t ModelMgr::loadVoc(ModelMgr *this, char **a2, DFile *a3, DSMSetData **a4, uint64_t a5, _BOOL4 a6, BOOL a7, ProgressCallbackHandler *a8)
{
  LoadSaveTracker::LoadSaveTracker(v58);
  DFileChecksums::DFileChecksums(v57);
  v48 = a3;
  VocGroupInfo = VocGroupInfo::loadVocGroupInfo(v16, a2);
  v56 = 127;
  v54 = &v56;
  v55 = 1;
  NextId = IdMgr<unsigned short>::getNextId(this + 224);
  if (NextId >= 0x7C)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 958, "recogctl/model", 8, "%s", &errStr_recogctl_model_E_TOO_MANY_VOCS);
  }

  for (i = *(this + 68); i <= NextId; *(this + 68) = i)
  {
    if (i == *(this + 69))
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 264, 1, 1);
      i = *(this + 68);
    }

    *(*(this + 33) + 8 * i++) = 0;
  }

  v20 = MemChunkAlloc(0x268uLL, 0);
  Voc::Voc(v20, NextId);
  *(*(this + 33) + 8 * NextId) = v22;
  v23 = *(this + 72);
  if (v23 == *(this + 73))
  {
    DgnPrimArray<short>::reallocElts(this + 280, 1, 1);
    v23 = *(this + 72);
  }

  v47 = VocGroupInfo;
  *(*(this + 35) + 2 * v23) = NextId;
  *(this + 72) = v23 + 1;
  v56 = NextId;
  v24 = *(*(this + 33) + 8 * NextId);
  DFileProgressInfo::attachProgressHandler((v24 + 520), a8, v21);
  (*(*a2 + 12))(a2, v24 + 520);
  DFile::cacheSubFileSizeInfo(a2);
  ProgressCallbackHandler::startReporting(a8, v25);
  v45 = a5;
  *v53 = 0;
  v49 = v24;
  v46 = a6;
  if (a4)
  {
    if (*(a2 + 6))
    {
      v26 = a2[2];
    }

    else
    {
      v26 = &unk_2628916DF;
    }

    DgnString::DgnString(&v50, v26);
    MaybeReserveAndRefDSMId = DgnSharedMemSet::getMaybeReserveAndRefDSMIdEx(a4, &v50, 1);
    if (!DgnSharedMemSet::isCurThreadDSMOwner(a4, MaybeReserveAndRefDSMId) && !DgnSharedMemSet::waitTilCreatedAndMapEx(a4, MaybeReserveAndRefDSMId, &v50, 0xF4240u))
    {
      if (v51)
      {
        v32 = v50;
      }

      else
      {
        v32 = &unk_2628916DF;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 993, "recogctl/model", 43, "%d %.500s", MaybeReserveAndRefDSMId, v32);
    }

    v27 = a7;
    v31 = DgnSharedMemSet::getGlobalState(a4, MaybeReserveAndRefDSMId) - 3 < 2;
    v29 = *(DgnSharedMemSet::getSetCacheDir(a4) + 8) < 2u;
    *(v49 + 120) = a4;
    *(v49 + 128) = MaybeReserveAndRefDSMId;
    *(a2 + 72) = 1;
    DgnString::~DgnString(&v50);
    v28 = v31;
  }

  else
  {
    v27 = a7;
    v28 = 0;
    v29 = 0;
    MaybeReserveAndRefDSMId = 0xFFFFFFFFLL;
    LOBYTE(v31) = 1;
  }

  DFileChecksums::DFileChecksums(v52);
  if (v29 && v28)
  {
    v33 = a4;
  }

  else
  {
    v33 = 0;
  }

  if (v29 && v28)
  {
    v34 = MaybeReserveAndRefDSMId;
  }

  else
  {
    v34 = 0xFFFFFFFFLL;
  }

  Voc = Voc::loadVoc(v49, a2, v48, v33, v34, v45, v46, v27, &v53[1], v52, v53);
  if (!v31)
  {
    Voc::saveVocShared(v49, a4, MaybeReserveAndRefDSMId, (a2 + 2), v29);
  }

  if (v47)
  {
    ModelMgr::checkChecksums(Voc, v57, v52, v53[1]);
  }

  if (v53[0])
  {
    RuleMgr::invalidateAllStates(*(*(*(this + 33) + 8 * NextId) + 64));
  }

  v36 = DFile::subFileExists(a2, 0x61u);
  if (NextId == 127)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36;
  }

  if (v36)
  {
    v38 = a2;
  }

  else
  {
    v38 = 0;
  }

  v39 = DFile::subFileExists(a2, 0x4Cu);
  if (v39)
  {
    v40 = NextId;
  }

  else
  {
    v40 = 127;
  }

  if (v39)
  {
    v41 = a2;
  }

  else
  {
    v41 = 0;
  }

  v42 = DFile::subFileExists(a2, 0x4Du);
  if (v37)
  {
    TextStateRule::TextStateRule(&v50);
    TextStateRule::loadStatesAndRules(&v50, v38, NextId);
    TextStateRule::~TextStateRule(&v50);
  }

  v43 = *(*(*(this + 33) + 8 * NextId) + 56);
  if (!*(v43 + 181))
  {
    StateMgr::makeSpecialEouStateId(*(*(*(this + 33) + 8 * NextId) + 56));
  }

  if (v40 != 127)
  {
    Voc::loadAndDiscardReproData(*(*(this + 33) + 8 * v40), v41);
  }

  if (v42)
  {
    Voc::loadAndDiscardReproResult(*(*(this + 33) + 8 * v40), v41);
  }

  if (!StateMgr::isEmpty(v43))
  {
    StateMgr::recomputeAllPrimitiveBegPhones(v43);
  }

  StateMgr::declarePhnIndexSetsInitialized(v43);
  if (!v53[1])
  {
    (*(*a2 + 10))(a2, "Voc");
  }

  StateMgr::computeStateIdNameChecksum(*(v49 + 56));
  RuleMgr::computeRuleIdNameChecksum(*(v49 + 64));
  v55 = 0;
  DFileChecksums::~DFileChecksums(v52);
  VocOwner::~VocOwner(&v54);
  DFileChecksums::~DFileChecksums(v57);
  LoadSaveTracker::~LoadSaveTracker(v58);
  return NextId;
}

void sub_2628426C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  DgnString::~DgnString(&a16);
  VocOwner::~VocOwner(va);
  DFileChecksums::~DFileChecksums((v26 - 120));
  LoadSaveTracker::~LoadSaveTracker((v26 - 89));
  _Unwind_Resume(a1);
}

void ModelMgr::checkChecksums(ModelMgr *this, VocGroupInfo *a2, const DFileChecksums *a3, char a4)
{
  MrecInitModule_sdpres_sdapi();
  v7 = v6;
  if (*(a3 + 2))
  {
    v8 = 0;
    do
    {
      SubFileName = DFileChecksums::getSubFileName(a3, v8);
      if (!DFileChecksums::present(v7, SubFileName))
      {
        v10 = DFileChecksums::getSubFileName(a3, v8);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1130, "recogctl/model", 11, "%.500s", v10);
      }

      ++v8;
    }

    while (v8 < *(a3 + 2));
  }

  if (*(v7 + 2))
  {
    v11 = 0;
    do
    {
      v12 = DFileChecksums::getSubFileName(v7, v11);
      if (DFileChecksums::present(a3, v12))
      {
        Checksum = DFileChecksums::getChecksum(v7, v11);
        if (Checksum != DFileChecksums::getChecksum(a3, v12))
        {
          DFileChecksums::getChecksum(v7, v11);
          DFileChecksums::getChecksum(a3, v12);
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1147, "recogctl/model", 10, "%.500s %u %08x %08x", v12);
        }
      }

      else if ((a4 & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1138, "recogctl/model", 9, "%.500s %u");
      }

      ++v11;
    }

    while (v11 < *(v7 + 2));
  }
}

uint64_t ModelMgr::getVocOrThrow(ModelMgr *this, unsigned int a2)
{
  if (*(this + 68) <= a2 || (result = *(*(this + 33) + 8 * a2)) == 0)
  {
    v4 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1325, "recogctl/model", 4, "%u", a2);
    return *(*(this + 33) + 8 * v4);
  }

  return result;
}

Voc *DgnDelete<Voc>(Voc *result)
{
  if (result)
  {
    Voc::~Voc(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ModelMgr::saveVoc(ModelMgr *a1, unsigned int a2, uint64_t a3, char **a4, _DWORD *a5, int a6, DFileChecksums *a7, ProgressCallbackHandler *a8, unsigned int a9, unsigned int a10)
{
  LoadSaveTracker::LoadSaveTracker(&v30);
  VocOrThrow = ModelMgr::getVocOrThrow(a1, a2);
  isValid = FileSpec::isValid((VocOrThrow + 104));
  shouldSaveSubFilesInTextFormat = Voc::shouldSaveSubFilesInTextFormat(VocOrThrow, a6);
  if (FileSpec::isValid(a4))
  {
    if (a6 == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1225, "recogctl/model", 34, "%s", &errStr_recogctl_model_E_SAVE_SVC_AS_TEXT);
    }

    shouldSaveSubFilesInTextFormat = 0;
  }

  if (isValid && FileSpec::isValid(a4))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1231, "recogctl/model", 35, "%u", a2);
  }

  DFileProgressInfo::attachProgressHandler((VocOrThrow + 520), a8, v21);
  ProgressCallbackHandler::startReporting(a8, v22);
  DFileChecksums::DFileChecksums(v29);
  DFileChecksums::DFileChecksums(v28);
  Voc::saveVoc(VocOrThrow, a3, a4, a5, v29, shouldSaveSubFilesInTextFormat, a7, a9, a10);
  if (shouldSaveSubFilesInTextFormat)
  {
    if (!StateMgr::isEmpty(*(VocOrThrow + 56)) || !RuleMgr::isEmpty(*(VocOrThrow + 64)))
    {
      TextStateRule::TextStateRule(v27);
      DFileOwner::DFileOwner(v26);
      *a5 = 2;
      v23 = DFile::openDFile(a3, 2, 2, v26);
      TextStateRule::saveStatesAndRules(v27, v23, a2);
      *a5 = 0;
      DFileOwner::setRemoveFileOnDestruction(v26, 0);
      DFileOwner::~DFileOwner(v26, v24);
      TextStateRule::~TextStateRule(v27);
    }
  }

  else
  {
    VocGroupInfo::setVocChecksums(v28, v29);
    MrecInitModule_sdpres_sdapi();
    if (*(v25 + 8))
    {
      *a5 = 2;
      Voc::writeVocGroupInfo(VocOrThrow, v28, a3);
      *a5 = 0;
    }
  }

  DFileChecksums::~DFileChecksums(v28);
  DFileChecksums::~DFileChecksums(v29);
  LoadSaveTracker::~LoadSaveTracker(&v30);
}

void sub_262842BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  va_copy(va2, va1);
  v19 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  TextStateRule::~TextStateRule(va);
  DFileChecksums::~DFileChecksums(va1);
  DFileChecksums::~DFileChecksums(va2);
  LoadSaveTracker::~LoadSaveTracker((v9 - 81));
  _Unwind_Resume(a1);
}

uint64_t ModelMgr::createWord(ModelMgr *this, unsigned int a2, char *a3, uint64_t a4, const char *a5)
{
  if (!*a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1440, "recogctl/model", 41, "%s", &errStr_recogctl_model_E_BAD_WORD_NAME);
  }

  v10 = *(*(this + 33) + 8 * a2);
  if (a4 != 0xFFFFFF)
  {
    v11 = *(v10 + 48);
    if (((*(v11[78] + 4 * (a4 >> 5)) >> a4) & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1450, "recogctl/model", 42, "%u %u %.500s", a2, a4, (v11[28] + *(v11[25] + 4 * a4)));
    }
  }

  return Voc::createWord(v10, a3, a4, a5) & 0xFFFFFF | (a2 << 25);
}

void *ModelMgr::deleteWordFamilyFromWordList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(*(a1 + 264) + 8 * a2);
  if (Voc::getVocReferringReproRefCount(v6))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 1530, "recogctl/model", 28, "%s", &errStr_recogctl_model_E_DELETE_WORD_REPRO_REF_PRESENT);
  }

  v7 = *(v6 + 6);
  v8 = *(a3 + 8);
  v15 = 0;
  v16 = 0;
  if (v8)
  {
    v17 = 0;
    HIDWORD(v16) = realloc_array(0, &v17, 16 * v8, 0, 0, 1) >> 4;
    v9 = v17;
    v15 = v17;
    v10 = v8;
    do
    {
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
      --v10;
    }

    while (v10);
    v11 = *(a3 + 8);
    LODWORD(v16) = v8;
    if (v11)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        WordList::verifyDeletable(v7, *(*a3 + 4 * v13));
        WordList::lookupAll(v7, *(*a3 + 4 * v13), v15 + v12);
        ModelMgr::notifyWordFamilyDeleted(a1, v4, *(*a3 + 4 * v13++));
        v12 += 16;
      }

      while (v13 < *(a3 + 8));
    }
  }

  else
  {
    LODWORD(v16) = 0;
  }

  Voc::deleteWordIdArrayFamily(v6, a3, &v15);
  return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v15);
}

void sub_262842EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  _Unwind_Resume(a1);
}

uint64_t ModelMgr::notifyWordFamilyDeleted(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = ModelMgr::getVocOrThrow(a1, a2);
  if (*(*(*(result + 48) + 32) + 2 * a3) && *(a1 + 168) >= 2u)
  {
    v7 = *(result + 56);
    v8 = 1;
    do
    {
      v9 = v8;
      if (*(*(a1 + 160) + 8 * v8) && *(*(a1 + 128) + 2 * v8) == a2)
      {
        result = StateMgr::isWordIdInState(v7, *(*(a1 + 144) + 4 * v8), a3, 0);
        if (result)
        {
          DgnDelete<TreePrefilterer>(*(*(a1 + 160) + 8 * v9));
          *(*(a1 + 160) + 8 * v9) = 0;
          result = DgnDelete<SimpleLookaheadScorer>(*(*(a1 + 176) + 8 * v9));
          *(*(a1 + 176) + 8 * v9) = 0;
        }
      }

      v8 = v9 + 1;
    }

    while (*(a1 + 168) > (v9 + 1));
  }

  return result;
}

uint64_t ModelMgr::notifyWordFamilyAdded(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v6 = *(ModelMgr::getVocOrThrow(a1, a2) + 56);
  v10[0] = 0;
  v10[1] = 0;
  if (*(a1 + 168) >= 2u)
  {
    v7 = 1;
    do
    {
      v8 = v7;
      if (*(*(a1 + 160) + 8 * v7) && *(*(a1 + 128) + 2 * v7) == a2 && StateMgr::isWordIdInState(v6, *(*(a1 + 144) + 4 * v7), a3, 0))
      {
        DgnDelete<TreePrefilterer>(*(*(a1 + 160) + 8 * v8));
        *(*(a1 + 160) + 8 * v8) = 0;
        DgnDelete<SimpleLookaheadScorer>(*(*(a1 + 176) + 8 * v8));
        *(*(a1 + 176) + 8 * v8) = 0;
      }

      v7 = v8 + 1;
    }

    while (*(a1 + 168) > (v8 + 1));
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
}

uint64_t ModelMgr::notifyWordFamilyChangedProns(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t *a5)
{
  v8 = a2;
  VocOrThrow = ModelMgr::getVocOrThrow(a1, a2);
  v11 = VocOrThrow;
  if (*(a4 + 8))
  {
    Voc::notifyWordFamilyChanged(VocOrThrow, a4);
  }

  if (*(a5 + 2))
  {
    Voc::notifyWordFamilyAdded(v11, a3, a5, 0xFFFFFFLL);
  }

  v40 = 0;
  v41 = 0;
  DgnPrimArray<int>::copyArraySlice(&v40, a4, 0, *(a4 + 8));
  v12 = *(a5 + 2);
  if ((v41 + v12) > HIDWORD(v41))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v40, (v41 + v12 - HIDWORD(v41)), 1);
    v12 = *(a5 + 2);
  }

  if (v12)
  {
    v13 = 0;
    v14 = *a5;
    v15 = v40;
    do
    {
      *(v15 + 4 * (v13 + v41)) = *(v14 + 4 * v13);
      ++v13;
      v16 = *(a5 + 2);
    }

    while (v13 < v16);
  }

  else
  {
    LODWORD(v16) = 0;
  }

  v17 = v41 + v16;
  LODWORD(v41) = v41 + v16;
  if (*(v11 + 288) == 1)
  {
    if (StateMgr::isWordIdInState(*(v11 + 56), *(v11 + 304), a3, 1))
    {
      v18 = *(v11 + 292);
      v19 = *(v11 + 296);
      if (*(v11 + 292))
      {
        v20 = *(a1 + 48);
        if (!v20)
        {
          goto LABEL_32;
        }

        v21 = 0;
        v22 = *(a1 + 40);
        do
        {
          if (*v22 && *(*v22 + 216) == *(v11 + 308))
          {
            v21 = *v22;
          }

          ++v22;
          --v20;
        }

        while (v20);
        if (v21)
        {
          v32 = v8;
          v33 = a3;
          v39[0] = 0;
          v39[1] = 0;
          v37 = 0;
          v38 = 0;
          if (v41)
          {
            v23 = 0;
            v24 = *(v11 + 48);
            do
            {
              v25 = *(v40 + 4 * v23);
              v36 = 0;
              v35 = 0;
              Voc::getPrefPron(v11, v25, &v36, &v35);
              v34 = v25;
              v26 = *(*(v24 + 48) + 4 * v25);
              LODWORD(v38) = 0;
              v27 = v35;
              if (v35)
              {
                for (i = 0; i < v35; ++i)
                {
                  PicMgr::getPrefContextPelIdAndDurIds(*(v21 + 48), v18, v19, (v24 + 88), v26, v36, v27, i, v39);
                  v29 = Voc::findOrAddPrefPicModel(v11, v39);
                  v30 = v38;
                  if (v38 == HIDWORD(v38))
                  {
                    DgnPrimArray<unsigned int>::reallocElts(&v37, 1, 1);
                    v30 = v38;
                  }

                  *(v37 + 4 * v30) = v29;
                  LODWORD(v38) = v38 + 1;
                  v27 = v35;
                }
              }

              Voc::addPrefPicModelIdPron(v11, v34, &v37);
              ++v23;
            }

            while (v23 < v41);
          }

          Voc::addPrefWordIdsSortedByPron(v11, &v40);
          DgnPrimArray<unsigned int>::~DgnPrimArray(&v37);
          DgnIArray<Utterance *>::~DgnIArray(v39);
          v8 = v32;
          a3 = v33;
        }

        else
        {
LABEL_32:
          Voc::notifyPrefWordIdsSortedByPronBad(v11);
        }
      }

      else
      {
        Voc::addPrefWordIdsSortedByPron(v11, &v40);
      }
    }

    v17 = v41;
  }

  if (v17)
  {
    ModelMgr::notifyWordFamilyAdded(a1, v8, a3);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
}

void sub_262843374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

uint64_t *ModelMgr::deleteWordClientProns(ModelMgr *this, unsigned int a2, uint64_t a3)
{
  VocOrThrow = ModelMgr::getVocOrThrow(this, a2);
  result = *(VocOrThrow + 48);
  if (*(result[4] + 2 * a3))
  {
    v11 = 0;
    v12 = 0;
    WordList::lookupAllClientAddedProns(result, result[28] + *(result[25] + 4 * a3), &v11);
    if (v12)
    {
      ModelMgr::notifyWordFamilyDeleted(this, a2, a3);
    }

    v9 = 0;
    v10 = 0;
    v8[0] = 0;
    v8[1] = 0;
    Voc::deleteWordClientProns(VocOrThrow, a3, &v9, v8);
    if (v10)
    {
      ModelMgr::notifyWordFamilyAdded(this, a2, a3);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v9);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v11);
  }

  return result;
}

void sub_262843488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t ModelMgr::addClientPronsAvoidDuplicates(ModelMgr *a1, unsigned int a2, unsigned int *a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7, void *a8, int a9, uint64_t a10, uint64_t a11)
{
  VocOrThrow = ModelMgr::getVocOrThrow(a1, a2);
  WordList::verifyModifiable(*(VocOrThrow + 48), a3);
  Voc::addClientPronsAvoidDuplicates(VocOrThrow, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  return ModelMgr::notifyWordFamilyChangedProns(a1, a2, a3, a4, a5);
}

PicMgr **DgnDelete<ArcGraph>(PicMgr **result)
{
  if (result)
  {
    ArcGraph::~ArcGraph(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t ModelMgr::getArcGraphOrThrow(ModelMgr *this, unsigned int a2)
{
  if (*(this + 126) <= a2 || (result = *(*(this + 62) + 8 * a2)) == 0)
  {
    v4 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/model.cpp", 2187, "recogctl/model", 4, "%u", a2);
    return *(*(this + 62) + 8 * v4);
  }

  return result;
}

void (***DgnDelete<TransducerGrammar>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *DgnIOwnArray<User *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<User>(*(*a1 + v3));
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

void *DgnIOwnArray<Prefilterer *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<TreePrefilterer>(*(*a1 + v3));
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

void *DgnIOwnArray<LookaheadScorer *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<SimpleLookaheadScorer>(*(*a1 + v3));
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

void *DgnIOwnArray<Voc *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<Voc>(*(*a1 + v3));
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

void *DgnIOwnArray<Corpus *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<Corpus>(*(*a1 + v3));
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

void *DgnIOwnArray<ReproData *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<ReproData>(*(*a1 + v3));
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

void *DgnIOwnArray<ArcGraph *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<ArcGraph>(*(*a1 + v3));
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

void *DgnIOwnArray<TransducerGrammar *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<TransducerGrammar>(*(*a1 + v3));
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

void MrecInitModule_scrcache_pel(void)
{
  if (!gParDiagnosticScoreAllPels)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DiagnosticScoreAllPels", &unk_262891736, &unk_262891736, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDiagnosticScoreAllPels = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticScoreAllPels);
  }

  if (!gParDebugShowPelStats)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugShowPelStats", &unk_262891736, &unk_262891736, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugShowPelStats = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPelStats);
  }

  if (!gParDebugShowPelsPerGenoneFrameStats)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugShowPelsPerGenoneFrameStats", &unk_262891736, &unk_262891736, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugShowPelsPerGenoneFrameStats = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPelsPerGenoneFrameStats);
  }

  if (!gParDebugShowPelsPerGenoneStats)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugShowPelsPerGenoneStats", &unk_262891736, &unk_262891736, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugShowPelsPerGenoneStats = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPelsPerGenoneStats);
  }

  if (!gParDebugShowPelScores)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugShowPelScores", &unk_262891736, &unk_262891736, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugShowPelScores = v9;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowPelScores);
  }

  if (!gParDebugPelScoreCache)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v10, "DebugPelScoreCache", &unk_262891736, &unk_262891736, 0, 0, 0);
    *v11 = &unk_287527EA0;
    gParDebugPelScoreCache = v11;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugPelScoreCache);
  }

  if (!gParDebugShowBestPels)
  {
    v12 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v12, "DebugShowBestPels", &unk_262891736, &unk_262891736, 0, 0, 0);
    *v13 = &unk_287527EA0;
    gParDebugShowBestPels = v13;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowBestPels);
  }

  if (!gParDebugActivePels)
  {
    v14 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v14, "DebugActivePels", &unk_262891736, &unk_262891736, 0, 0, 0);
    *v15 = &unk_287527EA0;
    gParDebugActivePels = v15;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugActivePels);
  }

  if (!gParDebugPelScoringTime)
  {
    v16 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v16, "DebugPelScoringTime", &unk_262891736, &unk_262891736, 0, 0, 0);
    *v17 = &unk_287527EA0;
    gParDebugPelScoringTime = v17;
    v18 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v18, &gParDebugPelScoringTime);
  }
}

uint64_t PelStats::sizeObject(uint64_t a1, int a2)
{
  v4 = SnapTime::sizeObject(a1 + 40, a2);
  v5 = SnapTime::sizeObject(a1 + 72, a2);
  v6 = SnapTime::sizeObject(a1 + 104, a2);
  v7 = SnapTime::sizeObject(a1 + 136, a2);
  v8 = 48;
  if (a2 == 3)
  {
    v8 = 0;
  }

  return v8 + v4 + v5 + v6 + v7;
}

double PelStats::resetStats(PelStats *this)
{
  result = 0.0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

__n128 PelStats::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v2 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v2;
  v3 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v3;
  v4 = *(a2 + 120);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v4;
  result = *(a2 + 136);
  v6 = *(a2 + 152);
  *(a1 + 136) = result;
  *(a1 + 152) = v6;
  *(a1 + 168) = *(a2 + 168);
  return result;
}

int64x2_t PelStats::operator-=(uint64_t a1, uint64_t a2)
{
  *a1 = vsub_s32(*a1, *a2);
  *(a1 + 8) -= *(a2 + 8);
  *(a1 + 16) = vsubq_s32(*(a1 + 16), *(a2 + 16));
  *(a1 + 32) = vsub_s32(*(a1 + 32), *(a2 + 32));
  *(a1 + 168) -= *(a2 + 168);
  *(a1 + 40) = vsubq_s64(*(a1 + 40), *(a2 + 40));
  *(a1 + 56) = vsubq_s64(*(a1 + 56), *(a2 + 56));
  *(a1 + 72) = vsubq_s64(*(a1 + 72), *(a2 + 72));
  *(a1 + 88) = vsubq_s64(*(a1 + 88), *(a2 + 88));
  *(a1 + 104) = vsubq_s64(*(a1 + 104), *(a2 + 104));
  *(a1 + 120) = vsubq_s64(*(a1 + 120), *(a2 + 120));
  *(a1 + 136) = vsubq_s64(*(a1 + 136), *(a2 + 136));
  result = vsubq_s64(*(a1 + 152), *(a2 + 152));
  *(a1 + 152) = result;
  return result;
}

int64x2_t PelStats::operator+=(uint64_t a1, uint64_t a2)
{
  *a1 = vadd_s32(*a1, *a2);
  *(a1 + 8) += *(a2 + 8);
  *(a1 + 16) = vaddq_s32(*(a1 + 16), *(a2 + 16));
  *(a1 + 32) = vadd_s32(*(a1 + 32), *(a2 + 32));
  *(a1 + 40) = vaddq_s64(*(a1 + 40), *(a2 + 40));
  *(a1 + 56) = vaddq_s64(*(a1 + 56), *(a2 + 56));
  *(a1 + 72) = vaddq_s64(*(a1 + 72), *(a2 + 72));
  *(a1 + 88) = vaddq_s64(*(a1 + 88), *(a2 + 88));
  *(a1 + 104) = vaddq_s64(*(a1 + 104), *(a2 + 104));
  *(a1 + 120) = vaddq_s64(*(a1 + 120), *(a2 + 120));
  *(a1 + 136) = vaddq_s64(*(a1 + 136), *(a2 + 136));
  result = vaddq_s64(*(a1 + 152), *(a2 + 152));
  *(a1 + 152) = result;
  *(a1 + 168) += *(a2 + 168);
  return result;
}

double PelScoreCache::PelScoreCache(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 492) = 0x10000;
  result = NAN;
  *(a1 + 56) = 0xFFFFFFF000000000;
  *(a1 + 256) = 20000;
  *(a1 + 488) = 1310785535;
  return result;
}

void PelScoreCache::~PelScoreCache(PelScoreCache *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 472);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 280);
  DgnIArray<Utterance *>::~DgnIArray(this + 264);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 240);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 224);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 176);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 160);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 144);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 128);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 112);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 64);
}

void PelScoreCache::printSize(PelScoreCache *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 348);
  if (v149)
  {
    v13 = v148;
  }

  else
  {
    v13 = &unk_262891736;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_262891736, a3, &unk_262891736, v13);
  DgnString::~DgnString(&v148);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_262891736);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  v16 = (a3 + 1);
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 349);
  if (v149)
  {
    v19 = v148;
  }

  else
  {
    v19 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &unk_262891736, (34 - a3), (34 - a3), v19, v15, v15, 0);
  DgnString::~DgnString(&v148);
  *a4 += v15;
  *a5 += v15;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 351);
  if (v149)
  {
    v21 = v148;
  }

  else
  {
    v21 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &unk_262891736, (34 - a3), (34 - a3), v21, 1, 1, 0);
  DgnString::~DgnString(&v148);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 352);
  if (v149)
  {
    v24 = v148;
  }

  else
  {
    v24 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_262891736, (34 - a3), (34 - a3), v24, v22, v22, 0);
  DgnString::~DgnString(&v148);
  *a4 += v22;
  *a5 += v22;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 4;
  }

  else
  {
    v25 = 8;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 353);
  if (v149)
  {
    v27 = v148;
  }

  else
  {
    v27 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, (a3 + 1), &unk_262891736, (34 - a3), (34 - a3), v27, v25, v25, 0);
  DgnString::~DgnString(&v148);
  *a4 += v25;
  *a5 += v25;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 4;
  }

  else
  {
    v28 = 8;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 355);
  if (v149)
  {
    v30 = v148;
  }

  else
  {
    v30 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, (a3 + 1), &unk_262891736, (34 - a3), (34 - a3), v30, v28, v28, 0);
  DgnString::~DgnString(&v148);
  *a4 += v28;
  *a5 += v28;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 4;
  }

  else
  {
    v31 = 8;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 357);
  if (v149)
  {
    v33 = v148;
  }

  else
  {
    v33 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, (a3 + 1), &unk_262891736, (34 - a3), (34 - a3), v33, v31, v31, 0);
  DgnString::~DgnString(&v148);
  *a4 += v31;
  *a5 += v31;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 4;
  }

  else
  {
    v34 = 8;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 359);
  if (v149)
  {
    v36 = v148;
  }

  else
  {
    v36 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, (a3 + 1), &unk_262891736, (34 - a3), (34 - a3), v36, v34, v34, 0);
  DgnString::~DgnString(&v148);
  *a4 += v34;
  *a5 += v34;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 361);
  if (v149)
  {
    v38 = v148;
  }

  else
  {
    v38 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_262891736, (34 - a3), (34 - a3), v38, 4, 4, 0);
  DgnString::~DgnString(&v148);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 362);
  if (v149)
  {
    v40 = v148;
  }

  else
  {
    v40 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, (a3 + 1), &unk_262891736, (34 - a3), (34 - a3), v40, 4, 4, 0);
  DgnString::~DgnString(&v148);
  *a4 += 4;
  *a5 += 4;
  v41 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v41 = 8;
  }

  v42 = *(this + 18);
  if (v42 <= 0)
  {
    v43 = 0;
  }

  else
  {
    v43 = (2 * v42);
  }

  v44 = v41 + v43;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 364);
  if (v149)
  {
    v46 = v148;
  }

  else
  {
    v46 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, (a3 + 1), &unk_262891736, (34 - a3), (34 - a3), v46, v44, v44, 0);
  v147 = a3;
  DgnString::~DgnString(&v148);
  *a4 += v44;
  *a5 += v44;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v47 = 12;
  }

  else
  {
    v47 = 16;
  }

  v48 = *(this + 22);
  v49 = *(this + 23);
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

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 366);
  if (v149)
  {
    v53 = v148;
  }

  else
  {
    v53 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v52, v16, &unk_262891736, v17, v17, v53, v51, v47, v50);
  DgnString::~DgnString(&v148);
  *a4 += v51;
  *a5 += v47;
  *a6 += v50;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v54 = 12;
  }

  else
  {
    v54 = 16;
  }

  v55 = *(this + 26);
  v56 = *(this + 27);
  if (v56 >= v55)
  {
    v57 = 0;
    if (v55 > 0)
    {
      v54 += 2 * (v55 - 1) + 2;
    }

    v58 = v54 + 2 * (v56 - v55);
  }

  else
  {
    v57 = 2 * v55;
    v58 = v54;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 367);
  if (v149)
  {
    v60 = v148;
  }

  else
  {
    v60 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v16, &unk_262891736, v17, v17, v60, v58, v54, v57);
  DgnString::~DgnString(&v148);
  *a4 += v58;
  *a5 += v54;
  *a6 += v57;
  v61 = sizeObject<DgnPrimArray<unsigned short>>(this + 112, 0);
  v62 = sizeObject<DgnPrimArray<unsigned short>>(this + 112, 1);
  v148 = 0;
  v149 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v148);
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 369);
  if (v149)
  {
    v64 = v148;
  }

  else
  {
    v64 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v16, &unk_262891736, v17, v17, v64, v61, v62, 0);
  DgnString::~DgnString(&v148);
  *a4 += v61;
  *a5 += v62;
  v65 = sizeObject<DgnPrimArray<unsigned short>>(this + 128, 0);
  v66 = sizeObject<DgnPrimArray<unsigned short>>(this + 128, 1);
  v148 = 0;
  v149 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v148);
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 371);
  if (v149)
  {
    v68 = v148;
  }

  else
  {
    v68 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v16, &unk_262891736, v17, v17, v68, v65, v66, 0);
  DgnString::~DgnString(&v148);
  *a4 += v65;
  *a5 += v66;
  v69 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v69 = 8;
  }

  v70 = *(this + 38);
  if (v70 <= 0)
  {
    v71 = 0;
  }

  else
  {
    v71 = 4 * v70;
  }

  v72 = v71 + v69;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 373);
  if (v149)
  {
    v74 = v148;
  }

  else
  {
    v74 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v73, v16, &unk_262891736, v17, v17, v74, v72, v72, 0);
  DgnString::~DgnString(&v148);
  *a4 += v72;
  *a5 += v72;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v75 = 12;
  }

  else
  {
    v75 = 16;
  }

  v76 = *(this + 42);
  v77 = *(this + 43);
  if (v77 >= v76)
  {
    v78 = 0;
    if (v76 > 0)
    {
      v75 += 2 * (v76 - 1) + 2;
    }

    v79 = v75 + 2 * (v77 - v76);
  }

  else
  {
    v78 = 2 * v76;
    v79 = v75;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 375);
  if (v149)
  {
    v81 = v148;
  }

  else
  {
    v81 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v80, v16, &unk_262891736, v17, v17, v81, v79, v75, v78);
  DgnString::~DgnString(&v148);
  *a4 += v79;
  *a5 += v75;
  *a6 += v78;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v82 = 12;
  }

  else
  {
    v82 = 16;
  }

  v83 = *(this + 46);
  v84 = *(this + 47);
  if (v84 >= v83)
  {
    v85 = 0;
    if (v83 > 0)
    {
      v82 += 4 * (v83 - 1) + 4;
    }

    v86 = v82 + 4 * (v84 - v83);
  }

  else
  {
    v85 = 4 * v83;
    v86 = v82;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 377);
  if (v149)
  {
    v88 = v148;
  }

  else
  {
    v88 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v16, &unk_262891736, v17, v17, v88, v86, v82, v85);
  DgnString::~DgnString(&v148);
  *a4 += v86;
  *a5 += v82;
  *a6 += v85;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v89 = 12;
  }

  else
  {
    v89 = 16;
  }

  v90 = *(this + 50);
  v91 = *(this + 51);
  if (v91 >= v90)
  {
    v92 = 0;
    if (v90 > 0)
    {
      v89 += 2 * (v90 - 1) + 2;
    }

    v93 = v89 + 2 * (v91 - v90);
  }

  else
  {
    v92 = 2 * v90;
    v93 = v89;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 379);
  if (v149)
  {
    v95 = v148;
  }

  else
  {
    v95 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v16, &unk_262891736, v17, v17, v95, v93, v89, v92);
  DgnString::~DgnString(&v148);
  *a4 += v93;
  *a5 += v89;
  *a6 += v92;
  v96 = sizeObject<DgnPrimArray<unsigned short>>(this + 208, 0);
  v97 = sizeObject<DgnPrimArray<unsigned short>>(this + 208, 1);
  v148 = 0;
  v149 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v148);
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 381);
  if (v149)
  {
    v99 = v148;
  }

  else
  {
    v99 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v16, &unk_262891736, v17, v17, v99, v96, v97, 0);
  DgnString::~DgnString(&v148);
  *a4 += v96;
  *a5 += v97;
  v100 = sizeObject<DgnPrimArray<unsigned short>>(this + 240, 0);
  v101 = sizeObject<DgnPrimArray<unsigned short>>(this + 240, 1);
  v148 = 0;
  v149 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v148);
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 383);
  if (v149)
  {
    v103 = v148;
  }

  else
  {
    v103 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v16, &unk_262891736, v17, v17, v103, v100, v101, 0);
  DgnString::~DgnString(&v148);
  *a4 += v100;
  *a5 += v101;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 385);
  if (v149)
  {
    v105 = v148;
  }

  else
  {
    v105 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v104, v16, &unk_262891736, v17, v17, v105, 4, 4, 0);
  DgnString::~DgnString(&v148);
  *a4 += 4;
  *a5 += 4;
  v106 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v106 = 12;
  }

  v107 = *(this + 68);
  v108 = 2;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v108 = 3;
  }

  v109 = (((*(this + 69) - v107) + v107) << v108) + v106;
  v110 = (v107 << v108) + v106;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 386);
  if (v149)
  {
    v112 = v148;
  }

  else
  {
    v112 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v16, &unk_262891736, v17, v17, v112, v109, v110, 0);
  DgnString::~DgnString(&v148);
  *a4 += v109;
  *a5 += v110;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v113 = 12;
  }

  else
  {
    v113 = 16;
  }

  v114 = *(this + 72);
  v115 = *(this + 73);
  if (v115 >= v114)
  {
    v116 = 0;
    if (v114 > 0)
    {
      v113 += 4 * (v114 - 1) + 4;
    }

    v117 = v113 + 4 * (v115 - v114);
  }

  else
  {
    v116 = 4 * v114;
    v117 = v113;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 388);
  if (v149)
  {
    v119 = v148;
  }

  else
  {
    v119 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v118, v16, &unk_262891736, v17, v17, v119, v117, v113, v116);
  DgnString::~DgnString(&v148);
  *a4 += v117;
  *a5 += v113;
  *a6 += v116;
  v120 = PelStats::sizeObject(this + 296, 0);
  v121 = PelStats::sizeObject(this + 296, 1);
  v122 = PelStats::sizeObject(this + 296, 3);
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 418);
  if (v149)
  {
    v124 = v148;
  }

  else
  {
    v124 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v123, v16, &unk_262891736, v17, v17, v124, v120, v121, v122);
  DgnString::~DgnString(&v148);
  *a4 += v120;
  *a5 += v121;
  *a6 += v122;
  v125 = sizeObject<Uns16AndScore>(this + 472, 0);
  v126 = sizeObject<Uns16AndScore>(this + 472, 1);
  v127 = sizeObject(&v148, 2);
  v128 = *(this + 120);
  if (v128 <= *(this + 121))
  {
    v129 = 0;
  }

  else
  {
    v129 = v127 * v128;
  }

  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 433);
  if (v149)
  {
    v131 = v148;
  }

  else
  {
    v131 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v130, v16, &unk_262891736, v17, v17, v131, v125, v126, v129);
  DgnString::~DgnString(&v148);
  *a4 += v125;
  *a5 += v126;
  *a6 += v129;
  v132 = sizeObject(this + 488, 0);
  v133 = sizeObject(this + 488, 1);
  v134 = sizeObject(this + 488, 3);
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 442);
  if (v149)
  {
    v136 = v148;
  }

  else
  {
    v136 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v16, &unk_262891736, v17, v17, v136, v132, v133, v134);
  DgnString::~DgnString(&v148);
  *a4 += v132;
  *a5 += v133;
  *a6 += v134;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 444);
  if (v149)
  {
    v138 = v148;
  }

  else
  {
    v138 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v137, v16, &unk_262891736, v17, v17, v138, 1, 1, 0);
  DgnString::~DgnString(&v148);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 446);
  if (v149)
  {
    v140 = v148;
  }

  else
  {
    v140 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v139, v16, &unk_262891736, v17, v17, v140, 1, 1, 0);
  DgnString::~DgnString(&v148);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 447);
  if (v149)
  {
    v142 = v148;
  }

  else
  {
    v142 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v141, v16, &unk_262891736, v17, v17, v142, 1, 1, 0);
  DgnString::~DgnString(&v148);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 448);
  if (v149)
  {
    v144 = v148;
  }

  else
  {
    v144 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v16, &unk_262891736, v17, v17, v144, 1, 1, 0);
  DgnString::~DgnString(&v148);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v148, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 449);
  if (v149)
  {
    v146 = v148;
  }

  else
  {
    v146 = &unk_262891736;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v147, &unk_262891736, (35 - v147), (35 - v147), v146, *a4, *a5, *a6);
  DgnString::~DgnString(&v148);
}

void sub_2628453A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void PelScoreCache::beginPelScoreCacheSyncRecog(PelScoreCache *this, char a2, char a3, void (*a4)(const PelScorer *, unsigned __int16, unsigned int, unsigned __int16 *, unsigned int *), int (*a5)(const PelScorer *, unsigned __int16, const unsigned __int16 *, unsigned int *), int (*a6)(const PelScorer *, unsigned __int16, unsigned int *), double a7)
{
  *(this + 493) = a2;
  *(this + 494) = a3;
  if (a7 == 0.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/scrcache.cpp", 475, "pel/scrcache", 1, "%s", &unk_262891736);
  }

  *(this + 14) = vcvtd_n_s64_f64(a7, 0x10uLL);
  if (a4)
  {
    v12 = a5 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12;
  *(this + 492) = v13;
  PelScoreCache::cleanPelScoreCache(this, 0);
  if (*(this + 494) == 1)
  {
    v14 = *(*(*this + 16) + 144);
    v15 = *(this + 18);
    if (v14)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      *(this + 8) = MemChunkAlloc(2 * v14, 0);
      *(this + 18) = v14;
      v15 = v14;
    }

    if (v15 >= 1)
    {
      memset(*(this + 8), 78, (2 * v15));
    }

    if (*(this + 492) == 1)
    {
      v17 = *(*(*this + 16) + 140);
      v18 = *(this + 38);
      if (v17)
      {
        v19 = v18 == 0;
      }

      else
      {
        v19 = 0;
      }

      if (v19)
      {
        *(this + 18) = MemChunkAlloc(4 * v17, 0);
        *(this + 38) = v17;
        v18 = v17;
      }

      if (v18 >= 1)
      {
        memset(*(this + 18), 255, 4 * v18);
      }
    }
  }

  *(this + 8) = 1;
  *(this + 4) = a4;
  *(this + 5) = a5;
  *(this + 6) = a6;
}

double PelScoreCache::cleanPelScoreCache(PelScoreCache *this, int a2)
{
  *(this + 15) = -16;
  if (*(this + 494) == 1)
  {
    v4 = *(this + 8);
    if (v4)
    {
      MemChunkFree(v4, 0);
      *(this + 8) = 0;
    }

    *(this + 18) = 0;
    v5 = *(this + 10);
    if (v5)
    {
      MemChunkFree(v5, 0);
      *(this + 10) = 0;
    }

    *(this + 11) = 0;
    v6 = *(this + 12);
    if (v6)
    {
      MemChunkFree(v6, 0);
      *(this + 12) = 0;
    }

    *(this + 13) = 0;
    if (*(this + 492) == 1)
    {
      v7 = *(this + 18);
      if (v7)
      {
        MemChunkFree(v7, 0);
        *(this + 18) = 0;
      }

      *(this + 38) = 0;
      v8 = *(this + 20);
      if (v8)
      {
        MemChunkFree(v8, 0);
        *(this + 20) = 0;
      }

      *(this + 21) = 0;
      v9 = *(this + 22);
      if (v9)
      {
        MemChunkFree(v9, 0);
        *(this + 22) = 0;
      }

      *(this + 23) = 0;
      v10 = *(this + 24);
      if (v10)
      {
        MemChunkFree(v10, 0);
        *(this + 24) = 0;
      }

      *(this + 25) = 0;
    }

    if (a2)
    {
      v11 = *(this + 120);
      v12 = *(this + 30);
      if (v12 <= v11)
      {
        if (v12 < v11)
        {
          v15 = v11 - v12;
          v16 = 16 * v12;
          do
          {
            v17 = (*(this + 14) + v16);
            *v17 = 0;
            v17[1] = 0;
            v16 += 16;
            --v15;
          }

          while (v15);
        }
      }

      else if (v12 > v11)
      {
        v13 = v12;
        v14 = 16 * v12 - 16;
        do
        {
          --v13;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 14) + v14);
          v14 -= 16;
        }

        while (v13 > v11);
      }

      *(this + 30) = v11;
      v18 = *(this + 34);
      if (v18 <= v11)
      {
        if (v18 < v11)
        {
          v21 = v11 - v18;
          v22 = 16 * v18;
          do
          {
            v23 = (*(this + 16) + v22);
            *v23 = 0;
            v23[1] = 0;
            v22 += 16;
            --v21;
          }

          while (v21);
        }
      }

      else if (v18 > v11)
      {
        v19 = v18;
        v20 = 16 * v18 - 16;
        do
        {
          --v19;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 16) + v20);
          v20 -= 16;
        }

        while (v19 > v11);
      }

      *(this + 34) = v11;
    }

    else
    {
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 112);
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 128);
    }

    if (*(this + 492) == 1)
    {
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 208);
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 224);
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 240);
    }

    v24 = *(this + 35);
    if (v24)
    {
      MemChunkFree(v24, 0);
      *(this + 35) = 0;
    }

    *(this + 36) = 0;
    v25 = *(this + 33);
    if (v25)
    {
      MemChunkFree(v25, 0);
      *(this + 33) = 0;
    }

    *(this + 34) = 0;
  }

  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  v26 = *(this + 59);
  if (v26)
  {
    MemChunkFree(v26, 0);
    *(this + 59) = 0;
  }

  *(this + 60) = 0;
  result = 0.0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  return result;
}

uint64_t PelScoreCache::endPelScoreCacheSyncRecog(uint64_t this)
{
  *(this + 493) = 256;
  *(this + 8) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0xFFFFFFF000000000;
  return this;
}

uint64_t *PelScoreCache::beginPelScoreCacheFrame(uint64_t *this, unsigned int a2, char a3)
{
  v4 = this;
  *(this + 495) = a3;
  if (*(this + 494) == 1)
  {
    for (i = *(this + 72); i <= a2; ++i)
    {
      v6 = *(v4 + 120);
      if (v6 == *(v4 + 124))
      {
        this = DgnArray<DgnPrimArray<double>>::reallocElts(v4 + 112, 1, 1);
        v6 = *(v4 + 120);
      }

      v7 = (*(v4 + 112) + 16 * v6);
      *v7 = 0;
      v7[1] = 0;
      ++*(v4 + 120);
      v8 = *(v4 + 136);
      if (v8 == *(v4 + 140))
      {
        this = DgnArray<DgnPrimArray<double>>::reallocElts(v4 + 128, 1, 1);
        v8 = *(v4 + 136);
      }

      v9 = (*(v4 + 128) + 16 * v8);
      *v9 = 0;
      v9[1] = 0;
      ++*(v4 + 136);
      if (*(v4 + 492) == 1)
      {
        v10 = *(v4 + 216);
        if (v10 == *(v4 + 220))
        {
          this = DgnArray<DgnPrimArray<double>>::reallocElts(v4 + 208, 1, 1);
          v10 = *(v4 + 216);
        }

        v11 = (*(v4 + 208) + 16 * v10);
        *v11 = 0;
        v11[1] = 0;
        ++*(v4 + 216);
        v12 = *(v4 + 232);
        if (v12 == *(v4 + 236))
        {
          this = DgnArray<DgnPrimArray<double>>::reallocElts(v4 + 224, 1, 1);
          v12 = *(v4 + 232);
        }

        v13 = (*(v4 + 224) + 16 * v12);
        *v13 = 0;
        v13[1] = 0;
        ++*(v4 + 232);
        v14 = *(v4 + 248);
        if (v14 == *(v4 + 252))
        {
          this = DgnArray<DgnPrimArray<double>>::reallocElts(v4 + 240, 1, 1);
          v14 = *(v4 + 248);
        }

        v15 = (*(v4 + 240) + 16 * v14);
        *v15 = 0;
        v15[1] = 0;
        ++*(v4 + 248);
      }

      v16 = *(v4 + 272);
      v17 = *(v4 + 288);
      if (v17 == *(v4 + 292))
      {
        this = DgnPrimArray<unsigned int>::reallocElts(v4 + 280, 1, 1);
        v17 = *(v4 + 288);
      }

      *(*(v4 + 280) + 4 * v17) = v16;
      ++*(v4 + 288);
    }
  }

  for (j = *(v4 + 480); j <= a2; *(v4 + 480) = j)
  {
    if (j == *(v4 + 484))
    {
      this = DgnPrimArray<unsigned int>::reallocElts(v4 + 472, 1, 1);
      j = *(v4 + 480);
    }

    *(*(v4 + 472) + 4 * j) = 1310785535;
    j = *(v4 + 480) + 1;
  }

  *(v4 + 488) = *(*(v4 + 472) + 4 * a2);
  if (*(v4 + 494) == 1)
  {
    v19 = *(v4 + 112) + 16 * a2;
    v20 = *(v19 + 8);
    if (v20)
    {
      *(v4 + 80) = *v19;
      v21 = *(v19 + 12);
      *(v4 + 88) = v20;
      *(v4 + 92) = v21;
      *v19 = 0;
      *(v19 + 8) = 0;
      v22 = (*(v4 + 128) + 16 * a2);
      *(v4 + 96) = *v22;
      *(v4 + 104) = v22[1];
      *v22 = 0;
      v22[1] = 0;
      v23 = *(v4 + 88);
      if (v23)
      {
        v24 = *(v4 + 96);
        v25 = *(v4 + 80);
        v26 = *(v4 + 64);
        do
        {
          v28 = *v24++;
          v27 = v28;
          v29 = *v25++;
          *(v26 + 2 * v29) = v27;
          --v23;
        }

        while (v23);
      }

      if (*(v4 + 492))
      {
        v30 = (*(v4 + 208) + 16 * a2);
        *(v4 + 160) = *v30;
        *(v4 + 168) = v30[1];
        *v30 = 0;
        v30[1] = 0;
        v31 = (*(v4 + 224) + 16 * a2);
        *(v4 + 176) = *v31;
        *(v4 + 184) = v31[1];
        *v31 = 0;
        v31[1] = 0;
        v32 = (*(v4 + 240) + 16 * a2);
        *(v4 + 192) = *v32;
        *(v4 + 200) = v32[1];
        *v32 = 0;
        v32[1] = 0;
        if (*(v4 + 168))
        {
          v33 = 0;
          v34 = *(v4 + 176);
          v35 = *(v4 + 160);
          v36 = *(v4 + 144);
          do
          {
            *(v36 + 4 * *(v35 + 2 * v33)) = *(v34 + 4 * v33);
            ++v33;
          }

          while (v33 < *(v4 + 168));
        }
      }
    }
  }

  *(v4 + 256) = 0;
  *(v4 + 60) = a2;
  if (*(gParDiagnosticScoreAllPels + 41) == 1 && *(v4 + 494) == 1)
  {

    return PelScoreCache::scoreAllPels(v4);
  }

  return this;
}

uint64_t PelScoreCache::scoreAllPels(uint64_t this)
{
  v1 = this;
  v2 = *(this + 72);
  if (*(this + 492))
  {
    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = v3;
        if (*(*(v1 + 64) + 2 * v3) == 20046)
        {
          v5 = *(**(v1 + 24) + 2 * v3);
          if (*(*(v1 + 144) + 4 * v5) == -1)
          {
            PelScoreCache::computeGenScores(v1, *(**(v1 + 24) + 2 * v3));
          }

          this = PelScoreCache::computePelScoreFromGenScores(v1, v4, v5);
          v2 = *(v1 + 72);
        }

        v3 = v4 + 1;
      }

      while (v2 > (v4 + 1));
    }
  }

  else if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      if (*(*(v1 + 64) + 2 * i) == 20046)
      {
        this = PelScoreCache::computePelScore(v1, i);
        v2 = *(v1 + 72);
      }
    }
  }

  return this;
}

double PelScoreCache::endPelScoreCacheFrame(PelScoreCache *this, int a2, PelStats *a3)
{
  *(this + 64) = 20000;
  *(this + 495) = 0;
  *(*(this + 59) + 4 * *(this + 15)) = *(this + 122);
  *(this + 122) = 1310785535;
  if (*(this + 494) == 1)
  {
    PelScoreCache::setPelsNotScored(this);
    v5 = *(this + 15);
    v6 = (*(this + 14) + 16 * v5);
    *v6 = *(this + 10);
    v6[1] = *(this + 11);
    *(this + 10) = 0;
    *(this + 11) = 0;
    v7 = (*(this + 16) + 16 * v5);
    *v7 = *(this + 12);
    v7[1] = *(this + 13);
    *(this + 12) = 0;
    *(this + 13) = 0;
    PelScoreCache::setGensNotScored(this);
    if (*(this + 492) == 1)
    {
      v8 = *(this + 15);
      v9 = (*(this + 26) + 16 * v8);
      *v9 = *(this + 20);
      v9[1] = *(this + 21);
      *(this + 20) = 0;
      *(this + 21) = 0;
      v10 = (*(this + 28) + 16 * v8);
      *v10 = *(this + 22);
      v10[1] = *(this + 23);
      *(this + 22) = 0;
      *(this + 23) = 0;
      v11 = (*(this + 30) + 16 * v8);
      *v11 = *(this + 24);
      v11[1] = *(this + 25);
      *(this + 24) = 0;
      *(this + 25) = 0;
    }
  }

  v12 = (this + 296);
  PelStats::operator+=(a3, v12);
  result = 0.0;
  v12[9] = 0u;
  v12[10] = 0u;
  v12[7] = 0u;
  v12[8] = 0u;
  v12[5] = 0u;
  v12[6] = 0u;
  v12[3] = 0u;
  v12[4] = 0u;
  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = 0u;
  return result;
}

void **PelScoreCache::setPelsNotScored(void **this)
{
  v1 = *(this + 22);
  v2 = *(this + 18);
  if (3 * v1 >= v2)
  {
    if (v2 >= 1)
    {
      return memset(this[8], 78, 2 * v2);
    }
  }

  else if (v1 >= 1)
  {
    v3 = this[8];
    v4 = v1 + 1;
    v5 = (this[10] + 2 * v1 - 2);
    do
    {
      v6 = *v5--;
      v3[v6] = 20046;
      --v4;
    }

    while (v4 > 1);
  }

  return this;
}

void **PelScoreCache::setGensNotScored(void **this)
{
  v1 = *(this + 42);
  v2 = *(this + 38);
  if (3 * v1 >= v2)
  {
    if (v2 >= 1)
    {
      return memset(this[18], 255, 4 * v2);
    }
  }

  else if (v1 >= 1)
  {
    v3 = this[18];
    v4 = v1 + 1;
    v5 = (this[20] + 2 * v1 - 2);
    do
    {
      v6 = *v5--;
      v3[v6] = -1;
      --v4;
    }

    while (v4 > 1);
  }

  return this;
}

uint64_t *PelScoreCache::addCacheClient(uint64_t *this, const void *a2)
{
  if (*(this + 494) == 1)
  {
    v3 = this;
    v4 = *(this + 68);
    if (v4 == *(this + 69))
    {
      this = DgnPrimArray<unsigned long long>::reallocElts((this + 33), 1, 1);
      v4 = *(v3 + 272);
    }

    *(*(v3 + 264) + 8 * v4) = a2;
    *(v3 + 272) = v4 + 1;
    v5 = *(v3 + 288);
    if (v5)
    {
      v6 = *(v3 + 280);
      do
      {
        ++*v6++;
        --v5;
      }

      while (v5);
    }
  }

  return this;
}

double PelScoreCache::removeCacheClient(PelScoreCache *this, const void *a2)
{
  if (*(this + 494) == 1)
  {
    v2 = *(this + 68);
    if (!v2)
    {
      return PelScoreCache::cleanPelScoreCache(this, *(this + 493));
    }

    v3 = *(this + 68);
    for (i = *(this + 33); *i != a2; ++i)
    {
      if (!--v3)
      {
        return result;
      }
    }

    v5 = v2 - 1;
    *i = *(*(this + 33) + 8 * v5);
    *(this + 68) = v5;
    if (!v5)
    {
      return PelScoreCache::cleanPelScoreCache(this, *(this + 493));
    }
  }

  return result;
}

uint64_t PelScoreCache::removeCacheClientOfFrame(uint64_t this, unsigned int a2, void *a3)
{
  if (*(this + 494) == 1)
  {
    v3 = this;
    v4 = *(this + 280);
    v5 = *(v4 + 4 * a2) - 1;
    *(v4 + 4 * a2) = v5;
    if (!v5 && (*(this + 493) & 1) == 0)
    {
      v6 = a2;
      v7 = *(this + 112) + 16 * a2;
      if (*v7)
      {
        MemChunkFree(*v7, 0);
        *v7 = 0;
      }

      *(v7 + 8) = 0;
      v8 = (*(v3 + 128) + 16 * v6);
      this = *v8;
      if (*v8)
      {
        this = MemChunkFree(this, 0);
        *v8 = 0;
      }

      v8[1] = 0;
      if (*(v3 + 492) == 1)
      {
        v9 = *(v3 + 208) + 16 * v6;
        if (*v9)
        {
          MemChunkFree(*v9, 0);
          *v9 = 0;
        }

        *(v9 + 8) = 0;
        v10 = *(v3 + 224) + 16 * v6;
        if (*v10)
        {
          MemChunkFree(*v10, 0);
          *v10 = 0;
        }

        *(v10 + 8) = 0;
        v11 = (*(v3 + 240) + 16 * v6);
        this = *v11;
        if (*v11)
        {
          this = MemChunkFree(this, 0);
          *v11 = 0;
        }

        v11[1] = 0;
      }
    }
  }

  return this;
}

uint64_t PelScoreCache::removeCacheClientOfFramesFromTimeOn(uint64_t this, signed int a2, void *a3, void *a4)
{
  v4 = a2;
  v5 = this;
  if (a3)
  {
    if (*(this + 288) > a2)
    {
      do
      {
        this = PelScoreCache::removeCacheClientOfFrame(v5, v4++, a3);
      }

      while (v4 < *(v5 + 288));
    }
  }

  else if ((a2 & 0x80000000) == 0)
  {
    do
    {
      this = PelScoreCache::removeCacheClientOfFrame(v5, v4--, a3);
    }

    while (v4 != -1);
  }

  return this;
}

uint64_t PelScoreCache::computeGenScores(PelScoreCache *this, uint64_t a2)
{
  v4 = *this;
  if (*(v4 + 284) >= 2u)
  {
    (*(*v4 + 96))(v4, a2, this + 296);
    v4 = *this;
  }

  v5 = (*(*(*(v4 + 16) + 272) + 4 * a2 + 4) - *(*(*(v4 + 16) + 272) + 4 * a2));
  v6 = *(this + 50);
  *(*(this + 18) + 4 * a2) = v6;
  v8 = *(this + 42);
  v7 = *(this + 43);
  if (v8 == v7 || v8 == *(this + 47))
  {
    v9 = 4 * v8 / 3u + 32;
    if (v9 > v7)
    {
      DgnPrimArray<short>::reallocElts(this + 160, v9 - v7, 0);
    }

    v10 = *(this + 47);
    if (v9 > v10)
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 176, v9 - v10, 0);
    }
  }

  v11 = *(this + 42);
  *(*(this + 20) + 2 * v11) = a2;
  *(this + 42) = v11 + 1;
  *(*(this + 22) + 4 * (*(this + 46))++) = v6;
  v13 = *(this + 50);
  v12 = *(this + 51);
  v14 = v13 + v5;
  v15 = v5 + 4 * v13 / 3u + 32;
  if (v14 > v12 && v15 > v12)
  {
    DgnPrimArray<short>::reallocElts(this + 192, v15 - v12, 0);
    v14 = *(this + 50) + v5;
  }

  *(this + 50) = v14;
  v18 = 0;
  result = (*(this + 4))(*this, a2, v5, *(this + 24) + 2 * v6, &v18);
  ++*(this + 75);
  *(this + 38) += v18;
  return result;
}

uint64_t PelScoreCache::computePelScoreFromGenScores(PelScoreCache *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *this;
  if (*(v6 + 284) >= 2u && *(*(v6 + 16) + 536))
  {
    v7 = *(*(v6 + 296) + 4 * a3);
    if (*(*(v6 + 400) + v7) == 1)
    {
      *(v6 + 640) = *(*(v6 + 624) + 2 * v7);
    }

    else
    {
      (*(*v6 + 96))(v6, a3, this + 296);
      v6 = *this;
    }
  }

  v16 = 0;
  v8 = *(this + 14) * (*(this + 5))(v6, a2, *(this + 24) + 2 * *(*(this + 18) + 4 * v3), &v16);
  *(*(this + 8) + 2 * a2) = HIWORD(v8);
  v10 = *(this + 22);
  v9 = *(this + 23);
  if (v10 == v9 || v10 == *(this + 27))
  {
    v11 = 4 * v10 / 3u + 32;
    if (v11 > v9)
    {
      DgnPrimArray<short>::reallocElts(this + 80, v11 - v9, 0);
    }

    v12 = *(this + 27);
    if (v11 > v12)
    {
      DgnPrimArray<short>::reallocElts(this + 96, v11 - v12, 0);
    }
  }

  v13 = *(this + 22);
  *(*(this + 10) + 2 * v13) = a2;
  *(this + 22) = v13 + 1;
  v14 = *(this + 26);
  *(*(this + 12) + 2 * v14) = HIWORD(v8);
  *(this + 26) = v14 + 1;
  if (v8 >> 16 < *(this + 245))
  {
    *(this + 122) = v8 & 0xFFFF0000 | a2;
  }

  ++*(this + 74);
  return (v8 >> 16);
}

uint64_t PelScoreCache::computePelScore(PelScoreCache *this, uint64_t a2)
{
  v4 = *this;
  if (*(v4 + 71) >= 2u)
  {
    (*(*v4 + 96))(v4, *(**(this + 3) + 2 * a2), this + 296);
    v4 = *this;
  }

  v9 = 0;
  v5 = *(this + 14) * (*(this + 6))(v4, a2, &v9);
  *(*(this + 8) + 2 * a2) = HIWORD(v5);
  v6 = *(this + 22);
  if (v6 == *(this + 23))
  {
    DgnPrimArray<short>::reallocElts(this + 80, 1, 1);
    v6 = *(this + 22);
  }

  *(*(this + 10) + 2 * v6) = a2;
  *(this + 22) = v6 + 1;
  v7 = *(this + 26);
  if (v7 == *(this + 27))
  {
    DgnPrimArray<short>::reallocElts(this + 96, 1, 1);
    v7 = *(this + 26);
  }

  *(*(this + 12) + 2 * v7) = HIWORD(v5);
  *(this + 26) = v7 + 1;
  if (v5 >> 16 < *(this + 245))
  {
    *(this + 122) = v5 & 0xFFFF0000 | a2;
  }

  *(this + 37) = vadd_s32(*(this + 296), 0x100000001);
  *(this + 38) += v9;
  return (v5 >> 16);
}

uint64_t PelScoreCache::computePelScoreNoCache(PelScoreCache *this, uint64_t a2)
{
  v2 = a2;
  v6 = 0;
  v4 = *(this + 14) * (*(this + 6))(*this, a2, &v6);
  result = (v4 >> 16);
  if (result < *(this + 245))
  {
    *(this + 122) = v4 & 0xFFFF0000 | v2;
  }

  return result;
}

uint64_t *PelScoreCache::makeBestStats(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 30);
  v3 = *(this + 121);
  if (v2 > v3)
  {
    this = DgnPrimArray<unsigned int>::reallocElts((this + 59), v2 - v3, 0);
  }

  *(v1 + 480) = v2;
  if (v2 >= 1)
  {
    do
    {
      v4 = v2 - 1;
      v5 = *(v1 + 112) + 16 * (v2 - 1);
      v6 = *(v5 + 8);
      if (v6 < 1)
      {
        v12 = 1310785535;
      }

      else
      {
        v7 = *v5;
        v8 = v6 - 1;
        v9 = -1;
        v10 = 20000;
        do
        {
          if (*(*(*(v1 + 128) + 16 * v4) + 2 * v8) < v10)
          {
            v9 = *(v7 + 2 * v8);
            v10 = *(*(*(v1 + 128) + 16 * v4) + 2 * v8);
          }

          v11 = v8-- + 1;
        }

        while (v11 > 1);
        v12 = v9 | (v10 << 16);
      }

      *(*(v1 + 472) + 4 * v4) = v12;
    }

    while (v2-- > 1);
  }

  return this;
}

uint64_t *PelScoreCache::makePelScoreCacheData(PelScoreCache *this)
{
  v2 = MemChunkAlloc(0x18uLL, 0);
  PelScoreCacheData::PelScoreCacheData(v2);
  *v3 = *(*(*this + 16) + 144);
  v4 = *(this + 30);
  v5 = v3[5];
  if (v4 > v5)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts((v2 + 1), v4 - v5, 0);
  }

  v6 = *(v2 + 4);
  if (v6 <= v4)
  {
    if (v6 < v4)
    {
      v9 = v4 - v6;
      v10 = 16 * v6;
      do
      {
        v11 = (v2[1] + v10);
        *v11 = 0;
        v11[1] = 0;
        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  else if (v6 > v4)
  {
    v7 = v6;
    v8 = 16 * v6 - 16;
    do
    {
      --v7;
      DgnPrimArray<unsigned int>::~DgnPrimArray(v2[1] + v8);
      v8 -= 16;
    }

    while (v7 > v4);
  }

  *(v2 + 4) = v4;
  if (*(this + 30))
  {
    v12 = 0;
    v13 = *(this + 14);
    do
    {
      v14 = v2[1] + 16 * v12;
      v15 = *(v13 + 16 * v12 + 8);
      v16 = *(v14 + 12);
      if (v15 > v16)
      {
        DgnPrimArray<unsigned int>::reallocElts(v2[1] + 16 * v12, v15 - v16, 0);
        v13 = *(this + 14);
      }

      *(v14 + 8) = v15;
      v17 = v13 + 16 * v12;
      if (*(v17 + 8))
      {
        v18 = 0;
        do
        {
          *(*(v2[1] + 16 * v12) + 4 * v18) = *(*v17 + 2 * v18) | (*(*(*(this + 16) + 16 * v12) + 2 * v18) << 16);
          ++v18;
          v13 = *(this + 14);
          v17 = v13 + 16 * v12;
        }

        while (v18 < *(v17 + 8));
      }

      ++v12;
    }

    while (v12 < *(this + 30));
    LODWORD(v4) = *(v2 + 4);
  }

  if (v4 >= 1)
  {
    v19 = v4 + 1;
    v20 = 16 * v4;
    do
    {
      mrec_qsort_r<PelScoreCache>(*(v2[1] + v20 - 16), *(v2[1] + v20 - 8), 4, 0);
      --v19;
      v20 -= 16;
    }

    while (v19 > 1);
  }

  return v2;
}

unsigned __int16 *mrec_qsort_r<PelScoreCache>(unsigned __int16 *result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = -a3;
  v6 = a3 != 8;
  v7 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_157:
    if ((a2 * a3) > a3)
    {
      v92 = result + a2 * a3;
      v93 = result + a3;
      v94 = result;
      do
      {
        if (v93 > result)
        {
          v95 = v94;
          v96 = v93;
          do
          {
            v97 = v96;
            v96 = (v96 + v5);
            if (*v96 <= *v97)
            {
              break;
            }

            if (v8)
            {
              v98 = 0;
              if (v7)
              {
                v99 = v96;
                do
                {
                  v100 = *&v97[4 * v98];
                  *&v97[4 * v98] = *v99;
                  *v99 = v100;
                  v99 += 4;
                  ++v98;
                }

                while (a3 >> 3 != v98);
              }

              else
              {
                v102 = a3;
                do
                {
                  v103 = *(v97 + v98);
                  *(v97 + v98) = *(v95 + v98);
                  *(v95 + v98++) = v103;
                  --v102;
                }

                while (v102);
              }
            }

            else
            {
              v101 = *v97;
              *v97 = *v96;
              *v96 = v101;
            }

            v95 = (v95 + v5);
          }

          while (v96 > result);
        }

        v93 += a3;
        v94 = (v94 + a3);
      }

      while (v93 < v92);
    }
  }

  else
  {
    v10 = a3 >> 3;
    while (1)
    {
      v11 = result + (a2 >> 1) * a3;
      if (a2 != 7)
      {
        v12 = (result + (a2 - 1) * a3);
        if (a2 <= 0x28)
        {
          v24 = *result;
          v35 = *v11;
          v15 = result;
          v44 = *v12;
        }

        else
        {
          v13 = (a2 >> 3) * a3;
          v14 = 2 * v13;
          v15 = &result[v13];
          v16 = *result;
          v17 = *(result + v13);
          v18 = *v15;
          if (v16 >= v18)
          {
            v19 = *v15;
          }

          else
          {
            v19 = *result;
          }

          if (v16 >= v18)
          {
            v20 = &result[v13];
          }

          else
          {
            v20 = result;
          }

          if (v17 > v18)
          {
            v19 = *(result + v13);
            v20 = (result + v13);
          }

          if (v16 <= v18)
          {
            v21 = *v15;
          }

          else
          {
            v21 = *result;
          }

          if (v16 >= v18)
          {
            v15 = result;
          }

          v22 = v17 >= v18;
          if (v17 >= v18)
          {
            v23 = v21;
          }

          else
          {
            v23 = *(result + v13);
          }

          if (!v22)
          {
            v15 = (result + v13);
          }

          if (v16 < v17)
          {
            v24 = v23;
          }

          else
          {
            v24 = v19;
          }

          if (v16 >= v17)
          {
            v15 = v20;
          }

          v25 = -v13;
          v26 = &v11[-v13];
          v27 = &v11[v13];
          v28 = *v26;
          v29 = *v11;
          v30 = *v27;
          if (v28 >= v30)
          {
            v31 = *v27;
          }

          else
          {
            v31 = *v26;
          }

          if (v28 >= v30)
          {
            v32 = v27;
          }

          else
          {
            v32 = v26;
          }

          if (v29 > v30)
          {
            v31 = *v11;
            v32 = result + (a2 >> 1) * a3;
          }

          if (v28 <= v30)
          {
            v33 = *v27;
          }

          else
          {
            v33 = *v26;
          }

          if (v28 >= v30)
          {
            v27 = v26;
          }

          if (v29 >= v30)
          {
            v34 = v33;
          }

          else
          {
            v34 = *v11;
          }

          if (v29 >= v30)
          {
            v11 = v27;
          }

          if (v28 < v29)
          {
            v35 = v34;
          }

          else
          {
            v35 = v31;
          }

          if (v28 >= v29)
          {
            v11 = v32;
          }

          v36 = &v12[v14 / 0xFFFFFFFFFFFFFFFELL];
          v37 = (v12 + v25);
          v38 = *v36;
          v39 = *v37;
          v40 = *v12;
          if (v38 >= v40)
          {
            v41 = *v12;
          }

          else
          {
            v41 = *v36;
          }

          if (v38 >= v40)
          {
            v42 = (result + (a2 - 1) * a3);
          }

          else
          {
            v42 = v36;
          }

          if (v39 > v40)
          {
            v41 = *v37;
            v42 = v37;
          }

          if (v38 <= v40)
          {
            v43 = *v12;
          }

          else
          {
            v43 = *v36;
          }

          if (v38 >= v40)
          {
            v12 = v36;
          }

          if (v39 >= v40)
          {
            v44 = v43;
          }

          else
          {
            v44 = *v37;
          }

          if (v39 < v40)
          {
            v12 = v37;
          }

          if (v38 >= v39)
          {
            v44 = v41;
            v12 = v42;
          }
        }

        if (v24 >= v44)
        {
          v45 = v12;
        }

        else
        {
          v45 = v15;
        }

        if (v35 > v44)
        {
          v45 = v11;
        }

        if (v24 >= v44)
        {
          v12 = v15;
        }

        if (v35 >= v44)
        {
          v11 = v12;
        }

        if (v24 >= v35)
        {
          v11 = v45;
        }
      }

      if (v8)
      {
        if (v7)
        {
          v46 = result;
          v47 = a3 >> 3;
          do
          {
            v48 = *v46;
            *v46 = *v11;
            v46 += 4;
            *v11 = v48;
            v11 += 8;
            --v47;
          }

          while (v47);
        }

        else
        {
          v50 = a3;
          v51 = result;
          do
          {
            v52 = *v51;
            *v51 = *v11;
            v51 = (v51 + 1);
            *v11++ = v52;
            --v50;
          }

          while (v50);
        }
      }

      else
      {
        v49 = *result;
        *result = *v11;
        *v11 = v49;
      }

      v53 = 0;
      v54 = result + a3;
      v55 = result + (a2 - 1) * a3;
      v56 = v55;
      v57 = result + a3;
      v58 = (result + a3);
LABEL_96:
      while (v57 <= v56)
      {
        v59 = *v57;
        v60 = *result;
        if (v59 > v60)
        {
          break;
        }

        if (v59 == v60)
        {
          if (v8)
          {
            v61 = 0;
            if (v7)
            {
              do
              {
                v62 = v58[v61];
                v58[v61] = *&v57[8 * v61];
                *&v57[8 * v61++] = v62;
              }

              while (v10 != v61);
            }

            else
            {
              do
              {
                v63 = *(v58 + v61);
                *(v58 + v61) = v57[v61];
                v57[v61++] = v63;
              }

              while (a3 != v61);
            }
          }

          else
          {
            v73 = *v58;
            *v58 = *v57;
            *v57 = v73;
          }

          v58 = (v58 + a3);
          v53 = 1;
        }

        v57 += a3;
      }

      while (v57 <= v56)
      {
        v68 = *v56;
        v69 = *result;
        if (v68 < v69)
        {
          if (v8)
          {
            v70 = 0;
            if (v7)
            {
              do
              {
                v71 = *&v57[8 * v70];
                *&v57[8 * v70] = *&v56[8 * v70];
                *&v56[8 * v70++] = v71;
              }

              while (v10 != v70);
            }

            else
            {
              do
              {
                v72 = v57[v70];
                v57[v70] = v56[v70];
                v56[v70++] = v72;
              }

              while (a3 != v70);
            }
          }

          else
          {
            v74 = *v57;
            *v57 = *v56;
            *v56 = v74;
          }

          v57 += a3;
          v56 += v5;
          v53 = 1;
          goto LABEL_96;
        }

        if (v68 == v69)
        {
          if (v8)
          {
            v64 = 0;
            if (v7)
            {
              do
              {
                v65 = *&v56[8 * v64];
                *&v56[8 * v64] = *&v55[8 * v64];
                *&v55[8 * v64++] = v65;
              }

              while (v10 != v64);
            }

            else
            {
              do
              {
                v66 = v56[v64];
                v56[v64] = v55[v64];
                v55[v64++] = v66;
              }

              while (a3 != v64);
            }
          }

          else
          {
            v67 = *v56;
            *v56 = *v55;
            *v55 = v67;
          }

          v55 += v5;
          v53 = 1;
        }

        v56 += v5;
      }

      v75 = result + a2 * a3;
      if (!v53)
      {
        break;
      }

      v76 = v57 - v58;
      if (v58 - result >= v57 - v58)
      {
        v77 = v57 - v58;
      }

      else
      {
        v77 = v58 - result;
      }

      if (v77)
      {
        if (v7)
        {
          v78 = &v57[-v77];
          v79 = v77 >> 3;
          v80 = result;
          do
          {
            v81 = *v80;
            *v80 = *v78;
            v80 += 4;
            *v78 = v81;
            v78 += 8;
            --v79;
          }

          while (v79);
        }

        else
        {
          v82 = -v77;
          v83 = result;
          do
          {
            v84 = *v83;
            *v83 = v57[v82];
            v83 = (v83 + 1);
            v57[v82] = v84;
            v22 = __CFADD__(v82++, 1);
          }

          while (!v22);
        }
      }

      v85 = v55 - v56;
      v86 = v75 - &v55[a3];
      if (v55 - v56 < v86)
      {
        v86 = v55 - v56;
      }

      if (v86)
      {
        if (v7)
        {
          v87 = &v75[-v86];
          v88 = v86 >> 3;
          do
          {
            v89 = *v57;
            *v57 = *v87;
            v57 += 8;
            *v87 = v89;
            v87 += 8;
            --v88;
          }

          while (v88);
        }

        else
        {
          v90 = -v86;
          do
          {
            v91 = *v57;
            *v57++ = v75[v90];
            v75[v90] = v91;
            v22 = __CFADD__(v90++, 1);
          }

          while (!v22);
        }
      }

      if (v76 > a3)
      {
        result = mrec_qsort_r<PelScoreCache>(result, v76 / a3, a3, a4);
      }

      if (v85 <= a3)
      {
        return result;
      }

      result = &v75[-v85];
      a2 = v85 / a3;
      v7 = (((v75 - v85) | a3) & 7) == 0;
      if ((((v75 - v85) | a3) & 7) != 0)
      {
        v8 = 2;
      }

      else
      {
        v8 = v6;
      }

      if (a2 < 7)
      {
        goto LABEL_157;
      }
    }

    if ((a2 * a3) > a3)
    {
      v104 = result;
      do
      {
        if (v54 > result)
        {
          v105 = v104;
          v106 = v54;
          do
          {
            v107 = v106;
            v106 = (v106 + v5);
            if (*v106 <= *v107)
            {
              break;
            }

            if (v8)
            {
              v108 = 0;
              if (v7)
              {
                v109 = v106;
                do
                {
                  v110 = *&v107[4 * v108];
                  *&v107[4 * v108] = *v109;
                  *v109 = v110;
                  v109 += 4;
                  ++v108;
                }

                while (v10 != v108);
              }

              else
              {
                v112 = a3;
                do
                {
                  v113 = *(v107 + v108);
                  *(v107 + v108) = *(v105 + v108);
                  *(v105 + v108++) = v113;
                  --v112;
                }

                while (v112);
              }
            }

            else
            {
              v111 = *v107;
              *v107 = *v106;
              *v106 = v111;
            }

            v105 = (v105 + v5);
          }

          while (v106 > result);
        }

        v54 += a3;
        v104 = (v104 + a3);
      }

      while (v54 < v75);
    }
  }

  return result;
}

uint64_t *PelScoreCache::setCacheData(uint64_t *this, const PelScoreCacheData *a2)
{
  if (a2)
  {
    v3 = this;
    *(this + 15) = -16;
    *(this + 22) = 0;
    *(this + 26) = 0;
    if (*(this + 492) == 1)
    {
      *(this + 42) = 0;
    }

    *(this + 120) = 0;
    v4 = *(a2 + 4);
    v5 = *(this + 31);
    if (v4 > v5)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts((this + 14), v4 - v5, 0);
    }

    v6 = *(v3 + 120);
    if (v6 <= v4)
    {
      if (v6 < v4)
      {
        v9 = v4 - v6;
        v10 = 16 * v6;
        do
        {
          v11 = (*(v3 + 112) + v10);
          *v11 = 0;
          v11[1] = 0;
          v10 += 16;
          --v9;
        }

        while (v9);
      }
    }

    else if (v6 > v4)
    {
      v7 = v6;
      v8 = 16 * v6 - 16;
      do
      {
        --v7;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(v3 + 112) + v8);
        v8 -= 16;
      }

      while (v7 > v4);
    }

    *(v3 + 120) = v4;
    v12 = *(v3 + 140);
    if (v4 > v12)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v3 + 128, v4 - v12, 0);
    }

    v13 = *(v3 + 136);
    if (v13 <= v4)
    {
      if (v13 < v4)
      {
        v16 = v4 - v13;
        v17 = 16 * v13;
        do
        {
          v18 = (*(v3 + 128) + v17);
          *v18 = 0;
          v18[1] = 0;
          v17 += 16;
          --v16;
        }

        while (v16);
      }
    }

    else if (v13 > v4)
    {
      v14 = v13;
      v15 = 16 * v13 - 16;
      do
      {
        --v14;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(v3 + 128) + v15);
        v15 -= 16;
      }

      while (v14 > v4);
    }

    *(v3 + 136) = v4;
    if (v4)
    {
      v19 = 0;
      v20 = *(a2 + 1);
      do
      {
        v21 = *(v3 + 112) + 16 * v19;
        v22 = *(v20 + 16 * v19 + 8);
        v23 = *(v21 + 12);
        v24 = v22;
        if (v22 > v23)
        {
          DgnPrimArray<short>::reallocElts(*(v3 + 112) + 16 * v19, v22 - v23, 0);
          v20 = *(a2 + 1);
          v24 = *(v20 + 16 * v19 + 8);
        }

        *(v21 + 8) = v22;
        v25 = *(v3 + 128) + 16 * v19;
        v26 = *(v25 + 12);
        if (v24 > v26)
        {
          DgnPrimArray<short>::reallocElts(*(v3 + 128) + 16 * v19, v24 - v26, 0);
          v20 = *(a2 + 1);
        }

        *(v25 + 8) = v24;
        v27 = (v20 + 16 * v19);
        v28 = *(v27 + 2);
        if (v28)
        {
          v29 = *v27;
          v30 = *(*(v3 + 112) + 16 * v19);
          v31 = *(*(v3 + 128) + 16 * v19);
          v32 = (v29 + 2);
          do
          {
            v33 = *(v32 - 1);
            v34 = *v32;
            v32 += 2;
            *v30++ = v33;
            *v31++ = v34;
            --v28;
          }

          while (v28);
        }

        ++v19;
      }

      while (v19 != v4);
    }

    this = PelScoreCache::makeBestStats(v3);
    v35 = *(v3 + 272);
    v36 = *(v3 + 292);
    if (v4 <= v36)
    {
      *(v3 + 288) = v4;
      if (!v4)
      {
        return this;
      }
    }

    else
    {
      this = DgnPrimArray<unsigned int>::reallocElts(v3 + 280, v4 - v36, 0);
      *(v3 + 288) = v4;
    }

    v37 = (v4 + 3) & 0x1FFFFFFFCLL;
    v38 = vdupq_n_s64(v4 - 1);
    v39 = xmmword_26286BF80;
    v40 = xmmword_26286B680;
    v41 = (*(v3 + 280) + 8);
    v42 = vdupq_n_s64(4uLL);
    do
    {
      v43 = vmovn_s64(vcgeq_u64(v38, v40));
      if (vuzp1_s16(v43, *v38.i8).u8[0])
      {
        *(v41 - 2) = v35;
      }

      if (vuzp1_s16(v43, *&v38).i8[2])
      {
        *(v41 - 1) = v35;
      }

      if (vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v38, *&v39))).i32[1])
      {
        *v41 = v35;
        v41[1] = v35;
      }

      v39 = vaddq_s64(v39, v42);
      v40 = vaddq_s64(v40, v42);
      v41 += 4;
      v37 -= 4;
    }

    while (v37);
  }

  return this;
}

uint64_t BaumWelchReverseNet::reverseSil(BaumWelchReverseNet *this, unsigned int a2)
{
  if (a2 == -50331651)
  {
    v2 = -50331650;
  }

  else
  {
    v2 = a2;
  }

  if (a2 == -50331650)
  {
    return 4244635645;
  }

  else
  {
    return v2;
  }
}

void BaumWelchNet::~BaumWelchNet(BaumWelchNet *this)
{
  NodeNet::~NodeNet(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t BaumWelchNet::recordNodeData(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4 >> 25 == 126)
  {
    result = (*(*result + 360))(result);
    v4 = result;
    v5 = 0;
    v6 = xmmword_26286CC40;
    v7 = 0x3FFF;
  }

  else
  {
    v7 = *(result + 20);
    v5 = *(result + 22);
    v6 = *(result + 24);
  }

  v23 = v4;
  v24 = v7;
  v25 = v5;
  v26 = v6;
  v8 = *(v3 + 168);
  if (v8)
  {
    v9 = 0;
    v10 = 8 * v8;
    do
    {
      v11 = *(*(v3 + 160) + v9);
      if (*(v11 + 18) != 20000)
      {
        result = NodeData::NodeData(&v14, v11 + 8, &v23, (v11 + 44), *(v11 + 56), *(v11 + 80));
        v12 = *a2 + 48 * *(a2 + 8);
        v13 = v15;
        *v12 = v14;
        *(v12 + 8) = v13;
        *(v12 + 10) = v16;
        *(v12 + 11) = v17;
        *(v12 + 12) = v18;
        *(v12 + 16) = v19;
        *(v12 + 20) = v20;
        *(v12 + 36) = v21;
        *(v12 + 44) = v22;
        ++*(a2 + 8);
      }

      v9 += 8;
    }

    while (v10 != v9);
  }

  return result;
}

uint64_t BaumWelchReverseNet::recordNodeData(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6 >> 25 == 126)
  {
    result = (*(*result + 360))(result);
    v6 = result;
    v7 = 0;
    v8 = xmmword_26286CC40;
    v9 = 0x3FFF;
  }

  else
  {
    v9 = *(result + 20);
    v7 = *(result + 22);
    v8 = *(result + 24);
  }

  v28 = v6;
  v29 = v9;
  v30 = v7;
  v31 = v8;
  v10 = *(v5 + 168);
  if (v10)
  {
    v11 = 0;
    v12 = 8 * v10;
    do
    {
      v13 = *(*(v5 + 160) + v11);
      if (*(v13 + 18) != 20000)
      {
        v14 = *(v13 + 56);
        if ((v14 & 3) == 3)
        {
          v15 = 1;
        }

        else
        {
          v15 = *(v13 + 56) & 3;
        }

        if ((v14 & 3) == 1)
        {
          v16 = 3;
        }

        else
        {
          v16 = v15;
        }

        NodeData::NodeData(&v19, v13 + 8, &v28, (v13 + 44), v16 | v14 & 0xFFFC, *(v13 + 80));
        v17 = *a2 + 48 * *(a2 + 8);
        v18 = v20;
        *v17 = v19;
        *(v17 + 8) = v18;
        *(v17 + 10) = v21;
        *(v17 + 11) = v22;
        *(v17 + 12) = v23;
        *(v17 + 16) = v24;
        *(v17 + 20) = v25;
        *(v17 + 36) = v26;
        *(v17 + 44) = v27;
        ++*(a2 + 8);
        result = NodeNetNode::addAcousticsToScores(v13, a3, *(v5 + 8));
      }

      v11 += 8;
    }

    while (v12 != v11);
  }

  return result;
}

void BaumWelchReverseNet::~BaumWelchReverseNet(BaumWelchReverseNet *this)
{
  NodeNet::~NodeNet(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t BaumWelchReverseNet::pushEntryScore(BaumWelchReverseNet *this)
{
  result = (*(*this + 344))(this, 4294967280);
  v3 = *(this + 42);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v5 = *(*(this + 20) + 8 * i);
      v6 = *(v5 + 40);
      if (v6 == 1)
      {
        v7 = *(v5 + 32);
      }

      else
      {
        v8 = *(v5 + 32);
        v9 = (v6 - 1);
        v7 = *(v8 + 8 * v9);
        v10 = *(v7 + 8);
        v11 = v8 - 8;
        do
        {
          if (v10 >= *(*(v11 + 8 * v9) + 8))
          {
            v7 = *(v11 + 8 * v9);
            v10 = *(v7 + 8);
          }

          --v9;
        }

        while (v9);
      }

      v12 = *(v7 + 8);
      if (v12 == 20000)
      {
        v13 = v5 + 8;
      }

      else
      {
        if (*(v5 + 30) != -1 && *(v5 + 42))
        {
          v14 = *(v5 + 24);
          if (v14 < 0)
          {
            v15 = *(v5 + 29) + v14;
          }

          else
          {
            v15 = *(v5 + 29);
          }

          v12 += v15;
        }

        v13 = v5 + 8;
        if (v12 != 20000)
        {
          *(v5 + 8) = *v7;
          v17 = *(v7 + 4);
          v16 = v12 + (*(v5 + 20) >> 8);
          *(v5 + 12) = v17 + *(v5 + 26);
          goto LABEL_20;
        }
      }

      LOWORD(v16) = 20000;
      *(v5 + 18) = 20000;
LABEL_20:
      *(v13 + 8) = v16;
    }
  }

  return result;
}

void BaumWelchNet::newNode(BaumWelchNet *this, char a2)
{
  v3 = MemChunkAlloc(0x60uLL, 0);

  TraceNode::TraceNode(v3, a2);
}

uint64_t PronCmp(unsigned int a1, unsigned int a2, const WordList *a3)
{
  v3 = *(a3 + 4);
  v4 = *(v3 + 2 * a1);
  v5 = *(v3 + 2 * a2);
  if (v4)
  {
    if (!v5)
    {
      return 1;
    }

    LODWORD(v6) = 0;
    LODWORD(v7) = 0;
    v8 = *(a3 + 1);
    v9 = *(a3 + 6);
    v10 = *(a3 + 9);
    v11 = v10 + 2 * *(v9 + 4 * a1);
    v12 = v10 + 2 * *(v9 + 4 * a2);
    while (1)
    {
      if (v6 >= v4)
      {
        v13 = 0xFFFF;
      }

      else
      {
        v6 = v6;
        while (1)
        {
          v13 = *(*(v8 + 8) + 2 * *(v11 + 2 * v6));
          if (v13 != 0xFFFF)
          {
            break;
          }

          if (v4 == ++v6)
          {
            LODWORD(v6) = v4;
            break;
          }
        }
      }

      if (v7 >= v5)
      {
        v14 = 0xFFFF;
      }

      else
      {
        v7 = v7;
        while (1)
        {
          v14 = *(*(v8 + 8) + 2 * *(v12 + 2 * v7));
          if (v14 != 0xFFFF)
          {
            break;
          }

          if (v5 == ++v7)
          {
            LODWORD(v7) = v5;
            break;
          }
        }
      }

      if (v6 == v4)
      {
        break;
      }

      if (v7 == v5)
      {
        return 1;
      }

      LODWORD(v6) = v6 + 1;
      LODWORD(v7) = v7 + 1;
      result = (v13 - v14);
      if (v13 != v14)
      {
        return result;
      }
    }

    v16 = v7 == v5;
  }

  else
  {
    v16 = v5 == 0;
  }

  if (v16)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t WordIdPronSearchCmpFunc(unsigned int *a1, const void *a2)
{
  v2 = *a1;
  v3 = *a2;
  LODWORD(result) = PronCmp(*a1, *a2, *(a2 + 1));
  if (result)
  {
    return result;
  }

  else
  {
    return v2 - v3;
  }
}

unsigned int *mrec_qsort_r<WordIdPronCollArray>(unsigned int *result, unint64_t a2, int64_t a3, const WordList *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v151 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v156 = ((result | a3) & 7) == 0;
  v157 = v8;
  v158 = -a3;
  if (a2 < 7)
  {
LABEL_181:
    if ((v5 * a3) > a3)
    {
      v154 = (v6 + v5 * a3);
      v116 = (v6 + a3);
      v117 = v6;
      do
      {
        if (v116 > v6)
        {
          v118 = v117;
          v119 = v116;
          do
          {
            v120 = v119;
            v119 = (v119 + v7);
            v121 = *v119;
            v122 = *v120;
            result = PronCmp(*v119, *v120, a4);
            v123 = v121 - v122;
            v7 = v158;
            if (result)
            {
              v123 = result;
            }

            if (v123 < 1)
            {
              break;
            }

            if (v157)
            {
              if (v156)
              {
                v124 = 0;
                v125 = v119;
                do
                {
                  v126 = *&v120[2 * v124];
                  *&v120[2 * v124] = *v125;
                  *v125 = v126;
                  v125 += 2;
                  ++v124;
                }

                while (a3 >> 3 != v124);
              }

              else
              {
                v128 = 0;
                v129 = a3;
                do
                {
                  v130 = *(v120 + v128);
                  *(v120 + v128) = *(v118 + v128);
                  *(v118 + v128++) = v130;
                  --v129;
                }

                while (v129);
              }
            }

            else
            {
              v127 = *v120;
              *v120 = *v119;
              *v119 = v127;
            }

            v118 = (v118 + v158);
          }

          while (v119 > v6);
        }

        v116 = (v116 + a3);
        v117 = (v117 + a3);
      }

      while (v116 < v154);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = (v6 + (v5 >> 1) * a3);
    v152 = v5;
    if (v5 != 7)
    {
      v153 = (v6 + (v5 - 1) * a3);
      if (v5 <= 0x28)
      {
        v24 = *v6;
        v25 = *v10;
        v150 = v6;
        v26 = *(v6 + (v5 - 1) * a3);
LABEL_83:
        v57 = PronCmp(v24, v25, a4);
        v58 = v24;
        if (v57)
        {
          v59 = v57;
        }

        else
        {
          v59 = v24 - v25;
        }

        result = PronCmp(v25, v26, a4);
        v60 = v25 - v26;
        if (result)
        {
          v60 = result;
        }

        if ((v59 & 0x80000000) != 0)
        {
          if ((v60 & 0x80000000) == 0)
          {
            result = PronCmp(v58, v26, a4);
            v62 = v58 - v26;
            if (result)
            {
              v62 = result;
            }

            if (v62 >= 0)
            {
              v10 = v150;
            }

            else
            {
              v10 = v153;
            }
          }
        }

        else if (v60 <= 0)
        {
          result = PronCmp(v58, v26, a4);
          v61 = v58 - v26;
          if (result)
          {
            v61 = result;
          }

          if (v61 >= 0)
          {
            v10 = v153;
          }

          else
          {
            v10 = v150;
          }
        }

        goto LABEL_101;
      }

      v11 = (v5 >> 3) * a3;
      v12 = *v6;
      v150 = (v6 + v11);
      v13 = *(v6 + v11);
      v14 = PronCmp(*v6, v13, a4);
      if (v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12 - v13;
      }

      v16 = *(v6 + 2 * v11);
      v17 = PronCmp(v13, v16, a4);
      v149 = v13;
      v18 = v13 - v16;
      if (v17)
      {
        v18 = v17;
      }

      if ((v15 & 0x80000000) != 0)
      {
        if (v18 < 0)
        {
          goto LABEL_33;
        }

        v27 = PronCmp(v12, v16, a4);
        v28 = v12 - v16;
        if (v27)
        {
          v28 = v27;
        }

        v29 = v28 < 0;
        if (v28 >= 0)
        {
          v30 = v12;
        }

        else
        {
          v30 = v16;
        }

        v149 = v30;
        v23 = (v6 + 2 * v11);
        if (!v29)
        {
          v23 = v6;
        }
      }

      else
      {
        if (v18 > 0)
        {
          goto LABEL_33;
        }

        v19 = PronCmp(v12, v16, a4);
        v20 = v12 - v16;
        if (v19)
        {
          v20 = v19;
        }

        v21 = v20 < 0;
        if (v20 >= 0)
        {
          v22 = v16;
        }

        else
        {
          v22 = v12;
        }

        v149 = v22;
        v23 = (v6 + 2 * v11);
        if (v21)
        {
          v23 = v6;
        }
      }

      v150 = v23;
LABEL_33:
      v31 = (v10 + v11);
      v32 = *(v10 - v11);
      v25 = *v10;
      v33 = PronCmp(v32, *v10, a4);
      v146 = v32;
      if (v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v32 - v25;
      }

      v35 = *v31;
      v36 = PronCmp(v25, *v31, a4);
      v37 = v25 - v35;
      if (v36)
      {
        v37 = v36;
      }

      if ((v34 & 0x80000000) != 0)
      {
        v38 = v153;
        if ((v37 & 0x80000000) == 0)
        {
          v41 = PronCmp(v146, v35, a4);
          v42 = v146 - v35;
          if (v41)
          {
            v42 = v41;
          }

          if (v42 >= 0)
          {
            v25 = v146;
          }

          else
          {
            v25 = v35;
          }

          if (v42 >= 0)
          {
            v10 = (v10 - v11);
          }

          else
          {
            v10 = (v10 + v11);
          }
        }
      }

      else
      {
        v38 = v153;
        if (v37 <= 0)
        {
          v39 = PronCmp(v146, v35, a4);
          v40 = v146 - v35;
          if (v39)
          {
            v40 = v39;
          }

          if (v40 >= 0)
          {
            v25 = v35;
          }

          else
          {
            v25 = v146;
          }

          if (v40 >= 0)
          {
            v10 = (v10 + v11);
          }

          else
          {
            v10 = (v10 - v11);
          }
        }
      }

      v43 = (v38 - v11);
      v148 = (v38 - 2 * v11);
      v44 = *v148;
      v26 = *v43;
      v45 = PronCmp(*v148, *v43, a4);
      v147 = v44;
      if (v45)
      {
        v46 = v45;
      }

      else
      {
        v46 = v44 - v26;
      }

      v47 = *v38;
      v48 = PronCmp(v26, v47, a4);
      v49 = v26 - v47;
      if (v48)
      {
        v49 = v48;
      }

      if ((v46 & 0x80000000) != 0)
      {
        if ((v49 & 0x80000000) == 0)
        {
          v54 = PronCmp(v147, v47, a4);
          v55 = v147 - v47;
          if (v54)
          {
            v55 = v54;
          }

          v56 = v55 < 0;
          if (v55 >= 0)
          {
            v26 = v147;
          }

          else
          {
            v26 = v47;
          }

          v53 = v153;
          if (!v56)
          {
            v53 = v148;
          }

          goto LABEL_80;
        }
      }

      else if (v49 <= 0)
      {
        v50 = PronCmp(v147, v47, a4);
        v51 = v147 - v47;
        if (v50)
        {
          v51 = v50;
        }

        v52 = v51 < 0;
        if (v51 >= 0)
        {
          v26 = v47;
        }

        else
        {
          v26 = v147;
        }

        v53 = v153;
        if (v52)
        {
          v53 = v148;
        }

LABEL_80:
        v153 = v53;
LABEL_82:
        v5 = v152;
        v24 = v149;
        goto LABEL_83;
      }

      v153 = v43;
      goto LABEL_82;
    }

LABEL_101:
    if (v157)
    {
      if (v156)
      {
        v63 = v6;
        v64 = a3 >> 3;
        do
        {
          v65 = *v63;
          *v63 = *v10;
          v63 += 2;
          *v10 = v65;
          v10 += 2;
          --v64;
        }

        while (v64);
      }

      else
      {
        v67 = a3;
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68 = *v10;
          v68 = (v68 + 1);
          *v10 = v69;
          v10 = (v10 + 1);
          --v67;
        }

        while (v67);
      }
    }

    else
    {
      v66 = *v6;
      *v6 = *v10;
      *v10 = v66;
    }

    v70 = 0;
    v71 = (v6 + a3);
    v72 = (v6 + (v5 - 1) * a3);
    v73 = v72;
    v74 = (v6 + a3);
    while (1)
    {
      while (v74 <= v73)
      {
        v75 = *v74;
        v76 = *v6;
        result = PronCmp(*v74, *v6, a4);
        v77 = v75 - v76;
        if (result)
        {
          v77 = result;
        }

        if (v77 > 0)
        {
          break;
        }

        if (!v77)
        {
          if (v157)
          {
            if (v156)
            {
              v78 = 0;
              do
              {
                v79 = v71[v78];
                v71[v78] = *&v74[2 * v78];
                *&v74[2 * v78++] = v79;
              }

              while (v9 != v78);
            }

            else
            {
              v89 = 0;
              do
              {
                v90 = *(v71 + v89);
                *(v71 + v89) = *(v74 + v89);
                *(v74 + v89++) = v90;
              }

              while (a3 != v89);
            }
          }

          else
          {
            v80 = *v71;
            *v71 = *v74;
            *v74 = v80;
          }

          v71 = (v71 + a3);
          v70 = 1;
        }

        v74 = (v74 + a3);
      }

      if (v74 > v73)
      {
        break;
      }

      while (1)
      {
        v81 = *v73;
        v82 = *v6;
        result = PronCmp(*v73, *v6, a4);
        v83 = v81 - v82;
        if (result)
        {
          v83 = result;
        }

        if ((v83 & 0x80000000) != 0)
        {
          break;
        }

        if (v83)
        {
          v7 = v158;
        }

        else
        {
          v7 = v158;
          if (v157)
          {
            if (v156)
            {
              v84 = 0;
              do
              {
                v85 = *&v73[2 * v84];
                *&v73[2 * v84] = *&v72[2 * v84];
                *&v72[2 * v84++] = v85;
              }

              while (v9 != v84);
            }

            else
            {
              v87 = 0;
              do
              {
                v88 = *(v73 + v87);
                *(v73 + v87) = *(v72 + v87);
                *(v72 + v87++) = v88;
              }

              while (a3 != v87);
            }
          }

          else
          {
            v86 = *v73;
            *v73 = *v72;
            *v72 = v86;
          }

          v72 = (v72 + v158);
          v70 = 1;
        }

        v73 = (v73 + v7);
        if (v74 > v73)
        {
          goto LABEL_152;
        }
      }

      if (v157)
      {
        v91 = v158;
        if (v156)
        {
          v92 = 0;
          do
          {
            v93 = *&v74[2 * v92];
            *&v74[2 * v92] = *&v73[2 * v92];
            *&v73[2 * v92++] = v93;
          }

          while (v9 != v92);
        }

        else
        {
          v95 = 0;
          do
          {
            v96 = *(v74 + v95);
            *(v74 + v95) = *(v73 + v95);
            *(v73 + v95++) = v96;
          }

          while (a3 != v95);
        }
      }

      else
      {
        v94 = *v74;
        *v74 = *v73;
        *v73 = v94;
        v91 = v158;
      }

      v74 = (v74 + a3);
      v73 = (v73 + v91);
      v70 = 1;
    }

    v7 = v158;
LABEL_152:
    v97 = v6 + v152 * a3;
    if (!v70)
    {
      break;
    }

    v98 = v74 - v71;
    if (v71 - v6 >= v74 - v71)
    {
      v99 = v74 - v71;
    }

    else
    {
      v99 = v71 - v6;
    }

    if (v99)
    {
      if (v156)
      {
        v100 = (v74 - v99);
        v101 = v99 >> 3;
        v102 = v6;
        do
        {
          v103 = *v102;
          *v102 = *v100;
          v102 += 2;
          *v100++ = v103;
          --v101;
        }

        while (v101);
      }

      else
      {
        v104 = -v99;
        v105 = v6;
        do
        {
          v106 = *v105;
          *v105 = *(v74 + v104);
          v105 = (v105 + 1);
          *(v74 + v104) = v106;
          v107 = __CFADD__(v104++, 1);
        }

        while (!v107);
      }
    }

    v108 = v72 - v73;
    if (v72 - v73 >= v97 - (v72 + a3))
    {
      v109 = v97 - (v72 + a3);
    }

    else
    {
      v109 = v72 - v73;
    }

    if (v109)
    {
      if (v156)
      {
        v110 = &v97[-v109];
        v111 = v109 >> 3;
        do
        {
          v112 = *v74;
          *v74 = *v110;
          v74 += 2;
          *v110 = v112;
          v110 += 8;
          --v111;
        }

        while (v111);
      }

      else
      {
        v113 = -v109;
        do
        {
          v114 = *v74;
          *v74 = v97[v113];
          v74 = (v74 + 1);
          v97[v113] = v114;
          v107 = __CFADD__(v113++, 1);
        }

        while (!v107);
      }
    }

    if (v98 > a3)
    {
      result = mrec_qsort_r<WordIdPronCollArray>(v6, v98 / a3, a3, a4);
    }

    if (v108 <= a3)
    {
      return result;
    }

    v6 = &v97[-v108];
    v5 = v108 / a3;
    v115 = v151;
    if ((((v97 - v108) | a3) & 7) != 0)
    {
      v115 = 2;
    }

    v156 = (((v97 - v108) | a3) & 7) == 0;
    v157 = v115;
    if (v5 < 7)
    {
      goto LABEL_181;
    }
  }

  v131 = (v6 + a3);
  if ((v152 * a3) > a3)
  {
    v132 = v6;
    do
    {
      v155 = v131;
      if (v131 > v6)
      {
        v133 = v132;
        v134 = v131;
        do
        {
          v135 = v134;
          v134 = (v134 + v7);
          v136 = *v134;
          v137 = *v135;
          result = PronCmp(*v134, *v135, a4);
          v138 = v136 - v137;
          v7 = v158;
          if (result)
          {
            v138 = result;
          }

          if (v138 < 1)
          {
            break;
          }

          if (v157)
          {
            if (v156)
            {
              v139 = 0;
              v140 = v134;
              do
              {
                v141 = *&v135[2 * v139];
                *&v135[2 * v139] = *v140;
                *v140 = v141;
                v140 += 2;
                ++v139;
              }

              while (v9 != v139);
            }

            else
            {
              v143 = 0;
              v144 = a3;
              do
              {
                v145 = *(v135 + v143);
                *(v135 + v143) = *(v133 + v143);
                *(v133 + v143++) = v145;
                --v144;
              }

              while (v144);
            }
          }

          else
          {
            v142 = *v135;
            *v135 = *v134;
            *v134 = v142;
          }

          v133 = (v133 + v158);
        }

        while (v134 > v6);
      }

      v131 = (v155 + a3);
      v132 = (v132 + a3);
    }

    while (v155 + a3 < v97);
  }

  return result;
}