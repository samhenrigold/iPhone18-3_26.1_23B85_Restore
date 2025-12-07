uint64_t FstSearchDurationHashBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 240);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(*(this + 232), a2, v4);
    v8 = *(*(v6 + 232) + 28 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 244);
    if (a2 > v9)
    {
      this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v6 + 232, a2 - v9, 0);
    }

    v10 = *(v6 + 240);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = *(v6 + 232) + 28 * v10 + 12;
      do
      {
        *(v12 - 12) = 0xFFFFFFFF00000000;
        *(v12 - 4) = -1;
        *v12 = -2;
        *(v12 + 8) = 0;
        *(v12 + 4) = 0;
        v12 += 28;
        --v11;
      }

      while (v11);
    }

    *(v6 + 240) = a2;
  }

  return this;
}

uint64_t FstSearchDurationHashBackoff::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 280) + v5);
        v8 = *v7;
        v9 = v7[6];
        v10 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = -2 - v7;
        if (v10 == 16777213)
        {
          v12 = (*(v2 + 160) + 28 * v11);
          v10 = 16777209;
          if (*v12 == 16777209)
          {
            v11 = *(*(v2 + 176) + 16 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v14) = *(v2 + 168);
        }

        v15 = (*(v2 + 160) + 28 * v14);
        *v15 = v10;
        v15[1] = v13;
        v15[2] = -1;
        v15[3] = v8;
        v15[5] = 0;
        v15[6] = 0;
        v15[4] = v11;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 224);
        if (v17 == *(v2 + 228))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 216, 1, 1);
          LODWORD(v17) = *(v2 + 224);
        }

        v18 = *(v2 + 216) + 28 * v17;
        *v18 = v8;
        *(v18 + 4) = v9;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        ++*(v2 + 224);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 288);
        if (v19 >= *(v2 + 20))
        {
          v19 = *(v2 + 20);
        }

        v5 += 36;
      }

      while (v6 < v19);
    }
  }

  return this;
}

char *FstSearchDurationHashBackoff::propagateNulls(char *this, int a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = *(this + 42);
  v6 = *(this + 56);
  if (!v6)
  {
    v37 = *(this + 38);
    if (a4)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v48 = *(this + 42);
  v49 = a4;
  v7 = 0;
  v58 = a2;
  do
  {
    v8 = *(*(v4 + 27) + 28 * v7 + 4);
    v9 = *(v4 + 5);
    if (*(v9 + 160) != v8 && (*(v9 + 140) <= v8 || (*(*(v9 + 152) + 4 * v8) & 0x40000000) != 0))
    {
      v10 = *(*(v4 + 27) + 28 * v7 + 4);
      v57 = v7;
      v56 = v10;
      do
      {
        v11 = *(v4 + 5);
        v12 = *(v11 + 152);
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * (v10 + 1));
        v15 = *(v11 + 140);
        if (v15 > v14)
        {
          goto LABEL_32;
        }

        v16 = (v13 & 0xFFFFF) <= 0xFFFF3 ? v13 & 0xFFFFF : v13 & 0xFFFFF | 0xF00000;
        if (v15 <= v8 && v16 != 16777210)
        {
          goto LABEL_32;
        }

        v18 = (v13 >> 20) & 0x3FF;
        v19 = *(v4 + 27);
        v20 = v19 + 28 * v7;
        v21 = *v20 + v18;
        if (v21 > a2)
        {
          goto LABEL_32;
        }

        v22 = *(v20 + 8);
        v23 = *(v20 + 12);
        v24 = *(v20 + 14);
        v25 = *(v20 + 16);
        v26 = *(v20 + 24);
        v27 = v25 + v18;
        if (v16 == 16777210)
        {
          if (v6 != *(v4 + 57))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v16 == 16777214)
          {
            v21 = *v20 - v25;
            v28 = 0;
          }

          else
          {
            v28 = v25 + v18;
          }

          if (v16 == 16777214)
          {
            v29 = v27;
          }

          else
          {
            v29 = 0;
          }

          v30 = *(v4 + 42);
          if (v30 == *(v4 + 43))
          {
            v53 = *(v20 + 14);
            v54 = *(v20 + 12);
            v51 = v29;
            v52 = *(v20 + 8);
            v50 = v28;
            DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts((v4 + 160), 1, 1);
            v28 = v50;
            v29 = v51;
            v22 = v52;
            v24 = v53;
            v23 = v54;
            a2 = v58;
            LODWORD(v30) = *(v4 + 42);
          }

          this = 0;
          v31 = (*(v4 + 20) + 28 * v30);
          *v31 = v16;
          v31[1] = a3;
          v31[2] = -1;
          v31[3] = v21;
          v31[4] = v22;
          v31[5] = v28;
          v31[6] = v26;
          v22 = *(v4 + 42);
          *(v4 + 42) = v22 + 1;
          v21 += v29;
          v6 = *(v4 + 56);
          v26 = 0;
          if (v6 != *(v4 + 57))
          {
            goto LABEL_30;
          }
        }

        v32 = v27;
        v33 = v24;
        v34 = v23;
        v35 = v22;
        DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts((v4 + 216), 1, 1);
        v22 = v35;
        v24 = v33;
        v27 = v32;
        v8 = v56;
        v7 = v57;
        v23 = v34;
        a2 = v58;
        v6 = *(v4 + 56);
        this = v26;
LABEL_30:
        v19 = *(v4 + 27);
        LODWORD(v26) = this;
LABEL_31:
        v36 = v19 + 28 * v6;
        *v36 = v21;
        *(v36 + 4) = v14;
        *(v36 + 8) = v22;
        *(v36 + 12) = v23;
        *(v36 + 14) = v24;
        *(v36 + 16) = v27;
        *(v36 + 20) = 0;
        *(v36 + 24) = v26;
        v6 = *(v4 + 56) + 1;
        *(v4 + 56) = v6;
LABEL_32:
        v10 += 2;
      }

      while ((v13 & 0x80000000) == 0);
    }

    ++v7;
  }

  while (v7 < v6);
  v37 = *(v4 + 38);
  if (v6 > v37)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 27) + 28 * v37), v6 - v37, 28, 0);
    v37 = *(v4 + 38);
    v6 = *(v4 + 56);
  }

  a4 = v49;
  v5 = v48;
  if (v37 < v6)
  {
    v38 = v37;
    v39 = v37 - 1;
    v40 = 28 * v37;
    do
    {
      v41 = *(v4 + 27);
      v42 = (v41 + v40);
      if (*(v41 + v40 + 4) != *(v41 + 28 * v39 + 4))
      {
        v43 = (v41 + 28 * v37);
        v44 = *v42;
        *(v43 + 12) = *(v42 + 12);
        *v43 = v44;
        ++v37;
        v6 = *(v4 + 56);
      }

      ++v38;
      ++v39;
      v40 += 28;
    }

    while (v38 < v6);
  }

  if (v49)
  {
LABEL_42:
    *(a4 + 1) += *(v4 + 42) - v5;
  }

LABEL_43:
  v45 = *(v4 + 57);
  if (v37 > v45)
  {
    this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts((v4 + 216), v37 - v45, 0);
    v6 = *(v4 + 56);
  }

  if (v6 < v37)
  {
    v46 = v37 - v6;
    v47 = *(v4 + 27) + 28 * v6 + 12;
    do
    {
      *(v47 - 12) = 0xFFFFFFFF00000000;
      *(v47 - 4) = -1;
      *v47 = -2;
      *(v47 + 8) = 0;
      *(v47 + 4) = 0;
      v47 += 28;
      --v46;
    }

    while (v46);
  }

  *(v4 + 56) = v37;
  return this;
}

uint64_t FstSearchDurationHashBackoff::collectTraces(FstSearchDurationHashBackoff *this)
{
  v2 = *(this + 42);
  v42 = 0;
  v41 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v41 = v3;
    v42 = v2;
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
      v13 += 7;
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
    goto LABEL_38;
  }

  v17 = 28 * v16 - 12;
  v18 = v3 + v16 - 1;
  do
  {
    if (*v18--)
    {
      v20 = *(*(this + 20) + v17);
      if (v20 != -1)
      {
        *(v3 + v20) = 1;
      }
    }

    v17 -= 28;
  }

  while (v17 != -12);
  v21 = *(this + 42);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      if (*(v3 + v23))
      {
        v25 = *(this + 20);
        if (v23 != v24)
        {
          v26 = (v25 + v22);
          v27 = (v25 + 28 * v24);
          v28 = *v26;
          *(v27 + 12) = *(v26 + 12);
          *v27 = v28;
          v25 = *(this + 20);
        }

        v29 = v25 + 28 * v24;
        v32 = *(v29 + 16);
        v30 = (v29 + 16);
        v31 = v32;
        if (v32 != -1)
        {
          *v30 = *(v3 + v31);
        }

        *(v3 + v23) = v24++;
        v21 = *(this + 42);
      }

      ++v23;
      v22 += 28;
    }

    while (v23 < v21);
    v33 = *(this + 43);
    if (v24 > v33)
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 160, v24 - v33, 0);
      v21 = *(this + 42);
    }

    if (v21 < v24)
    {
      v34 = v24 - v21;
      v35 = (*(this + 20) + 28 * v21 + 24);
      do
      {
        *(v35 - 6) = xmmword_26287F860;
        *(v35 - 1) = 0xFFFFFFFFLL;
        *v35 = 0;
        v35 += 7;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
LABEL_38:
    v24 = 0;
  }

  *(this + 42) = v24;
  v36 = *(this + 56);
  if (v36)
  {
    v37 = v41;
    v38 = (*(this + 27) + 8);
    do
    {
      v39 = *v38;
      if (v39 != -1)
      {
        *v38 = *(v37 + v39);
      }

      v38 += 7;
      --v36;
    }

    while (v36);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v41);
}

int64x2_t FstSearchDurationHashBackoff::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchDurationHashBackoff::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchDurationHashBackoff::collectTraces(this);
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

int64x2_t FstSearchDurationHashBackoff::reset(FstSearchDurationHashBackoff *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 56) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchDurationHashBackoff::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchDurationHashBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchDurationHashBackoff::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchDurationHashBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchDurationHashBackoff::generateTraceTokensFromTraces(this);
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
  *(this + 64) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

uint64_t *FstSearchDurationHashBackoff::generateTraceTokensFromTraces(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 42);
  v3 = *(this + 47);
  if (v2 > v3)
  {
    this = DgnArray<DgnPrimArray<double>>::reallocElts((this + 22), v2 - v3, 0);
  }

  v4 = *(v1 + 184);
  if (v4 < v2)
  {
    v5 = v2 - v4;
    v6 = (*(v1 + 176) + 16 * v4);
    do
    {
      *v6++ = xmmword_26287F890;
      --v5;
    }

    while (v5);
  }

  *(v1 + 184) = v2;
  v7 = *(v1 + 168);
  if (v7)
  {
    v8 = 0;
    v9 = *(v1 + 176);
    v10 = (*(v1 + 160) + 12);
    do
    {
      *(v10 - 1) = v8;
      v11 = (v9 + 16 * v8);
      v12 = *v10;
      v10 = (v10 + 28);
      v13 = v12;
      v14 = vextq_s8(v13, v13, 8uLL).u64[0];
      vst2_f32(v11, v13);
      ++v8;
    }

    while (v7 != v8);
  }

  return this;
}

void FstSearchDurationHashBackoff::printSize(FstSearchDurationHashBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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
  v27 = 28 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 28 * (*(this + 43) - v26);
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

  v40 = *(this + 56);
  v41 = 26 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 26 * (*(this + 57) - v40);
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
  v48 = 26 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 26 * (*(this + 61) - v47);
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

uint64_t FstSearchDurationHashBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
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

  v6 = 28 * v4;
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

    v11 = *(a1 + 160) + 28 * v10;
    v12 = *(v11 + 12) + *(*(a1 + 88) + 4 * *(v11 + 4));
    v13 = v7 <= v12;
    if (v7 >= v12)
    {
      v7 = v12;
    }

    if (!v13)
    {
      v8 = v10;
    }

    v5 = *(a1 + 224);
LABEL_19:
    ++v4;
    v6 += 28;
  }

  while (v4 < v5);
  if (v8 == 0xFFFFFFFFLL)
  {
LABEL_21:
    v14 = *(a1 + 168);
    v8 = 0xFFFFFFFFLL;
    while (v14)
    {
      --v14;
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 28 * v14) == 16777213)
      {
        if (a2)
        {
          *(*a2 + v14) = 1;
        }

        v8 = v14;
        if (a3)
        {
          *(*a3 + v14) = 1;
        }

        return v8;
      }
    }
  }

  return v8;
}

BOOL FstSearchDurationHashBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchDurationHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 28 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

unint64_t FstSearchDurationHashBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v9 = a2;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = *(a2 + 2) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a2 = MemChunkAlloc(4 * v11, 0);
    *(v9 + 2) = v11;
  }

  result = Lattice<WordLatticeLC>::createNode(a4);
  v14 = result;
  v15 = *(a3 + 8);
  if (v15 == *(a3 + 12))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
    v15 = *(a3 + 8);
  }

  *(*a3 + 4 * v15) = v14;
  ++*(a3 + 8);
  v16 = *(a1 + 168);
  v17 = a7;
  if (v16)
  {
    v18 = (v16 - 1);
    v19 = 28 * v18;
    v20 = 0xFFFFFFFFLL;
    do
    {
      v21 = *v9;
      *(*v9 + v18) = -1;
      v22 = *a6;
      if (*(*a6 + v18))
      {
        v23 = *(a1 + 160);
        v24 = *(*(a1 + 88) + 4 * *(v23 + v19 + 4));
        if (*(*v17 + v18) == 1)
        {
          if (*(*a6 + v18) != 1 || v20 == -1)
          {
            v26 = v20;
            result = Lattice<WordLatticeLC>::createNode(a4);
            v27 = result;
            v28 = *(a3 + 8);
            *(*v9 + v18) = v28;
            if (v28 == *(a3 + 12))
            {
              result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              v28 = *(a3 + 8);
            }

            *(*a3 + 4 * v28) = v27;
            v29 = *(a3 + 8);
            *(a3 + 8) = v29 + 1;
            v22 = *a6;
            if (*(*a6 + v18) == 1)
            {
              v20 = v29;
            }

            else
            {
              v20 = v26;
            }

            v23 = *(a1 + 160);
            v17 = a7;
          }

          else
          {
            *(v21 + v18) = v20;
          }
        }

        v30 = *(a1 + 176);
        v31 = (v30 + 16 * *(v23 + v19 + 8));
        v32 = v31[2];
        if ((v32 & 0x80000000) != 0)
        {
          *v31 += v24;
        }

        else
        {
          if (*(v23 + v19) == 16777209)
          {
            v33 = *a5 + 16 * v32;
            v34 = *(v33 + 8);
            if (v34 == *(v33 + 12))
            {
              v43 = v24;
              v35 = v9;
              v36 = a6;
              v37 = a3;
              v38 = v20;
              result = DgnPrimArray<unsigned int>::reallocElts(v33, 1, 1);
              v20 = v38;
              a3 = v37;
              a6 = v36;
              v9 = v35;
              v24 = v43;
              v17 = a7;
              v34 = *(v33 + 8);
              v23 = *(a1 + 160);
              v30 = *(a1 + 176);
              v22 = *a6;
            }

            *(*v33 + 4 * v34) = v18;
            ++*(v33 + 8);
            v32 = v31[2];
          }

          else
          {
            *(*v17 + v32) = 1;
          }

          v39 = v23 + 28 * v32;
          v40 = *(*(a1 + 88) + 4 * *(v39 + 4));
          v41 = (v30 + 16 * *(v39 + 8));
          v42 = v24 + *v31 - v40 - *v41;
          LODWORD(v41) = v31[1] - v41[1];
          *v31 = v42;
          v31[1] = v41;
          *(v22 + v32) = 2;
        }
      }

      --v18;
      v19 -= 28;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t FstSearchDurationHashBackoff::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v25, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchDurationHashBackoff::createLatticeNodes(a1, &v28, &v26, a2, v25, a3, a4);
  v23 = v9;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = 0;
    v13 = v27;
    do
    {
      if (*(*a3 + v12))
      {
        v14 = (*(a1 + 160) + 28 * v12);
        if ((*v14 - 16777209) >= 2)
        {
          v15 = *(a1 + 176) + 16 * v14[2];
          v16 = *(v15 + 8);
          if (v16 == -1)
          {
            v17 = 0;
          }

          else
          {
            v17 = (v13 - *(v28 + v16));
          }

          v18 = *(v26 + 4 * v17);
          if (*(*a4 + v12) == 1)
          {
            FstSearchDurationHashBackoff::createLatticeLink(a1, v12, v15, 0xFFFFFFFF, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearchDurationHashBackoff::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
              ++v20;
              v19 = v25[0] + 16 * v12;
            }

            while (v20 < *(v19 + 8));
          }
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v28);
}

void sub_26262E9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void FstSearchDurationHashBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 16 * *(v16 + 28 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 16 * *(v16 + 28 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(v39, *(a1 + 40), *(v16 + 28 * a2));
  v18 = a3[1];
  if (v17)
  {
    v18 += v17[1];
    v19 = *v17 + *a3;
  }

  else
  {
    v19 = *a3;
  }

  if (LODWORD(v39[0]) >> 25 == 126)
  {
    v20 = 0;
    v21 = v18;
    if ((a4 & 0x80000000) != 0)
    {
LABEL_11:
      v22 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v20 = *(a1 + 136);
    v21 = v18 - v20;
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(a1 + 140);
  v21 -= v22;
LABEL_14:
  v23 = a3[3];
  if (v17)
  {
    v23 += v17[3];
  }

  v33 = v21;
  v34 = 0;
  v35 = v20;
  v36 = v19 - (v18 + v23);
  v37 = v23;
  v38 = v22;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 != -1)
  {
    v26 = *(v25 + 28 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_20;
    }

    v27 = v26 + 1;
LABEL_23:
    v28 = *(v25 + 28 * a2 + 4);
    v29 = v28 - v27 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v30 = *(v25 + 28 * a4 + 4);
      goto LABEL_25;
    }

LABEL_26:
    v31 = 0;
    goto LABEL_27;
  }

  v27 = 0;
  if (!a9)
  {
    goto LABEL_23;
  }

LABEL_20:
  v28 = (*(v25 + 28 * a2 + 4) - 1) / 2;
  v29 = v28 - v27 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v30 = (*(v25 + 28 * a4 + 4) - 1) / 2;
LABEL_25:
  v31 = v30 - v28;
LABEL_27:
  WordLatticeLC::WordLatticeLC(v32, v39, v27, v29, v31, &v33);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v32);
  WordLatticeLC::~WordLatticeLC(v32);
}

void sub_26262EC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchDurationHashBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 380) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 264);
  }

  return this;
}

