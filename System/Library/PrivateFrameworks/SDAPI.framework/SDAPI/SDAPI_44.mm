void sub_2627D84A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnArray<RecogResultToken>>(uint64_t a1, int a2)
{
  v11[0] = 0;
  v11[1] = 0;
  v4 = sizeObject<RecogResultToken>(v11, 2);
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
        v9 = 16 * v7 - 16;
        do
        {
          v5 += sizeObject<RecogResultToken>(*a1 + v9, a2);
          --v8;
          v9 -= 16;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnIArray<Utterance *>::~DgnIArray(v11);
  return v5;
}

uint64_t sizeObject<HistContents>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v11 = 0x3FFFFAFFFFFFLL;
  v12 = xmmword_26286CC40;
  v13 = 0x1F0000001FLL;
  v4 = sizeObject(&v11, 2);
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
      v9 = 32 * v7 - 32;
      do
      {
        v5 += sizeObject(*a1 + v9, v2);
        --v8;
        v9 -= 32;
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

uint64_t sizeObject<SnapTime>(uint64_t a1, int a2)
{
  memset(v11, 0, sizeof(v11));
  v4 = SnapTime::sizeObject(v11, 2);
  if (a2 == 3)
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

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = v4;
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      v9 = 32 * v7 - 32;
      do
      {
        v5 += SnapTime::sizeObject(*a1 + v9, a2);
        --v8;
        v9 -= 32;
      }

      while (v8 > 1);
    }

    if (!a2)
    {
      v5 += v6 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v5;
}

uint64_t RecogController::setupRecognizers(uint64_t result, uint64_t *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v12 = result;
  v13 = *(result + 12);
  if (v13 == 0xFFFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(*(ModelMgr::smpModelMgr + 40) + 8 * v13);
  }

  if (*(result + 24))
  {
    v15 = 0;
    v45 = (result + 56);
    v44 = *(result + 10);
    v16 = (result + 40);
    do
    {
      v17 = *(*a9 + 2 * v15);
      if (v17 != 127)
      {
        ArcGraphOrThrow = ModelMgr::getArcGraphOrThrow(ModelMgr::smpModelMgr, v17);
        v23 = *(*(v12 + 16) + 8 * v15);
        if (*(*(v23 + 296) + 132) == 1)
        {
          v24 = 2;
        }

        else
        {
          v24 = 1;
        }

        result = FstCore::makeRecognizer((v23 + 216), v44, v14, v24, ArcGraphOrThrow);
        v25 = result;
        v26 = *(v12 + 56);
        if (v26 == *(v12 + 60))
        {
          result = DgnPrimArray<unsigned long long>::reallocElts(v12 + 48, 1, 1);
          v26 = *v45;
        }

        *(*(v12 + 48) + 8 * v26) = v25;
        *(v12 + 56) = v26 + 1;
        v27 = *(v12 + 40);
        v28 = (v12 + 32);
        v29 = (v12 + 40);
        if (v27 != *(v12 + 44))
        {
          goto LABEL_24;
        }

        result = DgnPrimArray<unsigned long long>::reallocElts(v12 + 32, 1, 1);
        v29 = (v12 + 40);
        v28 = (v12 + 32);
        goto LABEL_23;
      }

      v18 = *(v12 + 8);
      if (v18 == 1)
      {
        v19 = *(*(*(v12 + 16) + 8 * v15) + 138);
        if (!v14)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v19 = 0;
        if (!v14)
        {
LABEL_18:
          v21 = 0;
          v20 = 0;
          goto LABEL_19;
        }
      }

      v20 = *(v14 + 48);
      v21 = v14 + 80;
LABEL_19:
      result = Recognizer::makeRecognizer(v18, v19, v44, v21, v20, *(v12 + 14), *(*(v12 + 16) + 8 * v15), a5, a6, a7, a8);
      v30 = result;
      v31 = *(v12 + 40);
      if (v31 == *(v12 + 44))
      {
        result = DgnPrimArray<unsigned long long>::reallocElts(v12 + 32, 1, 1);
        v31 = *v16;
      }

      *(*(v12 + 32) + 8 * v31) = v30;
      *(v12 + 40) = v31 + 1;
      v27 = *(v12 + 56);
      v28 = (v12 + 48);
      v29 = v45;
      if (v27 != *(v12 + 60))
      {
        goto LABEL_24;
      }

      result = DgnPrimArray<unsigned long long>::reallocElts(v12 + 48, 1, 1);
      v29 = v45;
      v28 = (v12 + 48);
LABEL_23:
      v27 = *v29;
LABEL_24:
      *(*v28 + 8 * v27) = 0;
      *v29 = v27 + 1;
      ++v15;
    }

    while (v15 < *(v12 + 24));
  }

  v32 = *(a2 + 2);
  if (v32)
  {
    v33 = 0;
    v34 = *a2;
    do
    {
      v35 = v34 + 16 * v33;
      if (*(v35 + 8))
      {
        v36 = 0;
        do
        {
          if (v33 != v36)
          {
            v37 = *(*v35 + 2 * v36);
            if (v37 != 20000)
            {
              v38 = *(v12 + 32);
              if (!*(v38 + 8 * v33) || !*(v38 + 8 * v36))
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3284, "recogctl/recogctl", 4, "%.500s", "Cross-layer thresholding");
              }

              if (*(a3 + 8))
              {
                v39 = *(*(*a3 + 16 * v33) + 2 * v36);
              }

              else
              {
                v39 = 0;
              }

              result = Recognizer::shadowBest(*(*(v12 + 32) + 8 * v33), *(*(v12 + 32) + 8 * v36), v37, v39, a4);
              v34 = *a2;
            }
          }

          ++v36;
          v35 = v34 + 16 * v33;
        }

        while (v36 < *(v35 + 8));
        v32 = *(a2 + 2);
      }

      ++v33;
    }

    while (v33 < v32);
  }

  return result;
}

uint64_t RecogController::recognizeOneSingleLayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v45 = 0;
  v46 = 0;
  DgnPrimArray<unsigned long long>::reallocElts(&v45, 1, 1);
  v27 = v46;
  *(v45 + 8 * v46) = a5;
  LODWORD(v46) = v27 + 1;
  v43 = 0;
  v44 = 0;
  DgnPrimArray<char>::reallocElts(&v43, 1, 1);
  v28 = v44;
  *(v43 + v44) = a15;
  LODWORD(v44) = v28 + 1;
  v29 = *(a9 + 8);
  v41 = 0;
  v42 = 0;
  if (v29)
  {
    v39 = 0;
    v30 = realloc_array(0, &v39, 8 * v29, 0, 0, 1);
    v41 = v39;
    v31 = *(a9 + 8);
    LODWORD(v42) = v29;
    HIDWORD(v42) = v30 >> 3;
    v39 = 0;
    v40 = 0;
    if (v31)
    {
      v37[0] = 0;
      v32 = realloc_array(0, v37, 8 * v31, 0, 0, 1);
      v33 = v37[0];
      v39 = v37[0];
      LODWORD(v29) = v42;
      LODWORD(v40) = v31;
      HIDWORD(v40) = v32 >> 3;
      if (!v42)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = 0;
    do
    {
      *&v41[v34] = 0;
      *&v33[v34] = 0;
      v34 += 8;
    }

    while (8 * v29 != v34);
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

LABEL_9:
  (*(*a1 + 32))(a1, a2, a3, a4, &v45, a6, a7, a8, a9, a10, &v39, &v41, a11, a12, a13, a14, &v43, a16, a17, a18, a19, 0, 0, 0);
  v38 = 0;
  (*(*a1 + 64))(a1, 0, 0, &v38);
  v37[0] = 0;
  v37[1] = 0;
  (*(*a1 + 72))(a1, v37);
  v35 = *v37[0];
  DgnIArray<Utterance *>::~DgnIArray(v37);
  DgnIArray<Utterance *>::~DgnIArray(&v39);
  DgnIArray<Utterance *>::~DgnIArray(&v41);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v43);
  DgnIArray<Utterance *>::~DgnIArray(&v45);
  return v35;
}

void sub_2627D8EB4(_Unwind_Exception *a1)
{
  DgnIArray<Utterance *>::~DgnIArray(v1 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 120);
  DgnIArray<Utterance *>::~DgnIArray(v1 - 104);
  _Unwind_Resume(a1);
}

uint64_t RecogController::haveCompletePrefilterResult(RecogController *this)
{
  v1 = *(this + 66);
  if (v1)
  {
    LOBYTE(v1) = *v1;
  }

  return v1 & 1;
}

uint64_t RecogController::extractPrefilterResult(RecogController *this)
{
  v2 = *(this + 66);
  *(this + 66) = 0;
  *(this + 898) = 1;
  v3 = *(this + 67);
  if (v3)
  {
    PrefilterResult::~PrefilterResult(v3);
    MemChunkFree(v4, 0);
    *(this + 67) = 0;
  }

  return v2;
}

void RecogController::startRecognizeOne(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t **a5, void *a6, int a7, uint64_t *a8, void *a9, void *a10, void *a11, void *a12, char a13, char a14, unsigned int *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, _OWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  SnapTime::recordTime((a1 + 160), 1, 1, 1, 1);
  MemChunkRegion::resetInternalLocalMaxAllocBytes(0, v30);
  *(a1 + 888) = a23;
  v31 = *(a1 + 40);
  *(a1 + 898) = 0;
  *(a1 + 224) = a17;
  v32 = *a5;
  v247 = a6;
  v248 = v31;
  v245 = a4;
  if (v31 >= 2)
  {
    v249 = a3;
    v33 = 1;
    v34 = *(*v32 + 340);
    do
    {
      v35 = *((*a5)[v33] + 340);
      if (v34 != v35)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3441, "recogctl/recogctl", 7, "%.500s %d %d %d", "SearchRecognitionContinuationInterval", v33, v34, v35);
      }

      ++v33;
    }

    while (v248 != v33);
    v36 = **a5;
    v37 = *(v36 + 337);
    if (*(v36 + 337))
    {
      v38 = "true";
    }

    else
    {
      v38 = "false";
    }

    if (v248 <= 2)
    {
      v39 = 2;
    }

    else
    {
      v39 = v248;
    }

    for (i = 1; i != v39; ++i)
    {
      if (v37 != *((*a5)[i] + 337))
      {
        if (*((*a5)[i] + 337))
        {
          v41 = "true";
        }

        else
        {
          v41 = "false ";
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3443, "recogctl/recogctl", 6, "%.500s %d %.500s %.500s", "SearchRecognitionBatchProcessing", i, v38, v41);
      }
    }

    v42 = *(**a5 + 385);
    if (*(**a5 + 385))
    {
      v43 = "true";
    }

    else
    {
      v43 = "false";
    }

    for (j = 1; j != v39; ++j)
    {
      if (v42 != *((*a5)[j] + 385))
      {
        if (*((*a5)[j] + 385))
        {
          v45 = "true";
        }

        else
        {
          v45 = "false ";
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3445, "recogctl/recogctl", 6, "%.500s %d %.500s %.500s", "SearchEstimateAndPreScoreActivePels", j, v43, v45);
      }
    }

    v46 = 1;
    v47 = *(**a5 + 504);
    a4 = v245;
    do
    {
      v48 = *((*a5)[v46] + 504);
      if (v47 != v48)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3447, "recogctl/recogctl", 8, "%.500s %d %d %d", "SearchPartialIncludePrefiltererResult", v46, v47, v48);
      }

      ++v46;
    }

    while (v39 != v46);
    v32 = *a5;
    a6 = v247;
    a3 = v249;
  }

  v49 = *v32;
  *(a1 + 152) = *(v49 + 340);
  *(a1 + 156) = *(v49 + 337);
  *(a1 + 880) = *(v49 + 385);
  *(a1 + 232) = a3;
  v50 = *(a1 + 904);
  if (v50)
  {
    *(v50 + 944) = a3 != 0;
    if (a3)
    {
      v51 = *(a3 + 416);
    }

    else
    {
      v51 = 0;
    }

    *(v50 + 945) = v51 & 1;
    *(v50 + 946) = a19 != 0;
    *(v50 + 947) = a4 != 0;
    *(v50 + 948) = 0;
    if (a19)
    {
      CollWords = StateMgr::getCollWords(*(*(**VocMgr::smpVocMgr + 8 * *(a19 + 8)) + 56), *(a19 + 12), 0xFFFFu, 0);
      v50 = *(a1 + 904);
      *(v50 + 948) += *(CollWords + 8);
    }

    if (a3)
    {
      v53 = *(*(a3 + 432) + 208);
    }

    else
    {
      v53 = 0;
    }

    *(v50 + 952) = v53;
    if (a19)
    {
      *(*(a1 + 904) + 956) = *((*(*a19 + 32))(a19) + 88);
      v54 = *((*(*a19 + 32))(a19) + 92);
      v50 = *(a1 + 904);
    }

    else
    {
      v54 = 0;
      *(v50 + 956) = 0;
    }

    *(v50 + 960) = v54;
    *(v50 + 964) = *(**a5 + 152);
    v55 = a22[1];
    *(v50 + 1088) = *a22;
    *(v50 + 1104) = v55;
    v56 = *(a1 + 232);
    if (v56 && *v56 - 1 <= 0xFFFFFFFD)
    {
      *(*(a1 + 904) + 972) = ChannelMgr::getChannelType(ChannelMgr::smpChannelMgr, *v56) - 1 < 2;
    }
  }

  *(a1 + 424) = a19;
  *(a1 + 432) = a4;
  *(a1 + 64) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = a21;
  v57 = 0uLL;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  if (!v248)
  {
    v150 = 0;
    v69 = *a5;
    goto LABEL_182;
  }

  v58 = 0;
  v246 = 0;
  do
  {
    v59 = (*a5)[v58 / 8];
    v60 = *(v59 + 188);
    v61 = *(v59 + 172);
    v62 = *(v59 + 176);
    v253[0] = *(v59 + 180);
    v253[1] = __PAIR64__(v60, v61);
    v254 = v62;
    v255 = 0;
    StateConstraint = Constraint::makeStateConstraint(a2, a7, a8, *(*a9 + v58), *(*a10 + v58), *(*a12 + v58), *(v59 + 80), *(v59 + 76), a13, a15);
    v64 = *(*(a1 + 32) + v58);
    if (v64)
    {
      if (*(a1 + 8) == 1)
      {
        Recognizer::beginTrackingConfidenceStatistics(v64);
        v64 = *(*(a1 + 32) + v58);
      }

      Recognizer::resetRecognizerStats(v64);
      Recognizer::setInitialContext(*(*(a1 + 32) + v58), a6 + 1);
      Recognizer::setContextPars(*(*(a1 + 32) + v58), v253);
      Recognizer::setEmbeddedTransducers(*(*(a1 + 32) + v58), *(*a11 + v58));
      v65 = *(*(a1 + 32) + v58);
      *(a1 + 64) = *(v65 + 200);
      goto LABEL_57;
    }

    FstCore::resetRecognizerStats(*(*(a1 + 48) + v58));
    v66 = *(*(*(a1 + 48) + v58) + 72);
    v67 = MemChunkAlloc(0x18uLL, 0);
    *v67 = *v253;
    *(v67 + 4) = v254;
    *(v67 + 20) = v255;
    *(v66 + 136) = v67;
    FstCore::setEmbeddedTransducers(*(*(a1 + 48) + v58), *(*a11 + v58));
    v65 = *(*(a1 + 32) + v58);
    if (v65)
    {
      v246 = 1;
      a6 = v247;
LABEL_57:
      Recognizer::setConstraint(v65, StateConstraint);
      goto LABEL_58;
    }

    v57.n128_f64[0] = FstCore::setConstraint(*(*(a1 + 48) + v58), StateConstraint);
    v246 = 1;
    a6 = v247;
LABEL_58:
    v68 = *(*(a1 + 32) + v58);
    if (v68)
    {
      *(v68 + 361) = a14;
    }

    v58 += 8;
  }

  while (8 * v248 != v58);
  v69 = *a5;
  if (v248 != 1)
  {
    v70 = 1;
    v71 = *(*v69 + 132);
    do
    {
      v72 = *((*a5)[v70] + 132);
      if (v71 != v72)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3609, "recogctl/recogctl", 8, "%.500s %d %d %d", "SearchDecimationType", v70, v71, v72);
      }

      ++v70;
    }

    while (v248 != v70);
    if (v248 <= 2)
    {
      v73 = 2;
    }

    else
    {
      v73 = v248;
    }

    v74 = 1;
    v75 = *(**a5 + 128);
    do
    {
      v76 = *((*a5)[v74] + 128);
      if (v75 != v76)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3611, "recogctl/recogctl", 7, "%.500s %d %d %d", "SearchConTransAccStartFrame", v74, v75, v76);
      }

      ++v74;
    }

    while (v73 != v74);
    v77 = 1;
    v78 = *(**a5 + 124);
    do
    {
      v79 = *((*a5)[v77] + 124);
      if (v78 != v79)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3613, "recogctl/recogctl", 7, "%.500s %d %d %d", "SearchConTransAccRampFrames", v77, v78, v79);
      }

      ++v77;
    }

    while (v73 != v77);
    v80 = 1;
    v81 = *(**a5 + 120);
    do
    {
      v82 = *((*a5)[v80] + 120);
      if (v81 != v82)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3615, "recogctl/recogctl", 7, "%.500s %d %d %d", "SearchConTransAccMaxSilenceFrames", v80, v81, v82);
      }

      ++v80;
    }

    while (v73 != v80);
    v83 = **a5;
    v84 = *(v83 + 112);
    v85 = *(v83 + 104);
    if (v84)
    {
      v86 = v85;
    }

    else
    {
      v86 = &unk_26288E838;
    }

    for (k = 1; k != v73; ++k)
    {
      v88 = (*a5)[k];
      v89 = *(v88 + 112);
      v90 = *(v88 + 104);
      if (v89)
      {
        v91 = v90;
      }

      else
      {
        v91 = &unk_26288E838;
      }

      if (strcmp(v86, v91))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3617, "recogctl/recogctl", 10, "%.500s %d %.500s %.500s", "SearchConTransAccFactorList", k, v86, v91);
      }
    }

    v92 = 1;
    v93 = *(**a5 + 96);
    do
    {
      v94 = *((*a5)[v92] + 96);
      if (v93 != v94)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3619, "recogctl/recogctl", 7, "%.500s %d %d %d", "SearchConTransAccDecayFrequency", v92, v93, v94);
      }

      ++v92;
    }

    while (v73 != v92);
    v95 = 1;
    v96 = *(**a5 + 88);
    do
    {
      v97 = *((*a5)[v95] + 88);
      if (v96 != v97)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3621, "recogctl/recogctl", 9, "%.500s %d %g %g", "SearchConTransAccDecayFactor", v95, v96, v97);
      }

      ++v95;
    }

    while (v73 != v95);
    v98 = 1;
    v99 = *(**a5 + 136);
    do
    {
      v100 = *((*a5)[v98] + 136);
      if (v99 != v100)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3623, "recogctl/recogctl", 9, "%.500s %d %g %g", "SearchEnableGenoneScoreCacheThresh", v98, v99, v100);
      }

      ++v98;
    }

    while (v73 != v98);
    v101 = **a5;
    v102 = *(v101 + 368);
    if (*(v101 + 368))
    {
      v103 = "true";
    }

    else
    {
      v103 = "false";
    }

    for (m = 1; m != v73; ++m)
    {
      v105 = *((*a5)[m] + 368);
      if (v102 != v105)
      {
        v156 = v105 == 0;
        v106 = "true";
        if (v156)
        {
          v106 = "false ";
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3625, "recogctl/recogctl", 6, "%.500s %d %.500s %.500s", "SearchTruncatePackedIntComponentScores", m, v103, v106);
      }
    }

    v107 = 1;
    v108 = *(**a5 + 144);
    do
    {
      v109 = *((*a5)[v107] + 144);
      if (v108 != v109)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3627, "recogctl/recogctl", 9, "%.500s %d %g %g", "SearchFmpeMinimumPosteriorProbability", v107, v108, v109);
      }

      ++v107;
    }

    while (v73 != v107);
    v110 = **a5;
    v156 = *(v110 + 400) == 0;
    v111 = *(v110 + 392);
    if (v156)
    {
      v112 = &unk_26288E838;
    }

    else
    {
      v112 = v111;
    }

    for (n = 1; n != v73; ++n)
    {
      v114 = (*a5)[n];
      v115 = *(v114 + 400);
      v116 = *(v114 + 392);
      if (v115)
      {
        v117 = v116;
      }

      else
      {
        v117 = &unk_26288E838;
      }

      if (strcmp(v112, v117))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3629, "recogctl/recogctl", 10, "%.500s %d %.500s %.500s", "SearchHierScorerBeamList", n, v112, v117);
      }
    }

    v118 = **a5;
    v156 = *(v118 + 464) == 0;
    v119 = *(v118 + 456);
    if (v156)
    {
      v120 = &unk_26288E838;
    }

    else
    {
      v120 = v119;
    }

    for (ii = 1; ii != v73; ++ii)
    {
      v122 = (*a5)[ii];
      v123 = *(v122 + 464);
      v124 = *(v122 + 456);
      if (v123)
      {
        v125 = v124;
      }

      else
      {
        v125 = &unk_26288E838;
      }

      if (strcmp(v120, v125))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3631, "recogctl/recogctl", 10, "%.500s %d %.500s %.500s", "SearchHierScorerCutoffRatioList", ii, v120, v125);
      }
    }

    v126 = 1;
    v127 = *(**a5 + 408);
    do
    {
      v128 = *((*a5)[v126] + 408);
      if (v127 != v128)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3633, "recogctl/recogctl", 7, "%.500s %d %d %d", "SearchHierInactiveComponentScore", v126, v127, v128);
      }

      ++v126;
    }

    while (v73 != v126);
    v129 = 1;
    v130 = *(**a5 + 312);
    do
    {
      v57.n128_u64[0] = *((*a5)[v129] + 312);
      if (v130 != v57.n128_f64[0])
      {
        v57.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3635, "recogctl/recogctl", 9, "%.500s %d %g %g", "SearchPelScoreScale", v129, v130, v57.n128_f64[0]);
      }

      ++v129;
    }

    while (v73 != v129);
    v131 = 1;
    v132 = *(**a5 + 152);
    do
    {
      v133 = *((*a5)[v131] + 152);
      if (v132 != v133)
      {
        v57.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3637, "recogctl/recogctl", 8, "%.500s %d %d %d", "SearchFrameTransformerThreadingType", v131, v132, v133);
      }

      ++v131;
    }

    while (v73 != v131);
    v134 = 1;
    v135 = *(**a5 + 156);
    do
    {
      v136 = *((*a5)[v134] + 156);
      if (v135 != v136)
      {
        v57.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3638, "recogctl/recogctl", 8, "%.500s %d %d %d", "SearchThreadingType", v134, v135, v136);
      }

      ++v134;
    }

    while (v73 != v134);
    v137 = *(**a5 + 328);
    if (*(**a5 + 328))
    {
      v138 = "true";
    }

    else
    {
      v138 = "false";
    }

    for (jj = 1; jj != v73; ++jj)
    {
      v140 = *((*a5)[jj] + 328);
      if (v137 != v140)
      {
        v156 = v140 == 0;
        v141 = "true";
        if (v156)
        {
          v141 = "false ";
        }

        v57.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3640, "recogctl/recogctl", 6, "%.500s %d %.500s %.500s", "SearchPrefilterResultUseCrumbBank", jj, v138, v141);
      }
    }

    v142 = 1;
    v143 = *(**a5 + 332);
    do
    {
      v144 = *((*a5)[v142] + 332);
      if (v143 != v144)
      {
        v57.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3642, "recogctl/recogctl", 7, "%.500s %d %d %d", "SearchPrefilterResultUseCrumbBankDistanceMaxFrames", v142, v143, v144);
      }

      ++v142;
    }

    while (v73 != v142);
    v145 = *(**a5 + 444);
    if (*(**a5 + 444))
    {
      v146 = "true";
    }

    else
    {
      v146 = "false";
    }

    for (kk = 1; kk != v73; ++kk)
    {
      v148 = *((*a5)[kk] + 444);
      if (v145 != v148)
      {
        v156 = v148 == 0;
        v149 = "true";
        if (v156)
        {
          v149 = "false ";
        }

        v57.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3644, "recogctl/recogctl", 6, "%.500s %d %.500s %.500s", "FstCoreRepeatFrame", kk, v146, v149);
      }
    }

    v69 = *a5;
    a6 = v247;
  }

  a4 = v245;
  v150 = v246;
