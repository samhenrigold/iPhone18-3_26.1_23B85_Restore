double FstSearchLatticeBackoff::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
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

void FstSearchLatticeBackoff::getHistory(uint64_t *result, unsigned int a2, uint64_t a3, int a4)
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
      v10 = (result[20] + 16 * v9);
      if (*v10 == 16777209)
      {
        v7 = v7;
      }

      else
      {
        v7 = (v7 + 1);
      }

      v9 = *(result[22] + 16 * v10[2] + 12);
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
        v17 = (v15 + 16 * v8);
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

        v8 = *(result[22] + 16 * *(v15 + 16 * v8 + 8) + 12);
      }

      while (v8 != -1);
    }
  }
}

uint64_t FstSearchLatticeBackoff::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
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
  BestTrace = FstSearchLatticeBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLatticeBackoff::getHistory(a1, BestTrace, a3, a4);
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
  return (*(a1[22] + 16 * *(v18 + 8)) + *(a1[11] + 4 * *(v18 + 4)));
}

int64x2_t FstSearchLattice::advanceDeltas(FstSearchLattice *this, int a2, int a3, SearchStats *a4, int a5)
{
  v115[0] = a2;
  v113 = 0u;
  v114 = 0u;
  SnapTime::recordTime(&v113, 1, 0, 0, 0);
  *(this + 58) = a3;
  v7 = *(this + 2);
  v90 = (this + 232);
  v8 = *(this + 50);
  if (v8)
  {
    v91 = 0;
    v92 = 0;
    v9 = 0;
    v96 = this;
    v93 = *(this + 2);
    do
    {
      v10 = v9;
      v86 = 24 * v9;
      v11 = *(this + 24) + v86;
      v12 = *(v11 + 4);
      if (v8 <= v9 + 1)
      {
        ++v9;
      }

      else
      {
        v9 = v8;
      }

      v84 = v9 - 1;
      v13 = (v11 + 28);
      v14 = 1;
      while (v10 + v14 < v8)
      {
        v15 = *v13;
        v13 += 6;
        ++v14;
        if (v15 != v12)
        {
          v84 = v10 + v14 - 2;
          v9 = v10 + v14 - 1;
          break;
        }
      }

      v16 = *(this + 5);
      if (*(v16 + 160) != v12)
      {
        v17 = *(v16 + 140) <= v12 || v10 > v84;
        v85 = v9;
        if (!v17)
        {
          v18 = 0;
          v19 = v84 - v10 + 1;
          do
          {
            v20 = *(v96 + 24) + v86 + v18;
            v21 = *v20;
            v22 = PelScoreCache::getScoreNoBackoff(*(v96 + 4), *(v20 + 12)) + v21;
            v23 = *(v96 + 58);
            if (v22 - v7 <= v23)
            {
              if (v23 > v22)
              {
                *v90 = v22;
              }

              v24 = *(v96 + 24) + v86 + v18;
              v25 = *(v24 + 4);
              v26 = *(v24 + 12);
              v27 = *(v24 + 14);
              v28 = *(v24 + 16);
              v29 = *(v96 + 54);
              if (v29 == *(v96 + 55))
              {
                DgnArray<CWIDAC>::reallocElts(v96 + 208, 1, 1);
                LODWORD(v29) = *(v96 + 54);
              }

              v30 = *(v96 + 26) + 24 * v29;
              *v30 = v22;
              *(v30 + 4) = v25;
              *(v30 + 12) = v26;
              *(v30 + 14) = v27;
              *(v30 + 16) = v28;
              v31 = *(v96 + 54) + 1;
              *(v96 + 54) = v31;
              if (!v18)
              {
                v32 = v91;
                if (v92 == 2 * *(v96 + 4))
                {
                  v32 = v31;
                }

                v91 = v32;
                ++v92;
              }
            }

            v18 += 24;
            --v19;
          }

          while (v19);
        }

        v33 = v84 - v10 + 1;
        v34 = v12;
        v87 = v12;
        v88 = v10;
        this = v96;
        v94 = v33;
        do
        {
          v35 = *(this + 5);
          v36 = *(v35 + 152);
          v37 = *(v36 + 4 * v34);
          v38 = *(v35 + 140);
          v97 = *(v36 + 4 * (v34 + 1));
          v89 = v34;
          if (v38 <= v97)
          {
            if (*(this + 356) == 1 && v38 <= v12)
            {
              v58 = (v37 & 0xFFFFF) <= 0xFFFF3 ? v37 & 0xFFFFF : v37 & 0xFFFFF | 0xF00000;
              if (v58 != 16777210)
              {
                DgnString::DgnString(&v110);
                ArcGraph::getNameAndHumanReadablePron(*(this + 5), v58, &v110);
                v61 = &unk_26287F8B0;
                if (v110.i32[2])
                {
                  v61 = v110.i64[0];
                }

                v60 = (*(this + 24) + 24 * v88);
                xprintf("Seed from state %d score %d trace %d, %s\n", v59, v87, *v60, v60[2], v61);
                v62 = (*(this + 24) + 24 * v88);
                MiniFst::seed(this + 240, *v62, v62[5], v62[2], v97);
                DgnString::~DgnString(&v110);
              }
            }
          }

          else
          {
            ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v36 + 4 * v34));
            if (v10 <= v84)
            {
              v40 = 0;
              v41 = (v37 >> 20) & 0x3FF;
              v42 = ScoreNoBackoff + v41;
              v43 = v86;
              v95 = v37;
              do
              {
                v44 = *(this + 24);
                v45 = v42 + *(v44 + v43);
                v46 = *(this + 58);
                if (v45 - v7 <= v46)
                {
                  if (v46 > v45)
                  {
                    *v90 = v45;
                  }

                  v47 = v44 + v43;
                  v48 = *(v47 + 8);
                  v49 = *(v47 + 14);
                  v50 = *(v47 + 16);
                  v51 = *(v47 + 20);
                  this = v96;
                  v52 = *(v96 + 54);
                  if (v52 == *(v96 + 55))
                  {
                    DgnArray<CWIDAC>::reallocElts(v96 + 208, 1, 1);
                    LODWORD(v52) = *(v96 + 54);
                  }

                  v53 = v50 + v41;
                  v54 = *(v96 + 26) + 24 * v52;
                  *v54 = v45;
                  *(v54 + 4) = v97;
                  *(v54 + 8) = v48;
                  v37 = v95;
                  *(v54 + 12) = v95;
                  *(v54 + 14) = v49;
                  *(v54 + 16) = v53;
                  *(v54 + 20) = v51;
                  v55 = *(v96 + 54) + 1;
                  *(v96 + 54) = v55;
                  if (!v40)
                  {
                    v56 = v91;
                    if (v92 == 2 * *(v96 + 4))
                    {
                      v56 = v55;
                    }

                    v91 = v56;
                    ++v92;
                  }

                  v7 = v93;
                  v33 = v94;
                }

                ++v40;
                v43 += 24;
              }

              while (v33 != v40);
            }
          }

          v34 = v89 + 2;
          v9 = v85;
          LODWORD(v12) = v87;
          LODWORD(v10) = v88;
        }

        while ((v37 & 0x80000000) == 0);
        v8 = *(this + 50);
      }
    }

    while (v9 < v8);
    a3 = *v90;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v112 = a3 + v7;
  if (*(this + 356) == 1)
  {
    MiniFst::updateFrame(this + 240, v90, v7, a2);
  }

  v110 = 0u;
  v111 = 0u;
  SnapTime::recordTime(&v110, 1, 0, 0, 0);
  v110 = vsubq_s64(v110, v113);
  v111 = vsubq_s64(v111, v114);
  v63 = *(this + 13);
  v64 = vaddq_s64(v63[1], v111);
  *v63 = vaddq_s64(*v63, v110);
  v63[1] = v64;
  v108 = 0u;
  v109 = 0u;
  SnapTime::recordTime(&v108, 1, 0, 0, 0);
  if (v92 > 2 * *(this + 4))
  {
    FstSearchLateLatticeHashBackoff::applyCutoffOnEmitting(this, v91, &v112);
  }

  v106 = 0u;
  v107 = 0u;
  SnapTime::recordTime(&v106, 1, 0, 0, 0);
  v65 = vsubq_s64(v106, v108);
  v66 = *(this + 13);
  v67 = v66[3];
  v68 = vaddq_s64(v66[2], v65);
  v106 = v65;
  v107 = vsubq_s64(v107, v109);
  v69 = vaddq_s64(v67, v107);
  v66[2] = v68;
  v66[3] = v69;
  v104 = 0u;
  v105 = 0u;
  SnapTime::recordTime(&v104, 1, 0, 0, 0);
  FstSearchLatticeBackoff::makeViterbiDecisionOnEmitting(this);
  v70 = *(this + 6);
  if (v70)
  {
    v71 = *(this + 50);
    if (v70 < v71)
    {
      mrec_nth_element<FstSearchLateLatticeHashBackoffcmpTok>(*(this + 24), v70, v71);
    }
  }

  v102 = 0u;
  v103 = 0u;
  SnapTime::recordTime(&v102, 1, 0, 0, 0);
  v72 = vsubq_s64(v102, v104);
  v73 = *(this + 13);
  v74 = v73[5];
  v75 = vaddq_s64(v73[4], v72);
  v102 = v72;
  v103 = vsubq_s64(v103, v105);
  v76 = vaddq_s64(v74, v103);
  v73[4] = v75;
  v73[5] = v76;
  v100 = 0u;
  v101 = 0u;
  SnapTime::recordTime(&v100, 1, 0, 0, 0);
  *(this + 54) = 0;
  v77 = *(this + 50);
  *(this + 38) = v77;
  if (a4)
  {
    *(a4 + 2) += v77;
    if (*(a4 + 2) > v77)
    {
      LODWORD(v77) = *(a4 + 2);
    }

    *(a4 + 2) = v77;
  }

  if (*(this + 356) == 1)
  {
    FstSearchLattice::seedFromMiniFst(this, v115);
  }

  if (a5)
  {
    FstSearchLatticeBackoff::propagateNulls(this, v112, a2, a4);
  }

  *(this + 56) = a2;
  v98 = 0u;
  v99 = 0u;
  SnapTime::recordTime(&v98, 1, 0, 0, 0);
  v78 = *(this + 13);
  result = vaddq_s64(v78[6], vsubq_s64(v98, v100));
  v80 = vaddq_s64(v78[7], vsubq_s64(v99, v101));
  v78[6] = result;
  v78[7] = v80;
  return result;
}

uint64_t FstSearchLattice::seedFromMiniFst(uint64_t this, int *a2)
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

void sub_2626524F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLattice::collectTraces(FstSearchLattice *this)
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

int64x2_t FstSearchLattice::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLattice::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchLattice::collectTraces(this);
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

_DWORD *FstSearchLattice::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[50] = 0;
  return this;
}

double FstSearchLattice::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLattice::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLattice::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchLattice::endTopRecPassSyncRecog(FstSearchLattice *this)
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

void FstSearchLattice::printSize(FstSearchLattice *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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

BOOL FstSearchLattice::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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

uint64_t FstSearchLattice::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
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
              FstSearchLattice::createLatticeLink(a1, v11, v15, 0xFFFFFFFF, v18, *(v27 + 4 * (v12 - *(v29 + v11))), a2, v10, a5);
            }

            v19 = v26[0] + 16 * v11;
            if (*(v19 + 8))
            {
              v20 = 0;
              do
              {
                v21 = *(*v19 + 4 * v20);
                FstSearchLattice::createLatticeLink(a1, v11, v15, v21, v18, *(v27 + 4 * (v12 - *(v29 + v21))), a2, v10, a5);
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

void sub_262653500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void FstSearchLattice::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
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

void sub_262653738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLattice::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 356) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 240);
  }

  return this;
}

uint64_t FstSearchLattice::endTopRecSyncRecog(FstSearchLattice *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLattice::getBestExitScore(FstSearchLattice *this)
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

uint64_t FstSearchLattice::getBestScoreMaybeUpdateFstNode(FstSearchLattice *this, Node *a2)
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

_DWORD *FstSearchLattice::seedTheory(FstSearchLattice *this, int a2, int a3, int a4, SearchStats *a5)
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

uint64_t *FstSearchLattice::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
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

double FstSearchLattice::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
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

uint64_t FstSearchLattice::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
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
  BestTrace = FstSearchLatticeBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLatticeBackoff::getHistory(a1, BestTrace, a3, a4);
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
  return (*(a1[22] + 16 * *(v18 + 8)) + *(a1[11] + 4 * *(v18 + 4)));
}

