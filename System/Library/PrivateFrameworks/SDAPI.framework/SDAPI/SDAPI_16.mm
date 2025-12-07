int64x2_t FstSearchLatticeDurationBackoff::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLatticeDurationBackoff::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLatticeDurationBackoff::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

_DWORD *FstSearchLatticeDurationBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[56] = 0;
  return this;
}

double FstSearchLatticeDurationBackoff::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLatticeDurationBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLatticeDurationBackoff::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 33, a3, this[4]);
    result = ArcGraph::findBackoffState(this[5]);
    *(this + 94) = result;
    *(this + 380) = 1;
  }

  return result;
}

uint64_t FstSearchLatticeDurationBackoff::endTopRecPassSyncRecog(FstSearchLatticeDurationBackoff *this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = *(this + 13);
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 64) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLatticeDurationBackoff::printSize(FstSearchLatticeDurationBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950);
  if (v72)
  {
    v13 = v71;
  }

  else
  {
    v13 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v13);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26287F8B0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952);
  if (v72)
  {
    v18 = v71;
  }

  else
  {
    v18 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954);
  if (v72)
  {
    v20 = v71;
  }

  else
  {
    v20 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955);
  if (v72)
  {
    v22 = v71;
  }

  else
  {
    v22 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v66 = a2;
  v67 = a6;
  v68 = a3;
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956);
  if (v72)
  {
    v24 = v71;
  }

  else
  {
    v24 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = *(this + 42);
  v27 = 16 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 16 * (*(this + 43) - v26);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957);
  if (v72)
  {
    v31 = v71;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 20 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 20 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 56);
  v41 = 30 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 30 * (*(this + 57) - v40);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964);
  if (v72)
  {
    v45 = v71;
  }

  else
  {
    v45 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26287F8B0, v16, v16, v45, v43, v42, 0);
  DgnString::~DgnString(&v71);
  *a4 += v43;
  *a5 += v42;
  v46 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  v47 = *(this + 60);
  v48 = 30 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 30 * (*(this + 61) - v47);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966);
  if (v72)
  {
    v52 = v71;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26287F8B0, v16, v16, v52, v50, v49, 0);
  DgnString::~DgnString(&v71);
  *a4 += v50;
  *a5 += v49;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968);
  if (v72)
  {
    v54 = v71;
  }

  else
  {
    v54 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_26287F8B0, v16, v16, v54, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970);
  if (v72)
  {
    v56 = v71;
  }

  else
  {
    v56 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v15, &unk_26287F8B0, v16, v16, v56, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972);
  if (v72)
  {
    v58 = v71;
  }

  else
  {
    v58 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &unk_26287F8B0, v16, v16, v58, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v59 = sizeObject(this + 264, 0);
  v60 = sizeObject(this + 264, 1);
  v61 = sizeObject(this + 264, 3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974);
  if (v72)
  {
    v63 = v71;
  }

  else
  {
    v63 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26287F8B0, v16, v16, v63, v59, v60, v61);
  DgnString::~DgnString(&v71);
  *a4 += v59;
  *a5 += v60;
  *v67 += v61;
  v69 = 0;
  v70 = 0;
  SearchItf::printSize(this, v66, v15, &v70, &v69, &v69);
  *a4 += v70;
  *a5 += v69;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985);
  if (v72)
  {
    v65 = v71;
  }

  else
  {
    v65 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v68, &unk_26287F8B0, (35 - v68), (35 - v68), v65, *a4, *a5, *v67);
  DgnString::~DgnString(&v71);
}

uint64_t FstSearchLatticeDurationBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 152);
  }

  v5 = *(a1 + 224);
  if (v4 >= v5)
  {
    goto LABEL_21;
  }

  v6 = 32 * v4;
  v7 = 1879048192;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *(a1 + 216);
    if (!a4 || (v10 = *(v9 + v6 + 8), v10 == -1))
    {
      if (*(*(a1 + 40) + 160) != *(v9 + v6 + 4))
      {
        goto LABEL_19;
      }

      v10 = *(v9 + v6 + 8);
    }

    if (a2)
    {
      *(*a2 + v10) = 1;
    }

    if (a3)
    {
      *(*a3 + v10) = 1;
    }

    v11 = *(*(a1 + 176) + 20 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    v12 = v7 <= v11;
    if (v7 >= v11)
    {
      v7 = *(*(a1 + 176) + 20 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    }

    if (!v12)
    {
      v8 = v10;
    }

    v5 = *(a1 + 224);
LABEL_19:
    ++v4;
    v6 += 32;
  }

  while (v4 < v5);
  if (v8 == 0xFFFFFFFFLL)
  {
LABEL_21:
    v13 = *(a1 + 168);
    v8 = 0xFFFFFFFFLL;
    while (v13)
    {
      --v13;
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 16 * v13) == 16777213)
      {
        if (a2)
        {
          *(*a2 + v13) = 1;
        }

        v8 = v13;
        if (a3)
        {
          *(*a3 + v13) = 1;
        }

        return v8;
      }
    }
  }

  return v8;
}

BOOL FstSearchLatticeDurationBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a3 + 8) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v8;
  }

  if (v8)
  {
    v10 = *(a2 + 8) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a2 = MemChunkAlloc(v8, 0);
    *(a2 + 8) = v8;
LABEL_14:
    v11 = 0;
    do
    {
      *(*a2 + v11) = 0;
      *(*a3 + v11++) = 0;
    }

    while (v8 != v11);
    goto LABEL_16;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_16:
  BestTrace = FstSearchLatticeDurationBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 16 * BestTrace;
  LODWORD(v13) = *(*(a1 + 176) + 20 * *(v13 + 8)) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchLatticeDurationBackoff::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 16 * v11);
        if (*v13 != 16777209 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 20 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLatticeDurationBackoff::createLatticeLink(a1, v11, v15, 0xFFFFFFFF, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLatticeDurationBackoff::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 16 * v11 + 12) + *(*(a1 + 160) + 16 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_262645D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLatticeDurationBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 16 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 20 * v19 + 12) == a2)
      {
        v22 = (v21 + 20 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(v44, *(a1 + 40), *(v16 + 16 * a2));
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (LODWORD(v44[0]) >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
    if ((a4 & 0x80000000) != 0)
    {
LABEL_16:
      v27 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }
  }

  v27 = *(a1 + 140);
  v26 -= v27;
LABEL_19:
  v28 = a3[4];
  if (v22)
  {
    v28 += v22[4];
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v24 - (v23 + v28);
  v42 = v28;
  v43 = v27;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 16 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_25;
    }

    v32 = v31 + 1;
LABEL_28:
    v33 = *(v30 + 16 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v35 = *(v30 + 16 * a4 + 4);
      goto LABEL_30;
    }

LABEL_31:
    v36 = 0;
    goto LABEL_32;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_28;
  }

LABEL_25:
  v33 = (*(v30 + 16 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  v35 = (*(v30 + 16 * a4 + 4) - 1) / 2;
LABEL_30:
  v36 = v35 - v33;
LABEL_32:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_262645FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeDurationBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 380) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 264);
  }

  return this;
}

uint64_t FstSearchLatticeDurationBackoff::endTopRecSyncRecog(FstSearchLatticeDurationBackoff *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLatticeDurationBackoff::getBestExitScore(FstSearchLatticeDurationBackoff *this)
{
  v21 = 0;
  v22 = 0;
  *(this + 63) = -1;
  v1 = *(this + 38);
  v2 = *(this + 56);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 32 * v1;
  do
  {
    v7 = *(this + 27) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 62))
      {
        if (v5 == HIDWORD(v22))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
          v5 = v22;
          v4 = v21;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v22 + 1;
        LODWORD(v22) = v22 + 1;
        v2 = *(this + 56);
      }
    }

    ++v1;
    v6 += 32;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = 1879048192;
    do
    {
      v12 = v10 + 16 * *(v4 + 4 * v9);
      v13 = *(v12 + 12);
      if (v13 >= 1)
      {
        v14 = *(v12 + 8);
        v15 = v13 + v14;
        v16 = *(this + 22);
        do
        {
          v17 = (v16 + 20 * v14);
          v18 = *v17;
          if (v11 > *v17)
          {
            *(this + 63) = v17[3];
            v11 = v18;
          }

          ++v14;
        }

        while (v14 < v15);
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
LABEL_19:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v19 = 20000;
  }

  else
  {
    v19 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return v19;
}

uint64_t FstSearchLatticeDurationBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLatticeDurationBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(this + 27);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

_DWORD *FstSearchLatticeDurationBackoff::seedTheory(FstSearchLatticeDurationBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = *(this + 22) + 20 * v11;
    *(v12 + 4) = xmmword_26287F890;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 56);
  if (v16 == *(this + 57))
  {
    DgnArray<PrefilterResultFrame>::reallocElts(this + 216, 1, 1);
    v16 = *(this + 56);
  }

  v17 = *(this + 27) + 32 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  LODWORD(v17) = *(this + 56) + 1;
  *(this + 56) = v17;
  *(this + 38) = v17;

  return FstSearchLatticeDurationBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLatticeDurationBackoff::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 63);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 16 * v6);
    for (i = *(result[22] + 20 * v8[2] + 12); i != -1; v6 = v14)
    {
      v14 = i;
      result = v7[5];
      if (*v8 == 16777209)
      {
        v15 = (*(result + 87) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v8);
        v15 = result;
      }

      v16 = *(a2 + 8);
      if (v16 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v16 = *(a2 + 8);
      }

      *(*a2 + 4 * v16) = v15;
      ++*(a2 + 8);
      v17 = *(a6 + 8);
      if (v17 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v17 = *(a6 + 8);
      }

      *(*a6 + 4 * v17) = v6;
      ++*(a6 + 8);
      v18 = v7[20];
      v19 = *(v18 + 16 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v7[22] + 20 * *(v18 + 16 * v6 + 8));
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 16 * v14);
      i = *(v7[22] + 20 * v8[2] + 12);
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchLatticeDurationBackoff::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
{
  v3 = *(this + 40);
  if (*(v3 + 178) == 1)
  {
    result = ArcGraph::ensureHeaderValid(*(this + 40), "Header");
    if (*(v3 + 202) == 1)
    {
      v8 = *(this + 140);
      if (*(v3 + 188) != v8)
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchInterWordSilencePenalty", *(v3 + 188), v8);
      }
    }

    v9 = *(this + 136);
    if (*(v3 + 192) != v9)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchPerWordPenalty", *(v3 + 192), v9);
    }

    v10 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 40) + 174)) + 608);
    if (*(v3 + 196) != v10)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "Voc", *(v3 + 196), v10);
    }

    v11 = *(v3 + 203);
    if (a3)
    {
      if (a2)
      {
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v12 = 1;
      }

      else
      {
        if (v11)
        {
          return result;
        }

        v12 = 0;
      }

      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "DropAlternateFrames", v12, v11);
    }

    else if (a2 & 1) != 0 || (v11)
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "NoDecimation", a2, v11);
    }
  }

  return result;
}

uint64_t FstSearchLatticeDurationBackoff::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLatticeDurationBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (*(a3 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *a3 + v12;
      v16 = *(v15 + 28);
      WordLatticeLC::WordLatticeLC(v20, v15, v14, *(v15 + 24) - v14, v16 - *(v15 + 24), v21);
      v17 = *(a2 + 8);
      if (v17 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v17) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v17), v20);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v20);
      ++v13;
      v12 += 32;
      v14 = v16;
    }

    while (v13 < *(a3 + 8));
  }

  v18 = a1[20] + 16 * v11;
  return (*(a1[22] + 20 * *(v18 + 8)) + *(a1[11] + 4 * *(v18 + 4)));
}

void FstSearchLatticeDuration::FstSearchLatticeDuration(FstSearchLatticeDuration *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287524D00;
  *(v5 + 136) = *a2;
  *(v5 + 140) = *a3;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 248) = -1;
  *(v5 + 256) = 1879048192;
  *(v5 + 312) = 0u;
  *(v5 + 328) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 380) = 0;
}

uint64_t FstSearchLatticeDuration::maybeInitDurModel(FstSearchLatticeDuration *this, const PicMgr *a2, int a3)
{
  v15 = 0;
  v16 = 0;
  PicMgr::getPelDurIdMap(a2, &v15);
  if (a3 == 1)
  {
    v6 = 56;
  }

  else
  {
    v6 = 72;
  }

  v7 = v16;
  v8 = *(this + 51);
  if (v16 <= v8)
  {
    *(this + 50) = v16;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    DgnPrimArray<short>::reallocElts(this + 192, v16 - v8, 0);
    *(this + 50) = v7;
  }

  v9 = 0;
  v10 = v15;
  v11 = *(this + 24);
  do
  {
    if (!v9 || (v12 = *(v10 + 2 * v9), v12 == 0xFFFF))
    {
      v13 = 0;
    }

    else
    {
      v13 = *(*(a2 + v6) + 2 * v12);
    }

    *(v11 + 2 * v9++) = v13;
  }

  while (v7 != v9);
LABEL_13:
  *(this + 208) = *(a2 + 8);
  *(this + 53) = *(a2 + 3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

int64x2_t FstSearchLatticeDuration::advanceDeltas(FstSearchLatticeDuration *this, int a2, int a3, SearchStats *a4, int a5)
{
  v134[0] = a2;
  v132 = 0u;
  v133 = 0u;
  SnapTime::recordTime(&v132, 1, 0, 0, 0);
  v106 = (this + 256);
  *(this + 64) = a3;
  v7 = *(this + 2);
  v8 = *(this + 56);
  if (v8)
  {
    v9 = 0;
    v107 = 0;
    v108 = 0;
    v96 = *(this + 53);
    v98 = *(this + 208);
    v113 = this;
    v114 = *(this + 2);
    do
    {
      v10 = v9;
      v116 = 32 * v9;
      v11 = *(this + 27) + v116;
      v12 = *(v11 + 4);
      if (v8 <= v9 + 1)
      {
        ++v9;
      }

      else
      {
        v9 = v8;
      }

      v99 = v9 - 1;
      v13 = (v11 + 36);
      v14 = 1;
      while (v10 + v14 < v8)
      {
        v15 = *v13;
        v13 += 8;
        ++v14;
        if (v15 != v12)
        {
          v99 = v10 + v14 - 2;
          v9 = v10 + v14 - 1;
          break;
        }
      }

      v16 = *(this + 5);
      if (*(v16 + 160) != v12)
      {
        v17 = *(v16 + 140) <= v12 || v10 > v99;
        v100 = v9;
        if (!v17)
        {
          v18 = 0;
          v19 = v99 - v10 + 1;
          do
          {
            v20 = *(this + 27) + v116 + v18;
            v21 = *v20;
            v22 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v20 + 12)) + v21;
            v23 = *(this + 27) + v116 + v18;
            v24 = *(v23 + 12);
            v25 = *(v23 + 24);
            v26 = v98;
            if (v25 >= 1)
            {
              v26 = v98 - v25;
            }

            v27 = v26 & ((v25 - v98) >> 31);
            if (*(v23 + 12))
            {
              v28 = v25 - v98;
            }

            else
            {
              v28 = *(v23 + 24);
            }

            if (*(v23 + 12))
            {
              v29 = v27 + *(v23 + 28);
            }

            else
            {
              v29 = *(v23 + 28);
            }

            if (*(v23 + 12))
            {
              v30 = v27;
            }

            else
            {
              v30 = 0;
            }

            v31 = v22 + v30;
            if (v22 + v30 - v114 <= *v106)
            {
              v32 = *(v23 + 4);
              v33 = *(v23 + 14);
              v34 = *(v23 + 16);
              if (*v106 > v31)
              {
                *v106 = v31;
              }

              this = v113;
              v35 = *(v113 + 60);
              if (v35 == *(v113 + 61))
              {
                DgnArray<PrefilterResultFrame>::reallocElts(v113 + 232, 1, 1);
                v35 = *(v113 + 60);
              }

              v36 = *(v113 + 29) + 32 * v35;
              *v36 = v31;
              *(v36 + 4) = v32;
              *(v36 + 12) = v24;
              *(v36 + 14) = v33;
              *(v36 + 16) = v34;
              *(v36 + 24) = v28;
              *(v36 + 28) = v29;
              v37 = *(v113 + 60) + 1;
              *(v113 + 60) = v37;
              if (!v18)
              {
                v38 = v107;
                if (v108 == 2 * *(v113 + 4))
                {
                  v38 = v37;
                }

                v107 = v38;
                ++v108;
              }
            }

            else
            {
              this = v113;
            }

            v18 += 32;
            --v19;
          }

          while (v19);
        }

        v97 = v99 - v10 + 1;
        v39 = v12;
        v7 = v114;
        v101 = v12;
        v102 = v10;
        do
        {
          v40 = *(this + 5);
          v41 = *(v40 + 152);
          v42 = *(v41 + 4 * v39);
          v43 = *(v40 + 140);
          v115 = *(v41 + 4 * (v39 + 1));
          v103 = v39;
          if (v43 <= v115)
          {
            if (*(this + 380) == 1 && v43 <= v12)
            {
              v72 = (v42 & 0xFFFFF) <= 0xFFFF3 ? v42 & 0xFFFFF : v42 & 0xFFFFF | 0xF00000;
              if (v72 != 16777210)
              {
                DgnString::DgnString(&v129);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v72, &v129);
                v74 = &unk_26287F8B0;
                if (v129.i32[2])
                {
                  v74 = v129.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v73, v101, *(*(this + 27) + 32 * v102), *(*(this + 27) + 32 * v102 + 8), v74);
                MiniFst::seed(this + 264, *(*(this + 27) + 32 * v102), *(*(this + 27) + 32 * v102 + 20), *(*(this + 27) + 32 * v102 + 8), v115);
                DgnString::~DgnString(&v129);
              }
            }
          }

          else
          {
            ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v41 + 4 * v39));
            if (v10 <= v99)
            {
              v45 = 0;
              v46 = (v42 >> 20) & 0x3FF;
              v47 = ScoreNoBackoff + v46;
              v48 = v42;
              v49 = v97;
              if (v42)
              {
                v50 = v96;
              }

              else
              {
                v50 = 0;
              }

              v112 = v42;
              v105 = v42;
              v104 = (v42 >> 20) & 0x3FF;
              do
              {
                v51 = *(this + 27) + v116 + v45;
                v52 = v47 + *v51;
                if (v48)
                {
                  v54 = *(*(this + 24) + 2 * v48);
                }

                else
                {
                  v54 = 0;
                }

                if (v48)
                {
                  v53 = *(*(this + 24) + 2 * v48);
                  v55 = v53 & (v53 >> 31);
                }

                else
                {
                  v55 = 0;
                }

                v56 = (*(v51 + 24) & ~(*(v51 + 24) >> 31)) - v55 + v50;
                v57 = v52 + v56;
                v58 = v52 + v56 - v7;
                v59 = *(this + 64);
                if (v58 <= v59)
                {
                  v60 = *(v51 + 8);
                  v61 = *(v51 + 14);
                  v63 = *(v51 + 16);
                  v62 = *(v51 + 20);
                  v64 = *(v51 + 28);
                  if (v59 > v57)
                  {
                    *v106 = v57;
                  }

                  this = v113;
                  v65 = *(v113 + 60);
                  if (v65 == *(v113 + 61))
                  {
                    v110 = v60;
                    v111 = v62;
                    v66 = v50;
                    v67 = v54;
                    v109 = v63;
                    DgnArray<PrefilterResultFrame>::reallocElts(v113 + 232, 1, 1);
                    v63 = v109;
                    v60 = v110;
                    v62 = v111;
                    v54 = v67;
                    v50 = v66;
                    v48 = v105;
                    v46 = v104;
                    v65 = *(v113 + 60);
                  }

                  v68 = *(v113 + 29) + 32 * v65;
                  *v68 = v57;
                  *(v68 + 4) = v115;
                  *(v68 + 8) = v60;
                  v42 = v112;
                  *(v68 + 12) = v112;
                  *(v68 + 14) = v61;
                  *(v68 + 16) = v63 + v46;
                  *(v68 + 20) = v62;
                  *(v68 + 24) = v54;
                  *(v68 + 28) = v56 + v64;
                  v69 = *(v113 + 60) + 1;
                  *(v113 + 60) = v69;
                  if (!v45)
                  {
                    v70 = v107;
                    if (v108 == 2 * *(v113 + 4))
                    {
                      v70 = v69;
                    }

                    v107 = v70;
                    ++v108;
                  }

                  v7 = v114;
                }

                v45 += 32;
                --v49;
              }

              while (v49);
            }
          }

          v39 = v103 + 2;
          v9 = v100;
          LODWORD(v12) = v101;
          LODWORD(v10) = v102;
        }

        while ((v42 & 0x80000000) == 0);
        v8 = *(this + 56);
      }
    }

    while (v9 < v8);
    a3 = *v106;
  }

  else
  {
    v107 = 0;
    v108 = 0;
  }

  v131 = a3 + v7;
  if (*(this + 380) == 1)
  {
    MiniFst::updateFrame(this + 264, v106, v7, a2);
  }

  v129 = 0u;
  v130 = 0u;
  SnapTime::recordTime(&v129, 1, 0, 0, 0);
  v129 = vsubq_s64(v129, v132);
  v130 = vsubq_s64(v130, v133);
  v75 = *(this + 13);
  v76 = vaddq_s64(v75[1], v130);
  *v75 = vaddq_s64(*v75, v129);
  v75[1] = v76;
  v127 = 0u;
  v128 = 0u;
  SnapTime::recordTime(&v127, 1, 0, 0, 0);
  if (v108 > 2 * *(this + 4))
  {
    FstSearchLatticeDurationBackoff::applyCutoffOnEmitting(this, v107, &v131);
  }

  v125 = 0u;
  v126 = 0u;
  SnapTime::recordTime(&v125, 1, 0, 0, 0);
  v77 = vsubq_s64(v125, v127);
  v78 = *(this + 13);
  v79 = v78[3];
  v80 = vaddq_s64(v78[2], v77);
  v125 = v77;
  v126 = vsubq_s64(v126, v128);
  v81 = vaddq_s64(v79, v126);
  v78[2] = v80;
  v78[3] = v81;
  v123 = 0u;
  v124 = 0u;
  SnapTime::recordTime(&v123, 1, 0, 0, 0);
  FstSearchLatticeDurationBackoff::makeViterbiDecisionOnEmitting(this);
  v82 = *(this + 6);
  if (v82)
  {
    v83 = *(this + 56);
    if (v82 < v83)
    {
      mrec_nth_element<FstSearchLeafLatticeBackoffcmpTok>(*(this + 27), v82, v83);
    }
  }

  v121 = 0u;
  v122 = 0u;
  SnapTime::recordTime(&v121, 1, 0, 0, 0);
  v84 = vsubq_s64(v121, v123);
  v85 = *(this + 13);
  v86 = v85[5];
  v87 = vaddq_s64(v85[4], v84);
  v121 = v84;
  v122 = vsubq_s64(v122, v124);
  v88 = vaddq_s64(v86, v122);
  v85[4] = v87;
  v85[5] = v88;
  v119 = 0u;
  v120 = 0u;
  SnapTime::recordTime(&v119, 1, 0, 0, 0);
  *(this + 60) = 0;
  v89 = *(this + 56);
  *(this + 38) = v89;
  if (a4)
  {
    *(a4 + 2) += v89;
    if (*(a4 + 2) > v89)
    {
      LODWORD(v89) = *(a4 + 2);
    }

    *(a4 + 2) = v89;
  }

  if (*(this + 380) == 1)
  {
    FstSearchLatticeDuration::seedFromMiniFst(this, v134);
  }

  if (a5)
  {
    FstSearchLatticeDurationBackoff::propagateNulls(this, v131, a2, a4);
  }

  *(this + 62) = a2;
  v117 = 0u;
  v118 = 0u;
  SnapTime::recordTime(&v117, 1, 0, 0, 0);
  v90 = *(this + 13);
  result = vaddq_s64(v90[6], vsubq_s64(v117, v119));
  v92 = vaddq_s64(v90[7], vsubq_s64(v118, v120));
  v90[6] = result;
  v90[7] = v92;
  return result;
}