VirtMap *FstSearchDurationHashBackoff::endTopRecSyncRecog(VirtMap **this)
{
  VirtMap::setEmpty(this[14]);
  result = this[14];
  this[14] = 0;
  return result;
}

uint64_t FstSearchDurationHashBackoff::getBestExitScore(FstSearchDurationHashBackoff *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 63) = -1;
  v1 = *(this + 38);
  v2 = *(this + 56);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 28 * v1;
  do
  {
    v7 = *(this + 27) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 28 * v8 + 4) == *(this + 62))
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
        v2 = *(this + 56);
      }
    }

    ++v1;
    v6 += 28;
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
      v13 = v9 + 28 * v12;
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 63) = *(v13 + 16);
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

uint64_t FstSearchDurationHashBackoff::getBestScoreMaybeUpdateFstNode(FstSearchDurationHashBackoff *this, Node *a2)
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

      v3 += 28;
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

char *FstSearchDurationHashBackoff::seedTheory(FstSearchDurationHashBackoff *this, int a2, int a3, int a4, SearchStats *a5)
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
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 28 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    *(v12 + 24) = 0;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 56);
  if (v14 == *(this + 57))
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 216, 1, 1);
    v14 = *(this + 56);
  }

  v15 = *(this + 27) + 28 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  LODWORD(v15) = *(this + 56) + 1;
  *(this + 56) = v15;
  *(this + 38) = v15;

  return FstSearchDurationHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchDurationHashBackoff::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 63);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 28 * v6);
    for (i = v8[4]; i != -1; v6 = v14)
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
      v19 = *(v18 + 28 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v18 + 28 * v6 + 12);
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 28 * v14);
      i = v8[4];
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchDurationHashBackoff::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
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

void FstSearchDurationHashBackoff::getHistory(uint64_t *result, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 == -1)
  {
    *(a3 + 8) = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = a2;
    v9 = a2;
    do
    {
      v10 = (result[20] + 28 * v9);
      if (*v10 == 16777209)
      {
        v7 = v7;
      }

      else
      {
        v7 = (v7 + 1);
      }

      v9 = v10[4];
    }

    while (v9 != -1);
    v11 = *(a3 + 12);
    if (v7 > v11)
    {
      DgnArray<PrefilterResultFrame>::reallocElts(a3, v7 - v11, 0);
    }

    v12 = *(a3 + 8);
    if (v12 < v7)
    {
      v13 = v7 - v12;
      v14 = *a3 + 32 * v12;
      do
      {
        *v14 = 0x3FFFFAFFFFFFLL;
        *(v14 + 8) = xmmword_26286CC40;
        *(v14 + 24) = 0x1F0000001FLL;
        v14 += 32;
        --v13;
      }

      while (v13);
    }

    *(a3 + 8) = v7;
    if (v7)
    {
      v15 = result[20];
      v16 = -16;
      do
      {
        v17 = (v15 + 28 * v8);
        v18 = v17[1];
        if (*v17 == 16777209)
        {
          if (a4)
          {
            v16 = (v18 - 1) / 2 + 1;
          }

          else
          {
            v16 = v18 + 1;
          }
        }

        else
        {
          if (a4)
          {
            v18 = (v18 - 1) / 2;
          }

          ArcGraph::lexToCWIDAC(&v22, result[5], *v17);
          if (v16 == -16)
          {
            v19 = v18 + 1;
          }

          else
          {
            v19 = v16;
          }

          v20 = HIDWORD(v22);
          v7 = (v7 - 1);
          v21 = *a3 + 32 * v7;
          *v21 = v22;
          *(v21 + 4) = v20;
          *(v21 + 8) = v23;
          *(v21 + 24) = v18 + 1;
          *(v21 + 28) = v19;
          v15 = result[20];
          v16 = -16;
        }

        v8 = *(v15 + 28 * v8 + 16);
      }

      while (v8 != -1);
    }
  }
}

uint64_t FstSearchDurationHashBackoff::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
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
  BestTrace = FstSearchDurationHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchDurationHashBackoff::getHistory(a1, BestTrace, a3, a4);
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

  v18 = a1[20] + 28 * v11;
  return (*(v18 + 12) + *(a1[11] + 4 * *(v18 + 4)));
}

void FstSearchDurationHash::FstSearchDurationHash(FstSearchDurationHash *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287525868;
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

uint64_t FstSearchDurationHash::maybeInitDurModel(FstSearchDurationHash *this, const PicMgr *a2, int a3)
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

int64x2_t FstSearchDurationHash::advanceDeltas(FstSearchDurationHash *this, int a2, int a3, SearchStats *a4, int a5)
{
  v8 = a2;
  v94[0] = a2;
  v92 = 0u;
  v93 = 0u;
  SnapTime::recordTime(&v92, 1, 0, 0, 0);
  *v91 = 0xFFFFFFFF00000000;
  *&v91[8] = -1;
  *&v91[12] = -2;
  *&v91[16] = 0;
  *&v91[24] = 0;
  v10 = (this + 256);
  *(this + 64) = a3;
  v11 = *(this + 2);
  v12 = *(this + 56);
  if (v12)
  {
    v68 = a5;
    v13 = 0;
    v71 = *(this + 53);
    v69 = v8;
    v70 = *(this + 208);
    do
    {
      v14 = *(this + 27) + 28 * v13;
      v15 = *(v14 + 4);
      v16 = *(this + 5);
      if (*(v16 + 160) != v15)
      {
        if (*(v16 + 140) > v15)
        {
          v17 = *v14;
          ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v14 + 12));
          v19 = (*(this + 27) + 28 * v13);
          v20 = *v19;
          *&v91[12] = *(v19 + 12);
          *v91 = v20;
          v21 = WORD6(v20);
          if (WORD6(v20))
          {
            if (*&v91[20] >= 1)
            {
              v22 = v70 - *&v91[20];
            }

            else
            {
              v22 = v70;
            }

            v21 = v22 & ((*&v91[20] - v70) >> 31);
            *&v91[20] -= v70;
            *&v91[24] += v21;
          }

          v23 = ScoreNoBackoff + v17 + v21;
          if (v23 - v11 <= *v10)
          {
            if (*v10 > v23)
            {
              *v10 = v23;
            }

            *v91 = v23;
            FstSearchDurationHashBackoff::maybeInsertHashedToken(this, v91);
          }
        }

        v24 = v15;
        do
        {
          v25 = *(this + 5);
          v26 = *(v25 + 152);
          v27 = *(v26 + 4 * v24);
          v28 = *(v26 + 4 * (v24 + 1));
          v29 = *(v25 + 140);
          if (v29 <= v28)
          {
            if (v29 <= v15 && (*(this + 380) & 1) != 0)
            {
              v37 = (v27 & 0xFFFFF) <= 0xFFFF3 ? v27 & 0xFFFFF : v27 & 0xFFFFF | 0xF00000;
              if (v37 != 16777210)
              {
                DgnString::DgnString(&v88);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v37, &v88);
                v39 = &unk_26287F8B0;
                if (v88.i32[2])
                {
                  v39 = v88.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v38, v15, *(*(this + 27) + 28 * v13), *(*(this + 27) + 28 * v13 + 8), v39);
                MiniFst::seed(this + 264, *(*(this + 27) + 28 * v13), 0, *(*(this + 27) + 28 * v13 + 8), v28);
                DgnString::~DgnString(&v88);
              }
            }
          }

          else
          {
            v30 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v26 + 4 * v24));
            v31 = *(this + 27) + 28 * v13;
            v32 = *v31;
            v33 = *v31;
            *&v91[12] = *(v31 + 12);
            *v91 = v33;
            v34 = *&v91[20] & ~(*&v91[20] >> 31);
            if (v27)
            {
              v35 = *(*(this + 24) + 2 * v27);
              v34 -= v35 & (v35 >> 31);
              v36 = v71;
            }

            else
            {
              v35 = 0;
              v36 = 0;
            }

            v40 = (v27 >> 20) & 0x3FF;
            v41 = v36 + v34;
            *&v91[20] = v35;
            *&v91[24] += v41;
            v42 = v30 + v40 + v32 + v41;
            if (v42 - v11 <= *v10)
            {
              if (*v10 > v42)
              {
                *v10 = v42;
              }

              *v91 = v42;
              *&v91[4] = v28;
              *&v91[12] = v27;
              *&v91[16] += v40;
              FstSearchDurationHashBackoff::maybeInsertHashedToken(this, v91);
            }
          }

          v24 += 2;
        }

        while ((v27 & 0x80000000) == 0);
        v12 = *(this + 56);
      }

      ++v13;
    }

    while (v13 < v12);
    a3 = *v10;
    v8 = v69;
    a5 = v68;
  }

  v90 = a3 + v11;
  if (*(this + 380) == 1)
  {
    MiniFst::updateFrame(this + 264, this + 64, v11, v8);
  }

  v88 = 0u;
  v89 = 0u;
  SnapTime::recordTime(&v88, 1, 0, 0, 0);
  v88 = vsubq_s64(v88, v92);
  v89 = vsubq_s64(v89, v93);
  v43 = *(this + 13);
  v44 = vaddq_s64(v43[1], v89);
  *v43 = vaddq_s64(*v43, v88);
  v43[1] = v44;
  v86 = 0u;
  v87 = 0u;
  SnapTime::recordTime(&v86, 1, 0, 0, 0);
  FstSearchDurationHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v90);
  v84 = 0u;
  v85 = 0u;
  SnapTime::recordTime(&v84, 1, 0, 0, 0);
  v45 = vsubq_s64(v84, v86);
  v46 = *(this + 13);
  v47 = v46[3];
  v48 = vaddq_s64(v46[2], v45);
  v84 = v45;
  v85 = vsubq_s64(v85, v87);
  v49 = vaddq_s64(v47, v85);
  v46[2] = v48;
  v46[3] = v49;
  v82 = 0u;
  v83 = 0u;
  SnapTime::recordTime(&v82, 1, 0, 0, 0);
  v50 = *(this + 27);
  v51 = *(this + 29);
  *(this + 27) = v51;
  *(this + 29) = v50;
  LODWORD(v50) = *(this + 57);
  v52 = *(this + 30);
  *(this + 28) = v52;
  *(this + 60) = 0;
  *(this + 61) = v50;
  v53 = *(this + 6);
  if (v53 && v53 < v52)
  {
    mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(v51, v53, v52);
  }

  v80 = 0u;
  v81 = 0u;
  SnapTime::recordTime(&v80, 1, 0, 0, 0);
  v54 = vsubq_s64(v80, v82);
  v55 = *(this + 13);
  v56 = v55[5];
  v57 = vaddq_s64(v55[4], v54);
  v80 = v54;
  v81 = vsubq_s64(v81, v83);
  v58 = vaddq_s64(v56, v81);
  v55[4] = v57;
  v55[5] = v58;
  v78 = 0u;
  v79 = 0u;
  SnapTime::recordTime(&v78, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v76 = 0u;
  v77 = 0u;
  SnapTime::recordTime(&v76, 1, 0, 0, 0);
  v59 = vsubq_s64(v76, v78);
  v60 = *(this + 13);
  v61 = v60[9];
  v62 = vaddq_s64(v60[8], v59);
  v76 = v59;
  v77 = vsubq_s64(v77, v79);
  v63 = vaddq_s64(v61, v77);
  v60[8] = v62;
  v60[9] = v63;
  v74 = 0u;
  v75 = 0u;
  SnapTime::recordTime(&v74, 1, 0, 0, 0);
  *(this + 60) = 0;
  v64 = *(this + 56);
  *(this + 38) = v64;
  if (a4)
  {
    *(a4 + 2) += v64;
    if (*(a4 + 2) > v64)
    {
      LODWORD(v64) = *(a4 + 2);
    }

    *(a4 + 2) = v64;
  }

  if (*(this + 380) == 1)
  {
    FstSearchDurationHash::seedFromMiniFst(this, v94);
  }

  if (a5)
  {
    FstSearchDurationHashBackoff::propagateNulls(this, v90, v8, a4);
  }

  *(this + 62) = v8;
  v72 = 0u;
  v73 = 0u;
  SnapTime::recordTime(&v72, 1, 0, 0, 0);
  v65 = *(this + 13);
  result = vaddq_s64(v65[6], vsubq_s64(v72, v74));
  v67 = vaddq_s64(v65[7], vsubq_s64(v73, v75));
  v65[6] = result;
  v65[7] = v67;
  return result;
}

uint64_t FstSearchDurationHash::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 280) + v5);
        v8 = *v7;
        v9 = v7[6];
        v10 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = -2 - v7;
        if (v10 == 16777213)
        {
          v12 = (*(v2 + 160) + 28 * v11);
          v10 = 16777209;
          if (*v12 == 16777209)
          {
            v11 = *(*(v2 + 176) + 16 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v14) = *(v2 + 168);
        }

        v15 = (*(v2 + 160) + 28 * v14);
        *v15 = v10;
        v15[1] = v13;
        v15[2] = -1;
        v15[3] = v8;
        v15[5] = 0;
        v15[6] = 0;
        v15[4] = v11;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 224);
        if (v17 == *(v2 + 228))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 216, 1, 1);
          LODWORD(v17) = *(v2 + 224);
        }

        v18 = *(v2 + 216) + 28 * v17;
        *v18 = v8;
        *(v18 + 4) = v9;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        ++*(v2 + 224);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 288);
        if (v19 >= *(v2 + 20))
        {
          v19 = *(v2 + 20);
        }

        v5 += 36;
      }

      while (v6 < v19);
    }
  }

  return this;
}

uint64_t FstSearchDurationHash::collectTraces(FstSearchDurationHash *this)
{
  v2 = *(this + 42);
  v42 = 0;
  v41 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v41 = v3;
    v42 = v2;
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
      v13 += 7;
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
    goto LABEL_38;
  }

  v17 = 28 * v16 - 12;
  v18 = v3 + v16 - 1;
  do
  {
    if (*v18--)
    {
      v20 = *(*(this + 20) + v17);
      if (v20 != -1)
      {
        *(v3 + v20) = 1;
      }
    }

    v17 -= 28;
  }

  while (v17 != -12);
  v21 = *(this + 42);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      if (*(v3 + v23))
      {
        v25 = *(this + 20);
        if (v23 != v24)
        {
          v26 = (v25 + v22);
          v27 = (v25 + 28 * v24);
          v28 = *v26;
          *(v27 + 12) = *(v26 + 12);
          *v27 = v28;
          v25 = *(this + 20);
        }

        v29 = v25 + 28 * v24;
        v32 = *(v29 + 16);
        v30 = (v29 + 16);
        v31 = v32;
        if (v32 != -1)
        {
          *v30 = *(v3 + v31);
        }

        *(v3 + v23) = v24++;
        v21 = *(this + 42);
      }

      ++v23;
      v22 += 28;
    }

    while (v23 < v21);
    v33 = *(this + 43);
    if (v24 > v33)
    {
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 160, v24 - v33, 0);
      v21 = *(this + 42);
    }

    if (v21 < v24)
    {
      v34 = v24 - v21;
      v35 = (*(this + 20) + 28 * v21 + 24);
      do
      {
        *(v35 - 6) = xmmword_26287F860;
        *(v35 - 1) = 0xFFFFFFFFLL;
        *v35 = 0;
        v35 += 7;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
LABEL_38:
    v24 = 0;
  }

  *(this + 42) = v24;
  v36 = *(this + 56);
  if (v36)
  {
    v37 = v41;
    v38 = (*(this + 27) + 8);
    do
    {
      v39 = *v38;
      if (v39 != -1)
      {
        *v38 = *(v37 + v39);
      }

      v38 += 7;
      --v36;
    }

    while (v36);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v41);
}