void FstSearchLeafDurationBackoff::FstSearchLeafDurationBackoff(FstSearchLeafDurationBackoff *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_2875245E0;
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

uint64_t FstSearchLeafDurationBackoff::maybeInitDurModel(FstSearchLeafDurationBackoff *this, const PicMgr *a2, int a3)
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

int64x2_t FstSearchLeafDurationBackoff::advanceDeltas(FstSearchLeafDurationBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v7 = a2;
  v126[0] = a2;
  v124 = 0u;
  v125 = 0u;
  SnapTime::recordTime(&v124, 1, 0, 0, 0);
  v87 = (this + 304);
  *(this + 76) = a3;
  v99 = *(this + 2);
  v9 = *(this + 68);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v97 = *(this + 53);
    v83 = *(this + 208);
    do
    {
      v13 = *(this + 33);
      v14 = *(this + 5);
      v15 = 36 * v10 + 32;
      while (1)
      {
        v16 = *(v13 + v15 - 28);
        if (*(v14 + 160) != v16)
        {
          break;
        }

        ++v10;
        v15 += 36;
        if (v10 >= v9)
        {
          goto LABEL_73;
        }
      }

      v85 = v7;
      v98 = *(v13 + v15 - 28);
      v84 = a4;
      if (*(v14 + 140) > v16)
      {
        if (*(this + 19) + *(this + 76) >= 5000)
        {
          v17 = 5000;
        }

        else
        {
          v17 = *(this + 19) + *(this + 76);
        }

        ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v13 + v15 - 20), *(v13 + v15 - 32), v17);
        v19 = (*(this + 33) + v15);
        v20 = *(v19 - 10);
        v21 = *(v19 - 1);
        v22 = v83;
        v23 = v21 - v83;
        if (v21 >= 1)
        {
          v22 = v83 - v21;
        }

        v24 = v22 & (v23 >> 31);
        v25 = v24 + *v19;
        if (*(v19 - 10))
        {
          v26 = v24;
        }

        else
        {
          v25 = *v19;
          v23 = *(v19 - 1);
          v26 = 0;
        }

        v27 = v26 + ScoreAllowBackoff_updateNodeInSequence;
        if (v26 + ScoreAllowBackoff_updateNodeInSequence - v99 <= *v87)
        {
          v104 = v23;
          v106 = v25;
          v95 = v12;
          v28 = *(v19 - 7);
          v102 = *(v19 - 9);
          v29 = *(v19 - 3);
          v100 = *(v19 - 4);
          v30 = *(v19 - 4);
          v93 = *(v19 - 3);
          if (*v87 > v27)
          {
            *v87 = v27;
          }

          v31 = *(this + 56);
          v108 = v31;
          if (v30)
          {
            v32 = *(this + 27);
            v33 = v30;
            v31 = *(this + 56);
            do
            {
              v34 = *(v32 + 2 * v29);
              if (v31 == *(this + 57))
              {
                DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                v31 = *(this + 56);
                v32 = *(this + 27);
              }

              *(v32 + 2 * v31++) = v34;
              *(this + 56) = v31;
              ++v29;
              --v33;
            }

            while (v33);
          }

          if (v31 == *(this + 57))
          {
            DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
            v31 = *(this + 56);
          }

          *(*(this + 27) + 2 * v31) = v20;
          *(this + 56) = v31 + 1;
          v35 = *(this + 72);
          v16 = v98;
          if (v35 == *(this + 73))
          {
            DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 280, 1, 1);
            LODWORD(v35) = *(this + 72);
          }

          v36 = *(this + 35) + 36 * v35;
          *v36 = v27;
          *(v36 + 4) = v28;
          *(v36 + 12) = v20;
          *(v36 + 14) = v102;
          *(v36 + 16) = v100;
          *(v36 + 20) = v108;
          *(v36 + 24) = v30 + 1;
          *(v36 + 26) = v93;
          *(v36 + 28) = v104;
          *(v36 + 32) = v106;
          v37 = *(this + 72);
          *(this + 72) = v37 + 1;
          if (v95 == 2 * *(this + 4))
          {
            v11 = v37 + 1;
          }

          v12 = v95 + 1;
        }
      }

      v38 = v16;
      do
      {
        v39 = *(this + 5);
        v40 = *(v39 + 152);
        v41 = *(v40 + 4 * v38);
        v42 = *(v40 + 4 * (v38 + 1));
        v43 = *(v39 + 140);
        if (v43 <= v42)
        {
          if (v43 <= v16 && (*(this + 428) & 1) != 0)
          {
            if ((v41 & 0xFFFFF) <= 0xFFFF3)
            {
              v62 = v41 & 0xFFFFF;
            }

            else
            {
              v62 = v41 & 0xFFFFF | 0xF00000;
            }

            if (v62 == 16777210)
            {
              v16 = v98;
            }

            else
            {
              DgnString::DgnString(&v121);
              ArcGraph::getNameAndHumanReadablePron(*(this + 5), v62, &v121);
              v16 = v98;
              v64 = &unk_26287F8B0;
              if (v121.i32[2])
              {
                v64 = v121.i64[0];
              }

              xprintf("Seed from state %d score %d trace %d, %s\n", v63, v98, *(*(this + 33) + v15 - 32), *(*(this + 33) + v15 - 24), v64);
              MiniFst::seed(this + 312, *(*(this + 33) + v15 - 32), 0, *(*(this + 33) + v15 - 24), v42);
              DgnString::~DgnString(&v121);
            }
          }
        }

        else
        {
          if (*(this + 19) + *(this + 76) >= 5000)
          {
            v44 = 5000;
          }

          else
          {
            v44 = *(this + 19) + *(this + 76);
          }

          v45 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v40 + 4 * v38), *(*(this + 33) + v15 - 32) + ((*(v40 + 4 * v38) >> 20) & 0x3FFu), v44);
          v46 = (*(this + 33) + v15);
          if (v41)
          {
            v48 = *(*(this + 24) + 2 * v41);
          }

          else
          {
            v48 = 0;
          }

          v107 = v48;
          if (v41)
          {
            v47 = *(*(this + 24) + 2 * v41);
            v49 = v47 & (v47 >> 31);
          }

          else
          {
            v49 = 0;
          }

          v50 = v97;
          if (!v41)
          {
            v50 = 0;
          }

          v105 = (*(v46 - 1) & ~(*(v46 - 1) >> 31)) - v49 + v50;
          v51 = v105 + v45;
          v52 = *(this + 76);
          if (v105 + v45 - v99 <= v52)
          {
            v94 = v11;
            v96 = v12;
            v92 = *(v46 - 9);
            v53 = *(v46 - 3);
            v89 = *(v46 - 4);
            v90 = *(v46 - 6);
            v54 = *(v46 - 4);
            v91 = *(v46 - 3);
            v88 = *v46;
            if (v52 > v51)
            {
              *v87 = v51;
            }

            v55 = *(this + 56);
            v103 = v55;
            v101 = v54;
            if (v54)
            {
              v56 = *(this + 27);
              v57 = v54;
              v55 = *(this + 56);
              do
              {
                v58 = *(v56 + 2 * v53);
                if (v55 == *(this + 57))
                {
                  DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                  v55 = *(this + 56);
                  v56 = *(this + 27);
                }

                *(v56 + 2 * v55++) = v58;
                *(this + 56) = v55;
                ++v53;
                --v57;
              }

              while (v57);
            }

            if (v55 == *(this + 57))
            {
              DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
              v55 = *(this + 56);
            }

            *(*(this + 27) + 2 * v55) = v41;
            *(this + 56) = v55 + 1;
            v59 = *(this + 72);
            v11 = v94;
            v16 = v98;
            if (v59 == *(this + 73))
            {
              DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 280, 1, 1);
              LODWORD(v59) = *(this + 72);
            }

            v60 = *(this + 35) + 36 * v59;
            *v60 = v51;
            *(v60 + 4) = v42;
            *(v60 + 8) = v90;
            *(v60 + 12) = v41;
            *(v60 + 14) = v92;
            *(v60 + 16) = v89 + ((v41 >> 20) & 0x3FF);
            *(v60 + 20) = v103;
            *(v60 + 24) = v101 + 1;
            *(v60 + 26) = v91;
            *(v60 + 28) = v107;
            *(v60 + 32) = v105 + v88;
            v61 = *(this + 72);
            *(this + 72) = v61 + 1;
            if (v96 == 2 * *(this + 4))
            {
              v11 = v61 + 1;
            }

            v12 = v96 + 1;
          }
        }

        v38 += 2;
      }

      while ((v41 & 0x80000000) == 0);
      v10 = (v10 + 1);
      v9 = *(this + 68);
      v7 = v85;
      a4 = v84;
    }

    while (v10 < v9);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

LABEL_73:
  v123 = *(this + 76) + v99;
  if (*(this + 428) == 1)
  {
    MiniFst::updateFrame(this + 312, v87, v99, v7);
  }

  v121 = 0u;
  v122 = 0u;
  SnapTime::recordTime(&v121, 1, 0, 0, 0);
  v121 = vsubq_s64(v121, v124);
  v122 = vsubq_s64(v122, v125);
  v65 = *(this + 13);
  v66 = vaddq_s64(v65[1], v122);
  *v65 = vaddq_s64(*v65, v121);
  v65[1] = v66;
  v119 = 0u;
  v120 = 0u;
  SnapTime::recordTime(&v119, 1, 0, 0, 0);
  if (v12 > 2 * *(this + 4))
  {
    FstSearchLeafDurationBackoff::applyCutoffOnEmitting(this, v11, &v123);
  }

  v117 = 0u;
  v118 = 0u;
  SnapTime::recordTime(&v117, 1, 0, 0, 0);
  v67 = vsubq_s64(v117, v119);
  v68 = *(this + 13);
  v69 = v68[3];
  v70 = vaddq_s64(v68[2], v67);
  v117 = v67;
  v118 = vsubq_s64(v118, v120);
  v71 = vaddq_s64(v69, v118);
  v68[2] = v70;
  v68[3] = v71;
  v115 = 0u;
  v116 = 0u;
  SnapTime::recordTime(&v115, 1, 0, 0, 0);
  FstSearchLeafDurationBackoff::makeViterbiDecisionOnEmitting(this);
  v72 = *(this + 6);
  if (v72)
  {
    v73 = *(this + 68);
    if (v72 < v73)
    {
      mrec_nth_element<FstSearchLeafDurationBackoffcmpTok>(*(this + 33), v72, v73);
    }
  }

  v113 = 0u;
  v114 = 0u;
  SnapTime::recordTime(&v113, 1, 0, 0, 0);
  v74 = vsubq_s64(v113, v115);
  v75 = *(this + 13);
  v76 = v75[5];
  v77 = vaddq_s64(v75[4], v74);
  v113 = v74;
  v114 = vsubq_s64(v114, v116);
  v78 = vaddq_s64(v76, v114);
  v75[4] = v77;
  v75[5] = v78;
  v111 = 0u;
  v112 = 0u;
  SnapTime::recordTime(&v111, 1, 0, 0, 0);
  *(this + 72) = 0;
  v79 = *(this + 68);
  *(this + 38) = v79;
  if (a4)
  {
    *(a4 + 2) += v79;
    if (*(a4 + 2) > v79)
    {
      LODWORD(v79) = *(a4 + 2);
    }

    *(a4 + 2) = v79;
  }

  if (*(this + 428) == 1)
  {
    FstSearchLeafDurationBackoff::seedFromMiniFst(this, v126);
  }

  if (a5)
  {
    FstSearchLeafDurationBackoff::propagateNulls(this, v123, v7, a4);
  }

  *(this + 74) = v7;
  v109 = 0u;
  v110 = 0u;
  SnapTime::recordTime(&v109, 1, 0, 0, 0);
  v80 = *(this + 13);
  result = vaddq_s64(v80[6], vsubq_s64(v109, v111));
  v82 = vaddq_s64(v80[7], vsubq_s64(v110, v112));
  v80[6] = result;
  v80[7] = v82;
  return result;
}

uint64_t FstSearchLeafDurationBackoff::applyCutoffOnEmitting(uint64_t this, unsigned int a2, int *a3)
{
  v4 = *(this + 288);
  if (v4 > a2)
  {
    v6 = this;
    v7 = a2;
    this = mrec_nth_element<FstSearchLeafDurationBackoffcmpTok>(*(this + 280), a2, v4);
    v8 = *(*(v6 + 280) + 36 * a2);
    if (*a3 > v8)
    {
      *a3 = v8;
    }

    v9 = *(v6 + 292);
    if (a2 > v9)
    {
      this = DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v6 + 280, a2 - v9, 0);
    }

    v10 = *(v6 + 288);
    if (v10 < a2)
    {
      v11 = v7 - v10;
      v12 = *(v6 + 280) + 36 * v10 + 16;
      do
      {
        *(v12 - 16) = 0xFFFFFFFF00000000;
        *(v12 - 8) = -1;
        *(v12 - 4) = -2;
        *v12 = 0;
        *(v12 + 8) = 0;
        *(v12 + 12) = 0;
        v12 += 36;
        --v11;
      }

      while (v11);
    }

    *(v6 + 288) = a2;
  }

  return this;
}