uint64_t FstSearchLatticeDuration::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 380) == 1)
  {
    v2 = this;
    v3 = *(this + 288);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 280) + 36 * v4);
        v6 = v5[4];
        v7 = v5[5];
        v8 = v5[6];
        v44 = v5[7];
        v45 = *v5;
        v9 = v5[2];
        v46 = 0;
        v47 = 0;
        v42 = v7;
        v43 = v6;
        v41 = v8;
        if ((v9 & 0x80000000) != 0)
        {
          LODWORD(v13) = -2 - v9;
        }

        else
        {
          v10 = 0;
          v11 = 0;
          do
          {
            if (v11 == HIDWORD(v47))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v46, 1, 1);
              v11 = v47;
              v10 = v46;
            }

            *(v10 + 4 * v11) = v9;
            v12 = v47;
            v11 = v47 + 1;
            LODWORD(v47) = v47 + 1;
            v9 = *(*(v2 + 264) + 36 * v9 + 8);
          }

          while ((v9 & 0x80000000) == 0);
          LODWORD(v13) = -2 - v9;
          if ((v12 & 0x80000000) == 0)
          {
            do
            {
              v14 = *(v46 + 4 * v12);
              v15 = *(v2 + 264);
              v16 = (v15 + 36 * v14);
              v17 = *v16;
              v18 = *(v16 + 2);
              v19 = *(v2 + 184);
              if (v19 == *(v2 + 188))
              {
                DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
                v19 = *(v2 + 184);
                v15 = *(v2 + 264);
              }

              v20 = *(v2 + 176) + 20 * v19;
              *(v2 + 184) = v19 + 1;
              *v20 = v17;
              *(v20 + 4) = v18;
              *(v20 + 12) = v13;
              *(v20 + 16) = 0;
              v21 = *(v15 + 36 * v14 + 28);
              v22 = *(v2 + 168);
              if (v22 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v22 = *(v2 + 168);
              }

              v23 = *(v2 + 160);
              v24 = v23 + 16 * v22;
              *v24 = v21;
              *(v24 + 8) = v19;
              *(v24 + 12) = 0;
              v13 = *(v2 + 168);
              *(v2 + 168) = v13 + 1;
              *(v23 + 16 * v13 + 12) = 1;
            }

            while (v12-- > 0);
          }
        }

        v26 = *(v2 + 184);
        if (v26 == *(v2 + 188))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 176, 1, 1);
          v26 = *(v2 + 184);
        }

        v27 = *(v2 + 176);
        *(v2 + 184) = v26 + 1;
        v28 = (v27 + 20 * v26);
        *v28 = v45;
        v28[1] = v43;
        v28[2] = v42;
        v28[3] = v13;
        v28[4] = 0;
        if (v44 == 16777213)
        {
          v29 = (*(v2 + 160) + 16 * v13);
          v30 = 16777209;
          if (*v29 == 16777209)
          {
            v26 = v29[2];
          }
        }

        else
        {
          v30 = v44;
        }

        v31 = *a2;
        v32 = *(v2 + 168);
        if (v32 == *(v2 + 172))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
          v32 = *(v2 + 168);
        }

        v33 = *(v2 + 160);
        v34 = (v33 + 16 * v32);
        *v34 = v30;
        v34[1] = v31;
        v34[2] = v26;
        v34[3] = 0;
        v35 = *(v2 + 168);
        *(v2 + 168) = v35 + 1;
        *(v33 + 16 * v35 + 12) = 1;
        v36 = *(v2 + 224);
        if (v36 == *(v2 + 228))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(v2 + 216, 1, 1);
          v36 = *(v2 + 224);
        }

        v37 = *(v2 + 216) + 32 * v36;
        *v37 = v45;
        *(v37 + 4) = v41;
        *(v37 + 8) = v35;
        *(v37 + 12) = -2;
        *(v37 + 16) = v43;
        *(v37 + 20) = v42;
        *(v37 + 24) = 0;
        ++*(v2 + 224);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v46);
        ++v4;
        LODWORD(v38) = *(v2 + 288);
        v39 = *(v2 + 20);
        if (v38 >= v39)
        {
          v38 = v39;
        }

        else
        {
          v38 = v38;
        }
      }

      while (v4 < v38);
    }
  }

  return this;
}

void sub_262647508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeDuration::collectTraces(FstSearchLatticeDuration *this)
{
  v2 = *(this + 42);
  v54 = 0;
  v53 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v53 = v3;
    v54 = v2;
    v4 = (v2 + 3) & 0x1FFFFFFFCLL;
    v5 = vdupq_n_s64(v2 - 1);
    v6 = v3 + 1;
    v7 = xmmword_26286BF80;
    v8 = xmmword_26286B680;
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v8));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v6 - 2) = 0;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v6 - 1) = 0;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v7))).i32[1])
      {
        *v6 = 0;
        v6[1] = 0;
      }

      v7 = vaddq_s64(v7, v9);
      v8 = vaddq_s64(v8, v9);
      v6 += 4;
      v4 -= 4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  v11 = *(this + 56);
  if (v11)
  {
    v12 = 0;
    v13 = (*(this + 27) + 8);
    do
    {
      v15 = *v13;
      v13 += 8;
      v14 = v15;
      if (v15 != -1)
      {
        *(v3 + v14) = 1;
        v11 = *(this + 56);
      }

      ++v12;
    }

    while (v12 < v11);
  }

  v16 = *(this + 42);
  if (!v16)
  {
    goto LABEL_56;
  }

  v17 = 0;
  do
  {
    --v16;
    if (v17)
    {
      v17 = 1;
    }

    else if (*(*(this + 20) + 16 * v16) == 16777213)
    {
      v17 = 1;
      *(v3 + v16) = 1;
    }

    else
    {
      v17 = 0;
    }

    if (*(v3 + v16))
    {
      v18 = *(this + 20) + 16 * v16;
      v19 = *(v18 + 12);
      if (v19 >= 1)
      {
        v20 = *(v18 + 8);
        v21 = v19 + v20;
        v22 = *(this + 22);
        do
        {
          v23 = *(v22 + 20 * v20 + 12);
          if (v23 != -1)
          {
            *(v3 + v23) = 1;
          }

          ++v20;
        }

        while (v20 < v21);
      }
    }
  }

  while (v16);
  v24 = *(this + 42);
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      if (*(v3 + v25))
      {
        v28 = *(this + 20);
        if (v25 != v26)
        {
          *(v28 + 16 * v26) = *(v28 + 16 * v25);
          v28 = *(this + 20);
        }

        *(v28 + 16 * v26 + 8) = v27;
        v29 = v28 + 16 * v25;
        v30 = *(v29 + 8);
        v31 = (*(v29 + 12) + v30);
        if (v30 < v31)
        {
          v32 = *(this + 22);
          v33 = 20 * v30;
          do
          {
            if (v30 != v27)
            {
              v34 = (v32 + v33);
              v35 = v32 + 20 * v27;
              v36 = *v34;
              *(v35 + 16) = *(v34 + 4);
              *v35 = v36;
              v32 = *(this + 22);
            }

            v37 = v32 + 20 * v27;
            v40 = *(v37 + 12);
            v38 = (v37 + 12);
            v39 = v40;
            if (v40 != -1)
            {
              *v38 = *(v3 + v39);
            }

            ++v27;
            ++v30;
            v33 += 20;
          }

          while (v31 != v30);
        }

        *(v3 + v25) = v26++;
        v24 = *(this + 42);
      }

      ++v25;
    }

    while (v25 < v24);
    v41 = *(this + 43);
    if (v26 > v41)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v26 - v41, 0);
      v24 = *(this + 42);
    }

    if (v24 < v26)
    {
      v42 = v26 - v24;
      v43 = (*(this + 20) + 16 * v24);
      do
      {
        *v43++ = xmmword_26287F860;
        --v42;
      }

      while (v42);
    }

    *(this + 42) = v26;
    v44 = *(this + 47);
    if (v27 > v44)
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, v27 - v44, 0);
    }

    v45 = *(this + 46);
    if (v45 < v27)
    {
      v46 = v27 - v45;
      v47 = (*(this + 22) + 20 * v45 + 16);
      do
      {
        *(v47 - 1) = xmmword_26287F850;
        *v47 = 0;
        v47 += 5;
        --v46;
      }

      while (v46);
    }
  }

  else
  {
LABEL_56:
    v27 = 0;
    *(this + 42) = 0;
  }

  *(this + 46) = v27;
  v48 = *(this + 56);
  if (v48)
  {
    v49 = v53;
    v50 = (*(this + 27) + 8);
    do
    {
      v51 = *v50;
      if (v51 != -1)
      {
        *v50 = *(v49 + v51);
      }

      v50 += 8;
      --v48;
    }

    while (v48);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v53);
}

int64x2_t FstSearchLatticeDuration::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLatticeDuration::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLatticeDuration::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

_DWORD *FstSearchLatticeDuration::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[56] = 0;
  return this;
}

double FstSearchLatticeDuration::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLatticeDuration::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLatticeDuration::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 33, a3, this[4]);
    result = ArcGraph::findBackoffState(this[5]);
    *(this + 94) = result;
    *(this + 380) = 1;
  }

  return result;
}

uint64_t FstSearchLatticeDuration::endTopRecPassSyncRecog(FstSearchLatticeDuration *this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = *(this + 13);
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 64) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLatticeDuration::printSize(FstSearchLatticeDuration *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950);
  if (v72)
  {
    v13 = v71;
  }

  else
  {
    v13 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v13);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26287F8B0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952);
  if (v72)
  {
    v18 = v71;
  }

  else
  {
    v18 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954);
  if (v72)
  {
    v20 = v71;
  }

  else
  {
    v20 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955);
  if (v72)
  {
    v22 = v71;
  }

  else
  {
    v22 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v66 = a2;
  v67 = a6;
  v68 = a3;
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956);
  if (v72)
  {
    v24 = v71;
  }

  else
  {
    v24 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = *(this + 42);
  v27 = 16 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 16 * (*(this + 43) - v26);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957);
  if (v72)
  {
    v31 = v71;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 20 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 20 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 56);
  v41 = 30 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 30 * (*(this + 57) - v40);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964);
  if (v72)
  {
    v45 = v71;
  }

  else
  {
    v45 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26287F8B0, v16, v16, v45, v43, v42, 0);
  DgnString::~DgnString(&v71);
  *a4 += v43;
  *a5 += v42;
  v46 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  v47 = *(this + 60);
  v48 = 30 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 30 * (*(this + 61) - v47);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966);
  if (v72)
  {
    v52 = v71;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26287F8B0, v16, v16, v52, v50, v49, 0);
  DgnString::~DgnString(&v71);
  *a4 += v50;
  *a5 += v49;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968);
  if (v72)
  {
    v54 = v71;
  }

  else
  {
    v54 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_26287F8B0, v16, v16, v54, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970);
  if (v72)
  {
    v56 = v71;
  }

  else
  {
    v56 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v15, &unk_26287F8B0, v16, v16, v56, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972);
  if (v72)
  {
    v58 = v71;
  }

  else
  {
    v58 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &unk_26287F8B0, v16, v16, v58, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v59 = sizeObject(this + 264, 0);
  v60 = sizeObject(this + 264, 1);
  v61 = sizeObject(this + 264, 3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974);
  if (v72)
  {
    v63 = v71;
  }

  else
  {
    v63 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26287F8B0, v16, v16, v63, v59, v60, v61);
  DgnString::~DgnString(&v71);
  *a4 += v59;
  *a5 += v60;
  *v67 += v61;
  v69 = 0;
  v70 = 0;
  SearchItf::printSize(this, v66, v15, &v70, &v69, &v69);
  *a4 += v70;
  *a5 += v69;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985);
  if (v72)
  {
    v65 = v71;
  }

  else
  {
    v65 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v68, &unk_26287F8B0, (35 - v68), (35 - v68), v65, *a4, *a5, *v67);
  DgnString::~DgnString(&v71);
}

BOOL FstSearchLatticeDuration::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a3 + 8) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v8;
  }

  if (v8)
  {
    v10 = *(a2 + 8) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a2 = MemChunkAlloc(v8, 0);
    *(a2 + 8) = v8;
LABEL_14:
    v11 = 0;
    do
    {
      *(*a2 + v11) = 0;
      *(*a3 + v11++) = 0;
    }

    while (v8 != v11);
    goto LABEL_16;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_16:
  BestTrace = FstSearchLatticeDurationBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 16 * BestTrace;
  LODWORD(v13) = *(*(a1 + 176) + 20 * *(v13 + 8)) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchLatticeDuration::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 16 * v11);
        if (*v13 != 16777209 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 20 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLatticeDuration::createLatticeLink(a1, v11, v15, 0xFFFFFFFF, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLatticeDuration::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 16 * v11 + 12) + *(*(a1 + 160) + 16 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_262648554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLatticeDuration::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 16 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 20 * v19 + 12) == a2)
      {
        v22 = (v21 + 20 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(v44, *(a1 + 40), *(v16 + 16 * a2));
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (LODWORD(v44[0]) >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
    if ((a4 & 0x80000000) != 0)
    {
LABEL_16:
      v27 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_16;
    }
  }

  v27 = *(a1 + 140);
  v26 -= v27;
LABEL_19:
  v28 = a3[4];
  if (v22)
  {
    v28 += v22[4];
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v24 - (v23 + v28);
  v42 = v28;
  v43 = v27;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 16 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_25;
    }

    v32 = v31 + 1;
LABEL_28:
    v33 = *(v30 + 16 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v35 = *(v30 + 16 * a4 + 4);
      goto LABEL_30;
    }

LABEL_31:
    v36 = 0;
    goto LABEL_32;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_28;
  }

LABEL_25:
  v33 = (*(v30 + 16 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

  v35 = (*(v30 + 16 * a4 + 4) - 1) / 2;
LABEL_30:
  v36 = v35 - v33;
LABEL_32:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_2626487A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeDuration::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 380) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 264);
  }

  return this;
}

uint64_t FstSearchLatticeDuration::endTopRecSyncRecog(FstSearchLatticeDuration *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLatticeDuration::getBestExitScore(FstSearchLatticeDuration *this)
{
  v21 = 0;
  v22 = 0;
  *(this + 63) = -1;
  v1 = *(this + 38);
  v2 = *(this + 56);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 32 * v1;
  do
  {
    v7 = *(this + 27) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 62))
      {
        if (v5 == HIDWORD(v22))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
          v5 = v22;
          v4 = v21;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v22 + 1;
        LODWORD(v22) = v22 + 1;
        v2 = *(this + 56);
      }
    }

    ++v1;
    v6 += 32;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = 1879048192;
    do
    {
      v12 = v10 + 16 * *(v4 + 4 * v9);
      v13 = *(v12 + 12);
      if (v13 >= 1)
      {
        v14 = *(v12 + 8);
        v15 = v13 + v14;
        v16 = *(this + 22);
        do
        {
          v17 = (v16 + 20 * v14);
          v18 = *v17;
          if (v11 > *v17)
          {
            *(this + 63) = v17[3];
            v11 = v18;
          }

          ++v14;
        }

        while (v14 < v15);
      }

      ++v9;
    }

    while (v9 != v5);
  }

  else
  {
LABEL_19:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v19 = 20000;
  }

  else
  {
    v19 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return v19;
}

