void WordLanguageModel::checkWordListLMAgreement(WordLanguageModel *this)
{
  v2 = *(*(this + 2) + 388);
  v3 = *(this + 32);
  if (!v3)
  {
    v3 = *(this + 36);
    if (!v3)
    {
      v3 = *(this + 40);
      if (v2 == v3)
      {
LABEL_5:
        if (!v2)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_4:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9191, "lm/wordlm", 49, "%u %u", *(*(this + 2) + 388), v3);
      goto LABEL_5;
    }
  }

  if (v2 != v3)
  {
    goto LABEL_4;
  }

LABEL_6:
  v4 = 0;
  do
  {
    v5 = *(this + 2);
    if (v4 < *(v5 + 388) && *(*(v5 + 104) + v4))
    {
      if (*(this + 32))
      {
        v6 = *(this + 15);
        v7 = *(v6 + 4 * v4);
        v8 = *(*(v5 + 256) + 4 * v4);
        v9 = *(v6 + 4 * v8);
      }

      else
      {
        LODWORD(v8) = *(*(v5 + 256) + 4 * v4);
        if (*(this + 36))
        {
          v10 = *(this + 17);
          if (*(v10 + 2 * v4) == 0xFFFF)
          {
            v7 = -1;
          }

          else
          {
            v7 = *(v10 + 2 * v4);
          }

          v9 = *(v10 + 2 * v8);
          v11 = v9 == 0xFFFF;
        }

        else
        {
          v12 = *(this + 19);
          if (*(v12 + v4) == 255)
          {
            v7 = -1;
          }

          else
          {
            v7 = *(v12 + v4);
          }

          v9 = *(v12 + v8);
          v11 = v9 == 255;
        }

        if (v11)
        {
          v9 = -1;
        }
      }

      if (v7 != v9)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9205, "lm/wordlm", 8, "%.500s %u %.500s %u %u %u", (*(v5 + 224) + *(*(v5 + 200) + 4 * v4)), v4, (*(v5 + 224) + *(*(v5 + 200) + 4 * v8)), v8, v7, v9);
      }
    }

    if (*(this + 276) == 1)
    {
      v13 = *(this + 2);
      if (v4 < *(v13 + 388))
      {
        if (*(*(v13 + 104) + v4))
        {
          if (*(this + 72))
          {
            v14 = *(this + 35);
            v15 = *(v14 + 4 * v4);
            v16 = *(*(v13 + 256) + 4 * v4);
            v17 = *(v14 + 4 * v16);
          }

          else
          {
            LODWORD(v16) = *(*(v13 + 256) + 4 * v4);
            if (*(this + 76))
            {
              v18 = *(this + 37);
              if (*(v18 + 2 * v4) == 0xFFFF)
              {
                v15 = -1;
              }

              else
              {
                v15 = *(v18 + 2 * v4);
              }

              v17 = *(v18 + 2 * v16);
              v19 = v17 == 0xFFFF;
            }

            else
            {
              v20 = *(this + 39);
              if (*(v20 + v4) == 255)
              {
                v15 = -1;
              }

              else
              {
                v15 = *(v20 + v4);
              }

              v17 = *(v20 + v16);
              v19 = v17 == 255;
            }

            if (v19)
            {
              v17 = -1;
            }
          }

          if (v15 != v17)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9220, "lm/wordlm", 62, "%.500s %u %.500s %u %u %u", (*(v13 + 224) + *(*(v13 + 200) + 4 * v4)), v4, (*(v13 + 224) + *(*(v13 + 200) + 4 * v16)), v16, v15, v17);
          }
        }
      }
    }

    ++v4;
  }

  while (v2 != v4);
}

uint64_t WordLanguageModel::getTotalPreloadableBytes(WordLanguageModel *this)
{
  v1 = *(this + 31);
  v2 = *(this + 29);
  if (v2)
  {
    v1 += (*(*v2 + 32))(v2);
  }

  return v1;
}

uint64_t WordLanguageModel::computeTotalPreloadableBytes(WordLanguageModel *this)
{
  if (*(this + 68))
  {
    v2 = 0;
  }

  else
  {
    v2 = WordLanguageModel::computeLocalPreloadableBytes(this);
  }

  v3 = *(this + 29);
  if (v3)
  {
    v2 += (*(*v3 + 40))(v3);
  }

  return v2;
}

uint64_t WordLanguageModel::computeLocalPreloadableBytes(WordLanguageModel *this)
{
  if (*(this + 16) < 2u)
  {
    return 0;
  }

  v2 = BigramData::computeLocalPreloadableBytes((this + 360));
  if (*(this + 16) >= 3u)
  {
    v2 += TrigramData::computeLocalPreloadableBytes((this + 744));
    if (*(this + 16) >= 4u)
    {
      v2 += QuadgramData::computeLocalPreloadableBytes((this + 1232));
    }
  }

  return v2;
}

uint64_t WordLanguageModel::preloadBigramsAndTrigrams(uint64_t a1, unsigned int a2, uint64_t *a3, unsigned int *a4, _DWORD *a5)
{
  v7 = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  v8 = *a3;
  do
  {
    v9 = v8 + 16 * v7;
    if (*(v9 + 8))
    {
      v10 = 0;
      do
      {
        v11 = *(*v9 + 4 * v10);
        v12 = v11 & 0xE0000000;
        if ((v11 & 0xE0000000) == 0x80000000)
        {
          WordLanguageModel::preloadTrigramRecord(a1, v11 & 0x1FFFFFFF, v20, v19, v18, v17);
        }

        else if (v12 == 0x40000000)
        {
          WordLanguageModel::preloadBigramRecord(a1, v11 & 0x1FFFFFFF, v20, v19, v18, v17);
        }

        else
        {
          if (v12 == -1610612736)
          {
            goto LABEL_13;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4100, "lm/wordlm", 71, "%u", v11 & 0xE0000000);
        }

        ++v10;
        v8 = *a3;
        v9 = *a3 + 16 * v7;
      }

      while (v10 < *(v9 + 8));
    }

    ++v7;
  }

  while (v7 <= a2);
  LODWORD(v10) = 0;
LABEL_13:
  *a4 = v7;
  *a5 = v10;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
}

void sub_26279709C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void WordLanguageModel::preloadBigramRecord(uint64_t a1, unsigned int a2, uint64_t a3, __int16 **a4, void *a5, uint64_t a6)
{
  WordLanguageModel::readBigramRecord(a1, a2, a3, a4, a5, a6);
  BigramData::bi1SetEmpty(a1 + 360, a2);

  BigramData::fillBigramRecordPreload((a1 + 360), a2, a3, a4, a5);
}

uint64_t *WordLanguageModel::preloadTrigramRecord(uint64_t a1, unsigned int a2, uint64_t a3, __int16 **a4, void *a5, uint64_t a6)
{
  WordLanguageModel::readTrigramRecord(a1, a2, a3, a4, a5, a6);
  TrigramData::tri2SetUnallocated(a1 + 744, a2);

  return TrigramData::fillTrigramRecordPreload((a1 + 744), a2, a3, a4, a5);
}

uint64_t WordLanguageModel::preloadQuadgrams(uint64_t a1, unsigned int a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v23[0] = 0;
  v23[1] = 0;
  v22[0] = 0;
  v22[1] = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  if (a4 <= a2)
  {
    v7 = a5;
    v8 = *a3;
    do
    {
      v9 = a4;
      for (i = v8 + 16 * a4; v7 < *(i + 8); i = *a3 + 16 * v9)
      {
        v11 = *(*i + 4 * v7);
        if ((v11 & 0xE0000000) == 0xA0000000)
        {
          WordLanguageModel::preloadQuadgramRecord(a1, v11 & 0x1FFFFFFF, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14);
        }

        else
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4150, "lm/wordlm", 71, "%u", v11 & 0xE0000000);
        }

        ++v7;
        v8 = *a3;
      }

      v7 = 0;
      a4 = v9 + 1;
    }

    while (v9 + 1 <= a2);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
}

void sub_26279735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v25 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v25 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v25 - 104);
  _Unwind_Resume(a1);
}

uint64_t WordLanguageModel::preloadQuadgramRecord(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = a2;
  WordLanguageModel::readQuadgramRecord(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  v19 = a1 + 1232;
  QuadgramData::quad2SetUnallocated(a1 + 1232, v17);
  result = QuadgramData::allocQuad2((a1 + 1232), v17, *(a3 + 4));
  v50 = a4;
  v21 = *(a4 + 8);
  if (*(a1 + 1256))
  {
    if (v21)
    {
      v22 = 0;
      v23 = v17 >> 5;
      v24 = 1 << v17;
      do
      {
        v25 = *(*(a1 + 1480) + 4 * v17);
        if (*(a1 + 1232) && (*(*(a1 + 1344) + 4 * v23) & v24) != 0)
        {
          LODWORD(v25) = *(*(a1 + 1656) + 4 * v25);
          v26 = 440;
        }

        else
        {
          v26 = 264;
        }

        *(*(v19 + v26) + 2 * (v22 + v25)) = *(*v50 + 2 * v22);
        result = QuadgramData::allocScoresForIndex((a1 + 1232), v17, v22, *(*a3 + 2 * v22));
        v27 = *(*(a1 + 1480) + 4 * v17);
        if (*(a1 + 1232) && (*(*(a1 + 1344) + 4 * v23) & v24) != 0)
        {
          LODWORD(v27) = *(*(a1 + 1656) + 4 * v27);
          v28 = 472;
        }

        else
        {
          v28 = 312;
        }

        *(*(v19 + v28) + (v22 + v27)) = *(*a7 + v22);
        ++v22;
        v29 = *(v50 + 8);
      }

      while (v22 < v29);
      goto LABEL_27;
    }

LABEL_26:
    v29 = 0;
    goto LABEL_27;
  }

  if (!v21)
  {
    goto LABEL_26;
  }

  v30 = a6;
  v31 = 0;
  v49 = v17 >> 5;
  v32 = 1 << v17;
  v33 = *(*(a1 + 1480) + 4 * v17);
  v34 = *(a1 + 1232);
  do
  {
    if (v34 && (*(*(a1 + 1344) + 4 * v49) & v32) != 0)
    {
      LODWORD(v33) = *(*(a1 + 1656) + 4 * v33);
      v35 = 440;
    }

    else
    {
      v35 = 264;
    }

    *(*(v19 + v35) + 2 * (v31 + v33)) = *(*v50 + 2 * v31);
    result = QuadgramData::allocScoresForIndex((a1 + 1232), v17, v31, *(*a3 + 2 * v31));
    v33 = *(*(a1 + 1480) + 4 * v17);
    v34 = *(a1 + 1232);
    if (v34 && (*(*(a1 + 1344) + 4 * v49) & v32) != 0)
    {
      v36 = *(*(a1 + 1656) + 4 * v33);
      v37 = 456;
    }

    else
    {
      v37 = 296;
      v36 = *(*(a1 + 1480) + 4 * v17);
    }

    *(*(v19 + v37) + 2 * (v31 + v36)) = *(*v30 + 2 * v31);
    ++v31;
    v29 = *(v50 + 8);
  }

  while (v31 < v29);
LABEL_27:
  if (*(a1 + 1272))
  {
    if (v29)
    {
      v38 = 0;
      v39 = 0;
      v40 = *a3;
      do
      {
        LODWORD(v41) = *(v40 + 2 * v38);
        if (*(v40 + 2 * v38))
        {
          v42 = 0;
          do
          {
            QuadgramData::setQuad3SuccIdForIndex(v19, v17, v38, v42, *(*a5 + 2 * (v39 + v42)));
            result = QuadgramData::setQuantizedScoreForIndex(v19, v17, v38, v42, *(*a9 + (v39 + v42)));
            ++v42;
            v40 = *a3;
            v41 = *(*a3 + 2 * v38);
          }

          while (v42 < v41);
          v29 = *(v50 + 8);
        }

        v39 += v41;
        ++v38;
      }

      while (v38 < v29);
    }
  }

  else if (v29)
  {
    v43 = 0;
    v44 = 0;
    v45 = *a3;
    do
    {
      LODWORD(v46) = *(v45 + 2 * v43);
      if (*(v45 + 2 * v43))
      {
        v47 = 0;
        do
        {
          QuadgramData::setQuad3SuccIdForIndex(v19, v17, v43, v47, *(*a5 + 2 * (v44 + v47)));
          result = QuadgramData::setScoreForIndex(v19, v17, v43, v47, *(*a8 + 2 * (v44 + v47)));
          ++v47;
          v45 = *a3;
          v46 = *(*a3 + 2 * v43);
        }

        while (v47 < v46);
        v29 = *(v50 + 8);
      }

      v44 += v46;
      ++v43;
    }

    while (v43 < v29);
  }

  return result;
}

void WordLanguageModel::finalizeLM(uint64_t a1, LanguageModel *a2, DFile *a3, DFileChecksums *a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8, int a9, char a10, uint64_t a11, BOOL a12, unint64_t a13, unint64_t a14)
{
  if (*(a1 + 232))
  {
    v39[0] = 1;
    DFile::pushCurrentSubDirComponent(a3, v39);
    BYTE4(v23) = a10;
    LODWORD(v23) = a9;
    (*(**(a1 + 232) + 48))(*(a1 + 232), a2, a3, a4, a5, a6, a7, a8, v23, a11, a12, a13, a14);
    DFile::popCurrentSubDirComponent(a3);
    v18 = (*(**(a1 + 232) + 696))();
    if (v18 != (*(*a1 + 696))(a1))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4216, "lm/wordlm", 68, "%s", errStr_lm_wordlm_E_BACKOFF_MISMATCHED_ENDLMID);
    }
  }

  if (a14)
  {
    if (!a5)
    {
      if (*(a1 + 248))
      {
        LODWORD(v19) = 1000;
        if ((a14 & 0x8000000000000000) != 0 || a14 > a13 || (v19 = 1000 * a14 / a13, v19))
        {
          v24 = a8;
          (*(**(a1 + 224) + 24))(*(a1 + 224), *(a1 + 256));
          v39[0] = 0;
          v39[1] = 0;
          v38[0] = 0;
          v38[1] = 0;
          v37[0] = 0;
          v37[1] = 0;
          v36[0] = 0;
          v36[1] = 0;
          v35[0] = 0;
          v35[1] = 0;
          v34[0] = 0;
          v34[1] = 0;
          v33[0] = 0;
          v33[1] = 0;
          v32 = 0;
          readObject<unsigned int>(*(a1 + 224), v39, &v32);
          readObject<unsigned int>(*(a1 + 224), v38, &v32);
          readObject<unsigned int>(*(a1 + 224), v37, &v32);
          readObject<unsigned int>(*(a1 + 224), v36, &v32);
          readObject<unsigned int>(*(a1 + 224), v35, &v32);
          readObject<unsigned int>(*(a1 + 224), v34, &v32);
          readObject<unsigned int>(*(a1 + 224), v33, &v32);
          v20 = 0;
          v30 = 0;
          v31 = 0;
          do
          {
            v21 = v31;
            if (v31 == HIDWORD(v31))
            {
              DgnArray<DgnPrimArray<double>>::reallocElts(&v30, 1, 1);
              v21 = v31;
            }

            v22 = (v30 + 16 * v21);
            *v22 = 0;
            v22[1] = 0;
            LODWORD(v31) = v31 + 1;
            readObject<unsigned int>(*(a1 + 224), v30 + 16 * v20++, &v32);
          }

          while (v20 <= v19);
          (*(**(a1 + 224) + 24))(*(a1 + 224), *(a1 + 260));
          BigramData::preAllocateDynamicBigramData((a1 + 360), *(v38[0] + 4 * v19), *(v37[0] + 4 * v19));
          TrigramData::preAllocateDynamicTrigramData((a1 + 744), *(v36[0] + 4 * v19), *(v35[0] + 4 * v19));
          QuadgramData::preAllocateDynamicQuadgramData((a1 + 1232), *(v34[0] + 4 * v19), *(v33[0] + 4 * v19));
          v29 = 0;
          WordLanguageModel::preloadBigramsAndTrigrams(a1, v19, &v30, &v29 + 1, &v29);
          a8 = v24;
          BigramData::compact((a1 + 360));
          TrigramData::compact((a1 + 744));
          WordLanguageModel::preloadQuadgrams(a1, v19, &v30, HIDWORD(v29), v29);
          (*(**(a1 + 40) + 64))(*(a1 + 40), 0);
          QuadgramData::compact((a1 + 1232));
          DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v30);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v33);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v34);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v35);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v36);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v37);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v38);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v39);
        }
      }
    }
  }

  BYTE4(v23) = a10;
  LODWORD(v23) = a9;
  LanguageModel::finalizeLM(a1, a2, a3, a4, a5, a6, a7, a8, v23, a11, a12);
}

void sub_262797BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v27 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v27 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v27 - 104);
  _Unwind_Resume(a1);
}

void readObject<unsigned int>(RealDFileSubFileStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *(a2 + 12);
  if (v8 > v7)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v8 - v7, 0);
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, *a2, v6, a3);
}

uint64_t WordLanguageModel::canSaveAsText(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (!v2)
  {
    return *(this + 5) == 0;
  }

  result = (*(*v2 + 64))(v2);
  if (result)
  {
    return *(this + 5) == 0;
  }

  return result;
}

RecentBuffer *WordLanguageModel::saveLM(RecentBuffer **this, DFile *a2, DFileChecksums *a3, _BOOL8 a4, DFileChecksums *a5)
{
  if (*(this + 16) < 2u || *(this + 244) == 1 && (v11 = 1, DFile::pushCurrentSubDirComponent(a2, &v11), (*(*this[29] + 72))(this[29], a2, a3, a4, a5), DFile::popCurrentSubDirComponent(a2), *(this + 16) < 2u) || !this[28])
  {
    if (a4)
    {
      WordLanguageModel::saveWns(this, a2, this[5] != 0, a5);
      WordLanguageModel::saveText(this, a2, a5);
    }

    else
    {
      WordLanguageModel::saveBinary(this, a2, a3, a5);
    }
  }

  else
  {
    WordLanguageModel::saveDynamic(this, a2, a3, a5);
  }

  result = this[1];
  if (result)
  {
    return RecentBuffer::saveRecentBuffer(result, a2, a3, a4, a5);
  }

  return result;
}

void (***WordLanguageModel::saveDynamic(WordLanguageModel *this, DFile *a2, DFileChecksums *a3, uint64_t a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x70u, a4, "LMWNGDYN", 24, 16);
  v11 = 0;
  writeObject(v7, this + 16, &v11);
  writeObject(v7, this + 68, &v11);
  writeObject(v7, this + 18, &v11);
  writeObject(v7, this + 19, &v11);
  writeObject(v7, this + 80, &v11);
  writeObject(v7, this + 25, &v11);
  writeObject(v7, this + 60, &v11);
  writeObject(v7, this + 244, &v11);
  v10 = 1;
  writeObject(v7, &v10, &v11);
  WordLanguageModel::saveUnigramMembersBinary(this, v7, &v11);
  if (*(this + 16) >= 2u)
  {
    WordLanguageModel::saveBigramMembersBinary(this, v7, &v11);
  }

  writeObjectChecksum(v7, &v11);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 112, v11);
  return DgnDelete<DgnStream>(v7);
}