char **FstSearchLeafDurationBackoff::makeViterbiDecisionOnEmitting(char **this)
{
  v1 = this;
  v2 = *(this + 72);
  if (v2)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(this[35], v2, 36, 0);
    v3 = *(v1 + 72);
    *(v1 + 68) = 0;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      for (i = 0; i < v3; ++i)
      {
        v7 = v1[35];
        if (!v4 || *&v7[v4 + 4] != *&v7[v4 - 32])
        {
          if (v5 == *(v1 + 69))
          {
            this = DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts((v1 + 33), 1, 1);
            v5 = *(v1 + 68);
          }

          v8 = &v1[33][36 * v5];
          v9 = *&v7[v4];
          v10 = *&v7[v4 + 16];
          *(v8 + 32) = *&v7[v4 + 32];
          *v8 = v9;
          *(v8 + 16) = v10;
          v5 = *(v1 + 68) + 1;
          *(v1 + 68) = v5;
          v3 = *(v1 + 72);
        }

        v4 += 36;
      }
    }
  }

  else
  {
    *(this + 68) = 0;
  }

  return this;
}

uint64_t mrec_nth_element<FstSearchLeafDurationBackoffcmpTok>(uint64_t result, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v3 = 0;
    do
    {
      v4 = (result + 36 * v3);
      v5 = (result + 36 * (v3 + (a3 >> 1)));
      v6 = 36;
      v7 = v4;
      do
      {
        v8 = *v7;
        *v7++ = *v5;
        *v5++ = v8;
        --v6;
      }

      while (v6);
      v9 = (result - 36 + 36 * (v3 + a3));
      v10 = (result + 36 * v3);
      do
      {
        v11 = v10 + 36;
        while (1)
        {
          v10 = v11;
          if (v11 >= v9)
          {
            break;
          }

          v11 += 36;
          if (*v10 > *v4)
          {
            v12 = v10;
            while (*v9 >= *v4)
            {
              v9 -= 36;
              if (v10 >= v9)
              {
                goto LABEL_16;
              }
            }

            for (i = 0; i != 36; ++i)
            {
              v14 = *v12;
              *v12++ = v9[i];
              v9[i] = v14;
            }

            v9 -= 36;
            break;
          }
        }

LABEL_16:
        ;
      }

      while (v10 < v9);
      if (*v10 > *v4)
      {
        v10 -= 36;
      }

      if (v10 > v4)
      {
        for (j = 0; j != 36; ++j)
        {
          v16 = v10[j];
          v10[j] = v4[j];
          v4[j] = v16;
        }
      }

      v17 = (v10 - v4) / 0x24uLL;
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

uint64_t FstSearchLeafDurationBackoff::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 328) + v5);
        v8 = *v7;
        v9 = v7[6];
        v10 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = -2 - v7;
        if (v10 == 16777213)
        {
          v12 = (*(v2 + 160) + 36 * v11);
          v10 = 16777209;
          if (*v12 == 16777209)
          {
            v11 = *(*(v2 + 176) + 24 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v14) = *(v2 + 168);
        }

        v15 = *(v2 + 160) + 36 * v14;
        *v15 = v10;
        *(v15 + 4) = v13;
        *(v15 + 8) = -1;
        *(v15 + 12) = v8;
        *(v15 + 20) = 0;
        *(v15 + 24) = 0;
        *(v15 + 16) = v11;
        *(v15 + 28) = 0;
        *(v15 + 32) = 0;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 272);
        if (v17 == *(v2 + 276))
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v2 + 264, 1, 1);
          LODWORD(v17) = *(v2 + 272);
        }

        v18 = *(v2 + 264) + 36 * v17;
        *v18 = v8;
        *(v18 + 4) = v9;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        *(v18 + 28) = 0;
        ++*(v2 + 272);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 336);
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

unsigned int *FstSearchLeafDurationBackoff::propagateNulls(unsigned int *this, int a2, int a3, SearchStats *a4)
{
  v4 = this;
  v5 = this[42];
  v6 = this[68];
  if (!v6)
  {
    v43 = this[38];
    if (a4)
    {
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  v55 = this[42];
  v56 = a4;
  v7 = 0;
  v63 = a2;
  do
  {
    v8 = *(*(v4 + 264) + 36 * v7 + 4);
    v9 = *(v4 + 40);
    if (*(v9 + 160) != v8 && (*(v9 + 140) <= v8 || (*(*(v9 + 152) + 4 * v8) & 0x40000000) != 0))
    {
      v10 = *(*(v4 + 264) + 36 * v7 + 4);
      v62 = v7;
      do
      {
        v11 = *(v4 + 40);
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
        v19 = *(v4 + 264);
        v20 = (v19 + 36 * v7);
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
        v27 = v20[5];
        v28 = *(v20 + 12);
        v29 = *(v20 + 13);
        v30 = v20[8];
        v31 = v26 + v18;
        if (v16 == 16777210)
        {
          if (v6 != *(v4 + 276))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v16 == 16777214)
          {
            v22 = v21 - v26;
            v32 = 0;
          }

          else
          {
            v32 = v31;
          }

          if (v16 == 16777214)
          {
            v33 = v31;
          }

          else
          {
            v33 = 0;
          }

          v34 = *(v4 + 168);
          if (v34 == *(v4 + 172))
          {
            v64 = v25;
            v66 = v24;
            v59 = v23;
            v60 = v31;
            v68 = v30;
            v70 = v28;
            v57 = v32;
            v58 = v33;
            DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v4 + 160, 1, 1);
            v32 = v57;
            v33 = v58;
            v30 = v68;
            LOWORD(v28) = v70;
            v23 = v59;
            v31 = v60;
            v25 = v64;
            v24 = v66;
            a2 = v63;
            LODWORD(v34) = *(v4 + 168);
          }

          this = 0;
          v35 = 0;
          v36 = *(v4 + 160) + 36 * v34;
          *v36 = v16;
          *(v36 + 4) = a3;
          *(v36 + 8) = -1;
          *(v36 + 12) = v22;
          *(v36 + 16) = v23;
          *(v36 + 20) = v32;
          *(v36 + 24) = v27;
          *(v36 + 28) = v28;
          *(v36 + 32) = v30;
          v23 = *(v4 + 168);
          *(v4 + 168) = v23 + 1;
          v22 += v33;
          v6 = *(v4 + 272);
          v28 = 0;
          v30 = 0;
          if (v6 != *(v4 + 276))
          {
            goto LABEL_30;
          }
        }

        v69 = v30;
        v71 = v28;
        v37 = v24;
        v65 = v27;
        v67 = v29;
        v38 = v8;
        v39 = v25;
        v40 = v31;
        v41 = v23;
        DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v4 + 264, 1, 1);
        v23 = v41;
        v31 = v40;
        v25 = v39;
        v8 = v38;
        v7 = v62;
        v27 = v65;
        v29 = v67;
        v24 = v37;
        a2 = v63;
        v6 = *(v4 + 272);
        v35 = v69;
        this = v71;
LABEL_30:
        v19 = *(v4 + 264);
        LOWORD(v28) = this;
        v30 = v35;
LABEL_31:
        v42 = v19 + 36 * v6;
        *v42 = v22;
        *(v42 + 4) = v14;
        *(v42 + 8) = v23;
        *(v42 + 12) = v24;
        *(v42 + 14) = v25;
        *(v42 + 16) = v31;
        *(v42 + 20) = v27;
        *(v42 + 24) = v28;
        *(v42 + 26) = v29;
        *(v42 + 28) = 0;
        *(v42 + 32) = v30;
        v6 = *(v4 + 272) + 1;
        *(v4 + 272) = v6;
LABEL_32:
        v10 += 2;
      }

      while ((v13 & 0x80000000) == 0);
    }

    ++v7;
  }

  while (v7 < v6);
  v43 = *(v4 + 152);
  if (v6 > v43)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>((*(v4 + 264) + 36 * v43), v6 - v43, 36, 0);
    v43 = *(v4 + 152);
    v6 = *(v4 + 272);
  }

  a4 = v56;
  v5 = v55;
  if (v43 < v6)
  {
    v44 = v43;
    v45 = v43 - 1;
    v46 = 36 * v43;
    do
    {
      v47 = *(v4 + 264);
      v48 = (v47 + v46);
      if (*(v47 + v46 + 4) != *(v47 + 36 * v45 + 4))
      {
        v49 = v47 + 36 * v43;
        v50 = *v48;
        v51 = v48[1];
        *(v49 + 32) = *(v48 + 8);
        *v49 = v50;
        *(v49 + 16) = v51;
        ++v43;
        v6 = *(v4 + 272);
      }

      ++v44;
      ++v45;
      v46 += 36;
    }

    while (v44 < v6);
  }

  if (v56)
  {
LABEL_42:
    *(a4 + 1) += *(v4 + 168) - v5;
  }

LABEL_43:
  v52 = *(v4 + 276);
  if (v43 > v52)
  {
    this = DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v4 + 264, v43 - v52, 0);
    v6 = *(v4 + 272);
  }

  if (v6 < v43)
  {
    v53 = v43 - v6;
    v54 = *(v4 + 264) + 36 * v6 + 16;
    do
    {
      *(v54 - 16) = 0xFFFFFFFF00000000;
      *(v54 - 8) = -1;
      *(v54 - 4) = -2;
      *v54 = 0;
      *(v54 + 8) = 0;
      *(v54 + 12) = 0;
      v54 += 36;
      --v53;
    }

    while (v53);
  }

  *(v4 + 272) = v43;
  return this;
}

uint64_t FstSearchLeafDurationBackoff::collectTraces(FstSearchLeafDurationBackoff *this)
{
  v2 = *(this + 42);
  v53 = 0;
  v52 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v52 = v3;
    v53 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v53);
  }

  v5 = *(this + 68);
  if (v5)
  {
    v6 = 0;
    v7 = v52;
    v8 = (*(this + 33) + 8);
    do
    {
      v10 = *v8;
      v8 += 9;
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
  if (v11)
  {
    v12 = v52;
    v13 = 36 * v11 - 20;
    v14 = v52 + v11 - 1;
    do
    {
      if (*v14--)
      {
        v16 = *(*(this + 20) + v13);
        if (v16 != -1)
        {
          *(v12 + v16) = 1;
        }
      }

      v13 -= 36;
    }

    while (v13 != -20);
    v17 = *(this + 42);
    v50 = 0;
    v51 = 0;
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v52;
        if (*(v52 + v19))
        {
          v22 = *(this + 20);
          if (v19 != v20)
          {
            v23 = (v22 + 36 * v19);
            v24 = v22 + 36 * v20;
            v25 = *v23;
            v26 = v23[1];
            *(v24 + 32) = *(v23 + 8);
            *v24 = v25;
            *(v24 + 16) = v26;
            v22 = *(this + 20);
          }

          v27 = v22 + 36 * v20;
          v30 = *(v27 + 16);
          v28 = (v27 + 16);
          v29 = v30;
          if (v30 != -1)
          {
            *v28 = *(v21 + v29);
          }

          v31 = v51;
          if (*(v22 + 36 * v20 + 28))
          {
            v32 = 0;
            v33 = v51;
            do
            {
              v34 = *(*(this + 27) + 2 * (v32 + *(v22 + 36 * v20 + 24)));
              if (v33 == HIDWORD(v51))
              {
                DgnPrimArray<short>::reallocElts(&v50, 1, 1);
                v33 = v51;
                v18 = v50;
                v22 = *(this + 20);
              }

              *(v18 + 2 * v33++) = v34;
              LODWORD(v51) = v33;
              ++v32;
            }

            while (v32 < *(v22 + 36 * v20 + 28));
          }

          *(v22 + 36 * v20 + 24) = v31;
          *(v52 + v19) = v20++;
          v17 = *(this + 42);
        }

        ++v19;
      }

      while (v19 < v17);
      v35 = *(this + 43);
      if (v20 > v35)
      {
        DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 160, v20 - v35, 0);
        v17 = *(this + 42);
      }

      if (v17 < v20)
      {
        v36 = v20 - v17;
        v37 = (*(this + 20) + 36 * v17 + 32);
        do
        {
          *(v37 - 2) = xmmword_26287F860;
          *(v37 - 2) = 0xFFFFFFFFLL;
          *(v37 - 2) = 0;
          *(v37 - 2) = 0;
          *v37 = 0;
          v37 += 9;
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v50 = 0;
    v51 = 0;
  }

  *(this + 42) = v20;
  v38 = *(this + 68);
  if (v38)
  {
    v39 = 0;
    v40 = v51;
    v41 = *(this + 33);
    do
    {
      if (*(v41 + 36 * v39 + 24))
      {
        v42 = 0;
        LODWORD(v43) = v40;
        do
        {
          v44 = *(*(this + 27) + 2 * (v42 + *(v41 + 36 * v39 + 20)));
          if (v43 == HIDWORD(v51))
          {
            DgnPrimArray<short>::reallocElts(&v50, 1, 1);
            LODWORD(v43) = v51;
            v41 = *(this + 33);
          }

          *(v50 + 2 * v43) = v44;
          v43 = (v43 + 1);
          LODWORD(v51) = v43;
          ++v42;
        }

        while (v42 < *(v41 + 36 * v39 + 24));
        v38 = *(this + 68);
      }

      else
      {
        v43 = v40;
      }

      *(v41 + 36 * v39++ + 20) = v40;
      v40 = v43;
    }

    while (v39 < v38);
  }

  else
  {
    LODWORD(v43) = v51;
  }

  DgnPrimArray<unsigned short>::copyArraySlice(this + 27, &v50, 0, v43);
  v45 = *(this + 68);
  if (v45)
  {
    v46 = v52;
    v47 = (*(this + 33) + 8);
    do
    {
      v48 = *v47;
      if (v48 != -1)
      {
        *v47 = *(v46 + v48);
      }

      v47 += 9;
      --v45;
    }

    while (v45);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v50);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v52);
}