LABEL_182:
  v151 = *v69;
  v152 = *(v151 + 132);
  *(a1 + 1048) = v152;
  if (*(a1 + 232))
  {
    v153 = *(*(ModelMgr::smpModelMgr + 40) + 8 * *(a1 + 12));
    *(a1 + 320) = 0;
    v154 = *(v151 + 128);
    *(a1 + 332) = v154;
    v155 = *(v153 + 40);
    *(a1 + 384) = v155;
    if (v154)
    {
      v156 = v155 == 0;
    }

    else
    {
      v156 = 0;
    }

    if (v156)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3665, "recogctl/recogctl", 1, "%s", &unk_26288E838);
      v154 = *(a1 + 332);
    }

    if (((v154 != 0) & v150) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3667, "recogctl/recogctl", 11, "%s", &errStr_recogctl_recogctl_E_ONLINE_CONSTRAINED_TRANSACC_INVALID_WITH_FST);
    }

    v157 = **(a1 + 232);
    if (v157 - 1 <= 0xFFFFFFFD)
    {
      HasFeatData = ChannelMgr::sourceHasFeatData(ChannelMgr::smpChannelMgr, v157);
      if (*(a1 + 332))
      {
        if (HasFeatData)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3674, "recogctl/recogctl", 5, "%s", &errStr_recogctl_recogctl_E_ONLINE_CONSTRAINED_TRANSACC_INVALID_WITH_FEATURES);
        }
      }
    }

    v159 = **a5;
    *(a1 + 336) = *(v159 + 124);
    *(a1 + 340) = *(v159 + 120);
    if (*(a1 + 332))
    {
      v160 = *(a1 + 384);
      v161 = *(v160 + 8);
      v162 = *(a1 + 356);
      if (v161 > v162)
      {
        DgnPrimArray<unsigned long long>::reallocElts(a1 + 344, v161 - v162, 0);
        v160 = *(a1 + 384);
        v159 = **a5;
      }

      *(a1 + 352) = v161;
      *(a1 + 328) = *(v160 + 4);
    }

    v163 = *(v159 + 112);
    v164 = *(v159 + 104);
    if (v163)
    {
      v165 = v164;
    }

    else
    {
      v165 = &unk_26288E838;
    }

    DgnSplitStringParValueIntoDoubleArray("SearchConTransAccFactorList", "accumulation factors", v165, (a1 + 344), 1.0, 0.0, 1.0);
    v166 = **a5;
    *(a1 + 360) = *(v166 + 96);
    v167 = *(v166 + 88);
    *(a1 + 368) = v167;
    if (v167 == 0.0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3699, "recogctl/recogctl", 2, "%s", &errStr_recogctl_recogctl_E_DISALLOWED_DECAY_FACTOR);
      v166 = **a5;
    }

    *(a1 + 376) = 0x3FF0000000000000;
    v168 = *a6;
    if (*(v166 + 400))
    {
      v169 = *(v166 + 392);
    }

    else
    {
      v169 = &unk_26288E838;
    }

    if (*(v166 + 464))
    {
      v170 = *(v166 + 456);
    }

    else
    {
      v170 = &unk_26288E838;
    }

    if (v168)
    {
      LOBYTE(v168) = *(v166 + 449) ^ 1;
    }

    *(a1 + 248) = User::newPelScorer(v153, *(a1 + 332) != 0, *(v166 + 136), *(v166 + 368), *(v166 + 144), v169, v170, *(v166 + 408), v168 & 1);
    v172 = *(ChannelMgr::getSigProc(ChannelMgr::smpChannelMgr, *(*(a1 + 232) + 4)) + 400);
    v173 = **a5;
    v174 = *(v173 + 312);
    v175 = *(v173 + 444);
    if (v152 == 1)
    {
      v171 = 2;
    }

    else
    {
      v171 = 1;
    }

    if (v152 == 1)
    {
      if (v175)
      {
        v174 = v174 * 0.5;
      }
    }

    else if (v175)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3739, "recogctl/recogctl", 15, "%s", &errStr_recogctl_recogctl_E_DISALLOWED_REPEAT_FRAME_WITH_NO_DECIMATION);
    }

    v176 = *(a1 + 248);
    FeaturesPerFrame = Utterance::getFeaturesPerFrame(*(a1 + 232));
    (*(*v176 + 40))(v176, FeaturesPerFrame, 0, v172, 1, *(a1 + 224), *(**a5 + 320), v174);
    TransformedFrames = Utterance::getTransformedFrames(*(a1 + 232), *(a1 + 12), v171);
    if (TransformedFrames)
    {
      *(a1 + 464) = TransformedFrames;
    }

    else
    {
      v179 = MemChunkAlloc(0x18uLL, 0);
      v179[1] = 0;
      v179[2] = 0;
      *v179 = 0;
      *(v179 + 1) = -16;
      *(a1 + 480) = v179;
      *(a1 + 492) = v171;
      *(a1 + 464) = v179;
      v180 = *(a1 + 248);
      v181 = *(v180 + 56);
      if (v181)
      {
        v182 = *(v181 + 112);
      }

      else
      {
        v182 = 0;
      }

      FrameTransformer = FrameTransformer::makeFrameTransformer(a6[7], *(v153 + 368), *(v153 + 16), *(v153 + 32), v182, *(**a5 + 152), v171, *(v180 + 131), *(v180 + 136), *(v180 + 144));
      *(a1 + 448) = FrameTransformer;
      (*(*FrameTransformer + 64))(FrameTransformer);
    }

    if (*(*(a1 + 248) + 96))
    {
      v184 = MemChunkAlloc(0x48uLL, 0);
      ConstrainedTransAccMgr::ConstrainedTransAccMgr(v184, a1, v172);
      *(a1 + 512) = v185;
      ConstrainedTransAccMgr::initAccum(v185, 1);
    }
  }

  else
  {
    v171 = 0;
  }

  v186 = *(a1 + 496);
  if (v186)
  {
    (*(*v186 + 24))(v186, v57);
    v187 = MemChunkAlloc(0x18uLL, 0);
    v187[1] = 0;
    v187[2] = 0;
    *v187 = 0;
    *(v187 + 1) = -16;
    *(a1 + 504) = v187;
  }

  v188 = *(a1 + 424);
  if (v188)
  {
    v189 = *(*(a1 + 912) + 48);
    if (v152)
    {
      v190 = 1;
    }

    else
    {
      v190 = v189 == 0;
    }

    if (!v190 || (v152 == 1 ? (v191 = v189 == 1) : (v191 = 1), !v191))
    {
      v57.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3812, "recogctl/recogctl", 3, "%s", &errStr_recogctl_recogctl_E_MISMATCHED_DECIMATION);
      v188 = *(a1 + 424);
    }

    (*(*v188 + 40))(v188, a16, v57);
    v192 = *(a1 + 424);
    v193 = *(a1 + 224);
    MicrosecPerFrame = Utterance::getMicrosecPerFrame(*(a1 + 232));
    v195 = Utterance::getFeaturesPerFrame(*(a1 + 232));
    SigProc = ChannelMgr::getSigProc(ChannelMgr::smpChannelMgr, *(*(a1 + 232) + 4));
    (*(*v192 + 48))(v192, v193, MicrosecPerFrame, v195, *(SigProc + 400), *(a1 + 912));
    if (a6[3])
    {
      (*(**(a1 + 424) + 72))(*(a1 + 424));
    }

    if ((*(**(a1 + 424) + 144))(*(a1 + 424)) == *(a1 + 12))
    {
      *(a1 + 456) = *(a1 + 464);
      *(a1 + 472) = *(a1 + 480);
      *(a1 + 488) = *(a1 + 492);
      *(a1 + 440) = *(a1 + 448);
    }

    else
    {
      v197 = *(a1 + 232);
      v198 = (*(**(a1 + 424) + 144))(*(a1 + 424));
      v199 = Utterance::getTransformedFrames(v197, v198, v171);
      if (v199)
      {
        *(a1 + 456) = v199;
      }

      else
      {
        v200 = MemChunkAlloc(0x18uLL, 0);
        v200[1] = 0;
        v200[2] = 0;
        *v200 = 0;
        *(v200 + 1) = -16;
        *(a1 + 472) = v200;
        *(a1 + 488) = v171;
        *(a1 + 456) = v200;
        v201 = ModelMgr::smpModelMgr;
        v202 = *(*(v201 + 40) + 8 * (*(**(a1 + 424) + 144))(*(a1 + 424)));
        v203 = (*(**(a1 + 424) + 160))(*(a1 + 424));
        v204 = *(v203 + 56);
        if (v204)
        {
          v205 = *(v204 + 112);
        }

        else
        {
          v205 = 0;
        }

        v206 = FrameTransformer::makeFrameTransformer(a6[8], *(v202 + 368), *(v202 + 16), *(v202 + 32), v205, *(**a5 + 152), v171, *(v203 + 131), *(v203 + 136), *(v203 + 144));
        *(a1 + 440) = v206;
        (*(*v206 + 64))(v206);
      }
    }
  }

  *(a1 + 290) = 0;
  if (a4 | *(a1 + 424))
  {
    v207 = a20;
    *(a1 + 528) = a20;
    v208 = **a5;
    if (*(v208 + 328) == 1)
    {
      *(a1 + 544) = 1;
      *(a1 + 548) = *(v208 + 332);
      v207 = MemChunkAlloc(0x20uLL, 0);
      PrefilterResult::PrefilterResult(v207, a2);
      *(a1 + 536) = v209;
      if (!*(a1 + 528))
      {
        v210 = MemChunkAlloc(0x20uLL, 0);
        PrefilterResult::PrefilterResult(v210, a2);
        *(a1 + 528) = v211;
      }
    }

    v212 = MemChunkAlloc(0x58uLL, 0);
    *(a1 + 520) = ReturnListQueue::ReturnListQueue(v212, v207, *(a1 + 64), a2);
    if (a4)
    {
      PrefilterResult::copyIntoQueue(a4, v212);
      *(a1 + 290) = 1;
    }
  }

  else
  {
    v213 = **a5;
    if (*(v213 + 328) == 1)
    {
      *(a1 + 544) = 1;
      *(a1 + 548) = *(v213 + 332);
      v214 = MemChunkAlloc(0x20uLL, 0);
      PrefilterResult::PrefilterResult(v214, a2);
      *(a1 + 528) = v215;
    }
  }

  if (*(a1 + 40))
  {
    v216 = 0;
    do
    {
      v217 = *(*(a1 + 32) + 8 * v216);
      if (v217)
      {
        Recognizer::beginTopRecSyncRecog(v217, v171, a24, a25);
      }

      else
      {
        RequiredVirtMapSize = FstCore::getRequiredVirtMapSize(*(*(a1 + 48) + 8 * v216));
        VirtMap = RecogCtlMgr::getVirtMap(RecogCtlMgr::smpRecogCtlMgr, RequiredVirtMapSize);
        FstCore::beginTopRecSyncRecog(*(*(a1 + 48) + 8 * v216), v171, VirtMap);
        if (*(*a18 + v216) == 1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3950, "recogctl/recogctl", 4, "%.500s", "Prefiltering in startRecognizeOne");
        }
      }

      ++v216;
    }

    while (v216 < *(a1 + 40));
  }

  DgnPrimArray<BOOL>::copyArraySlice((a1 + 552), a18, 0, *(a18 + 8));
  *(a1 + 568) = 0;
  if (*(a1 + 40))
  {
    v220 = 0;
    do
    {
      v221 = *(a1 + 824);
      if (v221 == *(a1 + 828))
      {
        DgnArray<PrefilterResultFrame>::reallocElts(a1 + 816, 1, 1);
        v221 = *(a1 + 824);
      }

      v222 = (*(a1 + 816) + 32 * v221);
      *v222 = 0u;
      v222[1] = 0u;
      ++*(a1 + 824);
      v223 = *(a1 + 872);
      if (v223 == *(a1 + 876))
      {
        DgnArray<PrefilterResultFrame>::reallocElts(a1 + 864, 1, 1);
        v223 = *(a1 + 872);
      }

      v224 = (*(a1 + 864) + 32 * v223);
      *v224 = 0u;
      v224[1] = 0u;
      ++*(a1 + 872);
      v225 = v247[4];
      if (v225)
      {
        v226 = *(*(a1 + 32) + 8 * v220);
        if (!v226)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 3970, "recogctl/recogctl", 4, "%.500s", "setPelScores");
          v226 = *(*(a1 + 32) + 8 * v220);
          v225 = v247[4];
        }

        Recognizer::setPelScores(v226, v225);
      }

      ++v220;
    }

    while (v220 < *(a1 + 40));
  }

  *(a1 + 288) = 0;
  *(a1 + 392) = 0;
  *(a1 + 316) = 0;
  *(a1 + 300) = 0;
  *(a1 + 308) = 0;
  *(a1 + 292) = 0;
  if (*(a1 + 232))
  {
    v227 = MemChunkAlloc(0x18uLL, 0);
    v227[1] = 0;
    v227[2] = 0;
    *v227 = 0;
    *(v227 + 1) = -16;
    *(a1 + 240) = v227;
    UttFeatureArraySynchronizedArray::update(v227, *(a1 + 232));
    v228 = *(a1 + 240);
    *(a1 + 292) = *(v228 + 16);
    *(a1 + 289) = *v228;
  }

  v229 = *(a1 + 928);
  if (v229 == -1)
  {
    v230 = *(a1 + 40);
    goto LABEL_289;
  }

  RecogController::setCallerThreadIdForChildren(a1, v229);
  v230 = *(a1 + 40);
  if (v230)
  {
    v231 = *(a1 + 32);
    v232 = *(a1 + 40);
    do
    {
      if (*v231)
      {
        *(*v231 + 672) = 0;
      }

      v231 += 8;
      --v232;
    }

    while (v232);
LABEL_289:
    LODWORD(v233) = v230;
    if (*(a1 + 412) < v230)
    {
      v253[0] = 0;
      *(a1 + 412) = realloc_array(*(a1 + 400), v253, v230, *(a1 + 408), *(a1 + 408), 1);
      *(a1 + 400) = v253[0];
      LODWORD(v233) = *(a1 + 40);
    }

    *(a1 + 408) = v230;
    if (v233)
    {
      v234 = 0;
      while (1)
      {
        *(*(a1 + 400) + v234) = 0;
        v235 = *(*(a1 + 32) + 8 * v234);
        if (!v235)
        {
          v240 = *(*(a1 + 48) + 8 * v234);
          v241 = *(a1 + 232);
          if (v241)
          {
            v242 = Utterance::getMicrosecPerFrame(v241);
            v243 = *(a1 + 232);
            if (v243 && (*(v243 + 416) & 1) == 0)
            {
              v244 = Utterance::numCompleteRecogFrames(v243, v171);
LABEL_307:
              FstCore::beginTopRecPassSyncRecog(v240, v242, v244, *(a1 + 248));
              goto LABEL_308;
            }
          }

          else
          {
            v242 = 0;
          }

          v244 = -16;
          goto LABEL_307;
        }

        v236 = *(a1 + 232);
        if (!v236)
        {
          break;
        }

        v237 = Utterance::getMicrosecPerFrame(v236);
        v238 = *(a1 + 232);
        if (!v238 || (*(v238 + 416) & 1) != 0)
        {
          goto LABEL_303;
        }

        v239 = Utterance::numCompleteRecogFrames(v238, v171);
LABEL_304:
        Recognizer::beginTopRecPassSyncRecog(v235, v237, v239, *(a1 + 248));
LABEL_308:
        ++v234;
        v233 = *(a1 + 40);
        if (v234 >= v233)
        {
          goto LABEL_311;
        }
      }

      v237 = 0;
LABEL_303:
      v239 = -16;
      goto LABEL_304;
    }
  }

  else
  {
    LODWORD(v233) = 0;
    *(a1 + 408) = 0;
  }

LABEL_311:
  *(a1 + 416) = v233;
  *(a1 + 896) = 1;
}

double Recognizer::resetRecognizerStats(Recognizer *this)
{
  PelStats::resetStats((this + 880));
  LMStats::resetStats((this + 1056));
  SearchStats::resetStats(this + 1208);
  PelStats::resetStats((this + 1240));
  LMStats::resetStats((this + 1416));
  SearchStats::resetStats(this + 1568);
  *(this + 585) = 0;
  *(this + 2308) = 0u;
  *(this + 2324) = 0u;
  LatticeStats::resetStats((this + 1616));
  result = 0.0;
  *(this + 2184) = 0u;
  *(this + 2200) = 0u;
  *(this + 2152) = 0u;
  *(this + 2168) = 0u;
  *(this + 2120) = 0u;
  *(this + 2136) = 0u;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *(this + 2056) = 0u;
  *(this + 2072) = 0u;
  *(this + 2024) = 0u;
  *(this + 2040) = 0u;
  return result;
}

double FstCore::resetRecognizerStats(FstCore *this)
{
  PelStats::resetStats((this + 80));
  PelStats::resetStats((this + 256));
  SearchStats::resetStats(this + 432);
  SearchStats::resetStats(this + 464);
  *(this + 137) = 0;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;

  return LatticeStats::resetStats((this + 688));
}

void RecogController::setCallerThreadIdForChildren(RecogController *this, int a2)
{
  v4 = *(this + 53);
  if (v4)
  {
    v5 = (*(*v4 + 168))(v4);
    v6 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) <= v5 || (v7 = *(*(DgnThreadMgr::smpThreadMgr + 8) + 8 * v5)) == 0)
    {
      v8 = v5;
      DgnThreadMgr::throwBadDgnThreadId(DgnThreadMgr::smpThreadMgr, v5);
      v7 = *(*(v6 + 8) + 8 * v8);
    }

    *(v7 + 64) = a2;
  }

  v9 = *(this + 62);
  if (v9)
  {
    v10 = (*(*v9 + 64))(v9);
    v11 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) <= v10 || (v12 = *(*(DgnThreadMgr::smpThreadMgr + 8) + 8 * v10)) == 0)
    {
      v13 = v10;
      DgnThreadMgr::throwBadDgnThreadId(DgnThreadMgr::smpThreadMgr, v10);
      v12 = *(*(v11 + 8) + 8 * v13);
    }

    *(v12 + 64) = a2;
  }

  v14 = *(this + 56);
  if (v14)
  {
    v15 = (*(*v14 + 120))(v14);
    v16 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) <= v15 || (v17 = *(*(DgnThreadMgr::smpThreadMgr + 8) + 8 * v15)) == 0)
    {
      v18 = v15;
      DgnThreadMgr::throwBadDgnThreadId(DgnThreadMgr::smpThreadMgr, v15);
      v17 = *(*(v16 + 8) + 8 * v18);
    }

    *(v17 + 64) = a2;
  }

  v19 = *(this + 55);
  if (v19 && v19 != *(this + 56))
  {
    v20 = (*(*v19 + 120))(v19);
    v21 = DgnThreadMgr::smpThreadMgr;
    if (*(DgnThreadMgr::smpThreadMgr + 16) <= v20 || (v22 = *(*(DgnThreadMgr::smpThreadMgr + 8) + 8 * v20)) == 0)
    {
      v23 = v20;
      DgnThreadMgr::throwBadDgnThreadId(DgnThreadMgr::smpThreadMgr, v20);
      v22 = *(*(v21 + 8) + 8 * v23);
    }

    *(v22 + 64) = a2;
  }
}