void WordLanguageModel::saveWns(WordLanguageModel *this, DFile *a2, unsigned int a3, int a4)
{
  DgnTextFileWriter::DgnTextFileWriter(v16);
  DgnTextFileWriter::openDgnTextFileWriter(v16, a2, 115, a4);
  v14 = 0;
  v15 = 0;
  DgnTextFile::legalDgnTextFileVersions(v16, sWNS_Versions, &v14);
  DgnTextFileWriter::setFileType(v16, "WordNGramSpec", (v14 + 8 * (v15 - 1)));
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  DgnTextFileWriter::setLineFieldFormat(v16, v13, v12);
  DgnTextFileWriter::setHeaderFieldUnsigned(v16, "Depth", *(this + 16));
  DgnTextFileWriter::setHeaderFieldInteger(v16, "AlienWordLmId", *(this + 18));
  DgnTextFileWriter::setHeaderFieldBool(v16, "AllowNewWordCloning", *(this + 80));
  DgnTextFileWriter::setHeaderFieldInteger(v16, "IgnoreInContextLmId", *(this + 25));
  if (*(this + 16) >= 2u)
  {
    DgnTextFileWriter::setHeaderFieldInteger(v16, "UnknownContextLmId", *(this + 60));
    DgnTextFileWriter::setHeaderFieldInteger(v16, "AlienWordContextLmId", *(this + 19));
    if (*(this + 29))
    {
      DgnString::DgnString(&v10);
      v9 = 1;
      SubDirExtension::appendToString(&v9, &v10);
      if (v11)
      {
        v8 = v10;
      }

      else
      {
        v8 = &unk_26288CFB0;
      }

      DgnTextFileWriter::setHeaderField(v16, "BackoffSubDirectory", v8);
      DgnTextFileWriter::setHeaderFieldUnsigned(v16, "BackoffAfterDepth", 2);
      DgnString::~DgnString(&v10);
    }

    DgnTextFileWriter::setHeaderFieldBool(v16, "HasStaticComponentOnDisk", a3);
    DgnTextFileWriter::setHeaderFieldBool(v16, "LoadNgrams", *(this + 68));
  }

  DgnArray<DgnString>::releaseAll(v12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
  DgnIArray<Utterance *>::~DgnIArray(&v14);
  DgnTextFileWriter::~DgnTextFileWriter(v16);
}

void sub_262798168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
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
  va_copy(va4, va3);
  v13 = va_arg(va4, void);
  v15 = va_arg(va4, void);
  DgnString::~DgnString(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnIArray<Utterance *>::~DgnIArray(va3);
  DgnTextFileWriter::~DgnTextFileWriter(va4);
  _Unwind_Resume(a1);
}

void WordLanguageModel::saveText(WordLanguageModel *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v172);
  DgnTextFileWriter::openDgnTextFileWriter(v172, a2, 116, a3);
  v170 = 0;
  v171 = 0;
  DgnTextFile::legalDgnTextFileVersions(v172, sWNT_Versions, &v170);
  DgnTextFileWriter::setFileType(v172, "WordNGramText", (v170 + 8 * (v171 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v172, "Depth", *(this + 16));
  DgnTextFileWriter::setHeaderFieldUnsigned(v172, "LMScale", *(this + 8));
  DgnTextFileWriter::setHeaderFieldUnsigned(v172, "NumLmIds", *(this + 26));
  DgnTextFileWriter::setHeaderFieldInteger(v172, "BegLmId", *(this + 28));
  DgnTextFileWriter::setHeaderFieldInteger(v172, "EndLmId", *(this + 29));
  if (*(this + 16) >= 2u)
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v172, "ContextSkipDistance", *(this + 68));
    DgnTextFileWriter::setHeaderFieldBool(v172, "HasWordIdToContextLmId", *(this + 276));
  }

  v168 = 0;
  v169 = 0;
  v166 = 0;
  v167 = 0;
  DgnString::DgnString(&v164, "TableName");
  v6 = v169;
  if (v169 == HIDWORD(v169))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v168, 1, 1);
    v6 = v169;
  }

  DgnString::DgnString((v168 + 16 * v6), &v164);
  LODWORD(v169) = v169 + 1;
  DgnString::~DgnString(&v164);
  v7 = v167;
  if (v167 == HIDWORD(v167))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v166, 1, 1);
    v7 = v167;
  }

  *(v166 + 4 * v7) = 0;
  LODWORD(v167) = v7 + 1;
  v158 = v169;
  DgnString::DgnString(&v164, "Index1");
  v8 = v169;
  if (v169 == HIDWORD(v169))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v168, 1, 1);
    v8 = v169;
  }

  DgnString::DgnString((v168 + 16 * v8), &v164);
  LODWORD(v169) = v169 + 1;
  DgnString::~DgnString(&v164);
  v9 = v167;
  if (v167 == HIDWORD(v167))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v166, 1, 1);
    v9 = v167;
  }

  *(v166 + 4 * v9) = 3;
  LODWORD(v167) = v9 + 1;
  v10 = v169;
  v159 = v169;
  v11 = v169;
  v157 = v169;
  if (*(this + 16) >= 2u)
  {
    DgnString::DgnString(&v164, "Index2");
    v12 = v169;
    if (v169 == HIDWORD(v169))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(&v168, 1, 1);
      v12 = v169;
    }

    DgnString::DgnString((v168 + 16 * v12), &v164);
    LODWORD(v169) = v169 + 1;
    DgnString::~DgnString(&v164);
    v13 = v167;
    if (v167 == HIDWORD(v167))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v166, 1, 1);
      v13 = v167;
    }

    *(v166 + 4 * v13) = 3;
    LODWORD(v167) = v13 + 1;
    v10 = v169;
    if (*(this + 16) < 3u)
    {
      v159 = v169;
      v11 = v169;
    }

    else
    {
      DgnString::DgnString(&v164, "Index3");
      v14 = v169;
      if (v169 == HIDWORD(v169))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v168, 1, 1);
        v14 = v169;
      }

      DgnString::DgnString((v168 + 16 * v14), &v164);
      LODWORD(v169) = v169 + 1;
      DgnString::~DgnString(&v164);
      v15 = v167;
      if (v167 == HIDWORD(v167))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v166, 1, 1);
        v15 = v167;
      }

      *(v166 + 4 * v15) = 3;
      LODWORD(v167) = v15 + 1;
      v11 = v169;
      if (*(this + 16) < 4u)
      {
        v159 = v169;
      }

      else
      {
        DgnString::DgnString(&v164, "Index4");
        v16 = v169;
        if (v169 == HIDWORD(v169))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v168, 1, 1);
          v16 = v169;
        }

        DgnString::DgnString((v168 + 16 * v16), &v164);
        LODWORD(v169) = v169 + 1;
        DgnString::~DgnString(&v164);
        v17 = v167;
        if (v167 == HIDWORD(v167))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v166, 1, 1);
          v17 = v167;
        }

        *(v166 + 4 * v17) = 3;
        LODWORD(v167) = v17 + 1;
        v159 = v169;
      }
    }
  }

  DgnString::DgnString(&v164, "EntryValue1");
  v18 = v169;
  if (v169 == HIDWORD(v169))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v168, 1, 1);
    v18 = v169;
  }

  DgnString::DgnString((v168 + 16 * v18), &v164);
  LODWORD(v169) = v169 + 1;
  DgnString::~DgnString(&v164);
  v19 = v167;
  if (v167 == HIDWORD(v167))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v166, 1, 1);
    v19 = v167;
  }

  *(v166 + 4 * v19) = 1;
  LODWORD(v167) = v19 + 1;
  DgnTextFileWriter::setLineFieldFormat(v172, &v166, &v168);
  v20 = *(this + 44);
  if (v20 >= 2)
  {
    for (i = 1; i < v20; ++i)
    {
      v22 = *(*(this + 21) + 2 * i);
      if (v22 != 20000)
      {
        DgnTextFileWriter::setLineFieldValue(v172, 0, "UniSc");
        DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, i);
        if (*(this + 16) >= 2u)
        {
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
          if (*(this + 16) >= 3u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
            if (*(this + 16) >= 4u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v11, 0);
            }
          }
        }

        DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v22);
        DgnTextFileWriter::writeNextLine(v172);
        v20 = *(this + 44);
      }
    }
  }

  v23 = *(this + 32);
  if (v23)
  {
    for (j = 0; j < v23; ++j)
    {
      v25 = *(*(this + 15) + 4 * j);
      if (v25 != -1)
      {
        DgnTextFileWriter::setLineFieldValue(v172, 0, "WordIdToLmId");
        DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, j);
        if (*(this + 16) >= 2u)
        {
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
          if (*(this + 16) >= 3u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
            if (*(this + 16) >= 4u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v11, 0);
            }
          }
        }

        DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v25);
        DgnTextFileWriter::writeNextLine(v172);
        v23 = *(this + 32);
      }
    }
  }

  else
  {
    v26 = *(this + 36);
    if (v26)
    {
      for (k = 0; k < v26; ++k)
      {
        v28 = *(*(this + 17) + 2 * k);
        if (v28 != 0xFFFF)
        {
          DgnTextFileWriter::setLineFieldValue(v172, 0, "WordIdToLmId");
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, k);
          if (*(this + 16) >= 2u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
            if (*(this + 16) >= 3u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
              if (*(this + 16) >= 4u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v172, v11, 0);
              }
            }
          }

          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v28);
          DgnTextFileWriter::writeNextLine(v172);
          v26 = *(this + 36);
        }
      }
    }

    else
    {
      v29 = *(this + 40);
      if (v29)
      {
        for (m = 0; m < v29; ++m)
        {
          v31 = *(*(this + 19) + m);
          if (v31 != 255)
          {
            DgnTextFileWriter::setLineFieldValue(v172, 0, "WordIdToLmId");
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, m);
            if (*(this + 16) >= 2u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
              if (*(this + 16) >= 3u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
                if (*(this + 16) >= 4u)
                {
                  DgnTextFileWriter::setLineFieldUnsignedValue(v172, v11, 0);
                }
              }
            }

            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v31);
            DgnTextFileWriter::writeNextLine(v172);
            v29 = *(this + 40);
          }
        }
      }
    }
  }

  v155 = v11;
  if (*(this + 16) >= 2u)
  {
    if (*(this + 276) == 1)
    {
      v32 = *(this + 72);
      if (v32)
      {
        for (n = 0; n < v32; ++n)
        {
          v34 = *(*(this + 35) + 4 * n);
          if (v34 != -1)
          {
            DgnTextFileWriter::setLineFieldValue(v172, 0, "WordIdToContextLmId");
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, n);
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
            if (*(this + 16) >= 3u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
              if (*(this + 16) >= 4u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v172, v11, 0);
              }
            }

            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v34);
            DgnTextFileWriter::writeNextLine(v172);
            v32 = *(this + 72);
          }
        }
      }

      else
      {
        v35 = *(this + 76);
        if (v35)
        {
          for (ii = 0; ii < v35; ++ii)
          {
            v37 = *(*(this + 37) + 2 * ii);
            if (v37 != 0xFFFF)
            {
              DgnTextFileWriter::setLineFieldValue(v172, 0, "WordIdToContextLmId");
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, ii);
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
              if (*(this + 16) >= 3u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
                if (*(this + 16) >= 4u)
                {
                  DgnTextFileWriter::setLineFieldUnsignedValue(v172, v11, 0);
                }
              }

              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v37);
              DgnTextFileWriter::writeNextLine(v172);
              v35 = *(this + 76);
            }
          }
        }

        else
        {
          v38 = *(this + 80);
          if (v38)
          {
            for (jj = 0; jj < v38; ++jj)
            {
              v40 = *(*(this + 39) + jj);
              if (v40 != 255)
              {
                DgnTextFileWriter::setLineFieldValue(v172, 0, "WordIdToContextLmId");
                DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, jj);
                DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
                if (*(this + 16) >= 3u)
                {
                  DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
                  if (*(this + 16) >= 4u)
                  {
                    DgnTextFileWriter::setLineFieldUnsignedValue(v172, v11, 0);
                  }
                }

                DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v40);
                DgnTextFileWriter::writeNextLine(v172);
                v38 = *(this + 80);
              }
            }
          }
        }
      }
    }

    v41 = *(this + 84);
    if (v41 >= 2)
    {
      for (kk = 1; kk < v41; ++kk)
      {
        v43 = *(*(this + 41) + 2 * kk);
        if (v43 != 20000)
        {
          DgnTextFileWriter::setLineFieldValue(v172, 0, "UniBoSc");
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, kk);
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
          if (*(this + 16) >= 3u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
            if (*(this + 16) >= 4u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v11, 0);
            }
          }

          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v43);
          DgnTextFileWriter::writeNextLine(v172);
          v41 = *(this + 84);
        }
      }
    }

    v44 = *(this + 88);
    if (v44 >= 2)
    {
      for (mm = 1; mm < v44; ++mm)
      {
        v46 = *(*(this + 43) + 2 * mm);
        if (v46 != 20000)
        {
          DgnTextFileWriter::setLineFieldValue(v172, 0, "BoWt");
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, mm);
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
          if (*(this + 16) >= 3u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
            if (*(this + 16) >= 4u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v11, 0);
            }
          }

          DgnTextFileWriter::setLineFieldIntegerValue(v172, v159, v46);
          DgnTextFileWriter::writeNextLine(v172);
          v44 = *(this + 88);
        }
      }
    }

    if (*(this + 94) >= 2u)
    {
      v47 = 1;
      do
      {
        v48 = *(*(this + 46) + 2 * v47);
        DgnTextFileWriter::setLineFieldValue(v172, 0, "BiScQuant");
        DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, v47);
        DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
        if (*(this + 16) >= 3u)
        {
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
          if (*(this + 16) >= 4u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v11, 0);
          }
        }

        DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v48);
        DgnTextFileWriter::writeNextLine(v172);
        ++v47;
      }

      while (v47 < *(this + 94));
    }

    v156 = v10;
    v164 = 0;
    v165 = 0;
    v162 = 0;
    v163 = 0;
    v160 = 0;
    v161 = 0;
    if (*(this + 140) >= 2u)
    {
      v49 = 1;
      do
      {
        LODWORD(v165) = 0;
        LODWORD(v163) = 0;
        LODWORD(v161) = 0;
        if ((*(*(this + 48) + ((v49 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v49))
        {
          if (*(*(this + 69) + 2 * v49))
          {
            v50 = 1;
            do
            {
              v51 = *(this + 94);
              v52 = v50 - 1;
              v53 = (*(*(this + 67) + 4 * v49) + v52);
              if (v51)
              {
                v53 = *(*(this + 73) + v53);
                v54 = *(this + 46);
              }

              else
              {
                v54 = *(this + 71);
              }

              v55 = *(v54 + 2 * v53);
              if (v55 != 20000)
              {
                v56 = v165;
                if (v165 == HIDWORD(v165))
                {
                  DgnPrimArray<short>::reallocElts(&v164, 1, 1);
                  v56 = v165;
                  v51 = *(this + 94);
                }

                *(v164 + 2 * v56) = v50;
                LODWORD(v165) = v56 + 1;
                if (v51)
                {
                  v57 = *(*(this + 73) + (*(*(this + 67) + 4 * v49) + v52));
                  v58 = v161;
                  if (v161 == HIDWORD(v161))
                  {
                    DgnPrimArray<char>::reallocElts(&v160, 1, 1);
                    v58 = v161;
                  }

                  *(v160 + v58) = v57;
                  v59 = v161;
                  v60 = &v161;
                }

                else
                {
                  v59 = v163;
                  if (v163 == HIDWORD(v163))
                  {
                    DgnPrimArray<short>::reallocElts(&v162, 1, 1);
                    v59 = v163;
                  }

                  *(v162 + 2 * v59) = v55;
                  v60 = &v163;
                }

                *v60 = v59 + 1;
              }

              ++v50;
            }

            while (*(*(this + 69) + 2 * v49) >= v50);
          }
        }

        else if (*(*(this + 69) + 2 * v49))
        {
          v61 = 0;
          do
          {
            SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex((this + 360), v49, v61);
            SearchScoreForIndex = BigramData::getSearchScoreForIndex((this + 360), v49, v61);
            v64 = SearchScoreForIndex;
            if (SearchScoreForIndex != 20000)
            {
              v65 = v165;
              if (v165 == HIDWORD(v165))
              {
                DgnPrimArray<short>::reallocElts(&v164, 1, 1);
                v65 = v165;
              }

              *(v164 + 2 * v65) = SearchSuccIdForIndex;
              LODWORD(v165) = v65 + 1;
              if (*(this + 94))
              {
                SearchQuantizedScoreForIndex = BigramData::getSearchQuantizedScoreForIndex((this + 360), v49, v61);
                v67 = v161;
                if (v161 == HIDWORD(v161))
                {
                  DgnPrimArray<char>::reallocElts(&v160, 1, 1);
                  v67 = v161;
                }

                *(v160 + v67) = SearchQuantizedScoreForIndex;
                v68 = v161;
                v69 = &v161;
              }

              else
              {
                v68 = v163;
                if (v163 == HIDWORD(v163))
                {
                  DgnPrimArray<short>::reallocElts(&v162, 1, 1);
                  v68 = v163;
                }

                *(v162 + 2 * v68) = v64;
                v69 = &v163;
              }

              *v69 = v68 + 1;
            }

            ++v61;
          }

          while (v61 < *(*(this + 69) + 2 * v49));
        }

        if (v165)
        {
          v70 = 0;
          do
          {
            if (*(this + 94))
            {
              v71 = *(v160 + v70);
            }

            else
            {
              v71 = *(v162 + 2 * v70);
            }

            v72 = *(v164 + 2 * v70);
            DgnTextFileWriter::setLineFieldValue(v172, 0, "BiSc");
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, v49);
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, v72);
            if (*(this + 16) >= 3u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
              if (*(this + 16) >= 4u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v172, v155, 0);
              }
            }

            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v71);
            DgnTextFileWriter::writeNextLine(v172);
            ++v70;
          }

          while (v70 < v165);
        }

        ++v49;
      }

      while (v49 < *(this + 140));
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v160);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v162);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v164);
    if (*(this + 16) >= 3u)
    {
      if (*(this + 192) >= 2u)
      {
        v73 = 1;
        do
        {
          v74 = *(*(this + 95) + 2 * v73);
          DgnTextFileWriter::setLineFieldValue(v172, 0, "TriBoWtQuant");
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, v73);
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
          if (*(this + 16) >= 4u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v155, 0);
          }

          DgnTextFileWriter::setLineFieldIntegerValue(v172, v159, v74);
          DgnTextFileWriter::writeNextLine(v172);
          ++v73;
        }

        while (v73 < *(this + 192));
      }

      if (*(this + 196) >= 2u)
      {
        v75 = 1;
        do
        {
          v76 = *(*(this + 97) + 2 * v75);
          DgnTextFileWriter::setLineFieldValue(v172, 0, "TriScQuant");
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, v75);
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v10, 0);
          if (*(this + 16) >= 4u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v155, 0);
          }

          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v76);
          DgnTextFileWriter::writeNextLine(v172);
          ++v75;
        }

        while (v75 < *(this + 196));
      }

      v77 = *(this + 200);
      if (v77 >= 2)
      {
        for (nn = 1; nn < v77; ++nn)
        {
          v79 = *(this + 99);
          v80 = *(v79 + 2 * nn);
          if (*(v79 + 2 * nn))
          {
            v81 = 0;
            do
            {
              v82 = v81 + *(*(this + 101) + 4 * nn);
              v83 = *(*(this + 103) + 2 * v82);
              DgnTextFileWriter::setLineFieldValue(v172, 0, "TriBoWt");
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, nn);
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, v83);
              DgnTextFileWriter::setLineFieldUnsignedValue(v172, v156, 0);
              if (*(this + 16) >= 4u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v172, v155, 0);
              }

              if (*(this + 192))
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, *(*(this + 107) + v82));
              }

              else
              {
                DgnTextFileWriter::setLineFieldIntegerValue(v172, v159, *(*(this + 105) + 2 * v82));
              }

              DgnTextFileWriter::writeNextLine(v172);
              ++v81;
            }

            while (v80 != v81);
            v77 = *(this + 200);
          }
        }
      }

      v164 = 0;
      v165 = 0;
      v162 = 0;
      v163 = 0;
      v160 = 0;
      v161 = 0;
      if (v77 >= 2)
      {
        for (i1 = 1; i1 < v77; ++i1)
        {
          v149 = *(*(this + 99) + 2 * i1);
          if (*(*(this + 99) + 2 * i1))
          {
            v85 = 0;
            do
            {
              v86 = (*(*(this + 101) + 4 * i1) + v85);
              v87 = *(*(this + 103) + 2 * v86);
              LODWORD(v165) = 0;
              LODWORD(v163) = 0;
              LODWORD(v161) = 0;
              if ((*(*(this + 109) + 4 * (v86 >> 5)) >> v86))
              {
                if (*(*(this + 130) + 2 * v86))
                {
                  v88 = 1;
                  do
                  {
                    v89 = *(this + 196);
                    v90 = v88 - 1;
                    v91 = (*(*(this + 128) + 4 * v86) + v90);
                    if (v89)
                    {
                      v91 = *(*(this + 134) + v91);
                      v92 = *(this + 97);
                    }

                    else
                    {
                      v92 = *(this + 132);
                    }

                    v93 = *(v92 + 2 * v91);
                    if (v93 != 20000)
                    {
                      v94 = v165;
                      if (v165 == HIDWORD(v165))
                      {
                        DgnPrimArray<short>::reallocElts(&v164, 1, 1);
                        v94 = v165;
                        v89 = *(this + 196);
                      }

                      *(v164 + 2 * v94) = v88;
                      LODWORD(v165) = v94 + 1;
                      if (v89)
                      {
                        v95 = *(*(this + 134) + (*(*(this + 128) + 4 * v86) + v90));
                        v96 = v161;
                        if (v161 == HIDWORD(v161))
                        {
                          DgnPrimArray<char>::reallocElts(&v160, 1, 1);
                          v96 = v161;
                        }

                        *(v160 + v96) = v95;
                        v97 = v161;
                        v98 = &v161;
                      }

                      else
                      {
                        v97 = v163;
                        if (v163 == HIDWORD(v163))
                        {
                          DgnPrimArray<short>::reallocElts(&v162, 1, 1);
                          v97 = v163;
                        }

                        *(v162 + 2 * v97) = v93;
                        v98 = &v163;
                      }

                      *v98 = v97 + 1;
                    }

                    ++v88;
                  }

                  while (*(*(this + 130) + 2 * v86) >= v88);
                }
              }

              else if (*(*(this + 130) + 2 * v86))
              {
                v99 = 0;
                do
                {
                  v100 = TrigramData::getSearchSuccIdForIndex((this + 744), v86, v99);
                  v101 = TrigramData::getSearchScoreForIndex((this + 744), v86, v99);
                  v102 = v101;
                  if (v101 != 20000)
                  {
                    v103 = v165;
                    if (v165 == HIDWORD(v165))
                    {
                      DgnPrimArray<short>::reallocElts(&v164, 1, 1);
                      v103 = v165;
                    }

                    *(v164 + 2 * v103) = v100;
                    LODWORD(v165) = v103 + 1;
                    if (*(this + 196))
                    {
                      v104 = TrigramData::getSearchQuantizedScoreForIndex((this + 744), v86, v99);
                      v105 = v161;
                      if (v161 == HIDWORD(v161))
                      {
                        DgnPrimArray<char>::reallocElts(&v160, 1, 1);
                        v105 = v161;
                      }

                      *(v160 + v105) = v104;
                      v106 = v161;
                      v107 = &v161;
                    }

                    else
                    {
                      v106 = v163;
                      if (v163 == HIDWORD(v163))
                      {
                        DgnPrimArray<short>::reallocElts(&v162, 1, 1);
                        v106 = v163;
                      }

                      *(v162 + 2 * v106) = v102;
                      v107 = &v163;
                    }

                    *v107 = v106 + 1;
                  }

                  ++v99;
                }

                while (v99 < *(*(this + 130) + 2 * v86));
              }

              if (v165)
              {
                v108 = 0;
                do
                {
                  if (*(this + 196))
                  {
                    v109 = *(v160 + v108);
                  }

                  else
                  {
                    v109 = *(v162 + 2 * v108);
                  }

                  v110 = *(v164 + 2 * v108);
                  DgnTextFileWriter::setLineFieldValue(v172, 0, "TriSc");
                  DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, i1);
                  DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, v87);
                  DgnTextFileWriter::setLineFieldUnsignedValue(v172, v156, v110);
                  if (*(this + 16) >= 4u)
                  {
                    DgnTextFileWriter::setLineFieldUnsignedValue(v172, v155, 0);
                  }

                  DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v109);
                  DgnTextFileWriter::writeNextLine(v172);
                  ++v108;
                }

                while (v108 < v165);
              }

              ++v85;
            }

            while (v85 != v149);
            v77 = *(this + 200);
          }
        }
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v160);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v162);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v164);
      if (*(this + 16) >= 4u)
      {
        if (*(this + 314) >= 2u)
        {
          v111 = 1;
          do
          {
            v112 = *(*(this + 156) + 2 * v111);
            DgnTextFileWriter::setLineFieldValue(v172, 0, "QuadBoWtQuant");
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, v111);
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v156, 0);
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v155, 0);
            DgnTextFileWriter::setLineFieldIntegerValue(v172, v159, v112);
            DgnTextFileWriter::writeNextLine(v172);
            ++v111;
          }

          while (v111 < *(this + 314));
        }

        if (*(this + 318) >= 2u)
        {
          v113 = 1;
          do
          {
            v114 = *(*(this + 158) + 2 * v113);
            DgnTextFileWriter::setLineFieldValue(v172, 0, "QuadScQuant");
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, v113);
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, 0);
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v156, 0);
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v155, 0);
            DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, v114);
            DgnTextFileWriter::writeNextLine(v172);
            ++v113;
          }

          while (v113 < *(this + 318));
        }

        v115 = *(this + 322);
        if (v115 >= 2)
        {
          v116 = this + 1232;
          for (i2 = 1; i2 < v115; ++i2)
          {
            v151 = *(*(this + 160) + 2 * i2);
            if (*(*(this + 160) + 2 * i2))
            {
              v118 = 0;
              v119 = *(this + 166);
              do
              {
                v120 = (*(*(this + 162) + 4 * i2) + v118);
                if (*(v119 + 2 * v120))
                {
                  v153 = v118;
                  v121 = 0;
                  v122 = *(*(this + 164) + 2 * v120);
                  v123 = v120 >> 5;
                  v124 = 1 << (*(*(this + 162) + 4 * i2) + v118);
                  do
                  {
                    v125 = *(*(this + 185) + 4 * v120);
                    if (*(this + 308) && (*(*(this + 168) + 4 * v123) & v124) != 0)
                    {
                      v125 = *(*(this + 207) + 4 * v125);
                      v126 = 440;
                    }

                    else
                    {
                      v126 = 264;
                    }

                    v127 = *(*&v116[v126] + 2 * (v125 + v121));
                    DgnTextFileWriter::setLineFieldValue(v172, 0, "QuadBoWt");
                    DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, i2);
                    DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, v122);
                    DgnTextFileWriter::setLineFieldUnsignedValue(v172, v156, v127);
                    DgnTextFileWriter::setLineFieldUnsignedValue(v172, v155, 0);
                    if (*(this + 314))
                    {
                      v128 = *(*(this + 185) + 4 * v120);
                      if (*(this + 308) && (*(*(this + 168) + 4 * v123) & v124) != 0)
                      {
                        v128 = *(*(this + 207) + 4 * v128);
                        v129 = 472;
                      }

                      else
                      {
                        v129 = 312;
                      }

                      DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, *(*&v116[v129] + v128 + v121));
                    }

                    else
                    {
                      BackoffWeight = QuadgramData::getBackoffWeight((this + 1232), v120, v121);
                      DgnTextFileWriter::setLineFieldIntegerValue(v172, v159, BackoffWeight);
                    }

                    DgnTextFileWriter::writeNextLine(v172);
                    ++v121;
                    v119 = *(this + 166);
                  }

                  while (v121 < *(v119 + 2 * v120));
                  v118 = v153;
                }

                ++v118;
              }

              while (v118 != v151);
              v115 = *(this + 322);
            }
          }

          if (v115 >= 2)
          {
            for (i3 = 1; i3 < v115; ++i3)
            {
              v148 = *(*(this + 160) + 2 * i3);
              if (*(*(this + 160) + 2 * i3))
              {
                v132 = 0;
                v133 = *(this + 166);
                v154 = i3;
                do
                {
                  v134 = (*(*(this + 162) + 4 * i3) + v132);
                  if (*(v133 + 2 * v134))
                  {
                    v135 = 0;
                    v150 = v132;
                    v152 = *(*(this + 164) + 2 * v134);
                    v136 = v134 >> 5;
                    v137 = 1 << (*(*(this + 162) + 4 * i3) + v132);
                    v138 = *(*(this + 185) + 4 * v134);
                    v139 = *(this + 308);
                    do
                    {
                      if (v139 && (*(*(this + 168) + 4 * v136) & v137) != 0)
                      {
                        v140 = *(*(this + 207) + 4 * v138);
                        v141 = 440;
                      }

                      else
                      {
                        v141 = 264;
                        v140 = v138;
                      }

                      v142 = 0;
                      v143 = *(*&v116[v141] + 2 * (v140 + v135));
                      if (!v139)
                      {
                        goto LABEL_279;
                      }

LABEL_277:
                      if ((*(*(this + 168) + 4 * v136) & v137) != 0)
                      {
                        v144 = *(*(this + 207) + 4 * v138);
                        v145 = 504;
                        goto LABEL_280;
                      }

LABEL_279:
                      while (1)
                      {
                        v145 = 280;
                        v144 = v138;
LABEL_280:
                        if (v142 >= *(*&v116[v145] + 2 * (v144 + v135)))
                        {
                          break;
                        }

                        Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex((this + 1232), v134, v135, v142);
                        ScoreForIndex = QuadgramData::getScoreForIndex((this + 1232), v134, v135, v142);
                        if (ScoreForIndex != 20000)
                        {
                          if (*(this + 318))
                          {
                            ScoreForIndex = QuadgramData::getQuantizedScoreForIndex((this + 1232), v134, v135, v142);
                          }

                          DgnTextFileWriter::setLineFieldValue(v172, 0, "QuadSc");
                          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v158, v154);
                          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v157, v152);
                          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v156, v143);
                          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v155, Quad3SuccIdForIndex);
                          DgnTextFileWriter::setLineFieldUnsignedValue(v172, v159, ScoreForIndex);
                          DgnTextFileWriter::writeNextLine(v172);
                        }

                        ++v142;
                        v139 = *(this + 308);
                        v138 = *(*(this + 185) + 4 * v134);
                        if (v139)
                        {
                          goto LABEL_277;
                        }
                      }

                      ++v135;
                      v133 = *(this + 166);
                    }

                    while (v135 < *(v133 + 2 * v134));
                    i3 = v154;
                    v132 = v150;
                  }

                  ++v132;
                }

                while (v132 != v148);
                v115 = *(this + 322);
              }
            }
          }
        }
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v166);
  DgnArray<DgnString>::releaseAll(&v168);
  DgnIArray<Utterance *>::~DgnIArray(&v170);
  DgnTextFileWriter::~DgnTextFileWriter(v172);
}