void sub_2626556BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLeafDurationBackoff::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLeafDurationBackoff::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchLeafDurationBackoff::collectTraces(this);
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

_DWORD *FstSearchLeafDurationBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[56] = 0;
  this[68] = 0;
  return this;
}

double FstSearchLeafDurationBackoff::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLeafDurationBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLeafDurationBackoff::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchLeafDurationBackoff::endTopRecPassSyncRecog(int64x2_t **this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLeafDurationBackoff::generateTraceTokensFromTraces(this);
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
  *(this + 76) = 1879048192;
  return SearchItf::endTopRecPassSyncRecogBase(this);
}

uint64_t *FstSearchLeafDurationBackoff::generateTraceTokensFromTraces(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 42);
  v3 = *(this + 47);
  if (v2 > v3)
  {
    this = DgnArray<CWIDAC>::reallocElts((this + 22), v2 - v3, 0);
  }

  v4 = *(v1 + 184);
  if (v4 < v2)
  {
    v5 = v2 - v4;
    v6 = (*(v1 + 176) + 24 * v4 + 20);
    do
    {
      *(v6 - 5) = xmmword_26287F890;
      *(v6 - 2) = 0;
      *v6 = 0;
      v6 += 6;
      --v5;
    }

    while (v5);
  }

  *(v1 + 184) = v2;
  v7 = *(v1 + 168);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(v1 + 160);
    v11 = 36 * v7;
    v12 = (*(v1 + 176) + 20);
    do
    {
      *(v10 + v8 + 8) = v9;
      v13 = (v12 - 5);
      v14 = *(v10 + v8 + 12);
      v15 = vextq_s8(v14, v14, 8uLL).u64[0];
      vst2_f32(v13, v14);
      *(v12 - 2) = *(v10 + v8 + 28);
      *v12 = *(v10 + v8 + 32);
      v12 += 6;
      ++v9;
      v8 += 36;
    }

    while (v11 != v8);
  }

  return this;
}

void FstSearchLeafDurationBackoff::printSize(FstSearchLeafDurationBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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
  v26 = 34 * v25;
  if (v25 <= 0)
  {
    v26 = 0;
  }

  v27 = v26 + v24;
  v28 = v26 + v24 + 34 * (*(this + 43) - v25);
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
  v33 = 22 * v32;
  if (v32 <= 0)
  {
    v33 = 0;
  }

  v34 = v33 + v31;
  v35 = v33 + v31 + 22 * (*(this + 47) - v32);
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
  v47 = 32 * v46;
  if (v46 <= 0)
  {
    v47 = 0;
  }

  v48 = v47 | v45;
  v49 = (v47 | v45) + 32 * (*(this + 69) - v46);
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
  v54 = 32 * v53;
  if (v53 <= 0)
  {
    v54 = 0;
  }

  v55 = v54 | v52;
  v56 = (v54 | v52) + 32 * (*(this + 73) - v53);
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

uint64_t FstSearchLeafDurationBackoff::getBestTrace(uint64_t a1, void *a2, void *a3, int a4)
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

  v6 = 36 * v4;
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

    v11 = *(a1 + 160) + 36 * v10;
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

    v5 = *(a1 + 272);
LABEL_19:
    ++v4;
    v6 += 36;
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
      if ((a4 & 1) != 0 || *(*(a1 + 160) + 36 * v14) == 16777213)
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

BOOL FstSearchLeafDurationBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchLeafDurationBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 36 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

unint64_t FstSearchLeafDurationBackoff::createLatticeNodes(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
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
    v19 = 36 * v18;
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
        v31 = (v30 + 24 * *(v23 + v19 + 8));
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

          v39 = v23 + 36 * v32;
          v40 = *(*(a1 + 88) + 4 * *(v39 + 4));
          v41 = (v30 + 24 * *(v39 + 8));
          v42 = v24 + *v31 - v40 - *v41;
          LODWORD(v41) = v31[1] - v41[1];
          *v31 = v42;
          v31[1] = v41;
          *(v22 + v32) = 2;
        }
      }

      --v18;
      v19 -= 36;
      --v16;
    }

    while (v16);
  }

  return result;
}

uint64_t FstSearchLeafDurationBackoff::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v23, *(a1 + 168));
  v8 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v8, 0, 128);
  v8[4] = a2;
  FstSearchLeafDurationBackoff::createLatticeNodes(a1, &v26, &v24, a2, v23, a3, a4);
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = 0;
    v11 = v25;
    do
    {
      if (*(*a3 + v10))
      {
        v12 = (*(a1 + 160) + 36 * v10);
        if (*v12 != 16777209)
        {
          v13 = *(a1 + 176) + 24 * v12[2];
          v14 = *(v13 + 8);
          if (v14 == -1)
          {
            v15 = 0;
          }

          else
          {
            v15 = (v11 - *(v26 + v14));
          }

          v16 = *(v24 + 4 * v15);
          if (*(*a4 + v10) == 1)
          {
            FstSearchLeafDurationBackoff::createLatticeLink(a1, v10, v13, 0xFFFFFFFF, v16, *(v24 + 4 * (v11 - *(v26 + v10))), a2, v8, a5);
          }

          v17 = v23[0] + 16 * v10;
          if (*(v17 + 8))
          {
            v18 = 0;
            do
            {
              v19 = *(*v17 + 4 * v18);
              FstSearchLeafDurationBackoff::createLatticeLink(a1, v10, v13, v19, v16, *(v24 + 4 * (v11 - *(v26 + v19))), a2, v8, a5);
              ++v18;
              v17 = v23[0] + 16 * v10;
            }

            while (v18 < *(v17 + 8));
          }
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v8);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v24);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v26);
}

void sub_2626568DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void FstSearchLeafDurationBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, unsigned int a6, uint64_t *a7, uint64_t a8, unsigned __int8 a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 24 * *(v16 + 36 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 24 * *(v16 + 36 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(v43, *(a1 + 40), *(v16 + 36 * a2));
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

  if (LODWORD(v43[0]) >> 25 == 126)
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
  v23 = a3[5];
  if (v17)
  {
    v23 += v17[5];
  }

  v37 = v21;
  v38 = 0;
  v39 = v20;
  v40 = v19 - (v18 + v23);
  v41 = v23;
  v42 = v22;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 == -1)
  {
    v27 = 0;
    if (a9)
    {
LABEL_20:
      v28 = (*(v25 + 36 * a2 + 4) - 1) / 2;
      v29 = v28 + 1;
      v30 = v28 + 1 - v27;
      if ((a4 & 0x80000000) == 0)
      {
        v31 = (*(v25 + 36 * a4 + 4) - 1) / 2;
LABEL_25:
        v32 = v31 - v28;
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v26 = *(v25 + 36 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_20;
    }

    v27 = v26 + 1;
  }

  v28 = *(v25 + 36 * a2 + 4);
  v29 = v28 + 1;
  v30 = v28 + 1 - v27;
  if ((a4 & 0x80000000) == 0)
  {
    v31 = *(v25 + 36 * a4 + 4);
    goto LABEL_25;
  }

LABEL_26:
  v32 = 0;
LABEL_27:
  WordLatticeLC::WordLatticeLC(v35, v43, v27, v30, v32, &v37);
  v34[0] = 0;
  v34[1] = 0;
  FstSearchLeafDurationBackoff::buildLinkSegmentation(a1, v34, a3, v27, a9);
  if (v17)
  {
    FstSearchLeafDurationBackoff::buildLinkSegmentation(a1, v34, v17, v29, a9);
  }

  v36 = WordLattice::findOrAddLinkSegSeqId(a7, v34, a8);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v35);
  DgnIArray<Utterance *>::~DgnIArray(v34);
  WordLatticeLC::~WordLatticeLC(v35);
}

void sub_262656B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  WordLatticeLC::~WordLatticeLC(va1);
  _Unwind_Resume(a1);
}

uint64_t *FstSearchLeafDurationBackoff::buildLinkSegmentation(uint64_t *result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a5)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(a3 + 16);
  if (*(a3 + 16))
  {
    v10 = result;
    v11 = 0;
    v12 = 0;
    v13 = *(result[7] + 136);
    v14 = -1;
    do
    {
      v15 = *(v10[27] + 2 * (v11 + *(a3 + 12)));
      if (v15 != v14)
      {
        if (v12)
        {
          result = FstSearchLeafLatticeDurationBackoff::addLinkSegment(v10, a2, v14, a4, v12, v13);
          a4 += v12;
          v6 = *(a3 + 16);
          v14 = v15;
          v12 = 0;
        }

        else
        {
          v14 = *(v10[27] + 2 * (v11 + *(a3 + 12)));
        }
      }

      ++v12;
      v11 += v5;
    }

    while (v11 < v6);
    if (v12)
    {

      return FstSearchLeafLatticeDurationBackoff::addLinkSegment(v10, a2, v14, a4, v12, v13);
    }
  }

  return result;
}

uint64_t FstSearchLeafDurationBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 428) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 312);
  }

  return this;
}

uint64_t FstSearchLeafDurationBackoff::endTopRecSyncRecog(FstSearchLeafDurationBackoff *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLeafDurationBackoff::getBestExitScore(FstSearchLeafDurationBackoff *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 75) = -1;
  v1 = *(this + 38);
  v2 = *(this + 68);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 36 * v1;
  do
  {
    v7 = *(this + 33) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 36 * v8 + 4) == *(this + 74))
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
        v2 = *(this + 68);
      }
    }

    ++v1;
    v6 += 36;
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
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 75) = *(v13 + 16);
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

uint64_t FstSearchLeafDurationBackoff::getBestScoreMaybeUpdateFstNode(FstSearchLeafDurationBackoff *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 68);
  if (v2)
  {
    v3 = *(this + 33);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 36;
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

unsigned int *FstSearchLeafDurationBackoff::seedTheory(FstSearchLeafDurationBackoff *this, int a2, int a3, int a4, SearchStats *a5)
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
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    *(v12 + 24) = 0;
    *(v12 + 28) = 0;
    *(v12 + 32) = 0;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 68);
  if (v14 == *(this + 69))
  {
    DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 264, 1, 1);
    v14 = *(this + 68);
  }

  v15 = *(this + 33) + 36 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 28) = 0;
  LODWORD(v15) = *(this + 68) + 1;
  *(this + 68) = v15;
  *(this + 38) = v15;

  return FstSearchLeafDurationBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLeafDurationBackoff::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 75);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 36 * v6);
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
      v21 = *(v18 + 36 * v6 + 12);
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 36 * v14);
      i = v8[4];
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchLeafDurationBackoff::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
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

void FstSearchLeafDurationBackoff::getHistory(uint64_t *result, unsigned int a2, uint64_t a3, int a4)
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
      v10 = (result[20] + 36 * v9);
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
        v17 = (v15 + 36 * v8);
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

        v8 = *(v15 + 36 * v8 + 16);
      }

      while (v8 != -1);
    }
  }
}

uint64_t FstSearchLeafDurationBackoff::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
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
  BestTrace = FstSearchLeafDurationBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLeafDurationBackoff::getHistory(a1, BestTrace, a3, a4);
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
  return (*(v18 + 12) + *(a1[11] + 4 * *(v18 + 4)));
}