uint64_t FstSearchLatticeDuration::getBestScoreMaybeUpdateFstNode(FstSearchLatticeDuration *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 56);
  if (v2)
  {
    v3 = *(this + 27);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 32;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

_DWORD *FstSearchLatticeDuration::seedTheory(FstSearchLatticeDuration *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = *(this + 22) + 20 * v11;
    *(v12 + 4) = xmmword_26287F890;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 56);
  if (v16 == *(this + 57))
  {
    DgnArray<PrefilterResultFrame>::reallocElts(this + 216, 1, 1);
    v16 = *(this + 56);
  }

  v17 = *(this + 27) + 32 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  LODWORD(v17) = *(this + 56) + 1;
  *(this + 56) = v17;
  *(this + 38) = v17;

  return FstSearchLatticeDurationBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLatticeDuration::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 63);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 16 * v6);
    for (i = *(result[22] + 20 * v8[2] + 12); i != -1; v6 = v14)
    {
      v14 = i;
      result = v7[5];
      if (*v8 == 16777209)
      {
        v15 = (*(result + 87) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v8);
        v15 = result;
      }

      v16 = *(a2 + 8);
      if (v16 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v16 = *(a2 + 8);
      }

      *(*a2 + 4 * v16) = v15;
      ++*(a2 + 8);
      v17 = *(a6 + 8);
      if (v17 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v17 = *(a6 + 8);
      }

      *(*a6 + 4 * v17) = v6;
      ++*(a6 + 8);
      v18 = v7[20];
      v19 = *(v18 + 16 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v7[22] + 20 * *(v18 + 16 * v6 + 8));
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 16 * v14);
      i = *(v7[22] + 20 * v8[2] + 12);
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchLatticeDuration::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
{
  v3 = *(this + 40);
  if (*(v3 + 178) == 1)
  {
    result = ArcGraph::ensureHeaderValid(*(this + 40), "Header");
    if (*(v3 + 202) == 1)
    {
      v8 = *(this + 140);
      if (*(v3 + 188) != v8)
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchInterWordSilencePenalty", *(v3 + 188), v8);
      }
    }

    v9 = *(this + 136);
    if (*(v3 + 192) != v9)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchPerWordPenalty", *(v3 + 192), v9);
    }

    v10 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 40) + 174)) + 608);
    if (*(v3 + 196) != v10)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "Voc", *(v3 + 196), v10);
    }

    v11 = *(v3 + 203);
    if (a3)
    {
      if (a2)
      {
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v12 = 1;
      }

      else
      {
        if (v11)
        {
          return result;
        }

        v12 = 0;
      }

      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "DropAlternateFrames", v12, v11);
    }

    else if (a2 & 1) != 0 || (v11)
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "NoDecimation", a2, v11);
    }
  }

  return result;
}

uint64_t FstSearchLatticeDuration::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLatticeDurationBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (*(a3 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *a3 + v12;
      v16 = *(v15 + 28);
      WordLatticeLC::WordLatticeLC(v20, v15, v14, *(v15 + 24) - v14, v16 - *(v15 + 24), v21);
      v17 = *(a2 + 8);
      if (v17 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v17) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v17), v20);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v20);
      ++v13;
      v12 += 32;
      v14 = v16;
    }

    while (v13 < *(a3 + 8));
  }

  v18 = a1[20] + 16 * v11;
  return (*(a1[22] + 20 * *(v18 + 8)) + *(a1[11] + 4 * *(v18 + 4)));
}

int64x2_t FstSearchLateLatticeBackoff::advanceDeltas(FstSearchLateLatticeBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v6 = a2;
  v96[0] = a2;
  v94 = 0u;
  v95 = 0u;
  SnapTime::recordTime(&v94, 1, 0, 0, 0);
  *(this + 58) = a3;
  v78 = *(this + 2);
  v72 = (this + 232);
  v8 = *(this + 50);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this + 24);
      v13 = *(this + 5);
      v14 = 24 * v9 + 12;
      while (1)
      {
        v15 = *(v12 + v14 - 8);
        if (*(v13 + 160) != v15)
        {
          break;
        }

        ++v9;
        v14 += 24;
        if (v9 >= v8)
        {
          goto LABEL_47;
        }
      }

      v69 = v6;
      v77 = v11;
      if (*(v13 + 140) > v15)
      {
        v16 = *(this + 19) + *(this + 58) >= 5000 ? 5000 : *(this + 19) + *(this + 58);
        ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v12 + v14), *(v12 + v14 - 12), v16);
        v18 = *(this + 58);
        if (ScoreAllowBackoff_updateNodeInSequence - v78 <= v18)
        {
          v19 = ScoreAllowBackoff_updateNodeInSequence;
          v20 = v10;
          if (v18 > ScoreAllowBackoff_updateNodeInSequence)
          {
            *v72 = ScoreAllowBackoff_updateNodeInSequence;
          }

          v21 = *(this + 24) + v14;
          v22 = *(v21 - 8);
          v23 = *v21;
          v24 = *(v21 + 2);
          v25 = *(v21 + 4);
          v26 = *(this + 54);
          if (v26 == *(this + 55))
          {
            DgnArray<CWIDAC>::reallocElts(this + 208, 1, 1);
            LODWORD(v26) = *(this + 54);
          }

          v27 = *(this + 26) + 24 * v26;
          *v27 = v19;
          *(v27 + 4) = v22;
          *(v27 + 12) = v23;
          *(v27 + 14) = v24;
          *(v27 + 16) = v25;
          v28 = *(this + 54);
          *(this + 54) = v28 + 1;
          if (v77 == 2 * *(this + 4))
          {
            v10 = v28 + 1;
          }

          else
          {
            v10 = v20;
          }

          ++v77;
        }
      }

      v29 = v15;
      do
      {
        v30 = *(this + 5);
        v31 = *(v30 + 152);
        v32 = *(v31 + 4 * v29);
        v33 = *(v31 + 4 * (v29 + 1));
        v34 = *(v30 + 140);
        if (v34 <= v33)
        {
          if (v34 <= v15 && (*(this + 356) & 1) != 0)
          {
            v48 = (v32 & 0xFFFFF) <= 0xFFFF3 ? v32 & 0xFFFFF : v32 & 0xFFFFF | 0xF00000;
            if (v48 != 16777210)
            {
              DgnString::DgnString(&v91);
              ArcGraph::getNameAndHumanReadablePron(*(this + 5), v48, &v91);
              v50 = &unk_26287F8B0;
              if (v91.i32[2])
              {
                v50 = v91.i64[0];
              }

              xprintf("Seed from state %d score %d trace %d, %s\n", v49, v15, *(*(this + 24) + v14 - 12), *(*(this + 24) + v14 - 4), v50);
              MiniFst::seed(this + 240, *(*(this + 24) + v14 - 12), *(*(this + 24) + v14 + 8), *(*(this + 24) + v14 - 4), v33);
              DgnString::~DgnString(&v91);
            }
          }
        }

        else
        {
          v35 = (v32 >> 20) & 0x3FF;
          if (*(this + 19) + *(this + 58) >= 5000)
          {
            v36 = 5000;
          }

          else
          {
            v36 = *(this + 19) + *(this + 58);
          }

          v37 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v31 + 4 * v29), *(*(this + 24) + v14 - 12) + v35, v36);
          v38 = *(this + 58);
          if (v37 - v78 <= v38)
          {
            v39 = v37;
            v76 = v10;
            if (v38 > v37)
            {
              *v72 = v37;
            }

            v40 = *(this + 24) + v14;
            v41 = *(v40 - 4);
            v42 = *(v40 + 2);
            v44 = *(v40 + 4);
            v43 = *(v40 + 8);
            v45 = *(this + 54);
            if (v45 == *(this + 55))
            {
              v74 = v43;
              v75 = v42;
              v73 = v41;
              DgnArray<CWIDAC>::reallocElts(this + 208, 1, 1);
              v41 = v73;
              v43 = v74;
              v42 = v75;
              LODWORD(v45) = *(this + 54);
            }

            v46 = *(this + 26) + 24 * v45;
            *v46 = v39;
            *(v46 + 4) = v33;
            *(v46 + 8) = v41;
            *(v46 + 12) = v32;
            *(v46 + 14) = v42;
            *(v46 + 16) = v44 + v35;
            *(v46 + 20) = v43;
            v47 = *(this + 54);
            *(this + 54) = v47 + 1;
            if (v77 == 2 * *(this + 4))
            {
              v10 = v47 + 1;
            }

            else
            {
              v10 = v76;
            }

            ++v77;
          }
        }

        v29 += 2;
      }

      while ((v32 & 0x80000000) == 0);
      v9 = (v9 + 1);
      v8 = *(this + 50);
      v6 = v69;
      v11 = v77;
    }

    while (v9 < v8);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

LABEL_47:
  v93 = *(this + 58) + v78;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v72, v78, v6);
  }

  v91 = 0u;
  v92 = 0u;
  SnapTime::recordTime(&v91, 1, 0, 0, 0);
  v91 = vsubq_s64(v91, v94);
  v92 = vsubq_s64(v92, v95);
  v51 = *(this + 13);
  v52 = vaddq_s64(v51[1], v92);
  *v51 = vaddq_s64(*v51, v91);
  v51[1] = v52;
  v89 = 0u;
  v90 = 0u;
  SnapTime::recordTime(&v89, 1, 0, 0, 0);
  if (v11 > 2 * *(this + 4))
  {
    FstSearchLateLatticeHashBackoff::applyCutoffOnEmitting(this, v10, &v93);
  }

  v87 = 0u;
  v88 = 0u;
  SnapTime::recordTime(&v87, 1, 0, 0, 0);
  v53 = vsubq_s64(v87, v89);
  v54 = *(this + 13);
  v55 = v54[3];
  v56 = vaddq_s64(v54[2], v53);
  v87 = v53;
  v88 = vsubq_s64(v88, v90);
  v57 = vaddq_s64(v55, v88);
  v54[2] = v56;
  v54[3] = v57;
  v85 = 0u;
  v86 = 0u;
  SnapTime::recordTime(&v85, 1, 0, 0, 0);
  FstSearchLateLatticeBackoff::makeViterbiDecisionOnEmitting(this);
  v58 = *(this + 6);
  if (v58)
  {
    v59 = *(this + 50);
    if (v58 < v59)
    {
      mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(*(this + 24), v58, v59);
    }
  }

  v83 = 0u;
  v84 = 0u;
  SnapTime::recordTime(&v83, 1, 0, 0, 0);
  v60 = vsubq_s64(v83, v85);
  v61 = *(this + 13);
  v62 = v61[5];
  v63 = vaddq_s64(v61[4], v60);
  v83 = v60;
  v84 = vsubq_s64(v84, v86);
  v64 = vaddq_s64(v62, v84);
  v61[4] = v63;
  v61[5] = v64;
  v81 = 0u;
  v82 = 0u;
  SnapTime::recordTime(&v81, 1, 0, 0, 0);
  *(this + 54) = 0;
  v65 = *(this + 50);
  *(this + 38) = v65;
  if (a4)
  {
    *(a4 + 2) += v65;
    if (*(a4 + 2) > v65)
    {
      LODWORD(v65) = *(a4 + 2);
    }

    *(a4 + 2) = v65;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLateLatticeBackoff::seedFromMiniFst(this, v96);
  }

  if (a5)
  {
    FstSearchLateLatticeHashBackoff::propagateNulls(this, v93, v6, a4);
  }

  *(this + 56) = v6;
  v79 = 0u;
  v80 = 0u;
  SnapTime::recordTime(&v79, 1, 0, 0, 0);
  v66 = *(this + 13);
  result = vaddq_s64(v66[6], vsubq_s64(v79, v81));
  v68 = vaddq_s64(v66[7], vsubq_s64(v80, v82));
  v66[6] = result;
  v66[7] = v68;
  return result;
}

char **FstSearchLateLatticeBackoff::makeViterbiDecisionOnEmitting(char **this)
{
  v1 = this;
  v2 = *(this + 54);
  if (v2)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(this[26], v2, 24, 0);
    v3 = *(v1 + 216);
    *(v1 + 200) = 0;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      for (i = 0; i < v3; ++i)
      {
        v7 = *(v1 + 208);
        if (!v4 || *(v7 + v4 + 4) != *(v7 + v4 - 20))
        {
          if (v5 == *(v1 + 204))
          {
            this = DgnArray<CWIDAC>::reallocElts(v1 + 192, 1, 1);
            v5 = *(v1 + 200);
          }

          v8 = *(v1 + 192) + 24 * v5;
          v9 = *(v7 + v4);
          *(v8 + 16) = *(v7 + v4 + 16);
          *v8 = v9;
          v5 = *(v1 + 200) + 1;
          *(v1 + 200) = v5;
          v3 = *(v1 + 216);
        }

        v4 += 24;
      }
    }
  }

  else
  {
    *(this + 50) = 0;
  }

  return this;
}

uint64_t FstSearchLateLatticeBackoff::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = (*(v2 + 256) + v4);
        v7 = *v6;
        v8 = v6[4];
        v9 = v6[5];
        v10 = v6[6];
        v11 = v6[7];
        LODWORD(v6) = v6[2];
        v23[0] = 0;
        v23[1] = 0;
        v12 = -2 - v6;
        if (v11 == 16777213)
        {
          v13 = (*(v2 + 160) + 36 * v12);
          v11 = 16777209;
          if (*v13 == 16777209)
          {
            v12 = *(*(v2 + 176) + 16 * v13[2] + 12);
          }
        }

        v14 = *a2;
        v15 = *(v2 + 168);
        if (v15 == *(v2 + 172))
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v15) = *(v2 + 168);
        }

        v16 = *(v2 + 160);
        v17 = v16 + 36 * v15;
        *v17 = v11;
        *(v17 + 4) = v14;
        *(v17 + 8) = 0xFFFFFFFFLL;
        *(v17 + 16) = v7;
        *(v17 + 20) = v12;
        *(v17 + 24) = v8;
        *(v17 + 28) = v9;
        *(v17 + 32) = -2;
        v18 = *(v2 + 168);
        *(v2 + 168) = v18 + 1;
        *(v16 + 36 * v18 + 12) = 1;
        v19 = *(v2 + 200);
        if (v19 == *(v2 + 204))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v19) = *(v2 + 200);
        }

        v20 = *(v2 + 192) + 24 * v19;
        *v20 = v7;
        *(v20 + 4) = v10;
        *(v20 + 8) = v18;
        *(v20 + 12) = -2;
        *(v20 + 16) = v8;
        *(v20 + 20) = v9;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
        ++v5;
        v21 = *(v2 + 264);
        if (v21 >= *(v2 + 20))
        {
          v21 = *(v2 + 20);
        }

        v4 += 36;
      }

      while (v5 < v21);
    }
  }

  return this;
}

void sub_2626499B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLateLatticeBackoff::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLateLatticeBackoff::advanceDeltas(this, a2, a3, a4, a5);
  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v9 = 0u;
  v10 = 0u;
  SnapTime::recordTime(&v9, 1, 0, 0, 0);
  v6 = this[13];
  result = vaddq_s64(v6[14], vsubq_s64(v9, v11));
  v8 = vaddq_s64(v6[15], vsubq_s64(v10, v12));
  v6[14] = result;
  v6[15] = v8;
  return result;
}

_DWORD *FstSearchLateLatticeBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[50] = 0;
  return this;
}

double FstSearchLateLatticeBackoff::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLateLatticeBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLateLatticeBackoff::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 30, a3, this[4]);
    result = ArcGraph::findBackoffState(this[5]);
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLateLatticeBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLateLatticeHashBackoff::generateTraceTokensFromTraces(this);
  FstSearchLateLatticeBackoff::generateTraceTokensForLateLattice(this);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = this[13];
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

uint64_t FstSearchLateLatticeBackoff::generateTraceTokensForLateLattice(FstSearchLateLatticeBackoff *this)
{
  v1 = this;
  v122[1] = 0;
  v123 = 0;
  v124 = 0;
  v122[0] = 0;
  FstSearchLateLatticeHashBackoff::getTraceTimeBoundaries(this, &v123, v122);
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117[0] = 0;
  v117[1] = 0;
  v116 = 1879048192;
  v2 = (*(*v1 + 80))(v1, &v120, &v118, &v116, v117);
  v3 = *(v1 + 7);
  v4 = *(v1 + 2);
  v113 = -1;
  v115 = 256;
  v114 = *(v1 + 34);
  if (v2)
  {
    v111 = 0;
    v112 = 0;
    v5 = *(v1 + 42);
    if (v5)
    {
      v6 = 0;
      v96 = v4;
      v97 = v3;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            --v5;
            v7 = *(v1 + 20);
            if (*(v120 + v5))
            {
              break;
            }

            *(v7 + 36 * v5 + 8) = -1;
            if (!v5)
            {
              goto LABEL_76;
            }
          }

          v8 = (v7 + 36 * v5);
          v9 = *v8;
          v10 = *(v1 + 6);
          if (*(v10 + 388) > v9 && *(*(v10 + 104) + v9))
          {
            v11 = *(*(v10 + 72) + 2 * *(*(v10 + 48) + 4 * v9));
          }

          else
          {
            v11 = 0;
          }

          v12 = *(v1 + 11);
          v13 = *(v12 + 4 * v8[1]);
          v14 = *(v1 + 22);
          v15 = (v14 + 16 * v8[2]);
          v16 = *(v1 + 3);
          v17 = *(v117[0] + 4 * v5);
          HIWORD(v113) = v11;
          v101 = v15;
          v18 = v15[1].u32[1];
          if ((v18 & 0x80000000) == 0)
          {
            break;
          }

          v8[2] = v6;
          if (v6 == HIDWORD(v112))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v111, 1, 1);
            v6 = v112;
          }

          *(v111 + v6) = *v101->i8;
          v6 = v112 + 1;
          LODWORD(v112) = v112 + 1;
          *(*(v1 + 20) + 36 * v5 + 12) = 1;
          if (!v5)
          {
            goto LABEL_76;
          }
        }

        v19 = v7 + 36 * v18;
        v20 = *(v19 + 4);
        v21 = v20 ? *(v123 + (v20 - 1)) : 0;
        v106 = v16 + v116 - v17;
        v99 = (v14 + 16 * *(v19 + 8));
        v100 = v13 + v101->i32[0] - *(v12 + 4 * v20) - v99->i32[0];
        v98 = v99->i32[0] - *(v122[0] + 4 * v20);
        v22 = v6;
        v103 = v18;
        if (v21 < *(v123 + v20))
        {
          break;
        }

LABEL_42:
        if (v6 >= v22)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 150, "fst/fstsrch", 2, "%s", &unk_26287F8B0);
          v22 = v112;
        }

        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(v111 + 16 * v6, v22 - v6, 16, 0);
        v37 = v6 + 1;
        v38 = v112;
        if (v37 < v112)
        {
          v39 = 16 * (v6 + 1);
          v40 = v6;
          do
          {
            if (*(v111 + v39 + 8) != *(v111 + 4 * v40 + 2))
            {
              *(v111 + ++v40) = *(v111 + v39);
              v38 = v112;
            }

            ++v37;
            v39 += 16;
          }

          while (v37 < v38);
          LODWORD(v37) = v40 + 1;
        }

        v41 = v111;
        if (HIDWORD(v112) < v37)
        {
          v109 = 0;
          HIDWORD(v112) = realloc_array(v111, &v109, 16 * v37, 16 * v38, 16 * v38, 1) >> 4;
          v41 = v109;
          v111 = v109;
          v38 = v112;
        }

        if (v38 < v37)
        {
          v42 = v37 - v38;
          v43 = &v41[16 * v38];
          do
          {
            *v43 = xmmword_26287F850;
            v43 += 16;
            --v42;
          }

          while (v42);
        }

        LODWORD(v112) = v37;
        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(&v41[16 * v6], v37 - v6, 16, 0, xmmword_26287F850);
        v44 = 16 * v6;
        v45 = *(v111 + v44) + v4;
        if (v45 >= v106)
        {
          v45 = v106;
        }

        v46 = v112;
        v47 = *(v1 + 5) + v6;
        if (v112 < v47)
        {
          v47 = v112;
        }

        v48 = *(v1 + 20);
        *(v48 + 36 * v5 + 8) = v6;
        if (v6 < v47)
        {
          while (*(v111 + v44) <= v45)
          {
            v49 = *(v111 + v44 + 12);
            if ((v49 & 0x80000000) == 0)
            {
              *(v120 + v49) = 1;
              v50 = v49 == v103 ? 0 : v98 + v3;
              v51 = v50 + v100 + *(v117[0] + 4 * v5);
              if (*(v117[0] + 4 * v49) > v51)
              {
                *(v117[0] + 4 * v49) = v51;
              }
            }

            ++v6;
            v44 += 16;
            if (v47 == v6)
            {
              v6 = v47;
              break;
            }
          }

          v48 = *(v1 + 20);
          v46 = v112;
        }

        *(v48 + 36 * v5 + 12) = v6 - *(v48 + 36 * v5 + 8);
        if (HIDWORD(v112) < v6)
        {
          v109 = 0;
          HIDWORD(v112) = realloc_array(v111, &v109, 16 * v6, 16 * v46, 16 * v46, 1) >> 4;
          v111 = v109;
          v46 = v112;
        }

        if (v46 < v6)
        {
          v52 = v6 - v46;
          v53 = v111 + 16 * v46;
          do
          {
            *v53++ = xmmword_26287F850;
            --v52;
          }

          while (v52);
        }

        LODWORD(v112) = v6;
        if (!v5)
        {
LABEL_76:
          v54 = v111;
          v55 = HIDWORD(v112);
          v56 = *(v1 + 42);
          goto LABEL_78;
        }
      }

      v102 = v5;
      v105 = v98 + v3;
      v104 = v13 + v101->i32[0] - v99->i32[0];
      v23 = 36 * v21;
      while (1)
      {
        if (v18 == v21)
        {
          v24 = 0;
        }

        else
        {
          v24 = v105;
        }

        v25 = *(v1 + 20);
        v26 = (*(v1 + 22) + 16 * *(v25 + v23 + 8));
        if ((v104 + v24 + *v26) <= v106)
        {
          v27 = v1;
          v28 = *(v25 + 36 * v102);
          v29 = *(v25 + v23);
          v30 = v29 != 16777209 && ArcGraph::lexToCWID(v27[5], *(v25 + v23)) >> 25 != 126;
          if (v28 == 16777209)
          {
            v1 = v27;
            v18 = v103;
            if (v30)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v31 = v28 == 16777214 || v29 == 16777213;
            v1 = v27;
            v18 = v103;
            if (!v31)
            {
LABEL_35:
              isLexPelPhnMatch = FstSearchLateLatticeHashBackoff::isLexPelPhnMatch(v1, v21, &v113);
              v1 = v27;
              v18 = v103;
              if (isLexPelPhnMatch)
              {
                v33 = v112;
                if (v112 == HIDWORD(v112))
                {
                  DgnArray<DgnPrimArray<double>>::reallocElts(&v111, 1, 1);
                  v33 = v112;
                  v1 = v27;
                  v18 = v103;
                }

                *(v111 + v33) = *v26;
                v34 = v112;
                LODWORD(v112) = v112 + 1;
                v35 = (v111 + 16 * v34);
                v35[1].i32[1] = v21;
                *v35 = vadd_s32(vsub_s32(vadd_s32(*v101, vdup_n_s32(v24)), *v99), *v35);
                v36 = *(*(v1 + 20) + 36 * v102);
                if (v36 != 16777209)
                {
                  v35[1].i32[0] = v36 + 2 * v35[1].i32[0] + 1;
                }
              }
            }
          }
        }

        ++v21;
        v23 += 36;
        if (v21 >= *(v123 + v20))
        {
          v22 = v112;
          v4 = v96;
          v3 = v97;
          v5 = v102;
          goto LABEL_42;
        }
      }
    }

    v56 = 0;
    v6 = 0;
    v55 = 0;
    v54 = 0;