void sub_262799C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a21);
  DgnArray<DgnString>::releaseAll(&a23);
  DgnIArray<Utterance *>::~DgnIArray(&a25);
  DgnTextFileWriter::~DgnTextFileWriter(va);
  _Unwind_Resume(a1);
}

void (***WordLanguageModel::saveBinary(WordLanguageModel *this, DFile *a2, DFileChecksums *a3, uint64_t a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x6Fu, a4, "LMWNGBIN", 24, 18);
  v10 = 0;
  writeObject(v7, this + 16, &v10);
  writeObject(v7, this + 68, &v10);
  writeObject(v7, this + 18, &v10);
  writeObject(v7, this + 19, &v10);
  writeObject(v7, this + 80, &v10);
  writeObject(v7, this + 25, &v10);
  writeObject(v7, this + 60, &v10);
  writeObject(v7, this + 244, &v10);
  writeObject(v7, this + 245, &v10);
  WordLanguageModel::saveUnigramMembersBinary(this, v7, &v10);
  if (*(this + 16) >= 2u)
  {
    WordLanguageModel::saveBigramMembersBinary(this, v7, &v10);
    BigramData::saveBinary((this + 360), v7, &v10);
    if (*(this + 16) >= 3u)
    {
      TrigramData::saveBinary((this + 744), v7, &v10);
      if (*(this + 16) >= 4u)
      {
        QuadgramData::saveBinary((this + 1232), v7, &v10);
      }
    }
  }

  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 111, v10);
  return DgnDelete<DgnStream>(v7);
}

uint64_t WordLanguageModel::saveLMShared(WordLanguageModel *this, DgnSharedMemStream *a2, BOOL a3)
{
  result = WordLanguageModel::saveBinaryShared(this, a2, a3);
  if (*(this + 16) >= 2u && *(this + 244) == 1)
  {
    v5 = *(**(this + 29) + 80);

    return v5();
  }

  return result;
}

uint64_t WordLanguageModel::saveBinaryShared(WordLanguageModel *this, DgnSharedMemStream *a2, int a3)
{
  v7 = 0;
  if (a3)
  {
    writeObject(a2, this + 16, &v7);
    writeObject(a2, this + 68, &v7);
    writeObject(a2, this + 18, &v7);
    writeObject(a2, this + 19, &v7);
    writeObject(a2, this + 80, &v7);
    writeObject(a2, this + 25, &v7);
    writeObject(a2, this + 60, &v7);
    writeObject(a2, this + 244, &v7);
    writeObject(a2, this + 245, &v7);
    WordLanguageModel::saveUnigramMembersBinary(this, a2, &v7);
    if (*(this + 16) <= 1u)
    {
LABEL_9:
      writeObject(a2, this + 456, &v7);
      return writeObjectChecksum(a2, &v7);
    }

    WordLanguageModel::saveBigramMembersBinary(this, a2, &v7);
  }

  else if (*(this + 16) <= 1u)
  {
    return writeObjectChecksum(a2, &v7);
  }

  BigramData::saveBinaryShared((this + 360), a2, a3, &v7);
  if (*(this + 16) >= 3u)
  {
    TrigramData::saveBinaryShared((this + 744), a2, a3, &v7);
    if (*(this + 16) >= 4u)
    {
      QuadgramData::saveBinaryShared((this + 1232), a2, a3, &v7);
    }
  }

  if (a3)
  {
    goto LABEL_9;
  }

  return writeObjectChecksum(a2, &v7);
}

void WordLanguageModel::reloadLMShared(WordLanguageModel *this, DgnSharedMemStream *a2, int a3)
{
  WordLanguageModel::loadBinaryShared(this, a2, 0, 0, 111, a3);
  if (*(this + 16) >= 2u && *(this + 244) == 1)
  {
    v4 = *(**(this + 29) + 88);

    v4();
  }
}

RecentBuffer *WordLanguageModel::saveVocAndSvc(uint64_t a1, DFile *a2, DFile *a3, DFileChecksums *a4, uint64_t a5, DFileChecksums *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 64) == 1)
  {
    v13 = *(*a1 + 72);

    return v13();
  }

  else
  {
    if (*(a1 + 244) == 1)
    {
      v19 = 1;
      DFile::pushCurrentSubDirComponent(a2, &v19);
      v19 = 1;
      DFile::pushCurrentSubDirComponent(a3, &v19);
      (*(**(a1 + 232) + 96))(*(a1 + 232), a2, a3, a4, a5, a6, a7, a8, a9);
      DFile::popCurrentSubDirComponent(a2);
      DFile::popCurrentSubDirComponent(a3);
    }

    WordLanguageModel::savePersistentAndIndex(a1, a3, a5, a6, a7, a8, a9, SHIDWORD(a9));
    WordLanguageModel::saveDynamic(a1, a2, a4, a6);
    result = *(a1 + 8);
    if (result)
    {
      return RecentBuffer::saveRecentBuffer(result, a2, a4, 0, a6);
    }
  }

  return result;
}

void WordLanguageModel::savePersistentAndIndex(_DWORD *a1, DFile *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v9 = a4;
  v11 = a2;
  v205 = *MEMORY[0x277D85DE8];
  v13 = OpenAndWriteMrecHeader(a2, 0x72u, 0, "LMWNGPER", 23, 7);
  v14 = OpenAndWriteMrecHeader(v11, 0x71u, v9, "LMWNGIND", 23, 11);
  v197 = 0;
  v196 = 0;
  v15 = (*(*v13 + 40))(v13);
  LODWORD(v187[0]) = 0;
  (*(*v13 + 80))(v13, v187, 4);
  LODWORD(v187[0]) = 0;
  (*(*v13 + 80))(v13, v187, 4);
  LODWORD(v187[0]) = 0;
  (*(*v13 + 80))(v13, v187, 4);
  (*(*v13 + 48))(v13);
  v16 = (*(*v14 + 40))(v14);
  LODWORD(v187[0]) = 0;
  (*(*v14 + 80))(v14, v187, 4);
  LODWORD(v187[0]) = 0;
  (*(*v14 + 80))(v14, v187, 4);
  LODWORD(v187[0]) = 0;
  (*(*v14 + 80))(v14, v187, 4);
  if (*(a1 + 68) == 1)
  {
    v187[0] = 0;
    writeObject(v14, v187, &v196);
    BigramData::saveBinary((a1 + 90), v14, &v196);
    if (a1[16] >= 3u)
    {
      TrigramData::saveBinary((a1 + 186), v14, &v196);
      if (a1[16] >= 4u)
      {
        QuadgramData::saveBinary((a1 + 308), v14, &v196);
      }
    }

    v17 = 0;
    goto LABEL_142;
  }

  BigramData::BigramData(v195);
  v192 = 0;
  v193 = 0;
  Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::Hash(v194, 0, 16);
  v194[15] = 0;
  v194[14] = 0;
  TrigramData::TrigramData(v191);
  v188 = 0;
  v189 = 0;
  Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::Hash(v190, 0, 16);
  v190[15] = 0;
  v190[14] = 0;
  QuadgramData::QuadgramData(v187);
  v128 = v15;
  v129 = v11;
  v184 = 0;
  v185 = 0;
  Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::Hash(v186, 0, 16);
  v186[15] = 0;
  v186[14] = 0;
  v18 = (*(*a1 + 464))(a1);
  v204 = 0u;
  v203 = 0u;
  v202 = 0u;
  memset(v201, 0, sizeof(v201));
  memset(v200, 0, sizeof(v200));
  memset(v199, 0, sizeof(v199));
  v182 = 0;
  v183 = 0;
  v180 = 0;
  v181 = 0;
  WordLanguageModel::constructLmIdToWordIdMapping(a1, &v182, &v180);
  v127 = a3;
  v178 = 0;
  v179 = 0;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v173 = 0u;
  v172 = 0u;
  LMStats::resetStats(v171);
  v168 = xmmword_262888C00;
  v169 = 1;
  v170 = 1;
  v19 = a1[26];
  v166 = 0;
  v167 = 0;
  v130 = v16;
  if (!v19)
  {
    v164 = 0;
    v165 = 0;
    goto LABEL_18;
  }

  v164 = 0;
  v20 = realloc_array(0, &v164, 2 * v19, 0, 0, 1);
  v165 = 0;
  v166 = v164;
  v21 = a1[26];
  HIDWORD(v167) = v20 >> 1;
  LODWORD(v167) = v19;
  v164 = 0;
  if (!v21)
  {
LABEL_18:
    LODWORD(v165) = 0;
    goto LABEL_19;
  }

  v161 = 0;
  v22 = realloc_array(0, &v161, 8 * v21, 0, 0, 1);
  v23 = v161;
  v164 = v161;
  v24 = a1[26];
  HIDWORD(v165) = v22 >> 3;
  LODWORD(v165) = v21;
  if (v24 >= 2)
  {
    for (i = 1; i < v24; ++i)
    {
      if (*(*(a1 + 21) + 2 * i) == 20000)
      {
        v166[i] = 20000;
        v23[i] = 0;
      }

      else
      {
        LODWORD(v179) = 0;
        (*(*a1 + 472))(a1, &v178, 0, v171, &v168, v18);
        LOBYTE(v161) = 0;
        WordIdWithMapping = WordLanguageModel::getWordIdWithMapping(a1, i, 0, &v182, 0);
        v27 = (*(*a1 + 504))(a1, WordIdWithMapping, 0xFFFFLL, v171, v18, 0, 0, 0, &v161);
        (*(*a1 + 480))(a1, v18);
        v166[i] = v27;
        v28 = 0;
        if (a1[14] > v27)
        {
          v28 = *(*(a1 + 6) + 8 * v27);
        }

        v23 = v164;
        *(v164 + i) = v28;
        v24 = a1[26];
      }
    }
  }

LABEL_19:
  BigramData::initNewBigramData((a1 + 90), v195, &v192, &v202, v200);
  v131 = v14;
  v29 = DWORD2(v202);
  if (DWORD2(v202))
  {
    v30 = v166;
    v31 = v164;
    v32 = (v202 + 32);
    do
    {
      v33 = *(v32 - 2);
      v34 = v31[v33];
      *v32 = v30[v33];
      *&v34 = v34;
      *(v32 - 8) = LODWORD(v34);
      *(v32 - 7) = LODWORD(v34);
      v32 += 28;
      --v29;
    }

    while (v29);
  }

  v140 = a1;
  if (a1[16] > 2u)
  {
    TrigramData::initNewTrigramData((a1 + 186), v191, &v188, &v203, v200, &v164, a7 == 2);
    v35 = DWORD2(v203);
    if (DWORD2(v203))
    {
      v36 = 0;
      v37 = 0;
      do
      {
        LODWORD(v179) = 0;
        (*(*a1 + 472))(a1, &v178, 0, v171, &v168, v18);
        LOBYTE(v161) = 0;
        v38 = WordLanguageModel::getWordIdWithMapping(a1, *(v203 + v36 + 24), 0, &v182, 0);
        v39 = (*(*a1 + 504))(a1, v38, 0xFFFFLL, v171, v18, 0, 0, 0, &v161);
        (*(*a1 + 480))(a1, v18);
        v40 = WordLanguageModel::getWordIdWithMapping(a1, *(v203 + v36 + 24), 1, &v182, &v180);
        v41 = v179;
        if (v179 == HIDWORD(v179))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v178, 1, 1);
          v41 = v179;
        }

        *(v178 + 4 * v41) = v40;
        LODWORD(v179) = v179 + 1;
        (*(*a1 + 472))(a1, &v178, 0, v171, &v168, v18);
        v42 = WordLanguageModel::getWordIdWithMapping(a1, *(v203 + v36 + 28), 0, &v182, 0);
        v43 = (*(*a1 + 504))(a1, v42, 0xFFFFLL, v171, v18, 0, 0, 0, &v161);
        (*(*a1 + 480))(a1, v18);
        v44 = v43 + v39;
        v45 = 0.0;
        if (a1[14] > (v43 + v39))
        {
          v45 = *(*(a1 + 6) + 8 * v44);
        }

        v46 = v203 + v36;
        *(v46 + 32) = v44;
        *v46 = v45;
        ++v37;
        v35 = DWORD2(v203);
        v36 += 56;
      }

      while (v37 < DWORD2(v203));
    }

    if ((DWORD2(v202) + v35) > HIDWORD(v202))
    {
      DgnArray<DiskNgramContext>::reallocElts(&v202, (DWORD2(v202) + v35 - HIDWORD(v202)), 1);
      v35 = DWORD2(v203);
    }

    if (v35)
    {
      v47 = 0;
      v48 = 0;
      do
      {
        DiskNgramContext::operator=(v202 + 56 * (v48++ + DWORD2(v202)), v203 + v47);
        v35 = DWORD2(v203);
        v47 += 56;
      }

      while (v48 < DWORD2(v203));
    }

    DWORD2(v202) += v35;
    if (v203)
    {
      MemChunkFree(v203, 0);
      *&v203 = 0;
    }

    *(&v203 + 1) = 0;
    if (a1[16] >= 4u)
    {
      QuadgramData::initNewQuadgramData((a1 + 308), v187, &v184, &v204, &v164);
      if (DWORD2(v204))
      {
        v49 = 0;
        v50 = 0;
        do
        {
          LODWORD(v179) = 0;
          (*(*a1 + 472))(a1, &v178, 0, v171, &v168, v18);
          LOBYTE(v161) = 0;
          v51 = WordLanguageModel::getWordIdWithMapping(a1, *(v204 + v49 + 24), 0, &v182, 0);
          v52 = (*(*a1 + 504))(a1, v51, 0xFFFFLL, v171, v18, 0, 0, 0, &v161);
          (*(*a1 + 480))(a1, v18);
          v53 = WordLanguageModel::getWordIdWithMapping(a1, *(v204 + v49 + 24), 1, &v182, &v180);
          v54 = v179;
          if (v179 == HIDWORD(v179))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v178, 1, 1);
            v54 = v179;
          }

          *(v178 + 4 * v54) = v53;
          LODWORD(v179) = v179 + 1;
          (*(*a1 + 472))(a1, &v178, 0, v171, &v168, v18);
          v55 = WordLanguageModel::getWordIdWithMapping(a1, *(v204 + v49 + 28), 0, &v182, 0);
          v56 = (*(*a1 + 504))(a1, v55, 0xFFFFLL, v171, v18, 0, 0, 0, &v161);
          (*(*a1 + 480))(a1, v18);
          v57 = v56 + v52;
          v58 = 0.0;
          if (a1[14] > (v56 + v52))
          {
            v58 = *(*(a1 + 6) + 8 * v57);
          }

          v59 = v204 + v49;
          *(v59 + 32) = v57;
          *v59 = v58;
          ++v50;
          v49 += 56;
        }

        while (v50 < DWORD2(v204));
      }
    }
  }

  DgnDelete<LMContextData>(v18);
  v60 = 0;
  v163 = 0;
  for (j = 2; j != 5; ++j)
  {
    v62 = &v201[16 * j];
    v63 = *(v62 + 2);
    if (v63)
    {
      v64 = (*v62 + 8);
      do
      {
        v65 = *v64;
        v64 += 7;
        v60 += v65;
        --v63;
      }

      while (v63);
      v163 = v60;
    }
  }

  mrec_qsort_r<DiskNgramContextBiTriIsolatedCmp>(v202, DWORD2(v202), 56, 0);
  mrec_qsort_r<DiskNgramContextQuadIsolatedCmp>(v204, DWORD2(v204), 56, 0);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = (a6 * v60 / a5);
  for (k = 2; k != 5; ++k)
  {
    v72 = &v201[16 * k];
    v73 = *(v72 + 2);
    if (v73)
    {
      v74 = 0;
      v75 = (*v72 + 8);
      do
      {
        if (!(v66 & 1 | (v69 < v70)))
        {
          v68 = k;
          v67 = v74;
        }

        v66 |= (v66 | (v69 < v70)) ^ 1;
        v76 = *v75;
        v75 += 7;
        v69 += v76;
        ++v74;
      }

      while (v73 != v74);
    }
  }

  if ((v66 & 1) == 0)
  {
    goto LABEL_70;
  }

  if (v68 == 2)
  {
    if (a7 == 2)
    {
      mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsWithBigramsCmp>(v202 + 56 * v67, DWORD2(v202) - v67, 56, 0);
    }

    else if (a7 == 1)
    {
      mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsCmp>(v202 + 56 * v67, DWORD2(v202) - v67, 56, 0);
    }

    if (a8 != 1)
    {
      goto LABEL_70;
    }

    v77 = v204;
    v78 = DWORD2(v204);
  }

  else
  {
    if (a8 != 1 || v68 != 4)
    {
      goto LABEL_70;
    }

    v77 = v204 + 56 * v67;
    v78 = DWORD2(v204) - v67;
  }

  mrec_qsort_r<DiskNgramContextQuadGroupCmp>(v77, v78, 56, 0);
LABEL_70:
  if (v182)
  {
    MemChunkFree(v182, 0);
    v182 = 0;
  }

  v183 = 0;
  if (v180)
  {
    MemChunkFree(v180, 0);
    v180 = 0;
  }

  v181 = 0;
  writeObject(v131, &v163, &v196);
  v161 = 0;
  v162 = 0;
  v159 = 0;
  HIDWORD(v162) = realloc_array(0, &v159, 0xFA0uLL, 0, 0, 1) >> 2;
  v160 = 0;
  v161 = v159;
  v159 = 0;
  v157 = 0;
  HIDWORD(v160) = realloc_array(0, &v157, 0xFA0uLL, 0, 0, 1) >> 2;
  v158 = 0;
  v159 = v157;
  v157 = 0;
  v155 = 0;
  HIDWORD(v158) = realloc_array(0, &v155, 0xFA0uLL, 0, 0, 1) >> 2;
  v156 = 0;
  v157 = v155;
  v155 = 0;
  v153 = 0;
  HIDWORD(v156) = realloc_array(0, &v153, 0xFA0uLL, 0, 0, 1) >> 2;
  v154 = 0;
  v155 = v153;
  v153 = 0;
  v151 = 0;
  HIDWORD(v154) = realloc_array(0, &v151, 0xFA0uLL, 0, 0, 1) >> 2;
  v152 = 0;
  v153 = v151;
  v151 = 0;
  v149 = 0;
  HIDWORD(v152) = realloc_array(0, &v149, 0xFA0uLL, 0, 0, 1) >> 2;
  v150 = 0;
  v151 = v149;
  v149 = 0;
  v147 = 0;
  HIDWORD(v150) = realloc_array(0, &v147, 0xFA0uLL, 0, 0, 1) >> 2;
  v148 = 0;
  v149 = v147;
  v147 = 0;
  v145 = 0;
  v79 = realloc_array(0, &v145, 0x3E80uLL, 0, 0, 1);
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  HIDWORD(v148) = v79 >> 4;
  v146 = 0;
  v147 = v145;
  v87 = 2;
  v145 = 0;
  do
  {
    v132 = v87;
    v144 = &v201[16 * v87];
    if (*(v144 + 2))
    {
      v88 = 0;
      do
      {
        v142 = v86;
        v89 = 1000 * v86;
        while (v89 >= v163 * v162)
        {
          v90 = (*(*v13 + 48))(v13);
          v91 = v162;
          if (v162 == HIDWORD(v162))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v161, 1, 1);
            v91 = v162;
          }

          *(v161 + v91) = v90;
          LODWORD(v162) = v162 + 1;
          v92 = v160;
          if (v160 == HIDWORD(v160))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v159, 1, 1);
            v92 = v160;
          }

          *(v159 + v92) = v85;
          LODWORD(v160) = v160 + 1;
          v93 = v158;
          if (v158 == HIDWORD(v158))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v157, 1, 1);
            v93 = v158;
          }

          *(v157 + v93) = v84;
          LODWORD(v158) = v158 + 1;
          v94 = v156;
          if (v156 == HIDWORD(v156))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v155, 1, 1);
            v94 = v156;
          }

          *(v155 + v94) = v83;
          LODWORD(v156) = v156 + 1;
          v95 = v154;
          if (v154 == HIDWORD(v154))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v153, 1, 1);
            v95 = v154;
          }

          *(v153 + v95) = v82;
          LODWORD(v154) = v154 + 1;
          v96 = v152;
          if (v152 == HIDWORD(v152))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v151, 1, 1);
            v96 = v152;
          }

          *(v151 + v96) = v81;
          LODWORD(v152) = v152 + 1;
          v97 = v150;
          if (v150 == HIDWORD(v150))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v149, 1, 1);
            v97 = v150;
          }

          *(v149 + v97) = v80;
          LODWORD(v150) = v150 + 1;
          v98 = v148;
          if (v148 == HIDWORD(v148))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v147, 1, 1);
            v98 = v148;
          }

          v99 = (v147 + 16 * v98);
          *v99 = 0;
          v99[1] = 0;
          DgnPrimArray<int>::copyArraySlice(v99, &v145, 0, v146);
          LODWORD(v148) = v148 + 1;
          LODWORD(v146) = 0;
        }

        v100 = *v144;
        v101 = *v144 + 56 * v88;
        v102 = *(v101 + 8);
        v103 = *(v101 + 34);
        switch(v103)
        {
          case 2:
            v135 = *(v101 + 40);
            v139 = *(v101 + 44);
            v109 = *(v101 + 36);
            if (v109 >> 29)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8344, "lm/wordlm", 86, "%.500s %u", "Bi1Id", v109);
              v100 = *v144;
            }

            BigramData::savePersistentAndFillInNewBigramData((v140 + 90), v13, &v197, v195, &v192, *(v100 + 56 * v88 + 36));
            v85 += v135;
            v84 += v139;
            v106 = v109 | 0x40000000;
            break;
          case 3:
            v134 = *(v101 + 44);
            v138 = *(v101 + 48);
            v107 = *(v101 + 40);
            v108 = v107;
            if (v107 >> 29)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8362, "lm/wordlm", 86, "%.500s %u", "Tri2Index", v107);
              v100 = *v144;
              v108 = *(*v144 + 56 * v88 + 40);
            }

            TrigramData::savePersistentAndFillInNewTrigramData((v140 + 186), v13, &v197, v191, &v188, *(v100 + 56 * v88 + 36), v108);
            v83 += v134;
            v82 += v138;
            v106 = v107 | 0x80000000;
            break;
          case 4:
            v133 = *(v101 + 44);
            v137 = *(v101 + 48);
            v104 = *(v101 + 40);
            v105 = v104;
            if (v104 >> 29)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8381, "lm/wordlm", 86, "%.500s %u", "Quad2Index", v104);
              v100 = *v144;
              v105 = *(*v144 + 56 * v88 + 40);
            }

            QuadgramData::savePersistentAndFillInNewQuadgramData((v140 + 308), v13, &v197, v187, &v184, *(v100 + 56 * v88 + 36), v105);
            v81 += v133;
            v80 += v137;
            v106 = v104 | 0xA0000000;
            break;
          default:
            v106 = 0;
            break;
        }

        v110 = v146;
        if (v146 == HIDWORD(v146))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v145, 1, 1);
          v110 = v146;
        }

        *(v145 + v110) = v106;
        v86 = v102 + v142;
        LODWORD(v146) = v146 + 1;
        ++v88;
      }

      while (v88 < *(v144 + 2));
    }

    v87 = v132 + 1;
  }

  while (v132 != 4);
  v16 = v130;
  if (v162 <= 0x3E8)
  {
    do
    {
      v111 = (*(*v13 + 48))(v13);
      v112 = v162;
      if (v162 == HIDWORD(v162))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v161, 1, 1);
        v112 = v162;
      }

      *(v161 + v112) = v111;
      LODWORD(v162) = v162 + 1;
      v113 = v160;
      if (v160 == HIDWORD(v160))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v159, 1, 1);
        v113 = v160;
      }

      *(v159 + v113) = v85;
      LODWORD(v160) = v160 + 1;
      v114 = v158;
      if (v158 == HIDWORD(v158))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v157, 1, 1);
        v114 = v158;
      }

      *(v157 + v114) = v84;
      LODWORD(v158) = v158 + 1;
      v115 = v156;
      if (v156 == HIDWORD(v156))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v155, 1, 1);
        v115 = v156;
      }

      *(v155 + v115) = v83;
      LODWORD(v156) = v156 + 1;
      v116 = v154;
      if (v154 == HIDWORD(v154))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v153, 1, 1);
        v116 = v154;
      }

      *(v153 + v116) = v82;
      LODWORD(v154) = v154 + 1;
      v117 = v152;
      if (v152 == HIDWORD(v152))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v151, 1, 1);
        v117 = v152;
      }

      *(v151 + v117) = v81;
      LODWORD(v152) = v152 + 1;
      v118 = v150;
      if (v150 == HIDWORD(v150))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v149, 1, 1);
        v118 = v150;
      }

      *(v149 + v118) = v80;
      LODWORD(v150) = v150 + 1;
      v119 = v148;
      if (v148 == HIDWORD(v148))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v147, 1, 1);
        v119 = v148;
      }

      v120 = (v147 + 16 * v119);
      *v120 = 0;
      v120[1] = 0;
      DgnPrimArray<int>::copyArraySlice(v120, &v145, 0, v146);
      LODWORD(v148) = v148 + 1;
      LODWORD(v146) = 0;
    }

    while (v162 < 0x3E9);
  }

  v15 = v128;
  v11 = v129;
  a1 = v140;
  v14 = v131;
  v17 = (*(*v13 + 48))(v13);
  v198 = v162;
  writeObject(v13, &v198, &v197);
  writeObjectArray(v13, v161, v162, &v197);
  v198 = v160;
  writeObject(v13, &v198, &v197);
  writeObjectArray(v13, v159, v160, &v197);
  v198 = v158;
  writeObject(v13, &v198, &v197);
  writeObjectArray(v13, v157, v158, &v197);
  v198 = v156;
  writeObject(v13, &v198, &v197);
  writeObjectArray(v13, v155, v156, &v197);
  v198 = v154;
  writeObject(v13, &v198, &v197);
  writeObjectArray(v13, v153, v154, &v197);
  v198 = v152;
  writeObject(v13, &v198, &v197);
  writeObjectArray(v13, v151, v152, &v197);
  v198 = v150;
  writeObject(v13, &v198, &v197);
  writeObjectArray(v13, v149, v150, &v197);
  if (v148)
  {
    v121 = 0;
    v122 = 0;
    do
    {
      writeObject<unsigned int>(v13, v147 + v121, &v197);
      ++v122;
      v121 += 16;
    }

    while (v122 < v148);
  }

  BigramData::saveBinary(v195, v131, &v196);
  if (v140[16] >= 3u)
  {
    TrigramData::saveBinary(v191, v131, &v196);
    if (v140[16] >= 4u)
    {
      QuadgramData::saveBinary(v187, v131, &v196);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v145);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v147);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v149);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v151);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v153);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v155);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v157);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v159);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v161);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v164);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v166);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v178);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v180);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v182);
  for (m = 64; m != -16; m -= 16)
  {
    DgnIArray<Utterance *>::~DgnIArray(&v199[m]);
  }

  for (n = 64; n != -16; n -= 16)
  {
    DgnIArray<Utterance *>::~DgnIArray(&v201[n]);
  }

  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&v184);
  QuadgramData::~QuadgramData(v187);
  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&v188);
  TrigramData::~TrigramData(v191);
  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&v192);
  BigramData::~BigramData(v195);
  a3 = v127;