int64x2_t FstSearchDurationHash::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchDurationHash::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchDurationHash::collectTraces(this);
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

int64x2_t FstSearchDurationHash::reset(FstSearchDurationHash *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 56) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchDurationHash::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchDurationHash::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchDurationHash::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchDurationHash::endTopRecPassSyncRecog(FstSearchDurationHash *this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchDurationHashBackoff::generateTraceTokensFromTraces(this);
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

void FstSearchDurationHash::printSize(FstSearchDurationHash *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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
  v27 = 28 * v26;
  if (v26 <= 0)
  {
    v27 = 0;
  }

  v28 = v27 + v25;
  v29 = v27 + v25 + 28 * (*(this + 43) - v26);
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

  v40 = *(this + 56);
  v41 = 26 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 26 * (*(this + 57) - v40);
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
  v48 = 26 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 26 * (*(this + 61) - v47);
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

BOOL FstSearchDurationHash::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchDurationHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 28 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchDurationHash::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v25, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchDurationHashBackoff::createLatticeNodes(a1, &v28, &v26, a2, v25, a3, a4);
  v23 = v9;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = 0;
    v13 = v27;
    do
    {
      if (*(*a3 + v12))
      {
        v14 = (*(a1 + 160) + 28 * v12);
        if ((*v14 - 16777209) >= 2)
        {
          v15 = *(a1 + 176) + 16 * v14[2];
          v16 = *(v15 + 8);
          if (v16 == -1)
          {
            v17 = 0;
          }

          else
          {
            v17 = (v13 - *(v28 + v16));
          }

          v18 = *(v26 + 4 * v17);
          if (*(*a4 + v12) == 1)
          {
            FstSearchDurationHash::createLatticeLink(a1, v12, v15, 0xFFFFFFFF, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearchDurationHash::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
              ++v20;
              v19 = v25[0] + 16 * v12;
            }

            while (v20 < *(v19 + 8));
          }
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v28);
}

void sub_262630F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void FstSearchDurationHash::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 16 * *(v16 + 28 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 16 * *(v16 + 28 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(v39, *(a1 + 40), *(v16 + 28 * a2));
  v18 = a3[1];
  if (v17)
  {
    v18 += v17[1];
    v19 = *v17 + *a3;
  }

  else
  {
    v19 = *a3;
  }

  if (LODWORD(v39[0]) >> 25 == 126)
  {
    v20 = 0;
    v21 = v18;
    if ((a4 & 0x80000000) != 0)
    {
LABEL_11:
      v22 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v20 = *(a1 + 136);
    v21 = v18 - v20;
    if ((a4 & 0x80000000) != 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(a1 + 140);
  v21 -= v22;
LABEL_14:
  v23 = a3[3];
  if (v17)
  {
    v23 += v17[3];
  }

  v33 = v21;
  v34 = 0;
  v35 = v20;
  v36 = v19 - (v18 + v23);
  v37 = v23;
  v38 = v22;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 != -1)
  {
    v26 = *(v25 + 28 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_20;
    }

    v27 = v26 + 1;
LABEL_23:
    v28 = *(v25 + 28 * a2 + 4);
    v29 = v28 - v27 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v30 = *(v25 + 28 * a4 + 4);
      goto LABEL_25;
    }

LABEL_26:
    v31 = 0;
    goto LABEL_27;
  }

  v27 = 0;
  if (!a9)
  {
    goto LABEL_23;
  }

LABEL_20:
  v28 = (*(v25 + 28 * a2 + 4) - 1) / 2;
  v29 = v28 - v27 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  v30 = (*(v25 + 28 * a4 + 4) - 1) / 2;
LABEL_25:
  v31 = v30 - v28;
LABEL_27:
  WordLatticeLC::WordLatticeLC(v32, v39, v27, v29, v31, &v33);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v32);
  WordLatticeLC::~WordLatticeLC(v32);
}

void sub_2626311BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchDurationHash::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 380) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 264);
  }

  return this;
}

VirtMap *FstSearchDurationHash::endTopRecSyncRecog(VirtMap **this)
{
  VirtMap::setEmpty(this[14]);
  result = this[14];
  this[14] = 0;
  return result;
}

uint64_t FstSearchDurationHash::getBestExitScore(FstSearchDurationHash *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 63) = -1;
  v1 = *(this + 38);
  v2 = *(this + 56);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 28 * v1;
  do
  {
    v7 = *(this + 27) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 28 * v8 + 4) == *(this + 62))
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
        v2 = *(this + 56);
      }
    }

    ++v1;
    v6 += 28;
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
      v13 = v9 + 28 * v12;
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 63) = *(v13 + 16);
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

uint64_t FstSearchDurationHash::getBestScoreMaybeUpdateFstNode(FstSearchDurationHash *this, Node *a2)
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

      v3 += 28;
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

char *FstSearchDurationHash::seedTheory(FstSearchDurationHash *this, int a2, int a3, int a4, SearchStats *a5)
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
      DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 28 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    *(v12 + 24) = 0;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 56);
  if (v14 == *(this + 57))
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 216, 1, 1);
    v14 = *(this + 56);
  }

  v15 = *(this + 27) + 28 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  LODWORD(v15) = *(this + 56) + 1;
  *(this + 56) = v15;
  *(this + 38) = v15;

  return FstSearchDurationHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchDurationHash::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 63);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 28 * v6);
    for (i = v8[4]; i != -1; v6 = v14)
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
      v19 = *(v18 + 28 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v18 + 28 * v6 + 12);
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 28 * v14);
      i = v8[4];
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchDurationHash::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
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

uint64_t FstSearchDurationHash::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
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
  BestTrace = FstSearchDurationHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchDurationHashBackoff::getHistory(a1, BestTrace, a3, a4);
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

  v18 = a1[20] + 28 * v11;
  return (*(v18 + 12) + *(a1[11] + 4 * *(v18 + 4)));
}

int64x2_t FstSearchHashBackoff::advanceDeltas(FstSearchHashBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v86[0] = a2;
  v84 = 0u;
  v85 = 0u;
  SnapTime::recordTime(&v84, 1, 0, 0, 0);
  v82.n128_u64[0] = 0xFFFFFFFF00000000;
  v82.n128_u32[2] = -1;
  v82.n128_u16[6] = -2;
  v83 = 0;
  *(this + 58) = a3;
  v10 = *(this + 2);
  v62 = (this + 232);
  v11 = *(this + 50);
  if (v11)
  {
    v61 = a4;
    for (i = 0; i < v11; ++i)
    {
      v13 = *(this + 24) + 20 * i;
      v14 = *(v13 + 4);
      v15 = *(this + 5);
      if (*(v15 + 160) != v14)
      {
        if (*(v15 + 140) > v14)
        {
          v16 = *(this + 19) + *(this + 58) >= 5000 ? 5000 : *(this + 19) + *(this + 58);
          ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v13 + 12), *v13, v16);
          v18 = *(this + 58);
          if (ScoreAllowBackoff_updateNodeInSequence - v10 <= v18)
          {
            if (v18 > ScoreAllowBackoff_updateNodeInSequence)
            {
              *v62 = ScoreAllowBackoff_updateNodeInSequence;
            }

            v19 = (*(this + 24) + 20 * i);
            v20 = v19[1].n128_u32[0];
            v82 = *v19;
            v83 = v20;
            v82.n128_u32[0] = ScoreAllowBackoff_updateNodeInSequence;
            FstSearchHashBackoff::maybeInsertHashedToken(this, &v82);
          }
        }

        v21 = v14;
        do
        {
          v22 = *(this + 5);
          v23 = *(v22 + 152);
          v24 = *(v23 + 4 * v21);
          v25 = *(v23 + 4 * (v21 + 1));
          v26 = *(v22 + 140);
          if (v26 <= v25)
          {
            if (v26 <= v14 && (*(this + 356) & 1) != 0)
            {
              v33 = (v24 & 0xFFFFF) <= 0xFFFF3 ? v24 & 0xFFFFF : v24 & 0xFFFFF | 0xF00000;
              if (v33 != 16777210)
              {
                DgnString::DgnString(&v79);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v33, &v79);
                v35 = &unk_26287F8B0;
                if (v79.i32[2])
                {
                  v35 = v79.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v34, v14, *(*(this + 24) + 20 * i), *(*(this + 24) + 20 * i + 8), v35);
                MiniFst::seed(this + 240, *(*(this + 24) + 20 * i), 0, *(*(this + 24) + 20 * i + 8), v25);
                DgnString::~DgnString(&v79);
              }
            }
          }

          else
          {
            v27 = (v24 >> 20) & 0x3FF;
            if (*(this + 19) + *(this + 58) >= 5000)
            {
              v28 = 5000;
            }

            else
            {
              v28 = *(this + 19) + *(this + 58);
            }

            v29 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v23 + 4 * v21), *(*(this + 24) + 20 * i) + v27, v28);
            v30 = *(this + 58);
            if (v29 - v10 <= v30)
            {
              if (v30 > v29)
              {
                *v62 = v29;
              }

              v31 = (*(this + 24) + 20 * i);
              v32 = v31[1].n128_u32[0];
              v82 = *v31;
              v82.n128_u64[0] = __PAIR64__(v25, v29);
              v82.n128_u16[6] = v24;
              v83 = v32 + v27;
              FstSearchHashBackoff::maybeInsertHashedToken(this, &v82);
            }
          }

          v21 += 2;
        }

        while ((v24 & 0x80000000) == 0);
        v11 = *(this + 50);
      }
    }

    a3 = *v62;
    a4 = v61;
  }

  v81 = a3 + v10;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v62, v10, a2);
  }

  v79 = 0u;
  v80 = 0u;
  SnapTime::recordTime(&v79, 1, 0, 0, 0);
  v79 = vsubq_s64(v79, v84);
  v80 = vsubq_s64(v80, v85);
  v36 = *(this + 13);
  v37 = vaddq_s64(v36[1], v80);
  *v36 = vaddq_s64(*v36, v79);
  v36[1] = v37;
  v77 = 0u;
  v78 = 0u;
  SnapTime::recordTime(&v77, 1, 0, 0, 0);
  FstSearchHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v81);
  v75 = 0u;
  v76 = 0u;
  SnapTime::recordTime(&v75, 1, 0, 0, 0);
  v38 = vsubq_s64(v75, v77);
  v39 = *(this + 13);
  v40 = v39[3];
  v41 = vaddq_s64(v39[2], v38);
  v75 = v38;
  v76 = vsubq_s64(v76, v78);
  v42 = vaddq_s64(v40, v76);
  v39[2] = v41;
  v39[3] = v42;
  v73 = 0u;
  v74 = 0u;
  SnapTime::recordTime(&v73, 1, 0, 0, 0);
  v43 = *(this + 24);
  v44 = *(this + 26);
  *(this + 24) = v44;
  *(this + 26) = v43;
  LODWORD(v43) = *(this + 51);
  v45 = *(this + 27);
  *(this + 25) = v45;
  *(this + 54) = 0;
  *(this + 55) = v43;
  v46 = *(this + 6);
  if (v46 && v46 < v45)
  {
    mrec_nth_element<FstSearchHashBackoffcmpTok>(v44, v46, v45);
  }

  v71 = 0u;
  v72 = 0u;
  SnapTime::recordTime(&v71, 1, 0, 0, 0);
  v47 = vsubq_s64(v71, v73);
  v48 = *(this + 13);
  v49 = v48[5];
  v50 = vaddq_s64(v48[4], v47);
  v71 = v47;
  v72 = vsubq_s64(v72, v74);
  v51 = vaddq_s64(v49, v72);
  v48[4] = v50;
  v48[5] = v51;
  v69 = 0u;
  v70 = 0u;
  SnapTime::recordTime(&v69, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v67 = 0u;
  v68 = 0u;
  SnapTime::recordTime(&v67, 1, 0, 0, 0);
  v52 = vsubq_s64(v67, v69);
  v53 = *(this + 13);
  v54 = v53[9];
  v55 = vaddq_s64(v53[8], v52);
  v67 = v52;
  v68 = vsubq_s64(v68, v70);
  v56 = vaddq_s64(v54, v68);
  v53[8] = v55;
  v53[9] = v56;
  v65 = 0u;
  v66 = 0u;
  SnapTime::recordTime(&v65, 1, 0, 0, 0);
  *(this + 54) = 0;
  v57 = *(this + 50);
  *(this + 38) = v57;
  if (a4)
  {
    *(a4 + 2) += v57;
    if (*(a4 + 2) > v57)
    {
      LODWORD(v57) = *(a4 + 2);
    }

    *(a4 + 2) = v57;
  }

  if (*(this + 356) == 1)
  {
    FstSearchHashBackoff::seedFromMiniFst(this, v86);
  }

  if (a5)
  {
    FstSearchHashBackoff::propagateNulls(this, v81, a2, a4);
  }

  *(this + 56) = a2;
  v63 = 0u;
  v64 = 0u;
  SnapTime::recordTime(&v63, 1, 0, 0, 0);
  v58 = *(this + 13);
  result = vaddq_s64(v58[6], vsubq_s64(v63, v65));
  v60 = vaddq_s64(v58[7], vsubq_s64(v64, v66));
  v58[6] = result;
  v58[7] = v60;
  return result;
}

__n128 FstSearchHashBackoff::maybeInsertHashedToken(uint64_t a1, __n128 *a2)
{
  v4 = a2->n128_u32[1];
  v5 = v4 >> 6;
  v6 = v4 & 0x3F;
  v7 = *(a1 + 112);
  v8 = v7[2];
  v9 = *(v8 + 8 * v5);
  if (!v9)
  {
    v10 = *(v7 + 12);
    v11 = *(v7 + 13);
    v12 = *v7;
    if (v10 >= v11)
    {
      v13 = v12 + 16 * v11;
      if (!*(v13 + 8))
      {
        *v13 = MemChunkAlloc(0x100uLL, 0);
        *(v13 + 8) = 64;
        v12 = *v7;
        v8 = v7[2];
        LODWORD(v10) = *(v7 + 12);
        v11 = *(v7 + 13);
      }

      *(v8 + 8 * v5) = v12 + 16 * v11;
      *(v7 + 13) = v11 + 1;
    }

    else
    {
      *(v8 + 8 * v5) = v12 + 16 * v10;
    }

    *(v7 + 12) = v10 + 1;
    v14 = *(v7[2] + 8 * v5);
    memset(*v14, 255, 4 * *(v14 + 8));
    v16 = *(v7 + 10);
    if (v16 == *(v7 + 11))
    {
      DgnPrimArray<unsigned int>::reallocElts((v7 + 4), 1, 1);
      v16 = *(v7 + 10);
    }

    *(v7[4] + 4 * v16) = v5;
    ++*(v7 + 10);
    v9 = *(v7[2] + 8 * v5);
  }

  v17 = *v9;
  v18 = *(v17 + 4 * v6);
  if (v18 == -1)
  {
    v20 = *(a1 + 216);
    *(v17 + 4 * v6) = v20;
    if (v20 == *(a1 + 220))
    {
      DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(a1 + 208, 1, 1);
      v20 = *(a1 + 216);
    }

    v21 = (*(a1 + 208) + 20 * v20);
    result = *a2;
    v21[1].n128_u32[0] = a2[1].n128_u32[0];
    *v21 = result;
    ++*(a1 + 216);
  }

  else
  {
    v19 = (*(a1 + 208) + 20 * v18);
    if (v19->n128_u32[0] > a2->n128_u32[0])
    {
      result = *a2;
      v19[1].n128_u32[0] = a2[1].n128_u32[0];
      *v19 = result;
    }
  }

  return result;
}

uint64_t FstSearchHashBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 216);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchHashBackoffcmpTok>(*(this + 208), a2, v4);
    v8 = *(*(v6 + 208) + 20 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 220);
    if (a2 > v9)
    {
      this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v6 + 208, a2 - v9, 0);
    }

    v10 = *(v6 + 216);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = (*(v6 + 208) + 20 * v10 + 16);
      do
      {
        *(v12 - 2) = 0xFFFFFFFF00000000;
        *(v12 - 2) = -1;
        *(v12 - 2) = -2;
        *v12 = 0;
        v12 += 5;
        --v11;
      }

      while (v11);
    }

    *(v6 + 216) = a2;
  }

  return this;
}

uint64_t mrec_nth_element<FstSearchHashBackoffcmpTok>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (result + 20 * v3);
      v5 = (result + 20 * (v3 + (a3 >> 1)));
      v6 = 20;
      v7 = v4;
      do
      {
        v8 = *v7;
        *v7++ = *v5;
        *v5++ = v8;
        --v6;
      }

      while (v6);
      v9 = (result - 20 + 20 * (v3 + a3));
      v10 = (result + 20 * v3);
      do
      {
        v11 = v10 + 20;
        while (1)
        {
          v10 = v11;
          if (v11 >= v9)
          {
            break;
          }

          v11 += 20;
          if (*v10 > *v4)
          {
            v12 = v10;
            while (*v9 >= *v4)
            {
              v9 -= 20;
              if (v10 >= v9)
              {
                goto LABEL_16;
              }
            }

            for (i = 0; i != 20; ++i)
            {
              v14 = *v12;
              *v12++ = v9[i];
              v9[i] = v14;
            }

            v9 -= 20;
            break;
          }
        }

LABEL_16:
        ;
      }

      while (v10 < v9);
      if (*v10 > *v4)
      {
        v10 -= 20;
      }

      if (v10 > v4)
      {
        for (j = 0; j != 20; ++j)
        {
          v16 = v10[j];
          v10[j] = v4[j];
          v4[j] = v16;
        }
      }

      v17 = (v10 - v4) / 0x14uLL;
      if (v17 <= a2)
      {
        if (v17 >= a2)
        {
          return result;
        }

        v18 = v17 + 1;
        v3 += v18;
        a2 -= v18;
        v17 = a3 - v18;
      }

      a3 = v17;
    }

    while (v17 > 1);
  }

  return result;
}