LABEL_78:
    v57 = *(v1 + 22);
    *(v1 + 22) = v54;
    v111 = v57;
    v58 = *(v1 + 47);
    *(v1 + 46) = v6;
    *(v1 + 47) = v55;
    LODWORD(v112) = 0;
    HIDWORD(v112) = v58;
    v110 = 0;
    v109 = 0;
    if (v56)
    {
      v59 = MemChunkAlloc(4 * v56, 0);
      v109 = v59;
      v110 = v56;
      if (*(v1 + 42))
      {
        v60 = 0;
        v61 = 0;
        v56 = 0;
        do
        {
          v62 = *(v1 + 20);
          v63 = (v62 + v60);
          if (*(v62 + v60 + 8) == -1)
          {
            *(v59 + v61) = -1;
          }

          else
          {
            if (v61 != v56)
            {
              v64 = v62 + 36 * v56;
              v65 = *v63;
              v66 = v63[1];
              *(v64 + 32) = *(v63 + 16);
              *v64 = v65;
              *(v64 + 16) = v66;
            }

            *(v59 + v61) = v56++;
          }

          ++v61;
          v67 = *(v1 + 42);
          v60 += 36;
        }

        while (v61 < v67);
        v68 = *(v1 + 43);
        if (v56 > v68)
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v1 + 160, v56 - v68, 0);
          LODWORD(v67) = *(v1 + 42);
        }

        if (v67 < v56)
        {
          v69 = v56 - v67;
          v70 = (*(v1 + 20) + 36 * v67 + 32);
          do
          {
            *(v70 - 2) = xmmword_26287F860;
            *(v70 - 1) = xmmword_26287F870;
            *v70 = -2;
            v70 += 18;
            --v69;
          }

          while (v69);
        }
      }

      else
      {
        v56 = 0;
      }
    }

    *(v1 + 42) = v56;
    v71 = *(v1 + 46);
    if (v71)
    {
      v72 = v109;
      v73 = (*(v1 + 22) + 12);
      do
      {
        v74 = *v73;
        if ((v74 & 0x80000000) == 0)
        {
          *v73 = v72[v74];
        }

        v73 += 4;
        --v71;
      }

      while (v71);
    }

    v75 = *(v1 + 50);
    v107 = 0;
    v108 = 0;
    if (v75)
    {
      v125[0] = 0;
      v76 = realloc_array(0, v125, 24 * v75, 0, 0, 1) / 0x18;
      HIDWORD(v108) = v76;
      v77 = v125[0];
      v107 = v125[0];
      v78 = v125[0] + 16;
      v79 = v75;
      do
      {
        *(v78 - 2) = 0xFFFFFFFF00000000;
        *(v78 - 2) = -1;
        *(v78 - 2) = -2;
        *v78 = 0;
        v78 += 3;
        --v79;
      }

      while (v79);
    }

    else
    {
      v77 = 0;
      LODWORD(v76) = 0;
    }

    LODWORD(v108) = v75;
    v80 = *(v1 + 50);
    if (v80)
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = v109;
      do
      {
        v85 = *(v1 + 38);
        if (v83 < v85 && v82 == v85)
        {
          *(v1 + 38) = v83;
        }

        v87 = (*(v1 + 24) + v81);
        v88 = *(v87 + 2);
        if (v88 == -1 || v84[v88] != -1)
        {
          v89 = &v77[3 * v83];
          v90 = *v87;
          v89[2] = *(v87 + 2);
          *v89 = v90;
          v91 = *(*(v1 + 24) + v81 + 8);
          if (v91 != -1)
          {
            LODWORD(v91) = v84[v91];
          }

          *(v89 + 2) = v91;
          ++v83;
          v80 = *(v1 + 50);
        }

        ++v82;
        v81 += 24;
      }

      while (v82 < v80);
    }

    else
    {
      v83 = 0;
    }

    if (v83 < *(v1 + 38))
    {
      *(v1 + 38) = v83;
    }

    if (v76 < v83)
    {
      v125[0] = 0;
      v76 = realloc_array(v77, v125, 24 * v83, 24 * v75, 24 * v75, 1) / 0x18;
      v77 = v125[0];
      LODWORD(v75) = v108;
    }

    if (v75 < v83)
    {
      v92 = v83 - v75;
      v93 = &v77[3 * v75 + 2];
      do
      {
        *(v93 - 2) = 0xFFFFFFFF00000000;
        *(v93 - 2) = -1;
        *(v93 - 2) = -2;
        *v93 = 0;
        v93 += 3;
        --v92;
      }

      while (v92);
    }

    v94 = *(v1 + 24);
    *(v1 + 24) = v77;
    v107 = v94;
    LODWORD(v94) = *(v1 + 51);
    *(v1 + 50) = v83;
    *(v1 + 51) = v76;
    LODWORD(v108) = 0;
    HIDWORD(v108) = v94;
    DgnIArray<Utterance *>::~DgnIArray(&v107);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v109);
    DgnIArray<Utterance *>::~DgnIArray(&v111);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v117);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v118);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v122);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v123);
}

void sub_26264A5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a25);
  DgnIArray<Utterance *>::~DgnIArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 160);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v30 - 128);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 112);
  _Unwind_Resume(a1);
}

void FstSearchLateLatticeBackoff::printSize(FstSearchLateLatticeBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950);
  if (v72)
  {
    v13 = v71;
  }

  else
  {
    v13 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v13);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26287F8B0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952);
  if (v72)
  {
    v18 = v71;
  }

  else
  {
    v18 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954);
  if (v72)
  {
    v20 = v71;
  }

  else
  {
    v20 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955);
  if (v72)
  {
    v22 = v71;
  }

  else
  {
    v22 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v66 = a2;
  v67 = a6;
  v68 = a3;
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956);
  if (v72)
  {
    v24 = v71;
  }

  else
  {
    v24 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = *(this + 42);
  v27 = 24 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 24 * (*(this + 43) - v26);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957);
  if (v72)
  {
    v31 = v71;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 16 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 16 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 50);
  v41 = 22 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 22 * (*(this + 51) - v40);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964);
  if (v72)
  {
    v45 = v71;
  }

  else
  {
    v45 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26287F8B0, v16, v16, v45, v43, v42, 0);
  DgnString::~DgnString(&v71);
  *a4 += v43;
  *a5 += v42;
  v46 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  v47 = *(this + 54);
  v48 = 22 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 22 * (*(this + 55) - v47);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966);
  if (v72)
  {
    v52 = v71;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26287F8B0, v16, v16, v52, v50, v49, 0);
  DgnString::~DgnString(&v71);
  *a4 += v50;
  *a5 += v49;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968);
  if (v72)
  {
    v54 = v71;
  }

  else
  {
    v54 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_26287F8B0, v16, v16, v54, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970);
  if (v72)
  {
    v56 = v71;
  }

  else
  {
    v56 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v15, &unk_26287F8B0, v16, v16, v56, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972);
  if (v72)
  {
    v58 = v71;
  }

  else
  {
    v58 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &unk_26287F8B0, v16, v16, v58, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v59 = sizeObject(this + 240, 0);
  v60 = sizeObject(this + 240, 1);
  v61 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974);
  if (v72)
  {
    v63 = v71;
  }

  else
  {
    v63 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26287F8B0, v16, v16, v63, v59, v60, v61);
  DgnString::~DgnString(&v71);
  *a4 += v59;
  *a5 += v60;
  *v67 += v61;
  v69 = 0;
  v70 = 0;
  SearchItf::printSize(this, v66, v15, &v70, &v69, &v69);
  *a4 += v70;
  *a5 += v69;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985);
  if (v72)
  {
    v65 = v71;
  }

  else
  {
    v65 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v68, &unk_26287F8B0, (35 - v68), (35 - v68), v65, *a4, *a5, *v67);
  DgnString::~DgnString(&v71);
}

BOOL FstSearchLateLatticeBackoff::findBestPath(uint64_t a1, uint64_t **a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a3 + 8) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v10;
  }

  if (v10)
  {
    v12 = *(a2 + 2) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a2 = MemChunkAlloc(v10, 0);
    *(a2 + 2) = v10;
  }

  else if (!v10)
  {
    goto LABEL_16;
  }

  v13 = 0;
  do
  {
    *(*a2 + v13) = 0;
    *(*a3 + v13++) = 0;
  }

  while (v10 != v13);
LABEL_16:
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1 || (v15 = *(a1 + 160), v16 = *(v15 + 36 * BestTrace + 16) + *(*(a1 + 88) + 4 * *(v15 + 36 * BestTrace + 4)), *a4 = v16, v16 == 1879048192))
  {
    v17 = 1879048192;
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = v18 - 1;
      v20 = 36 * v18;
      v21 = *(v15 + 36 * BestTrace + 4);
      v22 = 1879048192;
      do
      {
        if (*(v15 + v20 - 32) == v21 && *(v15 + v20 - 36) == 16777213 && !*(*a2 + v19))
        {
          *(*a2 + v19) = 2;
          *(*a3 + v19) = 1;
          v15 = *(a1 + 160);
          if (v22 >= *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32)))
          {
            v22 = *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32));
          }
        }

        --v19;
        v20 -= 36;
      }

      while (v19 != -1);
      v16 = *a4;
      v23 = *(a1 + 168);
    }

    else
    {
      v23 = 0;
      v22 = 1879048192;
    }

    v24 = *(a1 + 28);
    if (v16 <= v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v16 - v22;
    }

    v26 = *(a5 + 3);
    v27 = v23;
    if (v23 > v26)
    {
      DgnPrimArray<unsigned int>::reallocElts(a5, v23 - v26, 0);
      v27 = *(a1 + 168);
    }

    *(a5 + 2) = v23;
    v17 = *a4;
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = v17 - (v25 + v24) + *(a1 + 12);
      do
      {
        v31 = *a2;
        v32 = *(*a2 + v29);
        if (v32 == 2)
        {
          v33 = *a5;
          if (*(*(a1 + 176) + 16 * *(*(a1 + 160) + v28 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + v28 + 4)) <= v30)
          {
            *(v33 + 4 * v29) = v25 + v24;
            *(v31 + v29) = 1;
          }

          else
          {
            *(v33 + 4 * v29) = 1879048192;
            *(v31 + v29) = 0;
          }
        }

        else if (v32 == 1)
        {
          *(*a5 + 4 * v29) = 0;
        }

        else
        {
          *(*a5 + 4 * v29) = 1879048192;
        }

        ++v29;
        v28 += 36;
      }

      while (v29 < *(a1 + 168));
      v17 = *a4;
    }
  }

  return v17 != 1879048192;
}

uint64_t FstSearchLateLatticeBackoff::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLateLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 36 * v11);
        if (*v13 != 16777209 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 16 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLateLatticeBackoff::createLatticeLink(a1, v11, v15, 0xFFFFFFFF, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLateLatticeBackoff::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 36 * v11 + 12) + *(*(a1 + 160) + 36 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_26264B2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLateLatticeBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 36 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 16 * v19 + 12) == a2)
      {
        v22 = (v21 + 16 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(v44, *(a1 + 40), *(v16 + 36 * a2));
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (LODWORD(v44[0]) >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((a4 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 36 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 36 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v35 = *(v30 + 36 * a4 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 36 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 36 * a4 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_26264B500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLateLatticeBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchLateLatticeBackoff::endTopRecSyncRecog(FstSearchLateLatticeBackoff *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLateLatticeBackoff::getBestExitScore(FstSearchLateLatticeBackoff *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 24 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 36 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v18))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v17, 1, 1);
          v5 = v18;
          v4 = v17;
        }

        v4[v5] = v8;
        v5 = v18 + 1;
        LODWORD(v18) = v18 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 24;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = *(this + 20);
    v10 = v5;
    v11 = 1879048192;
    do
    {
      v12 = *v4++;
      v13 = v9 + 36 * v12;
      v14 = *(v13 + 16);
      if (v11 > v14)
      {
        *(this + 57) = *(v13 + 20);
        v11 = v14;
      }

      --v10;
    }

    while (v10);
  }

  else
  {
LABEL_16:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v15 = 20000;
  }

  else
  {
    v15 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  return v15;
}

uint64_t FstSearchLateLatticeBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLateLatticeBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 24;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

unint64_t FstSearchLateLatticeBackoff::seedTheory(FstSearchLateLatticeBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 42);
    if (v11 == *(this + 43))
    {
      DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 36 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = 0xFFFFFFFFLL;
    *(v12 + 16) = a2;
    *(v12 + 20) = 0xFFFFFFFFLL;
    *(v12 + 28) = 0;
    *(v12 + 32) = -2;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 50);
  if (v14 == *(this + 51))
  {
    DgnArray<CWIDAC>::reallocElts(this + 192, 1, 1);
    v14 = *(this + 50);
  }

  v15 = *(this + 24) + 24 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  LODWORD(v15) = *(this + 50) + 1;
  *(this + 50) = v15;
  *(this + 38) = v15;

  return FstSearchLateLatticeHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLateLatticeBackoff::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 57);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 36 * v6);
    for (i = v8[5]; i != -1; v6 = v14)
    {
      v14 = i;
      result = v7[5];
      if (*v8 == 16777209)
      {
        v15 = (*(result + 87) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v8);
        v15 = result;
      }

      v16 = *(a2 + 8);
      if (v16 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v16 = *(a2 + 8);
      }

      *(*a2 + 4 * v16) = v15;
      ++*(a2 + 8);
      v17 = *(a6 + 8);
      if (v17 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v17 = *(a6 + 8);
      }

      *(*a6 + 4 * v17) = v6;
      ++*(a6 + 8);
      v18 = v7[20];
      v19 = *(v18 + 36 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v18 + 36 * v6 + 16);
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 36 * v14);
      i = v8[5];
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchLateLatticeBackoff::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
{
  v3 = *(this + 40);
  if (*(v3 + 178) == 1)
  {
    result = ArcGraph::ensureHeaderValid(*(this + 40), "Header");
    if (*(v3 + 202) == 1)
    {
      v8 = *(this + 140);
      if (*(v3 + 188) != v8)
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchInterWordSilencePenalty", *(v3 + 188), v8);
      }
    }

    v9 = *(this + 136);
    if (*(v3 + 192) != v9)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchPerWordPenalty", *(v3 + 192), v9);
    }

    v10 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 40) + 174)) + 608);
    if (*(v3 + 196) != v10)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "Voc", *(v3 + 196), v10);
    }

    v11 = *(v3 + 203);
    if (a3)
    {
      if (a2)
      {
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v12 = 1;
      }

      else
      {
        if (v11)
        {
          return result;
        }

        v12 = 0;
      }

      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "DropAlternateFrames", v12, v11);
    }

    else if (a2 & 1) != 0 || (v11)
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "NoDecimation", a2, v11);
    }
  }

  return result;
}

uint64_t FstSearchLateLatticeBackoff::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLateLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (*(a3 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *a3 + v12;
      v16 = *(v15 + 28);
      WordLatticeLC::WordLatticeLC(v20, v15, v14, *(v15 + 24) - v14, v16 - *(v15 + 24), v21);
      v17 = *(a2 + 8);
      if (v17 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v17) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v17), v20);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v20);
      ++v13;
      v12 += 32;
      v14 = v16;
    }

    while (v13 < *(a3 + 8));
  }

  v18 = a1[20] + 36 * v11;
  return (*(v18 + 16) + *(a1[11] + 4 * *(v18 + 4)));
}