LABEL_142:
  writeObjectChecksum(v13, &v197);
  (*(*v13 + 24))(v13, v15);
  LODWORD(v187[0]) = v197;
  (*(*v13 + 80))(v13, v187, 4);
  LODWORD(v187[0]) = v196;
  (*(*v13 + 80))(v13, v187, 4);
  LODWORD(v187[0]) = v17;
  (*(*v13 + 80))(v13, v187, 4);
  writeObjectChecksum(v14, &v196);
  (*(*v14 + 24))(v14, v16);
  LODWORD(v187[0]) = v197;
  (*(*v14 + 80))(v14, v187, 4);
  LODWORD(v187[0]) = v196;
  (*(*v14 + 80))(v14, v187, 4);
  LODWORD(v187[0]) = v17;
  (*(*v14 + 80))(v14, v187, 4);
  (**v13)(v13);
  MemChunkFree(v13, 0);
  (**v14)(v14);
  MemChunkFree(v14, 0);
  a1[66] = v197;
  a1[67] = v196;
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(v11);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 114, v197);
  v126 = DFile::getCurrentSubDirComponents(v11);
  DFileChecksums::addChecksum(a3, v126, 113, v196);
}

void sub_26279BFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a43);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a65);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a66);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a67);
  for (i = 64; i != -16; i -= 16)
  {
    DgnIArray<Utterance *>::~DgnIArray(&STACK[0x950] + i);
  }

  for (j = 64; j != -16; j -= 16)
  {
    DgnIArray<Utterance *>::~DgnIArray(v67 - 192 + j);
  }

  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&STACK[0x208]);
  QuadgramData::~QuadgramData(&STACK[0x290]);
  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&STACK[0x4C8]);
  TrigramData::~TrigramData(&STACK[0x550]);
  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&STACK[0x738]);
  BigramData::~BigramData(&STACK[0x7C0]);
  _Unwind_Resume(a1);
}

BOOL SubDirExtension::isString(SubDirExtension *this, const char **a2)
{
  DgnString::DgnString(&v8);
  SubDirExtension::appendToString(this, &v8);
  if (v9)
  {
    v4 = v8;
  }

  else
  {
    v4 = &unk_26288CFB0;
  }

  if (*(a2 + 2))
  {
    v5 = *a2;
  }

  else
  {
    v5 = &unk_26288CFB0;
  }

  v6 = strcmp(v4, v5) == 0;
  DgnString::~DgnString(&v8);
  return v6;
}

uint64_t WordLanguageModel::loadUnigramMembersBinary(WordLanguageModel *this, DgnStream *a2, unsigned int *a3, int a4, unint64_t *a5)
{
  v10 = (this + 32);
  v11 = *(this + 8);
  v16[0] = 0;
  v16[1] = 0;
  DgnString::DgnString(v15);
  v14 = 0;
  v13 = 0;
  readObject(a2, v10, a3);
  readObject(a2, this + 26, a3);
  if (a4)
  {
    readObject(a2, &v13, a3);
  }

  readObject(a2, this + 28, a3);
  readObject(a2, this + 29, a3);
  if (a4)
  {
    readObject(a2, a5, a3);
    readObject(a2, &v14, a3);
    readObject<unsigned int>(a2, v16, a3);
    readObject(a2, v15, a3);
  }

  readObject<unsigned int>(a2, this + 120, a3);
  readObject<unsigned short>(a2, this + 136, a3);
  readObject<unsigned char>(a2, this + 152, a3);
  readObject<unsigned short>(a2, this + 168, a3);
  if (*v10 != v11)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5130, "lm/wordlm", 34, "%u %u", *v10, v11);
  }

  BitArray::~BitArray(v15);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
}

void sub_26279C3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordLanguageModel::saveUnigramMembersBinary(WordLanguageModel *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this + 8, a3);
  writeObject(a2, this + 26, a3);
  writeObject(a2, this + 28, a3);
  writeObject(a2, this + 29, a3);
  writeObject<unsigned int>(a2, this + 120, a3);
  writeObject<unsigned short>(a2, this + 136, a3);
  writeObject<unsigned char>(a2, this + 152, a3);

  return writeObject<unsigned short>(a2, this + 168, a3);
}

void WordLanguageModel::loadBigramMembersBinary(WordLanguageModel *this, DgnStream *a2, unsigned int *a3, int a4, unint64_t *a5)
{
  v11 = 0;
  v10 = 0.0;
  readObject(a2, this + 66, a3);
  readObject(a2, this + 67, a3);
  if (a4)
  {
    readObject(a2, a5, a3);
    readObject(a2, &v11, a3);
    readObject(a2, this + 68, a3);
    readObject(a2, &v10, a3);
  }

  else
  {
    readObject(a2, this + 68, a3);
  }

  readObject(a2, this + 276, a3);
  readObject<unsigned int>(a2, this + 280, a3);
  readObject<unsigned short>(a2, this + 296, a3);
  readObject<unsigned char>(a2, this + 312, a3);
  readObject<unsigned short>(a2, this + 328, a3);
  readObject<short>(a2, this + 344, a3);
}

void WordLanguageModel::verifyBoWtForBiSc(WordLanguageModel *this)
{
  v1 = *(this + 140);
  if (v1 >= 2)
  {
    for (i = 1; i < v1; ++i)
    {
      if (*(*(this + 69) + 2 * i) && (i >= *(this + 88) || *(*(this + 43) + 2 * i) == 20000))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6805, "lm/wordlm", 42, "%u", i);
        v1 = *(this + 140);
      }
    }
  }
}

void WordLanguageModel::throwOnBadBoWt(WordLanguageModel *this)
{
  v1 = *(this + 88);
  if (v1 >= 2)
  {
    for (i = 1; i < v1; ++i)
    {
      v4 = *(*(this + 43) + 2 * i);
      if (*(*(this + 43) + 2 * i))
      {
        v5 = v4 == 20000;
      }

      else
      {
        v5 = 1;
      }

      if (!v5 && (i >= *(this + 140) || !*(*(this + 69) + 2 * i)))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6819, "lm/wordlm", 87, "%u %d", i, v4);
        v1 = *(this + 88);
      }
    }
  }
}

void WordLanguageModel::verifyUniScForBiSc(WordLanguageModel *this)
{
  if (*(this + 140) >= 2u)
  {
    v2 = *(this + 69);
    v3 = 1;
    do
    {
      if (*(v2 + 2 * v3))
      {
        if (*(*(this + 21) + 2 * v3) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6831, "lm/wordlm", 89, "%u", v3);
        }

        v2 = *(this + 69);
        if ((*(*(this + 48) + 4 * (v3 >> 5)) >> v3))
        {
          if (*(v2 + 2 * v3))
          {
            v4 = 1;
            v5 = 1;
            do
            {
              v6 = (v4 + *(*(this + 67) + 4 * v3) - 1);
              if (*(this + 94))
              {
                v6 = *(*(this + 73) + v6);
                v7 = *(this + 46);
              }

              else
              {
                v7 = *(this + 71);
              }

              if (*(v7 + 2 * v6) != 20000 && *(*(this + 21) + 2 * v5) == 20000)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6842, "lm/wordlm", 89, "%u", v4);
                v2 = *(this + 69);
              }

              v4 = ++v5;
            }

            while (v5 <= *(v2 + 2 * v3));
          }
        }

        else if (*(v2 + 2 * v3))
        {
          v8 = 0;
          do
          {
            SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex((this + 360), v3, v8);
            if (BigramData::getSearchScoreForIndex((this + 360), v3, v8) != 20000 && *(*(this + 21) + 2 * SearchSuccIdForIndex) == 20000)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6857, "lm/wordlm", 89, "%u", SearchSuccIdForIndex);
            }

            ++v8;
            v2 = *(this + 69);
          }

          while (v8 < *(v2 + 2 * v3));
        }
      }

      ++v3;
    }

    while (v3 < *(this + 140));
  }
}

uint64_t WordLanguageModel::throwOnBadTriBoWt(WordLanguageModel *this)
{
  v16[0] = 0;
  v16[1] = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  v1 = *(this + 200);
  if (v1 < 2)
  {
    goto LABEL_22;
  }

  for (i = 1; i < v1; ++i)
  {
    v4 = *(this + 99);
    v5 = *(v4 + 2 * i);
    if (!*(v4 + 2 * i))
    {
      continue;
    }

    v6 = 0;
    do
    {
      v7 = (*(*(this + 101) + 4 * i) + v6);
      v8 = *(*(this + 103) + 2 * v7);
      if (((*(*(this + 109) + 4 * (v7 >> 5)) >> v7) & 1) == 0)
      {
        if (*(*(this + 130) + 2 * v7))
        {
          goto LABEL_19;
        }

LABEL_15:
        if (*(this + 192))
        {
          v7 = *(*(this + 107) + v7);
          v12 = *(this + 95);
        }

        else
        {
          v12 = *(this + 105);
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6909, "lm/wordlm", 88, "%u %u %d", i, v8, *(v12 + 2 * v7));
        goto LABEL_19;
      }

      if (!*(*(this + 130) + 2 * v7))
      {
        goto LABEL_15;
      }

      v9 = 1;
      while (1)
      {
        v10 = *(*(this + 128) + 4 * v7) + v9 - 1;
        if (*(this + 196))
        {
          v10 = *(*(this + 134) + v10);
          v11 = *(this + 97);
        }

        else
        {
          v11 = *(this + 132);
        }

        if (*(v11 + 2 * v10) != 20000)
        {
          break;
        }

        if (*(*(this + 130) + 2 * v7) < ++v9)
        {
          goto LABEL_15;
        }
      }

LABEL_19:
      ++v6;
    }

    while (v6 != v5);
    v1 = *(this + 200);
  }

LABEL_22:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
}

void sub_26279CAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

void WordLanguageModel::verifyUniScForTriSc(WordLanguageModel *this)
{
  if (*(this + 200) >= 2u)
  {
    v2 = 1;
    do
    {
      v12 = *(*(this + 99) + 2 * v2);
      if (*(*(this + 99) + 2 * v2))
      {
        if (*(*(this + 21) + 2 * v2) != 20000 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6923, "lm/wordlm", 89, "%u", v2), v12 = *(*(this + 99) + 2 * v2), *(*(this + 99) + 2 * v2)))
        {
          v3 = 0;
          do
          {
            v4 = (*(*(this + 101) + 4 * v2) + v3);
            if (*(*(this + 21) + 2 * *(*(this + 103) + 2 * v4)) == 20000)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6935, "lm/wordlm", 89, "%u", *(*(this + 103) + 2 * v4));
            }

            v5 = *(*(this + 130) + 2 * v4);
            if ((*(*(this + 109) + 4 * (v4 >> 5)) >> v4))
            {
              if (*(*(this + 130) + 2 * v4))
              {
                v6 = 1;
                v7 = 1;
                do
                {
                  v8 = (v6 + *(*(this + 128) + 4 * v4) - 1);
                  if (*(this + 196))
                  {
                    v8 = *(*(this + 134) + v8);
                    v9 = *(this + 97);
                  }

                  else
                  {
                    v9 = *(this + 132);
                  }

                  if (*(v9 + 2 * v8) != 20000 && *(*(this + 21) + 2 * v7) == 20000)
                  {
                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6950, "lm/wordlm", 89, "%u", v6);
                  }

                  v6 = ++v7;
                }

                while (v7 <= v5);
              }
            }

            else if (*(*(this + 130) + 2 * v4))
            {
              v10 = 0;
              do
              {
                SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex((this + 744), v4, v10);
                if (*(*(this + 21) + 2 * SearchSuccIdForIndex) == 20000)
                {
                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6964, "lm/wordlm", 89, "%u", SearchSuccIdForIndex);
                }

                ++v10;
              }

              while (v5 != v10);
            }

            ++v3;
          }

          while (v3 != v12);
        }
      }

      ++v2;
    }

    while (v2 < *(this + 200));
  }
}

void WordLanguageModel::verifyUniScForQuadSc(WordLanguageModel *this)
{
  if (*(this + 322) >= 2u)
  {
    v2 = (this + 1232);
    v3 = 1;
    do
    {
      v19 = *(*(this + 160) + 2 * v3);
      if (*(*(this + 160) + 2 * v3))
      {
        if (*(*(this + 21) + 2 * v3) != 20000 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6980, "lm/wordlm", 89, "%u", v3), v19 = *(*(this + 160) + 2 * v3), *(*(this + 160) + 2 * v3)))
        {
          v4 = 0;
          v18 = v3;
          do
          {
            v20 = v4;
            v5 = (*(*(this + 162) + 4 * v3) + v4);
            if (*(*(this + 21) + 2 * *(*(this + 164) + 2 * v5)) == 20000)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6991, "lm/wordlm", 89, "%u", *(*(this + 164) + 2 * v5));
            }

            v21 = *(*(this + 166) + 2 * v5);
            if (*(*(this + 166) + 2 * v5))
            {
              v6 = 0;
              v23 = v5 >> 5;
              v22 = 1 << v5;
              do
              {
                v7 = *(*(this + 185) + 4 * v5);
                v8 = *(this + 308);
                if (v8 && (*(*(this + 168) + 4 * v23) & v22) != 0)
                {
                  v9 = *(*(this + 207) + 4 * v7);
                  v10 = 440;
                }

                else
                {
                  v10 = 264;
                  v9 = *(*(this + 185) + 4 * v5);
                }

                v11 = *(*(v2 + v10) + 2 * (v9 + v6));
                if (*(*(this + 21) + 2 * v11) == 20000)
                {
                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6999, "lm/wordlm", 89, "%u", v11);
                  v7 = *(*(this + 185) + 4 * v5);
                  v8 = *(this + 308);
                }

                if (v8 && (*(*(this + 168) + 4 * v23) & v22) != 0)
                {
                  v7 = *(*(this + 207) + 4 * v7);
                  v12 = 504;
                }

                else
                {
                  v12 = 280;
                }

                v13 = v7 + v6;
                v14 = *(v2 + v12);
                v15 = *(v14 + 2 * v13);
                if (*(v14 + 2 * v13))
                {
                  v16 = 0;
                  do
                  {
                    if (QuadgramData::getScoreForIndex(v2, v5, v6, v16) != 20000)
                    {
                      Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(v2, v5, v6, v16);
                      if (*(*(this + 21) + 2 * Quad3SuccIdForIndex) == 20000)
                      {
                        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 7015, "lm/wordlm", 89, "%u", Quad3SuccIdForIndex);
                      }
                    }

                    ++v16;
                  }

                  while (v15 != v16);
                }

                ++v6;
              }

              while (v6 != v21);
            }

            v4 = v20 + 1;
            v3 = v18;
          }

          while (v20 + 1 != v19);
        }
      }

      ++v3;
    }

    while (v3 < *(this + 322));
  }
}

void WordLanguageModel::maybeRepairOutOfRangeWordIdsOrThrow(WordLanguageModel *this, int a2, int a3, unsigned int a4, unsigned int a5)
{
  if (a4 != 0xFFFFFF && a5 != 0xFFFFFF)
  {
    v7 = *(*(this + 2) + 388);
    if (v7)
    {
      v10 = 0;
      v11 = a5;
      v12 = a4;
      while (1)
      {
        v13 = *(this + 2);
        if (v10 >= *(v13 + 388) || !*(*(v13 + 104) + v10))
        {
          goto LABEL_16;
        }

        v14 = v10 < v12 || v10 > v11;
        v15 = v14;
        if (v15 != a3)
        {
          goto LABEL_16;
        }

        if (a2)
        {
          WordLanguageModel::recordWordIdInvalidLmIdUsage(this, v10);
          if (*(this + 276) == 1)
          {
            WordLanguageModel::recordWordIdInvalidContextLmIdUsage(this, v10);
          }

          goto LABEL_16;
        }

        if (*(this + 32))
        {
          break;
        }

        if (*(this + 36))
        {
          v16 = *(*(this + 17) + 2 * v10);
LABEL_25:
          if (v16 == -1)
          {
            goto LABEL_27;
          }

LABEL_26:
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 10027, "lm/wordlm", 90, "%u", v10);
          goto LABEL_27;
        }

        if (*(*(this + 19) + v10) != 255)
        {
          goto LABEL_26;
        }

LABEL_27:
        if (*(this + 276) == 1)
        {
          if (*(this + 72))
          {
            v17 = *(*(this + 35) + 4 * v10);
          }

          else
          {
            if (!*(this + 76))
            {
              if (*(*(this + 39) + v10) == 255)
              {
                goto LABEL_16;
              }

LABEL_33:
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 10034, "lm/wordlm", 90, "%u", v10);
              goto LABEL_16;
            }

            v17 = *(*(this + 37) + 2 * v10);
          }

          if (v17 != -1)
          {
            goto LABEL_33;
          }
        }

LABEL_16:
        if (v7 == ++v10)
        {
          return;
        }
      }

      v16 = *(*(this + 15) + 4 * v10);
      goto LABEL_25;
    }
  }
}

uint64_t WordLanguageModel::saveBigramMembersBinary(WordLanguageModel *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this + 66, a3);
  writeObject(a2, this + 67, a3);
  writeObject(a2, this + 68, a3);
  writeObject(a2, this + 276, a3);
  writeObject<unsigned int>(a2, this + 280, a3);
  writeObject<unsigned short>(a2, this + 296, a3);
  writeObject<unsigned char>(a2, this + 312, a3);
  writeObject<unsigned short>(a2, this + 328, a3);

  return writeObject<short>(a2, this + 344, a3);
}

uint64_t WordLanguageModel::recordWordIdLmIdUsage(WordLanguageModel *this, unsigned int a2, int a3)
{
  if (!*(this + 32) && !*(this + 36) && !*(this + 40))
  {
    if (*(this + 41))
    {
      v6 = 0;
    }

    else
    {
      DgnPrimArray<char>::reallocElts(this + 152, 1, 1);
      v6 = *(this + 40);
    }

    *(*(this + 19) + v6) = -1;
    ++*(this + 40);
  }

  result = WordLanguageModel::maybeUncompactWordIdToLmIdArray(this, a3);
  v8 = *(this + 32);
  if (v8)
  {
    if (v8 <= a2)
    {
      do
      {
        if (v8 == *(this + 33))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(this + 120, 1, 1);
          v8 = *(this + 32);
        }

        v9 = *(this + 15);
        *(v9 + 4 * v8) = -1;
        v8 = *(this + 32) + 1;
        *(this + 32) = v8;
      }

      while (v8 <= a2);
    }

    else
    {
      v9 = *(this + 15);
    }

    *(v9 + 4 * a2) = a3;
  }

  else
  {
    v10 = *(this + 36);
    if (v10)
    {
      if (v10 <= a2)
      {
        do
        {
          if (v10 == *(this + 37))
          {
            result = DgnPrimArray<short>::reallocElts(this + 136, 1, 1);
            v10 = *(this + 36);
          }

          v11 = *(this + 17);
          *(v11 + 2 * v10++) = -1;
          *(this + 36) = v10;
        }

        while (v10 <= a2);
      }

      else
      {
        v11 = *(this + 17);
      }

      *(v11 + 2 * a2) = a3;
    }

    else
    {
      for (i = *(this + 40); i <= a2; *(this + 40) = i)
      {
        if (i == *(this + 41))
        {
          result = DgnPrimArray<char>::reallocElts(this + 152, 1, 1);
          i = *(this + 40);
        }

        *(*(this + 19) + i) = -1;
        i = *(this + 40) + 1;
      }

      *(*(this + 19) + a2) = a3;
    }
  }

  return result;
}

uint64_t WordLanguageModel::recordWordIdContextLmIdUsage(WordLanguageModel *this, unsigned int a2, int a3)
{
  if (!*(this + 72) && !*(this + 76) && !*(this + 80))
  {
    if (*(this + 81))
    {
      v6 = 0;
    }

    else
    {
      DgnPrimArray<char>::reallocElts(this + 312, 1, 1);
      v6 = *(this + 80);
    }

    *(*(this + 39) + v6) = -1;
    ++*(this + 80);
  }

  result = WordLanguageModel::maybeUncompactWordIdToContextLmIdArray(this, a3);
  v8 = *(this + 72);
  if (v8)
  {
    if (v8 <= a2)
    {
      do
      {
        if (v8 == *(this + 73))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(this + 280, 1, 1);
          v8 = *(this + 72);
        }

        v9 = *(this + 35);
        *(v9 + 4 * v8) = -1;
        v8 = *(this + 72) + 1;
        *(this + 72) = v8;
      }

      while (v8 <= a2);
    }

    else
    {
      v9 = *(this + 35);
    }

    *(v9 + 4 * a2) = a3;
  }

  else
  {
    v10 = *(this + 76);
    if (v10)
    {
      if (v10 <= a2)
      {
        do
        {
          if (v10 == *(this + 77))
          {
            result = DgnPrimArray<short>::reallocElts(this + 296, 1, 1);
            v10 = *(this + 76);
          }

          v11 = *(this + 37);
          *(v11 + 2 * v10++) = -1;
          *(this + 76) = v10;
        }

        while (v10 <= a2);
      }

      else
      {
        v11 = *(this + 37);
      }

      *(v11 + 2 * a2) = a3;
    }

    else
    {
      for (i = *(this + 80); i <= a2; *(this + 80) = i)
      {
        if (i == *(this + 81))
        {
          result = DgnPrimArray<char>::reallocElts(this + 312, 1, 1);
          i = *(this + 80);
        }

        *(*(this + 39) + i) = -1;
        i = *(this + 80) + 1;
      }

      *(*(this + 39) + a2) = a3;
    }
  }

  return result;
}