void FstSearchLeafDuration::FstSearchLeafDuration(FstSearchLeafDuration *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287525798;
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

uint64_t FstSearchLeafDuration::maybeInitDurModel(FstSearchLeafDuration *this, const PicMgr *a2, int a3)
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

int64x2_t FstSearchLeafDuration::advanceDeltas(FstSearchLeafDuration *this, int a2, int a3, SearchStats *a4, int a5)
{
  v6 = a2;
  v127[0] = a2;
  v125 = 0u;
  v126 = 0u;
  SnapTime::recordTime(&v125, 1, 0, 0, 0);
  v88 = (this + 304);
  *(this + 76) = a3;
  v8 = *(this + 2);
  v9 = *(this + 68);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v98 = *(this + 53);
    v84 = *(this + 208);
    do
    {
      v13 = *(this + 33);
      v14 = *(this + 5);
      v15 = 36 * v10 + 32;
      while (1)
      {
        v16 = *(v13 + v15 - 28);
        if (*(v14 + 160) != v16)
        {
          break;
        }

        ++v10;
        v15 += 36;
        if (v10 >= v9)
        {
          goto LABEL_70;
        }
      }

      v85 = v6;
      v99 = *(v13 + v15 - 28);
      v100 = v8;
      if (*(v14 + 140) > v16)
      {
        v17 = *(v13 + v15 - 32);
        v18 = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v13 + v15 - 20)) + v17;
        v19 = (*(this + 33) + v15);
        v20 = *(v19 - 10);
        v21 = *(v19 - 1);
        v22 = *v19;
        v23 = v84;
        v24 = v21 - v84;
        if (v21 >= 1)
        {
          v23 = v84 - v21;
        }

        v25 = v23 & (v24 >> 31);
        if (*(v19 - 10))
        {
          v22 += v25;
        }

        else
        {
          v24 = *(v19 - 1);
        }

        if (*(v19 - 10))
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = v18 + v26;
        if (v18 + v26 - v8 <= *v88)
        {
          v105 = v24;
          v107 = v22;
          v96 = v12;
          v28 = *(v19 - 7);
          v103 = *(v19 - 9);
          v29 = *(v19 - 3);
          v101 = *(v19 - 4);
          v30 = *(v19 - 4);
          v94 = *(v19 - 3);
          if (*v88 > v27)
          {
            *v88 = v27;
          }

          v31 = *(this + 56);
          v109 = v31;
          if (v30)
          {
            v32 = *(this + 27);
            v33 = v30;
            v31 = *(this + 56);
            do
            {
              v34 = *(v32 + 2 * v29);
              if (v31 == *(this + 57))
              {
                DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                v31 = *(this + 56);
                v32 = *(this + 27);
              }

              *(v32 + 2 * v31++) = v34;
              *(this + 56) = v31;
              ++v29;
              --v33;
            }

            while (v33);
          }

          if (v31 == *(this + 57))
          {
            DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
            v31 = *(this + 56);
          }

          *(*(this + 27) + 2 * v31) = v20;
          *(this + 56) = v31 + 1;
          v35 = *(this + 72);
          v16 = v99;
          if (v35 == *(this + 73))
          {
            DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 280, 1, 1);
            LODWORD(v35) = *(this + 72);
          }

          v36 = *(this + 35) + 36 * v35;
          *v36 = v27;
          *(v36 + 4) = v28;
          *(v36 + 12) = v20;
          *(v36 + 14) = v103;
          *(v36 + 16) = v101;
          *(v36 + 20) = v109;
          *(v36 + 24) = v30 + 1;
          *(v36 + 26) = v94;
          *(v36 + 28) = v105;
          *(v36 + 32) = v107;
          v37 = *(this + 72);
          *(this + 72) = v37 + 1;
          if (v96 == 2 * *(this + 4))
          {
            v11 = v37 + 1;
          }

          v12 = v96 + 1;
        }
      }

      v38 = v16;
      do
      {
        v39 = *(this + 5);
        v40 = *(v39 + 152);
        v41 = *(v40 + 4 * v38);
        v42 = *(v40 + 4 * (v38 + 1));
        v43 = *(v39 + 140);
        if (v43 <= v42)
        {
          if (v43 <= v16 && (*(this + 428) & 1) != 0)
          {
            if ((v41 & 0xFFFFF) <= 0xFFFF3)
            {
              v63 = v41 & 0xFFFFF;
            }

            else
            {
              v63 = v41 & 0xFFFFF | 0xF00000;
            }

            if (v63 == 16777210)
            {
              v16 = v99;
            }

            else
            {
              DgnString::DgnString(&v122);
              ArcGraph::getNameAndHumanReadablePron(*(this + 5), v63, &v122);
              v16 = v99;
              v65 = &unk_26287F8B0;
              if (v122.i32[2])
              {
                v65 = v122.i64[0];
              }

              xprintf("Seed from state %d score %d trace %d, %s\n", v64, v99, *(*(this + 33) + v15 - 32), *(*(this + 33) + v15 - 24), v65);
              MiniFst::seed(this + 312, *(*(this + 33) + v15 - 32), 0, *(*(this + 33) + v15 - 24), v42);
              DgnString::~DgnString(&v122);
            }
          }
        }

        else
        {
          ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v40 + 4 * v38));
          v45 = (*(this + 33) + v15);
          v46 = ScoreNoBackoff + ((v41 >> 20) & 0x3FF) + *(v45 - 8);
          if (v41)
          {
            v48 = *(*(this + 24) + 2 * v41);
          }

          else
          {
            v48 = 0;
          }

          v108 = v48;
          if (v41)
          {
            v47 = *(*(this + 24) + 2 * v41);
            v49 = v47 & (v47 >> 31);
          }

          else
          {
            v49 = 0;
          }

          v50 = v98;
          if (!v41)
          {
            v50 = 0;
          }

          v106 = (*(v45 - 1) & ~(*(v45 - 1) >> 31)) - v49 + v50;
          v51 = v46 + v106;
          v52 = v46 + v106 - v100;
          v53 = *(this + 76);
          if (v52 <= v53)
          {
            v95 = v11;
            v97 = v12;
            v93 = *(v45 - 9);
            v54 = *(v45 - 3);
            v90 = *(v45 - 4);
            v91 = *(v45 - 6);
            v55 = *(v45 - 4);
            v92 = *(v45 - 3);
            v89 = *v45;
            if (v53 > v51)
            {
              *v88 = v51;
            }

            v56 = *(this + 56);
            v104 = v56;
            v102 = v55;
            if (v55)
            {
              v57 = *(this + 27);
              v58 = v55;
              v56 = *(this + 56);
              do
              {
                v59 = *(v57 + 2 * v54);
                if (v56 == *(this + 57))
                {
                  DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
                  v56 = *(this + 56);
                  v57 = *(this + 27);
                }

                *(v57 + 2 * v56++) = v59;
                *(this + 56) = v56;
                ++v54;
                --v58;
              }

              while (v58);
            }

            if (v56 == *(this + 57))
            {
              DgnPrimArray<short>::reallocElts(this + 216, 1, 1);
              v56 = *(this + 56);
            }

            *(*(this + 27) + 2 * v56) = v41;
            *(this + 56) = v56 + 1;
            v60 = *(this + 72);
            v11 = v95;
            v16 = v99;
            if (v60 == *(this + 73))
            {
              DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 280, 1, 1);
              LODWORD(v60) = *(this + 72);
            }

            v61 = *(this + 35) + 36 * v60;
            *v61 = v51;
            *(v61 + 4) = v42;
            *(v61 + 8) = v91;
            *(v61 + 12) = v41;
            *(v61 + 14) = v93;
            *(v61 + 16) = v90 + ((v41 >> 20) & 0x3FF);
            *(v61 + 20) = v104;
            *(v61 + 24) = v102 + 1;
            *(v61 + 26) = v92;
            *(v61 + 28) = v108;
            *(v61 + 32) = v106 + v89;
            v62 = *(this + 72);
            *(this + 72) = v62 + 1;
            if (v97 == 2 * *(this + 4))
            {
              v11 = v62 + 1;
            }

            v12 = v97 + 1;
          }
        }

        v38 += 2;
      }

      while ((v41 & 0x80000000) == 0);
      v10 = (v10 + 1);
      v9 = *(this + 68);
      v6 = v85;
      v8 = v100;
    }

    while (v10 < v9);
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

LABEL_70:
  v124 = *(this + 76) + v8;
  if (*(this + 428) == 1)
  {
    MiniFst::updateFrame(this + 312, v88, v8, v6);
  }

  v122 = 0u;
  v123 = 0u;
  SnapTime::recordTime(&v122, 1, 0, 0, 0);
  v122 = vsubq_s64(v122, v125);
  v123 = vsubq_s64(v123, v126);
  v66 = *(this + 13);
  v67 = vaddq_s64(v66[1], v123);
  *v66 = vaddq_s64(*v66, v122);
  v66[1] = v67;
  v120 = 0u;
  v121 = 0u;
  SnapTime::recordTime(&v120, 1, 0, 0, 0);
  if (v12 > 2 * *(this + 4))
  {
    FstSearchLeafDurationBackoff::applyCutoffOnEmitting(this, v11, &v124);
  }

  v118 = 0u;
  v119 = 0u;
  SnapTime::recordTime(&v118, 1, 0, 0, 0);
  v68 = vsubq_s64(v118, v120);
  v69 = *(this + 13);
  v70 = v69[3];
  v71 = vaddq_s64(v69[2], v68);
  v118 = v68;
  v119 = vsubq_s64(v119, v121);
  v72 = vaddq_s64(v70, v119);
  v69[2] = v71;
  v69[3] = v72;
  v116 = 0u;
  v117 = 0u;
  SnapTime::recordTime(&v116, 1, 0, 0, 0);
  FstSearchLeafDurationBackoff::makeViterbiDecisionOnEmitting(this);
  v73 = *(this + 6);
  if (v73)
  {
    v74 = *(this + 68);
    if (v73 < v74)
    {
      mrec_nth_element<FstSearchLeafDurationBackoffcmpTok>(*(this + 33), v73, v74);
    }
  }

  v114 = 0u;
  v115 = 0u;
  SnapTime::recordTime(&v114, 1, 0, 0, 0);
  v75 = vsubq_s64(v114, v116);
  v76 = *(this + 13);
  v77 = v76[5];
  v78 = vaddq_s64(v76[4], v75);
  v114 = v75;
  v115 = vsubq_s64(v115, v117);
  v79 = vaddq_s64(v77, v115);
  v76[4] = v78;
  v76[5] = v79;
  v112 = 0u;
  v113 = 0u;
  SnapTime::recordTime(&v112, 1, 0, 0, 0);
  *(this + 72) = 0;
  v80 = *(this + 68);
  *(this + 38) = v80;
  if (a4)
  {
    *(a4 + 2) += v80;
    if (*(a4 + 2) > v80)
    {
      LODWORD(v80) = *(a4 + 2);
    }

    *(a4 + 2) = v80;
  }

  if (*(this + 428) == 1)
  {
    FstSearchLeafDuration::seedFromMiniFst(this, v127);
  }

  if (a5)
  {
    FstSearchLeafDurationBackoff::propagateNulls(this, v124, v6, a4);
  }

  *(this + 74) = v6;
  v110 = 0u;
  v111 = 0u;
  SnapTime::recordTime(&v110, 1, 0, 0, 0);
  v81 = *(this + 13);
  result = vaddq_s64(v81[6], vsubq_s64(v110, v112));
  v83 = vaddq_s64(v81[7], vsubq_s64(v111, v113));
  v81[6] = result;
  v81[7] = v83;
  return result;
}

uint64_t FstSearchLeafDuration::seedFromMiniFst(uint64_t this, int *a2)
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
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = (*(v2 + 328) + v5);
        v8 = *v7;
        v9 = v7[6];
        v10 = v7[7];
        LODWORD(v7) = v7[2];
        v20[0] = 0;
        v20[1] = 0;
        v11 = -2 - v7;
        if (v10 == 16777213)
        {
          v12 = (*(v2 + 160) + 36 * v11);
          v10 = 16777209;
          if (*v12 == 16777209)
          {
            v11 = *(*(v2 + 176) + 24 * v12[2] + 8);
          }
        }

        v13 = *a2;
        v14 = *(v2 + 168);
        if (v14 == *(v2 + 172))
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v2 + 160, 1, 1);
          LODWORD(v14) = *(v2 + 168);
        }

        v15 = *(v2 + 160) + 36 * v14;
        *v15 = v10;
        *(v15 + 4) = v13;
        *(v15 + 8) = -1;
        *(v15 + 12) = v8;
        *(v15 + 20) = 0;
        *(v15 + 24) = 0;
        *(v15 + 16) = v11;
        *(v15 + 28) = 0;
        *(v15 + 32) = 0;
        v16 = *(v2 + 168);
        *(v2 + 168) = v16 + 1;
        v17 = *(v2 + 272);
        if (v17 == *(v2 + 276))
        {
          DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(v2 + 264, 1, 1);
          LODWORD(v17) = *(v2 + 272);
        }

        v18 = *(v2 + 264) + 36 * v17;
        *v18 = v8;
        *(v18 + 4) = v9;
        *(v18 + 8) = v16;
        *(v18 + 12) = -2;
        *(v18 + 16) = 0;
        *(v18 + 24) = 0;
        *(v18 + 28) = 0;
        ++*(v2 + 272);
        this = DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
        ++v6;
        v19 = *(v2 + 336);
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