uint64_t RecogController::restartPostSynchronousRecognition(RecogController *this)
{
  v2 = *(this + 53);
  if (v2)
  {
    (*(*v2 + 88))(v2);
  }

  if (*(this + 10))
  {
    v3 = 0;
    do
    {
      v4 = *(this + 4);
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        Recognizer::setSynchronousRecognizerStats(*(v4 + 8 * v3));
        NetStats::operator=(*(v5 + 280) + 302696, *(v5 + 280) + 302592);
      }

      else
      {
        v6 = *(*(this + 6) + 8 * v3);
        PelStats::operator=(v6 + 256, v6 + 80);
        v7 = *(v6 + 472);
        v8 = *(v6 + 440);
        SearchStats::operator=(v6 + 464, v6 + 432);
        if (v7 <= v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = v7;
        }

        *(v6 + 472) = v9;
        *(v6 + 440) = 0;
        v10 = *(*(this + 6) + 8 * v3);
        FstStats::operator=(v10 + 1376, v10 + 1120);
      }

      ++v3;
    }

    while (v3 < *(this + 10));
  }

  v11 = *(this + 50);
  *(this + 52) = *(this + 49);
  *(this + 53) = v11;
  DgnArray<SnapTime>::copyArraySlice(this + 108, this + 102, 0, *(this + 206));

  return SnapTime::recordTime((this + 192), 1, 1, 1, 1);
}

void Recognizer::setSynchronousRecognizerStats(Recognizer *this)
{
  PelStats::operator=(this + 1240, this + 880);
  LMStats::operator=(this + 1416, this + 1056);
  v2 = *(this + 394);
  v3 = *(this + 304);
  SearchStats::operator=(this + 1568, this + 1208);
  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  *(this + 394) = v4;
  *(this + 304) = 0;
}

uint64_t RecogController::recognizeOneDoMainSearch(RecogController *this, int64x2_t *a2, unsigned int *a3)
{
  if (!*(this + 104))
  {
    return 0;
  }

  if (!*(this + 10))
  {
    goto LABEL_35;
  }

  v6 = 0;
  do
  {
    if (*(*(this + 50) + v6))
    {
      goto LABEL_15;
    }

    v7 = *(*(this + 6) + 8 * v6);
    v8 = *(*(this + 4) + 8 * v6);
    v9 = *(this + 58);
    if (!v9 || *v9 != 1)
    {
      goto LABEL_9;
    }

    v10 = *(v9 + 16);
    if (v8)
    {
      Recognizer::setRecogEndTime(*(*(this + 4) + 8 * v6), v10);
LABEL_9:
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    FstCore::setRecogEndTime(*(*(this + 6) + 8 * v6), v10);
    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_10:
    if (FstCore::checkForDone(v7))
    {
      goto LABEL_14;
    }

LABEL_11:
    if (v8 && ((Recognizer::checkForAbort(v8) & 1) != 0 || Recognizer::checkForDone(v8)))
    {
LABEL_14:
      *(*(this + 50) + v6) = 1;
      --*(this + 104);
    }

LABEL_15:
    ++v6;
    v11 = *(this + 10);
  }

  while (v6 < v11);
  if (!*(this + 104))
  {
    return 0;
  }

  if (v11)
  {
    v12 = 0;
    v13 = 0;
    while (1)
    {
      if ((*(*(this + 50) + v12) & 1) == 0)
      {
        v14 = *(*(this + 4) + 8 * v12);
        if (*(*(this + 69) + v12) == 1 && v14 == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4222, "recogctl/recogctl", 4, "%.500s", "Prefiltering in recognizeOneDoMainSearch");
          if (*(*(this + 69) + v12))
          {
LABEL_32:
            if (Recognizer::turnOffPrefilterer(v14))
            {
              *(*(this + 69) + v12) = 0;
            }

            else
            {
              v13 = 1;
            }
          }
        }

        else if (*(*(this + 69) + v12))
        {
          goto LABEL_32;
        }
      }

      if (++v12 >= *(this + 10))
      {
        goto LABEL_36;
      }
    }
  }

LABEL_35:
  v13 = 0;
LABEL_36:
  v16 = *(this + 65);
  if (!v16 || (*v16 & 1) != 0 || ReturnListQueue::getNextFrameTime(v16) > *(this + 78) + 1 || (v13 & 1) == 0 && !*(*(this + 65) + 48))
  {
    v101 = -16;
    if (*(this + 29))
    {
      v17 = (*(**(this + 31) + 72))(*(this + 31), *(this + 78), *(this + 58), &v101);
      v18 = *(this + 58);
      if (v18 && (v17 & 1) == 0)
      {
        *(this + 79) = v101;
        return 2;
      }
    }

    else
    {
      v18 = *(this + 58);
    }

    v99 = 0;
    v100 = 0;
    v98[0] = 0;
    v98[1] = 0;
    if (v18)
    {
      v20 = *(v18 + 8) + 16 * *(this + 78);
      DgnPrimArray<unsigned char>::copyArraySlice(&v99, v20, 0, *(v20 + 8));
      DgnPrimArray<unsigned char>::copyArraySlice(v98, &v99, 0, v100);
    }

    if (v13)
    {
      v21 = *(this + 65);
      if (*(this + 54) && !*(v21 + 10))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4283, "recogctl/recogctl", 14, "%s", &errStr_recogctl_recogctl_E_PREFILTERRESULT_INCOMPATIBLE_WITH_UTT);
        v21 = *(this + 65);
      }

      v102[0].i32[0] = -16;
      v22 = ReturnListQueue::dequeue(v21, v102[0].i32);
      DgnArray<Germ>::copyArraySlice(this + 72, v22, 0, *(v22 + 8));
      v23 = DgnIArray<Utterance *>::~DgnIArray(v22);
      MemChunkFree(v23, 0);
      v24 = *(*(this + 65) + 4);
      if (v24 != -16 && v24 <= v102[0].i32[0] && v24 > *(this + 78))
      {
        if (*(this + 10))
        {
          v25 = 0;
          do
          {
            v26 = *(this + 4);
            v27 = *(v26 + 8 * v25);
            if (v27)
            {
              Recognizer::setSynchronousRecognizerStats(*(v26 + 8 * v25));
              NetStats::operator=(*(v27 + 280) + 302696, *(v27 + 280) + 302592);
            }

            else
            {
              v28 = *(*(this + 6) + 8 * v25);
              PelStats::operator=(v28 + 256, v28 + 80);
              v29 = *(v28 + 472);
              v30 = *(v28 + 440);
              SearchStats::operator=(v28 + 464, v28 + 432);
              if (v29 <= v30)
              {
                v31 = v30;
              }

              else
              {
                v31 = v29;
              }

              *(v28 + 472) = v31;
              *(v28 + 440) = 0;
              v32 = *(*(this + 6) + 8 * v25);
              FstStats::operator=(v32 + 1376, v32 + 1120);
            }

            ++v25;
          }

          while (v25 < *(this + 10));
        }

        DgnArray<SnapTime>::copyArraySlice(this + 108, this + 102, 0, *(this + 206));
        SnapTime::recordTime((this + 192), 1, 1, 1, 1);
      }
    }

    DgnString::DgnString(v97);
    RecogController::maybeEstimateAndPreScoreActivePelsThisFrame(this, v97, &v99);
    v33 = *(this + 10);
    if (!v33)
    {
      goto LABEL_112;
    }

    v34 = 0;
    for (i = 0; i < v33; ++i)
    {
      v36 = *(*(this + 4) + 8 * i);
      if (v36 && (*(*(this + 50) + i) & 1) == 0)
      {
        Recognizer::doFrame1(v36);
        memset(v102, 0, 32);
        SnapTime::recordTime(v102, 1, 0, 0, 0);
        v37 = v102[1];
        v38 = vsubq_s64(v102[0], *a2);
        v39 = vsubq_s64(v102[1], a2[1]);
        *a2 = v102[0];
        a2[1] = v37;
        v40 = (*(this + 102) + v34);
        v41 = vaddq_s64(v39, v40[1]);
        *v40 = vaddq_s64(v38, *v40);
        v40[1] = v41;
        v33 = *(this + 10);
      }

      v34 += 32;
    }

    if (!v33)
    {
      goto LABEL_112;
    }

    v42 = 0;
    for (j = 0; j < v33; ++j)
    {
      if ((*(*(this + 50) + j) & 1) == 0)
      {
        v44 = *(*(this + 4) + 8 * j);
        if (v44)
        {
          Recognizer::doFrame2(v44, &v99);
        }

        else
        {
          if (*(*(this + 69) + j) == 1)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4393, "recogctl/recogctl", 4, "%.500s", "Prefiltering in recognizeOneDoMainSearch(2)");
          }

          FstCore::doFrame(*(*(this + 6) + 8 * j), &v99);
        }

        memset(v102, 0, 32);
        SnapTime::recordTime(v102, 1, 0, 0, 0);
        v45 = v102[1];
        v46 = vsubq_s64(v102[0], *a2);
        v47 = vsubq_s64(v102[1], a2[1]);
        *a2 = v102[0];
        a2[1] = v45;
        v48 = (*(this + 102) + v42);
        v49 = vaddq_s64(v47, v48[1]);
        *v48 = vaddq_s64(v46, *v48);
        v48[1] = v49;
        v33 = *(this + 10);
      }

      v42 += 32;
    }

    if (!v33)
    {
LABEL_112:
      v91 = -1;
      goto LABEL_113;
    }

    v50 = 0;
    v51 = 0;
    v52 = 20000;
    v91 = -1;
    do
    {
      v53 = *(*(this + 4) + 8 * v51);
      if (v53 && (*(*(this + 50) + v51) & 1) == 0)
      {
        if (*(*(this + 69) + v51) == 1)
        {
          Recognizer::doFrame3(v53, this + 576);
        }

        else
        {
          Recognizer::doFrame3(v53, 0);
        }

        memset(v102, 0, 32);
        SnapTime::recordTime(v102, 1, 0, 0, 0);
        v54 = v102[1];
        v55 = vsubq_s64(v102[0], *a2);
        v56 = vsubq_s64(v102[1], a2[1]);
        *a2 = v102[0];
        a2[1] = v54;
        v57 = (*(this + 102) + v50);
        v58 = vaddq_s64(v56, v57[1]);
        *v57 = vaddq_s64(v55, *v57);
        v57[1] = v58;
        v59 = *(v53 + 280);
        if (*(v59 + 240) < v52)
        {
          v91 = *(v59 + 230);
          v52 = *(v59 + 240);
        }
      }

      ++v51;
      v60 = *(this + 10);
      v50 += 32;
    }

    while (v51 < v60);
    if (*(this + 10))
    {
      v89 = a3;
      v61 = 0;
      v90 = v13;
      while (1)
      {
        if ((*(*(this + 50) + v61) & 1) == 0)
        {
          v62 = *(*(this + 4) + 8 * v61);
          if (v62)
          {
            if (*(v62 + 2352))
            {
              break;
            }
          }
        }

LABEL_110:
        if (++v61 >= v60)
        {
          a3 = v89;
          goto LABEL_113;
        }
      }

      v92 = v61;
      v63 = 0;
      v64 = 0;
      while (1)
      {
        v65 = (*(v62 + 2344) + v63);
        v66 = *v65;
        v67 = *(v65 + 2);
        v68 = *(v65 + 3);
        v69 = *(v65 + 8);
        v70 = *(v65 + 5);
        v71 = *(v65 + 6);
        v94 = 0;
        *v95 = v66;
        v96 = v67;
        if (!*(this + 236))
        {
          break;
        }

        v72 = (*Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::findBucket(this + 936, v95))[3];
        v94 = v72;
        if (!v72)
        {
          v73 = v95[2];
          v67 = v96;
          goto LABEL_99;
        }

LABEL_108:
        (*(*v72 + 32))(v72, v71);
        (*(*v94 + 24))(v94, v69, v68, v70);
        ++v64;
        v63 += 28;
        if (v64 >= *(v62 + 2352))
        {
          v60 = *(this + 10);
          v13 = v90;
          v61 = v92;
          goto LABEL_110;
        }
      }

      v73 = WORD2(v66);
LABEL_99:
      v102[0].i32[0] = (v73 << 25) | 0xFFFFF8;
      v102[0].i32[1] = 0x3FFF;
      v102[0].i32[2] = v67;
      *(&v102[0].i64[1] + 4) = 0xFAFFFFFCFFFFFFFELL;
      v102[1].i32[1] = -83886084;
      v74 = *(v62 + 280);
      Bucket = Hash<CWIDAC,CWIDAC,CWIDAC,ActiveWord *>::findBucket(v74 + 303024, v102);
      v93 = v69;
      v76 = v70;
      v77 = v68;
      if (*Bucket)
      {
        v94 = *(*Bucket + 40);
        if (v94)
        {
LABEL_107:
          Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::add(this + 936, v95, &v94);
          v68 = v77;
          v70 = v76;
          v69 = v93;
          v72 = v94;
          goto LABEL_108;
        }
      }

      else
      {
        v94 = 0;
      }

      v78 = ModelMgr::smpModelMgr;
      EmbRecSpecId = ModelMgr::getEmbRecSpecId(ModelMgr::smpModelMgr, v95[2], v96);
      v80 = *(ModelMgr::getEmbeddedRecSpec(v78, EmbRecSpecId) + 16);
      v81 = *(this + 262);
      v82 = (*(*this + 200))(this);
      if (v81 == 1)
      {
        v83 = 2;
      }

      else
      {
        v83 = 1;
      }

      FstCore::makeFstActiveWord(v102, v74, (*(*(this + 2) + 8 * v92) + 216), *(this + 5), v82, v80, *(this + 31), *(v62 + 316), *(v62 + 352), v83);
      v94 = v84;
      Active::addActiveWordFst(v74, v102, v84);
      goto LABEL_107;
    }

LABEL_113:
    RecogController::maybeCleanupAfterEstimateAndPreScoreActivePels(this, v97);
    if (*(this + 29))
    {
      if (*(*(this + 31) + 96))
      {
        if (RecogController::accumulate(this, v91, v98))
        {
          v85 = *(this + 80) + 1;
          *(this + 80) = v85;
          v86 = *(this + 83);
          if (v85 > v86)
          {
            memset(v102, 0, 32);
            v87 = *(this + 84);
            v88 = 1.0;
            if (v85 < v87 + v86)
            {
              v88 = (v85 - v86) / v87;
            }

            *v95 = 0;
            ConstrainedTransAccMgr::computeTransform(*(this + 64), 1, v88, v102, v95);
          }
        }
      }
    }

    ++*(this + 78);
    if ((v13 & 1) == 0 || !*(this + 53))
    {
      *(this + 290) = 1;
    }

    ++*a3;
    BitArray::~BitArray(v97);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v98);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v99);
    return 0;
  }

  return 1;
}

void sub_2627DBA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va2, a17);
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  va_copy(va2, va1);
  v21 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  BitArray::~BitArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

void RecogController::maybeEstimateAndPreScoreActivePelsThisFrame(uint64_t result, BitArray *a2, uint64_t a3)
{
  if (*(result + 880) == 1)
  {
    v17 = v3;
    v18 = v4;
    v15 = 0u;
    v16 = 0u;
    SnapTime::recordTime(&v15, 1, 0, 0, 0);
    BitArray::setSize(a2, *(*(*(result + 248) + 16) + 144));
    if (*(result + 40))
    {
      v8 = 0;
      do
      {
        v9 = *(*(result + 32) + 8 * v8);
        if (v9)
        {
          Active::estimateActivePelsThisFrame(*(v9 + 280), a2);
        }

        else
        {
          FstCore::estimateActivePelsThisFrame(*(*(result + 48) + 8 * v8), a2);
        }

        ++v8;
      }

      while (v8 < *(result + 40));
    }

    v13 = 0u;
    v14 = 0u;
    SnapTime::recordTime(&v13, 1, 0, 0, 0);
    v10 = vaddq_s64(vsubq_s64(v14, v16), *(result + 736));
    *(result + 720) = vaddq_s64(vsubq_s64(v13, v15), *(result + 720));
    *(result + 736) = v10;
    (*(**(result + 248) + 56))(*(result + 248), *(result + 312), 0, a3, *(result + 904) + 304, 0);
    (*(**(result + 248) + 112))(*(result + 248), a2);
    (*(**(result + 248) + 64))(*(result + 248), *(result + 312), *(result + 904) + 304);
    memset(v12, 0, sizeof(v12));
    SnapTime::recordTime(v12, 1, 0, 0, 0);
    v11 = vaddq_s64(vsubq_s64(v14, v16), *(result + 768));
    *(result + 752) = vaddq_s64(vsubq_s64(v13, v15), *(result + 752));
    *(result + 768) = v11;
    PelScorer::startRecordRequestedPels(*(result + 248));
  }
}

uint64_t Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::add(uint64_t result, uint64_t *a2, void *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = ((*a2 >> 19) & 0x1FFFE000) + *(a2 + 2);
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = (-1640531527 * v7) >> -v8;
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
  }

  v12 = (v10 + 8 * v9);
  *(v5 + 32) = *v11;
  *(v11 + 8) = 0;
  v13 = *a2;
  *(v11 + 20) = *(a2 + 2);
  *(v11 + 12) = v13;
  *(v11 + 24) = *a3;
  *(v11 + 8) = v7;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v11 = *v12;
  }

  else
  {
    *v11 = 0;
    v14 = *v12;
    if (*v12)
    {
      do
      {
        v12 = v14;
        v14 = *v14;
      }

      while (v14);
    }
  }

  *v12 = v11;
  return result;
}

int64x2_t RecogController::maybeCleanupAfterEstimateAndPreScoreActivePels(RecogController *this, const BitArray *a2)
{
  if (*(this + 880) == 1)
  {
    v11 = v2;
    v12 = v3;
    v9 = 0u;
    v10 = 0u;
    SnapTime::recordTime(&v9, 1, 0, 0, 0);
    PelScorer::startRecordRequestedPels(*(this + 31));
    v7 = 0u;
    v8 = 0u;
    SnapTime::recordTime(&v7, 1, 0, 0, 0);
    result = vaddq_s64(vsubq_s64(v7, v9), *(this + 47));
    v6 = vaddq_s64(vsubq_s64(v8, v10), *(this + 48));
    *(this + 47) = result;
    *(this + 48) = v6;
  }

  return result;
}