uint64_t *WordLanguageModel::recordWordIdInvalidLmIdUsage(uint64_t *this, unsigned int a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
LABEL_2:
    if (v4 <= a2)
    {
      do
      {
        if (v4 == *(v3 + 33))
        {
          this = DgnPrimArray<unsigned int>::reallocElts((v3 + 15), 1, 1);
          v4 = *(v3 + 32);
        }

        v5 = v3[15];
        *(v5 + 4 * v4) = -1;
        v4 = *(v3 + 32) + 1;
        *(v3 + 32) = v4;
      }

      while (v4 <= a2);
    }

    else
    {
      v5 = v3[15];
    }

    *(v5 + 4 * a2) = -1;
    return this;
  }

  v6 = *(this + 36);
  if (v6)
  {
    goto LABEL_7;
  }

  if (!*(this + 40))
  {
    if (*(this + 41))
    {
      v8 = 0;
    }

    else
    {
      this = DgnPrimArray<char>::reallocElts((this + 19), 1, 1);
      v8 = *(v3 + 40);
    }

    *(v3[19] + v8) = -1;
    ++*(v3 + 40);
    v4 = *(v3 + 32);
    if (v4)
    {
      goto LABEL_2;
    }
  }

  v6 = *(v3 + 36);
  if (v6)
  {
LABEL_7:
    if (v6 <= a2)
    {
      do
      {
        if (v6 == *(v3 + 37))
        {
          this = DgnPrimArray<short>::reallocElts((v3 + 17), 1, 1);
          v6 = *(v3 + 36);
        }

        v7 = v3[17];
        *(v7 + 2 * v6++) = -1;
        *(v3 + 36) = v6;
      }

      while (v6 <= a2);
    }

    else
    {
      v7 = v3[17];
    }

    *(v7 + 2 * a2) = -1;
  }

  else
  {
    for (i = *(v3 + 40); i <= a2; *(v3 + 40) = i)
    {
      if (i == *(v3 + 41))
      {
        this = DgnPrimArray<char>::reallocElts((v3 + 19), 1, 1);
        i = *(v3 + 40);
      }

      *(v3[19] + i) = -1;
      i = *(v3 + 40) + 1;
    }

    *(v3[19] + a2) = -1;
  }

  return this;
}

uint64_t *WordLanguageModel::recordWordIdInvalidContextLmIdUsage(uint64_t *this, unsigned int a2)
{
  v3 = this;
  v4 = *(this + 72);
  if (v4)
  {
LABEL_2:
    if (v4 <= a2)
    {
      do
      {
        if (v4 == *(v3 + 73))
        {
          this = DgnPrimArray<unsigned int>::reallocElts((v3 + 35), 1, 1);
          v4 = *(v3 + 72);
        }

        v5 = v3[35];
        *(v5 + 4 * v4) = -1;
        v4 = *(v3 + 72) + 1;
        *(v3 + 72) = v4;
      }

      while (v4 <= a2);
    }

    else
    {
      v5 = v3[35];
    }

    *(v5 + 4 * a2) = -1;
    return this;
  }

  v6 = *(this + 76);
  if (v6)
  {
    goto LABEL_7;
  }

  if (!*(this + 80))
  {
    if (*(this + 81))
    {
      v8 = 0;
    }

    else
    {
      this = DgnPrimArray<char>::reallocElts((this + 39), 1, 1);
      v8 = *(v3 + 80);
    }

    *(v3[39] + v8) = -1;
    ++*(v3 + 80);
    v4 = *(v3 + 72);
    if (v4)
    {
      goto LABEL_2;
    }
  }

  v6 = *(v3 + 76);
  if (v6)
  {
LABEL_7:
    if (v6 <= a2)
    {
      do
      {
        if (v6 == *(v3 + 77))
        {
          this = DgnPrimArray<short>::reallocElts((v3 + 37), 1, 1);
          v6 = *(v3 + 76);
        }

        v7 = v3[37];
        *(v7 + 2 * v6++) = -1;
        *(v3 + 76) = v6;
      }

      while (v6 <= a2);
    }

    else
    {
      v7 = v3[37];
    }

    *(v7 + 2 * a2) = -1;
  }

  else
  {
    for (i = *(v3 + 80); i <= a2; *(v3 + 80) = i)
    {
      if (i == *(v3 + 81))
      {
        this = DgnPrimArray<char>::reallocElts((v3 + 39), 1, 1);
        i = *(v3 + 80);
      }

      *(v3[39] + i) = -1;
      i = *(v3 + 80) + 1;
    }

    *(v3[39] + a2) = -1;
  }

  return this;
}

uint64_t *WordLanguageModel::constructLmIdToWordIdMapping(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 26);
  v7 = *(a2 + 3);
  v8 = v6;
  if (v6 > v7)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a2, v6 - v7, 0);
    v8 = *(v5 + 104);
  }

  *(a2 + 2) = v6;
  if (*(v5 + 276) == 1)
  {
    v9 = *(a3 + 12);
    v10 = v8;
    if (v8 > v9)
    {
      result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v9, 0);
      v10 = *(v5 + 104);
    }

    *(a3 + 8) = v8;
    v8 = v10;
  }

  if (v8)
  {
    v11 = 0;
    v12 = *a2;
    v13 = *(v5 + 276);
    do
    {
      *(v12 + 4 * v11) = 0xFFFFFF;
      if (v13)
      {
        *(*a3 + 4 * v11) = 0xFFFFFF;
      }

      ++v11;
    }

    while (v11 < *(v5 + 104));
  }

  v14 = *(v5 + 128);
  if (v14 || (v14 = *(v5 + 144)) != 0 || (v14 = *(v5 + 160)) != 0)
  {
    v15 = 0;
    v16 = *(v5 + 16);
    do
    {
      if (v15 < *(v16 + 388) && *(*(v16 + 104) + v15) && v15 == *(*(v16 + 256) + 4 * v15))
      {
        if (*(v5 + 128))
        {
          v17 = *(*(v5 + 120) + 4 * v15);
        }

        else
        {
          if (*(v5 + 144))
          {
            v17 = *(*(v5 + 136) + 2 * v15);
            v18 = v17 == 0xFFFF;
          }

          else
          {
            v17 = *(*(v5 + 152) + v15);
            v18 = v17 == 255;
          }

          if (v18)
          {
            v17 = -1;
          }
        }

        if (v17 < *(v5 + 104) && *(*a2 + 4 * v17) == 0xFFFFFF)
        {
          *(*a2 + 4 * v17) = v15;
        }

        if (*(v5 + 276) == 1)
        {
          if (*(v5 + 288))
          {
            v19 = *(*(v5 + 280) + 4 * v15);
          }

          else
          {
            if (*(v5 + 304))
            {
              v19 = *(*(v5 + 296) + 2 * v15);
              v20 = v19 == 0xFFFF;
            }

            else
            {
              v19 = *(*(v5 + 312) + v15);
              v20 = v19 == 255;
            }

            if (v20)
            {
              v19 = -1;
            }
          }

          if (v19 < *(v5 + 104) && *(*a3 + 4 * v19) == 0xFFFFFF)
          {
            *(*a3 + 4 * v19) = v15;
          }
        }
      }

      ++v15;
    }

    while (v14 != v15);
  }

  v21 = *(v5 + 112);
  if (v21 != -1 && *(*a2 + 4 * v21) == 0xFFFFFF)
  {
    *(*a2 + 4 * v21) = 16777214;
    if (*(v5 + 276) == 1)
    {
      *(*a3 + 4 * *(v5 + 112)) = 16777214;
    }
  }

  v22 = *(v5 + 116);
  if (v22 != -1 && *(*a2 + 4 * v22) == 0xFFFFFF)
  {
    *(*a2 + 4 * v22) = 16777213;
    if (*(v5 + 276) == 1)
    {
      *(*a3 + 4 * *(v5 + 116)) = 16777213;
    }
  }

  return result;
}

uint64_t WordLanguageModel::getWordIdWithMapping(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 == -1)
  {
    return 0xFFFFFFLL;
  }

  if (a2 == -2)
  {
    return 16777212;
  }

  if (a3 && *(a1 + 276) == 1)
  {
    if (*(a5 + 8) > a2)
    {
      return *(*a5 + 4 * a2);
    }

    a3 = 1;
  }

  else if (*(a4 + 8) > a2)
  {
    v5 = *(*a4 + 4 * a2);
    if (v5 == 16777214 && (a3 & 1) == 0)
    {
      if (*(a1 + 112) == *(a1 + 116))
      {
        return 16777213;
      }

      else
      {
        return 16777214;
      }
    }

    return v5;
  }

  return WordLanguageModel::getWordId(a1, a2, a3);
}

uint64_t mrec_qsort_r<DiskNgramContextBiTriIsolatedCmp>(uint64_t result, unint64_t a2, int64_t a3, const void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v107 = a3 != 8;
  v108 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v109 = v8;
  if (a2 < 7)
  {
LABEL_118:
    if ((v5 * a3) > a3)
    {
      v79 = &v6[v5 * a3];
      v80 = &v6[a3];
      v81 = v6;
      do
      {
        if (v80 > v6)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v7);
            result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v109)
            {
              if (v108)
              {
                v85 = 0;
                v86 = v83;
                do
                {
                  v87 = v84[v85];
                  v84[v85] = *v86;
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

            v82 = (v82 + v7);
          }

          while (v83 > v6);
        }

        v80 += a3;
        v81 = (v81 + a3);
      }

      while (v80 < v79);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = &v6[(v5 >> 1) * a3];
    if (v5 == 7)
    {
      goto LABEL_45;
    }

    v11 = &v6[(v5 - 1) * a3];
    if (v5 >= 0x29)
    {
      v106 = &v6[(v5 - 1) * a3];
      v12 = (v5 >> 3) * a3;
      v13 = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v6, &v6[v12], a4);
      v14 = v13;
      v104 = &v6[v12];
      v16 = DiskNgramContextBiTriIsolatedCmp::compareElements(v13, &v6[v12], &v6[2 * v12], v15);
      if (v14 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v16 = DiskNgramContextBiTriIsolatedCmp::compareElements(v16, v6, &v6[2 * v12], v17);
          if (v16 >= 0)
          {
            v18 = v6;
          }

          else
          {
            v18 = &v6[2 * v12];
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        v16 = DiskNgramContextBiTriIsolatedCmp::compareElements(v16, v6, &v6[2 * v12], v17);
        if (v16 >= 0)
        {
          v18 = &v6[2 * v12];
        }

        else
        {
          v18 = v6;
        }

LABEL_18:
        v104 = v18;
      }

      v20 = DiskNgramContextBiTriIsolatedCmp::compareElements(v16, &v10[-v12], &v6[(v5 >> 1) * a3], v17);
      v21 = v20;
      v23 = DiskNgramContextBiTriIsolatedCmp::compareElements(v20, &v6[(v5 >> 1) * a3], &v10[v12], v22);
      if (v21 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          v23 = DiskNgramContextBiTriIsolatedCmp::compareElements(v23, &v10[-v12], &v10[v12], v24);
          if (v23 >= 0)
          {
            v10 -= v12;
          }

          else
          {
            v10 += v12;
          }
        }
      }

      else if (v23 <= 0)
      {
        v23 = DiskNgramContextBiTriIsolatedCmp::compareElements(v23, &v10[-v12], &v10[v12], v24);
        if (v23 >= 0)
        {
          v10 += v12;
        }

        else
        {
          v10 -= v12;
        }
      }

      v25 = &v106[-2 * v12];
      v11 = &v106[-v12];
      v26 = DiskNgramContextBiTriIsolatedCmp::compareElements(v23, v25, &v106[-v12], v24);
      v27 = v26;
      result = DiskNgramContextBiTriIsolatedCmp::compareElements(v26, &v106[-v12], v106, v28);
      if (v27 < 0)
      {
        v19 = v104;
        if ((result & 0x80000000) == 0)
        {
          v11 = &v6[(v5 - 1) * a3];
          result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v25, v106, a4);
          if (result >= 0)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        v19 = v104;
        if (result <= 0)
        {
          v11 = &v6[(v5 - 1) * a3];
          result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v25, v106, a4);
          if (result < 0)
          {
            v11 = v25;
          }
        }
      }

      goto LABEL_36;
    }

    v19 = v6;
LABEL_36:
    v29 = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v19, v10, a4);
    v30 = v29;
    result = DiskNgramContextBiTriIsolatedCmp::compareElements(v29, v10, v11, v31);
    if (v30 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v19, v11, a4);
        if (result >= 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = v11;
        }
      }
    }

    else if (result <= 0)
    {
      result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v19, v11, a4);
      if (result >= 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v19;
      }
    }

LABEL_45:
    if (v109)
    {
      if (v108)
      {
        v32 = v6;
        v33 = a3 >> 3;
        do
        {
          v34 = *v32;
          *v32 = *v10;
          v32 += 8;
          *v10 = v34;
          v10 += 8;
          --v33;
        }

        while (v33);
      }

      else
      {
        v36 = a3;
        v37 = v6;
        do
        {
          v38 = *v37;
          *v37++ = *v10;
          *v10++ = v38;
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v35 = *v6;
      *v6 = *v10;
      *v10 = v35;
    }

    v39 = 0;
    v40 = &v6[a3];
    v41 = &v6[(v5 - 1) * a3];
    v42 = v41;
    v43 = &v6[a3];
LABEL_54:
    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v43, v6, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v44 = 0;
            do
            {
              v45 = *&v40[8 * v44];
              *&v40[8 * v44] = *&v43[8 * v44];
              *&v43[8 * v44++] = v45;
            }

            while (v9 != v44);
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = v40[v54];
              v40[v54] = v43[v54];
              v43[v54++] = v55;
            }

            while (a3 != v54);
          }
        }

        else
        {
          v53 = *v40;
          *v40 = *v43;
          *v43 = v53;
        }

        v40 += a3;
        v39 = 1;
      }

      v43 += a3;
    }

    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v42, v6, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v109)
        {
          if (v108)
          {
            v51 = 0;
            do
            {
              v52 = *&v43[8 * v51];
              *&v43[8 * v51] = *&v42[8 * v51];
              *&v42[8 * v51++] = v52;
            }

            while (v9 != v51);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = v43[v57];
              v43[v57] = v42[v57];
              v42[v57++] = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v43;
          *v43 = *v42;
          *v42 = v56;
        }

        v43 += a3;
        v42 += v7;
        v39 = 1;
        goto LABEL_54;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v46 = 0;
            do
            {
              v47 = *&v42[8 * v46];
              *&v42[8 * v46] = *&v41[8 * v46];
              *&v41[8 * v46++] = v47;
            }

            while (v9 != v46);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = v42[v49];
              v42[v49] = v41[v49];
              v41[v49++] = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v42;
          *v42 = *v41;
          *v41 = v48;
        }

        v41 += v7;
        v39 = 1;
      }

      v42 += v7;
    }

    v59 = v5 * a3;
    v60 = &v6[v5 * a3];
    if (!v39)
    {
      break;
    }

    v61 = v43 - v40;
    if (v40 - v6 >= v43 - v40)
    {
      v62 = v43 - v40;
    }

    else
    {
      v62 = v40 - v6;
    }

    if (v62)
    {
      if (v108)
      {
        v63 = &v43[-v62];
        v64 = v62 >> 3;
        v65 = v6;
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
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68++ = v43[v67];
          v43[v67] = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v41 - v42;
    if (v41 - v42 >= v60 - &v41[a3])
    {
      v72 = v60 - &v41[a3];
    }

    else
    {
      v72 = v41 - v42;
    }

    if (v72)
    {
      if (v108)
      {
        v73 = &v60[-v72];
        v74 = v72 >> 3;
        do
        {
          v75 = *v43;
          *v43 = *v73;
          v43 += 8;
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
          v77 = *v43;
          *v43++ = v60[v76];
          v60[v76] = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<DiskNgramContextBiTriIsolatedCmp>(v6, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v6 = &v60[-v71];
    v5 = v71 / a3;
    v78 = v107;
    if (((v6 | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v108 = ((v6 | a3) & 7) == 0;
    v109 = v78;
    if (v5 < 7)
    {
      goto LABEL_118;
    }
  }

  v92 = &v6[a3];
  if (v59 > a3)
  {
    v93 = v6;
    do
    {
      if (v92 > v6)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v7);
          result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v109)
          {
            if (v108)
            {
              v97 = 0;
              v98 = v95;
              do
              {
                v99 = v96[v97];
                v96[v97] = *v98;
                *v98++ = v99;
                ++v97;
              }

              while (v9 != v97);
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

          v94 = (v94 + v7);
        }

        while (v95 > v6);
      }

      v92 += a3;
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t mrec_qsort_r<DiskNgramContextQuadIsolatedCmp>(uint64_t result, unint64_t a2, int64_t a3, const void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v107 = a3 != 8;
  v108 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v109 = v8;
  if (a2 < 7)
  {
LABEL_118:
    if ((v5 * a3) > a3)
    {
      v79 = &v6[v5 * a3];
      v80 = &v6[a3];
      v81 = v6;
      do
      {
        if (v80 > v6)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v7);
            result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v109)
            {
              if (v108)
              {
                v85 = 0;
                v86 = v83;
                do
                {
                  v87 = v84[v85];
                  v84[v85] = *v86;
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

            v82 = (v82 + v7);
          }

          while (v83 > v6);
        }

        v80 += a3;
        v81 = (v81 + a3);
      }

      while (v80 < v79);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = &v6[(v5 >> 1) * a3];
    if (v5 == 7)
    {
      goto LABEL_45;
    }

    v11 = &v6[(v5 - 1) * a3];
    if (v5 >= 0x29)
    {
      v106 = &v6[(v5 - 1) * a3];
      v12 = (v5 >> 3) * a3;
      v13 = DiskNgramContextQuadIsolatedCmp::compareElements(result, v6, &v6[v12], a4);
      v14 = v13;
      v104 = &v6[v12];
      v16 = DiskNgramContextQuadIsolatedCmp::compareElements(v13, &v6[v12], &v6[2 * v12], v15);
      if (v14 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v16 = DiskNgramContextQuadIsolatedCmp::compareElements(v16, v6, &v6[2 * v12], v17);
          if (v16 >= 0)
          {
            v18 = v6;
          }

          else
          {
            v18 = &v6[2 * v12];
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        v16 = DiskNgramContextQuadIsolatedCmp::compareElements(v16, v6, &v6[2 * v12], v17);
        if (v16 >= 0)
        {
          v18 = &v6[2 * v12];
        }

        else
        {
          v18 = v6;
        }

LABEL_18:
        v104 = v18;
      }

      v20 = DiskNgramContextQuadIsolatedCmp::compareElements(v16, &v10[-v12], &v6[(v5 >> 1) * a3], v17);
      v21 = v20;
      v23 = DiskNgramContextQuadIsolatedCmp::compareElements(v20, &v6[(v5 >> 1) * a3], &v10[v12], v22);
      if (v21 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          v23 = DiskNgramContextQuadIsolatedCmp::compareElements(v23, &v10[-v12], &v10[v12], v24);
          if (v23 >= 0)
          {
            v10 -= v12;
          }

          else
          {
            v10 += v12;
          }
        }
      }

      else if (v23 <= 0)
      {
        v23 = DiskNgramContextQuadIsolatedCmp::compareElements(v23, &v10[-v12], &v10[v12], v24);
        if (v23 >= 0)
        {
          v10 += v12;
        }

        else
        {
          v10 -= v12;
        }
      }

      v25 = &v106[-2 * v12];
      v11 = &v106[-v12];
      v26 = DiskNgramContextQuadIsolatedCmp::compareElements(v23, v25, &v106[-v12], v24);
      v27 = v26;
      result = DiskNgramContextQuadIsolatedCmp::compareElements(v26, &v106[-v12], v106, v28);
      if (v27 < 0)
      {
        v19 = v104;
        if ((result & 0x80000000) == 0)
        {
          v11 = &v6[(v5 - 1) * a3];
          result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v25, v106, a4);
          if (result >= 0)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        v19 = v104;
        if (result <= 0)
        {
          v11 = &v6[(v5 - 1) * a3];
          result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v25, v106, a4);
          if (result < 0)
          {
            v11 = v25;
          }
        }
      }

      goto LABEL_36;
    }

    v19 = v6;
LABEL_36:
    v29 = DiskNgramContextQuadIsolatedCmp::compareElements(result, v19, v10, a4);
    v30 = v29;
    result = DiskNgramContextQuadIsolatedCmp::compareElements(v29, v10, v11, v31);
    if (v30 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v19, v11, a4);
        if (result >= 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = v11;
        }
      }
    }

    else if (result <= 0)
    {
      result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v19, v11, a4);
      if (result >= 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v19;
      }
    }

LABEL_45:
    if (v109)
    {
      if (v108)
      {
        v32 = v6;
        v33 = a3 >> 3;
        do
        {
          v34 = *v32;
          *v32 = *v10;
          v32 += 8;
          *v10 = v34;
          v10 += 8;
          --v33;
        }

        while (v33);
      }

      else
      {
        v36 = a3;
        v37 = v6;
        do
        {
          v38 = *v37;
          *v37++ = *v10;
          *v10++ = v38;
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v35 = *v6;
      *v6 = *v10;
      *v10 = v35;
    }

    v39 = 0;
    v40 = &v6[a3];
    v41 = &v6[(v5 - 1) * a3];
    v42 = v41;
    v43 = &v6[a3];
LABEL_54:
    while (v43 <= v42)
    {
      result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v43, v6, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v44 = 0;
            do
            {
              v45 = *&v40[8 * v44];
              *&v40[8 * v44] = *&v43[8 * v44];
              *&v43[8 * v44++] = v45;
            }

            while (v9 != v44);
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = v40[v54];
              v40[v54] = v43[v54];
              v43[v54++] = v55;
            }

            while (a3 != v54);
          }
        }

        else
        {
          v53 = *v40;
          *v40 = *v43;
          *v43 = v53;
        }

        v40 += a3;
        v39 = 1;
      }

      v43 += a3;
    }

    while (v43 <= v42)
    {
      result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v42, v6, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v109)
        {
          if (v108)
          {
            v51 = 0;
            do
            {
              v52 = *&v43[8 * v51];
              *&v43[8 * v51] = *&v42[8 * v51];
              *&v42[8 * v51++] = v52;
            }

            while (v9 != v51);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = v43[v57];
              v43[v57] = v42[v57];
              v42[v57++] = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v43;
          *v43 = *v42;
          *v42 = v56;
        }

        v43 += a3;
        v42 += v7;
        v39 = 1;
        goto LABEL_54;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v46 = 0;
            do
            {
              v47 = *&v42[8 * v46];
              *&v42[8 * v46] = *&v41[8 * v46];
              *&v41[8 * v46++] = v47;
            }

            while (v9 != v46);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = v42[v49];
              v42[v49] = v41[v49];
              v41[v49++] = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v42;
          *v42 = *v41;
          *v41 = v48;
        }

        v41 += v7;
        v39 = 1;
      }

      v42 += v7;
    }

    v59 = v5 * a3;
    v60 = &v6[v5 * a3];
    if (!v39)
    {
      break;
    }

    v61 = v43 - v40;
    if (v40 - v6 >= v43 - v40)
    {
      v62 = v43 - v40;
    }

    else
    {
      v62 = v40 - v6;
    }

    if (v62)
    {
      if (v108)
      {
        v63 = &v43[-v62];
        v64 = v62 >> 3;
        v65 = v6;
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
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68++ = v43[v67];
          v43[v67] = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v41 - v42;
    if (v41 - v42 >= v60 - &v41[a3])
    {
      v72 = v60 - &v41[a3];
    }

    else
    {
      v72 = v41 - v42;
    }

    if (v72)
    {
      if (v108)
      {
        v73 = &v60[-v72];
        v74 = v72 >> 3;
        do
        {
          v75 = *v43;
          *v43 = *v73;
          v43 += 8;
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
          v77 = *v43;
          *v43++ = v60[v76];
          v60[v76] = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<DiskNgramContextQuadIsolatedCmp>(v6, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v6 = &v60[-v71];
    v5 = v71 / a3;
    v78 = v107;
    if (((v6 | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v108 = ((v6 | a3) & 7) == 0;
    v109 = v78;
    if (v5 < 7)
    {
      goto LABEL_118;
    }
  }

  v92 = &v6[a3];
  if (v59 > a3)
  {
    v93 = v6;
    do
    {
      if (v92 > v6)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v7);
          result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v109)
          {
            if (v108)
            {
              v97 = 0;
              v98 = v95;
              do
              {
                v99 = v96[v97];
                v96[v97] = *v98;
                *v98++ = v99;
                ++v97;
              }

              while (v9 != v97);
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

          v94 = (v94 + v7);
        }

        while (v95 > v6);
      }

      v92 += a3;
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsCmp>(uint64_t result, unint64_t a2, int64_t a3, const void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v107 = a3 != 8;
  v108 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v109 = v8;
  if (a2 < 7)
  {
LABEL_118:
    if ((v5 * a3) > a3)
    {
      v79 = (v6 + v5 * a3);
      v80 = (v6 + a3);
      v81 = v6;
      do
      {
        if (v80 > v6)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v7);
            result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v109)
            {
              if (v108)
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

            v82 = (v82 + v7);
          }

          while (v83 > v6);
        }

        v80 = (v80 + a3);
        v81 = (v81 + a3);
      }

      while (v80 < v79);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = (v6 + (v5 >> 1) * a3);
    if (v5 == 7)
    {
      goto LABEL_45;
    }

    v11 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v106 = (v6 + (v5 - 1) * a3);
      v12 = (v5 >> 3) * a3;
      v13 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v6, (v6 + v12), a4);
      v14 = v13;
      v104 = (v6 + v12);
      v16 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v13, (v6 + v12), (v6 + 2 * v12), v15);
      if (v14 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v16 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
          if (v16 >= 0)
          {
            v18 = v6;
          }

          else
          {
            v18 = (v6 + 2 * v12);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        v16 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
        if (v16 >= 0)
        {
          v18 = (v6 + 2 * v12);
        }

        else
        {
          v18 = v6;
        }

LABEL_18:
        v104 = v18;
      }

      v20 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v16, (v10 - v12), (v6 + (v5 >> 1) * a3), v17);
      v21 = v20;
      v23 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v20, (v6 + (v5 >> 1) * a3), (v10 + v12), v22);
      if (v21 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          v23 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
          if (v23 >= 0)
          {
            v10 = (v10 - v12);
          }

          else
          {
            v10 = (v10 + v12);
          }
        }
      }

      else if (v23 <= 0)
      {
        v23 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
        if (v23 >= 0)
        {
          v10 = (v10 + v12);
        }

        else
        {
          v10 = (v10 - v12);
        }
      }

      v25 = (v106 - 2 * v12);
      v11 = (v106 - v12);
      v26 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v23, v25, (v106 - v12), v24);
      v27 = v26;
      result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v26, (v106 - v12), v106, v28);
      if (v27 < 0)
      {
        v19 = v104;
        if ((result & 0x80000000) == 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v25, v106, a4);
          if (result >= 0)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        v19 = v104;
        if (result <= 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v25, v106, a4);
          if (result < 0)
          {
            v11 = v25;
          }
        }
      }

      goto LABEL_36;
    }

    v19 = v6;
LABEL_36:
    v29 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v19, v10, a4);
    v30 = v29;
    result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v29, v10, v11, v31);
    if (v30 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v19, v11, a4);
        if (result >= 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = v11;
        }
      }
    }

    else if (result <= 0)
    {
      result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v19, v11, a4);
      if (result >= 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v19;
      }
    }