int64x2_t FstSearchLateLattice::advanceDeltas(FstSearchLateLattice *this, int a2, int a3, SearchStats *a4, int a5)
{
  v6 = a2;
  v97[0] = a2;
  v95 = 0u;
  v96 = 0u;
  SnapTime::recordTime(&v95, 1, 0, 0, 0);
  *(this + 58) = a3;
  v79 = *(this + 2);
  v74 = (this + 232);
  v8 = *(this + 50);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(this + 24);
      v13 = *(this + 5);
      v14 = 24 * v11 + 12;
      while (1)
      {
        v15 = *(v12 + v14 - 8);
        if (*(v13 + 160) != v15)
        {
          break;
        }

        ++v11;
        v14 += 24;
        if (v11 >= v8)
        {
          goto LABEL_42;
        }
      }

      v78 = v10;
      v70 = v6;
      if (*(v13 + 140) > v15)
      {
        v16 = v9;
        v17 = *(v12 + v14 - 12);
        v18 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v12 + v14)) + v17;
        v19 = *(this + 58);
        if (v18 - v79 <= v19)
        {
          if (v19 > v18)
          {
            *v74 = v18;
          }

          v20 = *(this + 24) + v14;
          v21 = *(v20 - 8);
          v22 = *v20;
          v23 = *(v20 + 2);
          v24 = *(v20 + 4);
          v25 = *(this + 54);
          if (v25 == *(this + 55))
          {
            DgnArray<CWIDAC>::reallocElts(this + 208, 1, 1);
            LODWORD(v25) = *(this + 54);
          }

          v26 = *(this + 26) + 24 * v25;
          *v26 = v18;
          *(v26 + 4) = v21;
          *(v26 + 12) = v22;
          *(v26 + 14) = v23;
          *(v26 + 16) = v24;
          v27 = *(this + 54);
          *(this + 54) = v27 + 1;
          if (v78 == 2 * *(this + 4))
          {
            v9 = (v27 + 1);
          }

          else
          {
            v9 = v16;
          }

          ++v78;
        }

        else
        {
          v9 = v16;
        }
      }

      v28 = v15;
      v73 = this;
      do
      {
        v29 = *(this + 5);
        v30 = *(v29 + 152);
        v31 = *(v30 + 4 * v28);
        v32 = *(v30 + 4 * (v28 + 1));
        v33 = *(v29 + 140);
        if (v33 <= v32)
        {
          if (v33 <= v15 && (*(this + 356) & 1) != 0)
          {
            v49 = (v31 & 0xFFFFF) <= 0xFFFF3 ? v31 & 0xFFFFF : v31 & 0xFFFFF | 0xF00000;
            if (v49 != 16777210)
            {
              DgnString::DgnString(&v92);
              ArcGraph::getNameAndHumanReadablePron(*(this + 5), v49, &v92);
              v51 = &unk_26287F8B0;
              if (v92.i32[2])
              {
                v51 = v92.i64[0];
              }

              xprintf("Seed from state %d score %d trace %d, %s\n", v50, v15, *(*(this + 24) + v14 - 12), *(*(this + 24) + v14 - 4), v51);
              MiniFst::seed(this + 240, *(*(this + 24) + v14 - 12), *(*(this + 24) + v14 + 8), *(*(this + 24) + v14 - 4), v32);
              DgnString::~DgnString(&v92);
            }
          }
        }

        else
        {
          v34 = (v31 >> 20) & 0x3FF;
          ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v30 + 4 * v28));
          v36 = *(this + 24);
          v37 = ScoreNoBackoff + v34 + *(v36 + v14 - 12);
          v38 = *(this + 58);
          if (v37 - v79 <= v38)
          {
            v77 = v9;
            if (v38 > v37)
            {
              *v74 = v37;
            }

            v39 = v36 + v14;
            v40 = *(v39 - 4);
            v41 = *(v39 + 2);
            v43 = *(v39 + 4);
            v42 = *(v39 + 8);
            v44 = *(this + 54);
            if (v44 == *(this + 55))
            {
              v45 = this + 208;
              v75 = v40;
              v76 = v41;
              v46 = v42;
              DgnArray<CWIDAC>::reallocElts(v45, 1, 1);
              v40 = v75;
              v41 = v76;
              v42 = v46;
              this = v73;
              LODWORD(v44) = *(v73 + 54);
            }

            v47 = *(this + 26) + 24 * v44;
            *v47 = v37;
            *(v47 + 4) = v32;
            *(v47 + 8) = v40;
            *(v47 + 12) = v31;
            *(v47 + 14) = v41;
            *(v47 + 16) = v43 + v34;
            *(v47 + 20) = v42;
            v48 = *(this + 54);
            *(this + 54) = v48 + 1;
            if (v78 == 2 * *(this + 4))
            {
              v9 = (v48 + 1);
            }

            else
            {
              v9 = v77;
            }

            ++v78;
          }
        }

        v28 += 2;
      }

      while ((v31 & 0x80000000) == 0);
      v11 = (v11 + 1);
      v8 = *(this + 50);
      v6 = v70;
      v10 = v78;
    }

    while (v11 < v8);
  }

  else
  {
    v10 = 0;
    LODWORD(v9) = 0;
  }

LABEL_42:
  v94 = *(this + 58) + v79;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v74, v79, v6);
  }

  v92 = 0u;
  v93 = 0u;
  SnapTime::recordTime(&v92, 1, 0, 0, 0);
  v92 = vsubq_s64(v92, v95);
  v93 = vsubq_s64(v93, v96);
  v52 = *(this + 13);
  v53 = vaddq_s64(v52[1], v93);
  *v52 = vaddq_s64(*v52, v92);
  v52[1] = v53;
  v90 = 0u;
  v91 = 0u;
  SnapTime::recordTime(&v90, 1, 0, 0, 0);
  if (v10 > 2 * *(this + 4))
  {
    FstSearchLateLatticeHashBackoff::applyCutoffOnEmitting(this, v9, &v94);
  }

  v88 = 0u;
  v89 = 0u;
  SnapTime::recordTime(&v88, 1, 0, 0, 0);
  v54 = vsubq_s64(v88, v90);
  v55 = *(this + 13);
  v56 = v55[3];
  v57 = vaddq_s64(v55[2], v54);
  v88 = v54;
  v89 = vsubq_s64(v89, v91);
  v58 = vaddq_s64(v56, v89);
  v55[2] = v57;
  v55[3] = v58;
  v86 = 0u;
  v87 = 0u;
  SnapTime::recordTime(&v86, 1, 0, 0, 0);
  FstSearchLateLatticeBackoff::makeViterbiDecisionOnEmitting(this);
  v59 = *(this + 6);
  if (v59)
  {
    v60 = *(this + 50);
    if (v59 < v60)
    {
      mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(*(this + 24), v59, v60);
    }
  }

  v84 = 0u;
  v85 = 0u;
  SnapTime::recordTime(&v84, 1, 0, 0, 0);
  v61 = vsubq_s64(v84, v86);
  v62 = *(this + 13);
  v63 = v62[5];
  v64 = vaddq_s64(v62[4], v61);
  v84 = v61;
  v85 = vsubq_s64(v85, v87);
  v65 = vaddq_s64(v63, v85);
  v62[4] = v64;
  v62[5] = v65;
  v82 = 0u;
  v83 = 0u;
  SnapTime::recordTime(&v82, 1, 0, 0, 0);
  *(this + 54) = 0;
  v66 = *(this + 50);
  *(this + 38) = v66;
  if (a4)
  {
    *(a4 + 2) += v66;
    if (*(a4 + 2) > v66)
    {
      LODWORD(v66) = *(a4 + 2);
    }

    *(a4 + 2) = v66;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLateLattice::seedFromMiniFst(this, v97);
  }

  if (a5)
  {
    FstSearchLateLatticeHashBackoff::propagateNulls(this, v94, v6, a4);
  }

  *(this + 56) = v6;
  v80 = 0u;
  v81 = 0u;
  SnapTime::recordTime(&v80, 1, 0, 0, 0);
  v67 = *(this + 13);
  result = vaddq_s64(v67[6], vsubq_s64(v80, v82));
  v69 = vaddq_s64(v67[7], vsubq_s64(v81, v83));
  v67[6] = result;
  v67[7] = v69;
  return result;
}

uint64_t FstSearchLateLattice::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = (*(v2 + 256) + v4);
        v7 = *v6;
        v8 = v6[4];
        v9 = v6[5];
        v10 = v6[6];
        v11 = v6[7];
        LODWORD(v6) = v6[2];
        v23[0] = 0;
        v23[1] = 0;
        v12 = -2 - v6;
        if (v11 == 16777213)
        {
          v13 = (*(v2 + 160) + 36 * v12);
          v11 = 16777209;
          if (*v13 == 16777209)
          {
            v12 = *(*(v2 + 176) + 16 * v13[2] + 12);
          }
        }

        v14 = *a2;
        v15 = *(v2 + 168);
        if (v15 == *(v2 + 172))
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v15) = *(v2 + 168);
        }

        v16 = *(v2 + 160);
        v17 = v16 + 36 * v15;
        *v17 = v11;
        *(v17 + 4) = v14;
        *(v17 + 8) = 0xFFFFFFFFLL;
        *(v17 + 16) = v7;
        *(v17 + 20) = v12;
        *(v17 + 24) = v8;
        *(v17 + 28) = v9;
        *(v17 + 32) = -2;
        v18 = *(v2 + 168);
        *(v2 + 168) = v18 + 1;
        *(v16 + 36 * v18 + 12) = 1;
        v19 = *(v2 + 200);
        if (v19 == *(v2 + 204))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v19) = *(v2 + 200);
        }

        v20 = *(v2 + 192) + 24 * v19;
        *v20 = v7;
        *(v20 + 4) = v10;
        *(v20 + 8) = v18;
        *(v20 + 12) = -2;
        *(v20 + 16) = v8;
        *(v20 + 20) = v9;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
        ++v5;
        v21 = *(v2 + 264);
        if (v21 >= *(v2 + 20))
        {
          v21 = *(v2 + 20);
        }

        v4 += 36;
      }

      while (v5 < v21);
    }
  }

  return this;
}

void sub_26264C594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLateLattice::vite(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLateLattice::advanceDeltas(this, a2, a3, a4, a5);
  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v9 = 0u;
  v10 = 0u;
  SnapTime::recordTime(&v9, 1, 0, 0, 0);
  v6 = this[13];
  result = vaddq_s64(v6[14], vsubq_s64(v9, v11));
  v8 = vaddq_s64(v6[15], vsubq_s64(v10, v12));
  v6[14] = result;
  v6[15] = v8;
  return result;
}

_DWORD *FstSearchLateLattice::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[50] = 0;
  return this;
}

double FstSearchLateLattice::doFrame(int64x2_t **this, int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLateLattice::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLateLattice::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 30, a3, this[4]);
    result = ArcGraph::findBackoffState(this[5]);
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLateLattice::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLateLatticeHashBackoff::generateTraceTokensFromTraces(this);
  FstSearchLateLattice::generateTraceTokensForLateLattice(this);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = this[13];
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

uint64_t FstSearchLateLattice::generateTraceTokensForLateLattice(FstSearchLateLattice *this)
{
  v1 = this;
  v122[1] = 0;
  v123 = 0;
  v124 = 0;
  v122[0] = 0;
  FstSearchLateLatticeHashBackoff::getTraceTimeBoundaries(this, &v123, v122);
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117[0] = 0;
  v117[1] = 0;
  v116 = 1879048192;
  v2 = (*(*v1 + 80))(v1, &v120, &v118, &v116, v117);
  v3 = *(v1 + 7);
  v4 = *(v1 + 2);
  v113 = -1;
  v115 = 256;
  v114 = *(v1 + 34);
  if (v2)
  {
    v111 = 0;
    v112 = 0;
    v5 = *(v1 + 42);
    if (v5)
    {
      v6 = 0;
      v96 = v4;
      v97 = v3;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            --v5;
            v7 = *(v1 + 20);
            if (*(v120 + v5))
            {
              break;
            }

            *(v7 + 36 * v5 + 8) = -1;
            if (!v5)
            {
              goto LABEL_76;
            }
          }

          v8 = (v7 + 36 * v5);
          v9 = *v8;
          v10 = *(v1 + 6);
          if (*(v10 + 388) > v9 && *(*(v10 + 104) + v9))
          {
            v11 = *(*(v10 + 72) + 2 * *(*(v10 + 48) + 4 * v9));
          }

          else
          {
            v11 = 0;
          }

          v12 = *(v1 + 11);
          v13 = *(v12 + 4 * v8[1]);
          v14 = *(v1 + 22);
          v15 = (v14 + 16 * v8[2]);
          v16 = *(v1 + 3);
          v17 = *(v117[0] + 4 * v5);
          HIWORD(v113) = v11;
          v101 = v15;
          v18 = v15[1].u32[1];
          if ((v18 & 0x80000000) == 0)
          {
            break;
          }

          v8[2] = v6;
          if (v6 == HIDWORD(v112))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v111, 1, 1);
            v6 = v112;
          }

          *(v111 + v6) = *v101->i8;
          v6 = v112 + 1;
          LODWORD(v112) = v112 + 1;
          *(*(v1 + 20) + 36 * v5 + 12) = 1;
          if (!v5)
          {
            goto LABEL_76;
          }
        }

        v19 = v7 + 36 * v18;
        v20 = *(v19 + 4);
        v21 = v20 ? *(v123 + (v20 - 1)) : 0;
        v106 = v16 + v116 - v17;
        v99 = (v14 + 16 * *(v19 + 8));
        v100 = v13 + v101->i32[0] - *(v12 + 4 * v20) - v99->i32[0];
        v98 = v99->i32[0] - *(v122[0] + 4 * v20);
        v22 = v6;
        v103 = v18;
        if (v21 < *(v123 + v20))
        {
          break;
        }

LABEL_42:
        if (v6 >= v22)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 150, "fst/fstsrch", 2, "%s", &unk_26287F8B0);
          v22 = v112;
        }

        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTokLmhst>(v111 + 16 * v6, v22 - v6, 16, 0);
        v37 = v6 + 1;
        v38 = v112;
        if (v37 < v112)
        {
          v39 = 16 * (v6 + 1);
          v40 = v6;
          do
          {
            if (*(v111 + v39 + 8) != *(v111 + 4 * v40 + 2))
            {
              *(v111 + ++v40) = *(v111 + v39);
              v38 = v112;
            }

            ++v37;
            v39 += 16;
          }

          while (v37 < v38);
          LODWORD(v37) = v40 + 1;
        }

        v41 = v111;
        if (HIDWORD(v112) < v37)
        {
          v109 = 0;
          HIDWORD(v112) = realloc_array(v111, &v109, 16 * v37, 16 * v38, 16 * v38, 1) >> 4;
          v41 = v109;
          v111 = v109;
          v38 = v112;
        }

        if (v38 < v37)
        {
          v42 = v37 - v38;
          v43 = &v41[16 * v38];
          do
          {
            *v43 = xmmword_26287F850;
            v43 += 16;
            --v42;
          }

          while (v42);
        }

        LODWORD(v112) = v37;
        mrec_qsort_r<FstSearchLateLatticeHashBackoffcmpTok>(&v41[16 * v6], v37 - v6, 16, 0, xmmword_26287F850);
        v44 = 16 * v6;
        v45 = *(v111 + v44) + v4;
        if (v45 >= v106)
        {
          v45 = v106;
        }

        v46 = v112;
        v47 = *(v1 + 5) + v6;
        if (v112 < v47)
        {
          v47 = v112;
        }

        v48 = *(v1 + 20);
        *(v48 + 36 * v5 + 8) = v6;
        if (v6 < v47)
        {
          while (*(v111 + v44) <= v45)
          {
            v49 = *(v111 + v44 + 12);
            if ((v49 & 0x80000000) == 0)
            {
              *(v120 + v49) = 1;
              v50 = v49 == v103 ? 0 : v98 + v3;
              v51 = v50 + v100 + *(v117[0] + 4 * v5);
              if (*(v117[0] + 4 * v49) > v51)
              {
                *(v117[0] + 4 * v49) = v51;
              }
            }

            ++v6;
            v44 += 16;
            if (v47 == v6)
            {
              v6 = v47;
              break;
            }
          }

          v48 = *(v1 + 20);
          v46 = v112;
        }

        *(v48 + 36 * v5 + 12) = v6 - *(v48 + 36 * v5 + 8);
        if (HIDWORD(v112) < v6)
        {
          v109 = 0;
          HIDWORD(v112) = realloc_array(v111, &v109, 16 * v6, 16 * v46, 16 * v46, 1) >> 4;
          v111 = v109;
          v46 = v112;
        }

        if (v46 < v6)
        {
          v52 = v6 - v46;
          v53 = v111 + 16 * v46;
          do
          {
            *v53++ = xmmword_26287F850;
            --v52;
          }

          while (v52);
        }

        LODWORD(v112) = v6;
        if (!v5)
        {
LABEL_76:
          v54 = v111;
          v55 = HIDWORD(v112);
          v56 = *(v1 + 42);
          goto LABEL_78;
        }
      }

      v102 = v5;
      v105 = v98 + v3;
      v104 = v13 + v101->i32[0] - v99->i32[0];
      v23 = 36 * v21;
      while (1)
      {
        if (v18 == v21)
        {
          v24 = 0;
        }

        else
        {
          v24 = v105;
        }

        v25 = *(v1 + 20);
        v26 = (*(v1 + 22) + 16 * *(v25 + v23 + 8));
        if ((v104 + v24 + *v26) <= v106)
        {
          v27 = v1;
          v28 = *(v25 + 36 * v102);
          v29 = *(v25 + v23);
          v30 = v29 != 16777209 && ArcGraph::lexToCWID(v27[5], *(v25 + v23)) >> 25 != 126;
          if (v28 == 16777209)
          {
            v1 = v27;
            v18 = v103;
            if (v30)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v31 = v28 == 16777214 || v29 == 16777213;
            v1 = v27;
            v18 = v103;
            if (!v31)
            {
LABEL_35:
              isLexPelPhnMatch = FstSearchLateLatticeHashBackoff::isLexPelPhnMatch(v1, v21, &v113);
              v1 = v27;
              v18 = v103;
              if (isLexPelPhnMatch)
              {
                v33 = v112;
                if (v112 == HIDWORD(v112))
                {
                  DgnArray<DgnPrimArray<double>>::reallocElts(&v111, 1, 1);
                  v33 = v112;
                  v1 = v27;
                  v18 = v103;
                }

                *(v111 + v33) = *v26;
                v34 = v112;
                LODWORD(v112) = v112 + 1;
                v35 = (v111 + 16 * v34);
                v35[1].i32[1] = v21;
                *v35 = vadd_s32(vsub_s32(vadd_s32(*v101, vdup_n_s32(v24)), *v99), *v35);
                v36 = *(*(v1 + 20) + 36 * v102);
                if (v36 != 16777209)
                {
                  v35[1].i32[0] = v36 + 2 * v35[1].i32[0] + 1;
                }
              }
            }
          }
        }

        ++v21;
        v23 += 36;
        if (v21 >= *(v123 + v20))
        {
          v22 = v112;
          v4 = v96;
          v3 = v97;
          v5 = v102;
          goto LABEL_42;
        }
      }
    }

    v56 = 0;
    v6 = 0;
    v55 = 0;
    v54 = 0;
LABEL_78:
    v57 = *(v1 + 22);
    *(v1 + 22) = v54;
    v111 = v57;
    v58 = *(v1 + 47);
    *(v1 + 46) = v6;
    *(v1 + 47) = v55;
    LODWORD(v112) = 0;
    HIDWORD(v112) = v58;
    v110 = 0;
    v109 = 0;
    if (v56)
    {
      v59 = MemChunkAlloc(4 * v56, 0);
      v109 = v59;
      v110 = v56;
      if (*(v1 + 42))
      {
        v60 = 0;
        v61 = 0;
        v56 = 0;
        do
        {
          v62 = *(v1 + 20);
          v63 = (v62 + v60);
          if (*(v62 + v60 + 8) == -1)
          {
            *(v59 + v61) = -1;
          }

          else
          {
            if (v61 != v56)
            {
              v64 = v62 + 36 * v56;
              v65 = *v63;
              v66 = v63[1];
              *(v64 + 32) = *(v63 + 16);
              *v64 = v65;
              *(v64 + 16) = v66;
            }

            *(v59 + v61) = v56++;
          }

          ++v61;
          v67 = *(v1 + 42);
          v60 += 36;
        }

        while (v61 < v67);
        v68 = *(v1 + 43);
        if (v56 > v68)
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v1 + 160, v56 - v68, 0);
          LODWORD(v67) = *(v1 + 42);
        }

        if (v67 < v56)
        {
          v69 = v56 - v67;
          v70 = (*(v1 + 20) + 36 * v67 + 32);
          do
          {
            *(v70 - 2) = xmmword_26287F860;
            *(v70 - 1) = xmmword_26287F870;
            *v70 = -2;
            v70 += 18;
            --v69;
          }

          while (v69);
        }
      }

      else
      {
        v56 = 0;
      }
    }

    *(v1 + 42) = v56;
    v71 = *(v1 + 46);
    if (v71)
    {
      v72 = v109;
      v73 = (*(v1 + 22) + 12);
      do
      {
        v74 = *v73;
        if ((v74 & 0x80000000) == 0)
        {
          *v73 = v72[v74];
        }

        v73 += 4;
        --v71;
      }

      while (v71);
    }

    v75 = *(v1 + 50);
    v107 = 0;
    v108 = 0;
    if (v75)
    {
      v125[0] = 0;
      v76 = realloc_array(0, v125, 24 * v75, 0, 0, 1) / 0x18;
      HIDWORD(v108) = v76;
      v77 = v125[0];
      v107 = v125[0];
      v78 = v125[0] + 16;
      v79 = v75;
      do
      {
        *(v78 - 2) = 0xFFFFFFFF00000000;
        *(v78 - 2) = -1;
        *(v78 - 2) = -2;
        *v78 = 0;
        v78 += 3;
        --v79;
      }

      while (v79);
    }

    else
    {
      v77 = 0;
      LODWORD(v76) = 0;
    }

    LODWORD(v108) = v75;
    v80 = *(v1 + 50);
    if (v80)
    {
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = v109;
      do
      {
        v85 = *(v1 + 38);
        if (v83 < v85 && v82 == v85)
        {
          *(v1 + 38) = v83;
        }

        v87 = (*(v1 + 24) + v81);
        v88 = *(v87 + 2);
        if (v88 == -1 || v84[v88] != -1)
        {
          v89 = &v77[3 * v83];
          v90 = *v87;
          v89[2] = *(v87 + 2);
          *v89 = v90;
          v91 = *(*(v1 + 24) + v81 + 8);
          if (v91 != -1)
          {
            LODWORD(v91) = v84[v91];
          }

          *(v89 + 2) = v91;
          ++v83;
          v80 = *(v1 + 50);
        }

        ++v82;
        v81 += 24;
      }

      while (v82 < v80);
    }

    else
    {
      v83 = 0;
    }

    if (v83 < *(v1 + 38))
    {
      *(v1 + 38) = v83;
    }

    if (v76 < v83)
    {
      v125[0] = 0;
      v76 = realloc_array(v77, v125, 24 * v83, 24 * v75, 24 * v75, 1) / 0x18;
      v77 = v125[0];
      LODWORD(v75) = v108;
    }

    if (v75 < v83)
    {
      v92 = v83 - v75;
      v93 = &v77[3 * v75 + 2];
      do
      {
        *(v93 - 2) = 0xFFFFFFFF00000000;
        *(v93 - 2) = -1;
        *(v93 - 2) = -2;
        *v93 = 0;
        v93 += 3;
        --v92;
      }

      while (v92);
    }

    v94 = *(v1 + 24);
    *(v1 + 24) = v77;
    v107 = v94;
    LODWORD(v94) = *(v1 + 51);
    *(v1 + 50) = v83;
    *(v1 + 51) = v76;
    LODWORD(v108) = 0;
    HIDWORD(v108) = v94;
    DgnIArray<Utterance *>::~DgnIArray(&v107);
    DgnPrimFixArray<double>::~DgnPrimFixArray(&v109);
    DgnIArray<Utterance *>::~DgnIArray(&v111);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v117);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v118);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v122);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v123);
}