uint64_t FstSearchLeafDuration::collectTraces(FstSearchLeafDuration *this)
{
  v2 = *(this + 42);
  v53 = 0;
  v52 = 0;
  if (v2)
  {
    v3 = MemChunkAlloc(4 * v2, 0);
    v4 = 0;
    v52 = v3;
    v53 = v2;
    do
    {
      *(v3 + v4++) = 0;
    }

    while (v4 < v53);
  }

  v5 = *(this + 68);
  if (v5)
  {
    v6 = 0;
    v7 = v52;
    v8 = (*(this + 33) + 8);
    do
    {
      v10 = *v8;
      v8 += 9;
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
  if (v11)
  {
    v12 = v52;
    v13 = 36 * v11 - 20;
    v14 = v52 + v11 - 1;
    do
    {
      if (*v14--)
      {
        v16 = *(*(this + 20) + v13);
        if (v16 != -1)
        {
          *(v12 + v16) = 1;
        }
      }

      v13 -= 36;
    }

    while (v13 != -20);
    v17 = *(this + 42);
    v50 = 0;
    v51 = 0;
    if (v17)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = v52;
        if (*(v52 + v19))
        {
          v22 = *(this + 20);
          if (v19 != v20)
          {
            v23 = (v22 + 36 * v19);
            v24 = v22 + 36 * v20;
            v25 = *v23;
            v26 = v23[1];
            *(v24 + 32) = *(v23 + 8);
            *v24 = v25;
            *(v24 + 16) = v26;
            v22 = *(this + 20);
          }

          v27 = v22 + 36 * v20;
          v30 = *(v27 + 16);
          v28 = (v27 + 16);
          v29 = v30;
          if (v30 != -1)
          {
            *v28 = *(v21 + v29);
          }

          v31 = v51;
          if (*(v22 + 36 * v20 + 28))
          {
            v32 = 0;
            v33 = v51;
            do
            {
              v34 = *(*(this + 27) + 2 * (v32 + *(v22 + 36 * v20 + 24)));
              if (v33 == HIDWORD(v51))
              {
                DgnPrimArray<short>::reallocElts(&v50, 1, 1);
                v33 = v51;
                v18 = v50;
                v22 = *(this + 20);
              }

              *(v18 + 2 * v33++) = v34;
              LODWORD(v51) = v33;
              ++v32;
            }

            while (v32 < *(v22 + 36 * v20 + 28));
          }

          *(v22 + 36 * v20 + 24) = v31;
          *(v52 + v19) = v20++;
          v17 = *(this + 42);
        }

        ++v19;
      }

      while (v19 < v17);
      v35 = *(this + 43);
      if (v20 > v35)
      {
        DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 160, v20 - v35, 0);
        v17 = *(this + 42);
      }

      if (v17 < v20)
      {
        v36 = v20 - v17;
        v37 = (*(this + 20) + 36 * v17 + 32);
        do
        {
          *(v37 - 2) = xmmword_26287F860;
          *(v37 - 2) = 0xFFFFFFFFLL;
          *(v37 - 2) = 0;
          *(v37 - 2) = 0;
          *v37 = 0;
          v37 += 9;
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
    v50 = 0;
    v51 = 0;
  }

  *(this + 42) = v20;
  v38 = *(this + 68);
  if (v38)
  {
    v39 = 0;
    v40 = v51;
    v41 = *(this + 33);
    do
    {
      if (*(v41 + 36 * v39 + 24))
      {
        v42 = 0;
        LODWORD(v43) = v40;
        do
        {
          v44 = *(*(this + 27) + 2 * (v42 + *(v41 + 36 * v39 + 20)));
          if (v43 == HIDWORD(v51))
          {
            DgnPrimArray<short>::reallocElts(&v50, 1, 1);
            LODWORD(v43) = v51;
            v41 = *(this + 33);
          }

          *(v50 + 2 * v43) = v44;
          v43 = (v43 + 1);
          LODWORD(v51) = v43;
          ++v42;
        }

        while (v42 < *(v41 + 36 * v39 + 24));
        v38 = *(this + 68);
      }

      else
      {
        v43 = v40;
      }

      *(v41 + 36 * v39++ + 20) = v40;
      v40 = v43;
    }

    while (v39 < v38);
  }

  else
  {
    LODWORD(v43) = v51;
  }

  DgnPrimArray<unsigned short>::copyArraySlice(this + 27, &v50, 0, v43);
  v45 = *(this + 68);
  if (v45)
  {
    v46 = v52;
    v47 = (*(this + 33) + 8);
    do
    {
      v48 = *v47;
      if (v48 != -1)
      {
        *v47 = *(v46 + v48);
      }

      v47 += 9;
      --v45;
    }

    while (v45);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v50);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v52);
}

void sub_26265862C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

int64x2_t FstSearchLeafDuration::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchLeafDuration::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchLeafDuration::collectTraces(this);
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

_DWORD *FstSearchLeafDuration::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[56] = 0;
  this[68] = 0;
  return this;
}

double FstSearchLeafDuration::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchLeafDuration::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchLeafDuration::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchLeafDuration::endTopRecPassSyncRecog(FstSearchLeafDuration *this)
{
  v10 = 0u;
  v11 = 0u;
  SnapTime::recordTime(&v10, 1, 0, 0, 0);
  FstSearchLeafDurationBackoff::generateTraceTokensFromTraces(this);
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

void FstSearchLeafDuration::printSize(FstSearchLeafDuration *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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
  v26 = 34 * v25;
  if (v25 <= 0)
  {
    v26 = 0;
  }

  v27 = v26 + v24;
  v28 = v26 + v24 + 34 * (*(this + 43) - v25);
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
  v33 = 22 * v32;
  if (v32 <= 0)
  {
    v33 = 0;
  }

  v34 = v33 + v31;
  v35 = v33 + v31 + 22 * (*(this + 47) - v32);
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
  v47 = 32 * v46;
  if (v46 <= 0)
  {
    v47 = 0;
  }

  v48 = v47 | v45;
  v49 = (v47 | v45) + 32 * (*(this + 69) - v46);
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
  v54 = 32 * v53;
  if (v53 <= 0)
  {
    v54 = 0;
  }

  v55 = v54 | v52;
  v56 = (v54 | v52) + 32 * (*(this + 73) - v53);
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

BOOL FstSearchLeafDuration::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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
  BestTrace = FstSearchLeafDurationBackoff::getBestTrace(a1, a2, a3, 0);
  *a4 = 1879048192;
  if (BestTrace == -1)
  {
    return 0;
  }

  v13 = *(a1 + 160) + 36 * BestTrace;
  LODWORD(v13) = *(v13 + 12) + *(*(a1 + 88) + 4 * *(v13 + 4));
  *a4 = v13;
  return v13 != 1879048192;
}

uint64_t FstSearchLeafDuration::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, unsigned __int8 a5)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v23, *(a1 + 168));
  v8 = MemChunkAlloc(0x28uLL, 0);
  HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>::HashProbeKEV(v8, 0, 128);
  v8[4] = a2;
  FstSearchLeafDurationBackoff::createLatticeNodes(a1, &v26, &v24, a2, v23, a3, a4);
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = 0;
    v11 = v25;
    do
    {
      if (*(*a3 + v10))
      {
        v12 = (*(a1 + 160) + 36 * v10);
        if (*v12 != 16777209)
        {
          v13 = *(a1 + 176) + 24 * v12[2];
          v14 = *(v13 + 8);
          if (v14 == -1)
          {
            v15 = 0;
          }

          else
          {
            v15 = (v11 - *(v26 + v14));
          }

          v16 = *(v24 + 4 * v15);
          if (*(*a4 + v10) == 1)
          {
            FstSearchLeafDuration::createLatticeLink(a1, v10, v13, 0xFFFFFFFF, v16, *(v24 + 4 * (v11 - *(v26 + v10))), a2, v8, a5);
          }

          v17 = v23[0] + 16 * v10;
          if (*(v17 + 8))
          {
            v18 = 0;
            do
            {
              v19 = *(*v17 + 4 * v18);
              FstSearchLeafDuration::createLatticeLink(a1, v10, v13, v19, v16, *(v24 + 4 * (v11 - *(v26 + v19))), a2, v8, a5);
              ++v18;
              v17 = v23[0] + 16 * v10;
            }

            while (v18 < *(v17 + 8));
          }
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }

  DgnDelete<HashProbeKEV<unsigned long long,DgnArray<LinkSegment>,WordLattice>>(v8);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v24);
  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v26);
}

void sub_262659380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void FstSearchLeafDuration::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, unsigned int a6, uint64_t *a7, uint64_t a8, unsigned __int8 a9)
{
  v16 = *(a1 + 160);
  if ((a4 & 0x80000000) != 0)
  {
    v17 = 0;
  }

  else if (*(*(a1 + 176) + 24 * *(v16 + 36 * a4 + 8) + 8) == a2)
  {
    v17 = (*(a1 + 176) + 24 * *(v16 + 36 * a4 + 8));
  }

  else
  {
    v17 = 0;
  }

  ArcGraph::lexToCWIDAC(v43, *(a1 + 40), *(v16 + 36 * a2));
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

  if (LODWORD(v43[0]) >> 25 == 126)
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
  v23 = a3[5];
  if (v17)
  {
    v23 += v17[5];
  }

  v37 = v21;
  v38 = 0;
  v39 = v20;
  v40 = v19 - (v18 + v23);
  v41 = v23;
  v42 = v22;
  v24 = a3[2];
  v25 = *(a1 + 160);
  if (v24 == -1)
  {
    v27 = 0;
    if (a9)
    {
LABEL_20:
      v28 = (*(v25 + 36 * a2 + 4) - 1) / 2;
      v29 = v28 + 1;
      v30 = v28 + 1 - v27;
      if ((a4 & 0x80000000) == 0)
      {
        v31 = (*(v25 + 36 * a4 + 4) - 1) / 2;
LABEL_25:
        v32 = v31 - v28;
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v26 = *(v25 + 36 * v24 + 4);
    if (a9)
    {
      v27 = (v26 - 1) / 2 + 1;
      goto LABEL_20;
    }

    v27 = v26 + 1;
  }

  v28 = *(v25 + 36 * a2 + 4);
  v29 = v28 + 1;
  v30 = v28 + 1 - v27;
  if ((a4 & 0x80000000) == 0)
  {
    v31 = *(v25 + 36 * a4 + 4);
    goto LABEL_25;
  }

LABEL_26:
  v32 = 0;
LABEL_27:
  WordLatticeLC::WordLatticeLC(v35, v43, v27, v30, v32, &v37);
  v34[0] = 0;
  v34[1] = 0;
  FstSearchLeafDurationBackoff::buildLinkSegmentation(a1, v34, a3, v27, a9);
  if (v17)
  {
    FstSearchLeafDurationBackoff::buildLinkSegmentation(a1, v34, v17, v29, a9);
  }

  v36 = WordLattice::findOrAddLinkSegSeqId(a7, v34, a8);
  Lattice<WordLatticeLC>::maybeCreateAndConnectLinkAvoidMultiLinks(a7, a5, a6, v35);
  DgnIArray<Utterance *>::~DgnIArray(v34);
  WordLatticeLC::~WordLatticeLC(v35);
}

void sub_262659620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  WordLatticeLC::~WordLatticeLC(va1);
  _Unwind_Resume(a1);
}

uint64_t FstSearchLeafDuration::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 428) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 312);
  }

  return this;
}

uint64_t FstSearchLeafDuration::endTopRecSyncRecog(FstSearchLeafDuration *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchLeafDuration::getBestExitScore(FstSearchLeafDuration *this)
{
  v17 = 0;
  v18 = 0;
  *(this + 75) = -1;
  v1 = *(this + 38);
  v2 = *(this + 68);
  if (v1 >= v2)
  {
    goto LABEL_16;
  }

  v4 = 0;
  v5 = 0;
  v6 = 36 * v1;
  do
  {
    v7 = *(this + 33) + v6;
    if (*(*(this + 5) + 160) == *(v7 + 4))
    {
      v8 = *(v7 + 8);
      if (v8 != -1 && *(*(this + 20) + 36 * v8 + 4) == *(this + 74))
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
        v2 = *(this + 68);
      }
    }

    ++v1;
    v6 += 36;
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
      v14 = *(v13 + 12);
      if (v11 > v14)
      {
        *(this + 75) = *(v13 + 16);
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

uint64_t FstSearchLeafDuration::getBestScoreMaybeUpdateFstNode(FstSearchLeafDuration *this, Node *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v2 = *(this + 68);
  if (v2)
  {
    v3 = *(this + 33);
    v4 = -1;
    v5 = 1879048192;
    do
    {
      if (v5 > *v3)
      {
        v4 = *(v3 + 12);
        v5 = *v3;
      }

      v3 += 36;
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

unsigned int *FstSearchLeafDuration::seedTheory(FstSearchLeafDuration *this, int a2, int a3, int a4, SearchStats *a5)
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
    *(v12 + 8) = -1;
    *(v12 + 12) = a2;
    *(v12 + 16) = 0xFFFFFFFFLL;
    *(v12 + 24) = 0;
    *(v12 + 28) = 0;
    *(v12 + 32) = 0;
    v9 = *(this + 42);
    *(this + 42) = v9 + 1;
  }

  v13 = *(*(this + 5) + 144);
  v14 = *(this + 68);
  if (v14 == *(this + 69))
  {
    DgnArray<FstSearchLateLatticeHashBackoffTrace>::reallocElts(this + 264, 1, 1);
    v14 = *(this + 68);
  }

  v15 = *(this + 33) + 36 * v14;
  *v15 = a2;
  *(v15 + 4) = v13;
  *(v15 + 8) = v9;
  *(v15 + 12) = -2;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 28) = 0;
  LODWORD(v15) = *(this + 68) + 1;
  *(this + 68) = v15;
  *(this + 38) = v15;

  return FstSearchLeafDurationBackoff::propagateNulls(this, 20000, a3, a5);
}

uint64_t *FstSearchLeafDuration::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 75);
  if (v6 != -1)
  {
    v7 = result;
    v8 = (result[20] + 36 * v6);
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
      v21 = *(v18 + 36 * v6 + 12);
      v22 = *(a5 + 8);
      if (v22 == *(a5 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v22 = *(a5 + 8);
      }

      *(*a5 + 4 * v22) = v21;
      ++*(a5 + 8);
      v8 = (v7[20] + 36 * v14);
      i = v8[4];
    }

    *a4 = *v8;
  }

  return result;
}

double FstSearchLeafDuration::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
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

uint64_t FstSearchLeafDuration::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
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
  BestTrace = FstSearchLeafDurationBackoff::getBestTrace(a1, 0, 0, 1);
  if (BestTrace == -1)
  {
    return 1879048192;
  }

  v11 = BestTrace;
  FstSearchLeafDurationBackoff::getHistory(a1, BestTrace, a3, a4);
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
  return (*(v18 + 12) + *(a1[11] + 4 * *(v18 + 4)));
}