LABEL_45:
    if (v109)
    {
      if (v108)
      {
        v32 = v6;
        v33 = a3 >> 3;
        do
        {
          v34 = *v32;
          *v32 = *v10;
          v32 += 2;
          *v10 = v34;
          v10 += 2;
          --v33;
        }

        while (v33);
      }

      else
      {
        v36 = a3;
        v37 = v6;
        do
        {
          v38 = *v37;
          *v37 = *v10;
          v37 = (v37 + 1);
          *v10 = v38;
          v10 = (v10 + 1);
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v35 = *v6;
      *v6 = *v10;
      *v10 = v35;
    }

    v39 = 0;
    v40 = (v6 + a3);
    v41 = (v6 + (v5 - 1) * a3);
    v42 = v41;
    v43 = (v6 + a3);
LABEL_54:
    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v43, v6, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v44 = 0;
            do
            {
              v45 = v40[v44];
              v40[v44] = *&v43[2 * v44];
              *&v43[2 * v44++] = v45;
            }

            while (v9 != v44);
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = *(v40 + v54);
              *(v40 + v54) = *(v43 + v54);
              *(v43 + v54++) = v55;
            }

            while (a3 != v54);
          }
        }

        else
        {
          v53 = *v40;
          *v40 = *v43;
          *v43 = v53;
        }

        v40 = (v40 + a3);
        v39 = 1;
      }

      v43 = (v43 + a3);
    }

    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v42, v6, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v109)
        {
          if (v108)
          {
            v51 = 0;
            do
            {
              v52 = *&v43[2 * v51];
              *&v43[2 * v51] = *&v42[2 * v51];
              *&v42[2 * v51++] = v52;
            }

            while (v9 != v51);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = *(v43 + v57);
              *(v43 + v57) = *(v42 + v57);
              *(v42 + v57++) = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v43;
          *v43 = *v42;
          *v42 = v56;
        }

        v43 = (v43 + a3);
        v42 = (v42 + v7);
        v39 = 1;
        goto LABEL_54;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v46 = 0;
            do
            {
              v47 = *&v42[2 * v46];
              *&v42[2 * v46] = *&v41[2 * v46];
              *&v41[2 * v46++] = v47;
            }

            while (v9 != v46);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v42 + v49);
              *(v42 + v49) = *(v41 + v49);
              *(v41 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v42;
          *v42 = *v41;
          *v41 = v48;
        }

        v41 = (v41 + v7);
        v39 = 1;
      }

      v42 = (v42 + v7);
    }

    v59 = v5 * a3;
    v60 = (v6 + v5 * a3);
    if (!v39)
    {
      break;
    }

    v61 = v43 - v40;
    if (v40 - v6 >= v43 - v40)
    {
      v62 = v43 - v40;
    }

    else
    {
      v62 = v40 - v6;
    }

    if (v62)
    {
      if (v108)
      {
        v63 = (v43 - v62);
        v64 = v62 >> 3;
        v65 = v6;
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
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68 = *(v43 + v67);
          v68 = (v68 + 1);
          *(v43 + v67) = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v41 - v42;
    if (v41 - v42 >= v60 - (v41 + a3))
    {
      v72 = v60 - (v41 + a3);
    }

    else
    {
      v72 = v41 - v42;
    }

    if (v72)
    {
      if (v108)
      {
        v73 = v60 - v72;
        v74 = v72 >> 3;
        do
        {
          v75 = *v43;
          *v43 = *v73;
          v43 += 2;
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
          v77 = *v43;
          *v43 = *(v60 + v76);
          v43 = (v43 + 1);
          *(v60 + v76) = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsCmp>(v6, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v6 = (v60 - v71);
    v5 = v71 / a3;
    v78 = v107;
    if (((v6 | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v108 = ((v6 | a3) & 7) == 0;
    v109 = v78;
    if (v5 < 7)
    {
      goto LABEL_118;
    }
  }

  v92 = (v6 + a3);
  if (v59 > a3)
  {
    v93 = v6;
    do
    {
      if (v92 > v6)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v7);
          result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v109)
          {
            if (v108)
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

              while (v9 != v97);
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

          v94 = (v94 + v7);
        }

        while (v95 > v6);
      }

      v92 = (v92 + a3);
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsWithBigramsCmp>(uint64_t result, unint64_t a2, int64_t a3, const void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v107 = a3 != 8;
  v108 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v109 = v8;
  if (a2 < 7)
  {
LABEL_118:
    if ((v5 * a3) > a3)
    {
      v79 = (v6 + v5 * a3);
      v80 = (v6 + a3);
      v81 = v6;
      do
      {
        if (v80 > v6)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v7);
            result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v109)
            {
              if (v108)
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

            v82 = (v82 + v7);
          }

          while (v83 > v6);
        }

        v80 = (v80 + a3);
        v81 = (v81 + a3);
      }

      while (v80 < v79);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = (v6 + (v5 >> 1) * a3);
    if (v5 == 7)
    {
      goto LABEL_45;
    }

    v11 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v106 = (v6 + (v5 - 1) * a3);
      v12 = (v5 >> 3) * a3;
      v13 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v6, (v6 + v12), a4);
      v14 = v13;
      v104 = (v6 + v12);
      v16 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v13, (v6 + v12), (v6 + 2 * v12), v15);
      if (v14 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v16 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
          if (v16 >= 0)
          {
            v18 = v6;
          }

          else
          {
            v18 = (v6 + 2 * v12);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        v16 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
        if (v16 >= 0)
        {
          v18 = (v6 + 2 * v12);
        }

        else
        {
          v18 = v6;
        }

LABEL_18:
        v104 = v18;
      }

      v20 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v16, (v10 - v12), (v6 + (v5 >> 1) * a3), v17);
      v21 = v20;
      v23 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v20, (v6 + (v5 >> 1) * a3), (v10 + v12), v22);
      if (v21 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          v23 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
          if (v23 >= 0)
          {
            v10 = (v10 - v12);
          }

          else
          {
            v10 = (v10 + v12);
          }
        }
      }

      else if (v23 <= 0)
      {
        v23 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
        if (v23 >= 0)
        {
          v10 = (v10 + v12);
        }

        else
        {
          v10 = (v10 - v12);
        }
      }

      v25 = (v106 - 2 * v12);
      v11 = (v106 - v12);
      v26 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v23, v25, (v106 - v12), v24);
      v27 = v26;
      result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v26, (v106 - v12), v106, v28);
      if (v27 < 0)
      {
        v19 = v104;
        if ((result & 0x80000000) == 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v25, v106, a4);
          if (result >= 0)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        v19 = v104;
        if (result <= 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v25, v106, a4);
          if (result < 0)
          {
            v11 = v25;
          }
        }
      }

      goto LABEL_36;
    }

    v19 = v6;
LABEL_36:
    v29 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v19, v10, a4);
    v30 = v29;
    result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v29, v10, v11, v31);
    if (v30 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v19, v11, a4);
        if (result >= 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = v11;
        }
      }
    }

    else if (result <= 0)
    {
      result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v19, v11, a4);
      if (result >= 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v19;
      }
    }

LABEL_45:
    if (v109)
    {
      if (v108)
      {
        v32 = v6;
        v33 = a3 >> 3;
        do
        {
          v34 = *v32;
          *v32 = *v10;
          v32 += 2;
          *v10 = v34;
          v10 += 2;
          --v33;
        }

        while (v33);
      }

      else
      {
        v36 = a3;
        v37 = v6;
        do
        {
          v38 = *v37;
          *v37 = *v10;
          v37 = (v37 + 1);
          *v10 = v38;
          v10 = (v10 + 1);
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v35 = *v6;
      *v6 = *v10;
      *v10 = v35;
    }

    v39 = 0;
    v40 = (v6 + a3);
    v41 = (v6 + (v5 - 1) * a3);
    v42 = v41;
    v43 = (v6 + a3);
LABEL_54:
    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v43, v6, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v44 = 0;
            do
            {
              v45 = v40[v44];
              v40[v44] = *&v43[2 * v44];
              *&v43[2 * v44++] = v45;
            }

            while (v9 != v44);
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = *(v40 + v54);
              *(v40 + v54) = *(v43 + v54);
              *(v43 + v54++) = v55;
            }

            while (a3 != v54);
          }
        }

        else
        {
          v53 = *v40;
          *v40 = *v43;
          *v43 = v53;
        }

        v40 = (v40 + a3);
        v39 = 1;
      }

      v43 = (v43 + a3);
    }

    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v42, v6, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v109)
        {
          if (v108)
          {
            v51 = 0;
            do
            {
              v52 = *&v43[2 * v51];
              *&v43[2 * v51] = *&v42[2 * v51];
              *&v42[2 * v51++] = v52;
            }

            while (v9 != v51);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = *(v43 + v57);
              *(v43 + v57) = *(v42 + v57);
              *(v42 + v57++) = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v43;
          *v43 = *v42;
          *v42 = v56;
        }

        v43 = (v43 + a3);
        v42 = (v42 + v7);
        v39 = 1;
        goto LABEL_54;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v46 = 0;
            do
            {
              v47 = *&v42[2 * v46];
              *&v42[2 * v46] = *&v41[2 * v46];
              *&v41[2 * v46++] = v47;
            }

            while (v9 != v46);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v42 + v49);
              *(v42 + v49) = *(v41 + v49);
              *(v41 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v42;
          *v42 = *v41;
          *v41 = v48;
        }

        v41 = (v41 + v7);
        v39 = 1;
      }

      v42 = (v42 + v7);
    }

    v59 = v5 * a3;
    v60 = (v6 + v5 * a3);
    if (!v39)
    {
      break;
    }

    v61 = v43 - v40;
    if (v40 - v6 >= v43 - v40)
    {
      v62 = v43 - v40;
    }

    else
    {
      v62 = v40 - v6;
    }

    if (v62)
    {
      if (v108)
      {
        v63 = (v43 - v62);
        v64 = v62 >> 3;
        v65 = v6;
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
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68 = *(v43 + v67);
          v68 = (v68 + 1);
          *(v43 + v67) = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v41 - v42;
    if (v41 - v42 >= v60 - (v41 + a3))
    {
      v72 = v60 - (v41 + a3);
    }

    else
    {
      v72 = v41 - v42;
    }

    if (v72)
    {
      if (v108)
      {
        v73 = v60 - v72;
        v74 = v72 >> 3;
        do
        {
          v75 = *v43;
          *v43 = *v73;
          v43 += 2;
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
          v77 = *v43;
          *v43 = *(v60 + v76);
          v43 = (v43 + 1);
          *(v60 + v76) = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsWithBigramsCmp>(v6, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v6 = (v60 - v71);
    v5 = v71 / a3;
    v78 = v107;
    if (((v6 | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v108 = ((v6 | a3) & 7) == 0;
    v109 = v78;
    if (v5 < 7)
    {
      goto LABEL_118;
    }
  }

  v92 = (v6 + a3);
  if (v59 > a3)
  {
    v93 = v6;
    do
    {
      if (v92 > v6)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v7);
          result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v109)
          {
            if (v108)
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

              while (v9 != v97);
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

          v94 = (v94 + v7);
        }

        while (v95 > v6);
      }

      v92 = (v92 + a3);
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t mrec_qsort_r<DiskNgramContextQuadGroupCmp>(uint64_t result, unint64_t a2, int64_t a3, const void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v107 = a3 != 8;
  v108 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v109 = v8;
  if (a2 < 7)
  {
LABEL_118:
    if ((v5 * a3) > a3)
    {
      v79 = (v6 + v5 * a3);
      v80 = (v6 + a3);
      v81 = v6;
      do
      {
        if (v80 > v6)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v7);
            result = DiskNgramContextQuadGroupCmp::compareElements(result, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v109)
            {
              if (v108)
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

            v82 = (v82 + v7);
          }

          while (v83 > v6);
        }

        v80 = (v80 + a3);
        v81 = (v81 + a3);
      }

      while (v80 < v79);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = (v6 + (v5 >> 1) * a3);
    if (v5 == 7)
    {
      goto LABEL_45;
    }

    v11 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v106 = (v6 + (v5 - 1) * a3);
      v12 = (v5 >> 3) * a3;
      v13 = DiskNgramContextQuadGroupCmp::compareElements(result, v6, (v6 + v12), a4);
      v14 = v13;
      v104 = (v6 + v12);
      v16 = DiskNgramContextQuadGroupCmp::compareElements(v13, (v6 + v12), (v6 + 2 * v12), v15);
      if (v14 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v16 = DiskNgramContextQuadGroupCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
          if (v16 >= 0)
          {
            v18 = v6;
          }

          else
          {
            v18 = (v6 + 2 * v12);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        v16 = DiskNgramContextQuadGroupCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
        if (v16 >= 0)
        {
          v18 = (v6 + 2 * v12);
        }

        else
        {
          v18 = v6;
        }

LABEL_18:
        v104 = v18;
      }

      v20 = DiskNgramContextQuadGroupCmp::compareElements(v16, (v10 - v12), (v6 + (v5 >> 1) * a3), v17);
      v21 = v20;
      v23 = DiskNgramContextQuadGroupCmp::compareElements(v20, (v6 + (v5 >> 1) * a3), (v10 + v12), v22);
      if (v21 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          v23 = DiskNgramContextQuadGroupCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
          if (v23 >= 0)
          {
            v10 = (v10 - v12);
          }

          else
          {
            v10 = (v10 + v12);
          }
        }
      }

      else if (v23 <= 0)
      {
        v23 = DiskNgramContextQuadGroupCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
        if (v23 >= 0)
        {
          v10 = (v10 + v12);
        }

        else
        {
          v10 = (v10 - v12);
        }
      }

      v25 = (v106 - 2 * v12);
      v11 = (v106 - v12);
      v26 = DiskNgramContextQuadGroupCmp::compareElements(v23, v25, (v106 - v12), v24);
      v27 = v26;
      result = DiskNgramContextQuadGroupCmp::compareElements(v26, (v106 - v12), v106, v28);
      if (v27 < 0)
      {
        v19 = v104;
        if ((result & 0x80000000) == 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextQuadGroupCmp::compareElements(result, v25, v106, a4);
          if (result >= 0)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        v19 = v104;
        if (result <= 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextQuadGroupCmp::compareElements(result, v25, v106, a4);
          if (result < 0)
          {
            v11 = v25;
          }
        }
      }

      goto LABEL_36;
    }

    v19 = v6;
LABEL_36:
    v29 = DiskNgramContextQuadGroupCmp::compareElements(result, v19, v10, a4);
    v30 = v29;
    result = DiskNgramContextQuadGroupCmp::compareElements(v29, v10, v11, v31);
    if (v30 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DiskNgramContextQuadGroupCmp::compareElements(result, v19, v11, a4);
        if (result >= 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = v11;
        }
      }
    }

    else if (result <= 0)
    {
      result = DiskNgramContextQuadGroupCmp::compareElements(result, v19, v11, a4);
      if (result >= 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v19;
      }
    }

LABEL_45:
    if (v109)
    {
      if (v108)
      {
        v32 = v6;
        v33 = a3 >> 3;
        do
        {
          v34 = *v32;
          *v32 = *v10;
          v32 += 2;
          *v10 = v34;
          v10 += 2;
          --v33;
        }

        while (v33);
      }

      else
      {
        v36 = a3;
        v37 = v6;
        do
        {
          v38 = *v37;
          *v37 = *v10;
          v37 = (v37 + 1);
          *v10 = v38;
          v10 = (v10 + 1);
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v35 = *v6;
      *v6 = *v10;
      *v10 = v35;
    }

    v39 = 0;
    v40 = (v6 + a3);
    v41 = (v6 + (v5 - 1) * a3);
    v42 = v41;
    v43 = (v6 + a3);
LABEL_54:
    while (v43 <= v42)
    {
      result = DiskNgramContextQuadGroupCmp::compareElements(result, v43, v6, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v44 = 0;
            do
            {
              v45 = v40[v44];
              v40[v44] = *&v43[2 * v44];
              *&v43[2 * v44++] = v45;
            }

            while (v9 != v44);
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = *(v40 + v54);
              *(v40 + v54) = *(v43 + v54);
              *(v43 + v54++) = v55;
            }

            while (a3 != v54);
          }
        }

        else
        {
          v53 = *v40;
          *v40 = *v43;
          *v43 = v53;
        }

        v40 = (v40 + a3);
        v39 = 1;
      }

      v43 = (v43 + a3);
    }

    while (v43 <= v42)
    {
      result = DiskNgramContextQuadGroupCmp::compareElements(result, v42, v6, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v109)
        {
          if (v108)
          {
            v51 = 0;
            do
            {
              v52 = *&v43[2 * v51];
              *&v43[2 * v51] = *&v42[2 * v51];
              *&v42[2 * v51++] = v52;
            }

            while (v9 != v51);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = *(v43 + v57);
              *(v43 + v57) = *(v42 + v57);
              *(v42 + v57++) = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v43;
          *v43 = *v42;
          *v42 = v56;
        }

        v43 = (v43 + a3);
        v42 = (v42 + v7);
        v39 = 1;
        goto LABEL_54;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v46 = 0;
            do
            {
              v47 = *&v42[2 * v46];
              *&v42[2 * v46] = *&v41[2 * v46];
              *&v41[2 * v46++] = v47;
            }

            while (v9 != v46);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v42 + v49);
              *(v42 + v49) = *(v41 + v49);
              *(v41 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v42;
          *v42 = *v41;
          *v41 = v48;
        }

        v41 = (v41 + v7);
        v39 = 1;
      }

      v42 = (v42 + v7);
    }

    v59 = v5 * a3;
    v60 = (v6 + v5 * a3);
    if (!v39)
    {
      break;
    }

    v61 = v43 - v40;
    if (v40 - v6 >= v43 - v40)
    {
      v62 = v43 - v40;
    }

    else
    {
      v62 = v40 - v6;
    }

    if (v62)
    {
      if (v108)
      {
        v63 = (v43 - v62);
        v64 = v62 >> 3;
        v65 = v6;
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
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68 = *(v43 + v67);
          v68 = (v68 + 1);
          *(v43 + v67) = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v41 - v42;
    if (v41 - v42 >= v60 - (v41 + a3))
    {
      v72 = v60 - (v41 + a3);
    }

    else
    {
      v72 = v41 - v42;
    }

    if (v72)
    {
      if (v108)
      {
        v73 = v60 - v72;
        v74 = v72 >> 3;
        do
        {
          v75 = *v43;
          *v43 = *v73;
          v43 += 2;
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
          v77 = *v43;
          *v43 = *(v60 + v76);
          v43 = (v43 + 1);
          *(v60 + v76) = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<DiskNgramContextQuadGroupCmp>(v6, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v6 = (v60 - v71);
    v5 = v71 / a3;
    v78 = v107;
    if (((v6 | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v108 = ((v6 | a3) & 7) == 0;
    v109 = v78;
    if (v5 < 7)
    {
      goto LABEL_118;
    }
  }

  v92 = (v6 + a3);
  if (v59 > a3)
  {
    v93 = v6;
    do
    {
      if (v92 > v6)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v7);
          result = DiskNgramContextQuadGroupCmp::compareElements(result, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v109)
          {
            if (v108)
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

              while (v9 != v97);
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

          v94 = (v94 + v7);
        }

        while (v95 > v6);
      }

      v92 = (v92 + a3);
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t WordLanguageModel::loadPersistentAndIndex(WordLanguageModel *this)
{
  v27 = 0;
  v28 = 0;
  v2 = OpenAndReadMrecHeader(*(this + 5), 0x72u, 0, "LMWNGPER", &v28, &v27);
  if (v2)
  {
  }

  *(this + 28) = v2;
  v3 = v28 == 18 && v27 == 6;
  v4 = v3;
  if (v3)
  {
    v5 = 18;
    v6 = 6;
  }

  else
  {
    v7 = *(this + 5);
    if (*(v7 + 24))
    {
      v8 = *(v7 + 16);
    }

    else
    {
      v8 = &unk_26288CFB0;
    }

    MrecHeaderCheckVersions(v8, "LMWNGPER", v28, v27, 0x17u, 7u);
    v6 = v27;
    v5 = v28;
  }

  v9 = MrecHeaderCheckLatestVersionIfShared(*(this + 5), "LMWNGPER", v5, v6, 23, 7);
  v10 = *(this + 28);
  v29 = 0;
  (*(*v10 + 72))(v10, &v29, 4, 1, v9);
  v11 = v29;
  v12 = *(this + 28);
  v29 = 0;
  (*(*v12 + 72))(v12, &v29, 4, 1);
  v13 = v29;
  v14 = *(this + 28);
  v29 = 0;
  (*(*v14 + 72))(v14, &v29, 4, 1);
  v15 = v29;
  *(this + 65) = (*(**(this + 28) + 48))(*(this + 28));
  v27 = 0;
  v28 = 0;
  v16 = OpenAndReadMrecHeader(*(this + 5), 0x71u, 1, "LMWNGIND", &v28, &v27);
  v17 = v27;
  if (v28 == 19 && v27 == 10)
  {
    v18 = 19;
  }

  else
  {
    v19 = *(this + 5);
    if (*(v19 + 24))
    {
      v20 = *(v19 + 16);
    }

    else
    {
      v20 = &unk_26288CFB0;
    }

    MrecHeaderCheckVersions(v20, "LMWNGIND", v28, v27, 0x17u, 0xBu);
    v17 = v27;
    v18 = v28;
  }

  v21 = MrecHeaderCheckLatestVersionIfShared(*(this + 5), "LMWNGIND", v18, v17, 23, 11);
  v29 = 0;
  (*(*v16 + 72))(v16, &v29, 4, 1, v21);
  v22 = v29;
  v29 = 0;
  (*(*v16 + 72))(v16, &v29, 4, 1);
  v23 = v29;
  v29 = 0;
  (*(*v16 + 72))(v16, &v29, 4, 1);
  *(this + 64) = v29;
  if (v11 != v22 || v13 != v23)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8580, "lm/wordlm", 29, "%u %u %u %u", v11, v13, v22, v23);
  }

  v24 = *(this + 67);
  if (v11 != *(this + 66) || v13 != v24)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8589, "lm/wordlm", 30, "%.500s %u %u %u %u", "The specified voc and svc are mismatched.  Details:", v11, v13, *(this + 66), v24);
  }

  v25 = *(this + 64);
  if (v15 != v25)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8593, "lm/wordlm", 69, "%u %u", v15, v25);
  }

  v29 = 0;
  readObject(v16, this + 31, &v29);
  BigramData::loadBinary((this + 360), v16, &v29);
  WordLanguageModel::verifyBoWtForBiSc(this);
  WordLanguageModel::throwOnBadBoWt(this);
  if (*(this + 16) >= 3u)
  {
    TrigramData::loadBinary((this + 744), v16, &v29);
    WordLanguageModel::throwOnBadTriBoWt(this);
    if (*(this + 16) >= 4u)
    {
      QuadgramData::loadBinary((this + 1232), v16, &v29);
    }
  }

  readObjectChecksumAndVerify(v16, v29);
  if (v23 != v29)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8611, "lm/wordlm", 31, "%u %u", v23, v29);
  }

  DgnDelete<DgnStream>(v16);
  return v4;
}

void (***WordLanguageModel::reabsorbStaticLM(WordLanguageModel *this))(void)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  LMStats::resetStats(v25);
  v22 = xmmword_26288CF80;
  v23 = 3;
  v24 = 1;
  if (*(this + 90))
  {
    v2 = *(this + 140);
    if (v2 >= 2)
    {
      for (i = 1; i < v2; ++i)
      {
        if (*(*(this + 69) + 2 * i) && *(this + 90) && (*(*(this + 50) + 4 * (i >> 5)) & (1 << i)) != 0 && (*(*(this + 52) + 4 * (i >> 5)) & (1 << i)) == 0)
        {
          WordLanguageModel::loadBigramRecord(this, i, v25, &v22);
          v2 = *(this + 140);
        }
      }
    }
  }

  BigramData::BigramData(v21);
  BigramData::fillInFullyLoadedBigramData((this + 360), v21);
  BigramData::copyBigramData(this + 45, v21);
  BigramData::~BigramData(v21);
  BigramData::compact(this + 45);
  if (*(this + 16) >= 3u)
  {
    if (*(this + 186))
    {
      v6 = *(this + 200);
      if (v6 >= 2)
      {
        for (j = 1; j < v6; ++j)
        {
          v8 = *(this + 99);
          v9 = *(v8 + 2 * j);
          if (*(v8 + 2 * j))
          {
            v10 = 0;
            do
            {
              v11 = (v10 + *(*(this + 101) + 4 * j));
              if (*(*(this + 130) + 2 * v11) && *(this + 186) && (*(*(this + 111) + 4 * (v11 >> 5)) & (1 << v11)) != 0 && (*(*(this + 113) + 4 * (v11 >> 5)) & (1 << v11)) == 0)
              {
                WordLanguageModel::loadTrigramRecord(this, v4, v5, v11, v25, &v22);
              }

              ++v10;
            }

            while (v9 != v10);
            v6 = *(this + 200);
          }
        }
      }
    }

    TrigramData::TrigramData(v21);
    TrigramData::fillInFullyLoadedTrigramData((this + 744), v21);
    TrigramData::copyTrigramData((this + 744), v21);
    TrigramData::~TrigramData(v21);
    TrigramData::compact(this + 93);
    if (*(this + 16) > 3u)
    {
      if (*(this + 308))
      {
        v14 = *(this + 322);
        if (v14 >= 2)
        {
          for (k = 1; k < v14; ++k)
          {
            v16 = *(this + 160);
            v17 = *(v16 + 2 * k);
            if (*(v16 + 2 * k))
            {
              v18 = 0;
              do
              {
                v19 = (v18 + *(*(this + 162) + 4 * k));
                if (*(*(this + 166) + 2 * v19) && *(this + 308) && (*(*(this + 168) + 4 * (v19 >> 5)) & (1 << v19)) != 0 && (*(*(this + 170) + 4 * (v19 >> 5)) & (1 << v19)) == 0)
                {
                  WordLanguageModel::loadQuadgramRecord(this, v12, v13, v19, v25, &v22);
                }

                ++v18;
              }

              while (v17 != v18);
              v14 = *(this + 322);
            }
          }
        }
      }

      QuadgramData::QuadgramData(v21);
      QuadgramData::fillInFullyLoadedQuadgramData((this + 1232), v21);
      QuadgramData::copyQuadgramData((this + 1232), v21);
      QuadgramData::~QuadgramData(v21);
      QuadgramData::compact(this + 154);
    }
  }

  DgnDelete<DgnStream>(*(this + 28));
  *(this + 28) = 0;
  result = DgnDelete<RealDFile>(*(this + 5));
  *(this + 5) = 0;
  *(this + 33) = 0;
  return result;
}

void WordLanguageModel::loadBigramRecord(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v6 = a2;
  LoadSaveTracker::LoadSaveTracker(&v21);
  v19 = 0u;
  v20 = 0u;
  SnapTime::recordTime(&v19, 1, 0, 0, 0);
  (*(**(a1 + 224) + 24))(*(a1 + 224), *(*(a1 + 536) + 4 * v6));
  v17 = 0;
  v18 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  (*(**(a1 + 224) + 96))(*(a1 + 224), a4[2], *a4, 1);
  WordLanguageModel::readBigramRecord(a1, v6, &v17, v16, v15, v14);
  BigramData::allocLoaded((a1 + 360), v6);
  if (*(a1 + 376))
  {
    if (v18)
    {
      v8 = 0;
      do
      {
        BigramData::setSearchSuccIdForIndex(a1 + 360, v6, v8, *(v17 + 2 * v8));
        BigramData::setSearchQuantizedScoreForIndex(a1 + 360, v6, v8, *(v15[0] + v8));
        ++v8;
      }

      while (v8 < v18);
    }
  }

  else if (v18)
  {
    v9 = 0;
    do
    {
      BigramData::setSearchSuccIdForIndex(a1 + 360, v6, v9, *(v17 + 2 * v9));
      BigramData::setSearchScoreForIndex(a1 + 360, v6, v9, *(v16[0] + 2 * v9));
      ++v9;
    }

    while (v9 < v18);
  }

  (*(**(a1 + 224) + 104))(*(a1 + 224), a4[1]);
  v12 = 0u;
  v13 = 0u;
  SnapTime::recordTime(&v12, 1, 0, 0, 0);
  v10 = v13;
  v11 = v20;
  *(a3 + 56) = vaddq_s64(vsubq_s64(v12, v19), *(a3 + 56));
  *(a3 + 72) = vaddq_s64(vsubq_s64(v10, v11), *(a3 + 72));
  v10.i32[0] = 1;
  v10.i32[1] = *(*(a1 + 552) + 2 * v6);
  *(a3 + 8) = vadd_s32(*(a3 + 8), *v10.i8);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  LoadSaveTracker::~LoadSaveTracker(&v21);
}

void sub_2627A0AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  va_copy(va3, va2);
  v17 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  LoadSaveTracker::~LoadSaveTracker((v9 - 49));
  _Unwind_Resume(a1);
}

void WordLanguageModel::loadTrigramRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v8 = a4;
  LoadSaveTracker::LoadSaveTracker(&v23);
  v21 = 0u;
  v22 = 0u;
  SnapTime::recordTime(&v21, 1, 0, 0, 0);
  (*(**(a1 + 224) + 24))(*(a1 + 224), *(*(a1 + 1024) + 4 * v8));
  v19 = 0;
  v20 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  (*(**(a1 + 224) + 96))(*(a1 + 224), a6[3], *a6, *(a6 + 20));
  WordLanguageModel::readTrigramRecord(a1, v8, &v19, v18, v17, v16);
  TrigramData::allocLoaded((a1 + 744), v8);
  if (*(a1 + 784))
  {
    if (v20)
    {
      v10 = 0;
      do
      {
        TrigramData::setSearchSuccIdForIndex(a1 + 744, v8, v10, *(v19 + 2 * v10));
        TrigramData::setSearchQuantizedScoreForIndex(a1 + 744, v8, v10, *(v17[0] + v10));
        ++v10;
      }

      while (v10 < v20);
    }
  }

  else if (v20)
  {
    v11 = 0;
    do
    {
      TrigramData::setSearchSuccIdForIndex(a1 + 744, v8, v11, *(v19 + 2 * v11));
      TrigramData::setSearchScoreForIndex(a1 + 744, v8, v11, *(v18[0] + 2 * v11));
      ++v11;
    }

    while (v11 < v20);
  }

  (*(**(a1 + 224) + 104))(*(a1 + 224), a6[1]);
  v14 = 0u;
  v15 = 0u;
  SnapTime::recordTime(&v14, 1, 0, 0, 0);
  v12 = v15;
  v13 = v22;
  *(a5 + 88) = vaddq_s64(vsubq_s64(v14, v21), *(a5 + 88));
  *(a5 + 104) = vaddq_s64(vsubq_s64(v12, v13), *(a5 + 104));
  v12.i32[0] = 1;
  v12.i32[1] = *(*(a1 + 1040) + 2 * v8);
  *(a5 + 24) = vadd_s32(*(a5 + 24), *v12.i8);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v19);
  LoadSaveTracker::~LoadSaveTracker(&v23);
}

void sub_2627A0D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va3, a9);
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  va_copy(va3, va2);
  v17 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  LoadSaveTracker::~LoadSaveTracker((v9 - 49));
  _Unwind_Resume(a1);
}