void sub_26264D19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&a25);
  DgnIArray<Utterance *>::~DgnIArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 160);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v30 - 128);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v30 - 112);
  _Unwind_Resume(a1);
}

void FstSearchLateLattice::printSize(FstSearchLateLattice *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950);
  if (v72)
  {
    v13 = v71;
  }

  else
  {
    v13 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v13);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26287F8B0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952);
  if (v72)
  {
    v18 = v71;
  }

  else
  {
    v18 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954);
  if (v72)
  {
    v20 = v71;
  }

  else
  {
    v20 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955);
  if (v72)
  {
    v22 = v71;
  }

  else
  {
    v22 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v66 = a2;
  v67 = a6;
  v68 = a3;
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956);
  if (v72)
  {
    v24 = v71;
  }

  else
  {
    v24 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = *(this + 42);
  v27 = 24 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 24 * (*(this + 43) - v26);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957);
  if (v72)
  {
    v31 = v71;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 16 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 16 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 50);
  v41 = 22 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 22 * (*(this + 51) - v40);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964);
  if (v72)
  {
    v45 = v71;
  }

  else
  {
    v45 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26287F8B0, v16, v16, v45, v43, v42, 0);
  DgnString::~DgnString(&v71);
  *a4 += v43;
  *a5 += v42;
  v46 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  v47 = *(this + 54);
  v48 = 22 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 22 * (*(this + 55) - v47);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966);
  if (v72)
  {
    v52 = v71;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26287F8B0, v16, v16, v52, v50, v49, 0);
  DgnString::~DgnString(&v71);
  *a4 += v50;
  *a5 += v49;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968);
  if (v72)
  {
    v54 = v71;
  }

  else
  {
    v54 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_26287F8B0, v16, v16, v54, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970);
  if (v72)
  {
    v56 = v71;
  }

  else
  {
    v56 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v15, &unk_26287F8B0, v16, v16, v56, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972);
  if (v72)
  {
    v58 = v71;
  }

  else
  {
    v58 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &unk_26287F8B0, v16, v16, v58, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v59 = sizeObject(this + 240, 0);
  v60 = sizeObject(this + 240, 1);
  v61 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974);
  if (v72)
  {
    v63 = v71;
  }

  else
  {
    v63 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26287F8B0, v16, v16, v63, v59, v60, v61);
  DgnString::~DgnString(&v71);
  *a4 += v59;
  *a5 += v60;
  *v67 += v61;
  v69 = 0;
  v70 = 0;
  SearchItf::printSize(this, v66, v15, &v70, &v69, &v69);
  *a4 += v70;
  *a5 += v69;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985);
  if (v72)
  {
    v65 = v71;
  }

  else
  {
    v65 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v68, &unk_26287F8B0, (35 - v68), (35 - v68), v65, *a4, *a5, *v67);
  DgnString::~DgnString(&v71);
}

BOOL FstSearchLateLattice::findBestPath(uint64_t a1, uint64_t **a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a3 + 8) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v10;
  }

  if (v10)
  {
    v12 = *(a2 + 2) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a2 = MemChunkAlloc(v10, 0);
    *(a2 + 2) = v10;
  }

  else if (!v10)
  {
    goto LABEL_16;
  }

  v13 = 0;
  do
  {
    *(*a2 + v13) = 0;
    *(*a3 + v13++) = 0;
  }

  while (v10 != v13);
LABEL_16:
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1 || (v15 = *(a1 + 160), v16 = *(v15 + 36 * BestTrace + 16) + *(*(a1 + 88) + 4 * *(v15 + 36 * BestTrace + 4)), *a4 = v16, v16 == 1879048192))
  {
    v17 = 1879048192;
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = v18 - 1;
      v20 = 36 * v18;
      v21 = *(v15 + 36 * BestTrace + 4);
      v22 = 1879048192;
      do
      {
        if (*(v15 + v20 - 32) == v21 && *(v15 + v20 - 36) == 16777213 && !*(*a2 + v19))
        {
          *(*a2 + v19) = 2;
          *(*a3 + v19) = 1;
          v15 = *(a1 + 160);
          if (v22 >= *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32)))
          {
            v22 = *(*(a1 + 176) + 16 * *(v15 + v20 - 28)) + *(*(a1 + 88) + 4 * *(v15 + v20 - 32));
          }
        }

        --v19;
        v20 -= 36;
      }

      while (v19 != -1);
      v16 = *a4;
      v23 = *(a1 + 168);
    }

    else
    {
      v23 = 0;
      v22 = 1879048192;
    }

    v24 = *(a1 + 28);
    if (v16 <= v22)
    {
      v25 = 0;
    }

    else
    {
      v25 = v16 - v22;
    }

    v26 = *(a5 + 3);
    v27 = v23;
    if (v23 > v26)
    {
      DgnPrimArray<unsigned int>::reallocElts(a5, v23 - v26, 0);
      v27 = *(a1 + 168);
    }

    *(a5 + 2) = v23;
    v17 = *a4;
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = v17 - (v25 + v24) + *(a1 + 12);
      do
      {
        v31 = *a2;
        v32 = *(*a2 + v29);
        if (v32 == 2)
        {
          v33 = *a5;
          if (*(*(a1 + 176) + 16 * *(*(a1 + 160) + v28 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + v28 + 4)) <= v30)
          {
            *(v33 + 4 * v29) = v25 + v24;
            *(v31 + v29) = 1;
          }

          else
          {
            *(v33 + 4 * v29) = 1879048192;
            *(v31 + v29) = 0;
          }
        }

        else if (v32 == 1)
        {
          *(*a5 + 4 * v29) = 0;
        }

        else
        {
          *(*a5 + 4 * v29) = 1879048192;
        }

        ++v29;
        v28 += 36;
      }

      while (v29 < *(a1 + 168));
      v17 = *a4;
    }
  }

  return v17 != 1879048192;
}

uint64_t FstSearchLateLattice::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLateLatticeHashBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 36 * v11);
        if (*v13 != 16777209 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 16 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLateLattice::createLatticeLink(a1, v11, v15, 0xFFFFFFFF, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLateLattice::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 36 * v11 + 12) + *(*(a1 + 160) + 36 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_26264DE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLateLattice::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 36 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 16 * v19 + 12) == a2)
      {
        v22 = (v21 + 16 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(v44, *(a1 + 40), *(v16 + 36 * a2));
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (LODWORD(v44[0]) >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((a4 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 36 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 36 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v35 = *(v30 + 36 * a4 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 36 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 36 * a4 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_26264E0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLateLattice::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchLateLattice::endTopRecSyncRecog(FstSearchLateLattice *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLateLattice::getBestExitScore(FstSearchLateLattice *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 24 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 36 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v18))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v17, 1, 1);
          v5 = v18;
          v4 = v17;
        }

        v4[v5] = v8;
        v5 = v18 + 1;
        LODWORD(v18) = v18 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 24;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = *(this + 20);
    v10 = v5;
    v11 = 1879048192;
    do
    {
      v12 = *v4++;
      v13 = v9 + 36 * v12;
      v14 = *(v13 + 16);
      if (v11 > v14)
      {
        *(this + 57) = *(v13 + 20);
        v11 = v14;
      }

      --v10;
    }

    while (v10);
  }

  else
  {
LABEL_16:
    v11 = 1879048192;
  }

  if (v11 >= 20000)
  {
    v15 = 20000;
  }

  else
  {
    v15 = v11;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  return v15;
}

uint64_t FstSearchLateLattice::getBestScoreMaybeUpdateFstNode(FstSearchLateLattice *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 24;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

unint64_t FstSearchLateLattice::seedTheory(FstSearchLateLattice *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 42);
    if (v11 == *(this + 43))
    {
      DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 36 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = 0xFFFFFFFFLL;
    *(v12 + 16) = a2;
    *(v12 + 20) = 0xFFFFFFFFLL;
    *(v12 + 28) = 0;
    *(v12 + 32) = -2;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 50);
  if (v14 == *(this + 51))
  {
    DgnArray<CWIDAC>::reallocElts(this + 192, 1, 1);
    v14 = *(this + 50);
  }

  v15 = *(this + 24) + 24 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  LODWORD(v15) = *(this + 50) + 1;
  *(this + 50) = v15;
  *(this + 38) = v15;

  return FstSearchLateLatticeHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLateLattice::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 57);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 36 * v6);
    for (i = v8[5]; i != -1; v6 = v14)
    {
      v14 = i;
      result = v7[5];
      if (*v8 == 16777209)
      {
        v15 = (*(result + 87) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v8);
        v15 = result;
      }

      v16 = *(a2 + 8);
      if (v16 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v16 = *(a2 + 8);
      }

      *(*a2 + 4 * v16) = v15;
      ++*(a2 + 8);
      v17 = *(a6 + 8);
      if (v17 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v17 = *(a6 + 8);
      }

      *(*a6 + 4 * v17) = v6;
      ++*(a6 + 8);
      v18 = v7[20];
      v19 = *(v18 + 36 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v18 + 36 * v6 + 16);
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 36 * v14);
      i = v8[5];
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchLateLattice::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
{
  v3 = *(this + 40);
  if (*(v3 + 178) == 1)
  {
    result = ArcGraph::ensureHeaderValid(*(this + 40), "Header");
    if (*(v3 + 202) == 1)
    {
      v8 = *(this + 140);
      if (*(v3 + 188) != v8)
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchInterWordSilencePenalty", *(v3 + 188), v8);
      }
    }

    v9 = *(this + 136);
    if (*(v3 + 192) != v9)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "SearchPerWordPenalty", *(v3 + 192), v9);
    }

    v10 = *(*(**VocMgr::smpVocMgr + 8 * *(*(this + 40) + 174)) + 608);
    if (*(v3 + 196) != v10)
    {
      result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "Voc", *(v3 + 196), v10);
    }

    v11 = *(v3 + 203);
    if (a3)
    {
      if (a2)
      {
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v12 = 1;
      }

      else
      {
        if (v11)
        {
          return result;
        }

        v12 = 0;
      }

      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "DropAlternateFrames", v12, v11);
    }

    else if (a2 & 1) != 0 || (v11)
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstsrch.cpp", 160, "fst/fstsrch", 3, "%.500s %d %d", "NoDecimation", a2, v11);
    }
  }

  return result;
}

uint64_t FstSearchLateLattice::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(a2 + 8);
  if (v8 >= 1)
  {
    v9 = 112 * v8 - 112;
    do
    {
      (**(*a2 + v9))(*a2 + v9);
      v9 -= 112;
    }

    while (v9 != -112);
  }

  *(a2 + 8) = 0;
  BestTrace = FstSearchLateLatticeHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLateLatticeHashBackoff::getHistory(a1, BestTrace, a3, a4);
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  if (*(a3 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *a3 + v12;
      v16 = *(v15 + 28);
      WordLatticeLC::WordLatticeLC(v20, v15, v14, *(v15 + 24) - v14, v16 - *(v15 + 24), v21);
      v17 = *(a2 + 8);
      if (v17 == *(a2 + 12))
      {
        DgnArray<WordLatticeLC>::reallocElts(a2, 1, 1);
        LODWORD(v17) = *(a2 + 8);
      }

      WordLatticeLC::WordLatticeLC((*a2 + 112 * v17), v20);
      ++*(a2 + 8);
      WordLatticeLC::~WordLatticeLC(v20);
      ++v13;
      v12 += 32;
      v14 = v16;
    }

    while (v13 < *(a3 + 8));
  }

  v18 = a1[20] + 36 * v11;
  return (*(v18 + 16) + *(a1[11] + 4 * *(v18 + 4)));
}

int64x2_t FstSearchLatticeBackoff::advanceDeltas(FstSearchLatticeBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v117[0] = a2;
  v115 = 0u;
  v116 = 0u;
  SnapTime::recordTime(&v115, 1, 0, 0, 0);
  *(this + 58) = a3;
  v96 = *(this + 2);
  v94 = (this + 232);
  v7 = *(this + 50);
  if (v7)
  {
    v8 = 0;
    v95 = 0;
    v9 = *(this + 2);
    do
    {
      v10 = v8;
      v89 = 24 * v8;
      v11 = *(this + 24) + v89;
      v12 = *(v11 + 4);
      if (v7 <= v8 + 1)
      {
        ++v8;
      }

      else
      {
        v8 = v7;
      }

      v90 = v8 - 1;
      v13 = (v11 + 28);
      v14 = 1;
      while (v10 + v14 < v7)
      {
        v15 = *v13;
        v13 += 6;
        ++v14;
        if (v15 != v12)
        {
          v90 = v10 + v14 - 2;
          v8 = v10 + v14 - 1;
          break;
        }
      }

      v16 = *(this + 5);
      if (*(v16 + 160) != v12)
      {
        v17 = v90;
        v18 = *(v16 + 140) <= v12 || v10 > v90;
        v92 = v10;
        if (!v18)
        {
          v19 = 0;
          v20 = v90 - v10 + 1;
          do
          {
            if (*(this + 19) + *(this + 58) >= 5000)
            {
              v21 = 5000;
            }

            else
            {
              v21 = *(this + 19) + *(this + 58);
            }

            ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(*(this + 24) + v89 + v19 + 12), *(*(this + 24) + v89 + v19), v21);
            v23 = *(this + 58);
            if (ScoreAllowBackoff_updateNodeInSequence - v9 <= v23)
            {
              v24 = ScoreAllowBackoff_updateNodeInSequence;
              if (v23 > ScoreAllowBackoff_updateNodeInSequence)
              {
                *v94 = ScoreAllowBackoff_updateNodeInSequence;
              }

              v25 = *(this + 24) + v89 + v19;
              v26 = *(v25 + 4);
              v27 = *(v25 + 12);
              v28 = *(v25 + 14);
              v29 = *(v25 + 16);
              v30 = *(this + 54);
              if (v30 == *(this + 55))
              {
                DgnArray<CWIDAC>::reallocElts(this + 208, 1, 1);
                LODWORD(v30) = *(this + 54);
              }

              v31 = *(this + 26) + 24 * v30;
              *v31 = v24;
              *(v31 + 4) = v26;
              *(v31 + 12) = v27;
              *(v31 + 14) = v28;
              *(v31 + 16) = v29;
              v32 = *(this + 54) + 1;
              *(this + 54) = v32;
              if (!v19)
              {
                v33 = v95;
                if (HIDWORD(v95) == 2 * *(this + 4))
                {
                  v33 = v32;
                }

                v95 = __PAIR64__(HIDWORD(v95), v33) + 0x100000000;
              }

              v10 = v92;
            }

            v17 = v90;
            v19 += 24;
            --v20;
          }

          while (v20);
        }

        v34 = v17 - v10 + 1;
        v35 = v12;
        v88 = v8;
        v91 = v12;
        do
        {
          v36 = *(this + 5);
          v37 = *(v36 + 152);
          v38 = *(v37 + 4 * v35);
          v39 = *(v36 + 140);
          v99 = *(v37 + 4 * (v35 + 1));
          v93 = v35;
          if (v39 <= v99)
          {
            if (*(this + 356) == 1 && v39 <= v12)
            {
              v46 = (v38 & 0xFFFFF) <= 0xFFFF3 ? v38 & 0xFFFFF : v38 & 0xFFFFF | 0xF00000;
              if (v46 != 16777210)
              {
                DgnString::DgnString(&v112);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v46, &v112);
                v49 = &unk_26287F8B0;
                if (v112.i32[2])
                {
                  v49 = v112.i64[0];
                }

                v48 = (*(this + 24) + 24 * v10);
                xprintf("Seed from state %d score %d trace %d, %s\n", v47, v91, *v48, v48[2], v49);
                v50 = (*(this + 24) + 24 * v10);
                MiniFst::seed(this + 240, *v50, v50[5], v50[2], v99);
                DgnString::~DgnString(&v112);
              }
            }
          }

          else
          {
            v40 = (v38 >> 20) & 0x3FF;
            if (*(this + 19) + *(this + 58) >= 5000)
            {
              v41 = 5000;
            }

            else
            {
              v41 = *(this + 19) + *(this + 58);
            }

            v42 = v38;
            v43 = 24 * v10;
            v97 = v40;
            v98 = v42;
            v44 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), v42, *(*(this + 24) + 24 * v10) + v40, v41);
            if (v10 <= v90)
            {
              v51 = 0;
              v52 = v44 - *(*(this + 24) + v43);
              v53 = v89;
              v38 = v98;
              do
              {
                v54 = *(this + 24);
                v55 = *(v54 + v53) + v52;
                v56 = *(this + 58);
                if (v55 - v9 <= v56)
                {
                  v57 = v34;
                  if (v56 > v55)
                  {
                    *v94 = v55;
                  }

                  v58 = v54 + v53;
                  v59 = *(v58 + 8);
                  v60 = *(v58 + 14);
                  v61 = *(v58 + 16);
                  v62 = *(v58 + 20);
                  v63 = *(this + 54);
                  if (v63 == *(this + 55))
                  {
                    DgnArray<CWIDAC>::reallocElts(this + 208, 1, 1);
                    LODWORD(v63) = *(this + 54);
                  }

                  v64 = *(this + 26) + 24 * v63;
                  *v64 = v55;
                  *(v64 + 4) = v99;
                  *(v64 + 8) = v59;
                  v38 = v98;
                  *(v64 + 12) = v98;
                  *(v64 + 14) = v60;
                  *(v64 + 16) = v61 + v97;
                  *(v64 + 20) = v62;
                  v65 = *(this + 54) + 1;
                  *(this + 54) = v65;
                  if (!v51)
                  {
                    v66 = v95;
                    if (HIDWORD(v95) == 2 * *(this + 4))
                    {
                      v66 = v65;
                    }

                    v95 = __PAIR64__(HIDWORD(v95), v66) + 0x100000000;
                  }

                  v9 = v96;
                  v34 = v57;
                }

                ++v51;
                v53 += 24;
              }

              while (v34 != v51);
            }

            else
            {
              v38 = v98;
            }
          }

          v35 = v93 + 2;
          v8 = v88;
          LODWORD(v12) = v91;
          v10 = v92;
        }

        while ((v38 & 0x80000000) == 0);
        v7 = *(this + 50);
      }
    }

    while (v8 < v7);
    a3 = *v94;
  }

  else
  {
    v95 = 0;
  }

  v114 = a3 + v96;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v94, v96, a2);
  }

  v112 = 0u;
  v113 = 0u;
  SnapTime::recordTime(&v112, 1, 0, 0, 0);
  v112 = vsubq_s64(v112, v115);
  v113 = vsubq_s64(v113, v116);
  v67 = *(this + 13);
  v68 = vaddq_s64(v67[1], v113);
  *v67 = vaddq_s64(*v67, v112);
  v67[1] = v68;
  v110 = 0u;
  v111 = 0u;
  SnapTime::recordTime(&v110, 1, 0, 0, 0);
  if (HIDWORD(v95) > 2 * *(this + 4))
  {
    FstSearchLateLatticeHashBackoff::applyCutoffOnEmitting(this, v95, &v114);
  }

  v108 = 0u;
  v109 = 0u;
  SnapTime::recordTime(&v108, 1, 0, 0, 0);
  v69 = vsubq_s64(v108, v110);
  v70 = *(this + 13);
  v71 = v70[3];
  v72 = vaddq_s64(v70[2], v69);
  v108 = v69;
  v109 = vsubq_s64(v109, v111);
  v73 = vaddq_s64(v71, v109);
  v70[2] = v72;
  v70[3] = v73;
  v106 = 0u;
  v107 = 0u;
  SnapTime::recordTime(&v106, 1, 0, 0, 0);
  FstSearchLatticeBackoff::makeViterbiDecisionOnEmitting(this);
  v74 = *(this + 6);
  if (v74)
  {
    v75 = *(this + 50);
    if (v74 < v75)
    {
      mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(*(this + 24), v74, v75);
    }
  }

  v104 = 0u;
  v105 = 0u;
  SnapTime::recordTime(&v104, 1, 0, 0, 0);
  v76 = vsubq_s64(v104, v106);
  v77 = *(this + 13);
  v78 = v77[5];
  v79 = vaddq_s64(v77[4], v76);
  v104 = v76;
  v105 = vsubq_s64(v105, v107);
  v80 = vaddq_s64(v78, v105);
  v77[4] = v79;
  v77[5] = v80;
  v102 = 0u;
  v103 = 0u;
  SnapTime::recordTime(&v102, 1, 0, 0, 0);
  *(this + 54) = 0;
  v81 = *(this + 50);
  *(this + 38) = v81;
  if (a4)
  {
    *(a4 + 2) += v81;
    if (*(a4 + 2) > v81)
    {
      LODWORD(v81) = *(a4 + 2);
    }

    *(a4 + 2) = v81;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLatticeBackoff::seedFromMiniFst(this, v117);
  }

  if (a5)
  {
    FstSearchLatticeBackoff::propagateNulls(this, v114, a2, a4);
  }

  *(this + 56) = a2;
  v100 = 0u;
  v101 = 0u;
  SnapTime::recordTime(&v100, 1, 0, 0, 0);
  v82 = *(this + 13);
  result = vaddq_s64(v82[6], vsubq_s64(v100, v102));
  v84 = vaddq_s64(v82[7], vsubq_s64(v101, v103));
  v82[6] = result;
  v82[7] = v84;
  return result;
}