BOOL RecogController::accumulate(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  *&v25[40] = 0u;
  v6 = PelStats::resetStats(v25);
  v7 = (*(*a1 + 208))(a1, v6);
  PelScorer::setupForUttAccumulate(v7, a3, v25);
  v8 = *(*(v7 + 120) + 56);
  v9 = *(*(*(a1 + 232) + 152) + 4 * *(a1 + 312));
  v10 = *(*(*((*(*a1 + 200))(a1) + 48) + 216) + 4 * (a2 >> 5)) & (1 << a2);
  v11 = *(a1 + 312);
  if (v11)
  {
    v12 = 18;
    if (v9 == 1)
    {
      v15 = *(*(*(a1 + 232) + 152) + 4 * (v11 - 1));
      if (v15 == 1)
      {
        v12 = 15;
      }

      else
      {
        v12 = 18;
      }

      if (v15 == 2)
      {
        v12 = 12;
      }
    }

    else if (v9 == 2)
    {
      v13 = *(*(*(a1 + 232) + 152) + 4 * (v11 - 1));
      if (v13 == 1)
      {
        v14 = 6;
      }

      else
      {
        v14 = 18;
      }

      if (v13 == 2)
      {
        v12 = 3;
      }

      else
      {
        v12 = v14;
      }
    }
  }

  else if (v9 == 1)
  {
    v12 = 9;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (!a2)
  {
    v16 = 0;
  }

  v17 = v12 + v16;
  v18 = *(a1 + 384);
  v19 = *(*(v18 + 16) + 4 * (v17 + 18 * *(a1 + 328)));
  *(a1 + 328) = v19;
  v20 = *(*(v18 + 32) + 4 * (v17 + 18 * v19));
  if (v20 == -1)
  {
    return 0;
  }

  v21 = *(a1 + 376) * *(*(a1 + 344) + 8 * v20);
  if (v19)
  {
    result = ConstrainedTransAccMgr::adaptPel(*(a1 + 512), a2, v8, a3, v21);
    if (!result)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (*(a1 + 324) >= *(a1 + 340))
  {
    return 0;
  }

  result = ConstrainedTransAccMgr::adaptPel(*(a1 + 512), a2, v8, a3, v21);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 324);
LABEL_30:
  v23 = *(a1 + 360);
  if (v23 && !((*(a1 + 320) + 1) % v23))
  {
    v24 = *(a1 + 376);
    if (v24 >= 1000000.0)
    {
      ConstrainedTransAccMgr::downScaleAccum(*(a1 + 512), 1u, 1u, 1000.0);
      v24 = *(a1 + 376) / 1000.0;
    }

    *(a1 + 376) = v24 / *(a1 + 368);
  }

  return 1;
}

void RecogController::recognizeOneDoFrames(RecogController *this, MemChunkRegion *a2, int a3, _BYTE *a4, __n128 a5)
{
  if (*(this + 104))
  {
    if (a2)
    {
      *(this + 288) = 1;
      v6 = *(this + 10);
      if (v6)
      {
        v7 = 0;
        v8 = *(this + 50);
        do
        {
          if ((*(v8 + v7) & 1) == 0)
          {
            v9 = *(*(this + 4) + 8 * v7);
            if (!v9)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4673, "recogctl/recogctl", 4, "%.500s", "bClientAbort in recognizeOneDoFrames");
            }

            Recognizer::setSearchAbortRecognizerStats(v9, 5);
            v8 = *(this + 50);
            *(v8 + v7) = 1;
            --*(this + 104);
            v6 = *(this + 10);
          }

          ++v7;
        }

        while (v7 < v6);
      }

      if (*(this + 290))
      {
        RecogController::restartPostSynchronousRecognition(this);
      }

      if (*(this + 232) == -1)
      {

        RecogController::doAtEndOfRecognition(this, a2, a5);
      }
    }

    else
    {
      v69 = 0u;
      v70 = 0u;
      v57 = 0u;
      v58 = 0u;
      SnapTime::recordTime(&v57, 1, 0, 0, 0);
      v69 = v57;
      v70 = v58;
      v12 = *(this + 29);
      v11 = *(this + 30);
      v68[0] = v12;
      v68[1] = v11;
      v68[2] = this + 292;
      v68[3] = this + 592;
      v68[4] = &v69;
      v68[5] = this + 624;
      if (v12 && (*v11 & 1) == 0)
      {
        ChannelMgr::maybeStartCollectingDataForUtt(ChannelMgr::smpChannelMgr, v12);
        v11 = *(this + 30);
      }

      v13 = *(this + 56);
      v14 = *(this + 60);
      v67[0] = "mainframetrans";
      v67[1] = v13;
      v67[2] = v14;
      v67[3] = this + 304;
      v67[4] = &v69;
      v67[5] = this + 688;
      if (v13 && (*v14 & 1) == 0)
      {
        (*(*v13 + 96))(v13, v11);
        v13 = *(this + 56);
        v11 = *(this + 30);
      }

      if (*(this + 55) == v13)
      {
        v15 = 0;
      }

      else
      {
        v15 = *(this + 55);
      }

      v16 = *(this + 59);
      v66[0] = "prefframetrans";
      v66[1] = v15;
      v66[2] = v16;
      v66[3] = this + 300;
      v66[4] = &v69;
      v66[5] = this + 656;
      if (v15 && (*v16 & 1) == 0)
      {
        (*(*v15 + 96))(v15, v11);
      }

      v17 = *(this + 57);
      v18 = *(this + 62);
      v19 = *(this + 63);
      v65[0] = "lookahead";
      v65[1] = v18;
      v65[2] = v19;
      v65[3] = this + 296;
      v65[4] = &v69;
      v65[5] = this + 784;
      if (v18 && (*v19 & 1) == 0)
      {
        (*(*v18 + 48))(v18, v17);
        v17 = *(this + 57);
        v19 = *(this + 63);
      }

      v20 = *(this + 53);
      v21 = *(this + 65);
      v64[0] = v20;
      v64[1] = v21;
      v64[2] = this + 308;
      v64[3] = this + 832;
      v64[4] = &v69;
      v64[5] = this + 784;
      if (v20 && (*v21 & 1) == 0)
      {
        (*(*v20 + 128))(v20, v17, v19);
      }

      v63 = 0;
      if (*(this + 104))
      {
        v22 = a3 - 1;
        do
        {
          if (*a4)
          {
            break;
          }

          v23 = RecogController::recognizeOneDoMainSearch(this, &v69, &v63);
          v24 = v23;
          *(this + 98) = v23;
          if (!*(this + 104))
          {
            break;
          }

          ProcessPrefilterer::ProcessPrefilterer(&v57, *(this + 53), *(this + 57), *(this + 63), (*(this + 78) + 1), v23 == 1, *(this + 156), *(this + 65), this + 77, this + 52, &v69, this + 49);
          v25 = v59;
          if (v59 <= v62)
          {
            v26 = v62;
          }

          else
          {
            v26 = v59;
          }

          if (v62 != -16)
          {
            v25 = v26;
          }

          if (v60 <= v25)
          {
            v27 = v25;
          }

          else
          {
            v27 = v60;
          }

          ProcessLookahead::ProcessLookahead(&v53, *(this + 62), *(this + 57), v27, v61 == 3, v24 == 1, *(this + 156), *(this + 63), this + 74, &v69, this + 49);
          v29 = v61 == 2;
          if (v59 <= v62)
          {
            v30 = v62;
          }

          else
          {
            v30 = v59;
          }

          if (v62 == -16)
          {
            v31 = v59;
          }

          else
          {
            v31 = v30;
          }

          if (v60 <= v31)
          {
            v32 = v31;
          }

          else
          {
            v32 = v60;
          }

          if (v61 == 3)
          {
            if (v53)
            {
              v33 = v56;
              v29 = (*v54 & 1) == 0 && *(v54 + 16) <= v56;
            }

            else
            {
              v29 = 0;
              v33 = v56;
            }

            if (v33 <= v55)
            {
              v32 = v55;
            }

            else
            {
              v32 = v33;
            }
          }

          ProcessFrameTransform::ProcessFrameTransform(&v50, v28, *(this + 55), *(this + 30), v32, v29, v24 == 1, *(this + 156), *(this + 59), this + 75, &v69, this + 41);
          if (v24 == 2)
          {
            v29 = 1;
          }

          if (SDWORD1(v52) <= v52)
          {
            v34 = v52;
          }

          else
          {
            v34 = DWORD1(v52);
          }

          if (v50)
          {
            LODWORD(v34) = (*(*v50 + 56))(v50, v34);
          }

          v35 = (*(this + 78) + 1);
          if (v34 > v35)
          {
            v35 = SDWORD1(v52) <= v52 ? v52 : DWORD1(v52);
            if (v50)
            {
              v35 = (*(*v50 + 56))(v50, v35);
            }
          }

          v36 = *(this + 79);
          v37 = v35 <= v36 + 1 ? (v36 + 1) : v35;
          ProcessFrameTransform::ProcessFrameTransform(&v47, v35, *(this + 56), *(this + 30), v37, v29, v24 == 2, *(this + 156), *(this + 60), this + 76, &v69, this + 43);
          v38 = v50 && (*v51 & 1) == 0 && *(v51 + 16) <= SDWORD1(v52) || v47 && (*v48 & 1) == 0 && *(v48 + 16) <= SHIDWORD(v49);
          v39 = v24 == 1 ? v38 : 0;
          v40.i64[0] = v49;
          v40.i64[1] = v52;
          v41 = vmaxvq_s32(v40);
          v42 = v24 == 2 ? 1 : v39;
          ProcessChannel::ProcessChannel(v46, v41, v38, v42, *(this + 156), *(this + 29), *(this + 30), this + 73, this + 37, &v69, this + 39);
          ProcessChannel::~ProcessChannel(v46);
          ProcessFrameTransform::~ProcessFrameTransform(&v47);
          ProcessFrameTransform::~ProcessFrameTransform(&v50);
          ProcessLookahead::~ProcessLookahead(&v53);
          ProcessPrefilterer::~ProcessPrefilterer(&v57);
          if (!*(this + 104))
          {
            break;
          }
        }

        while (v22 >= v63);
      }

      PrefiltererThreadInsurance::~PrefiltererThreadInsurance(v64);
      LookaheadThreadInsurance::~LookaheadThreadInsurance(v65);
      FrameTransformThreadInsurance::~FrameTransformThreadInsurance(v66);
      FrameTransformThreadInsurance::~FrameTransformThreadInsurance(v67);
      ChannelThreadInsurance::~ChannelThreadInsurance(v68);
      if (!*(this + 104))
      {
        if (*(this + 290) == 1)
        {
          RecogController::restartPostSynchronousRecognition(this);
        }

        if (*(this + 232) == -1)
        {
          RecogController::doAtEndOfRecognition(this, v43, v44);
        }
      }
    }
  }
}

void sub_2627DC7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  LookaheadThreadInsurance::~LookaheadThreadInsurance(&a51);
  FrameTransformThreadInsurance::~FrameTransformThreadInsurance(va);
  FrameTransformThreadInsurance::~FrameTransformThreadInsurance((v56 - 224));
  ChannelThreadInsurance::~ChannelThreadInsurance((v56 - 176));
  _Unwind_Resume(a1);
}

CTFTMgr **RecogController::doAtEndOfRecognition(RecogController *this, MemChunkRegion *a2, __n128 a3)
{
  if (*(this + 232) != -1)
  {
    RecogController::setCallerThreadIdForChildren(this, -1);
  }

  v4 = *(this + 30);
  if (v4 && (*v4 & 1) == 0)
  {
    v5 = *(this + 29);
    if (*(v5 + 416) == 1)
    {
      v6 = ChannelMgr::smpChannelMgr;
      do
      {
        ChannelMgr::collectAvailableDataForUtt(v6, v5);
        v5 = *(this + 29);
      }

      while ((*(v5 + 416) & 1) != 0);
      v4 = *(this + 30);
    }

    UttFeatureArraySynchronizedArray::update(v4, v5);
  }

  if (*(this + 54))
  {
    v7 = *(*(this + 114) + 48) == 1 ? 2 : 1;
    if (Utterance::numCompleteRecogFrames(*(this + 29), v7) != *(*(this + 54) + 16))
    {
      a3.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4886, "recogctl/recogctl", 14, "%s", &errStr_recogctl_recogctl_E_PREFILTERRESULT_INCOMPATIBLE_WITH_UTT);
    }
  }

  v8 = *(this + 59);
  if (v8 && (*v8 & 1) == 0)
  {
    (*(**(this + 55) + 80))(*(this + 55), (*(*(this + 30) + 16) - 1), a3);
  }

  v9 = *(this + 60);
  if (v9 && (*v9 & 1) == 0)
  {
    (*(**(this + 56) + 80))(*(this + 56), (*(*(this + 30) + 16) - 1), a3);
  }

  if (*(this + 10))
  {
    for (i = 0; i < *(this + 10); ++i)
    {
      if (*(this + 30))
      {
        v11 = *(this + 58);
        if (v11)
        {
          v12 = *(*(this + 4) + 8 * i);
          if (v12)
          {
            goto LABEL_32;
          }

          FstCore::setRecogEndTime(*(*(this + 6) + 8 * i), *(v11 + 16));
        }

        else
        {
          v11 = *(this + 57);
          if (v11)
          {
            if (*(*(this + 4) + 8 * i) || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 4942, "recogctl/recogctl", 4, "%.500s", "Prefiltering in doAtEndOfRecognition"), (v11 = *(this + 57)) != 0))
            {
              v12 = *(*(this + 4) + 8 * i);
LABEL_32:
              Recognizer::setRecogEndTime(v12, *(v11 + 16));
            }
          }
        }
      }

      v13 = *(*(this + 4) + 8 * i);
      if (v13)
      {
        Recognizer::endTopRecPassSyncRecog(v13);
      }

      else
      {
        FstCore::endTopRecPassSyncRecog(*(*(this + 6) + 8 * i));
      }
    }
  }

  if (*(this + 113))
  {
    *(*(this + 113) + 1120) = MemChunkRegion::getAndResetInternalLocalMaxAllocBytes(0, a2);
  }

  if (*(this + 8) == 1)
  {
    v14 = *(*(this + 31) + 120);
    MrecInitModule_sdpres_sdapi();
    if (*(this + 224) == 1)
    {
      PelScoreCacheData = PelScoreCache::makePelScoreCacheData(v14);
      (*(*this + 224))(this, PelScoreCacheData);
      v16 = *(this + 53);
      if (v16)
      {
        v17 = (*(*v16 + 64))(v16);
        (*(*this + 216))(this, v17);
      }
    }
  }

  v18 = *(this + 53);
  if (v18)
  {
    v19 = *(this + 113);
    if (v19)
    {
      (*(*v18 + 80))(v18, v19 + 16, v19 + 192, v19 + 480, v19 + 656);
      v20 = *(this + 113);
      v21 = *(this + 53);
      v20[18] = v21;
      v22 = vsubq_s64(*(this + 50), v21);
      v23 = *(this + 52);
      v20[17] = v23;
      v20[46] = vsubq_s64(*(this + 49), v23);
      v20[47] = v22;
      v18 = *(this + 53);
    }

    (*(*v18 + 56))(v18);
  }

  v24 = *(this + 62);
  if (v24)
  {
    (*(*v24 + 24))(v24);
    DgnDelete<SynchronizedArray<ScoreFixArray>>(*(this + 63));
    *(this + 63) = 0;
  }

  v25 = *(this + 55);
  if (!v25 || v25 == *(this + 56))
  {
    *(this + 55) = 0;
    v28 = *(this + 59);
    if (*(this + 60) != v28)
    {
      DgnDelete<UttFeatureArraySynchronizedArray>(v28);
    }
  }

  else
  {
    (*(*v25 + 72))(v25);
    DgnDelete<FrameTransformer>(*(this + 55));
    *(this + 55) = 0;
    v26 = *(this + 29);
    v27 = (*(**(this + 53) + 144))(*(this + 53));
    Utterance::setTransformedFrames(v26, v27, *(this + 122), *(this + 59));
  }

  *(this + 59) = 0;
  *(this + 122) = 0;
  *(this + 57) = 0;
  v29 = *(this + 56);
  if (v29)
  {
    (*(*v29 + 72))(v29);
    DgnDelete<FrameTransformer>(*(this + 56));
    *(this + 56) = 0;
    Utterance::setTransformedFrames(*(this + 29), *(this + 6), *(this + 123), *(this + 60));
    v30 = 0;
    *(this + 60) = 0;
    *(this + 123) = 0;
  }

  else
  {
    v30 = *(this + 60);
  }

  DgnDelete<UttFeatureArraySynchronizedArray>(v30);
  *(this + 60) = 0;
  result = DgnDelete<ConstrainedTransAccMgr>(*(this + 64));
  *(this + 64) = 0;
  *(this + 123) = 0;
  *(this + 58) = 0;
  v32 = *(this + 113);
  if (v32)
  {
    v33 = *(this + 29);
    if (v33)
    {
      *(v32 + 976) = *(v33 + 8);
      *(v32 + 980) = *(v33 + 418);
      *(v32 + 984) = *(v33 + 24);
      *(v32 + 1000) = *(v33 + 80);
      *(v32 + 1008) = *(v33 + 88);
      *(v32 + 1016) = *(v33 + 96);
      *(v32 + 1020) = *(v33 + 344);
      v34 = *(v33 + 360);
      if (*(v33 + 352) == 0)
      {
        if (!*(v33 + 368) && !*(v33 + 376))
        {
          goto LABEL_64;
        }

        v34 = 0;
      }

      *(v32 + 1024) = *(v33 + 352);
      *(v32 + 1032) = v34;
      *(v32 + 1040) = *(v33 + 368);
      v35 = *(v33 + 400);
      *(v32 + 1056) = *(v33 + 384);
      *(v32 + 1072) = v35;
    }

LABEL_64:
    v36 = *(this + 38);
    *(v32 + 1136) = *(this + 37);
    *(v32 + 1152) = v36;
    v37 = *(this + 40);
    *(v32 + 1168) = *(this + 39);
    *(v32 + 1184) = v37;
    v38 = *(this + 42);
    *(v32 + 1200) = *(this + 41);
    *(v32 + 1216) = v38;
    v39 = *(this + 44);
    *(v32 + 1232) = *(this + 43);
    *(v32 + 1248) = v39;
    v40 = *(this + 46);
    *(v32 + 1264) = *(this + 45);
    *(v32 + 1280) = v40;
    v41 = *(this + 48);
    *(v32 + 1296) = *(this + 47);
    *(v32 + 1312) = v41;
  }

  if (*(this + 544) == 1)
  {
    if (*(this + 10))
    {
      v42 = 0;
      do
      {
        v43 = *(*(this + 4) + 8 * v42);
        if (!v43)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 5111, "recogctl/recogctl", 4, "%.500s", "addCrumbsToPrefilterResult");
          v43 = *(*(this + 4) + 8 * v42);
        }

        Recognizer::addCrumbsToPrefilterResult(v43, *(this + 288), *(this + 67), *(this + 137), *(this + 66));
        ++v42;
      }

      while (v42 < *(this + 10));
    }

    v44 = *(this + 66);

    return PrefilterResult::setComplete(v44);
  }

  return result;
}