void WordLanguageModel::loadQuadgramRecord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v8 = a4;
  LoadSaveTracker::LoadSaveTracker(v47);
  v45 = 0u;
  v46 = 0u;
  SnapTime::recordTime(&v45, 1, 0, 0, 0);
  (*(**(a1 + 224) + 24))(*(a1 + 224), *(*(a1 + 1480) + 4 * v8));
  v44[0] = 0;
  v44[1] = 0;
  v42 = 0;
  v43 = 0;
  v41[0] = 0;
  v41[1] = 0;
  v40[0] = 0;
  v40[1] = 0;
  v39[0] = 0;
  v39[1] = 0;
  v38[0] = 0;
  v38[1] = 0;
  v37[0] = 0;
  v37[1] = 0;
  v36[0] = 0;
  v36[1] = 0;
  v35[0] = 0;
  v35[1] = 0;
  v34[0] = 0;
  v34[1] = 0;
  (*(**(a1 + 224) + 96))(*(a1 + 224), a6[4], *a6, *(a6 + 20));
  WordLanguageModel::readQuadgramRecord(a1, v8, v44, &v42, v41, v40, v39, v38, v37, v36, v35, v34);
  v10 = a1 + 1232;
  QuadgramData::allocLoaded((a1 + 1232), v8, v44);
  v11 = v43;
  if (*(a1 + 1256))
  {
    if (!v43)
    {
      goto LABEL_28;
    }

    v12 = 0;
    do
    {
      v13 = *(v42 + 2 * v12);
      v14 = *(*(a1 + 1480) + 4 * v8);
      if (*(a1 + 1232) && (*(*(a1 + 1344) + 4 * (v8 >> 5)) & (1 << v8)) != 0)
      {
        LODWORD(v14) = *(*(a1 + 1656) + 4 * v14);
        *(*(a1 + 1672) + 2 * (v12 + v14)) = v13;
        v15 = (v39[0] + v12);
        v16 = 472;
      }

      else
      {
        *(*(a1 + 1496) + 2 * (v12 + v14)) = v13;
        v15 = (v39[0] + v12);
        v16 = 312;
      }

      *(*(v10 + v16) + (v14 + v12++)) = *v15;
    }

    while (v12 < v43);
    if (!v43)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (!v43)
    {
      goto LABEL_28;
    }

    v17 = 0;
    v18 = *(*(a1 + 1480) + 4 * v8);
    v19 = v42;
    v20 = *(a1 + 1232);
    v21 = v40[0];
    do
    {
      v22 = *(v19 + 2 * v17);
      if (v20 && (*(*(a1 + 1344) + 4 * (v8 >> 5)) & (1 << v8)) != 0)
      {
        v23 = *(*(a1 + 1656) + 4 * v18);
        *(*(a1 + 1672) + 2 * (v17 + v23)) = v22;
        v24 = 456;
      }

      else
      {
        *(*(a1 + 1496) + 2 * (v18 + v17)) = v22;
        v24 = 296;
        v23 = v18;
      }

      *(*(v10 + v24) + 2 * (v23 + v17)) = *(v21 + 2 * v17);
      ++v17;
    }

    while (v11 != v17);
  }

  v25 = 0;
  v26 = 0;
  do
  {
    LODWORD(v27) = *(v44[0] + 2 * v25);
    if (*(a1 + 1272))
    {
      if (*(v44[0] + 2 * v25))
      {
        v28 = 0;
        do
        {
          QuadgramData::setQuad3SuccIdForIndex(a1 + 1232, v8, v25, v28, *(v41[0] + 2 * (v26 + v28)));
          QuadgramData::setQuantizedScoreForIndex(a1 + 1232, v8, v25, v28, *(v37[0] + (v26 + v28)));
          ++v28;
          v27 = *(v44[0] + 2 * v25);
        }

        while (v28 < v27);
      }
    }

    else if (*(v44[0] + 2 * v25))
    {
      v29 = 0;
      do
      {
        QuadgramData::setQuad3SuccIdForIndex(a1 + 1232, v8, v25, v29, *(v41[0] + 2 * (v26 + v29)));
        QuadgramData::setScoreForIndex(a1 + 1232, v8, v25, v29, *(v38[0] + 2 * (v26 + v29)));
        ++v29;
        v27 = *(v44[0] + 2 * v25);
      }

      while (v29 < v27);
    }

    v26 += v27;
    *(a5 + 44) += v27;
    ++v25;
  }

  while (v25 < v43);
LABEL_28:
  (*(**(a1 + 224) + 104))(*(a1 + 224), a6[1]);
  v32 = 0u;
  v33 = 0u;
  SnapTime::recordTime(&v32, 1, 0, 0, 0);
  v30 = v33;
  v31 = v46;
  *(a5 + 120) = vaddq_s64(vsubq_s64(v32, v45), *(a5 + 120));
  *(a5 + 136) = vaddq_s64(vsubq_s64(v30, v31), *(a5 + 136));
  ++*(a5 + 40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v34);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v35);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v36);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v37);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v38);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v39);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v41);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v44);
  LoadSaveTracker::~LoadSaveTracker(v47);
}

void sub_2627A11FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a29);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v30 - 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v30 - 144);
  LoadSaveTracker::~LoadSaveTracker((v30 - 89));
  _Unwind_Resume(a1);
}

void WordLanguageModel::setLMScale(WordLanguageModel *this, unsigned int a2, double a3, double a4)
{
  if (*(this + 5))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8946, "lm/wordlm", 21, "%s", &errStr_lm_wordlm_E_LMSCALE_ON_DISK);
  }

  v6 = a2;
  LODWORD(a4) = *(this + 8);
  v7 = *&a4;
  v8 = a2 / v7;
  v9 = *(this + 16);
  if (v9 >= 4)
  {
    v10 = *(this + 318);
    if (v10)
    {
      v67 = 0;
      v68 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v67, this + 158, 0, v10);
      v11 = v68;
      if (v68)
      {
        v12 = v67;
        v13 = v68;
        do
        {
          v14 = *v12;
          if (v14 != 20000)
          {
            *v12 = (v14 * v8 + 0.5);
          }

          ++v12;
          --v13;
        }

        while (v13);
      }

      DgnPrimArray<unsigned short>::copyArraySlice(this + 158, &v67, 0, v11);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v67);
    }

    else
    {
      v15 = *(this + 400);
      if (v15)
      {
        v16 = *(this + 199);
        v6 = 0.5;
        do
        {
          v17 = *v16;
          if (v17 != 20000)
          {
            v7 = v17 * v8 + 0.5;
            *v16 = v7;
          }

          ++v16;
          --v15;
        }

        while (v15);
      }
    }

    v18 = *(this + 314);
    if (v18)
    {
      v67 = 0;
      v68 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v67, this + 156, 0, v18);
      v19 = v68;
      if (v68)
      {
        v20 = v67;
        v21 = v68;
        do
        {
          v22 = *v20;
          if (v22 != 20000)
          {
            *v20 = (v22 * v8 + 0.5);
          }

          ++v20;
          --v21;
        }

        while (v21);
      }

      DgnPrimArray<unsigned short>::copyArraySlice(this + 156, &v67, 0, v19);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v67);
    }

    else
    {
      v23 = *(this + 384);
      if (v23)
      {
        v24 = *(this + 191);
        v6 = 0.5;
        do
        {
          v25 = *v24;
          if (v25 != 20000)
          {
            v7 = v25 * v8 + 0.5;
            *v24 = v7;
          }

          ++v24;
          --v23;
        }

        while (v23);
      }
    }

    v9 = *(this + 16);
  }

  if (v9 >= 3)
  {
    v26 = *(this + 196);
    if (v26)
    {
      v67 = 0;
      v68 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v67, this + 97, 0, v26);
      v27 = v68;
      if (v68)
      {
        v28 = v67;
        v29 = v68;
        do
        {
          v30 = *v28;
          if (v30 != 20000)
          {
            *v28 = (v30 * v8 + 0.5);
          }

          ++v28;
          --v29;
        }

        while (v29);
      }

      DgnPrimArray<unsigned short>::copyArraySlice(this + 97, &v67, 0, v27);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v67);
    }

    else
    {
      v31 = *(this + 200);
      if (v31 >= 2)
      {
        v32 = *(this + 99);
        for (i = 1; i < v31; ++i)
        {
          if (*(v32 + 2 * i))
          {
            v34 = 0;
            do
            {
              v35 = v34 + *(*(this + 101) + 4 * i);
              if (*(*(this + 103) + 2 * v35) != -1)
              {
                TrigramData::rescaleScores(this + 93, v35, v8);
                v32 = *(this + 99);
              }

              ++v34;
            }

            while (v34 < *(v32 + 2 * i));
            v31 = *(this + 200);
          }
        }
      }
    }

    v36 = *(this + 192);
    if (v36)
    {
      v67 = 0;
      v68 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v67, this + 95, 0, v36);
      v37 = v68;
      if (v68)
      {
        v38 = v67;
        v39 = v68;
        do
        {
          v40 = *v38;
          if (v40 != 20000)
          {
            *v38 = (v40 * v8 + 0.5);
          }

          ++v38;
          --v39;
        }

        while (v39);
      }

      DgnPrimArray<unsigned short>::copyArraySlice(this + 95, &v67, 0, v37);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v67);
    }

    else
    {
      v41 = *(this + 200);
      if (v41 >= 2)
      {
        v42 = *(this + 99);
        v43 = 1;
        v6 = 0.5;
        do
        {
          v44 = *(v42 + 2 * v43);
          if (v44)
          {
            v45 = 0;
            v46 = *(*(this + 101) + 4 * v43);
            v47 = *(this + 103);
            do
            {
              v48 = v46;
              if (*(v47 + 2 * v46) != -1)
              {
                v49 = *(this + 105);
                v50 = *(v49 + 2 * v48);
                if (v50 != 20000)
                {
                  v7 = v50 * v8 + 0.5;
                  *(v49 + 2 * v48) = v7;
                  v44 = *(v42 + 2 * v43);
                }
              }

              ++v45;
              v46 = v48 + 1;
            }

            while (v45 < v44);
          }

          ++v43;
        }

        while (v43 != v41);
      }
    }
  }

  if (*(this + 16) >= 2u)
  {
    v51 = *(this + 84);
    if (v51)
    {
      v52 = *(this + 41);
      v6 = 0.5;
      do
      {
        v53 = *v52;
        if (v53 != 20000)
        {
          v7 = v53 * v8 + 0.5;
          *v52 = v7;
        }

        ++v52;
        --v51;
      }

      while (v51);
    }

    v54 = *(this + 88);
    if (v54)
    {
      v55 = *(this + 43);
      v6 = 0.5;
      do
      {
        v56 = *v55;
        if (v56 != 20000)
        {
          v7 = v56 * v8 + 0.5;
          *v55 = v7;
        }

        ++v55;
        --v54;
      }

      while (v54);
    }

    v57 = *(this + 94);
    if (v57)
    {
      v67 = 0;
      v68 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v67, this + 46, 0, v57);
      v58 = v68;
      if (v68)
      {
        v59 = v67;
        v60 = v68;
        do
        {
          v61 = *v59;
          if (v61 != 20000)
          {
            *v59 = (v61 * v8 + 0.5);
          }

          ++v59;
          --v60;
        }

        while (v60);
      }

      DgnPrimArray<unsigned short>::copyArraySlice(this + 46, &v67, 0, v58);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v67);
    }

    else
    {
      v62 = *(this + 140);
      if (v62 >= 2)
      {
        for (j = 1; j < v62; ++j)
        {
          if (*(*(this + 69) + 2 * j))
          {
            BigramData::rescaleScores(this + 45, j, v8);
            v62 = *(this + 140);
          }
        }
      }
    }
  }

  v64 = *(this + 44);
  if (v64)
  {
    v65 = *(this + 21);
    v6 = 0.5;
    do
    {
      v66 = *v65;
      if (v66 != 20000)
      {
        v7 = v66 * v8 + 0.5;
        *v65 = v7;
      }

      ++v65;
      --v64;
    }

    while (v64);
  }

  *(this + 8) = a2;
  WordLanguageModel::initializeScoreToProb(this, v6, v7);
}