char **FstSearchLatticeBackoff::makeViterbiDecisionOnEmitting(char **this)
{
  v1 = this;
  v2 = *(this + 54);
  if (v2)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(this[26], v2, 24, 0);
    v3 = *(v1 + 216);
    *(v1 + 200) = 0;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *(v1 + 208);
        if (v5 && (v8 = (v7 + 24 * v5), *(v8 + 1) == *(v8 - 5)))
        {
          if (v4 >= *(v1 + 20) + v6)
          {
            goto LABEL_16;
          }

          i = v6;
          if (v6 < v4)
          {
            v10 = (*(v1 + 192) + 24 * v6 + 20);
            for (i = v6; v4 != i; ++i)
            {
              v11 = *v10;
              v10 += 6;
              if (v11 == *(v8 + 5))
              {
                break;
              }
            }
          }

          if (i != v4)
          {
            goto LABEL_16;
          }

          v12 = *(v1 + 204);
        }

        else
        {
          v8 = (v7 + 24 * v5);
          v12 = *(v1 + 204);
          v6 = v4;
        }

        if (v4 == v12)
        {
          this = DgnArray<CWIDAC>::reallocElts(v1 + 192, 1, 1);
          v4 = *(v1 + 200);
        }

        v13 = *(v1 + 192) + 24 * v4;
        v14 = *v8;
        *(v13 + 16) = *(v8 + 2);
        *v13 = v14;
        v4 = *(v1 + 200) + 1;
        *(v1 + 200) = v4;
LABEL_16:
        ++v5;
      }

      while (v5 < *(v1 + 216));
    }
  }

  else
  {
    *(this + 50) = 0;
  }

  return this;
}

uint64_t FstSearchLatticeBackoff::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 356) == 1)
  {
    v2 = this;
    v3 = *(this + 264);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 256) + 36 * v4);
        v42 = v5[4];
        v40 = *v5;
        v41 = v5[5];
        v7 = v5[6];
        v6 = v5[7];
        v8 = v5[2];
        v43 = 0;
        v44 = 0;
        v39 = v7;
        if ((v8 & 0x80000000) != 0)
        {
          LODWORD(v12) = -2 - v8;
        }

        else
        {
          v9 = 0;
          v10 = 0;
          do
          {
            if (v10 == HIDWORD(v44))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v43, 1, 1);
              v10 = v44;
              v9 = v43;
            }

            *(v9 + 4 * v10) = v8;
            v11 = v44;
            v10 = v44 + 1;
            LODWORD(v44) = v44 + 1;
            v8 = *(*(v2 + 240) + 36 * v8 + 8);
          }

          while ((v8 & 0x80000000) == 0);
          LODWORD(v12) = -2 - v8;
          if ((v11 & 0x80000000) == 0)
          {
            do
            {
              v13 = *(v43 + 4 * v11);
              v14 = *(v2 + 240);
              v15 = (v14 + 36 * v13);
              v16 = *v15;
              v17 = *(v15 + 2);
              v18 = *(v2 + 184);
              if (v18 == *(v2 + 188))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 176, 1, 1);
                v18 = *(v2 + 184);
                v14 = *(v2 + 240);
              }

              v19 = *(v2 + 176) + 16 * v18;
              *(v2 + 184) = v18 + 1;
              *v19 = v16;
              *(v19 + 4) = v17;
              *(v19 + 12) = v12;
              v20 = *(v14 + 36 * v13 + 28);
              v21 = *(v2 + 168);
              if (v21 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v21 = *(v2 + 168);
              }

              v22 = *(v2 + 160);
              v23 = v22 + 16 * v21;
              *v23 = v20;
              *(v23 + 8) = v18;
              *(v23 + 12) = 0;
              v12 = *(v2 + 168);
              *(v2 + 168) = v12 + 1;
              *(v22 + 16 * v12 + 12) = 1;
            }

            while (v11-- > 0);
          }
        }

        v25 = *(v2 + 184);
        if (v25 == *(v2 + 188))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 176, 1, 1);
          v25 = *(v2 + 184);
        }

        v26 = *(v2 + 176);
        *(v2 + 184) = v25 + 1;
        v27 = (v26 + 16 * v25);
        *v27 = v40;
        v27[1] = v42;
        v27[2] = v41;
        v27[3] = v12;
        if (v6 == 16777213)
        {
          v28 = (*(v2 + 160) + 16 * v12);
          v6 = 16777209;
          if (*v28 == 16777209)
          {
            v25 = v28[2];
          }
        }

        v29 = *a2;
        v30 = *(v2 + 168);
        if (v30 == *(v2 + 172))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
          v30 = *(v2 + 168);
        }

        v31 = *(v2 + 160);
        v32 = (v31 + 16 * v30);
        *v32 = v6;
        v32[1] = v29;
        v32[2] = v25;
        v32[3] = 0;
        v33 = *(v2 + 168);
        *(v2 + 168) = v33 + 1;
        *(v31 + 16 * v33 + 12) = 1;
        v34 = *(v2 + 200);
        if (v34 == *(v2 + 204))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v34) = *(v2 + 200);
        }

        v35 = *(v2 + 192) + 24 * v34;
        *v35 = v40;
        *(v35 + 4) = v39;
        *(v35 + 8) = v33;
        *(v35 + 12) = -2;
        *(v35 + 16) = v42;
        *(v35 + 20) = v41;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v43);
        ++v4;
        LODWORD(v36) = *(v2 + 264);
        v37 = *(v2 + 20);
        if (v36 >= v37)
        {
          v36 = v37;
        }

        else
        {
          v36 = v36;
        }
      }

      while (v4 < v36);
    }
  }

  return this;
}

void sub_26264F510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

_DWORD *FstSearchLatticeBackoff::propagateNulls(_DWORD *this, int a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = this[42];
  LODWORD(v6) = this[50];
  if (v6)
  {
    v7 = a2;
    v62 = this[42];
    v63 = a4;
    v8 = 0;
    do
    {
      v9 = *(v4 + 24);
      v10 = v8;
      v11 = *(v9 + 24 * v8 + 4);
      v67 = v8;
      if (v6 <= v8 + 1)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = v6;
      }

      while (v12 - 1 != v8)
      {
        if (*(v9 + 24 * ++v8 + 4) != v11)
        {
          goto LABEL_10;
        }
      }

      v8 = v12;
LABEL_10:
      v13 = *(v4 + 5);
      if (*(v13 + 160) != v11 && (*(v13 + 140) <= v11 || (*(*(v13 + 152) + 4 * v11) & 0x40000000) != 0))
      {
        v64 = 24 * v10;
        v65 = v11;
        v66 = v8;
        v76 = v8 - v67;
        do
        {
          v14 = *(v4 + 5);
          v15 = *(v14 + 152);
          v70 = v11;
          v73 = *(v15 + 4 * v11);
          v16 = *(v14 + 140);
          v75 = *(v15 + 4 * (v11 + 1));
          if (v16 <= v75)
          {
            v17 = (v73 & 0xFFFFF) <= 0xFFFF3 ? v73 & 0xFFFFF : v73 & 0xFFFFF | 0xF00000;
            v18 = v17 != 16777210 && v16 <= v65;
            if (!v18 && v66 > v67)
            {
              v20 = 0;
              v21 = (v73 >> 20) & 0x3FF;
              v71 = v17 + 1;
              v22 = v64;
              v74 = v17;
              do
              {
                v23 = *(v4 + 24);
                v24 = *(v23 + v22);
                v25 = v24 + v21;
                if (v24 + v21 > v7)
                {
                  break;
                }

                v26 = *(v23 + v22 + 8);
                v27 = *(v23 + v22 + 12);
                v28 = *(v23 + v22 + 14);
                v29 = *(v23 + v22 + 16);
                v30 = *(v23 + v22 + 20);
                v31 = v29 + v21;
                if (v17 == 16777210)
                {
                  v39 = v4[50];
                  if (v39 == v4[51])
                  {
                    v40 = *(v23 + v22 + 14);
                    this = DgnArray<CWIDAC>::reallocElts((v4 + 48), 1, 1);
                    v28 = v40;
                    v21 = (v73 >> 20) & 0x3FF;
                    v17 = v74;
                    LODWORD(v39) = v4[50];
                    v23 = *(v4 + 24);
                  }

                  v41 = v23 + 24 * v39;
                  *v41 = v25;
                  *(v41 + 4) = v75;
                  *(v41 + 8) = v26;
                  *(v41 + 12) = v27;
                  *(v41 + 14) = v28;
                  *(v41 + 16) = v31;
                  *(v41 + 20) = v30;
                  ++v4[50];
                }

                else
                {
                  if (v17 == 16777214)
                  {
                    v25 = v24 - v29;
                    v32 = 0;
                  }

                  else
                  {
                    v32 = v29 + v21;
                  }

                  if (v17 == 16777214)
                  {
                    v33 = v29 + v21;
                  }

                  else
                  {
                    v33 = 0;
                  }

                  v72 = v33;
                  v34 = v4[46];
                  if (v34 == v4[47])
                  {
                    v35 = v28;
                    this = DgnArray<DgnPrimArray<double>>::reallocElts((v4 + 44), 1, 1);
                    v28 = v35;
                    v21 = (v73 >> 20) & 0x3FF;
                    v17 = v74;
                    v34 = v4[46];
                  }

                  v36 = v71 + 2 * v30;
                  v37 = (*(v4 + 22) + 16 * v34);
                  v4[46] = v34 + 1;
                  *v37 = v25;
                  v37[1] = v32;
                  v37[2] = v36;
                  v37[3] = v26;
                  v38 = v4[42];
                  if (!v20)
                  {
                    if (v38 == v4[43])
                    {
                      v42 = v28;
                      this = DgnArray<DgnPrimArray<double>>::reallocElts((v4 + 40), 1, 1);
                      v28 = v42;
                      v21 = (v73 >> 20) & 0x3FF;
                      v17 = v74;
                      v38 = v4[42];
                    }

                    v43 = (*(v4 + 20) + 16 * v38);
                    *v43 = v17;
                    v43[1] = a3;
                    v43[2] = v34;
                    v43[3] = 0;
                    v44 = v4[42];
                    v4[42] = v44 + 1;
                    v45 = v4[50];
                    if (v45 == v4[51])
                    {
                      v46 = v28;
                      this = DgnArray<CWIDAC>::reallocElts((v4 + 48), 1, 1);
                      v28 = v46;
                      v21 = (v73 >> 20) & 0x3FF;
                      v17 = v74;
                      LODWORD(v45) = v4[50];
                    }

                    v47 = *(v4 + 24) + 24 * v45;
                    *v47 = v25 + v72;
                    *(v47 + 4) = v75;
                    *(v47 + 8) = v44;
                    *(v47 + 12) = v27;
                    *(v47 + 14) = v28;
                    *(v47 + 16) = v31;
                    *(v47 + 20) = v36;
                    ++v4[50];
                    v38 = v4[42];
                  }

                  v48 = *(v4 + 20) + 16 * (v38 - 1);
                  ++*(v48 + 12);
                  v7 = a2;
                }

                ++v20;
                v22 += 24;
              }

              while (v76 != v20);
            }
          }

          v11 = v70 + 2;
        }

        while ((v73 & 0x80000000) == 0);
        LODWORD(v6) = v4[50];
        v8 = v66;
      }
    }

    while (v8 < v6);
    v49 = v4[38];
    if (v6 > v49)
    {
      this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 24) + 24 * v49), (v6 - v49), 24, 0);
      v49 = v4[38];
      LODWORD(v6) = v4[50];
    }

    if (v49 < v6)
    {
      v50 = v49;
      v51 = v49;
      do
      {
        v52 = *(v4 + 24);
        v53 = (v52 + 24 * v50);
        this = v49;
        if (*(v53 + 1) != *(v52 + 24 * (v50 - 1) + 4))
        {
          goto LABEL_64;
        }

        if ((v49 - v51) < v4[5])
        {
          v54 = v51;
          if (v49 > v51)
          {
            v55 = (v52 + 24 * v51 + 20);
            v54 = v51;
            while (1)
            {
              v56 = *v55;
              v55 += 6;
              if (v56 == *(v53 + 5))
              {
                break;
              }

              if (v49 == ++v54)
              {
                this = v51;
                goto LABEL_64;
              }
            }
          }

          this = v51;
          if (v54 == v49)
          {
LABEL_64:
            v57 = *v53;
            v58 = v52 + 24 * v49;
            *(v58 + 16) = *(v53 + 2);
            *v58 = v57;
            v49 = (v49 + 1);
            v51 = this;
          }
        }

        ++v50;
        v6 = v4[50];
      }

      while (v50 < v6);
    }

    a4 = v63;
    v5 = v62;
    if (v63)
    {
      goto LABEL_67;
    }
  }

  else
  {
    LODWORD(v49) = this[38];
    if (a4)
    {
LABEL_67:
      *(a4 + 1) += v4[42] - v5;
    }
  }

  v59 = v4[51];
  if (v49 > v59)
  {
    this = DgnArray<CWIDAC>::reallocElts((v4 + 48), v49 - v59, 0);
    LODWORD(v6) = v4[50];
  }

  if (v6 < v49)
  {
    v60 = v49 - v6;
    v61 = (*(v4 + 24) + 24 * v6 + 16);
    do
    {
      *(v61 - 2) = 0xFFFFFFFF00000000;
      *(v61 - 2) = -1;
      *(v61 - 2) = -2;
      *v61 = 0;
      v61 += 3;
      --v60;
    }

    while (v60);
  }

  v4[50] = v49;
  return this;
}

uint64_t FstSearchLatticeBackoff::collectTraces(FstSearchLatticeBackoff *this)
{
  v2 = *(this + 42);
  v51 = 0;
  v50 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v50 = v3;
    v51 = v2;
    v4 = (v2 + 3) & 0x1FFFFFFFCLL;
    v5 = vdupq_n_s64(v2 - 1);
    v6 = v3 + 1;
    v7 = xmmword_26286BF80;
    v8 = xmmword_26286B680;
    v9 = vdupq_n_s64(4uLL);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v8));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v6 - 2) = 0;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v6 - 1) = 0;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v7))).i32[1])
      {
        *v6 = 0;
        v6[1] = 0;
      }

      v7 = vaddq_s64(v7, v9);
      v8 = vaddq_s64(v8, v9);
      v6 += 4;
      v4 -= 4;
    }

    while (v4);
  }

  else
  {
    v3 = 0;
  }

  v11 = *(this + 50);
  if (v11)
  {
    v12 = 0;
    v13 = (*(this + 24) + 8);
    do
    {
      v15 = *v13;
      v13 += 6;
      v14 = v15;
      if (v15 != -1)
      {
        *(v3 + v14) = 1;
        v11 = *(this + 50);
      }

      ++v12;
    }

    while (v12 < v11);
  }

  v16 = *(this + 42);
  if (!v16)
  {
    goto LABEL_56;
  }

  v17 = 0;
  do
  {
    --v16;
    if (v17)
    {
      v17 = 1;
    }

    else if (*(*(this + 20) + 16 * v16) == 16777213)
    {
      v17 = 1;
      *(v3 + v16) = 1;
    }

    else
    {
      v17 = 0;
    }

    if (*(v3 + v16))
    {
      v18 = *(this + 20) + 16 * v16;
      v19 = *(v18 + 12);
      if (v19 >= 1)
      {
        v20 = *(v18 + 8);
        v21 = v19 + v20;
        v22 = *(this + 22);
        do
        {
          v23 = *(v22 + 16 * v20 + 12);
          if (v23 != -1)
          {
            *(v3 + v23) = 1;
          }

          ++v20;
        }

        while (v20 < v21);
      }
    }
  }

  while (v16);
  v24 = *(this + 42);
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      if (*(v3 + v25))
      {
        v28 = *(this + 20);
        if (v25 != v26)
        {
          *(v28 + 16 * v26) = *(v28 + 16 * v25);
          v28 = *(this + 20);
        }

        *(v28 + 16 * v26 + 8) = v27;
        v29 = v28 + 16 * v25;
        v30 = *(v29 + 8);
        v31 = (*(v29 + 12) + v30);
        if (v30 < v31)
        {
          v32 = *(this + 22);
          v33 = 16 * v30;
          do
          {
            if (v30 != v27)
            {
              *(v32 + 16 * v27) = *(v32 + v33);
              v32 = *(this + 22);
            }

            v34 = v32 + 16 * v27;
            v37 = *(v34 + 12);
            v35 = (v34 + 12);
            v36 = v37;
            if (v37 != -1)
            {
              *v35 = *(v3 + v36);
            }

            ++v27;
            ++v30;
            v33 += 16;
          }

          while (v31 != v30);
        }

        *(v3 + v25) = v26++;
        v24 = *(this + 42);
      }

      ++v25;
    }

    while (v25 < v24);
    v38 = *(this + 43);
    if (v26 > v38)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v26 - v38, 0);
      v24 = *(this + 42);
    }

    if (v24 < v26)
    {
      v39 = v26 - v24;
      v40 = (*(this + 20) + 16 * v24);
      do
      {
        *v40++ = xmmword_26287F860;
        --v39;
      }

      while (v39);
    }

    *(this + 42) = v26;
    v41 = *(this + 47);
    if (v27 > v41)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 176, v27 - v41, 0);
    }

    v42 = *(this + 46);
    if (v42 < v27)
    {
      v43 = v27 - v42;
      v44 = (*(this + 22) + 16 * v42);
      do
      {
        *v44++ = xmmword_26287F850;
        --v43;
      }

      while (v43);
    }
  }

  else
  {
LABEL_56:
    v27 = 0;
    *(this + 42) = 0;
  }

  *(this + 46) = v27;
  v45 = *(this + 50);
  if (v45)
  {
    v46 = v50;
    v47 = (*(this + 24) + 8);
    do
    {
      v48 = *v47;
      if (v48 != -1)
      {
        *v47 = *(v46 + v48);
      }

      v47 += 6;
      --v45;
    }

    while (v45);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v50);
}