uint64_t RecogController::finishRecognizeOne(uint64_t a1, MemChunkRegion *a2)
{
  *(a1 + 897) = 1;
  LODWORD(v3) = *(a1 + 40);
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 16;
    do
    {
      v8 = *(*(a1 + 32) + 8 * v6);
      if (v8)
      {
        RecognizerResults = Recognizer::makeRecognizerResults(v8, *(a1 + 288), 1);
      }

      else
      {
        RecognizerResults = FstCore::makeRecognizerResults(*(*(a1 + 48) + 8 * v6), *(a1 + 288));
      }

      v10 = RecognizerResults;
      v11 = *(a1 + 904);
      if (v11)
      {
        v12 = *(*(a1 + 32) + 8 * v6);
        if (v12)
        {
          v13 = *v11 + v5;
          v14 = v12[35];
          v73[0].i32[0] = 0;
          Recognizer::getRecognizerStats(v12, v13, v13 + 176, v13 + 328, v13 + 752, v13 + 928, (v13 + 1080), v73, (v13 + 1508), (v13 + 1512), (v13 + 1516), (v13 + 1520), (v13 + 1528), (v13 + 1536), (v13 + 1540), (v13 + 1544), v13 + 1552);
          *(v13 + 1504) = v73[0].i32[0] == 2;
          NetMgr::getNetMgrStats((*&v14 + 16), (v13 + 360), (v13 + 1112));
        }

        else
        {
          v15 = *v11;
          v13 = v15 + 2368 * v6;
          v16 = (v15 + v5);
          v73[0].i32[0] = 0;
          FstCore::getRecognizerStats(*(*(a1 + 48) + 8 * v6), v15 + v5, &v16[11], &v16[20].i64[1], v15 + v5 + 752, (v15 + v5 + 928), (v15 + v5 + 1080), v73, (v15 + v5 + 1508), &v16[94].i32[2], &v16[94].i32[3], v16[95].i64, &v16[95].i64[1], v16[96].i32, &v16[96].i32[1], &v16[96].i64[1], v16[97].i64);
          FstCore::getFstStats(*(*(a1 + 48) + 8 * v6), &v16[29], v16 + 76);
          v16[94].i32[0] = v73[0].i32[0] == 2;
        }

        v17 = (*(a1 + 864) + v7);
        v18 = (*(a1 + 816) + v7);
        v19 = *v17;
        *(v13 + 736) = *v17;
        v20 = vsubq_s64(*v18, v19);
        v21 = v17[-1];
        *(v13 + 720) = v21;
        *(v13 + 1472) = vsubq_s64(v18[-1], v21);
        *(v13 + 1488) = v20;
      }

      v22 = *(*(a1 + 32) + 8 * v6);
      if (v22)
      {
        Recognizer::endTopRecSyncRecog(v22);
      }

      else
      {
        FstCore::endTopRecSyncRecog(*(*(a1 + 48) + 8 * v6));
        RecogCtlMgr::releaseVirtMap(RecogCtlMgr::smpRecogCtlMgr, v23);
      }

      v73[0].i64[0] = &gGlobalMemChunkRegion;
      if (MemChunkRegion::smTlsID != -1)
      {
        v24 = pthread_getspecific(MemChunkRegion::smTlsID);
        if (v24)
        {
          v25 = *v24;
          if (!*v24)
          {
            v25 = &gGlobalMemChunkRegion;
LABEL_20:
            pthread_setspecific(MemChunkRegion::smTlsID, 0);
            goto LABEL_21;
          }

          if (v25 != &gGlobalMemChunkRegion)
          {
            goto LABEL_20;
          }
        }
      }

      v25 = &gGlobalMemChunkRegion;
LABEL_21:
      v73[0].i64[0] = v25;
      v26 = *(a2 + 2);
      if (v26 == *(a2 + 3))
      {
        DgnPrimArray<unsigned long long>::reallocElts(a2, 1, 1);
        v26 = *(a2 + 2);
      }

      *(*a2 + 8 * v26) = v10;
      *(a2 + 2) = v26 + 1;
      Latch<MemChunkRegion,LatchAdapter>::~Latch(v73[0].i64);
      ++v6;
      v3 = *(a1 + 40);
      v5 += 2368;
      v7 += 32;
    }

    while (v6 < v3);
  }

  if (*(a1 + 232))
  {
    (*(**(a1 + 248) + 48))(*(a1 + 248), a2);
    v27 = *(a1 + 448);
    if (v27)
    {
      (*(*v27 + 72))(v27);
    }

    DgnDelete<UttFeatureArraySynchronizedArray>(*(a1 + 240));
    *(a1 + 240) = 0;
    LODWORD(v3) = *(a1 + 40);
  }

  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  v80 = 0;
  v81 = 0;
  v78 = 0;
  v79 = 0;
  v76 = 0;
  v77 = 0;
  v74 = 0;
  v75 = 0;
  if (v3)
  {
    v28 = 0;
    do
    {
      v29 = *(a1 + 32);
      v30 = *(v29 + 8 * v28);
      if (v30)
      {
        Recognizer::setConstraint(*(v29 + 8 * v28), 0);
        v31 = v85;
        if (v85 == HIDWORD(v85))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v84, 1, 1);
          v31 = v85;
        }

        v32 = (v84 + 32 * v31);
        v33 = *(v30 + 2040);
        *v32 = *(v30 + 2024);
        v32[1] = v33;
        LODWORD(v85) = v31 + 1;
        v34 = v83;
        if (v83 == HIDWORD(v83))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v82, 1, 1);
          v34 = v83;
        }

        v35 = (v82 + 32 * v34);
        v36 = *(v30 + 2072);
        *v35 = *(v30 + 2056);
        v35[1] = v36;
        LODWORD(v83) = v34 + 1;
        v37 = v81;
        if (v81 == HIDWORD(v81))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v80, 1, 1);
          v37 = v81;
        }

        v38 = (v80 + 32 * v37);
        v39 = *(v30 + 2200);
        *v38 = *(v30 + 2184);
        v38[1] = v39;
        LODWORD(v81) = v37 + 1;
        v40 = v79;
        if (v79 == HIDWORD(v79))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v78, 1, 1);
          v40 = v79;
        }

        v41 = (v78 + 32 * v40);
        v42 = *(v30 + 2104);
        *v41 = *(v30 + 2088);
        v41[1] = v42;
        LODWORD(v79) = v40 + 1;
        v43 = v77;
        if (v77 == HIDWORD(v77))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v76, 1, 1);
          v43 = v77;
        }

        v44 = (v76 + 32 * v43);
        v45 = *(v30 + 2136);
        *v44 = *(v30 + 2120);
        v44[1] = v45;
        LODWORD(v77) = v43 + 1;
        v46 = v75;
        if (v75 == HIDWORD(v75))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v74, 1, 1);
          v46 = v75;
        }

        v47 = v74 + 32 * v46;
        v48 = *(v30 + 2152);
        v49 = *(v30 + 2160);
        v50 = *(v30 + 2176);
      }

      else
      {
        FstCore::setConstraint(*(*(a1 + 48) + 8 * v28), 0);
        v51 = *(*(a1 + 48) + 8 * v28);
        v52 = v85;
        v53 = v51;
        if (v85 == HIDWORD(v85))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v84, 1, 1);
          v52 = v85;
          v53 = *(*(a1 + 48) + 8 * v28);
        }

        v54 = (v84 + 32 * v52);
        v55 = *(v51 + 512);
        *v54 = *(v51 + 496);
        v54[1] = v55;
        LODWORD(v85) = v52 + 1;
        v56 = v83;
        v57 = v53;
        if (v83 == HIDWORD(v83))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v82, 1, 1);
          v56 = v83;
          v57 = *(*(a1 + 48) + 8 * v28);
        }

        v58 = (v82 + 32 * v56);
        v59 = *(v53 + 544);
        *v58 = *(v53 + 528);
        v58[1] = v59;
        LODWORD(v83) = v56 + 1;
        v60 = v81;
        v61 = v57;
        if (v81 == HIDWORD(v81))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v80, 1, 1);
          v60 = v81;
          v61 = *(*(a1 + 48) + 8 * v28);
        }

        v62 = (v80 + 32 * v60);
        v63 = *(v57 + 672);
        *v62 = *(v57 + 656);
        v62[1] = v63;
        LODWORD(v81) = v60 + 1;
        v64 = v79;
        v65 = v61;
        if (v79 == HIDWORD(v79))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v78, 1, 1);
          v64 = v79;
          v65 = *(*(a1 + 48) + 8 * v28);
        }

        v66 = (v78 + 32 * v64);
        v67 = *(v61 + 576);
        *v66 = *(v61 + 560);
        v66[1] = v67;
        LODWORD(v79) = v64 + 1;
        v68 = v77;
        v69 = v65;
        if (v77 == HIDWORD(v77))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v76, 1, 1);
          v68 = v77;
          v69 = *(*(a1 + 48) + 8 * v28);
        }

        v70 = (v76 + 32 * v68);
        v71 = *(v65 + 608);
        *v70 = *(v65 + 592);
        v70[1] = v71;
        LODWORD(v77) = v68 + 1;
        v46 = v75;
        if (v75 == HIDWORD(v75))
        {
          DgnArray<PrefilterResultFrame>::reallocElts(&v74, 1, 1);
          v46 = v75;
        }

        v47 = v74 + 32 * v46;
        v48 = *(v69 + 624);
        v49 = *(v69 + 632);
        v50 = *(v69 + 648);
      }

      *v47 = v48;
      *(v47 + 8) = v49;
      *(v47 + 24) = v50;
      LODWORD(v75) = v46 + 1;
      ++v28;
    }

    while (v28 < *(a1 + 40));
  }

  if (*(a1 + 904))
  {
    *(*(a1 + 904) + 1128) = MemChunkRegion::getAndResetInternalLocalMaxAllocBytes(0, a2);
    memset(v73, 0, sizeof(v73));
    SnapTime::recordTime(v73, 1, 1, 1, 1);
    RecogStats::initRecognitionPhaseTimes(*(a1 + 904), (a1 + 160), (a1 + 192), &v84, &v82, &v80, &v78, &v76, &v74, v73);
  }

  DgnIArray<Utterance *>::~DgnIArray(&v74);
  DgnIArray<Utterance *>::~DgnIArray(&v76);
  DgnIArray<Utterance *>::~DgnIArray(&v78);
  DgnIArray<Utterance *>::~DgnIArray(&v80);
  DgnIArray<Utterance *>::~DgnIArray(&v82);
  return DgnIArray<Utterance *>::~DgnIArray(&v84);
}

void sub_2627DD658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  DgnIArray<Utterance *>::~DgnIArray(&a24);
  DgnIArray<Utterance *>::~DgnIArray(&a26);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnIArray<Utterance *>::~DgnIArray(v27 - 136);
  DgnIArray<Utterance *>::~DgnIArray(v27 - 120);
  DgnIArray<Utterance *>::~DgnIArray(v27 - 104);
  _Unwind_Resume(a1);
}

void FstCore::getRecognizerStats(int32x2_t *a1, uint64_t a2, LMStats *this, uint64_t a4, uint64_t a5, LMStats *a6, int32x2_t *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, void *a12, void *a13, _DWORD *a14, _DWORD *a15, void *a16, uint64_t a17)
{
  LMStats::resetStats(this);
  LMStats::resetStats(a6);
  *a9 = 0;
  *a10 = 0;
  *a11 = 0;
  *a12 = 0;
  *a13 = 0;
  *a16 = 0;
  PelStats::operator=(a2, &a1[32]);
  PelStats::operator=(a5, &a1[10]);
  PelStats::operator-=(a5, &a1[32]);
  SearchStats::operator=(a4, &a1[58]);
  SearchStats::operator=(a7, &a1[54]);
  a7[1].i32[0] = a1[59].i32[0];
  SearchStats::operator-=(a7, a1 + 58);
  a7[1].i32[0] = a1[55].i32[0];
  *a8 = a1[6].i32[0];
  LatticeStats::operator=(a17, &a1[86]);
  *a14 = a1[137].i32[0];
  *a15 = a1[137].i32[1];
}

double FstCore::getFstStats(int64x2_t *this, FstStats *a2, int64x2_t *a3)
{
  FstStats::operator=(a2, this[86].i64);
  FstStats::operator=(a3, this[70].i64);

  *&result = FstStats::operator-=(a3, this + 86).u64[0];
  return result;
}

double Recognizer::getRecognizerStats(int32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, void *a12, void *a13, _DWORD *a14, _DWORD *a15, double *a16, uint64_t a17)
{
  PelStats::operator=(a2, &a1[155]);
  LMStats::operator=(a3, &a1[177]);
  SearchStats::operator=(a4, &a1[196]);
  PelStats::operator=(a5, &a1[110]);
  PelStats::operator-=(a5, &a1[155]);
  LMStats::operator=(a6, &a1[132]);
  LMStats::operator-=(a6, &a1[177]);
  SearchStats::operator=(a7, &a1[151]);
  a7[1].i32[0] = a1[197].i32[0];
  SearchStats::operator-=(a7, a1 + 196);
  a7[1].i32[0] = a1[152].i32[0];
  *a8 = a1[43].i32[1];
  *a9 = a1[288].i32[1];
  *a10 = a1[289].i32[0];
  *a11 = a1[289].i32[1];
  *a12 = a1[290];
  *a13 = a1[291];
  *a14 = a1[292].i32[0];
  *a15 = a1[292].i32[1];
  *a16 = *&a1[201];

  return LatticeStats::operator=(a17, &a1[202]);
}

int32x2_t NetMgr::getNetMgrStats(NetMgr *this, NetStats *a2, NetStats *a3)
{
  NetStats::operator=(a2, this + 302680);
  NetStats::operator=(a3, this + 302576);

  return NetStats::operator-=(a3, this + 302680);
}

uint64_t RecogController::abortRecognizeOne(RecogController *this)
{
  *(this + 897) = 1;
  if (*(this + 10))
  {
    v2 = 0;
    do
    {
      if (!*(*(this + 4) + 8 * v2))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/recogctl/recogctl.cpp", 5360, "recogctl/recogctl", 4, "%.500s", "abortRecognizeOne");
      }

      v3 = (*(*this + 40))(this);
      v4 = *(*(this + 4) + 8 * v2);
      if ((v3 & 1) == 0)
      {
        Recognizer::endTopRecPassSyncRecog(v4);
        v4 = *(*(this + 4) + 8 * v2);
      }

      Recognizer::endTopRecSyncRecog(v4);
      Recognizer::setConstraint(*(*(this + 4) + 8 * v2++), 0);
    }

    while (v2 < *(this + 10));
  }

  if (*(this + 29))
  {
    (*(**(this + 31) + 48))(*(this + 31));
    DgnDelete<UttFeatureArraySynchronizedArray>(*(this + 30));
    *(this + 30) = 0;
  }

  result = (*(*this + 40))(this);
  if ((result & 1) == 0)
  {
    v6 = *(this + 53);
    if (v6)
    {
      (*(*v6 + 56))(v6);
    }

    v7 = *(this + 62);
    if (v7)
    {
      (*(*v7 + 24))(v7);
      DgnDelete<SynchronizedArray<ScoreFixArray>>(*(this + 63));
      *(this + 63) = 0;
    }

    v8 = *(this + 55);
    if (!v8 || v8 == *(this + 56))
    {
      *(this + 55) = 0;
      v9 = *(this + 59);
      if (*(this + 60) == v9)
      {
LABEL_20:
        *(this + 59) = 0;
        *(this + 122) = 0;
        *(this + 57) = 0;
        v10 = *(this + 56);
        if (v10)
        {
          (*(*v10 + 72))(v10);
          DgnDelete<FrameTransformer>(*(this + 56));
          *(this + 56) = 0;
        }

        DgnDelete<UttFeatureArraySynchronizedArray>(*(this + 60));
        *(this + 60) = 0;
        result = DgnDelete<ConstrainedTransAccMgr>(*(this + 64));
        *(this + 64) = 0;
        *(this + 123) = 0;
        *(this + 58) = 0;
        return result;
      }
    }

    else
    {
      (*(*v8 + 72))(v8);
      DgnDelete<FrameTransformer>(*(this + 55));
      *(this + 55) = 0;
      v9 = *(this + 59);
    }

    DgnDelete<UttFeatureArraySynchronizedArray>(v9);
    goto LABEL_20;
  }

  return result;
}

uint64_t RecogController::makePartialResult(uint64_t this)
{
  if (*(this + 40))
  {
    v1 = this;
    v2 = 0;
    while (1)
    {
      *(*(v1 + 72) + 16 * v2 + 8) = 0;
      *(*(v1 + 88) + 16 * v2 + 8) = 0;
      if (*(*(v1 + 32) + 8 * v2))
      {
        break;
      }

      *(*(v1 + 104) + 4 * v2) = FstCore::makePartialResult(*(*(v1 + 48) + 8 * v2), v1 + 120, v1 + 136);
      v9 = *(v1 + 128);
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          v11 = *(v1 + 88) + 16 * v2;
          v12 = *(v11 + 8);
          if (v12 == *(v11 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(*(v1 + 88) + 16 * v2, 1, 1);
            v12 = *(v11 + 8);
          }

          *(*v11 + 4 * v12) = 1;
          ++*(v11 + 8);
          v9 = *(v1 + 128);
        }
      }

LABEL_20:
      v44 = 0;
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v40 = 0;
      v41 = 0;
      if (v9)
      {
        v13 = 0;
        v37 = 0;
        v14 = 0;
        v15 = 88;
        while (1)
        {
          Root = VocMgr::getRoot(VocMgr::smpVocMgr, *(*(v1 + 120) + v15));
          if (Root >> 25 == 126)
          {
            v17 = 127;
          }

          else
          {
            v17 = Root >> 25;
          }

          v18 = *(v1 + 120) + v15;
          v19 = *(v18 - 72);
          v20 = *(v18 - 64);
          v21 = *(v1 + 72) + 16 * v2;
          v22 = *(v21 + 8);
          if (v22 == *(v21 + 12))
          {
            DgnArray<RecogResultToken>::reallocElts(*(v1 + 72) + 16 * v2, 1, 1);
            LODWORD(v22) = *(v21 + 8);
          }

          v23 = *v21 + 96 * v22;
          *v23 = Root >> 25 == 126;
          *(v23 + 4) = v17;
          *(v23 + 8) = 0;
          *(v23 + 12) = Root & 0xFFFFFF;
          *(v23 + 16) = 16777212;
          *(v23 + 20) = v19;
          *(v23 + 28) = v20;
          *(v23 + 32) = 0;
          *(v23 + 40) = 0;
          *(v23 + 48) = 0;
          *(v23 + 56) = 0xFFFFFFFF00000000;
          *(v23 + 64) = 0;
          *(v23 + 72) = 0;
          *(v23 + 80) = 0;
          *(v23 + 88) = 0;
          *(v23 + 84) = 0;
          ++*(v21 + 8);
          v24 = *(*(*(v1 + 88) + 16 * v2) + 4 * v13);
          if (v24 == 3)
          {
            goto LABEL_36;
          }

          if (v24 == 2)
          {
            goto LABEL_33;
          }

          if (v24 == 1)
          {
            break;
          }

LABEL_39:
          ++v13;
          v15 += 112;
          if (v13 >= *(v1 + 128))
          {
            v28 = v14;
            v29 = HIDWORD(v37);
            v30 = v37;
            goto LABEL_42;
          }
        }

        v25 = v41;
        if (v41 == HIDWORD(v41))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v40, 1, 1);
          v25 = v41;
        }

        *(v40 + 4 * v25) = Root;
        LODWORD(v41) = v41 + 1;
        LODWORD(v37) = *(*(v1 + 120) + v15 - 68) + v37 + *(*(v1 + 120) + v15 - 64);
LABEL_33:
        v26 = v43;
        if (v43 == HIDWORD(v43))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v42, 1, 1);
          v26 = v43;
        }

        *(v42 + 4 * v26) = Root;
        LODWORD(v43) = v43 + 1;
        HIDWORD(v37) += *(*(v1 + 120) + v15 - 68) + *(*(v1 + 120) + v15 - 64);
LABEL_36:
        v27 = v45;
        if (v45 == HIDWORD(v45))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v44, 1, 1);
          v27 = v45;
        }

        *(v44 + 4 * v27) = Root;
        LODWORD(v45) = v45 + 1;
        v14 += *(*(v1 + 120) + v15 - 68) + *(*(v1 + 120) + v15 - 64);
        goto LABEL_39;
      }

      v28 = 0;
      v29 = 0;
      v30 = 0;
LABEL_42:
      v31 = *(v1 + 904);
      if (v31)
      {
        v32 = *v31;
        v33 = (*(*v1 + 160))(v1, v2);
        v38 = 0u;
        v39 = 0u;
        SnapTime::recordTime(&v38, 1, 1, 1, 1);
        v34 = v32 + 2368 * v2;
        v35 = *(v1 + 904);
        v36 = vsubq_s64(v39, v35[69]);
        v38 = vsubq_s64(v38, v35[68]);
        v39 = v36;
        PRStats::recordPartialResult(v34 + 1960, &v44, v28 * v33, v38.i64);
        PRStats::recordPartialResult(v34 + 2096, &v42, v29 * v33, v38.i64);
        PRStats::recordPartialResult(v34 + 2232, &v40, v30 * v33, v38.i64);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
      this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v44);
      if (++v2 >= *(v1 + 40))
      {
        return this;
      }
    }

    v3 = *(v1 + 64);
    if (v3)
    {
      v4 = *(v1 + 520);
      if (v3 == 2)
      {
        v5 = *(v1 + 424);
        if (v5)
        {
          v6 = (*(*v5 + 176))(v5);
          if (v6)
          {
            v7 = (*(**(v1 + 424) + 184))(*(v1 + 424));
            v8 = (*(**(v1 + 424) + 96))(*(v1 + 424));
LABEL_19:
            *(*(v1 + 104) + 4 * v2) = Recognizer::makePartialResult(*(*(v1 + 32) + 8 * v2), v4, v6, v7, v8, (v1 + 120), v1 + 136, *(v1 + 88) + 16 * v2);
            v9 = *(v1 + 128);
            goto LABEL_20;
          }

          v7 = 0;
LABEL_18:
          v8 = -16;
          goto LABEL_19;
        }
      }

      v7 = 0;
    }

    else
    {
      v7 = 0;
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_18;
  }

  return this;
}

void sub_2627DE1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

void RecogControllerBase::makeRecogController(uint64_t a1, const RecogSpec *a2, uint64_t a3, PrefiltererSearchParamSet *a4, SearchCrossLayerParamSet *a5)
{
  v7 = a3;
  if (a1)
  {
    v10 = MemChunkAlloc(0x30uLL, 0);
    ThreadedRecogController::ThreadedRecogController(v10, a1, a2, v7, a4, a5);
  }

  else
  {
    v11 = MemChunkAlloc(0x420uLL, 0);
    RecogController::RecogController(v11, a2, v7, a4, a5);
  }
}

uint64_t RecogController::getPartialResultMicrosecPerRecogFrame(RecogController *this, unsigned int a2)
{
  v2 = *(*(this + 4) + 8 * a2);
  if (v2)
  {
    v3 = (v2 + 356);
  }

  else
  {
    v3 = (*(*(this + 6) + 8 * a2) + 56);
  }

  return *v3;
}

void *DgnArray<PRStatsItem>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 96 * v2 - 48;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a1 + v3);
      v3 -= 96;
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

void *DgnIOwnArray<RecogSpecLayer *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<RecogSpecLayer>(*(*a1 + v3));
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

RecogSpecLayer *DgnIOwnArray<RecogSpecLayer *>::destructAt(RecogSpecLayer *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<RecogSpecLayer>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

unsigned int *DgnIOwnArray<RecogSpecLayer *>::copyArraySlice(unsigned int *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  v8 = result[3];
  if (a4 > v8)
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(result, a4 - v8, 0);
  }

  v9 = v7[2];
  if (v9 <= a4)
  {
    if (v9 < a4)
    {
      do
      {
        *(*v7 + 8 * v9++) = 0;
      }

      while (a4 != v9);
    }
  }

  else
  {
    result = DgnIOwnArray<RecogSpecLayer *>::destructAt(v7, a4, v9 - a4);
  }

  v7[2] = a4;
  if (a4)
  {
    v10 = 0;
    do
    {
      *(*v7 + v10) = *(*a2 + 8 * a3++);
      v10 += 8;
    }

    while (8 * a4 != v10);
  }

  return result;
}

void *DgnArray<RecogLayerStats>::releaseAll(uint64_t a1)
{
  DgnArray<RecogLayerStats>::destructAt(a1, 0, *(a1 + 8));
  result = *a1;
  if (*a1)
  {
    result = MemChunkFree(result, 0);
    *a1 = 0;
  }

  *(a1 + 8) = 0;
  return result;
}

void DgnArray<RecogLayerStats>::destructAt(void *a1, int a2, int a3)
{
  v3 = a3 + a2;
  if (a3 + a2 > a2)
  {
    v5 = v3;
    v6 = a2;
    v7 = 2368 * v3 - 408;
    do
    {
      --v5;
      v8 = *a1 + v7;
      PRStats::~PRStats((v8 + 272));
      PRStats::~PRStats((v8 + 136));
      PRStats::~PRStats(v8);
      v7 -= 2368;
    }

    while (v5 > v6);
  }
}