void sub_2627A1800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void *TrigramData::rescaleScores(void *this, unsigned int a2, double a3)
{
  v3 = *(this[37] + 2 * a2);
  if (*(this[37] + 2 * a2))
  {
    if ((*(this[16] + 4 * (a2 >> 5)) >> a2))
    {
      v4 = *(this[35] + 4 * a2);
      v5 = (v4 + v3);
      if (v5 > v4)
      {
        v6 = v5 - v4;
        v7 = (this[39] + 2 * v4);
        do
        {
          v8 = *v7;
          if (v8 != 20000)
          {
            *v7 = (v8 * a3 + 0.5);
          }

          ++v7;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v9 = this[35];
      v10 = *(v9 + 4 * a2);
      if (v3 == 1)
      {
        v11 = v10 & 0xFFFF0000;
        if (*(v9 + 4 * a2) == 20000)
        {
          v12 = 20000;
        }

        else
        {
          v12 = (*(v9 + 4 * a2) * a3 + 0.5);
        }

        *(v9 + 4 * a2) = v12 | v11;
      }

      else
      {
        v13 = (v10 + v3);
        if (v13 > v10)
        {
          v14 = v13 - v10;
          v15 = (this[45] + 2 * v10);
          do
          {
            v16 = *v15;
            if (v16 != 20000)
            {
              *v15 = (v16 * a3 + 0.5);
            }

            ++v15;
            --v14;
          }

          while (v14);
        }
      }
    }
  }

  return this;
}

void *BigramData::rescaleScores(void *this, unsigned int a2, double a3)
{
  v3 = *(this[24] + 2 * a2);
  if (*(this[24] + 2 * a2))
  {
    if ((*(this[3] + 4 * (a2 >> 5)) >> a2))
    {
      v4 = *(this[22] + 4 * a2);
      v5 = (v4 + v3);
      if (v5 > v4)
      {
        v6 = v5 - v4;
        v7 = (this[26] + 2 * v4);
        do
        {
          v8 = *v7;
          if (v8 != 20000)
          {
            *v7 = (v8 * a3 + 0.5);
          }

          ++v7;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v9 = this[22];
      v10 = *(v9 + 4 * a2);
      if (v3 == 1)
      {
        v11 = v10 & 0xFFFF0000;
        if (*(v9 + 4 * a2) == 20000)
        {
          v12 = 20000;
        }

        else
        {
          v12 = (*(v9 + 4 * a2) * a3 + 0.5);
        }

        *(v9 + 4 * a2) = v12 | v11;
      }

      else
      {
        v13 = (v10 + v3);
        if (v13 > v10)
        {
          v14 = v13 - v10;
          v15 = (this[32] + 2 * v10);
          do
          {
            v16 = *v15;
            if (v16 != 20000)
            {
              *v15 = (v16 * a3 + 0.5);
            }

            ++v15;
            --v14;
          }

          while (v14);
        }
      }
    }
  }

  return this;
}

BOOL WordLanguageModel::hasRecentBuffer(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2 && ((*(*v2 + 120))(v2) & 1) != 0)
  {
    return 1;
  }

  return LanguageModel::hasRecentBuffer(this);
}

uint64_t WordLanguageModel::getRecentBufferLength(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    v3 = (*(*v2 + 128))(v2);
  }

  else
  {
    v3 = 0;
  }

  LODWORD(result) = LanguageModel::getRecentBufferLength(this);
  if (v3 <= result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

RecentBuffer **WordLanguageModel::addToRecent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 232);
  if (v6)
  {
    (*(*v6 + 136))(v6, a2, a3);
  }

  return LanguageModel::addToRecent(a1, a2, a3);
}

void WordLanguageModel::clearRecent(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    (*(*v2 + 144))(v2);
  }

  LanguageModel::clearRecent(this);
}

uint64_t WordLanguageModel::checkWordIdLmIdValidityAgreement(WordLanguageModel *this, unsigned int a2, int a3, __n128 a4)
{
  if (*(this + 32))
  {
    v7 = *(*(this + 15) + 4 * a2);
    if (a3)
    {
LABEL_3:
      if (v7 == -1)
      {
        a4.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9154, "lm/wordlm", 50, "%u %u", a4.n128_f64[0]);
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (*(this + 36))
    {
      v7 = *(*(this + 17) + 2 * a2);
      v8 = v7 == 0xFFFF;
    }

    else
    {
      v7 = *(*(this + 19) + a2);
      v8 = v7 == 255;
    }

    if (v8)
    {
      v7 = -1;
    }

    if (a3)
    {
      goto LABEL_3;
    }
  }

  if (v7 != -1)
  {
    a4.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9159, "lm/wordlm", 51, "%u %u", a4.n128_f64[0]);
  }

LABEL_14:
  if (*(this + 276) != 1)
  {
    goto LABEL_28;
  }

  if (*(this + 72))
  {
    v9 = *(*(this + 35) + 4 * a2);
    if (a3)
    {
LABEL_17:
      if (v9 == -1)
      {
        a4.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9169, "lm/wordlm", 63, "%u %u", a4.n128_f64[0]);
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (*(this + 76))
    {
      v9 = *(*(this + 37) + 2 * a2);
      v10 = v9 == 0xFFFF;
    }

    else
    {
      v9 = *(*(this + 39) + a2);
      v10 = v9 == 255;
    }

    if (v10)
    {
      v9 = -1;
    }

    if (a3)
    {
      goto LABEL_17;
    }
  }

  if (v9 != -1)
  {
    a4.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9175, "lm/wordlm", 64, "%u %u", a4.n128_f64[0]);
  }

LABEL_28:
  result = *(this + 29);
  if (result)
  {
    v12 = *(*result + 208);

    return v12(a4);
  }

  return result;
}

void WordLanguageModel::verifyUnigrams(WordLanguageModel *this, const char *a2)
{
  v2 = *(this + 26);
  if (v2 >= 2)
  {
    v5 = *(this + 14) - 1;
    for (i = 1; i < v2; ++i)
    {
      v7 = *(*(this + 21) + 2 * i);
      if (v7 != 20000 && v5 < v7)
      {
        LmIdWordName = WordLanguageModel::getLmIdWordName(this, i, 0);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9242, "lm/wordlm", 74, "%.500s %u %d %d %.500s", a2, i, v7, v5, LmIdWordName);
        v2 = *(this + 26);
      }
    }
  }
}

const char *WordLanguageModel::getLmIdWordName(WordLanguageModel *this, int a2, BOOL a3)
{
  WordId = WordLanguageModel::getWordId(this, a2, a3);
  v6 = *(this + 2);
  if (*(v6 + 388) > WordId && *(*(v6 + 104) + WordId))
  {
    return (*(v6 + 224) + *(*(v6 + 200) + 4 * WordId));
  }

  if (a2 == -1)
  {
    return "INVALID_LMID";
  }

  v8 = "END_CONTEXT";
  v9 = "UNKNOWN";
  if (!a2)
  {
    v9 = "ZERO_LMID";
  }

  v10 = *(this + 29);
  if (a2 == -2)
  {
    v9 = "NO_CONTEXT_LMID";
  }

  if (v10 != a2)
  {
    v8 = v9;
  }

  v11 = "STARTEND_CONTEXT";
  if (v10 != a2)
  {
    v11 = "START_CONTEXT";
  }

  if (*(this + 28) == a2)
  {
    return v11;
  }

  else
  {
    return v8;
  }
}

void WordLanguageModel::verifyLM(WordLanguageModel *this, uint64_t a2, const char *a3)
{
  if (a2)
  {
    v6 = *(*(this + 2) + 388);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = *(this + 2);
        v9 = i < *(v8 + 388) && *(*(v8 + 104) + i) != 0;
        (*(*this + 208))(this, i, v9);
      }
    }
  }

  WordLanguageModel::checkWordListLMAgreement(this);
  WordLanguageModel::verifyUnigrams(this, a3);
  if (*(this + 16) >= 2u)
  {
    v10 = *(this + 29);
    if (v10)
    {
      (*(*v10 + 216))(v10, a2, a3);
    }

    WordLanguageModel::verifyBackoffUnigrams(this, a3);
    WordLanguageModel::verifyBigrams(this, a3);
    if (*(this + 16) >= 3u)
    {
      WordLanguageModel::verifyTrigrams(this, a3);
      if (*(this + 16) >= 4u)
      {
        WordLanguageModel::verifyQuadgrams(this, a3);
      }
    }
  }

  if (*(this + 1))
  {

    MrecInitModule_sdpres_sdapi();
  }
}

void WordLanguageModel::verifyBackoffUnigrams(WordLanguageModel *this, const char *a2)
{
  if (*(this + 26) >= 2u)
  {
    v4 = *(this + 14);
    v5 = v4 - 1;
    v6 = 1;
    v21 = 1 - v4;
    while (1)
    {
      v7 = 328;
      if (!*(this + 84))
      {
        v7 = 168;
      }

      v8 = *(*(this + v7) + 2 * v6);
      v9 = *(*(this + 21) + 2 * v6);
      v10 = *(*(this + 43) + 2 * v6);
      v11 = v10;
      if (v8 != 20000 && v9 != 20000 && v10 != 20000)
      {
        goto LABEL_18;
      }

      if (v8 != 20000 || v9 != 20000)
      {
        break;
      }

LABEL_30:
      if (v11 != 20000 && (v21 > v11 || v5 < v11))
      {
        LmIdWordName = WordLanguageModel::getLmIdWordName(this, v6, 0);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9333, "lm/wordlm", 75, "%.500s %u %d %d %.500s", a2, v6, v11, v5, LmIdWordName);
      }

      if (++v6 >= *(this + 26))
      {
        return;
      }
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9312, "lm/wordlm", 72, "%.500s %u %d %d %d", a2, v6, v8, *(*(this + 21) + 2 * v6), v10);
LABEL_18:
    if (v8 != 20000 && v5 < v8)
    {
      v16 = WordLanguageModel::getLmIdWordName(this, v6, 0);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9320, "lm/wordlm", 73, "%.500s %u %d %d %.500s", a2, v6, v8, v5, v16);
    }

    if (v9 != 20000 && v5 < v9)
    {
      v18 = WordLanguageModel::getLmIdWordName(this, v6, 0);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9326, "lm/wordlm", 74, "%.500s %u %d %d %.500s", a2, v6, v9, v5, v18);
    }

    goto LABEL_30;
  }
}

void WordLanguageModel::verifyBigrams(WordLanguageModel *this, const char *a2)
{
  if (*(this + 140) >= 2u)
  {
    v35 = *(this + 14) - 1;
    v3 = (this + 360);
    for (i = 1; i < *(this + 140); ++i)
    {
      if (*(*(this + 69) + 2 * i))
      {
        if (*(*(this + 43) + 2 * i) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9353, "lm/wordlm", 81, "%.500s %u", a2, i);
        }

        v5 = i >> 5;
        if (!*v3)
        {
          v6 = 1 << i;
LABEL_11:
          v7 = i;
LABEL_12:
          v8 = *(*(this + 48) + 4 * v5);
          v9 = *(*(this + 69) + 2 * i);
          if ((v8 & v6) != 0)
          {
            v10 = *(this + 26);
            if (v10 > v9)
            {
              v11 = v9 + 1;
            }

            else
            {
              v11 = v10;
            }

            if (v11 >= 2)
            {
              for (j = 1; j != v11; ++j)
              {
                v13 = 328;
                if (!*(this + 84))
                {
                  v13 = 168;
                }

                v14 = *(*(this + v13) + 2 * j);
                if (v14 != 20000)
                {
                  v15 = *(*(this + 67) + 4 * i) + j - 1;
                  if (*(this + 94))
                  {
                    v15 = *(*(this + 73) + v15);
                    v16 = *(this + 46);
                  }

                  else
                  {
                    v16 = *(this + 71);
                  }

                  v17 = *(v16 + 2 * v15);
                  if (v17 != 20000 && *(*(this + 43) + 2 * i) + v14 != v17 && v35 < v17)
                  {
                    LmIdWordName = WordLanguageModel::getLmIdWordName(this, v7, 1);
                    v20 = WordLanguageModel::getLmIdWordName(this, j, 0);
                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9394, "lm/wordlm", 79, "%.500s %u %u %d %.500s %.500s", a2, v7, j, v17, LmIdWordName, v20);
                  }
                }
              }
            }
          }

          else
          {
            v21 = v9 - 1;
            while (1)
            {
              v22 = v21;
              if (!v21)
              {
                break;
              }

              SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex(v3, v7, v21);
              v21 = v22 - 1;
              if (*(this + 26) > SearchSuccIdForIndex)
              {
                goto LABEL_38;
              }
            }

            if (*(this + 26) <= BigramData::getSearchSuccIdForIndex(v3, v7, 0))
            {
              continue;
            }

LABEL_38:
            v24 = 0;
            do
            {
              v25 = BigramData::getSearchSuccIdForIndex(v3, v7, v24);
              v26 = 328;
              if (!*(this + 84))
              {
                v26 = 168;
              }

              if (*(*(this + v26) + 2 * v25) != 20000)
              {
                v27 = v25;
                SearchScoreForIndex = BigramData::getSearchScoreForIndex(v3, v7, v24);
                if (SearchScoreForIndex != 20000)
                {
                  v29 = SearchScoreForIndex;
                  v30 = 328;
                  if (!*(this + 84))
                  {
                    v30 = 168;
                  }

                  if (*(*(this + 43) + 2 * i) + *(*(this + v30) + 2 * v27) != SearchScoreForIndex && v35 < SearchScoreForIndex)
                  {
                    v32 = WordLanguageModel::getLmIdWordName(this, v7, 1);
                    v33 = WordLanguageModel::getLmIdWordName(this, v27, 0);
                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9449, "lm/wordlm", 80, "%.500s %u %u %d %.500s %.500s", a2, v7, v27, v29, v32, v33);
                  }
                }
              }

              ++v24;
            }

            while (v24 <= v22);
          }

          continue;
        }

        v6 = 1 << i;
        if ((*(*(this + 50) + 4 * v5) & (1 << i)) == 0)
        {
          goto LABEL_11;
        }

        v7 = i;
        if ((*(*(this + 52) + 4 * v5) & v6) != 0)
        {
          goto LABEL_12;
        }
      }
    }
  }
}

void WordLanguageModel::verifyTrigrams(WordLanguageModel *this, const char *a2)
{
  if (*(this + 200) >= 2u)
  {
    v38 = *(this + 14) - 1;
    v3 = *(this + 99);
    v4 = 1;
    do
    {
      if (*(v3 + 2 * v4))
      {
        if (*(*(this + 43) + 2 * v4) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9470, "lm/wordlm", 82, "%.500s %u", a2, v4);
          v3 = *(this + 99);
        }

        if (*(v3 + 2 * v4))
        {
          v5 = 0;
          v34 = v4;
          v35 = v4;
          v37 = v4;
          do
          {
            v6 = *(*(this + 101) + 4 * v4) + v5;
            v7 = v6 >> 5;
            if ((!*(this + 186) || (*(*(this + 111) + 4 * v7) & (1 << (*(*(this + 101) + 4 * v4) + v5))) == 0 || (*(*(this + 113) + 4 * v7) & (1 << (*(*(this + 101) + 4 * v4) + v5))) != 0) && *(*(this + 103) + 2 * v6) != -1)
            {
              v8 = *(*(this + 109) + 4 * v7);
              v9 = *(this + 130);
              if ((v8 >> (*(*(this + 101) + 4 * v4) + v5)))
              {
                if (*(v9 + 2 * v6))
                {
                  v10 = 1;
                  v11 = 1;
                  do
                  {
                    if (*(*(this + 21) + 2 * v11) != 20000)
                    {
                      v12 = (v10 + *(*(this + 128) + 4 * v6) - 1);
                      if (*(this + 196))
                      {
                        v12 = *(*(this + 134) + v12);
                        v13 = *(this + 97);
                      }

                      else
                      {
                        v13 = *(this + 132);
                      }

                      v14 = *(v13 + 2 * v12);
                      if (v14 != 20000 && v38 < v14)
                      {
                        v16 = *(*(this + 103) + 2 * v6);
                        LmIdWordName = WordLanguageModel::getLmIdWordName(this, v37, 1);
                        v18 = WordLanguageModel::getLmIdWordName(this, v16, 1);
                        v19 = WordLanguageModel::getLmIdWordName(this, v10, 0);
                        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9505, "lm/wordlm", 76, "%.500s %u %u %u %d %.500s %.500s %.500s", a2, v35, v16, v10, v14, LmIdWordName, v18, v19);
                        v9 = *(this + 130);
                      }
                    }

                    v10 = ++v11;
                  }

                  while (v11 <= *(v9 + 2 * v6));
                }
              }

              else if (*(v9 + 2 * v6))
              {
                v20 = 0;
                do
                {
                  SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex((this + 744), v6, v20);
                  if (*(*(this + 21) + 2 * SearchSuccIdForIndex) != 20000)
                  {
                    v22 = SearchSuccIdForIndex;
                    if (*(this + 192))
                    {
                      v23 = (*(this + 95) + 2 * *(*(this + 107) + v6));
                    }

                    else
                    {
                      v23 = (*(this + 105) + 2 * v6);
                    }

                    v24 = *(*(this + 103) + 2 * v6);
                    v25 = *(*(this + 43) + 2 * v24) + *v23;
                    v26 = 328;
                    if (!*(this + 84))
                    {
                      v26 = 168;
                    }

                    v27 = v25 + *(*(this + v26) + 2 * SearchSuccIdForIndex);
                    SearchScoreForIndex = TrigramData::getSearchScoreForIndex((this + 744), v6, v20);
                    if (v27 != SearchScoreForIndex && v38 < SearchScoreForIndex)
                    {
                      v30 = SearchScoreForIndex;
                      v31 = WordLanguageModel::getLmIdWordName(this, v37, 1);
                      v32 = WordLanguageModel::getLmIdWordName(this, v24, 1);
                      v33 = WordLanguageModel::getLmIdWordName(this, v22, 0);
                      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9539, "lm/wordlm", 77, "%.500s %u %u %u %d %.500s %.500s %.500s", a2, v34, v24, v22, v30, v31, v32, v33);
                    }
                  }

                  ++v20;
                }

                while (v20 < *(*(this + 130) + 2 * v6));
              }
            }

            ++v5;
            v3 = *(this + 99);
            v4 = v37;
          }

          while (v5 < *(v3 + 2 * v37));
        }
      }

      ++v4;
    }

    while (v4 < *(this + 200));
  }
}

void WordLanguageModel::verifyQuadgrams(WordLanguageModel *this, const char *a2)
{
  if (*(this + 322) >= 2u)
  {
    v3 = (*(this + 14) - 1);
    v4 = (this + 1232);
    v5 = *(this + 160);
    v37 = 1;
    while (1)
    {
      if (*(v5 + 2 * v37))
      {
        if (*(*(this + 43) + 2 * v37) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9561, "lm/wordlm", 83, "%.500s %u", a2, v37);
          v5 = *(this + 160);
        }

        if (*(v5 + 2 * v37))
        {
          break;
        }
      }

LABEL_36:
      if (++v37 >= *(this + 322))
      {
        return;
      }
    }

    v6 = 0;
    v7 = *v4;
    while (1)
    {
      v8 = (*(*(this + 162) + 4 * v37) + v6);
      v33 = *(*(this + 164) + 2 * v8);
      if (v7 && (*(*(this + 168) + 4 * (v8 >> 5)) & (1 << v8)) != 0)
      {
        if ((*(*(this + 170) + 4 * (v8 >> 5)) & (1 << v8)) != 0 && v33 != 0xFFFF)
        {
LABEL_17:
          if (*(*(this + 166) + 2 * v8))
          {
            v29 = v6;
            v10 = 0;
            v11 = v8 >> 5;
            v38 = 1 << (*(*(this + 162) + 4 * v37) + v6);
            v12 = *(*(this + 185) + 4 * v8);
            v31 = v8 >> 5;
            v32 = (*(*(this + 162) + 4 * v37) + v6);
            do
            {
              if (v7 && (*(*(this + 168) + 4 * v11) & v38) != 0)
              {
                v13 = *(*(this + 207) + 4 * v12);
                v14 = 440;
              }

              else
              {
                v14 = 264;
                v13 = v12;
              }

              v15 = 0;
              v35 = *(*(v4 + v14) + 2 * (v13 + v10));
              v34 = v10;
              if (!v7)
              {
                goto LABEL_26;
              }

LABEL_24:
              if ((*(*(this + 168) + 4 * v11) & v38) != 0)
              {
                v16 = *(*(this + 207) + 4 * v12);
                v17 = 504;
                goto LABEL_27;
              }

LABEL_26:
              while (1)
              {
                v17 = 280;
                v16 = v12;
LABEL_27:
                if (v15 >= *(*(v4 + v17) + 2 * (v16 + v10)))
                {
                  break;
                }

                Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(v4, v8, v10, v15);
                if (*(*(this + 21) + 2 * Quad3SuccIdForIndex) != 20000)
                {
                  v19 = Quad3SuccIdForIndex;
                  ScoreForIndex = QuadgramData::getScoreForIndex(v4, v8, v10, v15);
                  if (v3 < ScoreForIndex)
                  {
                    v21 = ScoreForIndex;
                    LmIdWordName = WordLanguageModel::getLmIdWordName(this, v37, 1);
                    v22 = WordLanguageModel::getLmIdWordName(this, v33, 1);
                    v23 = v4;
                    v24 = v3;
                    v25 = WordLanguageModel::getLmIdWordName(this, v35, 1);
                    v26 = WordLanguageModel::getLmIdWordName(this, v19, 0);
                    v28 = v25;
                    v3 = v24;
                    v4 = v23;
                    v27 = v22;
                    v10 = v34;
                    v11 = v31;
                    v8 = v32;
                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9602, "lm/wordlm", 78, "%.500s %u %u %u %u %d %.500s %.500s %.500s %.500s", a2, v37, v33, v35, v19, v21, LmIdWordName, v27, v28, v26);
                  }
                }

                ++v15;
                v7 = *(this + 308);
                v12 = *(*(this + 185) + 4 * v8);
                if (v7)
                {
                  goto LABEL_24;
                }
              }

              ++v10;
            }

            while (v10 < *(*(this + 166) + 2 * v8));
            v5 = *(this + 160);
            v6 = v29;
          }
        }
      }

      else if (v33 != 0xFFFF)
      {
        goto LABEL_17;
      }

      if (++v6 >= *(v5 + 2 * v37))
      {
        goto LABEL_36;
      }
    }
  }
}

uint64_t WordLanguageModel::getNumLoadedBigramBytes(WordLanguageModel *this)
{
  result = *(this + 29);
  if (result)
  {
    result = (*(*result + 240))(result);
  }

  if (*(this + 16) >= 2u)
  {
    if (*(this + 90))
    {
      result += 4 * (*(this + 168) + *(this + 164) + *(this + 172)) + *(this + 184) + 2 * (*(this + 180) + *(this + 176));
    }
  }

  return result;
}

uint64_t WordLanguageModel::getNumLoadedTrigramBytes(WordLanguageModel *this)
{
  result = *(this + 29);
  if (result)
  {
    result = (*(*result + 248))(result);
  }

  if (*(this + 16) >= 3u)
  {
    if (*(this + 186))
    {
      result += 4 * (*(this + 290) + *(this + 286) + *(this + 294)) + *(this + 306) + 2 * (*(this + 302) + *(this + 298));
    }
  }

  return result;
}

uint64_t WordLanguageModel::getNumLoadedQuadgramBytes(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    v3 = (*(*v2 + 256))(v2);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 16) >= 4u && *(this + 308))
  {
    v3 += QuadgramData::sizeLoadedData((this + 1232));
  }

  return v3;
}

uint64_t WordLanguageModel::getNumInterpolatedLms(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    return (*(*v2 + 568))();
  }

  else
  {
    return LanguageModel::getNumInterpolatedLms(this);
  }
}

uint64_t WordLanguageModel::setInterpolatedLmWeights(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1)
  {
    return (*(*v1 + 576))();
  }

  else
  {
    return LanguageModel::setInterpolatedLmWeights();
  }
}

uint64_t WordLanguageModel::getInterpolatedLmWeights(WordLanguageModel *this, unsigned int *a2)
{
  v3 = *(this + 29);
  if (v3)
  {
    return (*(*v3 + 584))(v3, a2);
  }

  else
  {
    return LanguageModel::getInterpolatedLmWeights(this, a2);
  }
}

uint64_t WordLanguageModel::maybeUncompactWordIdToLmIdArray(uint64_t this, int a2)
{
  if ((a2 - 255) > 0xFFFFFEFF)
  {
    return this;
  }

  v3 = this;
  v4 = *(this + 160);
  if (v4)
  {
    v5 = *(this + 148);
    if (v4 <= v5)
    {
      *(this + 144) = v4;
      this = *(this + 152);
    }

    else
    {
      DgnPrimArray<short>::reallocElts(this + 136, v4 - v5, 0);
      v6 = *(v3 + 160);
      *(v3 + 144) = v4;
      this = *(v3 + 152);
      if (!v6)
      {
        if (!this)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v4 = v6;
    }

    v7 = 0;
    v8 = *(v3 + 136);
    do
    {
      v9 = *(this + v7);
      if (v9 == 255)
      {
        LOWORD(v9) = -1;
      }

      *(v8 + 2 * v7++) = v9;
    }

    while (v4 != v7);
LABEL_11:
    this = MemChunkFree(this, 0);
    *(v3 + 152) = 0;
LABEL_12:
    *(v3 + 160) = 0;
  }

  if ((a2 - 0xFFFF) <= 0xFFFEFFFF)
  {
    v10 = *(v3 + 144);
    if (v10)
    {
      v11 = *(v3 + 132);
      if (v10 <= v11)
      {
        *(v3 + 128) = v10;
        this = *(v3 + 136);
      }

      else
      {
        DgnPrimArray<unsigned int>::reallocElts(v3 + 120, v10 - v11, 0);
        v12 = *(v3 + 144);
        *(v3 + 128) = v10;
        this = *(v3 + 136);
        if (!v12)
        {
          if (!this)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      v13 = 0;
      v14 = *(v3 + 120);
      do
      {
        v15 = *(this + 2 * v13);
        if (v15 == 0xFFFF)
        {
          v15 = -1;
        }

        *(v14 + 4 * v13++) = v15;
      }

      while (v13 < *(v3 + 144));
LABEL_24:
      this = MemChunkFree(this, 0);
      *(v3 + 136) = 0;
LABEL_25:
      *(v3 + 144) = 0;
    }
  }

  return this;
}