void FstSearchDurationBackoff::FstSearchDurationBackoff(FstSearchDurationBackoff *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287524EA0;
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

uint64_t FstSearchDurationBackoff::maybeInitDurModel(FstSearchDurationBackoff *this, const PicMgr *a2, int a3)
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

int64x2_t FstSearchDurationBackoff::advanceDeltas(FstSearchDurationBackoff *this, int a2, int a3, SearchStats *a4, int a5)
{
  v7 = a2;
  v110[0] = a2;
  v108 = 0u;
  v109 = 0u;
  SnapTime::recordTime(&v108, 1, 0, 0, 0);
  v83 = (this + 256);
  *(this + 64) = a3;
  v92 = *(this + 2);
  v9 = *(this + 56);
  if (v9)
  {
    v10 = 0;
    v90 = 0;
    v91 = 0;
    v89 = *(this + 53);
    v79 = *(this + 208);
    do
    {
      v11 = *(this + 27);
      v12 = *(this + 5);
      v13 = 28 * v10 + 24;
      while (1)
      {
        v14 = *(v11 + v13 - 20);
        if (*(v12 + 160) != v14)
        {
          break;
        }

        ++v10;
        v13 += 28;
        if (v10 >= v9)
        {
          goto LABEL_64;
        }
      }

      v80 = a4;
      v81 = v7;
      if (*(v12 + 140) > v14)
      {
        if (*(this + 19) + *(this + 64) >= 5000)
        {
          v15 = 5000;
        }

        else
        {
          v15 = *(this + 19) + *(this + 64);
        }

        ScoreAllowBackoff_updateNodeInSequence = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v11 + v13 - 12), *(v11 + v13 - 24), v15);
        v17 = (*(this + 27) + v13);
        v18 = *(v17 - 6);
        v19 = *(v17 - 1);
        v20 = v79;
        if (v19 >= 1)
        {
          v20 = v79 - v19;
        }

        v21 = v20 & ((v19 - v79) >> 31);
        if (*(v17 - 6))
        {
          v22 = v21 + *v17;
        }

        else
        {
          v22 = *v17;
        }

        if (*(v17 - 6))
        {
          v23 = v19 - v79;
        }

        else
        {
          v23 = *(v17 - 1);
        }

        if (*(v17 - 6))
        {
          v24 = v21;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24 + ScoreAllowBackoff_updateNodeInSequence;
        if (v24 + ScoreAllowBackoff_updateNodeInSequence - v92 <= *v83)
        {
          v26 = *(v17 - 5);
          v27 = *(v17 - 5);
          v28 = *(v17 - 2);
          if (*v83 > v25)
          {
            *v83 = v25;
          }

          v29 = *(this + 60);
          if (v29 == *(this + 61))
          {
            DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 232, 1, 1);
            LODWORD(v29) = *(this + 60);
          }

          v30 = *(this + 29) + 28 * v29;
          *v30 = v25;
          *(v30 + 4) = v26;
          *(v30 + 12) = v18;
          *(v30 + 14) = v27;
          *(v30 + 16) = v28;
          *(v30 + 20) = v23;
          *(v30 + 24) = v22;
          v31 = *(this + 60);
          *(this + 60) = v31 + 1;
          v32 = v90;
          if (v91 == 2 * *(this + 4))
          {
            v32 = v31 + 1;
          }

          v90 = v32;
          ++v91;
        }
      }

      v33 = v14;
      do
      {
        v34 = *(this + 5);
        v35 = *(v34 + 152);
        v36 = *(v35 + 4 * v33);
        v37 = *(v35 + 4 * (v33 + 1));
        v38 = *(v34 + 140);
        if (v38 <= v37)
        {
          if (v38 <= v14 && (*(this + 380) & 1) != 0)
          {
            v58 = (v36 & 0xFFFFF) <= 0xFFFF3 ? v36 & 0xFFFFF : v36 & 0xFFFFF | 0xF00000;
            if (v58 != 16777210)
            {
              DgnString::DgnString(&v105);
              ArcGraph::getNameAndHumanReadablePron(*(this + 5), v58, &v105);
              v60 = &unk_26287F8B0;
              if (v105.i32[2])
              {
                v60 = v105.i64[0];
              }

              xprintf("Seed from state %d score %d trace %d, %s\n", v59, v14, *(*(this + 27) + v13 - 24), *(*(this + 27) + v13 - 16), v60);
              MiniFst::seed(this + 264, *(*(this + 27) + v13 - 24), 0, *(*(this + 27) + v13 - 16), v37);
              DgnString::~DgnString(&v105);
            }
          }
        }

        else
        {
          v39 = (v36 >> 20) & 0x3FF;
          if (*(this + 19) + *(this + 64) >= 5000)
          {
            v40 = 5000;
          }

          else
          {
            v40 = *(this + 19) + *(this + 64);
          }

          v41 = PelScoreCache::getScoreAllowBackoff_updateNodeInSequence(*(this + 4), *(v35 + 4 * v33), *(*(this + 27) + v13 - 24) + v39, v40);
          v42 = (*(this + 27) + v13);
          if (v36)
          {
            v44 = *(*(this + 24) + 2 * v36);
          }

          else
          {
            v44 = 0;
          }

          if (v36)
          {
            v43 = *(*(this + 24) + 2 * v36);
            v45 = v43 & (v43 >> 31);
          }

          else
          {
            v45 = 0;
          }

          v46 = v89;
          if (!v36)
          {
            v46 = 0;
          }

          v47 = (*(v42 - 1) & ~(*(v42 - 1) >> 31)) - v45 + v46;
          v48 = v47 + v41;
          v49 = *(this + 64);
          if (v47 + v41 - v92 <= v49)
          {
            v50 = *(v42 - 4);
            v51 = *(v42 - 5);
            v52 = *(v42 - 2);
            v53 = *v42;
            if (v49 > v48)
            {
              *v83 = v48;
            }

            v54 = *(this + 60);
            if (v54 == *(this + 61))
            {
              v87 = v51;
              v88 = v44;
              v85 = v52;
              v86 = v50;
              v84 = v53;
              DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 232, 1, 1);
              v53 = v84;
              v52 = v85;
              v50 = v86;
              v51 = v87;
              v44 = v88;
              LODWORD(v54) = *(this + 60);
            }

            v55 = *(this + 29) + 28 * v54;
            *v55 = v48;
            *(v55 + 4) = v37;
            *(v55 + 8) = v50;
            *(v55 + 12) = v36;
            *(v55 + 14) = v51;
            *(v55 + 16) = v52 + v39;
            *(v55 + 20) = v44;
            *(v55 + 24) = v47 + v53;
            v56 = *(this + 60);
            *(this + 60) = v56 + 1;
            v57 = v90;
            if (v91 == 2 * *(this + 4))
            {
              v57 = v56 + 1;
            }

            v90 = v57;
            ++v91;
          }
        }

        v33 += 2;
      }

      while ((v36 & 0x80000000) == 0);
      v10 = (v10 + 1);
      v9 = *(this + 56);
      v7 = v81;
      a4 = v80;
    }

    while (v10 < v9);
  }

  else
  {
    v90 = 0;
    v91 = 0;
  }

LABEL_64:
  v107 = *(this + 64) + v92;
  if (*(this + 380) == 1)
  {
    MiniFst::updateFrame(this + 264, v83, v92, v7);
  }

  v105 = 0u;
  v106 = 0u;
  SnapTime::recordTime(&v105, 1, 0, 0, 0);
  v105 = vsubq_s64(v105, v108);
  v106 = vsubq_s64(v106, v109);
  v61 = *(this + 13);
  v62 = vaddq_s64(v61[1], v106);
  *v61 = vaddq_s64(*v61, v105);
  v61[1] = v62;
  v103 = 0u;
  v104 = 0u;
  SnapTime::recordTime(&v103, 1, 0, 0, 0);
  if (v91 > 2 * *(this + 4))
  {
    FstSearchDurationHashBackoff::applyCutoffOnEmitting(this, v90, &v107);
  }

  v101 = 0u;
  v102 = 0u;
  SnapTime::recordTime(&v101, 1, 0, 0, 0);
  v63 = vsubq_s64(v101, v103);
  v64 = *(this + 13);
  v65 = v64[3];
  v66 = vaddq_s64(v64[2], v63);
  v101 = v63;
  v102 = vsubq_s64(v102, v104);
  v67 = vaddq_s64(v65, v102);
  v64[2] = v66;
  v64[3] = v67;
  v99 = 0u;
  v100 = 0u;
  SnapTime::recordTime(&v99, 1, 0, 0, 0);
  FstSearchDurationBackoff::makeViterbiDecisionOnEmitting(this);
  v68 = *(this + 6);
  if (v68)
  {
    v69 = *(this + 56);
    if (v68 < v69)
    {
      mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(*(this + 27), v68, v69);
    }
  }

  v97 = 0u;
  v98 = 0u;
  SnapTime::recordTime(&v97, 1, 0, 0, 0);
  v70 = vsubq_s64(v97, v99);
  v71 = *(this + 13);
  v72 = v71[5];
  v73 = vaddq_s64(v71[4], v70);
  v97 = v70;
  v98 = vsubq_s64(v98, v100);
  v74 = vaddq_s64(v72, v98);
  v71[4] = v73;
  v71[5] = v74;
  v95 = 0u;
  v96 = 0u;
  SnapTime::recordTime(&v95, 1, 0, 0, 0);
  *(this + 60) = 0;
  v75 = *(this + 56);
  *(this + 38) = v75;
  if (a4)
  {
    *(a4 + 2) += v75;
    if (*(a4 + 2) > v75)
    {
      LODWORD(v75) = *(a4 + 2);
    }

    *(a4 + 2) = v75;
  }

  if (*(this + 380) == 1)
  {
    FstSearchDurationBackoff::seedFromMiniFst(this, v110);
  }

  if (a5)
  {
    FstSearchDurationHashBackoff::propagateNulls(this, v107, v7, a4);
  }

  *(this + 62) = v7;
  v93 = 0u;
  v94 = 0u;
  SnapTime::recordTime(&v93, 1, 0, 0, 0);
  v76 = *(this + 13);
  result = vaddq_s64(v76[6], vsubq_s64(v93, v95));
  v78 = vaddq_s64(v76[7], vsubq_s64(v94, v96));
  v76[6] = result;
  v76[7] = v78;
  return result;
}

char **FstSearchDurationBackoff::makeViterbiDecisionOnEmitting(char **this)
{
  v1 = this;
  v2 = *(this + 60);
  if (v2)
  {
    this = mrec_qsort_r<FstSearchLateLatticeHashBackoffActiveToken>(this[29], v2, 28, 0);
    v3 = *(v1 + 60);
    *(v1 + 56) = 0;
    if (v3)
    {
      v4 = 0;
      v5 = 0;
      for (i = 0; i < v3; ++i)
      {
        v7 = v1[29];
        if (!v4 || *&v7[v4 + 4] != *&v7[v4 - 24])
        {
          if (v5 == *(v1 + 57))
          {
            this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts((v1 + 27), 1, 1);
            v5 = *(v1 + 56);
          }

          v8 = &v1[27][28 * v5];
          v9 = *&v7[v4];
          *(v8 + 12) = *&v7[v4 + 12];
          *v8 = v9;
          v5 = *(v1 + 56) + 1;
          *(v1 + 56) = v5;
          v3 = *(v1 + 60);
        }

        v4 += 28;
      }
    }
  }

  else
  {
    *(this + 56) = 0;
  }

  return this;
}

uint64_t FstSearchDurationBackoff::seedFromMiniFst(uint64_t this, int *a2)
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

uint64_t FstSearchDurationBackoff::collectTraces(FstSearchDurationBackoff *this)
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

int64x2_t FstSearchDurationBackoff::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchDurationBackoff::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchDurationBackoff::collectTraces(this);
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

_DWORD *FstSearchDurationBackoff::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[56] = 0;
  return this;
}

double FstSearchDurationBackoff::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchDurationBackoff::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchDurationBackoff::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchDurationBackoff::endTopRecPassSyncRecog(FstSearchDurationBackoff *this)
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