uint64_t Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524180;
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
    v7 = 24;
  }

  else
  {
    v7 = 32;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2627DE728(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::~Hash(uint64_t a1)
{
  Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287524180;
  if (*(a1 + 8))
  {
    Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

void *DgnIOwnArray<Recognizer *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<Recognizer>(*(*a1 + v3));
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

void *DgnIOwnArray<FstCore *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<FstCore>(*(*a1 + v3));
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

uint64_t *DgnArray<RecogLayerStats>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 2368 * v6, 2368 * v5, 2368 * v5, 1);
  *(a1 + 12) = result / 0x940;
  *a1 = v8;
  return result;
}

uint64_t *DgnArray<SnapTime>::copyArraySlice(uint64_t *result, uint64_t *a2, unsigned int a3, unsigned int a4)
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
    result = DgnArray<PrefilterResultFrame>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 2);
  }

  v11 = *a2;
  v12 = *v7;
  v13 = a4;
  v10 = v9;
  do
  {
    v14 = (v11 + 32 * a3);
    v15 = *v14;
    v16 = v14[1];
    v17 = (v12 + 32 * v10);
    *v17 = v15;
    v17[1] = v16;
    ++v10;
    ++a3;
    --v13;
  }

  while (v13);
LABEL_6:
  if (v10 < a4)
  {
    v18 = a4 - v10;
    v19 = 32 * v10;
    do
    {
      v20 = (*v7 + v19);
      *v20 = 0uLL;
      v20[1] = 0uLL;
      v19 += 32;
      --v18;
    }

    while (v18);
  }

  *(v7 + 2) = a4;
  return result;
}

uint64_t **Hash<EmbStateSpec,EmbStateSpec,EmbStateSpecToActiveWordScope,ActiveWord *>::findBucket(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = ((*a2 >> 19) & 0x1FFFE000) + v2;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (-1640531527 * v3) >> -v4;
  }

  else
  {
    v5 = 0;
  }

  result = (*(a1 + 80) + 8 * v5);
  v7 = *result;
  if (*result)
  {
    do
    {
      v8 = v7;
      if (*(v7 + 2) == v3 && ((*(v7 + 12) ^ *a2) & 0xFFFF00000000) == 0 && *(v7 + 5) == v2)
      {
        break;
      }

      v7 = *v7;
      result = v8;
    }

    while (*v8);
  }

  return result;
}

void MrecInitModule_arcgraph_fst(void)
{
  if (!gParDebugFstArcGraphIO)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugFstArcGraphIO", byte_26288E914, byte_26288E914, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugFstArcGraphIO = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugFstArcGraphIO);
  }
}

void ArcGraph::~ArcGraph(DSMSetData ***this)
{
  DgnDelete<PicMgr>(this[31]);
  this[31] = 0;
  DgnDelete<PhnMgr>(this[32]);
  this[32] = 0;
  if (*this)
  {
    DgnSharedMemSet::unrefDSMEx(*this, *(this + 2));
  }

  DgnArray<DgnArray<ParseToken>>::releaseAll((this + 29));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 27));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 19));
  FileHistory::~FileHistory((this + 14));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 7));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 5));
  DgnArray<DgnString>::releaseAll((this + 3));
}

PhnMgr *DgnDelete<PhnMgr>(PhnMgr *result)
{
  if (result)
  {
    PhnMgr::~PhnMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void ArcGraph::printSize(ArcGraph *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2029);
  if (v87)
  {
    v13 = v86;
  }

  else
  {
    v13 = byte_26288E914;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, byte_26288E914, a3, byte_26288E914, v13);
  DgnString::~DgnString(&v86);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, byte_26288E914);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v15 = 4;
  }

  else
  {
    v15 = 8;
  }

  v16 = (a3 + 1);
  v83 = a3;
  v17 = (34 - a3);
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2030);
  if (v87)
  {
    v19 = v86;
  }

  else
  {
    v19 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, v16, byte_26288E914, v17, v17, v19, v15, v15, 0);
  DgnString::~DgnString(&v86);
  *a4 += v15;
  *a5 += v15;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2031);
  if (v87)
  {
    v21 = v86;
  }

  else
  {
    v21 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v16, byte_26288E914, v17, v17, v21, 4, 4, 0);
  DgnString::~DgnString(&v86);
  *a4 += 4;
  *a5 += 4;
  v22 = sizeObject(this + 16, 0);
  v23 = sizeObject(this + 16, 1);
  v24 = sizeObject(this + 16, 3);
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2033);
  if (v87)
  {
    v26 = v86;
  }

  else
  {
    v26 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v16, byte_26288E914, v17, v17, v26, v22, v23, v24);
  DgnString::~DgnString(&v86);
  *a4 += v22;
  *a5 += v23;
  *a6 += v24;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2035);
  if (v87)
  {
    v28 = v86;
  }

  else
  {
    v28 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v16, byte_26288E914, v17, v17, v28, 1, 1, 0);
  DgnString::~DgnString(&v86);
  ++*a4;
  ++*a5;
  v29 = sizeObject(this + 112, 0);
  v30 = sizeObject(this + 112, 1);
  v31 = sizeObject(this + 112, 3);
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2037);
  if (v87)
  {
    v33 = v86;
  }

  else
  {
    v33 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v16, byte_26288E914, v17, v17, v33, v29, v30, v31);
  DgnString::~DgnString(&v86);
  *a4 += v29;
  *a5 += v30;
  *a6 += v31;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2038);
  if (v87)
  {
    v35 = v86;
  }

  else
  {
    v35 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, v16, byte_26288E914, v17, v17, v35, 4, 4, 0);
  DgnString::~DgnString(&v86);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2040);
  if (v87)
  {
    v37 = v86;
  }

  else
  {
    v37 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v16, byte_26288E914, v17, v17, v37, 4, 4, 0);
  DgnString::~DgnString(&v86);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2042);
  if (v87)
  {
    v39 = v86;
  }

  else
  {
    v39 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, v16, byte_26288E914, v17, v17, v39, 4, 4, 0);
  DgnString::~DgnString(&v86);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v40 = 12;
  }

  else
  {
    v40 = 16;
  }

  v41 = *(this + 40);
  v42 = *(this + 41);
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

  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2043);
  if (v87)
  {
    v46 = v86;
  }

  else
  {
    v46 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v16, byte_26288E914, v17, v17, v46, v44, v40, v43);
  DgnString::~DgnString(&v86);
  *a4 += v44;
  *a5 += v40;
  *a6 += v43;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2044);
  if (v87)
  {
    v48 = v86;
  }

  else
  {
    v48 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v16, byte_26288E914, v17, v17, v48, 4, 4, 0);
  DgnString::~DgnString(&v86);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2045);
  if (v87)
  {
    v50 = v86;
  }

  else
  {
    v50 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v16, byte_26288E914, v17, v17, v50, 2, 2, 0);
  DgnString::~DgnString(&v86);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2046);
  if (v87)
  {
    v52 = v86;
  }

  else
  {
    v52 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v16, byte_26288E914, v17, v17, v52, 2, 2, 0);
  DgnString::~DgnString(&v86);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2047);
  if (v87)
  {
    v54 = v86;
  }

  else
  {
    v54 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v16, byte_26288E914, v17, v17, v54, 2, 2, 0);
  DgnString::~DgnString(&v86);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2049);
  if (v87)
  {
    v56 = v86;
  }

  else
  {
    v56 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v16, byte_26288E914, v17, v17, v56, 1, 1, 0);
  DgnString::~DgnString(&v86);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2050);
  if (v87)
  {
    v58 = v86;
  }

  else
  {
    v58 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v16, byte_26288E914, v17, v17, v58, 26, 26, 0);
  DgnString::~DgnString(&v86);
  *a4 += 26;
  *a5 += 26;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2052);
  if (v87)
  {
    v60 = v86;
  }

  else
  {
    v60 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v16, byte_26288E914, v17, v17, v60, 4, 4, 0);
  DgnString::~DgnString(&v86);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v61 = 12;
  }

  else
  {
    v61 = 16;
  }

  v62 = *(this + 56);
  v63 = *(this + 57);
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

  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2053);
  if (v87)
  {
    v67 = v86;
  }

  else
  {
    v67 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v16, byte_26288E914, v17, v17, v67, v65, v61, v64);
  DgnString::~DgnString(&v86);
  *a4 += v65;
  *a5 += v61;
  *a6 += v64;
  v68 = sizeObject<DgnArray<ParseToken>>(this + 232, 0);
  v69 = sizeObject<DgnArray<ParseToken>>(this + 232, 1);
  v70 = sizeObject<DgnArray<ParseToken>>(this + 232, 3);
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2054);
  if (v87)
  {
    v72 = v86;
  }

  else
  {
    v72 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v16, byte_26288E914, v17, v17, v72, v68, v69, v70);
  DgnString::~DgnString(&v86);
  *a4 += v68;
  *a5 += v69;
  *a6 += v70;
  v73 = *(this + 31);
  if (v73)
  {
    v85 = 0;
    v86 = 0;
    v84 = 0;
    PicMgr::printSize(v73, 0xFFFFFFFFLL, v16, &v86, &v85, &v84);
    *a4 += v86;
    *a5 += v85;
    *a6 += v84;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v74 = 4;
  }

  else
  {
    v74 = 8;
  }

  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2056);
  if (v87)
  {
    v76 = v86;
  }

  else
  {
    v76 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v16, byte_26288E914, v17, v17, v76, v74, v74, 0);
  DgnString::~DgnString(&v86);
  *a4 += v74;
  *a5 += v74;
  v77 = *(this + 32);
  if (v77)
  {
    v85 = 0;
    v86 = 0;
    v84 = 0;
    PhnMgr::printSize(v77, 0xFFFFFFFFLL, v16, &v86, &v85, &v84);
    *a4 += v86;
    *a5 += v85;
    *a6 += v84;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v78 = 4;
  }

  else
  {
    v78 = 8;
  }

  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2058);
  if (v87)
  {
    v80 = v86;
  }

  else
  {
    v80 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v16, byte_26288E914, v17, v17, v80, v78, v78, 0);
  DgnString::~DgnString(&v86);
  *a4 += v78;
  *a5 += v78;
  getShipObjectSizeDescription(&v86, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2059);
  if (v87)
  {
    v82 = v86;
  }

  else
  {
    v82 = byte_26288E914;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v83, byte_26288E914, (35 - v83), (35 - v83), v82, *a4, *a5, *a6);
  DgnString::~DgnString(&v86);
}

void sub_2627DF78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

double ArcGraph::lexToCWIDAC@<D0>(uint64_t *__return_ptr a1@<X8>, ArcGraph *this@<X0>, unsigned int a3@<W1>)
{
  *a1 = ArcGraph::lexToCWID(this, a3);
  *(a1 + 1) = 0x3FFF;
  result = NAN;
  *(a1 + 1) = xmmword_26286CC40;
  return result;
}

uint64_t ArcGraph::lexToCWID(ArcGraph *this, unsigned int a2)
{
  v4 = *(VocMgr::getVocOrThrow(VocMgr::smpVocMgr, *(this + 87)) + 48);
  if (*(v4 + 388) > a2 && *(*(v4 + 104) + a2))
  {
    return *(*(v4 + 256) + 4 * a2) & 0xFFFFFF | (*(this + 87) << 25);
  }

  result = 4244635645;
  if (a2 == 16777214)
  {
    return 4244635646;
  }

  if (a2 != 16777213)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2097, "fst/arcgraph", 27, "%u", a2);
    return 4211081215;
  }

  return result;
}

void ArcGraph::getNameAndHumanReadablePron(ArcGraph *this, signed int a2, DgnString *a3)
{
  v5 = *(VocMgr::getVocOrThrow(VocMgr::smpVocMgr, *(this + 87)) + 48);
  if (*(v5 + 388) > a2 && *(*(v5 + 104) + a2))
  {
    DgnString::DgnString(&v13);
    WordList::getHumanReadablePron(v5, a2, &v13);
    DgnString::DgnString(v12, (*(v5 + 224) + *(*(v5 + 200) + 4 * a2)));
    DgnString::DgnString(&v10);
    DgnTextFile::convertToDTFFormat(v12, &v10, v6);
    if (v11)
    {
      v7 = v10;
    }

    else
    {
      v7 = byte_26288E914;
    }

    if (v14)
    {
      v8 = v13;
    }

    else
    {
      v8 = byte_26288E914;
    }

    DgnString::stringPrintf(a3, "%s(%s)", v7, v8);
    DgnString::~DgnString(&v10);
    DgnString::~DgnString(v12);
    DgnString::~DgnString(&v13);
    return;
  }

  if (a2 > 16777212)
  {
    if (a2 == 16777213)
    {
      v9 = "</s>";
      goto LABEL_21;
    }

    if (a2 == 16777214)
    {
      v9 = "<s>";
      goto LABEL_21;
    }

LABEL_17:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2238, "fst/arcgraph", 26, "%u", a2);
    return;
  }

  if (a2 == 16777209)
  {
    v9 = "~SIL";
    goto LABEL_21;
  }

  if (a2 != 16777210)
  {
    goto LABEL_17;
  }

  v9 = "<epsilon>";
LABEL_21:

  DgnString::operator=(a3, v9);
}

void sub_2627DFAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  _Unwind_Resume(a1);
}

double ArcGraph::ensureHeaderValid(ArcGraph *this, const char *a2)
{
  if ((*(this + 178) & 1) == 0)
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/arcgraph.cpp", 2371, "fst/arcgraph", 5, "%.500s", a2);
  }

  return result;
}

uint64_t ArcGraph::findBackoffState(uint64_t this)
{
  v1 = *(this + 140);
  v2 = *(this + 152);
  v3 = *(v2 + 4 * (*(v2 + 4 * (*(this + 144) + 1)) + 1));
  LODWORD(this) = v3;
  do
  {
    v4 = v3 + 1;
    v5 = *(v2 + 4 * v3);
    v3 += 2;
    v6 = *(v2 + 4 * v4);
    if ((v5 & 0xFFFFF) != 0 || v1 > v6)
    {
      this = this;
    }

    else
    {
      v3 = v6;
      this = v6;
    }
  }

  while ((v5 & 0x80000000) == 0);
  return this;
}

uint64_t GetWordId(unsigned int a1, const char *a2, const char *a3, const char *a4, int a5, int a6)
{
  if (a1 == 126)
  {
    if (!a6 || strcmp(a2, "_START_CONTEXT"))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 62, "voc/vocutil", 1, "%.500s %.500s %.500s", a3, a2, a4);
    }

    return 16777214;
  }

  else
  {
    if (a1 == 125)
    {
      if (!a5 || *a2)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 56, "voc/vocutil", 1, "%.500s %.500s %.500s", a3);
      }

      return 0xFFFFFFLL;
    }

    if (!*a2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 65, "voc/vocutil", 2, "%.500s %.500s", a3, a4);
    }

    result = WordList::lookupWord(*(*(**VocMgr::smpVocMgr + 8 * a1) + 48), a2);
    if (result == 0xFFFFFF)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 71, "voc/vocutil", 5, "%.500s %.500s %.500s", a3);
      return 0xFFFFFFLL;
    }
  }

  return result;
}

char *GetWordName(unsigned int a1, unsigned int a2)
{
  if (a1 == 125)
  {
    return &byte_262899963;
  }

  if (a1 == 126)
  {
    return "_START_CONTEXT";
  }

  v3 = *(*(**VocMgr::smpVocMgr + 8 * a1) + 48);
  v4 = *(v3 + 32);
  v5 = *(v4 + 4 * a2);
  WordList::verifyVisible(v3, *(v4 + 4 * a2));
  return (*(v3 + 28) + *(*(v3 + 25) + 4 * v5));
}

void VerifyVocName(const char *__s, const char *a2)
{
  if (__s)
  {
    if (*__s == 95)
    {
      v4 = strlen(__s);
      if (v4)
      {
        if (v4 == 1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 109, "voc/vocutil", 4, "%.500s %.500s", __s, a2);
        }

        else
        {
          v5 = v4;
          for (i = 1; i != v5; ++i)
          {
            if (__s[i] - 58 <= 0xFFFFFFF5)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/vocutil.cpp", 113, "voc/vocutil", 4, "%.500s %.500s", __s, a2);
            }
          }
        }
      }
    }
  }
}

uint64_t *GetStateName@<X0>(DgnString *__return_ptr a1@<X8>, unsigned int a2@<W0>, unsigned int Parent@<W1>)
{
  v5 = *(*(**VocMgr::smpVocMgr + 8 * a2) + 56);
  v13 = 0;
  v14 = 0;
  while (Parent)
  {
    Name = StateMgr::getName(v5, Parent);
    DgnString::DgnString(v12, Name);
    v7 = v14;
    if (v14 == HIDWORD(v14))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(&v13, 1, 1);
      v7 = v14;
    }

    DgnString::DgnString((v13 + 16 * v7), v12);
    LODWORD(v14) = v14 + 1;
    DgnString::~DgnString(v12);
    Parent = StateMgr::getParent(v5, Parent);
  }

  v8 = v14;
  DgnString::DgnString(a1);
  if (v8)
  {
    v9 = 0;
    v10 = v8 - 1;
    do
    {
      if (v9)
      {
        DgnString::operator+=(a1, ".");
      }

      DgnString::operator+=(a1, v13 + 16 * v10);
      ++v9;
      --v10;
    }

    while (v8 != v9);
  }

  return DgnArray<DgnString>::releaseAll(&v13);
}

void sub_2627DFFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnArray<DgnString>::releaseAll(va);
  _Unwind_Resume(a1);
}

DgnString *GetRuleName@<X0>(DgnString *__return_ptr a1@<X8>, unsigned int a2@<W0>, unsigned int a3@<W1>)
{
  v6 = *(*(**VocMgr::smpVocMgr + 8 * a2) + 64);
  Parent = RuleMgr::getParent(v6, a3);
  GetStateName(a1, a2, Parent);
  DgnString::operator+=(a1, ".");
  Name = RuleMgr::getName(v6, a3);
  return DgnString::operator+=(a1, Name);
}

const char *GetCollationName(unsigned int a1, uint64_t a2, double a3)
{
  if (a2 == 65534)
  {
    return "_IDENTITY";
  }

  else
  {
    return CollMgr::getCollationName(*(*(**VocMgr::smpVocMgr + 8 * a1) + 16), a2, a3);
  }
}