uint64_t FstSearchHashBackoff::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 256) + v5);
        v8 = *v7;
        v10 = v7[6];
        v9 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = -2 - v7;
        if (v9 == 16777213)
        {
          v12 = (*(v2 + 160) + 24 * v11);
          v9 = 16777209;
          if (*v12 == 16777209)
          {
            v11 = *(*(v2 + 176) + 12 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v14) = *(v2 + 168);
        }

        v15 = (*(v2 + 160) + 24 * v14);
        *v15 = v9;
        v15[1] = v13;
        v15[2] = -1;
        v15[3] = v8;
        v15[4] = v11;
        v15[5] = 0;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 200);
        if (v17 == *(v2 + 204))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v17) = *(v2 + 200);
        }

        v18 = *(v2 + 192) + 20 * v17;
        *v18 = v8;
        *(v18 + 4) = v10;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 264);
        if (v19 >= *(v2 + 20))
        {
          v19 = *(v2 + 20);
        }

        v5 += 36;
      }

      while (v6 < v19);
    }
  }

  return this;
}

_DWORD *FstSearchHashBackoff::propagateNulls(_DWORD *this, int a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = this[42];
  v6 = this[50];
  if (!v6)
  {
    v38 = this[38];
    if (a4)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v49 = this[42];
  v50 = a4;
  v7 = 0;
  v57 = a2;
  do
  {
    v8 = *(*(v4 + 24) + 20 * v7 + 4);
    v9 = *(v4 + 5);
    if (*(v9 + 160) != v8 && (*(v9 + 140) <= v8 || (*(*(v9 + 152) + 4 * v8) & 0x40000000) != 0))
    {
      v10 = *(*(v4 + 24) + 20 * v7 + 4);
      v56 = v7;
      do
      {
        v11 = *(v4 + 5);
        v12 = *(v11 + 152);
        v13 = *(v12 + 4 * v10);
        v14 = *(v12 + 4 * (v10 + 1));
        v15 = *(v11 + 140);
        if (v15 > v14)
        {
          goto LABEL_32;
        }

        v16 = (v13 & 0xFFFFF) <= 0xFFFF3 ? v13 & 0xFFFFF : v13 & 0xFFFFF | 0xF00000;
        if (v15 <= v8 && v16 != 16777210)
        {
          goto LABEL_32;
        }

        v18 = (v13 >> 20) & 0x3FF;
        v19 = *(v4 + 24);
        v20 = (v19 + 20 * v7);
        v21 = *v20;
        v22 = *v20 + v18;
        if (v22 > a2)
        {
          goto LABEL_32;
        }

        v23 = v20[2];
        v24 = *(v20 + 6);
        v25 = *(v20 + 7);
        v26 = v20[4];
        v27 = v26 + v18;
        if (v16 == 16777210)
        {
          if (v6 != v4[51])
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v16 == 16777214)
          {
            v22 = v21 - v26;
            v28 = 0;
          }

          else
          {
            v28 = v26 + v18;
          }

          if (v16 == 16777214)
          {
            v29 = v27;
          }

          else
          {
            v29 = 0;
          }

          v30 = v4[42];
          if (v30 == v4[43])
          {
            v53 = v25;
            v54 = v24;
            v51 = v28;
            v52 = v29;
            this = DgnArray<CWIDAC>::reallocElts((v4 + 40), 1, 1);
            v28 = v51;
            v29 = v52;
            v25 = v53;
            v24 = v54;
            a2 = v57;
            LODWORD(v30) = v4[42];
          }

          v31 = (*(v4 + 20) + 24 * v30);
          *v31 = v16;
          v31[1] = a3;
          v31[2] = -1;
          v31[3] = v22;
          v31[4] = v23;
          v31[5] = v28;
          v23 = v4[42];
          v4[42] = v23 + 1;
          v22 += v29;
          v6 = v4[50];
          if (v6 != v4[51])
          {
            goto LABEL_30;
          }
        }

        v32 = v24;
        v33 = v8;
        v34 = v23;
        v35 = v27;
        v36 = v25;
        this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts((v4 + 48), 1, 1);
        v25 = v36;
        v27 = v35;
        v23 = v34;
        v8 = v33;
        v7 = v56;
        v24 = v32;
        a2 = v57;
        v6 = v4[50];
LABEL_30:
        v19 = *(v4 + 24);
LABEL_31:
        v37 = v19 + 20 * v6;
        *v37 = v22;
        *(v37 + 4) = v14;
        *(v37 + 8) = v23;
        *(v37 + 12) = v24;
        *(v37 + 14) = v25;
        *(v37 + 16) = v27;
        v6 = v4[50] + 1;
        v4[50] = v6;
LABEL_32:
        v10 += 2;
      }

      while ((v13 & 0x80000000) == 0);
    }

    ++v7;
  }

  while (v7 < v6);
  v38 = v4[38];
  if (v6 > v38)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 24) + 20 * v38), v6 - v38, 20, 0);
    v38 = v4[38];
    v6 = v4[50];
  }

  a4 = v50;
  v5 = v49;
  if (v38 < v6)
  {
    v39 = v38;
    v40 = v38 - 1;
    v41 = 20 * v38;
    do
    {
      v42 = *(v4 + 24);
      v43 = (v42 + v41);
      if (*(v42 + v41 + 4) != *(v42 + 20 * v40 + 4))
      {
        v44 = v42 + 20 * v38;
        v45 = *v43;
        *(v44 + 16) = *(v43 + 4);
        *v44 = v45;
        ++v38;
        v6 = v4[50];
      }

      ++v39;
      ++v40;
      v41 += 20;
    }

    while (v39 < v6);
  }

  if (v50)
  {
LABEL_42:
    *(a4 + 1) += v4[42] - v5;
  }

LABEL_43:
  v46 = v4[51];
  if (v38 > v46)
  {
    this = DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts((v4 + 48), v38 - v46, 0);
    v6 = v4[50];
  }

  if (v6 < v38)
  {
    v47 = v38 - v6;
    v48 = (*(v4 + 24) + 20 * v6 + 16);
    do
    {
      *(v48 - 2) = 0xFFFFFFFF00000000;
      *(v48 - 2) = -1;
      *(v48 - 2) = -2;
      *v48 = 0;
      v48 += 5;
      --v47;
    }

    while (v47);
  }

  v4[50] = v38;
  return this;
}

uint64_t FstSearchHashBackoff::collectTraces(FstSearchHashBackoff *this)
{
  v2 = *(this + 42);
  v42 = 0;
  v41 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v41 = v3;
    v42 = v2;
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
      v13 += 5;
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
    goto LABEL_38;
  }

  v17 = 24 * v16 - 8;
  v18 = v3 + v16 - 1;
  do
  {
    if (*v18--)
    {
      v20 = *(*(this + 20) + v17);
      if (v20 != -1)
      {
        *(v3 + v20) = 1;
      }
    }

    v17 -= 24;
  }

  while (v17 != -8);
  v21 = *(this + 42);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      if (*(v3 + v23))
      {
        v25 = *(this + 20);
        if (v23 != v24)
        {
          v26 = (v25 + v22);
          v27 = v25 + 24 * v24;
          v28 = *v26;
          *(v27 + 16) = *(v26 + 2);
          *v27 = v28;
          v25 = *(this + 20);
        }

        v29 = v25 + 24 * v24;
        v32 = *(v29 + 16);
        v30 = (v29 + 16);
        v31 = v32;
        if (v32 != -1)
        {
          *v30 = *(v3 + v31);
        }

        *(v3 + v23) = v24++;
        v21 = *(this + 42);
      }

      ++v23;
      v22 += 24;
    }

    while (v23 < v21);
    v33 = *(this + 43);
    if (v24 > v33)
    {
      DgnArray<CWIDAC>::reallocElts(this + 160, v24 - v33, 0);
      v21 = *(this + 42);
    }

    if (v21 < v24)
    {
      v34 = v24 - v21;
      v35 = (*(this + 20) + 24 * v21 + 16);
      do
      {
        *(v35 - 1) = xmmword_26287F860;
        *v35 = 0xFFFFFFFFLL;
        v35 += 3;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
LABEL_38:
    v24 = 0;
  }

  *(this + 42) = v24;
  v36 = *(this + 50);
  if (v36)
  {
    v37 = v41;
    v38 = (*(this + 24) + 8);
    do
    {
      v39 = *v38;
      if (v39 != -1)
      {
        *v38 = *(v37 + v39);
      }

      v38 += 5;
      --v36;
    }

    while (v36);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v41);
}

int64x2_t FstSearchHashBackoff::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchHashBackoff::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchHashBackoff::collectTraces(this);
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

int64x2_t FstSearchHashBackoff::reset(FstSearchHashBackoff *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 50) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchHashBackoff::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchHashBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchHashBackoff::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchHashBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchHashBackoff::generateTraceTokensFromTraces(this);
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

int32x2_t FstSearchHashBackoff::generateTraceTokensFromTraces(FstSearchHashBackoff *this)
{
  v2 = *(this + 42);
  v3 = *(this + 47);
  if (v2 > v3)
  {
    DgnArray<RuleDesc>::reallocElts(this + 176, v2 - v3, 0);
  }

  v5 = *(this + 46);
  if (v5 < v2)
  {
    v6 = v2 - v5;
    v7 = (*(this + 22) + 12 * v5 + 8);
    do
    {
      *(v7 - 1) = 0;
      *v7 = -1;
      v7 += 3;
      --v6;
    }

    while (v6);
  }

  *(this + 46) = v2;
  v8 = *(this + 42);
  if (v8)
  {
    v9 = 0;
    v10 = (*(this + 20) + 16);
    v11 = (*(this + 22) + 4);
    do
    {
      v10[-1].i32[0] = v9;
      v11[-1].i32[1] = v10[-1].i32[1];
      v12 = *v10;
      v10 += 3;
      result = vrev64_s32(v12);
      *v11 = result;
      v11 = (v11 + 12);
      ++v9;
    }

    while (v8 != v9);
  }

  return result;
}

void FstSearchHashBackoff::printSize(FstSearchHashBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v15, &unk_26287F8B0, v16, v16, v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 12 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 12 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v15, &unk_26287F8B0, v16, v16, v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 50);
  v41 = 18 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 18 * (*(this + 51) - v40);
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
  v48 = 18 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 18 * (*(this + 55) - v47);
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

uint64_t FstSearchHashBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
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

  v6 = 20 * v4;
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

    v11 = *(a1 + 160) + 24 * v10;
    v12 = *(v11 + 12) + *(*(a1 + 88) + 4 * *(v11 + 4));
    v13 = v7 <= v12;
    if (v7 >= v12)
    {
      v7 = v12;
    }

    if (!v13)
    {
      v8 = v10;
    }

    v5 = *(a1 + 200);
LABEL_19:
    ++v4;
    v6 += 20;
  }

  while (v4 < v5);
  if (v8 == 0xFFFFFFFFLL)
  {
LABEL_21:
    v14 = *(a1 + 168);
    v8 = 0xFFFFFFFFLL;
    while (v14)
    {
      --v14;
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 24 * v14) == 16777213)
      {
        if (a2)
        {
          *(*a2 + v14) = 1;
        }

        v8 = v14;
        if (a3)
        {
          *(*a3 + v14) = 1;
        }

        return v8;
      }
    }
  }

  return v8;
}

BOOL FstSearchHashBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 24 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

unint64_t FstSearchHashBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v9 = a2;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = *(a2 + 2) == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    *a2 = MemChunkAlloc(4 * v11, 0);
    *(v9 + 2) = v11;
  }

  result = Lattice<WordLatticeLC>::createNode(a4);
  v14 = result;
  v15 = *(a3 + 8);
  if (v15 == *(a3 + 12))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
    v15 = *(a3 + 8);
  }

  *(*a3 + 4 * v15) = v14;
  ++*(a3 + 8);
  v16 = *(a1 + 168);
  v17 = a7;
  if (v16)
  {
    v18 = (v16 - 1);
    v19 = 24 * v18;
    v20 = 0xFFFFFFFFLL;
    do
    {
      v21 = *v9;
      *(*v9 + v18) = -1;
      v22 = *a6;
      if (*(*a6 + v18))
      {
        v23 = *(a1 + 160);
        v24 = *(*(a1 + 88) + 4 * *(v23 + v19 + 4));
        if (*(*v17 + v18) == 1)
        {
          if (*(*a6 + v18) != 1 || v20 == -1)
          {
            v26 = v20;
            result = Lattice<WordLatticeLC>::createNode(a4);
            v27 = result;
            v28 = *(a3 + 8);
            *(*v9 + v18) = v28;
            if (v28 == *(a3 + 12))
            {
              result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
              v28 = *(a3 + 8);
            }

            *(*a3 + 4 * v28) = v27;
            v29 = *(a3 + 8);
            *(a3 + 8) = v29 + 1;
            v22 = *a6;
            if (*(*a6 + v18) == 1)
            {
              v20 = v29;
            }

            else
            {
              v20 = v26;
            }

            v23 = *(a1 + 160);
            v17 = a7;
          }

          else
          {
            *(v21 + v18) = v20;
          }
        }

        v30 = *(a1 + 176);
        v31 = (v30 + 12 * *(v23 + v19 + 8));
        v32 = v31[2];
        if ((v32 & 0x80000000) != 0)
        {
          *v31 += v24;
        }

        else
        {
          if (*(v23 + v19) == 16777209)
          {
            v33 = *a5 + 16 * v32;
            v34 = *(v33 + 8);
            if (v34 == *(v33 + 12))
            {
              v43 = v24;
              v35 = v9;
              v36 = a6;
              v37 = a3;
              v38 = v20;
              result = DgnPrimArray<unsigned int>::reallocElts(v33, 1, 1);
              v20 = v38;
              a3 = v37;
              a6 = v36;
              v9 = v35;
              v24 = v43;
              v17 = a7;
              v34 = *(v33 + 8);
              v23 = *(a1 + 160);
              v30 = *(a1 + 176);
              v22 = *a6;
            }

            *(*v33 + 4 * v34) = v18;
            ++*(v33 + 8);
            v32 = v31[2];
          }

          else
          {
            *(*v17 + v32) = 1;
          }

          v39 = v23 + 24 * v32;
          v40 = *(*(a1 + 88) + 4 * *(v39 + 4));
          v41 = (v30 + 12 * *(v39 + 8));
          v42 = v24 + *v31 - v40 - *v41;
          LODWORD(v41) = v31[1] - v41[1];
          *v31 = v42;
          v31[1] = v41;
          *(v22 + v32) = 2;
        }
      }

      --v18;
      v19 -= 24;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t FstSearchHashBackoff::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v25, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchHashBackoff::createLatticeNodes(a1, &v28, &v26, a2, v25, a3, a4);
  v23 = v9;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = 0;
    v13 = v27;
    do
    {
      if (*(*a3 + v12))
      {
        v14 = (*(a1 + 160) + 24 * v12);
        if ((*v14 - 16777209) >= 2)
        {
          v15 = *(a1 + 176) + 12 * v14[2];
          v16 = *(v15 + 8);
          if (v16 == -1)
          {
            v17 = 0;
          }

          else
          {
            v17 = (v13 - *(v28 + v16));
          }

          v18 = *(v26 + 4 * v17);
          if (*(*a4 + v12) == 1)
          {
            FstSearchHashBackoff::createLatticeLink(a1, v12, v15, 0xFFFFFFFF, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearchHashBackoff::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
              ++v20;
              v19 = v25[0] + 16 * v12;
            }

            while (v20 < *(v19 + 8));
          }
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v28);
}

void sub_262633D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void FstSearchHashBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 12 * *(v16 + 24 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 12 * *(v16 + 24 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(v39, *(a1 + 40), *(v16 + 24 * a2));
  v18 = a3[1];
  if (v17)
  {
    v18 += v17[1];
    v19 = *v17 + *a3;
  }

  else
  {
    v19 = *a3;
  }

  if (LODWORD(v39[0]) >> 25 == 126)
  {
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v20 = *(a1 + 136);
    v21 = v18 - v20;
  }

  v22 = v19 - v18;
  if ((a4 & 0x80000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(a1 + 140);
    v21 -= v23;
  }

  v33 = v21;
  v34 = 0;
  v35 = v20;
  v36 = v22;
  v37 = 0;
  v38 = v23;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 != -1)
  {
    v26 = *(v25 + 24 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_19;
    }

    v27 = v26 + 1;
LABEL_22:
    v28 = *(v25 + 24 * a2 + 4);
    v29 = v28 - v27 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v30 = *(v25 + 24 * a4 + 4);
      goto LABEL_24;
    }

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  v27 = 0;
  if (!a9)
  {
    goto LABEL_22;
  }

LABEL_19:
  v28 = (*(v25 + 24 * a2 + 4) - 1) / 2;
  v29 = v28 - v27 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v30 = (*(v25 + 24 * a4 + 4) - 1) / 2;
LABEL_24:
  v31 = v30 - v28;
LABEL_26:
  WordLatticeLC::WordLatticeLC(v32, v39, v27, v29, v31, &v33);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v32);
  WordLatticeLC::~WordLatticeLC(v32);
}

void sub_262633FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchHashBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

VirtMap *FstSearchHashBackoff::endTopRecSyncRecog(VirtMap **this)
{
  VirtMap::setEmpty(this[14]);
  result = this[14];
  this[14] = 0;
  return result;
}

uint64_t FstSearchHashBackoff::getBestExitScore(FstSearchHashBackoff *this)
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
  v6 = 20 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 24 * v8 + 4) == *(this + 56))
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
    v6 += 20;
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
      v13 = v9 + 24 * v12;
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 57) = *(v13 + 16);
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