int64x2_t FstSearchLatticeBackoff::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLatticeBackoff::advanceDeltas(this, a2, a3, a4, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 0, 0, 0);
  if (a2 >= 1)
  {
    v7 = *(this + 18);
    if (v7)
    {
      if (!(a2 % v7))
      {
        FstSearchLatticeBackoff::collectTraces(this);
      }
    }
  }

  v11 = 0u;
  v12 = 0u;
  SnapTime::recordTime(&v11, 1, 0, 0, 0);
  v8 = this[13];
  result = vaddq_s64(v8[14], vsubq_s64(v11, v13));
  v10 = vaddq_s64(v8[15], vsubq_s64(v12, v14));
  v8[14] = result;
  v8[15] = v10;
  return result;
}

_DWORD *FstSearchLatticeBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[50] = 0;
  return this;
}

double FstSearchLatticeBackoff::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLatticeBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLatticeBackoff::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 30, a3, this[4]);
    result = ArcGraph::findBackoffState(this[5]);
    *(this + 88) = result;
    *(this + 356) = 1;
  }

  return result;
}

uint64_t FstSearchLatticeBackoff::endTopRecPassSyncRecog(FstSearchLatticeBackoff *this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  v8 = 0u;
  v9 = 0u;
  SnapTime::recordTime(&v8, 1, 0, 0, 0);
  v2 = vsubq_s64(v8, v10);
  v3 = *(this + 13);
  v4 = v3[13];
  v5 = vaddq_s64(v3[12], v2);
  v8 = v2;
  v9 = vsubq_s64(v9, v11);
  v6 = vaddq_s64(v4, v9);
  v3[12] = v5;
  v3[13] = v6;
  *(this + 58) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLatticeBackoff::printSize(FstSearchLatticeBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950);
  if (v72)
  {
    v13 = v71;
  }

  else
  {
    v13 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v13);
  DgnString::~DgnString(&v71);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26287F8B0);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952);
  if (v72)
  {
    v18 = v71;
  }

  else
  {
    v18 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954);
  if (v72)
  {
    v20 = v71;
  }

  else
  {
    v20 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955);
  if (v72)
  {
    v22 = v71;
  }

  else
  {
    v22 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v22, 4, 4, 0);
  v66 = a2;
  v67 = a6;
  v68 = a3;
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956);
  if (v72)
  {
    v24 = v71;
  }

  else
  {
    v24 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v24, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v25 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v25 = 12;
  }

  v26 = *(this + 42);
  v27 = 16 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 16 * (*(this + 43) - v26);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957);
  if (v72)
  {
    v31 = v71;
  }

  else
  {
    v31 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 16 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 16 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 50);
  v41 = 22 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 22 * (*(this + 51) - v40);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964);
  if (v72)
  {
    v45 = v71;
  }

  else
  {
    v45 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v15, &unk_26287F8B0, v16, v16, v45, v43, v42, 0);
  DgnString::~DgnString(&v71);
  *a4 += v43;
  *a5 += v42;
  v46 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  v47 = *(this + 54);
  v48 = 22 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 22 * (*(this + 55) - v47);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966);
  if (v72)
  {
    v52 = v71;
  }

  else
  {
    v52 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_26287F8B0, v16, v16, v52, v50, v49, 0);
  DgnString::~DgnString(&v71);
  *a4 += v50;
  *a5 += v49;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968);
  if (v72)
  {
    v54 = v71;
  }

  else
  {
    v54 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v15, &unk_26287F8B0, v16, v16, v54, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970);
  if (v72)
  {
    v56 = v71;
  }

  else
  {
    v56 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v15, &unk_26287F8B0, v16, v16, v56, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972);
  if (v72)
  {
    v58 = v71;
  }

  else
  {
    v58 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v15, &unk_26287F8B0, v16, v16, v58, 4, 4, 0);
  DgnString::~DgnString(&v71);
  *a4 += 4;
  *a5 += 4;
  v59 = sizeObject(this + 240, 0);
  v60 = sizeObject(this + 240, 1);
  v61 = sizeObject(this + 240, 3);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974);
  if (v72)
  {
    v63 = v71;
  }

  else
  {
    v63 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v62, v15, &unk_26287F8B0, v16, v16, v63, v59, v60, v61);
  DgnString::~DgnString(&v71);
  *a4 += v59;
  *a5 += v60;
  *v67 += v61;
  v69 = 0;
  v70 = 0;
  SearchItf::printSize(this, v66, v15, &v70, &v69, &v69);
  *a4 += v70;
  *a5 += v69;
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985);
  if (v72)
  {
    v65 = v71;
  }

  else
  {
    v65 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v68, &unk_26287F8B0, (35 - v68), (35 - v68), v65, *a4, *a5, *v67);
  DgnString::~DgnString(&v71);
}

uint64_t FstSearchLatticeBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 152);
  }

  v5 = *(a1 + 200);
  if (v4 >= v5)
  {
    goto LABEL_21;
  }

  v6 = 24 * v4;
  v7 = 1879048192;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *(a1 + 192);
    if (!a4 || (v10 = *(v9 + v6 + 8), v10 == -1))
    {
      if (*(*(a1 + 40) + 160) != *(v9 + v6 + 4))
      {
        goto LABEL_19;
      }

      v10 = *(v9 + v6 + 8);
    }

    if (a2)
    {
      *(*a2 + v10) = 1;
    }

    if (a3)
    {
      *(*a3 + v10) = 1;
    }

    v11 = *(*(a1 + 176) + 16 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    v12 = v7 <= v11;
    if (v7 >= v11)
    {
      v7 = *(*(a1 + 176) + 16 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    }

    if (!v12)
    {
      v8 = v10;
    }

    v5 = *(a1 + 200);
LABEL_19:
    ++v4;
    v6 += 24;
  }

  while (v4 < v5);
  if (v8 == 0xFFFFFFFFLL)
  {
LABEL_21:
    v13 = *(a1 + 168);
    v8 = 0xFFFFFFFFLL;
    while (v13)
    {
      --v13;
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 16 * v13) == 16777213)
      {
        if (a2)
        {
          *(*a2 + v13) = 1;
        }

        v8 = v13;
        if (a3)
        {
          *(*a3 + v13) = 1;
        }

        return v8;
      }
    }
  }

  return v8;
}

BOOL FstSearchLatticeBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 168);
  if (v8)
  {
    v9 = *(a3 + 8) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    *a3 = MemChunkAlloc(*(a1 + 168), 0);
    *(a3 + 8) = v8;
  }

  if (v8)
  {
    v10 = *(a2 + 8) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    *a2 = MemChunkAlloc(v8, 0);
    *(a2 + 8) = v8;
LABEL_14:
    v11 = 0;
    do
    {
      *(*a2 + v11) = 0;
      *(*a3 + v11++) = 0;
    }

    while (v8 != v11);
    goto LABEL_16;
  }

  if (v8)
  {
    goto LABEL_14;
  }

LABEL_16:
  BestTrace = FstSearchLatticeBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 16 * BestTrace;
  LODWORD(v13) = *(*(a1 + 176) + 16 * *(v13 + 8)) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t *FstSearchLatticeBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v8 = a2;
  v10 = *(a1 + 168);
  if (v10)
  {
    v11 = *(a2 + 2) == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *a2 = MemChunkAlloc(4 * v10, 0);
    *(v8 + 2) = v10;
  }

  Node = Lattice<WordLatticeLC>::createNode(a4);
  result = a3;
  v14 = *(a3 + 8);
  if (v14 == *(a3 + 12))
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
    result = a3;
    v14 = *(a3 + 8);
  }

  *(*result + 4 * v14) = Node;
  ++*(result + 2);
  v15 = *(a1 + 168);
  v16 = a7;
  if (v15)
  {
    v17 = -1;
    v39 = v8;
    do
    {
      --v15;
      v18 = *v8;
      *(*v8 + v15) = -1;
      if (*(*a6 + v15))
      {
        v19 = *(a1 + 160);
        v20 = *(*(a1 + 88) + 4 * *(v19 + 16 * v15 + 4));
        if (*(*v16 + v15) == 1)
        {
          if (*(*a6 + v15) != 1 || v17 == -1)
          {
            v22 = Lattice<WordLatticeLC>::createNode(a4);
            result = a3;
            v23 = *(a3 + 8);
            *(*v8 + v15) = v23;
            if (v23 == *(a3 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              result = a3;
              v23 = *(a3 + 8);
            }

            *(*result + 4 * v23) = v22;
            v24 = *(result + 2);
            *(result + 2) = v24 + 1;
            if (*(*a6 + v15) == 1)
            {
              v17 = v24;
            }

            v19 = *(a1 + 160);
            v16 = a7;
          }

          else
          {
            *(v18 + v15) = v17;
          }
        }

        v25 = (v19 + 16 * v15);
        if (v25[3] >= 1)
        {
          v40 = v17;
          v26 = *v25;
          v27 = v25[2];
          do
          {
            v28 = *(a1 + 176);
            v29 = (v28 + 16 * v27);
            v30 = v29[3];
            if ((v30 & 0x80000000) != 0)
            {
              *v29 += v20;
            }

            else
            {
              if (v26 == 16777209)
              {
                v31 = *a5 + 16 * v30;
                v32 = *(v31 + 8);
                if (v32 == *(v31 + 12))
                {
                  result = DgnPrimArray<unsigned int>::reallocElts(v31, 1, 1);
                  v16 = a7;
                  v32 = *(v31 + 8);
                  v19 = *(a1 + 160);
                  v28 = *(a1 + 176);
                }

                *(*v31 + 4 * v32) = v15;
                ++*(v31 + 8);
                v30 = v29[3];
              }

              else
              {
                *(*v16 + v30) = 1;
              }

              v33 = v19 + 16 * v30;
              v34 = *(*(a1 + 88) + 4 * *(v33 + 4));
              v35 = (v28 + 16 * *(v33 + 8));
              v36 = v20 + *v29 - v34 - *v35;
              LODWORD(v35) = v29[1] - v35[1];
              *v29 = v36;
              v29[1] = v35;
              *(*a6 + v30) = 2;
              v19 = *(a1 + 160);
            }

            ++v27;
          }

          while (v27 < *(v19 + 16 * v15 + 12) + *(v19 + 16 * v15 + 8));
          v8 = v39;
          v17 = v40;
        }
      }
    }

    while (v15);
  }

  return result;
}

uint64_t FstSearchLatticeBackoff::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v26, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchLatticeBackoff::createLatticeNodes(a1, &v29, &v27, a2, v26, a3, a4);
  v23 = v9;
  v24 = *(a1 + 168);
  if (v24)
  {
    v11 = 0;
    v12 = v28;
    do
    {
      if (*(*a3 + v11))
      {
        v13 = (*(a1 + 160) + 16 * v11);
        if (*v13 != 16777209 && v13[3] >= 1)
        {
          v14 = v13[2];
          do
          {
            v15 = *(a1 + 176) + 16 * v14;
            v16 = *(v15 + 12);
            if (v16 == -1)
            {
              v17 = 0;
            }

            else
            {
              v17 = (v12 - *(v29 + v16));
            }

            v18 = *(v27 + 4 * v17);
            if (*(*a4 + v11) == 1)
            {
              FstSearchLatticeBackoff::createLatticeLink(a1, v11, v15, 0xFFFFFFFF, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLatticeBackoff::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
                ++v20;
                v19 = v26[0] + 16 * v11;
              }

              while (v20 < *(v19 + 8));
            }

            ++v14;
          }

          while (v14 < *(*(a1 + 160) + 16 * v11 + 12) + *(*(a1 + 160) + 16 * v11 + 8));
        }
      }

      ++v11;
    }

    while (v11 != v24);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v29);
}

void sub_262650E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va2);
  _Unwind_Resume(a1);
}

void FstSearchLatticeBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0 || (v17 = v16 + 16 * a4, v18 = *(v17 + 12), v18 < 1))
  {
    v22 = 0;
  }

  else
  {
    v19 = *(v17 + 8);
    v20 = v18 + v19;
    do
    {
      v21 = *(a1 + 176);
      if (*(v21 + 16 * v19 + 12) == a2)
      {
        v22 = (v21 + 16 * v19);
      }

      else
      {
        v22 = 0;
      }

      ++v19;
    }

    while (v19 < v20 && !v22);
  }

  ArcGraph::lexToCWIDAC(v44, *(a1 + 40), *(v16 + 16 * a2));
  v23 = a3[1];
  if (v22)
  {
    v23 += v22[1];
    v24 = *v22 + *a3;
  }

  else
  {
    v24 = *a3;
  }

  if (LODWORD(v44[0]) >> 25 == 126)
  {
    v25 = 0;
    v26 = v23;
  }

  else
  {
    v25 = *(a1 + 136);
    v26 = v23 - v25;
  }

  v27 = v24 - v23;
  if ((a4 & 0x80000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(a1 + 140);
    v26 -= v28;
  }

  v38 = v26;
  v39 = 0;
  v40 = v25;
  v41 = v27;
  v42 = 0;
  v43 = v28;
  v29 = a3[3];
  v30 = *(a1 + 160);
  if (v29 != -1)
  {
    v31 = *(v30 + 16 * v29 + 4);
    if (a9)
    {
      v32 = (v31 - 1) / 2 + 1;
      goto LABEL_24;
    }

    v32 = v31 + 1;
LABEL_27:
    v33 = *(v30 + 16 * a2 + 4);
    v34 = v33 - v32 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v35 = *(v30 + 16 * a4 + 4);
      goto LABEL_29;
    }

LABEL_30:
    v36 = 0;
    goto LABEL_31;
  }

  v32 = 0;
  if (!a9)
  {
    goto LABEL_27;
  }

LABEL_24:
  v33 = (*(v30 + 16 * a2 + 4) - 1) / 2;
  v34 = v33 - v32 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  v35 = (*(v30 + 16 * a4 + 4) - 1) / 2;
LABEL_29:
  v36 = v35 - v33;
LABEL_31:
  WordLatticeLC::WordLatticeLC(v37, v44, v32, v34, v36, &v38);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v37);
  WordLatticeLC::~WordLatticeLC(v37);
}

void sub_262651058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLatticeBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchLatticeBackoff::endTopRecSyncRecog(FstSearchLatticeBackoff *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLatticeBackoff::getBestExitScore(FstSearchLatticeBackoff *this)
{
  v22 = 0;
  v23 = 0;
  *(this + 57) = -1;
  v1 = *(this + 38);
  v2 = *(this + 50);
  if (v1 >= v2)
  {
    goto LABEL_19;
  }

  v4 = 0;
  v5 = 0;
  v6 = 24 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 16 * v8 + 4) == *(this + 56))
      {
        if (v5 == HIDWORD(v23))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v22, 1, 1);
          v5 = v23;
          v4 = v22;
        }

        *(v4 + 4 * v5) = v8;
        v5 = v23 + 1;
        LODWORD(v23) = v23 + 1;
        v2 = *(this + 50);
      }
    }

    ++v1;
    v6 += 24;
  }

  while (v1 < v2);
  if (v5)
  {
    v9 = 0;
    v10 = *(this + 20);
    v11 = v5;
    v12 = 1879048192;
    do
    {
      v13 = v10 + 16 * *(v4 + 4 * v9);
      v14 = *(v13 + 12);
      if (v14 >= 1)
      {
        v15 = *(v13 + 8);
        v16 = v14 + v15;
        v17 = *(this + 22);
        do
        {
          v18 = (v17 + 16 * v15);
          v19 = *v18;
          if (v12 > *v18)
          {
            *(this + 57) = v18[3];
            v12 = v19;
          }

          ++v15;
        }

        while (v15 < v16);
      }

      ++v9;
    }

    while (v9 != v11);
  }

  else
  {
LABEL_19:
    v12 = 1879048192;
  }

  if (v12 >= 20000)
  {
    v20 = 20000;
  }

  else
  {
    v20 = v12;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
  return v20;
}

uint64_t FstSearchLatticeBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLatticeBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 50);
  if (v2)
  {
    v3 = *(this + 24);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 24;
      --v2;
    }

    while (v2);
    v6 = 20000;
    if (v5 != 1879048192)
    {
      *(a2 + 5) = v5;
      *(a2 + 11) = v4;
      if (v5 >= 20000)
      {
        v6 = 20000;
      }

      else
      {
        v6 = v5;
      }
    }
  }

  else
  {
    v6 = 20000;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

_DWORD *FstSearchLatticeBackoff::seedTheory(FstSearchLatticeBackoff *this, int a2, int a3, int a4, SearchStats *a5)
{
  if (a4 == -2)
  {
    v9 = *(this + 42) - 1;
  }

  else
  {
    v11 = *(this + 46);
    if (v11 == *(this + 47))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 176, 1, 1);
      v11 = *(this + 46);
    }

    v12 = (*(this + 22) + 16 * v11);
    v12[2] = 0;
    v12[3] = -1;
    v12[1] = 0;
    *(this + 46) = v11 + 1;
    *v12 = a2;
    v13 = *(this + 42);
    if (v13 == *(this + 43))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, 1, 1);
      v13 = *(this + 42);
    }

    v14 = (*(this + 20) + 16 * v13);
    *v14 = a4;
    v14[1] = a3;
    v14[2] = v11;
    v14[3] = 1;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v15 = *(*(this + 5) + 144);
  v16 = *(this + 50);
  if (v16 == *(this + 51))
  {
    DgnArray<CWIDAC>::reallocElts(this + 192, 1, 1);
    v16 = *(this + 50);
  }

  v17 = *(this + 24) + 24 * v16;
  *v17 = a2;
  *(v17 + 4) = v15;
  *(v17 + 8) = v9;
  *(v17 + 12) = -2;
  *(v17 + 16) = 0;
  LODWORD(v17) = *(this + 50) + 1;
  *(this + 50) = v17;
  *(this + 38) = v17;

  return FstSearchLatticeBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLatticeBackoff::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 57);
  if (v6 != -1)
  {
    v8 = result;
    v9 = (result[20] + 16 * v6);
    for (i = *(result[22] + 16 * v9[2] + 12); i != -1; v6 = v15)
    {
      v15 = i;
      result = v8[5];
      if (*v9 == 16777209)
      {
        v16 = (*(result + 87) << 25) | 0xFFFFF9;
      }

      else
      {
        result = ArcGraph::lexToCWID(result, *v9);
        v16 = result;
      }

      v17 = *(a2 + 8);
      if (v17 == *(a2 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
        v17 = *(a2 + 8);
      }

      *(*a2 + 4 * v17) = v16;
      ++*(a2 + 8);
      v18 = *(a6 + 8);
      if (v18 == *(a6 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
        v18 = *(a6 + 8);
      }

      *(*a6 + 4 * v18) = v6;
      ++*(a6 + 8);
      v19 = v8[20];
      v20 = *(v19 + 16 * v6 + 4);
      v21 = *(a3 + 8);
      if (v21 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v21 = *(a3 + 8);
        v19 = v8[20];
      }

      *(*a3 + 4 * v21) = v20;
      ++*(a3 + 8);
      v22 = *(v8[22] + 16 * *(v19 + 16 * v6 + 8));
      v23 = *(a5 + 8);
      if (v23 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v23 = *(a5 + 8);
      }

      *(*a5 + 4 * v23) = v22;
      ++*(a5 + 8);
      v9 = (v8[20] + 16 * v15);
      i = *(v8[22] + 16 * v9[2] + 12);
    }

    *a4 = *v9;
  }

  return result;
}