uint64_t Lattice<PhonemeLatticeLC>::cmpInLink(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = *(a1 + 128);
  v5 = *(v4 + 24 * a2);
  v6 = *(v4 + 24 * a3);
  v7 = v5 == v6;
  if (v5 > v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(v4 + 24 * a2 + 8);
    v9 = *(v4 + 24 * a3 + 8);
    if (v8 == v9)
    {
      return 0;
    }

    if (*(*(a1 + 80) + 24 * v8 + 4) < *(*(a1 + 80) + 24 * v9 + 4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

uint64_t Lattice<PhonemeLatticeLC>::cmpOutLink(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = *(a1 + 128);
  v5 = *(v4 + 24 * a2);
  v6 = *(v4 + 24 * a3);
  v7 = v5 == v6;
  if (v5 > v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0xFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = *(v4 + 24 * a2 + 12);
    v9 = *(v4 + 24 * a3 + 12);
    if (v8 == v9)
    {
      return 0;
    }

    if (*(*(a1 + 80) + 24 * v8 + 4) < *(*(a1 + 80) + 24 * v9 + 4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

uint64_t Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinksIgnoreNodes(a1, a2, a3);
  if (!result)
  {
    if (a2 == a3)
    {
      return 0;
    }

    else if (*(*(a1 + 80) + 24 * a2 + 4) < *(*(a1 + 80) + 24 * a3 + 4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinksIgnoreNodes(a1, a2, a3);
  if (!result)
  {
    if (a2 == a3)
    {
      return 0;
    }

    else if (*(*(a1 + 80) + 24 * a2 + 4) < *(*(a1 + 80) + 24 * a3 + 4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t mrec_qsort_r<InLinkICmp1>(uint64_t result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *(v11 - v13), *v11);
      v22 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v23, *v12);
      v25 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v18, *v11);
    result = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpInLink(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpInLink(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<InLinkICmp1>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<PhonemeLatticeLC>::cmpInLink(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

uint64_t mrec_qsort_r<OutLinkICmp1>(uint64_t result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *(v11 - v13), *v11);
      v22 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v23, *v12);
      v25 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v18, *v11);
    result = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpOutLink(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpOutLink(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<OutLinkICmp1>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<PhonemeLatticeLC>::cmpOutLink(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

char *mrec_qsort_r<NodeICmp1>(char *result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v6 = -a3;
  v7 = a3 != 8;
  v8 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_130:
    if ((a2 * a3) > a3)
    {
      v100 = &result[a2 * a3];
      v101 = &result[a3];
      v102 = result;
      do
      {
        if (v101 > result)
        {
          v103 = v102;
          v104 = v101;
          do
          {
            v105 = v104;
            v104 += v6;
            if (*v104 == *v105 || *(*(a4 + 80) + 24 * *v104 + 4) < *(*(a4 + 80) + 24 * *v105 + 4))
            {
              break;
            }

            if (v9)
            {
              v106 = 0;
              if (v8)
              {
                v107 = v104;
                do
                {
                  v108 = *&v105[8 * v106];
                  *&v105[8 * v106] = *v107;
                  *v107 = v108;
                  v107 += 8;
                  ++v106;
                }

                while (a3 >> 3 != v106);
              }

              else
              {
                v110 = a3;
                do
                {
                  v111 = v105[v106];
                  v105[v106] = v103[v106];
                  v103[v106++] = v111;
                  --v110;
                }

                while (v110);
              }
            }

            else
            {
              v109 = *v105;
              *v105 = *v104;
              *v104 = v109;
            }

            v103 += v6;
          }

          while (v104 > result);
        }

        v101 += a3;
        v102 += a3;
      }

      while (v101 < v100);
    }

    return result;
  }

  v10 = a3 >> 3;
  while (2)
  {
    v11 = &result[(a2 >> 1) * a3];
    if (a2 == 7)
    {
      goto LABEL_59;
    }

    v12 = &result[(a2 - 1) * a3];
    if (a2 < 0x29)
    {
      v14 = result;
      goto LABEL_46;
    }

    v13 = (a2 >> 3) * a3;
    v14 = &result[v13];
    v15 = &result[2 * v13];
    v16 = *result;
    v17 = *&result[v13];
    if (*result == v17 || (v18 = *(a4 + 80), v19 = *(v18 + 24 * v16 + 4), v20 = *(v18 + 24 * v17 + 4), v19 >= v20))
    {
      v22 = *v15;
      if (v17 == *v15 || *(*(a4 + 80) + 24 * v17 + 4) < *(*(a4 + 80) + 24 * v22 + 4))
      {
        if (v16 == v22 || (v23 = *(a4 + 80), v24 = *(v23 + 24 * v16 + 4), v25 = *(v23 + 24 * v22 + 4), v14 = result, v24 >= v25))
        {
          v14 = &result[2 * v13];
        }
      }
    }

    else
    {
      v21 = *v15;
      if (v17 == *v15 || v20 >= *(v18 + 24 * v21 + 4))
      {
        v14 = result;
        if (v16 != v21)
        {
          v14 = &result[2 * v13];
          if (v19 >= *(v18 + 24 * v21 + 4))
          {
            v14 = result;
          }
        }
      }
    }

    v26 = &v11[-v13];
    v27 = &v11[v13];
    v28 = *&v11[-v13];
    v29 = *v11;
    if (v28 == *v11 || (v30 = *(a4 + 80), v31 = *(v30 + 24 * v28 + 4), v32 = *(v30 + 24 * v29 + 4), v31 >= v32))
    {
      v34 = *v27;
      if (v29 == *v27 || *(*(a4 + 80) + 24 * v29 + 4) < *(*(a4 + 80) + 24 * v34 + 4))
      {
        if (v28 == v34 || (v35 = *(a4 + 80), v36 = *(v35 + 24 * v28 + 4), v37 = *(v35 + 24 * v34 + 4), v11 = v26, v36 >= v37))
        {
          v11 = v27;
        }
      }
    }

    else
    {
      v33 = *v27;
      if (v29 == *v27 || v32 >= *(v30 + 24 * v33 + 4))
      {
        if (v28 == v33 || (v11 += v13, v31 >= *(v30 + 24 * v33 + 4)))
        {
          v11 = v26;
        }
      }
    }

    v38 = -v13;
    v39 = &v12[-2 * v13];
    v40 = &v12[v38];
    v41 = *v39;
    v42 = *v40;
    if (*v39 != *v40)
    {
      v43 = *(a4 + 80);
      v44 = *(v43 + 24 * v41 + 4);
      v45 = *(v43 + 24 * v42 + 4);
      if (v44 < v45)
      {
        v46 = *v12;
        if (v42 == *v12 || v45 >= *(v43 + 24 * v46 + 4))
        {
          if (v41 != v46 && v44 < *(v43 + 24 * v46 + 4))
          {
            goto LABEL_46;
          }

LABEL_44:
          v12 = v39;
          goto LABEL_46;
        }

LABEL_45:
        v12 = v40;
        goto LABEL_46;
      }
    }

    v47 = *v12;
    if (v42 != *v12 && *(*(a4 + 80) + 24 * v42 + 4) >= *(*(a4 + 80) + 24 * v47 + 4))
    {
      goto LABEL_45;
    }

    if (v41 != v47 && *(*(a4 + 80) + 24 * v41 + 4) < *(*(a4 + 80) + 24 * v47 + 4))
    {
      goto LABEL_44;
    }

LABEL_46:
    v48 = *v14;
    v49 = *v11;
    if (v48 == v49)
    {
      v50 = *v12;
    }

    else
    {
      v51 = *(a4 + 80);
      v52 = *(v51 + 24 * v48 + 4);
      v53 = *(v51 + 24 * v49 + 4);
      v50 = *v12;
      if (v52 < v53)
      {
        if (v49 == v50 || v53 >= *(v51 + 24 * v50 + 4))
        {
          if (v48 == v50 || (v11 = v12, v52 >= *(v51 + 24 * v50 + 4)))
          {
            v11 = v14;
          }
        }

        goto LABEL_59;
      }
    }

    if (v49 == v50 || *(*(a4 + 80) + 24 * v49 + 4) < *(*(a4 + 80) + 24 * v50 + 4))
    {
      if (v48 == v50 || (v54 = *(a4 + 80), v55 = *(v54 + 24 * v48 + 4), v56 = *(v54 + 24 * v50 + 4), v11 = v14, v55 >= v56))
      {
        v11 = v12;
      }
    }

LABEL_59:
    if (v9)
    {
      if (v8)
      {
        v57 = result;
        v58 = a3 >> 3;
        do
        {
          v59 = *v57;
          *v57 = *v11;
          v57 += 8;
          *v11 = v59;
          v11 += 8;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = a3;
        v62 = result;
        do
        {
          v63 = *v62;
          *v62++ = *v11;
          *v11++ = v63;
          --v61;
        }

        while (v61);
      }
    }

    else
    {
      v60 = *result;
      *result = *v11;
      *v11 = v60;
    }

    v64 = 0;
    v65 = &result[a3];
    v66 = &result[(a2 - 1) * a3];
    v67 = v66;
    v68 = &result[a3];
    v69 = &result[a3];
    while (1)
    {
LABEL_68:
      if (v68 > v67)
      {
        goto LABEL_81;
      }

      if (*v68 != *result)
      {
        break;
      }

      if (v9)
      {
        v70 = 0;
        if (v8)
        {
          do
          {
            v71 = *&v69[8 * v70];
            *&v69[8 * v70] = *&v68[8 * v70];
            *&v68[8 * v70++] = v71;
          }

          while (v10 != v70);
        }

        else
        {
          do
          {
            v72 = v69[v70];
            v69[v70] = v68[v70];
            v68[v70++] = v72;
          }

          while (a3 != v70);
        }
      }

      else
      {
        v80 = *v69;
        *v69 = *v68;
        *v68 = v80;
      }

      v69 += a3;
      v64 = 1;
LABEL_98:
      v68 += a3;
    }

    if (*(*(a4 + 80) + 24 * *v68 + 4) < *(*(a4 + 80) + 24 * *result + 4))
    {
      goto LABEL_98;
    }

LABEL_81:
    while (v68 <= v67)
    {
      if (*v67 == *result)
      {
        if (v9)
        {
          v74 = 0;
          if (v8)
          {
            do
            {
              v75 = *&v67[8 * v74];
              *&v67[8 * v74] = *&v66[8 * v74];
              *&v66[8 * v74++] = v75;
            }

            while (v10 != v74);
          }

          else
          {
            do
            {
              v76 = v67[v74];
              v67[v74] = v66[v74];
              v66[v74++] = v76;
            }

            while (a3 != v74);
          }
        }

        else
        {
          v73 = *v67;
          *v67 = *v66;
          *v66 = v73;
        }

        v66 += v6;
        v64 = 1;
      }

      else if (*(*(a4 + 80) + 24 * *v67 + 4) < *(*(a4 + 80) + 24 * *result + 4))
      {
        if (v9)
        {
          v77 = 0;
          if (v8)
          {
            do
            {
              v78 = *&v68[8 * v77];
              *&v68[8 * v77] = *&v67[8 * v77];
              *&v67[8 * v77++] = v78;
            }

            while (v10 != v77);
          }

          else
          {
            do
            {
              v79 = v68[v77];
              v68[v77] = v67[v77];
              v67[v77++] = v79;
            }

            while (a3 != v77);
          }
        }

        else
        {
          v81 = *v68;
          *v68 = *v67;
          *v67 = v81;
        }

        v68 += a3;
        v67 += v6;
        v64 = 1;
        goto LABEL_68;
      }

      v67 += v6;
    }

    v82 = &result[a2 * a3];
    if (v64)
    {
      v83 = v68 - v69;
      if (v69 - result >= v68 - v69)
      {
        v84 = v68 - v69;
      }

      else
      {
        v84 = v69 - result;
      }

      if (v84)
      {
        if (v8)
        {
          v85 = &v68[-v84];
          v86 = v84 >> 3;
          v87 = result;
          do
          {
            v88 = *v87;
            *v87 = *v85;
            v87 += 8;
            *v85 = v88;
            v85 += 8;
            --v86;
          }

          while (v86);
        }

        else
        {
          v89 = -v84;
          v90 = result;
          do
          {
            v91 = *v90;
            *v90++ = v68[v89];
            v68[v89] = v91;
            v92 = __CFADD__(v89++, 1);
          }

          while (!v92);
        }
      }

      v93 = v66 - v67;
      v94 = v82 - &v66[a3];
      if (v66 - v67 < v94)
      {
        v94 = v66 - v67;
      }

      if (v94)
      {
        if (v8)
        {
          v95 = &v82[-v94];
          v96 = v94 >> 3;
          do
          {
            v97 = *v68;
            *v68 = *v95;
            v68 += 8;
            *v95 = v97;
            v95 += 8;
            --v96;
          }

          while (v96);
        }

        else
        {
          v98 = -v94;
          do
          {
            v99 = *v68;
            *v68++ = v82[v98];
            v82[v98] = v99;
            v92 = __CFADD__(v98++, 1);
          }

          while (!v92);
        }
      }

      if (v83 > a3)
      {
        result = mrec_qsort_r<NodeICmp1>(result, v83 / a3, a3, a4);
      }

      if (v93 > a3)
      {
        result = &v82[-v93];
        a2 = v93 / a3;
        v8 = (((v82 - v93) | a3) & 7) == 0;
        if ((((v82 - v93) | a3) & 7) != 0)
        {
          v9 = 2;
        }

        else
        {
          v9 = v7;
        }

        if (a2 < 7)
        {
          goto LABEL_130;
        }

        continue;
      }
    }

    else if ((a2 * a3) > a3)
    {
      v112 = result;
      do
      {
        if (v65 > result)
        {
          v113 = v112;
          v114 = v65;
          do
          {
            v115 = v114;
            v114 += v6;
            if (*v114 == *v115 || *(*(a4 + 80) + 24 * *v114 + 4) < *(*(a4 + 80) + 24 * *v115 + 4))
            {
              break;
            }

            if (v9)
            {
              v116 = 0;
              if (v8)
              {
                v117 = v114;
                do
                {
                  v118 = *&v115[8 * v116];
                  *&v115[8 * v116] = *v117;
                  *v117 = v118;
                  v117 += 8;
                  ++v116;
                }

                while (v10 != v116);
              }

              else
              {
                v120 = a3;
                do
                {
                  v121 = v115[v116];
                  v115[v116] = v113[v116];
                  v113[v116++] = v121;
                  --v120;
                }

                while (v120);
              }
            }

            else
            {
              v119 = *v115;
              *v115 = *v114;
              *v114 = v119;
            }

            v113 += v6;
          }

          while (v114 > result);
        }

        v65 += a3;
        v112 += a3;
      }

      while (v65 < v82);
    }

    return result;
  }
}

uint64_t mrec_qsort_r<NodeByInLinksICmp1>(uint64_t result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *(v11 - v13), *v11);
      v22 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v23, *v12);
      v25 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v18, *v11);
    result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<NodeByInLinksICmp1>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<PhonemeLatticeLC>::cmpNodesByInLinks(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

uint64_t mrec_qsort_r<NodeByOutLinksICmp1>(uint64_t result, unint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v100 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v103 = ((result | a3) & 7) == 0;
  v104 = v8;
  if (a2 < 7)
  {
LABEL_119:
    if ((v5 * a3) > a3)
    {
      v73 = (v6 + v5 * a3);
      v74 = (v6 + a3);
      v75 = v6;
      do
      {
        if (v74 > v6)
        {
          v76 = v75;
          v77 = v74;
          do
          {
            v78 = v77;
            v77 = (v77 + v7);
            result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v77, *v78);
            if (result < 1)
            {
              break;
            }

            if (v104)
            {
              if (v103)
              {
                v79 = 0;
                v80 = v77;
                do
                {
                  v81 = *&v78[2 * v79];
                  *&v78[2 * v79] = *v80;
                  *v80 = v81;
                  v80 += 2;
                  ++v79;
                }

                while (a3 >> 3 != v79);
              }

              else
              {
                v83 = 0;
                v84 = a3;
                do
                {
                  v85 = *(v78 + v83);
                  *(v78 + v83) = *(v76 + v83);
                  *(v76 + v83++) = v85;
                  --v84;
                }

                while (v84);
              }
            }

            else
            {
              v82 = *v78;
              *v78 = *v77;
              *v77 = v82;
            }

            v76 = (v76 + v7);
          }

          while (v77 > v6);
        }

        v74 = (v74 + a3);
        v75 = (v75 + a3);
      }

      while (v74 < v73);
    }

    return result;
  }

  v9 = a4;
  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v6 + (v5 >> 1) * a3);
    v101 = v5;
    if (v5 == 7)
    {
      goto LABEL_46;
    }

    v12 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v99 = (v6 + (v5 - 1) * a3);
      v13 = (v5 >> 3) * a3;
      v14 = (v6 + 2 * v13);
      v15 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v6, *(v6 + v13));
      v98 = (v6 + v13);
      v16 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *(v6 + v13), *v14);
      if (v15 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v6, *v14) >= 0)
          {
            v17 = v6;
          }

          else
          {
            v17 = (v6 + 2 * v13);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v6, *v14) >= 0)
        {
          v17 = (v6 + 2 * v13);
        }

        else
        {
          v17 = v6;
        }

LABEL_18:
        v98 = v17;
      }

      v19 = (v11 - v13);
      v20 = (v11 + v13);
      v21 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *(v11 - v13), *v11);
      v22 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v11, *(v11 + v13));
      if (v21 < 0)
      {
        if ((v22 & 0x80000000) == 0)
        {
          if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v19, *v20) >= 0)
          {
            v11 = (v11 - v13);
          }

          else
          {
            v11 = (v11 + v13);
          }
        }
      }

      else if (v22 <= 0)
      {
        if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v19, *v20) >= 0)
        {
          v11 = (v11 + v13);
        }

        else
        {
          v11 = (v11 - v13);
        }
      }

      v23 = (v99 - 2 * v13);
      v12 = (v99 - v13);
      v24 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v23, *v12);
      v25 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v12, *v99);
      if (v24 < 0)
      {
        v18 = v98;
        if ((v25 & 0x80000000) == 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v23, *v99) >= 0)
          {
            v12 = v23;
          }
        }
      }

      else
      {
        v18 = v98;
        if (v25 <= 0)
        {
          v12 = v99;
          if (Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v23, *v99) < 0)
          {
            v12 = v23;
          }
        }
      }

      v5 = v101;
      goto LABEL_37;
    }

    v18 = v6;
LABEL_37:
    v9 = a4;
    v26 = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v18, *v11);
    result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v11, *v12);
    if (v26 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v18, *v12);
        if (result >= 0)
        {
          v11 = v18;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v18, *v12);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v18;
      }
    }

LABEL_46:
    if (v104)
    {
      if (v103)
      {
        v27 = v6;
        v28 = a3 >> 3;
        do
        {
          v29 = *v27;
          *v27 = *v11;
          v27 += 2;
          *v11 = v29;
          v11 += 2;
          --v28;
        }

        while (v28);
      }

      else
      {
        v31 = a3;
        v32 = v6;
        do
        {
          v33 = *v32;
          *v32 = *v11;
          v32 = (v32 + 1);
          *v11 = v33;
          v11 = (v11 + 1);
          --v31;
        }

        while (v31);
      }
    }

    else
    {
      v30 = *v6;
      *v6 = *v11;
      *v11 = v30;
    }

    v34 = 0;
    v35 = (v6 + (v5 - 1) * a3);
    v36 = v35;
    v37 = (v6 + a3);
    v38 = (v6 + a3);
LABEL_55:
    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(v9, *v37, *v6);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v39 = 0;
            do
            {
              v40 = v38[v39];
              v38[v39] = *&v37[2 * v39];
              *&v37[2 * v39++] = v40;
            }

            while (v10 != v39);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v38 + v49);
              *(v38 + v49) = *(v37 + v49);
              *(v37 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v38;
          *v38 = *v37;
          *v37 = v48;
        }

        v38 = (v38 + a3);
        v34 = 1;
      }

      v37 = (v37 + a3);
    }

    while (v37 <= v36)
    {
      result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(v9, *v36, *v6);
      if ((result & 0x80000000) != 0)
      {
        if (v104)
        {
          if (v103)
          {
            v46 = 0;
            do
            {
              v47 = *&v37[2 * v46];
              *&v37[2 * v46] = *&v36[2 * v46];
              *&v36[2 * v46++] = v47;
            }

            while (v10 != v46);
          }

          else
          {
            v52 = 0;
            do
            {
              v53 = *(v37 + v52);
              *(v37 + v52) = *(v36 + v52);
              *(v36 + v52++) = v53;
            }

            while (a3 != v52);
          }
        }

        else
        {
          v51 = *v37;
          *v37 = *v36;
          *v36 = v51;
        }

        v37 = (v37 + a3);
        v36 = (v36 + v7);
        v34 = 1;
        goto LABEL_55;
      }

      if (!result)
      {
        if (v104)
        {
          if (v103)
          {
            v41 = 0;
            do
            {
              v42 = *&v36[2 * v41];
              *&v36[2 * v41] = *&v35[2 * v41];
              *&v35[2 * v41++] = v42;
            }

            while (v10 != v41);
          }

          else
          {
            v44 = 0;
            do
            {
              v45 = *(v36 + v44);
              *(v36 + v44) = *(v35 + v44);
              *(v35 + v44++) = v45;
            }

            while (a3 != v44);
          }
        }

        else
        {
          v43 = *v36;
          *v36 = *v35;
          *v35 = v43;
        }

        v35 = (v35 + v7);
        v34 = 1;
      }

      v36 = (v36 + v7);
    }

    v54 = (v6 + v101 * a3);
    if (!v34)
    {
      break;
    }

    v55 = v37 - v38;
    if (v38 - v6 >= v37 - v38)
    {
      v56 = v37 - v38;
    }

    else
    {
      v56 = v38 - v6;
    }

    if (v56)
    {
      if (v103)
      {
        v57 = (v37 - v56);
        v58 = v56 >> 3;
        v59 = v6;
        do
        {
          v60 = *v59;
          *v59 = *v57;
          v59 += 2;
          *v57++ = v60;
          --v58;
        }

        while (v58);
      }

      else
      {
        v61 = -v56;
        v62 = v6;
        do
        {
          v63 = *v62;
          *v62 = *(v37 + v61);
          v62 = (v62 + 1);
          *(v37 + v61) = v63;
          v64 = __CFADD__(v61++, 1);
        }

        while (!v64);
      }
    }

    v65 = v35 - v36;
    if (v35 - v36 >= v54 - (v35 + a3))
    {
      v66 = v54 - (v35 + a3);
    }

    else
    {
      v66 = v35 - v36;
    }

    if (v66)
    {
      if (v103)
      {
        v67 = v54 - v66;
        v68 = v66 >> 3;
        do
        {
          v69 = *v37;
          *v37 = *v67;
          v37 += 2;
          *v67 = v69;
          v67 += 8;
          --v68;
        }

        while (v68);
      }

      else
      {
        v70 = -v66;
        do
        {
          v71 = *v37;
          *v37 = *(v54 + v70);
          v37 = (v37 + 1);
          *(v54 + v70) = v71;
          v64 = __CFADD__(v70++, 1);
        }

        while (!v64);
      }
    }

    if (v55 > a3)
    {
      result = mrec_qsort_r<NodeByOutLinksICmp1>(v6, v55 / a3, a3, a4);
    }

    if (v65 <= a3)
    {
      return result;
    }

    v6 = (v54 - v65);
    v5 = v65 / a3;
    v72 = v100;
    if ((((v54 - v65) | a3) & 7) != 0)
    {
      v72 = 2;
    }

    v103 = (((v54 - v65) | a3) & 7) == 0;
    v104 = v72;
    v9 = a4;
    if (v5 < 7)
    {
      goto LABEL_119;
    }
  }

  v86 = (v6 + a3);
  if ((v101 * a3) > a3)
  {
    v87 = v6;
    do
    {
      if (v86 > v6)
      {
        v88 = v87;
        v89 = v86;
        do
        {
          v90 = v89;
          v89 = (v89 + v7);
          result = Lattice<PhonemeLatticeLC>::cmpNodesByOutLinks(a4, *v89, *v90);
          if (result < 1)
          {
            break;
          }

          if (v104)
          {
            if (v103)
            {
              v91 = 0;
              v92 = v89;
              do
              {
                v93 = *&v90[2 * v91];
                *&v90[2 * v91] = *v92;
                *v92 = v93;
                v92 += 2;
                ++v91;
              }

              while (v10 != v91);
            }

            else
            {
              v95 = 0;
              v96 = a3;
              do
              {
                v97 = *(v90 + v95);
                *(v90 + v95) = *(v88 + v95);
                *(v88 + v95++) = v97;
                --v96;
              }

              while (v96);
            }
          }

          else
          {
            v94 = *v90;
            *v90 = *v89;
            *v89 = v94;
          }

          v88 = (v88 + v7);
        }

        while (v89 > v6);
      }

      v86 = (v86 + a3);
      v87 = (v87 + a3);
    }

    while (v86 < v54);
  }

  return result;
}