uint64_t FstSearchHashBackoff::getBestScoreMaybeUpdateFstNode(FstSearchHashBackoff *this, Node *a2)
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

      v3 += 20;
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

_DWORD *FstSearchHashBackoff::seedTheory(FstSearchHashBackoff *this, int a2, int a3, int a4, SearchStats *a5)
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
      DgnArray<CWIDAC>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 24 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 50);
  if (v14 == *(this + 51))
  {
    DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 192, 1, 1);
    v14 = *(this + 50);
  }

  v15 = *(this + 24) + 20 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  LODWORD(v15) = *(this + 50) + 1;
  *(this + 50) = v15;
  *(this + 38) = v15;

  return FstSearchHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchHashBackoff::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 57);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 24 * v6);
    for (i = v8[4]; i != -1; v6 = v14)
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
      v19 = *(v18 + 24 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v18 + 24 * v6 + 12);
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 24 * v14);
      i = v8[4];
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchHashBackoff::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
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

void FstSearchHashBackoff::getHistory(uint64_t *result, unsigned int a2, uint64_t a3, int a4)
{
  if (a2 == -1)
  {
    *(a3 + 8) = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = a2;
    v9 = a2;
    do
    {
      v10 = (result[20] + 24 * v9);
      if (*v10 == 16777209)
      {
        v7 = v7;
      }

      else
      {
        v7 = (v7 + 1);
      }

      v9 = v10[4];
    }

    while (v9 != -1);
    v11 = *(a3 + 12);
    if (v7 > v11)
    {
      DgnArray<PrefilterResultFrame>::reallocElts(a3, v7 - v11, 0);
    }

    v12 = *(a3 + 8);
    if (v12 < v7)
    {
      v13 = v7 - v12;
      v14 = *a3 + 32 * v12;
      do
      {
        *v14 = 0x3FFFFAFFFFFFLL;
        *(v14 + 8) = xmmword_26286CC40;
        *(v14 + 24) = 0x1F0000001FLL;
        v14 += 32;
        --v13;
      }

      while (v13);
    }

    *(a3 + 8) = v7;
    if (v7)
    {
      v15 = result[20];
      v16 = -16;
      do
      {
        v17 = (v15 + 24 * v8);
        v18 = v17[1];
        if (*v17 == 16777209)
        {
          if (a4)
          {
            v16 = (v18 - 1) / 2 + 1;
          }

          else
          {
            v16 = v18 + 1;
          }
        }

        else
        {
          if (a4)
          {
            v18 = (v18 - 1) / 2;
          }

          ArcGraph::lexToCWIDAC(&v22, result[5], *v17);
          if (v16 == -16)
          {
            v19 = v18 + 1;
          }

          else
          {
            v19 = v16;
          }

          v20 = HIDWORD(v22);
          v7 = (v7 - 1);
          v21 = *a3 + 32 * v7;
          *v21 = v22;
          *(v21 + 4) = v20;
          *(v21 + 8) = v23;
          *(v21 + 24) = v18 + 1;
          *(v21 + 28) = v19;
          v15 = result[20];
          v16 = -16;
        }

        v8 = *(v15 + 24 * v8 + 16);
      }

      while (v8 != -1);
    }
  }
}

uint64_t FstSearchHashBackoff::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
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
  BestTrace = FstSearchHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchHashBackoff::getHistory(a1, BestTrace, a3, a4);
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

  v18 = a1[20] + 24 * v11;
  return (*(v18 + 12) + *(a1[11] + 4 * *(v18 + 4)));
}

int64x2_t FstSearchHash::advanceDeltas(FstSearchHash *this, int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  v8 = a2;
  v87[0] = a2;
  v85 = 0u;
  v86 = 0u;
  SnapTime::recordTime(&v85, 1, 0, 0, 0);
  v83.n128_u64[0] = 0xFFFFFFFF00000000;
  v83.n128_u32[2] = -1;
  v83.n128_u16[6] = -2;
  v84 = 0;
  *(this + 58) = a3;
  v10 = (this + 232);
  v11 = *(this + 2);
  v12 = *(this + 50);
  if (v12)
  {
    v62 = a4;
    v63 = v8;
    for (i = 0; i < v12; ++i)
    {
      v14 = *(this + 24) + 20 * i;
      v15 = *(v14 + 4);
      v16 = *(this + 5);
      if (*(v16 + 160) != v15)
      {
        if (*(v16 + 140) > v15)
        {
          v17 = *v14;
          v18 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v14 + 12)) + v17;
          v19 = *(this + 58);
          if (v18 - v11 <= v19)
          {
            if (v19 > v18)
            {
              *v10 = v18;
            }

            v20 = (*(this + 24) + 20 * i);
            v21 = v20[1].n128_u32[0];
            v83 = *v20;
            v84 = v21;
            v83.n128_u32[0] = v18;
            FstSearchHashBackoff::maybeInsertHashedToken(this, &v83);
          }
        }

        v22 = v15;
        do
        {
          v23 = *(this + 5);
          v24 = *(v23 + 152);
          v25 = *(v24 + 4 * v22);
          v26 = *(v24 + 4 * (v22 + 1));
          v27 = *(v23 + 140);
          if (v27 <= v26)
          {
            if (v27 <= v15 && (*(this + 356) & 1) != 0)
            {
              v34 = (v25 & 0xFFFFF) <= 0xFFFF3 ? v25 & 0xFFFFF : v25 & 0xFFFFF | 0xF00000;
              if (v34 != 16777210)
              {
                DgnString::DgnString(&v80);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v34, &v80);
                v36 = &unk_26287F8B0;
                if (v80.i32[2])
                {
                  v36 = v80.i64[0];
                }

                xprintf("Seed from state %d score %d trace %d, %s\n", v35, v15, *(*(this + 24) + 20 * i), *(*(this + 24) + 20 * i + 8), v36);
                MiniFst::seed(this + 240, *(*(this + 24) + 20 * i), 0, *(*(this + 24) + 20 * i + 8), v26);
                DgnString::~DgnString(&v80);
              }
            }
          }

          else
          {
            v28 = (v25 >> 20) & 0x3FF;
            ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v24 + 4 * v22));
            v30 = (*(this + 24) + 20 * i);
            v31 = ScoreNoBackoff + v28 + v30->n128_u32[0];
            v32 = *(this + 58);
            if (v31 - v11 <= v32)
            {
              if (v32 > v31)
              {
                *v10 = v31;
              }

              v33 = v30[1].n128_u32[0];
              v83 = *v30;
              v83.n128_u64[0] = __PAIR64__(v26, v31);
              v83.n128_u16[6] = v25;
              v84 = v33 + v28;
              FstSearchHashBackoff::maybeInsertHashedToken(this, &v83);
            }
          }

          v22 += 2;
        }

        while ((v25 & 0x80000000) == 0);
        v12 = *(this + 50);
      }
    }

    a3 = *v10;
    v8 = v63;
    a4 = v62;
  }

  v82 = a3 + v11;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, this + 58, v11, v8);
  }

  v80 = 0u;
  v81 = 0u;
  SnapTime::recordTime(&v80, 1, 0, 0, 0);
  v80 = vsubq_s64(v80, v85);
  v81 = vsubq_s64(v81, v86);
  v37 = *(this + 13);
  v38 = vaddq_s64(v37[1], v81);
  *v37 = vaddq_s64(*v37, v80);
  v37[1] = v38;
  v78 = 0u;
  v79 = 0u;
  SnapTime::recordTime(&v78, 1, 0, 0, 0);
  FstSearchHashBackoff::applyCutoffOnEmitting(this, *(this + 4), &v82);
  v76 = 0u;
  v77 = 0u;
  SnapTime::recordTime(&v76, 1, 0, 0, 0);
  v39 = vsubq_s64(v76, v78);
  v40 = *(this + 13);
  v41 = v40[3];
  v42 = vaddq_s64(v40[2], v39);
  v76 = v39;
  v77 = vsubq_s64(v77, v79);
  v43 = vaddq_s64(v41, v77);
  v40[2] = v42;
  v40[3] = v43;
  v74 = 0u;
  v75 = 0u;
  SnapTime::recordTime(&v74, 1, 0, 0, 0);
  v44 = *(this + 24);
  v45 = *(this + 26);
  *(this + 24) = v45;
  *(this + 26) = v44;
  LODWORD(v44) = *(this + 51);
  v46 = *(this + 27);
  *(this + 25) = v46;
  *(this + 54) = 0;
  *(this + 55) = v44;
  v47 = *(this + 6);
  if (v47 && v47 < v46)
  {
    mrec_nth_element<FstSearchHashBackoffcmpTok>(v45, v47, v46);
  }

  v72 = 0u;
  v73 = 0u;
  SnapTime::recordTime(&v72, 1, 0, 0, 0);
  v48 = vsubq_s64(v72, v74);
  v49 = *(this + 13);
  v50 = v49[5];
  v51 = vaddq_s64(v49[4], v48);
  v72 = v48;
  v73 = vsubq_s64(v73, v75);
  v52 = vaddq_s64(v50, v73);
  v49[4] = v51;
  v49[5] = v52;
  v70 = 0u;
  v71 = 0u;
  SnapTime::recordTime(&v70, 1, 0, 0, 0);
  VirtMap::setEmpty(*(this + 14));
  v68 = 0u;
  v69 = 0u;
  SnapTime::recordTime(&v68, 1, 0, 0, 0);
  v53 = vsubq_s64(v68, v70);
  v54 = *(this + 13);
  v55 = v54[9];
  v56 = vaddq_s64(v54[8], v53);
  v68 = v53;
  v69 = vsubq_s64(v69, v71);
  v57 = vaddq_s64(v55, v69);
  v54[8] = v56;
  v54[9] = v57;
  v66 = 0u;
  v67 = 0u;
  SnapTime::recordTime(&v66, 1, 0, 0, 0);
  *(this + 54) = 0;
  v58 = *(this + 50);
  *(this + 38) = v58;
  if (a4)
  {
    *(a4 + 2) += v58;
    if (*(a4 + 2) > v58)
    {
      LODWORD(v58) = *(a4 + 2);
    }

    *(a4 + 2) = v58;
  }

  if (*(this + 356) == 1)
  {
    FstSearchHash::seedFromMiniFst(this, v87);
  }

  if (a5)
  {
    FstSearchHashBackoff::propagateNulls(this, v82, v8, a4);
  }

  *(this + 56) = v8;
  v64 = 0u;
  v65 = 0u;
  SnapTime::recordTime(&v64, 1, 0, 0, 0);
  v59 = *(this + 13);
  result = vaddq_s64(v59[6], vsubq_s64(v64, v66));
  v61 = vaddq_s64(v59[7], vsubq_s64(v65, v67));
  v59[6] = result;
  v59[7] = v61;
  return result;
}

uint64_t FstSearchHash::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 256) + v5);
        v8 = *v7;
        v10 = v7[6];
        v9 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = -2 - v7;
        if (v9 == 16777213)
        {
          v12 = (*(v2 + 160) + 24 * v11);
          v9 = 16777209;
          if (*v12 == 16777209)
          {
            v11 = *(*(v2 + 176) + 12 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<CWIDAC>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v14) = *(v2 + 168);
        }

        v15 = (*(v2 + 160) + 24 * v14);
        *v15 = v9;
        v15[1] = v13;
        v15[2] = -1;
        v15[3] = v8;
        v15[4] = v11;
        v15[5] = 0;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 200);
        if (v17 == *(v2 + 204))
        {
          DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(v2 + 192, 1, 1);
          LODWORD(v17) = *(v2 + 200);
        }

        v18 = *(v2 + 192) + 20 * v17;
        *v18 = v8;
        *(v18 + 4) = v10;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        ++*(v2 + 200);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 264);
        if (v19 >= *(v2 + 20))
        {
          v19 = *(v2 + 20);
        }

        v5 += 36;
      }

      while (v6 < v19);
    }
  }

  return this;
}

uint64_t FstSearchHash::collectTraces(FstSearchHash *this)
{
  v2 = *(this + 42);
  v42 = 0;
  v41 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v41 = v3;
    v42 = v2;
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
      v13 += 5;
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
    goto LABEL_38;
  }

  v17 = 24 * v16 - 8;
  v18 = v3 + v16 - 1;
  do
  {
    if (*v18--)
    {
      v20 = *(*(this + 20) + v17);
      if (v20 != -1)
      {
        *(v3 + v20) = 1;
      }
    }

    v17 -= 24;
  }

  while (v17 != -8);
  v21 = *(this + 42);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      if (*(v3 + v23))
      {
        v25 = *(this + 20);
        if (v23 != v24)
        {
          v26 = (v25 + v22);
          v27 = v25 + 24 * v24;
          v28 = *v26;
          *(v27 + 16) = *(v26 + 2);
          *v27 = v28;
          v25 = *(this + 20);
        }

        v29 = v25 + 24 * v24;
        v32 = *(v29 + 16);
        v30 = (v29 + 16);
        v31 = v32;
        if (v32 != -1)
        {
          *v30 = *(v3 + v31);
        }

        *(v3 + v23) = v24++;
        v21 = *(this + 42);
      }

      ++v23;
      v22 += 24;
    }

    while (v23 < v21);
    v33 = *(this + 43);
    if (v24 > v33)
    {
      DgnArray<CWIDAC>::reallocElts(this + 160, v24 - v33, 0);
      v21 = *(this + 42);
    }

    if (v21 < v24)
    {
      v34 = v24 - v21;
      v35 = (*(this + 20) + 24 * v21 + 16);
      do
      {
        *(v35 - 1) = xmmword_26287F860;
        *v35 = 0xFFFFFFFFLL;
        v35 += 3;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
LABEL_38:
    v24 = 0;
  }

  *(this + 42) = v24;
  v36 = *(this + 50);
  if (v36)
  {
    v37 = v41;
    v38 = (*(this + 24) + 8);
    do
    {
      v39 = *v38;
      if (v39 != -1)
      {
        *v38 = *(v37 + v39);
      }

      v38 += 5;
      --v36;
    }

    while (v36);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v41);
}

int64x2_t FstSearchHash::vite(int64x2_t **this, unsigned int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  FstSearchHash::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchHash::collectTraces(this);
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

int64x2_t FstSearchHash::reset(FstSearchHash *this)
{
  *(this + 42) = 0;
  *(this + 46) = 0;
  *(this + 50) = 0;
  v7 = 0u;
  v8 = 0u;
  SnapTime::recordTime(&v7, 1, 0, 0, 0);
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  v2 = *(this + 13);
  result = vaddq_s64(v2[10], vsubq_s64(v5, v7));
  v4 = vaddq_s64(v2[11], vsubq_s64(v6, v8));
  v2[10] = result;
  v2[11] = v4;
  return result;
}

double FstSearchHash::doFrame(int64x2_t **this, unsigned int a2, signed __int32 a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchHash::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchHash::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchHash::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchHashBackoff::generateTraceTokensFromTraces(this);
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

void FstSearchHash::printSize(FstSearchHash *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v15, &unk_26287F8B0, v16, v16, v31, v29, v28, 0);
  DgnString::~DgnString(&v71);
  *a4 += v29;
  *a5 += v28;
  v32 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 12;
  }

  v33 = *(this + 46);
  v34 = 12 * v33;
  if (v33 <= 0)
  {
    v34 = 0;
  }

  v35 = v34 + v32;
  v36 = v34 + v32 + 12 * (*(this + 47) - v33);
  getShipObjectSizeDescription(&v71, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v72)
  {
    v38 = v71;
  }

  else
  {
    v38 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v15, &unk_26287F8B0, v16, v16, v38, v36, v35, 0);
  DgnString::~DgnString(&v71);
  *a4 += v36;
  *a5 += v35;
  v39 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v39 = 12;
  }

  v40 = *(this + 50);
  v41 = 18 * v40;
  if (v40 <= 0)
  {
    v41 = 0;
  }

  v42 = v41 + v39;
  v43 = v41 + v39 + 18 * (*(this + 51) - v40);
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
  v48 = 18 * v47;
  if (v47 <= 0)
  {
    v48 = 0;
  }

  v49 = v48 + v46;
  v50 = v48 + v46 + 18 * (*(this + 55) - v47);
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