void FstSearchDurationBackoff::printSize(FstSearchDurationBackoff *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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

BOOL FstSearchDurationBackoff::findBestPath(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
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

uint64_t FstSearchDurationBackoff::buildWordLattice(uint64_t a1, uint64_t *a2, void *a3, void *a4, char a5)
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
        if (*v14 != 16777209)
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
            FstSearchDurationBackoff::createLatticeLink(a1, v12, v15, 0xFFFFFFFF, v18, *(v26 + 4 * (v13 - *(v28 + v12))), a2, v10, a5);
          }

          v19 = v25[0] + 16 * v12;
          if (*(v19 + 8))
          {
            v20 = 0;
            do
            {
              v21 = *(*v19 + 4 * v20);
              FstSearchDurationBackoff::createLatticeLink(a1, v12, v15, v21, v18, *(v26 + 4 * (v13 - *(v28 + v21))), a2, v10, a5);
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

void sub_26265B8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void FstSearchDurationBackoff::createLatticeLink(uint64_t a1, unsigned int a2, int *a3, unsigned int a4, int a5, const WordLatticeLC *a6, uint64_t *a7, uint64_t a8, char a9)
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

void sub_26265BB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  WordLatticeLC::~WordLatticeLC(va);
  _Unwind_Resume(a1);
}

uint64_t FstSearchDurationBackoff::beginTopRecSyncRecog(uint64_t this, VirtMap *a2)
{
  *(this + 112) = a2;
  if (*(this + 380) == 1)
  {
    return MiniFst::beginTopFstSyncRecog(this + 264);
  }

  return this;
}

uint64_t FstSearchDurationBackoff::endTopRecSyncRecog(FstSearchDurationBackoff *this)
{
  v1 = *(this + 14);
  *(this + 14) = 0;
  return v1;
}

uint64_t FstSearchDurationBackoff::getBestExitScore(FstSearchDurationBackoff *this)
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

uint64_t FstSearchDurationBackoff::getBestScoreMaybeUpdateFstNode(FstSearchDurationBackoff *this, Node *a2)
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

char *FstSearchDurationBackoff::seedTheory(FstSearchDurationBackoff *this, int a2, int a3, int a4, SearchStats *a5)
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

uint64_t *FstSearchDurationBackoff::expandEmbFstHistory(uint64_t *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
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

double FstSearchDurationBackoff::checkSearchParametersValidityForArcGraph(uint64_t this, int a2, int a3)
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

uint64_t FstSearchDurationBackoff::makePartialResult(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
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

void FstSearchDuration::FstSearchDuration(FstSearchDuration *this, const int *a2, const int *a3)
{
  SearchItf::SearchItf(this);
  *v5 = &unk_287527120;
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

uint64_t FstSearchDuration::maybeInitDurModel(FstSearchDuration *this, const PicMgr *a2, int a3)
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

int64x2_t FstSearchDuration::advanceDeltas(FstSearchDuration *this, int a2, int a3, SearchStats *a4, int a5)
{
  v6 = a2;
  v113[0] = a2;
  v111 = 0u;
  v112 = 0u;
  SnapTime::recordTime(&v111, 1, 0, 0, 0);
  v85 = (this + 256);
  *(this + 64) = a3;
  v95 = *(this + 2);
  v8 = *(this + 56);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v92 = *(this + 53);
    v81 = *(this + 208);
    v91 = this;
    do
    {
      v12 = *(this + 27);
      v13 = *(this + 5);
      v14 = 28 * v9 + 24;
      while (1)
      {
        v15 = *(v12 + v14 - 20);
        if (*(v13 + 160) != v15)
        {
          break;
        }

        ++v9;
        v14 += 28;
        if (v9 >= v8)
        {
          goto LABEL_58;
        }
      }

      v82 = v6;
      v93 = v11;
      v94 = v10;
      if (*(v13 + 140) > v15)
      {
        v16 = *(v12 + v14 - 24);
        v17 = PelScoreCache::getScoreNoBackoff(*(v91 + 4), *(v12 + v14 - 12)) + v16;
        this = v91;
        v18 = (*(v91 + 27) + v14);
        v19 = *(v18 - 6);
        v20 = *(v18 - 1);
        v21 = v81;
        if (v20 >= 1)
        {
          v21 = v81 - v20;
        }

        v22 = v21 & ((v20 - v81) >> 31);
        if (*(v18 - 6))
        {
          v23 = v22 + *v18;
        }

        else
        {
          v23 = *v18;
        }

        if (*(v18 - 6))
        {
          v24 = v20 - v81;
        }

        else
        {
          v24 = *(v18 - 1);
        }

        if (*(v18 - 6))
        {
          v25 = v22;
        }

        else
        {
          v25 = 0;
        }

        v26 = v17 + v25;
        if (v17 + v25 - v95 <= *v85)
        {
          v27 = *(v18 - 5);
          v28 = *(v18 - 5);
          v29 = *(v18 - 2);
          if (*v85 > v26)
          {
            *v85 = v26;
          }

          v30 = *(v91 + 60);
          if (v30 == *(v91 + 61))
          {
            DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v91 + 232, 1, 1);
            LODWORD(v30) = *(v91 + 60);
          }

          v31 = *(v91 + 29) + 28 * v30;
          *v31 = v26;
          *(v31 + 4) = v27;
          *(v31 + 12) = v19;
          *(v31 + 14) = v28;
          *(v31 + 16) = v29;
          *(v31 + 20) = v24;
          *(v31 + 24) = v23;
          v32 = *(v91 + 60);
          *(v91 + 60) = v32 + 1;
          v33 = v94;
          if (v93 == 2 * *(v91 + 4))
          {
            v33 = v32 + 1;
          }

          ++v93;
          v94 = v33;
        }
      }

      v34 = v15;
      do
      {
        v35 = *(this + 5);
        v36 = *(v35 + 152);
        v37 = *(v36 + 4 * v34);
        v38 = *(v36 + 4 * (v34 + 1));
        v39 = *(v35 + 140);
        if (v39 <= v38)
        {
          if (v39 <= v15 && (*(this + 380) & 1) != 0)
          {
            v60 = (v37 & 0xFFFFF) <= 0xFFFF3 ? v37 & 0xFFFFF : v37 & 0xFFFFF | 0xF00000;
            if (v60 != 16777210)
            {
              DgnString::DgnString(&v108);
              ArcGraph::getNameAndHumanReadablePron(*(this + 5), v60, &v108);
              v62 = &unk_26287F8B0;
              if (v108.i32[2])
              {
                v62 = v108.i64[0];
              }

              xprintf("Seed from state %d score %d trace %d, %s\n", v61, v15, *(*(this + 27) + v14 - 24), *(*(this + 27) + v14 - 16), v62);
              MiniFst::seed(this + 264, *(*(this + 27) + v14 - 24), 0, *(*(this + 27) + v14 - 16), v38);
              DgnString::~DgnString(&v108);
            }
          }
        }

        else
        {
          v40 = (v37 >> 20) & 0x3FF;
          ScoreNoBackoff = PelScoreCache::getScoreNoBackoff(*(this + 4), *(v36 + 4 * v34));
          v42 = (*(this + 27) + v14);
          v43 = ScoreNoBackoff + v40 + *(v42 - 6);
          if (v37)
          {
            v45 = *(*(this + 24) + 2 * v37);
          }

          else
          {
            v45 = 0;
          }

          if (v37)
          {
            v44 = *(*(this + 24) + 2 * v37);
            v46 = v44 & (v44 >> 31);
          }

          else
          {
            v46 = 0;
          }

          v47 = v92;
          if (!v37)
          {
            v47 = 0;
          }

          v48 = (*(v42 - 1) & ~(*(v42 - 1) >> 31)) - v46 + v47;
          v49 = v43 + v48;
          v50 = v43 + v48 - v95;
          v51 = *(this + 64);
          if (v50 <= v51)
          {
            v52 = *(v42 - 4);
            v53 = *(v42 - 5);
            v54 = *(v42 - 2);
            v55 = *v42;
            if (v51 > v49)
            {
              *v85 = v49;
            }

            this = v91;
            v56 = *(v91 + 60);
            if (v56 == *(v91 + 61))
            {
              v89 = v53;
              v90 = v45;
              v87 = v54;
              v88 = v52;
              v86 = v55;
              DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v91 + 232, 1, 1);
              v55 = v86;
              v54 = v87;
              v52 = v88;
              v53 = v89;
              v45 = v90;
              LODWORD(v56) = *(v91 + 60);
            }

            v57 = *(v91 + 29) + 28 * v56;
            *v57 = v49;
            *(v57 + 4) = v38;
            *(v57 + 8) = v52;
            *(v57 + 12) = v37;
            *(v57 + 14) = v53;
            *(v57 + 16) = v54 + v40;
            *(v57 + 20) = v45;
            *(v57 + 24) = v48 + v55;
            v58 = *(v91 + 60);
            *(v91 + 60) = v58 + 1;
            v59 = v94;
            if (v93 == 2 * *(v91 + 4))
            {
              v59 = v58 + 1;
            }

            ++v93;
            v94 = v59;
          }
        }

        v34 += 2;
      }

      while ((v37 & 0x80000000) == 0);
      v9 = (v9 + 1);
      v8 = *(this + 56);
      v6 = v82;
      v11 = v93;
      v10 = v94;
    }

    while (v9 < v8);
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

LABEL_58:
  v110 = *(this + 64) + v95;
  if (*(this + 380) == 1)
  {
    MiniFst::updateFrame(this + 264, v85, v95, v6);
  }

  v108 = 0u;
  v109 = 0u;
  SnapTime::recordTime(&v108, 1, 0, 0, 0);
  v108 = vsubq_s64(v108, v111);
  v109 = vsubq_s64(v109, v112);
  v63 = *(this + 13);
  v64 = vaddq_s64(v63[1], v109);
  *v63 = vaddq_s64(*v63, v108);
  v63[1] = v64;
  v106 = 0u;
  v107 = 0u;
  SnapTime::recordTime(&v106, 1, 0, 0, 0);
  if (v11 > 2 * *(this + 4))
  {
    FstSearchDurationHashBackoff::applyCutoffOnEmitting(this, v10, &v110);
  }

  v104 = 0u;
  v105 = 0u;
  SnapTime::recordTime(&v104, 1, 0, 0, 0);
  v65 = vsubq_s64(v104, v106);
  v66 = *(this + 13);
  v67 = v66[3];
  v68 = vaddq_s64(v66[2], v65);
  v104 = v65;
  v105 = vsubq_s64(v105, v107);
  v69 = vaddq_s64(v67, v105);
  v66[2] = v68;
  v66[3] = v69;
  v102 = 0u;
  v103 = 0u;
  SnapTime::recordTime(&v102, 1, 0, 0, 0);
  FstSearchDurationBackoff::makeViterbiDecisionOnEmitting(this);
  v70 = *(this + 6);
  if (v70)
  {
    v71 = *(this + 56);
    if (v70 < v71)
    {
      mrec_nth_element<FstSearchLatticeHashBackoffcmpTok>(*(this + 27), v70, v71);
    }
  }

  v100 = 0u;
  v101 = 0u;
  SnapTime::recordTime(&v100, 1, 0, 0, 0);
  v72 = vsubq_s64(v100, v102);
  v73 = *(this + 13);
  v74 = v73[5];
  v75 = vaddq_s64(v73[4], v72);
  v100 = v72;
  v101 = vsubq_s64(v101, v103);
  v76 = vaddq_s64(v74, v101);
  v73[4] = v75;
  v73[5] = v76;
  v98 = 0u;
  v99 = 0u;
  SnapTime::recordTime(&v98, 1, 0, 0, 0);
  *(this + 60) = 0;
  v77 = *(this + 56);
  *(this + 38) = v77;
  if (a4)
  {
    *(a4 + 2) += v77;
    if (*(a4 + 2) > v77)
    {
      LODWORD(v77) = *(a4 + 2);
    }

    *(a4 + 2) = v77;
  }

  if (*(this + 380) == 1)
  {
    FstSearchDuration::seedFromMiniFst(this, v113);
  }

  if (a5)
  {
    FstSearchDurationHashBackoff::propagateNulls(this, v110, v6, a4);
  }

  *(this + 62) = v6;
  v96 = 0u;
  v97 = 0u;
  SnapTime::recordTime(&v96, 1, 0, 0, 0);
  v78 = *(this + 13);
  result = vaddq_s64(v78[6], vsubq_s64(v96, v98));
  v80 = vaddq_s64(v78[7], vsubq_s64(v97, v99));
  v78[6] = result;
  v78[7] = v80;
  return result;
}

uint64_t FstSearchDuration::seedFromMiniFst(uint64_t this, int *a2)
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

uint64_t FstSearchDuration::collectTraces(FstSearchDuration *this)
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

int64x2_t FstSearchDuration::vite(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  FstSearchDuration::advanceDeltas(this, a2, a3, a4, a5);
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
        FstSearchDuration::collectTraces(this);
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

_DWORD *FstSearchDuration::reset(_DWORD *this)
{
  this[42] = 0;
  this[46] = 0;
  this[56] = 0;
  return this;
}

double FstSearchDuration::doFrame(int64x2_t **this, unsigned int a2, int a3, SearchStats *a4, int a5)
{
  if (a3 >= 20000)
  {
    a3 = 20000;
  }

  *&result = FstSearchDuration::vite(this, a2, a3, a4, a5).u64[0];
  return result;
}

uint64_t FstSearchDuration::beginTopRecPassSyncRecog(PelScoreCache **this, PelScorer *a2, const ArcGraph *a3)
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

uint64_t FstSearchDuration::endTopRecPassSyncRecog(FstSearchDuration *this)
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

void FstSearchDuration::printSize(FstSearchDuration *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
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