void PhonemeLattice::printSize(PhonemeLattice *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/phnlat.cpp", 152);
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
  v18 = 0;
  v19 = 0;
  v17 = 0;
  Lattice<PhonemeLatticeLC>::printSize(this, 0xFFFFFFFFLL, (a3 + 1), &v19, &v18, &v17);
  *a4 += v19;
  *a5 += v18;
  *a6 += v17;
  getShipObjectSizeDescription(&v19, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/phnlat.cpp", 155);
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

void sub_2627E2C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void Lattice<PhonemeLatticeLC>::printSize(unsigned int *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 898);
  if (v102)
  {
    v13 = v101;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v101);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v18 = v101;
  }

  else
  {
    v18 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v18, 1, 1, 0);
  DgnString::~DgnString(&v101);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v20 = v101;
  }

  else
  {
    v20 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v20, 4, 4, 0);
  v100 = a3;
  DgnString::~DgnString(&v101);
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

  v22 = a1[6];
  v23 = a1[7];
  if (v23 >= v22)
  {
    v24 = 0;
    if (v22 > 0)
    {
      v21 += 4 * (v22 - 1) + 4;
    }

    v25 = v21 + 4 * (v23 - v22);
  }

  else
  {
    v24 = 4 * v22;
    v25 = v21;
  }

  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v27 = v101;
  }

  else
  {
    v27 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v15, &byte_262899963, v16, v16, v27, v25, v21, v24);
  DgnString::~DgnString(&v101);
  *a4 += v25;
  *a5 += v21;
  *a6 += v24;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v28 = 12;
  }

  else
  {
    v28 = 16;
  }

  v29 = a1[10];
  v30 = a1[11];
  if (v30 >= v29)
  {
    v31 = 0;
    if (v29 > 0)
    {
      v28 += 4 * (v29 - 1) + 4;
    }

    v32 = v28 + 4 * (v30 - v29);
  }

  else
  {
    v31 = 4 * v29;
    v32 = v28;
  }

  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v34 = v101;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v33, v15, &byte_262899963, v16, v16, v34, v32, v28, v31);
  DgnString::~DgnString(&v101);
  *a4 += v32;
  *a5 += v28;
  *a6 += v31;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v35 = 12;
  }

  else
  {
    v35 = 16;
  }

  v36 = a1[14];
  v37 = a1[15];
  if (v37 >= v36)
  {
    v38 = 0;
    if (v36 > 0)
    {
      v35 += 4 * (v36 - 1) + 4;
    }

    v39 = v35 + 4 * (v37 - v36);
  }

  else
  {
    v38 = 4 * v36;
    v39 = v35;
  }

  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v41 = v101;
  }

  else
  {
    v41 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v15, &byte_262899963, v16, v16, v41, v39, v35, v38);
  DgnString::~DgnString(&v101);
  *a4 += v39;
  *a5 += v35;
  *a6 += v38;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v42 = 12;
  }

  else
  {
    v42 = 16;
  }

  v43 = a1[18];
  v44 = a1[19];
  if (v44 >= v43)
  {
    v45 = 0;
    if (v43 > 0)
    {
      v42 += 4 * (v43 - 1) + 4;
    }

    v46 = v42 + 4 * (v44 - v43);
  }

  else
  {
    v45 = 4 * v43;
    v46 = v42;
  }

  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v48 = v101;
  }

  else
  {
    v48 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, v15, &byte_262899963, v16, v16, v48, v46, v42, v45);
  DgnString::~DgnString(&v101);
  *a4 += v46;
  *a5 += v42;
  *a6 += v45;
  v49 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v49 = 12;
  }

  v50 = a1[22];
  v51 = 24 * v50;
  if (v50 <= 0)
  {
    v51 = 0;
  }

  v52 = v51 + v49;
  v53 = v51 + v49 + 24 * (a1[23] - v50);
  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v55 = v101;
  }

  else
  {
    v55 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v15, &byte_262899963, v16, v16, v55, v53, v52, 0);
  DgnString::~DgnString(&v101);
  *a4 += v53;
  *a5 += v52;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v56 = 12;
  }

  else
  {
    v56 = 16;
  }

  v57 = a1[26];
  v58 = a1[27];
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

  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v62 = v101;
  }

  else
  {
    v62 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v15, &byte_262899963, v16, v16, v62, v60, v56, v59);
  DgnString::~DgnString(&v101);
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

  v64 = a1[30];
  v65 = a1[31];
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

  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v69 = v101;
  }

  else
  {
    v69 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v68, v15, &byte_262899963, v16, v16, v69, v67, v63, v66);
  DgnString::~DgnString(&v101);
  *a4 += v67;
  *a5 += v63;
  *a6 += v66;
  v70 = 16;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v70 = 12;
  }

  v71 = a1[34];
  v72 = 22 * v71;
  if (v71 <= 0)
  {
    v72 = 0;
  }

  v73 = v72 + v70;
  v74 = v72 + v70 + 22 * (a1[35] - v71);
  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v76 = v101;
  }

  else
  {
    v76 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v15, &byte_262899963, v16, v16, v76, v74, v73, 0);
  DgnString::~DgnString(&v101);
  *a4 += v74;
  *a5 += v73;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v77 = 12;
  }

  else
  {
    v77 = 16;
  }

  v78 = a1[38];
  v79 = a1[39];
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

  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v83 = v101;
  }

  else
  {
    v83 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v82, v15, &byte_262899963, v16, v16, v83, v81, v77, v80);
  DgnString::~DgnString(&v101);
  *a4 += v81;
  *a5 += v77;
  *a6 += v80;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v84 = 12;
  }

  else
  {
    v84 = 16;
  }

  v85 = a1[42];
  v86 = a1[43];
  if (v86 >= v85)
  {
    v87 = 0;
    if (v85 > 0)
    {
      v84 += 4 * (v85 - 1) + 4;
    }

    v88 = v84 + 4 * (v86 - v85);
  }

  else
  {
    v87 = 4 * v85;
    v88 = v84;
  }

  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v90 = v101;
  }

  else
  {
    v90 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v15, &byte_262899963, v16, v16, v90, v88, v84, v87);
  DgnString::~DgnString(&v101);
  *a4 += v88;
  *a5 += v84;
  *a6 += v87;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v91 = 12;
  }

  else
  {
    v91 = 16;
  }

  v92 = a1[46];
  v93 = a1[47];
  if (v93 >= v92)
  {
    v94 = 0;
    if (v92 > 0)
    {
      v91 += 4 * (v92 - 1) + 4;
    }

    v95 = v91 + 4 * (v93 - v92);
  }

  else
  {
    v94 = 4 * v92;
    v95 = v91;
  }

  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 900);
  if (v102)
  {
    v97 = v101;
  }

  else
  {
    v97 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v15, &byte_262899963, v16, v16, v97, v95, v91, v94);
  DgnString::~DgnString(&v101);
  *a4 += v95;
  *a5 += v91;
  *a6 += v94;
  getShipObjectSizeDescription(&v101, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/lattice.h", 908);
  if (v102)
  {
    v99 = v101;
  }

  else
  {
    v99 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v98, v100, &byte_262899963, (35 - v100), (35 - v100), v99, *a4, *a5, *a6);
  DgnString::~DgnString(&v101);
}

void sub_2627E3654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

unint64_t PhonemeLattice::PhonemeLattice(unint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 92) = 0u;
  *(a1 + 108) = 0u;
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 188) = 0;
  *a1 = &unk_2875280D8;
  v3 = *(a2 + 8);
  Node = Lattice<WordLatticeLC>::createNode(a1);
  if (v3)
  {
    v5 = Node;
    v6 = 0;
    v7 = (v3 - 1);
    v8 = -2;
    v22 = v3;
    v23 = v7;
    do
    {
      v9 = (*a2 + 4 * v6);
      v10 = *v9;
      v11 = **VocMgr::smpVocMgr;
      v12 = *(*(v11 + ((v10 >> 22) & 0x3F8)) + 48);
      if (v6 >= v7)
      {
        PronSuccessorSeedCategory = *(v12 + 417);
      }

      else
      {
        PronSuccessorSeedCategory = WordList::getPronSuccessorSeedCategory(*(*(v11 + ((v9[1] >> 22) & 0x3F8)) + 48), v9[1] & 0xFFFFFF);
      }

      v27 = 0;
      v28 = 0;
      WordList::getWordFamilyCollatedSeedableProns(v12, v10 & 0xFFFFFF, v6 < v7, PronSuccessorSeedCategory, &v27);
      v25 = v6;
      v14 = v28;
      if (v28)
      {
        v15 = 0;
        v16 = -2;
        do
        {
          v17 = v27 + 16 * v15;
          v18 = *(v17 + 8);
          if (v18)
          {
            for (i = 0; i != v18; ++i)
            {
              if (!(i | v15))
              {
                v16 = Lattice<WordLatticeLC>::createNode(a1);
              }

              if (i)
              {
                v20 = v8;
              }

              else
              {
                v20 = v5;
              }

              v8 = v16;
              if (v18 - 1 != i)
              {
                v8 = Lattice<WordLatticeLC>::createNode(a1);
              }

              v26 = *(*v17 + 2 * i);
              Lattice<PhonemeLatticeLC>::maybeCreateAndConnectLink(a1, v20, v8, &v26, 1, 0);
            }

            v14 = v28;
          }

          ++v15;
        }

        while (v15 < v14);
      }

      else
      {
        v16 = -2;
      }

      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v27);
      v7 = v23;
      if (v16 != -2)
      {
        v5 = v16;
      }

      v6 = v25 + 1;
    }

    while (v25 + 1 != v22);
  }

  Lattice<PhonemeLatticeLC>::gc(a1);
  Lattice<PhonemeLatticeLC>::topSortInternal(a1, 0);
  return a1;
}

uint64_t Lattice<PhonemeLatticeLC>::maybeCreateAndConnectLink(unint64_t a1, int a2, int a3, unsigned __int16 *a4, int a5, _DWORD *a6)
{
  v9 = *(*(a1 + 80) + 24 * a2 + 20);
  if (v9 == -2)
  {
LABEL_6:
    Link = Lattice<PhonemeLatticeLC>::createLink(a1, a2, a3, a4);
    v12 = Link;
    if (a6)
    {
      *a6 = *(*(a1 + 128) + 24 * Link + 4);
    }

    if (a5)
    {
      Lattice<PhonemeLatticeLC>::connectInLink(a1, Link);
      Lattice<PhonemeLatticeLC>::connectOutLink(a1, v12);
    }

    else
    {
      Lattice<PhonemeLatticeLC>::connectInLinkUnordered(a1, Link);
      Lattice<PhonemeLatticeLC>::connectOutLinkUnordered(a1, v12);
    }

    return 1;
  }

  else
  {
    v10 = *(a1 + 128);
    while (*(v10 + 24 * v9 + 12) != a3 || *a4 != *(v10 + 24 * v9))
    {
      v9 = *(v10 + 24 * v9 + 20);
      if (v9 == -2)
      {
        goto LABEL_6;
      }
    }

    result = 0;
    if (a6)
    {
      *a6 = *(v10 + 24 * v9 + 4);
    }
  }

  return result;
}

void *Lattice<PhonemeLatticeLC>::gc(void *a1)
{
  Lattice<PhonemeLatticeLC>::gcNonTerminal(a1);
  Lattice<PhonemeLatticeLC>::gcNonInitial(a1);
  v2 = a1[22];
  if (v2)
  {
    MemChunkFree(v2, 0);
    a1[22] = 0;
  }

  a1[23] = 0;
  result = a1[20];
  if (result)
  {
    result = MemChunkFree(result, 0);
    a1[20] = 0;
  }

  a1[21] = 0;
  return result;
}

void *Lattice<PhonemeLatticeLC>::~Lattice(void *a1)
{
  *a1 = &unk_287523988;
  v2 = a1 + 2;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 22));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 20));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 18));
  DgnIArray<Utterance *>::~DgnIArray((a1 + 16));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 14));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 12));
  DgnIArray<Utterance *>::~DgnIArray((a1 + 10));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 8));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 4));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  return a1;
}

void PhonemeLattice::~PhonemeLattice(PhonemeLattice *this)
{
  Lattice<PhonemeLatticeLC>::~Lattice(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t *PhonemeLattice::getNextStartNodes@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, unsigned __int16 *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  v5 = *(result[10] + 24 * a2 + 20);
  if (v5 != -2)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = result[16];
    do
    {
      if (*(v10 + 24 * v5) == *a3)
      {
        v11 = *(v10 + 24 * v5 + 12);
        if (v9 == *(a4 + 3))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(a4, 1, 1);
          v9 = *(a4 + 2);
          v8 = *a4;
          v10 = v7[16];
        }

        *(v8 + 4 * v9) = v11;
        v9 = *(a4 + 2) + 1;
        *(a4 + 2) = v9;
      }

      v5 = *(v10 + 24 * v5 + 20);
    }

    while (v5 != -2);
  }

  return result;
}

BOOL PhonemeLattice::hasCommonProns(unint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (!*(a1 + 40))
  {
    if ((a3 & 1) == 0)
    {
      LODWORD(v48) = *(a2 + 8);
      if (v48)
      {
        v49 = 0;
        do
        {
          v50 = (*v4 + 4 * v49);
          v51 = *v50;
          v52 = **VocMgr::smpVocMgr;
          v53 = *(*(v52 + ((v51 >> 22) & 0x3F8)) + 48);
          v54 = (v48 - 1);
          if (v49 >= v54)
          {
            PronSuccessorSeedCategory = *(v53 + 417);
          }

          else
          {
            PronSuccessorSeedCategory = WordList::getPronSuccessorSeedCategory(*(*(v52 + ((v50[1] >> 22) & 0x3F8)) + 48), v50[1] & 0xFFFFFF);
          }

          v85 = 0;
          v86 = 0;
          WordList::getWordFamilyCollatedSeedableProns(v53, v51 & 0xFFFFFF, v49 < v54, PronSuccessorSeedCategory, &v85);
          if (v86)
          {
            if (v85[2])
            {
              v56 = v85 + 6;
              v57 = 1;
              do
              {
                v58 = v57;
                if (v86 == v57)
                {
                  break;
                }

                v59 = *v56;
                v56 += 4;
                ++v57;
              }

              while (v59);
              v60 = v58 < v86;
            }

            else
            {
              v60 = 1;
            }
          }

          else
          {
            v60 = 0;
          }

          DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v85);
          if (!v60)
          {
            break;
          }

          ++v49;
          v48 = *(v4 + 8);
        }

        while (v49 < v48);
        return v60;
      }
    }

    return 1;
  }

  v6 = *(a1 + 32);
  if (a3 && *v6 == **(a1 + 48))
  {
    return 1;
  }

  v85 = 0;
  v86 = 0;
  v7 = *v6;
  DgnPrimArray<unsigned int>::reallocElts(&v85, 1, 1);
  v85[v86] = v7;
  LODWORD(v86) = v86 + 1;
  v83 = 0;
  v84 = 0;
  BitArray::BitArray(&v81, *(a1 + 24));
  BitArray::BitArray(&v79, *(a1 + 24));
  LODWORD(v8) = *(v4 + 8);
  if (v8)
  {
    v9 = 0;
    v66 = v4;
    while (1)
    {
      v10 = (*v4 + 4 * v9);
      v11 = *v10;
      v12 = *(*(**VocMgr::smpVocMgr + ((v11 >> 22) & 0x3F8)) + 48);
      v77 = 0;
      v78 = 0;
      if (!v86)
      {
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v77);
        goto LABEL_82;
      }

      v13 = (v8 - 1);
      if (v9 >= v13)
      {
        v15 = *(v12 + 417);
      }

      else
      {
        v14 = v9;
        v15 = WordList::getPronSuccessorSeedCategory(*(*(**VocMgr::smpVocMgr + ((v10[1] >> 22) & 0x3F8)) + 48), v10[1] & 0xFFFFFF);
        v9 = v14;
      }

      v69 = v9;
      v75 = 0;
      v76 = 0;
      WordList::getWordFamilyCollatedSeedableProns(v12, v11 & 0xFFFFFF, v9 < v13, v15, &v75);
      v16 = v76;
      if (!v76)
      {
        goto LABEL_51;
      }

      v17 = 0;
      v67 = 0;
      do
      {
        v18 = v75 + 16 * v17;
        if (*(v18 + 8))
        {
          v19 = v86;
          if (v86)
          {
            v20 = 0;
            do
            {
              v68 = v20;
              DgnPrimArray<int>::copyArraySlice(&v83, &v85, 0, v19);
              if (*(v18 + 8))
              {
                v21 = 0;
                do
                {
                  v73 = 0;
                  v74 = 0;
                  BitArray::clearRange(&v81, 0, v82);
                  if (v84)
                  {
                    v22 = 0;
                    do
                    {
                      v23 = *(v83 + 4 * v22);
                      v70 = *(*v18 + 2 * v21);
                      PhonemeLattice::getNextStartNodes(a1, v23, &v70, &v71);
                      v24 = v72;
                      if (v72)
                      {
                        for (i = 0; i < v24; ++i)
                        {
                          v26 = v71;
                          v27 = *(v71 + 4 * i);
                          v28 = *(*(a1 + 80) + 24 * v27);
                          v29 = v28 >> 5;
                          v30 = *(v81 + 4 * (v28 >> 5));
                          v31 = 1 << v28;
                          if ((v30 & v31) == 0)
                          {
                            if (a3 && v27 == **(a1 + 48))
                            {
                              DgnPrimArray<unsigned int>::~DgnPrimArray(&v71);
                              DgnPrimArray<unsigned int>::~DgnPrimArray(&v73);
                              v47 = 1;
                              v4 = v66;
                              goto LABEL_53;
                            }

                            *(v81 + 4 * v29) = v30 | v31;
                            v32 = *(v26 + 4 * i);
                            v33 = v74;
                            if (v74 == HIDWORD(v74))
                            {
                              DgnPrimArray<unsigned int>::reallocElts(&v73, 1, 1);
                              v33 = v74;
                            }

                            *(v73 + 4 * v33) = v32;
                            LODWORD(v74) = v74 + 1;
                            v24 = v72;
                          }
                        }
                      }

                      DgnPrimArray<unsigned int>::~DgnPrimArray(&v71);
                      ++v22;
                    }

                    while (v22 < v84);
                  }

                  DgnPrimArray<int>::copyArraySlice(&v83, &v73, 0, v74);
                  v34 = v84;
                  DgnPrimArray<unsigned int>::~DgnPrimArray(&v73);
                  if (!v34)
                  {
                    break;
                  }

                  ++v21;
                }

                while (v21 < *(v18 + 8));
              }

              v35 = v82;
              if (v82)
              {
                v36 = 0;
                v37 = v79;
                do
                {
                  v38 = v36 >> 5;
                  v39 = 1 << v36;
                  if ((*(v37 + 4 * (v36 >> 5)) & (1 << v36)) == 0 && (*(v81 + 4 * v38) & v39) != 0)
                  {
                    v40 = *(*(a1 + 16) + 4 * v36);
                    v41 = v78;
                    if (v78 == HIDWORD(v78))
                    {
                      DgnPrimArray<unsigned int>::reallocElts(&v77, 1, 1);
                      v41 = v78;
                      v37 = v79;
                    }

                    *(v77 + 4 * v41) = v40;
                    LODWORD(v78) = v78 + 1;
                    *(v37 + 4 * v38) |= v39;
                    v35 = v82;
                  }

                  ++v36;
                }

                while (v36 < v35);
              }

              v20 = v68 + 1;
              v19 = v86;
              v4 = v66;
            }

            while (v68 + 1 < v86);
            v16 = v76;
          }
        }

        else
        {
          v67 = 1;
        }

        ++v17;
      }

      while (v17 < v16);
      if (v67)
      {
        v42 = v78;
        if ((v86 + v78) > HIDWORD(v86))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v85, (v86 + v78 - HIDWORD(v86)), 1);
          v42 = v78;
        }

        if (v42)
        {
          v43 = 0;
          v44 = v77;
          v45 = v85;
          do
          {
            *(v45 + 4 * (v43 + v86)) = *(v44 + 4 * v43);
            ++v43;
            v46 = v78;
          }

          while (v43 < v78);
        }

        else
        {
          v46 = 0;
        }

        LODWORD(v86) = v86 + v46;
      }

      else
      {
LABEL_51:
        DgnPrimArray<int>::copyArraySlice(&v85, &v77, 0, v78);
      }

      BitArray::clearRange(&v79, 0, v80);
      v47 = 0;
LABEL_53:
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v75);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v77);
      if (v47)
      {
        break;
      }

      v9 = v69 + 1;
      v8 = *(v4 + 8);
      if (v69 + 1 >= v8)
      {
        goto LABEL_76;
      }
    }

    v60 = 1;
  }

  else
  {
LABEL_76:
    v61 = v86;
    if (v86)
    {
      v62 = v85;
      v63 = 0xFFFFFFFFLL;
      while (1)
      {
        v64 = *v62++;
        if (v64 == **(a1 + 48))
        {
          break;
        }

        --v63;
        if (!--v61)
        {
          goto LABEL_82;
        }
      }

      v60 = v63 != 0;
    }

    else
    {
LABEL_82:
      v60 = 0;
    }
  }

  BitArray::~BitArray(&v79);
  BitArray::~BitArray(&v81);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v83);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v85);
  return v60;
}