BOOL FstSearchHash::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchHashBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 24 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchHash::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
{
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v25, *(a1 + 168));
  v9 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v9, 0, 128);
  v9[4] = a2;
  FstSearchHashBackoff::createLatticeNodes(a1, &v28, &v26, a2, v25, a3, a4);
  v23 = v9;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = 0;
    v13 = v27;
    do
    {
      if (*(*a3 + v12))
      {
        v14 = (*(a1 + 160) + 24 * v12);
        if ((*v14 - 16777209) >= 2)
        {
          v15 = *(a1 + 176) + 12 * v14[2];
          v16 = *(v15 + 8);
          if (v16 == -1)
          {
            v17 = 0;
          }

          else
          {
            v17 = (v13 - *(v28 + v16));
          }

          v18 = *(v26 + 4 * v17);
          if (*(*a4 + v12) == 1)
          {
            FstSearchHash::createLatticeLink(a1, v12, v15, 0xFFFFFFFF, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearchHash::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
              ++v20;
              v19 = v25[0] + 16 * v12;
            }

            while (v20 < *(v19 + 8));
          }
        }
      }

      ++v12;
    }

    while (v12 != v11);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v23);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v28);
}

void sub_2626360F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void FstSearchHash::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 12 * *(v16 + 24 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 12 * *(v16 + 24 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(v39, *(a1 + 40), *(v16 + 24 * a2));
  v18 = a3[1];
  if (v17)
  {
    v18 += v17[1];
    v19 = *v17 + *a3;
  }

  else
  {
    v19 = *a3;
  }

  if (LODWORD(v39[0]) >> 25 == 126)
  {
    v20 = 0;
    v21 = v18;
  }

  else
  {
    v20 = *(a1 + 136);
    v21 = v18 - v20;
  }

  v22 = v19 - v18;
  if ((a4 & 0x80000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(a1 + 140);
    v21 -= v23;
  }

  v33 = v21;
  v34 = 0;
  v35 = v20;
  v36 = v22;
  v37 = 0;
  v38 = v23;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 != -1)
  {
    v26 = *(v25 + 24 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_19;
    }

    v27 = v26 + 1;
LABEL_22:
    v28 = *(v25 + 24 * a2 + 4);
    v29 = v28 - v27 + 1;
    if ((a4 & 0x80000000) == 0)
    {
      v30 = *(v25 + 24 * a4 + 4);
      goto LABEL_24;
    }

LABEL_25:
    v31 = 0;
    goto LABEL_26;
  }

  v27 = 0;
  if (!a9)
  {
    goto LABEL_22;
  }

LABEL_19:
  v28 = (*(v25 + 24 * a2 + 4) - 1) / 2;
  v29 = v28 - v27 + 1;
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_25;
  }

  v30 = (*(v25 + 24 * a4 + 4) - 1) / 2;
LABEL_24:
  v31 = v30 - v28;
LABEL_26:
  WordLatticeLC::WordLatticeLC(v32, v39, v27, v29, v31, &v33);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v32);
  WordLatticeLC::~WordLatticeLC(v32);
}

void sub_262636320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchHash::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

VirtMap *FstSearchHash::endTopRecSyncRecog(VirtMap **this)
{
  VirtMap::setEmpty(this[14]);
  result = this[14];
  this[14] = 0;
  return result;
}

uint64_t FstSearchHash::getBestExitScore(FstSearchHash *this)
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
  v6 = 20 * v1;
  do
  {
    v7 = *(this + 24) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 24 * v8 + 4) == *(this + 56))
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
    v6 += 20;
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
      v13 = v9 + 24 * v12;
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 57) = *(v13 + 16);
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

uint64_t FstSearchHash::getBestScoreMaybeUpdateFstNode(FstSearchHash *this, Node *a2)
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

      v3 += 20;
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

_DWORD *FstSearchHash::seedTheory(FstSearchHash *this, int a2, int a3, int a4, SearchStats *a5)
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
      DgnArray<CWIDAC>::reallocElts(this + 160, 1, 1);
      v11 = *(this + 42);
    }

    v12 = *(this + 20) + 24 * v11;
    *v12 = a4;
    *(v12 + 4) = a3;
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 50);
  if (v14 == *(this + 51))
  {
    DgnArray<FstSearchLatticeHashBackoffTraceToken>::reallocElts(this + 192, 1, 1);
    v14 = *(this + 50);
  }

  v15 = *(this + 24) + 20 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  LODWORD(v15) = *(this + 50) + 1;
  *(this + 50) = v15;
  *(this + 38) = v15;

  return FstSearchHashBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchHash::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 57);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 24 * v6);
    for (i = v8[4]; i != -1; v6 = v14)
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
      v19 = *(v18 + 24 * v6 + 4);
      v20 = *(a3 + 8);
      if (v20 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v20 = *(a3 + 8);
        v18 = v7[20];
      }

      *(*a3 + 4 * v20) = v19;
      ++*(a3 + 8);
      v21 = *(v18 + 24 * v6 + 12);
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 24 * v14);
      i = v8[4];
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchHash::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
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

uint64_t FstSearchHash::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
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
  BestTrace = FstSearchHashBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchHashBackoff::getHistory(a1, BestTrace, a3, a4);
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

  v18 = a1[20] + 24 * v11;
  return (*(v18 + 12) + *(a1[11] + 4 * *(v18 + 4)));
}

void FstSearchLeafLatticeDurationBackoff::FstSearchLeafLatticeDurationBackoff(FstSearchLeafLatticeDurationBackoff *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287524270;
  *(v5 + 136) = *a2;
  *(v5 + 140) = *a3;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 248) = 0u;
  *(v5 + 232) = 0u;
  *(v5 + 216) = 0u;
  *(v5 + 264) = 0u;
  *(v5 + 280) = 0u;
  *(v5 + 296) = -1;
  *(v5 + 304) = 1879048192;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  *(v5 + 328) = 0u;
  *(v5 + 344) = 0u;
  *(v5 + 312) = 0u;
  *(v5 + 428) = 0;
}

uint64_t FstSearchLeafLatticeDurationBackoff::maybeInitDurModel(FstSearchLeafLatticeDurationBackoff *this, const PicMgr *a2, int a3)
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

int64x2_t FstSearchLeafLatticeDurationBackoff::advanceDeltas(FstSearchLeafLatticeDurationBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v143[0] = a2;
  v141 = 0u;
  v142 = 0u;
  SnapTime::recordTime(&v141, 1, 0, 0, 0);
  v105 = (this + 304);
  *(this + 76) = a3;
  v7 = *(this + 2);
  v8 = *(this + 68);
  if (v8)
  {
    v9 = 0;
    *&v108[8] = 0;
    v100 = *(this + 53);
    v101 = *(this + 208);
    *v108 = *(this + 2);
    do
    {
      v10 = *(this + 33);
      v11 = v9;
      v12 = *(v10 + 40 * v9 + 4);
      v102 = v9;
      if (v8 <= v9 + 1)
      {
        v13 = v9 + 1;
      }

      else
      {
        v13 = v8;
      }

      while (v13 - 1 != v9)
      {
        if (*(v10 + 40 * ++v9 + 4) != v12)
        {
          goto LABEL_10;
        }
      }

      v9 = v13;
LABEL_10:
      v14 = *(this + 5);
      if (*(v14 + 160) != v12)
      {
        v15 = *(v14 + 140) <= v12 || v102 >= v9;
        v103 = v9;
        v109 = v11;
        v104 = v12;
        if (!v15)
        {
          v16 = v9;
          v17 = v11;
          v118 = v9;
          do
          {
            if (*(this + 19) + *(this + 76) >= 5000)
            {
              v18 = 5000;
            }

            else
            {
              v18 = *(this + 19) + *(this + 76);
            }

            ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(*(this + 33) + 40 * v17 + 12), *(*(this + 33) + 40 * v17), v18);
            v20 = *(this + 33) + 40 * v17;
            v21 = *(v20 + 12);
            v22 = *(v20 + 32);
            v23 = *(v20 + 36);
            v24 = v101;
            if (v22 >= 1)
            {
              v24 = v101 - v22;
            }

            v25 = v24 & ((v22 - v101) >> 31);
            if (*(v20 + 12))
            {
              v23 += v25;
            }

            v124 = v23;
            if (*(v20 + 12))
            {
              v26 = v22 - v101;
            }

            else
            {
              v26 = *(v20 + 32);
            }

            if (*(v20 + 12))
            {
              v27 = v25;
            }

            else
            {
              v27 = 0;
            }

            v28 = v27 + ScoreAllowBackoff_updateNodeInSequence;
            if (v27 + ScoreAllowBackoff_updateNodeInSequence - v7 <= *v105)
            {
              v29 = *(v20 + 4);
              v30 = *(v20 + 16);
              v31 = *(v20 + 24);
              v32 = *(v20 + 28);
              v120 = *(v20 + 30);
              v122 = *(v20 + 14);
              if (*v105 > v28)
              {
                *v105 = v28;
              }

              v33 = *(this + 56);
              v34 = v33;
              if (v32)
              {
                v35 = *(this + 27);
                v36 = v32;
                v34 = *(this + 56);
                do
                {
                  v37 = *(v35 + 2 * v31);
                  if (v34 == *(this + 57))
                  {
                    DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                    v34 = *(this + 56);
                    v35 = *(this + 27);
                  }

                  *(v35 + 2 * v34++) = v37;
                  *(this + 56) = v34;
                  ++v31;
                  --v36;
                }

                while (v36);
              }

              if (v34 == *(this + 57))
              {
                DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                v34 = *(this + 56);
              }

              *(*(this + 27) + 2 * v34) = v21;
              *(this + 56) = v34 + 1;
              v38 = *(this + 72);
              v9 = v103;
              if (v38 == *(this + 73))
              {
                DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 280, 1, 1);
                LODWORD(v38) = *(this + 72);
              }

              v39 = *(this + 35) + 40 * v38;
              *v39 = v28;
              *(v39 + 4) = v29;
              *(v39 + 12) = v21;
              *(v39 + 14) = v122;
              *(v39 + 16) = v30;
              *(v39 + 24) = v33;
              *(v39 + 28) = v32 + 1;
              *(v39 + 30) = v120;
              *(v39 + 32) = v26;
              *(v39 + 36) = v124;
              v40 = *(this + 72) + 1;
              *(this + 72) = v40;
              v11 = v109;
              v7 = *v108;
              if (v17 == v109)
              {
                v41 = *&v108[4];
                if (*&v108[8] == 2 * *(this + 4))
                {
                  v41 = v40;
                }

                *&v108[4] = v41;
                ++*&v108[8];
              }

              v12 = v104;
              v16 = v118;
            }

            else
            {
              v12 = v104;
            }

            ++v17;
          }

          while (v17 != v16);
        }

        v42 = v9;
        v43 = v12;
        v106 = v9;
        do
        {
          v44 = *(this + 5);
          v45 = *(v44 + 152);
          v46 = *(v45 + 4 * v43);
          v47 = *(v44 + 140);
          v111 = *(v45 + 4 * (v43 + 1));
          v123 = v46;
          if (v47 <= v111)
          {
            if (*(this + 428) == 1 && v47 <= v12)
            {
              v74 = (v46 & 0xFFFFF) <= 0xFFFF3 ? v46 & 0xFFFFF : v46 & 0xFFFFF | 0xF00000;
              if (v74 != 16777210)
              {
                DgnString::DgnString(&v138);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v74, &v138);
                v77 = &unk_26287F8B0;
                if (v138.i32[2])
                {
                  v77 = v138.i64[0];
                }

                v76 = (*(this + 33) + 40 * v11);
                xprintf("Seed from state %d score %d trace %d, %s\n", v75, v12, *v76, v76[2], v77);
                v78 = (*(this + 33) + 40 * v11);
                MiniFst::seed(this + 312, *v78, v78[5], v78[2], v111);
                DgnString::~DgnString(&v138);
              }
            }
          }

          else
          {
            if (*(this + 19) + *(this + 76) >= 5000)
            {
              v48 = 5000;
            }

            else
            {
              v48 = *(this + 19) + *(this + 76);
            }

            v110 = (v46 >> 20) & 0x3FF;
            v49 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v45 + 4 * v43), *(*(this + 33) + 40 * v11) + ((*(v45 + 4 * v43) >> 20) & 0x3FFu), v48);
            if (v102 < v9)
            {
              v121 = v49 - *(*(this + 33) + 40 * v11);
              v50 = v46;
              v51 = v100;
              if (!v46)
              {
                v51 = 0;
              }

              v119 = v51;
              v52 = v11;
              v107 = v43;
              do
              {
                v53 = *(this + 33) + 40 * v52;
                v54 = v121 + *v53;
                v55 = *(*(this + 24) + 2 * v50);
                v56 = v55 & (v55 >> 31);
                if (!v50)
                {
                  v55 = 0;
                }

                v125 = v55;
                if (v50)
                {
                  v57 = v56;
                }

                else
                {
                  v57 = 0;
                }

                v58 = (*(v53 + 32) & ~(*(v53 + 32) >> 31)) - v57 + v119;
                v59 = v54 + v58;
                v60 = v54 + v58 - v7;
                v61 = *(this + 76);
                if (v60 <= v61)
                {
                  v117 = *(v53 + 14);
                  v113 = *(v53 + 16);
                  v114 = *(v53 + 8);
                  v62 = *(v53 + 24);
                  v63 = *(v53 + 28);
                  v115 = *(v53 + 30);
                  v116 = *(v53 + 20);
                  v112 = *(v53 + 36);
                  if (v61 > v59)
                  {
                    *v105 = v59;
                  }

                  v64 = *(this + 56);
                  v65 = v64;
                  if (v63)
                  {
                    v66 = *(this + 27);
                    v67 = v63;
                    v65 = *(this + 56);
                    do
                    {
                      v68 = *(v66 + 2 * v62);
                      if (v65 == *(this + 57))
                      {
                        DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                        v65 = *(this + 56);
                        v66 = *(this + 27);
                      }

                      *(v66 + 2 * v65++) = v68;
                      *(this + 56) = v65;
                      ++v62;
                      --v67;
                    }

                    while (v67);
                  }

                  if (v65 == *(this + 57))
                  {
                    DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                    v65 = *(this + 56);
                  }

                  *(*(this + 27) + 2 * v65) = v123;
                  *(this + 56) = v65 + 1;
                  v69 = *(this + 72);
                  v11 = v109;
                  v42 = v106;
                  v43 = v107;
                  if (v69 == *(this + 73))
                  {
                    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(this + 280, 1, 1);
                    LODWORD(v69) = *(this + 72);
                  }

                  v70 = *(this + 35) + 40 * v69;
                  *v70 = v59;
                  *(v70 + 4) = v111;
                  *(v70 + 8) = v114;
                  *(v70 + 12) = v123;
                  *(v70 + 14) = v117;
                  *(v70 + 16) = v113 + v110;
                  *(v70 + 20) = v116;
                  *(v70 + 24) = v64;
                  *(v70 + 28) = v63 + 1;
                  *(v70 + 30) = v115;
                  *(v70 + 32) = v125;
                  *(v70 + 36) = v58 + v112;
                  v71 = *(this + 72) + 1;
                  *(this + 72) = v71;
                  if (v52 == v109)
                  {
                    v72 = *&v108[4];
                    if (*&v108[8] == 2 * *(this + 4))
                    {
                      v72 = v71;
                    }

                    *&v108[4] = v72;
                    ++*&v108[8];
                  }

                  v7 = *v108;
                }

                ++v52;
              }

              while (v52 != v42);
            }
          }

          v43 += 2;
          v9 = v103;
          v12 = v104;
        }

        while ((v123 & 0x80000000) == 0);
        v8 = *(this + 68);
      }
    }

    while (v9 < v8);
    a3 = *v105;
  }

  else
  {
    *&v108[4] = 0;
  }

  v140 = a3 + v7;
  if (*(this + 428) == 1)
  {
    MiniFst::updateFrame(this + 312, v105, v7, a2);
  }

  v138 = 0u;
  v139 = 0u;
  SnapTime::recordTime(&v138, 1, 0, 0, 0);
  v138 = vsubq_s64(v138, v141);
  v139 = vsubq_s64(v139, v142);
  v79 = *(this + 13);
  v80 = vaddq_s64(v79[1], v139);
  *v79 = vaddq_s64(*v79, v138);
  v79[1] = v80;
  v136 = 0u;
  v137 = 0u;
  SnapTime::recordTime(&v136, 1, 0, 0, 0);
  if (*&v108[8] > (2 * *(this + 4)))
  {
    FstSearchLeafLatticeDurationBackoff::applyCutoffOnEmitting(this, *&v108[4], &v140);
  }

  v134 = 0u;
  v135 = 0u;
  SnapTime::recordTime(&v134, 1, 0, 0, 0);
  v81 = vsubq_s64(v134, v136);
  v82 = *(this + 13);
  v83 = v82[3];
  v84 = vaddq_s64(v82[2], v81);
  v134 = v81;
  v135 = vsubq_s64(v135, v137);
  v85 = vaddq_s64(v83, v135);
  v82[2] = v84;
  v82[3] = v85;
  v132 = 0u;
  v133 = 0u;
  SnapTime::recordTime(&v132, 1, 0, 0, 0);
  FstSearchLeafLatticeDurationBackoff::makeViterbiDecisionOnEmitting(this);
  v86 = *(this + 6);
  if (v86)
  {
    v87 = *(this + 68);
    if (v86 < v87)
    {
      mrec_nth_element<FstSearchLeafLatticeDurationBackoffcmpTok>(*(this + 33), v86, v87);
    }
  }

  v130 = 0u;
  v131 = 0u;
  SnapTime::recordTime(&v130, 1, 0, 0, 0);
  v88 = vsubq_s64(v130, v132);
  v89 = *(this + 13);
  v90 = v89[5];
  v91 = vaddq_s64(v89[4], v88);
  v130 = v88;
  v131 = vsubq_s64(v131, v133);
  v92 = vaddq_s64(v90, v131);
  v89[4] = v91;
  v89[5] = v92;
  v128 = 0u;
  v129 = 0u;
  SnapTime::recordTime(&v128, 1, 0, 0, 0);
  *(this + 72) = 0;
  v93 = *(this + 68);
  *(this + 38) = v93;
  if (a4)
  {
    *(a4 + 2) += v93;
    if (*(a4 + 2) > v93)
    {
      LODWORD(v93) = *(a4 + 2);
    }

    *(a4 + 2) = v93;
  }

  if (*(this + 428) == 1)
  {
    FstSearchLeafLatticeDurationBackoff::seedFromMiniFst(this, v143);
  }

  if (a5)
  {
    FstSearchLeafLatticeDurationBackoff::propagateNulls(this, v140, a2, a4);
  }

  *(this + 74) = a2;
  v126 = 0u;
  v127 = 0u;
  SnapTime::recordTime(&v126, 1, 0, 0, 0);
  v94 = *(this + 13);
  result = vaddq_s64(v94[6], vsubq_s64(v126, v128));
  v96 = vaddq_s64(v94[7], vsubq_s64(v127, v129));
  v94[6] = result;
  v94[7] = v96;
  return result;
}

uint64_t FstSearchLeafLatticeDurationBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 288);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLeafLatticeDurationBackoffcmpTok>(*(this + 280), a2, v4);
    v8 = *(*(v6 + 280) + 40 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 292);
    if (a2 > v9)
    {
      this = DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v6 + 280, a2 - v9, 0);
    }

    v10 = *(v6 + 288);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = 40 * v10;
      do
      {
        v13 = *(v6 + 280) + v12;
        *v13 = 0xFFFFFFFF00000000;
        *(v13 + 8) = -1;
        *(v13 + 12) = -2;
        *(v13 + 32) = 0;
        *(v13 + 16) = 0;
        *(v13 + 22) = 0;
        v12 += 40;
        --v11;
      }

      while (v11);
    }

    *(v6 + 288) = a2;
  }

  return this;
}

char **FstSearchLeafLatticeDurationBackoff::makeViterbiDecisionOnEmitting(char **this)
{
  v1 = this;
  v2 = *(this + 72);
  if (v2)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(this[35], v2, 40, 0);
    v3 = *(v1 + 72);
    *(v1 + 68) = 0;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = v1[35];
        if (v5 && (v8 = &v7[40 * v5], *(v8 + 1) == *(v8 - 9)))
        {
          if (v4 >= *(v1 + 5) + v6)
          {
            goto LABEL_16;
          }

          i = v6;
          if (v6 < v4)
          {
            v10 = &v1[33][40 * v6 + 20];
            for (i = v6; v4 != i; ++i)
            {
              v11 = *v10;
              v10 += 40;
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

          v12 = *(v1 + 69);
        }

        else
        {
          v8 = &v7[40 * v5];
          v12 = *(v1 + 69);
          v6 = v4;
        }

        if (v4 == v12)
        {
          this = DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts((v1 + 33), 1, 1);
          v4 = *(v1 + 68);
        }

        v13 = &v1[33][40 * v4];
        v14 = *v8;
        v15 = *(v8 + 1);
        *(v13 + 32) = *(v8 + 4);
        *v13 = v14;
        *(v13 + 16) = v15;
        v4 = *(v1 + 68) + 1;
        *(v1 + 68) = v4;
LABEL_16:
        ++v5;
      }

      while (v5 < *(v1 + 72));
    }
  }

  else
  {
    *(this + 68) = 0;
  }

  return this;
}

uint64_t mrec_nth_element<FstSearchLeafLatticeDurationBackoffcmpTok>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (result + 40 * v3);
      v5 = (result + 40 * (v3 + (a3 >> 1)));
      if ((result & 7) != 0)
      {
        v6 = 40;
        v7 = (result + 40 * v3);
        do
        {
          v8 = *v7;
          *v7++ = *v5;
          *v5++ = v8;
          --v6;
        }

        while (v6);
      }

      else
      {
        for (i = 0; i != 10; i += 2)
        {
          v10 = *&v4[i];
          *&v4[i] = *&v5[i * 4];
          *&v5[i * 4] = v10;
        }
      }

      v11 = (result - 40 + 40 * (v3 + a3));
      v12 = (result + 40 * v3);
      do
      {
        v13 = v12 + 10;
        while (1)
        {
          v12 = v13;
          if (v13 >= v11)
          {
            break;
          }

          v13 += 10;
          if (*v12 > *v4)
          {
            v14 = v12;
            while (*v11 >= *v4)
            {
              v11 -= 10;
              if (v12 >= v11)
              {
                goto LABEL_22;
              }
            }

            v15 = 0;
            if ((result & 7) != 0)
            {
              do
              {
                v16 = *v14;
                *v14++ = *(v11 + v15);
                *(v11 + v15++) = v16;
              }

              while (v15 != 40);
            }

            else
            {
              do
              {
                v17 = *v14;
                *v14 = *(v11 + v15);
                v14 += 8;
                *(v11 + v15) = v17;
                v15 += 8;
              }

              while (v15 != 40);
            }

            v11 -= 10;
            break;
          }
        }

LABEL_22:
        ;
      }

      while (v12 < v11);
      if (*v12 > *v4)
      {
        v12 -= 10;
      }

      if (v12 > v4)
      {
        v18 = 0;
        if ((result & 7) != 0)
        {
          do
          {
            v19 = *(v12 + v18);
            *(v12 + v18) = *(v4 + v18);
            *(v4 + v18++) = v19;
          }

          while (v18 != 40);
        }

        else
        {
          do
          {
            v20 = *(v12 + v18);
            *(v12 + v18) = *(v4 + v18);
            *(v4 + v18) = v20;
            v18 += 8;
          }

          while (v18 != 40);
        }
      }

      v21 = (v12 - v4) / 0x28uLL;
      if (v21 <= a2)
      {
        if (v21 >= a2)
        {
          return result;
        }

        v22 = v21 + 1;
        v3 += v22;
        a2 -= v22;
        v21 = a3 - v22;
      }

      a3 = v21;
    }

    while (v21 > 1);
  }

  return result;
}

uint64_t FstSearchLeafLatticeDurationBackoff::seedFromMiniFst(uint64_t this, int *a2)
{
  if (*(this + 428) == 1)
  {
    v2 = this;
    v3 = *(this + 336);
    if (v3 >= *(this + 20))
    {
      v3 = *(this + 20);
    }

    if (v3)
    {
      v4 = 0;
      do
      {
        v5 = (*(v2 + 328) + 36 * v4);
        v42 = *v5;
        v43 = v5[5];
        v6 = v5[6];
        v40 = v5[4];
        v41 = v5[7];
        v7 = v5[2];
        v44 = 0;
        v45 = 0;
        v39 = v6;
        if ((v7 & 0x80000000) != 0)
        {
          LODWORD(v11) = -2 - v7;
        }

        else
        {
          v8 = 0;
          v9 = 0;
          do
          {
            if (v9 == HIDWORD(v45))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v44, 1, 1);
              v9 = v45;
              v8 = v44;
            }

            *(v8 + 4 * v9) = v7;
            v10 = v45;
            v9 = v45 + 1;
            LODWORD(v45) = v45 + 1;
            v7 = *(*(v2 + 312) + 36 * v7 + 8);
          }

          while ((v7 & 0x80000000) == 0);
          LODWORD(v11) = -2 - v7;
          if ((v10 & 0x80000000) == 0)
          {
            do
            {
              v12 = *(v44 + 4 * v10);
              v13 = *(v2 + 312);
              v14 = (v13 + 36 * v12);
              v15 = *v14;
              v16 = *(v14 + 2);
              v17 = *(v2 + 184);
              if (v17 == *(v2 + 188))
              {
                DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 176, 1, 1);
                v17 = *(v2 + 184);
                v13 = *(v2 + 312);
              }

              v18 = *(v2 + 176) + 28 * v17;
              *(v2 + 184) = v17 + 1;
              *v18 = v15;
              *(v18 + 4) = v16;
              *(v18 + 12) = v11;
              *(v18 + 16) = 0;
              *(v18 + 20) = 0;
              *(v18 + 24) = 0;
              v19 = *(v13 + 36 * v12 + 28);
              v20 = *(v2 + 168);
              if (v20 == *(v2 + 172))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(v2 + 160, 1, 1);
                v20 = *(v2 + 168);
              }

              v21 = *(v2 + 160);
              v22 = v21 + 16 * v20;
              *v22 = v19;
              *(v22 + 8) = v17;
              *(v22 + 12) = 0;
              v11 = *(v2 + 168);
              *(v2 + 168) = v11 + 1;
              *(v21 + 16 * v11 + 12) = 1;
            }

            while (v10-- > 0);
          }
        }

        v24 = *(v2 + 184);
        if (v24 == *(v2 + 188))
        {
          DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v2 + 176, 1, 1);
          v24 = *(v2 + 184);
        }

        v25 = *(v2 + 176);
        *(v2 + 184) = v24 + 1;
        v26 = v25 + 28 * v24;
        *v26 = v42;
        *(v26 + 4) = v40;
        *(v26 + 8) = v43;
        *(v26 + 12) = v11;
        *(v26 + 16) = 0;
        *(v26 + 20) = 0;
        *(v26 + 24) = 0;
        if (v41 == 16777213)
        {
          v27 = (*(v2 + 160) + 16 * v11);
          v28 = 16777209;
          if (*v27 == 16777209)
          {
            v24 = v27[2];
          }
        }

        else
        {
          v28 = v41;
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
        *v32 = v28;
        v32[1] = v29;
        v32[2] = v24;
        v32[3] = 0;
        v33 = *(v2 + 168);
        *(v2 + 168) = v33 + 1;
        *(v31 + 16 * v33 + 12) = 1;
        v34 = *(v2 + 272);
        if (v34 == *(v2 + 276))
        {
          DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v2 + 264, 1, 1);
          LODWORD(v34) = *(v2 + 272);
        }

        v35 = *(v2 + 264) + 40 * v34;
        *v35 = v42;
        *(v35 + 4) = v39;
        *(v35 + 8) = v33;
        *(v35 + 12) = -2;
        *(v35 + 16) = v40;
        *(v35 + 20) = v43;
        *(v35 + 28) = 0;
        *(v35 + 32) = 0;
        ++*(v2 + 272);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
        ++v4;
        LODWORD(v36) = *(v2 + 336);
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

void sub_262637DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLeafLatticeDurationBackoff::propagateNulls(uint64_t this, uint64_t a2, int a3, SearchStats *a4)
{
  v4 = *(this + 168);
  v101 = this;
  LODWORD(v5) = *(this + 272);
  if (v5)
  {
    v6 = a2;
    v78 = *(this + 168);
    v79 = a4;
    v7 = 0;
    v85 = a2;
    do
    {
      v8 = *(v101 + 264);
      v9 = v7;
      v10 = *(v8 + 40 * v7 + 4);
      v83 = v7;
      if (v5 <= v7 + 1)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = v5;
      }

      while (v11 - 1 != v7)
      {
        if (*(v8 + 40 * ++v7 + 4) != v10)
        {
          goto LABEL_10;
        }
      }

      v7 = v11;
LABEL_10:
      v12 = *(v101 + 40);
      if (*(v12 + 160) != v10 && (*(v12 + 140) <= v10 || (*(*(v12 + 152) + 4 * v10) & 0x40000000) != 0))
      {
        v99 = 40 * v9;
        v81 = v10;
        v82 = v7;
        v80 = v7 - v83;
        do
        {
          v13 = *(v101 + 40);
          v14 = *(v13 + 152);
          v86 = v10;
          v91 = *(v14 + 4 * v10);
          v15 = *(v13 + 140);
          v93 = *(v14 + 4 * (v10 + 1));
          if (v15 <= v93)
          {
            v16 = (v91 & 0xFFFFF) <= 0xFFFF3 ? v91 & 0xFFFFF : v91 & 0xFFFFF | 0xF00000;
            v17 = v16 != 16777210 && v15 <= v81;
            if (!v17 && v82 > v83)
            {
              v19 = 0;
              v20 = (v91 >> 20) & 0x3FF;
              v87 = v16 + 1;
              v21 = v80;
              v92 = v16;
              do
              {
                v22 = *(v101 + 264);
                v23 = v22 + v99;
                v24 = *(v22 + v99 + v19);
                v25 = v24 + v20;
                if (v24 + v20 > v6)
                {
                  break;
                }

                v26 = v23 + v19;
                this = *(v23 + v19 + 8);
                v27 = *(v23 + v19 + 12);
                v28 = *(v23 + v19 + 14);
                v29 = *(v23 + v19 + 16);
                v30 = *(v26 + 20);
                v100 = *(v26 + 24);
                v31 = *(v26 + 28);
                v32 = *(v26 + 30);
                v33 = *(v26 + 36);
                v34 = v29 + v20;
                if (v16 == 16777210)
                {
                  v47 = *(v101 + 272);
                  if (v47 == *(v101 + 276))
                  {
                    v95 = this;
                    v97 = v27;
                    v48 = v6;
                    v49 = *(v26 + 30);
                    v50 = v28;
                    v51 = *(v26 + 36);
                    DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v101 + 264, 1, 1);
                    v33 = v51;
                    v28 = v50;
                    v32 = v49;
                    v6 = v48;
                    this = v95;
                    v27 = v97;
                    v20 = (v91 >> 20) & 0x3FF;
                    v16 = v92;
                    LODWORD(v47) = *(v101 + 272);
                    v22 = *(v101 + 264);
                  }

                  v52 = v22 + 40 * v47;
                  *v52 = v25;
                  *(v52 + 4) = v93;
                  *(v52 + 8) = this;
                  *(v52 + 12) = v27;
                  *(v52 + 14) = v28;
                  *(v52 + 16) = v34;
                  *(v52 + 20) = v30;
                  *(v52 + 24) = v100;
                  *(v52 + 28) = v31;
                  *(v52 + 30) = v32;
                  *(v52 + 32) = 0;
                  *(v52 + 36) = v33;
                  ++*(v101 + 272);
                }

                else
                {
                  if (v16 == 16777214)
                  {
                    v35 = v24 - v29;
                  }

                  else
                  {
                    v35 = v24 + v20;
                  }

                  if (v16 == 16777214)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = v29 + v20;
                  }

                  if (v16 == 16777214)
                  {
                    v37 = v29 + v20;
                  }

                  else
                  {
                    v37 = 0;
                  }

                  v88 = v37;
                  v38 = *(v101 + 184);
                  if (v38 == *(v101 + 188))
                  {
                    v94 = this;
                    v96 = v27;
                    v39 = v32;
                    v89 = v29 + v20;
                    v40 = v28;
                    v41 = v33;
                    v42 = v35;
                    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v101 + 176, 1, 1);
                    v35 = v42;
                    v33 = v41;
                    v28 = v40;
                    this = v94;
                    v27 = v96;
                    v34 = v89;
                    v32 = v39;
                    v20 = (v91 >> 20) & 0x3FF;
                    v16 = v92;
                    v38 = *(v101 + 184);
                  }

                  v43 = v87 + 2 * v30;
                  v44 = *(v101 + 176);
                  *(v101 + 184) = v38 + 1;
                  v45 = v44 + 28 * v38;
                  *v45 = v35;
                  *(v45 + 4) = v36;
                  *(v45 + 8) = v43;
                  *(v45 + 12) = this;
                  *(v45 + 16) = v100;
                  *(v45 + 20) = v31;
                  *(v45 + 24) = v33;
                  v46 = *(v101 + 168);
                  if (v19)
                  {
                    v6 = v85;
                  }

                  else
                  {
                    v6 = v85;
                    if (v46 == *(v101 + 172))
                    {
                      v53 = v32;
                      v54 = v28;
                      v98 = v35;
                      this = DgnArray<DgnPrimArray<double>>::reallocElts(v101 + 160, 1, 1);
                      v35 = v98;
                      v28 = v54;
                      v32 = v53;
                      v20 = (v91 >> 20) & 0x3FF;
                      v16 = v92;
                      v46 = *(v101 + 168);
                    }

                    v55 = (*(v101 + 160) + 16 * v46);
                    *v55 = v16;
                    v55[1] = a3;
                    v55[2] = v38;
                    v55[3] = 0;
                    v56 = *(v101 + 168);
                    *(v101 + 168) = v56 + 1;
                    v57 = *(v101 + 272);
                    if (v57 == *(v101 + 276))
                    {
                      v58 = v32;
                      v90 = v34;
                      v59 = v28;
                      v60 = v35;
                      this = DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v101 + 264, 1, 1);
                      v35 = v60;
                      v28 = v59;
                      v34 = v90;
                      v32 = v58;
                      v20 = (v91 >> 20) & 0x3FF;
                      v16 = v92;
                      LODWORD(v57) = *(v101 + 272);
                    }

                    v61 = *(v101 + 264) + 40 * v57;
                    *v61 = v35 + v88;
                    *(v61 + 4) = v93;
                    *(v61 + 8) = v56;
                    *(v61 + 12) = v27;
                    *(v61 + 14) = v28;
                    *(v61 + 16) = v34;
                    *(v61 + 20) = v43;
                    *(v61 + 24) = v100;
                    *(v61 + 28) = 0;
                    *(v61 + 30) = v32;
                    *(v61 + 32) = 0;
                    ++*(v101 + 272);
                    v46 = *(v101 + 168);
                  }

                  v62 = *(v101 + 160) + 16 * (v46 - 1);
                  ++*(v62 + 12);
                }

                v19 += 40;
                --v21;
              }

              while (v21);
            }
          }

          v10 = v86 + 2;
        }

        while ((v91 & 0x80000000) == 0);
        LODWORD(v5) = *(v101 + 272);
        v7 = v82;
      }
    }

    while (v7 < v5);
    v63 = *(v101 + 152);
    if (v5 > v63)
    {
      this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v101 + 264) + 40 * v63), (v5 - v63), 40, 0);
      v63 = *(v101 + 152);
      LODWORD(v5) = *(v101 + 272);
    }

    if (v63 < v5)
    {
      v64 = v63;
      v65 = v63;
      do
      {
        v66 = *(v101 + 264);
        v67 = (v66 + 40 * v64);
        this = v63;
        if (*(v67 + 1) != *(v66 + 40 * (v64 - 1) + 4))
        {
          goto LABEL_67;
        }

        if ((v63 - v65) < *(v101 + 20))
        {
          v68 = v65;
          if (v63 > v65)
          {
            v69 = (v66 + 40 * v65 + 20);
            v68 = v65;
            while (1)
            {
              v70 = *v69;
              v69 += 10;
              if (v70 == *(v67 + 5))
              {
                break;
              }

              if (v63 == ++v68)
              {
                this = v65;
                goto LABEL_67;
              }
            }
          }

          this = v65;
          if (v68 == v63)
          {
LABEL_67:
            v71 = v66 + 40 * v63;
            v72 = *v67;
            v73 = v67[1];
            *(v71 + 32) = *(v67 + 4);
            *v71 = v72;
            *(v71 + 16) = v73;
            v63 = (v63 + 1);
            v65 = this;
          }
        }

        ++v64;
        v5 = *(v101 + 272);
      }

      while (v64 < v5);
    }

    a4 = v79;
    v4 = v78;
    if (v79)
    {
      goto LABEL_70;
    }
  }

  else
  {
    LODWORD(v63) = *(this + 152);
    if (a4)
    {
LABEL_70:
      *(a4 + 1) += *(v101 + 168) - v4;
    }
  }

  v74 = *(v101 + 276);
  if (v63 > v74)
  {
    this = DgnArray<FstSearchLeafLatticeDurationBackoffActiveToken>::reallocElts(v101 + 264, v63 - v74, 0);
    LODWORD(v5) = *(v101 + 272);
  }

  if (v5 < v63)
  {
    v75 = v63 - v5;
    v76 = 40 * v5;
    do
    {
      v77 = *(v101 + 264) + v76;
      *v77 = 0xFFFFFFFF00000000;
      *(v77 + 8) = -1;
      *(v77 + 12) = -2;
      *(v77 + 32) = 0;
      *(v77 + 16) = 0;
      *(v77 + 22) = 0;
      v76 += 40;
      --v75;
    }

    while (v75);
  }

  *(v101 + 272) = v63;
  return this;
}

uint64_t FstSearchLeafLatticeDurationBackoff::collectTraces(FstSearchLeafLatticeDurationBackoff *this)
{
  v2 = *(this + 42);
  v63 = 0;
  v62 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v62 = v3;
    v63 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v63);
  }

  v5 = *(this + 68);
  if (v5)
  {
    v6 = 0;
    v7 = v62;
    v8 = (*(this + 33) + 8);
    do
    {
      v10 = *v8;
      v8 += 10;
      v9 = v10;
      if (v10 != -1)
      {
        *(v7 + v9) = 1;
        v5 = *(this + 68);
      }

      ++v6;
    }

    while (v6 < v5);
  }

  v11 = *(this + 42);
  if (!v11)
  {
    v60 = 0;
    v61 = 0;
LABEL_54:
    v23 = 0;
    *(this + 42) = 0;
    goto LABEL_55;
  }

  v12 = 0;
  v13 = v62;
  do
  {
    --v11;
    if (v12)
    {
      v12 = 1;
    }

    else if (*(*(this + 20) + 16 * v11) == 16777213)
    {
      v12 = 1;
      *(v13 + v11) = 1;
    }

    else
    {
      v12 = 0;
    }

    if (*(v13 + v11))
    {
      v14 = *(this + 20) + 16 * v11;
      v15 = *(v14 + 12);
      if (v15 >= 1)
      {
        v16 = *(v14 + 8);
        v17 = v15 + v16;
        v18 = *(this + 22);
        do
        {
          v19 = *(v18 + 28 * v16 + 12);
          if (v19 != -1)
          {
            *(v13 + v19) = 1;
          }

          ++v16;
        }

        while (v16 < v17);
      }
    }
  }

  while (v11);
  v20 = *(this + 42);
  v60 = 0;
  v61 = 0;
  if (!v20)
  {
    goto LABEL_54;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  do
  {
    if (*(v62 + v21))
    {
      v24 = *(this + 20);
      if (v21 != v22)
      {
        *(v24 + 16 * v22) = *(v24 + 16 * v21);
        v24 = *(this + 20);
      }

      *(v24 + 16 * v22 + 8) = v23;
      v25 = v24 + 16 * v21;
      v26 = *(v25 + 8);
      v27 = (*(v25 + 12) + v26);
      if (v26 < v27)
      {
        v28 = *(this + 22);
        do
        {
          v29 = v23;
          if (v26 != v23)
          {
            v30 = (v28 + 28 * v26);
            v31 = (v28 + 28 * v23);
            v32 = *v30;
            *(v31 + 12) = *(v30 + 12);
            *v31 = v32;
            v28 = *(this + 22);
          }

          v33 = v28 + 28 * v23;
          v36 = *(v33 + 12);
          v34 = (v33 + 12);
          v35 = v36;
          if (v36 != -1)
          {
            *v34 = *(v62 + v35);
          }

          v37 = v61;
          if (*(v28 + 28 * v29 + 20))
          {
            v38 = 0;
            v39 = v61;
            do
            {
              v40 = *(*(this + 27) + 2 * (v38 + *(v28 + 28 * v29 + 16)));
              if (v39 == HIDWORD(v61))
              {
                DgnPrimArray<short>::reallocElts(&v60, 1, 1);
                v39 = v61;
                v28 = *(this + 22);
              }

              *(v60 + 2 * v39++) = v40;
              LODWORD(v61) = v39;
              ++v38;
            }

            while (v38 < *(v28 + 28 * v29 + 20));
          }

          *(v28 + 28 * v29 + 16) = v37;
          v23 = v29 + 1;
          ++v26;
        }

        while (v26 != v27);
      }

      *(v62 + v21) = v22++;
      v20 = *(this + 42);
    }

    ++v21;
  }

  while (v21 < v20);
  v41 = *(this + 43);
  if (v22 > v41)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 160, v22 - v41, 0);
    v20 = *(this + 42);
  }

  if (v20 < v22)
  {
    v42 = v22 - v20;
    v43 = (*(this + 20) + 16 * v20);
    do
    {
      *v43++ = xmmword_26287F860;
      --v42;
    }

    while (v42);
  }

  *(this + 42) = v22;
  v44 = *(this + 47);
  if (v23 > v44)
  {
    DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 176, v23 - v44, 0);
  }

  v45 = *(this + 46);
  if (v45 < v23)
  {
    v46 = v23 - v45;
    v47 = (*(this + 22) + 28 * v45 + 24);
    do
    {
      *(v47 - 6) = xmmword_26287F850;
      *(v47 - 2) = 0;
      *(v47 - 2) = 0;
      *v47 = 0;
      v47 += 7;
      --v46;
    }

    while (v46);
  }

LABEL_55:
  *(this + 46) = v23;
  v48 = *(this + 68);
  if (v48)
  {
    v49 = 0;
    v50 = v61;
    v51 = *(this + 33);
    do
    {
      if (*(v51 + 40 * v49 + 28))
      {
        v52 = 0;
        LODWORD(v53) = v50;
        do
        {
          v54 = *(*(this + 27) + 2 * (v52 + *(v51 + 40 * v49 + 24)));
          if (v53 == HIDWORD(v61))
          {
            DgnPrimArray<short>::reallocElts(&v60, 1, 1);
            LODWORD(v53) = v61;
            v51 = *(this + 33);
          }

          *(v60 + 2 * v53) = v54;
          v53 = (v53 + 1);
          LODWORD(v61) = v53;
          ++v52;
        }

        while (v52 < *(v51 + 40 * v49 + 28));
        v48 = *(this + 68);
      }

      else
      {
        v53 = v50;
      }

      *(v51 + 40 * v49++ + 24) = v50;
      v50 = v53;
    }

    while (v49 < v48);
  }

  else
  {
    LODWORD(v53) = v61;
  }

  DgnPrimArray<unsigned short>::copyArraySlice(this + 27, &v60, 0, v53);
  v55 = *(this + 68);
  if (v55)
  {
    v56 = v62;
    v57 = (*(this + 33) + 8);
    do
    {
      v58 = *v57;
      if (v58 != -1)
      {
        *v57 = *(v56 + v58);
      }

      v57 += 10;
      --v55;
    }

    while (v55);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v60);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v62);
}

void sub_2626388AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLeafLatticeDurationBackoff::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLeafLatticeDurationBackoff::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchLeafLatticeDurationBackoff::collectTraces(this);
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

_DWORD *FstSearchLeafLatticeDurationBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[56] = 0;
  this[68] = 0;
  return this;
}

double FstSearchLeafLatticeDurationBackoff::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLeafLatticeDurationBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLeafLatticeDurationBackoff::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
{
  result = SearchItf::beginTopRecPassSyncRecogBase(this, a2);
  if (a3)
  {
    MiniFst::init(this + 39, a3, this[4]);
    result = ArcGraph::findBackoffState(this[5]);
    *(this + 106) = result;
    *(this + 428) = 1;
  }

  return result;
}

uint64_t FstSearchLeafLatticeDurationBackoff::endTopRecPassSyncRecog(FstSearchLeafLatticeDurationBackoff *this)
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
  *(this + 76) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

void FstSearchLeafLatticeDurationBackoff::printSize(FstSearchLeafLatticeDurationBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2950);
  if (v78)
  {
    v12 = v77;
  }

  else
  {
    v12 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, a3, &unk_26287F8B0, a3, &unk_26287F8B0, v12);
  DgnString::~DgnString(&v77);
  if (a2 != -1)
  {
    xlprintf("%d ", v13, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v13, a3, &unk_26287F8B0);
  v14 = (a3 + 1);
  v15 = (34 - a3);
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2952);
  if (v78)
  {
    v17 = v77;
  }

  else
  {
    v17 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v16, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v17, 4, 4, 0);
  DgnString::~DgnString(&v77);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2954);
  if (v78)
  {
    v19 = v77;
  }

  else
  {
    v19 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v19, 4, 4, 0);
  DgnString::~DgnString(&v77);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2955);
  if (v78)
  {
    v21 = v77;
  }

  else
  {
    v21 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v21, 4, 4, 0);
  v73 = a2;
  DgnString::~DgnString(&v77);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2956);
  if (v78)
  {
    v23 = v77;
  }

  else
  {
    v23 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v23, 4, 4, 0);
  DgnString::~DgnString(&v77);
  *a4 += 4;
  *a5 += 4;
  v24 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v24 = 12;
  }

  v25 = *(this + 42);
  v26 = 16 * v25;
  if (v25 <= 0)
  {
    v26 = 0;
  }

  v27 = v26 + v24;
  v28 = v26 + v24 + 16 * (*(this + 43) - v25);
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2957);
  if (v78)
  {
    v30 = v77;
  }

  else
  {
    v30 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v30, v28, v27, 0);
  DgnString::~DgnString(&v77);
  *a4 += v28;
  *a5 += v27;
  v31 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v31 = 12;
  }

  v32 = *(this + 46);
  v33 = 26 * v32;
  if (v32 <= 0)
  {
    v33 = 0;
  }

  v34 = v33 + v31;
  v35 = v33 + v31 + 26 * (*(this + 47) - v32);
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2959);
  if (v78)
  {
    v37 = v77;
  }

  else
  {
    v37 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, (a3 + 1), &unk_26287F8B0, (34 - a3), (34 - a3), v37, v35, v34, 0);
  v72 = a3;
  DgnString::~DgnString(&v77);
  *a4 += v35;
  *a5 += v34;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 12;
  }

  else
  {
    v38 = 16;
  }

  v39 = *(this + 56);
  v40 = *(this + 57);
  if (v40 >= v39)
  {
    v41 = 0;
    if (v39 > 0)
    {
      v38 += 2 * (v39 - 1) + 2;
    }

    v42 = v38 + 2 * (v40 - v39);
  }

  else
  {
    v41 = 2 * v39;
    v42 = v38;
  }

  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2961);
  if (v78)
  {
    v44 = v77;
  }

  else
  {
    v44 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v43, v14, &unk_26287F8B0, v15, v15, v44, v42, v38, v41);
  DgnString::~DgnString(&v77);
  *a4 += v42;
  *a5 += v38;
  *a6 += v41;
  v45 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 12;
  }

  v46 = *(this + 68);
  v47 = 36 * v46;
  if (v46 <= 0)
  {
    v47 = 0;
  }

  v48 = v47 + v45;
  v49 = v47 + v45 + 36 * (*(this + 69) - v46);
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2964);
  if (v78)
  {
    v51 = v77;
  }

  else
  {
    v51 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v14, &unk_26287F8B0, v15, v15, v51, v49, v48, 0);
  DgnString::~DgnString(&v77);
  *a4 += v49;
  *a5 += v48;
  v52 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v52 = 12;
  }

  v53 = *(this + 72);
  v54 = 36 * v53;
  if (v53 <= 0)
  {
    v54 = 0;
  }

  v55 = v54 + v52;
  v56 = v54 + v52 + 36 * (*(this + 73) - v53);
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2966);
  if (v78)
  {
    v58 = v77;
  }

  else
  {
    v58 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v14, &unk_26287F8B0, v15, v15, v58, v56, v55, 0);
  DgnString::~DgnString(&v77);
  *a4 += v56;
  *a5 += v55;
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2968);
  if (v78)
  {
    v60 = v77;
  }

  else
  {
    v60 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v14, &unk_26287F8B0, v15, v15, v60, 4, 4, 0);
  DgnString::~DgnString(&v77);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2970);
  if (v78)
  {
    v62 = v77;
  }

  else
  {
    v62 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v14, &unk_26287F8B0, v15, v15, v62, 4, 4, 0);
  DgnString::~DgnString(&v77);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2972);
  if (v78)
  {
    v64 = v77;
  }

  else
  {
    v64 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v63, v14, &unk_26287F8B0, v15, v15, v64, 4, 4, 0);
  DgnString::~DgnString(&v77);
  *a4 += 4;
  *a5 += 4;
  v65 = sizeObject(this + 312, 0);
  v66 = sizeObject(this + 312, 1);
  v67 = sizeObject(this + 312, 3);
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2974);
  if (v78)
  {
    v69 = v77;
  }

  else
  {
    v69 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v14, &unk_26287F8B0, v15, v15, v69, v65, v66, v67);
  DgnString::~DgnString(&v77);
  *a4 += v65;
  *a5 += v66;
  *a6 += v67;
  v75 = 0;
  v76 = 0;
  SearchItf::printSize(this, v73, v14, &v76, &v75, &v75);
  *a4 += v76;
  *a5 += v75;
  getShipObjectSizeDescription(&v77, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstdef.inl", 2985);
  if (v78)
  {
    v71 = v77;
  }

  else
  {
    v71 = &unk_26287F8B0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v70, v72, &unk_26287F8B0, (35 - v72), (35 - v72), v71, *a4, *a5, *a6);
  DgnString::~DgnString(&v77);
}

uint64_t FstSearchLeafLatticeDurationBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 152);
  }

  v5 = *(a1 + 272);
  if (v4 >= v5)
  {
    goto LABEL_21;
  }

  v6 = 40 * v4;
  v7 = 1879048192;
  v8 = 0xFFFFFFFFLL;
  do
  {
    v9 = *(a1 + 264);
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

    v11 = *(*(a1 + 176) + 28 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    v12 = v7 <= v11;
    if (v7 >= v11)
    {
      v7 = *(*(a1 + 176) + 28 * *(*(a1 + 160) + 16 * v10 + 8)) + *(*(a1 + 88) + 4 * *(*(a1 + 160) + 16 * v10 + 4));
    }

    if (!v12)
    {
      v8 = v10;
    }

    v5 = *(a1 + 272);
LABEL_19:
    ++v4;
    v6 += 40;
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