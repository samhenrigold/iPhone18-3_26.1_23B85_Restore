uint64_t SDWord_GetName(unint64_t a1, uint64_t a2, char *a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v15, "SDWord_GetName", 1, 1, 400);
  if (v15[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v9 = a3;
      }

      else
      {
        v9 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v8, "SDWord_GetName", a1, a2, v9, a4);
    }

    if (!a3 && a4)
    {
      throwBadLengthForNullPointer(a4, "DgnVerifyWritePtr");
    }

    v10 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v11 = *(ModelMgr::getVocOrThrow(v10, a1) + 48);
    v12 = a2 - 1;
    if ((a2 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", a2);
    }

    if (v12 >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", a2);
    }

    WordList::verifyVisible(v11, a2 - 1);
    v13 = sdUtilStrMove(a3, a4, (*(v11 + 28) + *(*(v11 + 25) + 4 * v12)));
  }

  else
  {
    v13 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v15);
  return v13;
}

void SDWord_GetInfo(unint64_t a1, uint64_t a2, uint64_t a3)
{
  SdapiInsurance::SdapiInsurance(v15, "SDWord_GetInfo", 1, 1, 402);
  if (v15[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v7 = a3;
      }

      else
      {
        v7 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx)\n", v6, "SDWord_GetInfo", a1, a2, v7);
    }

    if (!a3)
    {
      throwBadLengthForNullPointer(1, "DgnVerifyWritePtr");
    }

    v8 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v9 = *(ModelMgr::getVocOrThrow(v8, a1) + 48);
    v10 = a2 - 1;
    if ((a2 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", a2);
    }

    if (v10 >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", a2);
    }

    WordList::verifyVisible(v9, a2 - 1);
    *v14 = 0;
    WordList::getNumProns(v9, a2 - 1, &v14[1], v14);
    v11 = v14[0];
    *a3 = v14[1];
    *(a3 + 4) = v11;
    v12 = 1;
    if (((*(*(v9 + 624) + 4 * (v10 >> 5)) >> v10) & 1) == 0)
    {
      v12 = 2;
    }

    *(a3 + 8) = v12;
    *(a3 + 16) = WordList::getIncludingStateRefCount(v9, a2 - 1);
    *(a3 + 20) = WordList::getIncludingRuleRefCount(v9, a2 - 1);
    *(a3 + 24) = WordList::getIncludingLatticeRefCount(v9, a2 - 1);
    *(a3 + 28) = 0;
    *(a3 + 32) = WordList::getIncludingPrefilterResultRefCount(v9, a2 - 1);
    *(a3 + 36) = WordList::getIncludingSausageRefCount(v9, a2 - 1);
    v13 = *(v9 + 516);
    if (v13)
    {
      v13 = *(v9 + 528) > v10 && *(*(v9 + 520) + 4 * v10) != -1;
    }

    *(a3 + 40) = v13;
  }

  SdapiInsurance::~SdapiInsurance(v15);
}

void sub_262705650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2 == 2)
  {
    v15 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v15, v16);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v17 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v17);
  }

  __cxa_end_catch();
  JUMPOUT(0x262705634);
}

void SDWord_GetTagBits(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5)
{
  SdapiInsurance::SdapiInsurance(v16, "SDWord_GetTagBits", 1, 1, 403);
  if (v16[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v10, "SDWord_GetTagBits", a1, a2, a3, v11, a5);
    }

    if (!a4 && a5)
    {
      throwBadLengthForNullPointer(a5, "DgnVerifyWritePtr");
    }

    if ((a3 - 1) >= 2)
    {
      throwBadSdapiArgument("SDVocTagSetType", a3);
    }

    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v12 = *(ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, a1) + 48);
    v13 = a2 - 1;
    if ((a2 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", a2);
    }

    if (v13 >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", a2);
    }

    WordList::verifyVisible(v12, a2 - 1);
    if (a3 == 1)
    {
      if (!*(v12 + 552))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 399, "sdapi/sdword", 12, "%s", &errStr_sdapi_sdword_E_REQUIREDTAGS);
      }

      v14 = 552;
    }

    else
    {
      if (!*(v12 + 516))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 401, "sdapi/sdword", 3, "%s", &errStr_sdapi_sdword_E_OPTIONALTAGS);
      }

      v14 = 516;
    }

    v15 = (*(v12 + v14) + 7) >> 3;
    if (v15 != a5)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 403, "sdapi/sdword", 4, "%u %u", v15, a5);
    }

    if (a3 != 1 && (*(v12 + 528) <= v13 || *(*(v12 + 520) + 4 * v13) == -1))
    {
      if (a5)
      {
        bzero(a4, a5);
      }
    }

    else
    {
      WordList::getTagBitsAsBytes(v12, a2 - 1, a3 == 1, a4, a5);
    }
  }

  SdapiInsurance::~SdapiInsurance(v16);
}

void sub_26270596C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2 == 2)
  {
    v15 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v15, v16);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v17 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v17);
  }

  __cxa_end_catch();
  JUMPOUT(0x262705948);
}

void *WordList::getTagBitsAsBytes(void *this, unsigned int a2, int a3, unsigned __int8 *a4, unsigned int a5)
{
  if (a3)
  {
    return BitArray::getBitsFromRangeAsBytes(this + 72, a4, a5, *(this + 138) * a2, *(this + 138) * a2 + *(this + 138));
  }

  if (a5)
  {
    v5 = *(this[65] + 4 * a2);
    v6 = a5;
    do
    {
      *a4++ = *(this[67] + v5++);
      --v6;
    }

    while (v6);
  }

  return this;
}

BOOL SDWord_WordsHaveCommonPron(uint64_t *a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v55, "SDWord_WordsHaveCommonPron", 1, 1, 408);
  if (v55[97] != 1)
  {
    hasCommonProns = 0;
    goto LABEL_81;
  }

  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    v9 = a3;
    if (!gbShowCallPointerArguments)
    {
      v9 = 0;
    }

    xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, %llu, Masked:0x%016llx, %llu)\n", v7, "SDWord_WordsHaveCommonPron", v8, a2, v9, a4);
  }

  if (!a1 && a2)
  {
    throwBadLengthForNullPointer(a2, "DgnVerifyReadPtr");
  }

  LOBYTE(v53) = 0;
  if (!a3 && a4)
  {
    throwBadLengthForNullPointer(a4, "DgnVerifyReadPtr");
  }

  LOBYTE(v53) = 0;
  if (a2 && a4)
  {
    v53 = 0;
    v54 = 0;
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 533, "sdapi/sdword", 8, "%s", &errStr_sdapi_sdword_E_ZERO_WORDS);
    v53 = 0;
    v54 = 0;
    if (!a2)
    {
      goto LABEL_20;
    }
  }

  v51 = 0;
  HIDWORD(v54) = realloc_array(0, &v51, 4 * a2, 0, 0, 1) >> 2;
  v53 = v51;
LABEL_20:
  LODWORD(v54) = a2;
  v51 = 0;
  v52 = 0;
  if (a4)
  {
    v48 = 0;
    HIDWORD(v52) = realloc_array(0, &v48, 4 * a4, 0, 0, 1) >> 2;
    v51 = v48;
  }

  LODWORD(v52) = a4;
  v50[1] = 0;
  v50[0] = 0;
  v10 = ModelMgr::smpModelMgr;
  v48 = 0;
  v49 = 0;
  v11 = *a1;
  if (HIDWORD(*a1) || (v11 & 0xFFFF0000) != 0)
  {
    throwBadSdapiArgument("SDhVoc", *a1);
  }

  if (v11 - 1 >= 0x7B)
  {
    throwBadSdapiArgument("SDhVoc", v11);
  }

  v12 = v49;
  if (v49 == HIDWORD(v49))
  {
    DgnPrimArray<short>::reallocElts(&v48, 1, 1);
    v12 = v49;
  }

  v46 = a4;
  v13 = v48;
  *(v48 + v12) = v11;
  LODWORD(v49) = v12 + 1;
  VocOrThrow = ModelMgr::getVocOrThrow(v10, *v13);
  if (a2)
  {
    v15 = 0;
    do
    {
      v16 = &a1[2 * v15];
      v17 = *v16;
      v18 = v16[1];
      v19 = *v16 & 0xFFFF0000;
      if (HIDWORD(v17))
      {
        v20 = 0;
      }

      else
      {
        v20 = v19 == 0;
      }

      if (!v20)
      {
        throwBadSdapiArgument("SDhVoc", v17);
      }

      if (v17 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v17);
      }

      v21 = ModelMgr::getVocOrThrow(v10, v17);
      v22 = v49;
      if (!v49)
      {
        goto LABEL_44;
      }

      v23 = v48;
      v24 = 0xFFFFFFFFLL;
      while (1)
      {
        v25 = *v23++;
        if (v25 == v17)
        {
          break;
        }

        --v24;
        if (!--v22)
        {
          goto LABEL_44;
        }
      }

      if (!v24)
      {
LABEL_44:
        Voc::isPhonemeSetCompatibleWithVoc(VocOrThrow, v21, 1);
        v26 = v49;
        if (v49 == HIDWORD(v49))
        {
          DgnPrimArray<short>::reallocElts(&v48, 1, 1);
          v26 = v49;
        }

        *(v48 + v26) = v17;
        LODWORD(v49) = v26 + 1;
      }

      v27 = v18 - 1;
      if ((v18 - 1) >> 32)
      {
        throwBadSdapiArgument("SDhWord", v18);
      }

      if (v27 >= 0xFFFFF4)
      {
        throwBadSdapiArgument("SDhWord", v18);
      }

      v28 = *(v21 + 6);
      WordList::verifyVisible(v28, v27);
      *v50 = 0;
      WordList::getNumProns(v28, v27, &v50[1], v50);
      if (!(v50[1] + v50[0]))
      {
        goto LABEL_78;
      }

      v53[v15++] = v27 & 0xFFFFFF | (v17 << 25);
    }

    while (v15 != a2);
  }

  if (v46)
  {
    v29 = 0;
    while (1)
    {
      v30 = (a3 + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = *v30 & 0xFFFF0000;
      if (HIDWORD(v31))
      {
        v34 = 0;
      }

      else
      {
        v34 = v33 == 0;
      }

      if (!v34)
      {
        throwBadSdapiArgument("SDhVoc", v31);
      }

      if (v31 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v31);
      }

      v35 = ModelMgr::getVocOrThrow(v10, v31);
      v36 = v49;
      if (!v49)
      {
        goto LABEL_68;
      }

      v37 = v48;
      v38 = 0xFFFFFFFFLL;
      while (1)
      {
        v39 = *v37++;
        if (v39 == v31)
        {
          break;
        }

        --v38;
        if (!--v36)
        {
          goto LABEL_68;
        }
      }

      if (!v38)
      {
LABEL_68:
        Voc::isPhonemeSetCompatibleWithVoc(VocOrThrow, v35, 1);
        v40 = v49;
        if (v49 == HIDWORD(v49))
        {
          DgnPrimArray<short>::reallocElts(&v48, 1, 1);
          v40 = v49;
        }

        *(v48 + v40) = v31;
        LODWORD(v49) = v40 + 1;
      }

      v41 = v32 - 1;
      if ((v32 - 1) >> 32)
      {
        throwBadSdapiArgument("SDhWord", v32);
      }

      if (v41 >= 0xFFFFF4)
      {
        throwBadSdapiArgument("SDhWord", v32);
      }

      v42 = *(v35 + 6);
      WordList::verifyVisible(v42, v41);
      *v50 = 0;
      WordList::getNumProns(v42, v41, &v50[1], v50);
      if (!(v50[1] + v50[0]))
      {
        break;
      }

      *(v51 + v29++) = v41 & 0xFFFFFF | (v31 << 25);
      if (v29 == v46)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    hasCommonProns = 0;
    goto LABEL_79;
  }

LABEL_77:
  v43 = MemChunkAlloc(0xC0uLL, 0);
  PhonemeLattice::PhonemeLattice(v43, &v53);
  hasCommonProns = PhonemeLattice::hasCommonProns(v43, &v51, 0);
  DgnDelete<PhonemeLattice>(v43);
LABEL_79:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v51);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v53);
LABEL_81:
  SdapiInsurance::~SdapiInsurance(v55);
  return hasCommonProns;
}

void *DgnDelete<PhonemeLattice>(void *result)
{
  if (result)
  {
    v1 = result;
    (*(*result + 48))(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

BOOL SDWord_WordsHavePrefixPron(uint64_t *a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v55, "SDWord_WordsHavePrefixPron", 1, 1, 409);
  if (v55[97] != 1)
  {
    hasCommonProns = 0;
    goto LABEL_81;
  }

  if (gbShowCalls == 1)
  {
    if (gbShowCallPointerArguments)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    v9 = a3;
    if (!gbShowCallPointerArguments)
    {
      v9 = 0;
    }

    xlprintf("Entering sdapi call %.500s(Masked:0x%016llx, %llu, Masked:0x%016llx, %llu)\n", v7, "SDWord_WordsHavePrefixPron", v8, a2, v9, a4);
  }

  if (!a1 && a2)
  {
    throwBadLengthForNullPointer(a2, "DgnVerifyReadPtr");
  }

  LOBYTE(v53) = 0;
  if (!a3 && a4)
  {
    throwBadLengthForNullPointer(a4, "DgnVerifyReadPtr");
  }

  LOBYTE(v53) = 0;
  if (a2 && a4)
  {
    v53 = 0;
    v54 = 0;
  }

  else
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 619, "sdapi/sdword", 8, "%s", &errStr_sdapi_sdword_E_ZERO_WORDS);
    v53 = 0;
    v54 = 0;
    if (!a2)
    {
      goto LABEL_20;
    }
  }

  v51 = 0;
  HIDWORD(v54) = realloc_array(0, &v51, 4 * a2, 0, 0, 1) >> 2;
  v53 = v51;
LABEL_20:
  LODWORD(v54) = a2;
  v51 = 0;
  v52 = 0;
  if (a4)
  {
    v48 = 0;
    HIDWORD(v52) = realloc_array(0, &v48, 4 * a4, 0, 0, 1) >> 2;
    v51 = v48;
  }

  LODWORD(v52) = a4;
  v50[1] = 0;
  v50[0] = 0;
  v10 = ModelMgr::smpModelMgr;
  v48 = 0;
  v49 = 0;
  v11 = *a1;
  if (HIDWORD(*a1) || (v11 & 0xFFFF0000) != 0)
  {
    throwBadSdapiArgument("SDhVoc", *a1);
  }

  if (v11 - 1 >= 0x7B)
  {
    throwBadSdapiArgument("SDhVoc", v11);
  }

  v12 = v49;
  if (v49 == HIDWORD(v49))
  {
    DgnPrimArray<short>::reallocElts(&v48, 1, 1);
    v12 = v49;
  }

  v46 = a4;
  v13 = v48;
  *(v48 + v12) = v11;
  LODWORD(v49) = v12 + 1;
  VocOrThrow = ModelMgr::getVocOrThrow(v10, *v13);
  if (a2)
  {
    v15 = 0;
    do
    {
      v16 = &a1[2 * v15];
      v17 = *v16;
      v18 = v16[1];
      v19 = *v16 & 0xFFFF0000;
      if (HIDWORD(v17))
      {
        v20 = 0;
      }

      else
      {
        v20 = v19 == 0;
      }

      if (!v20)
      {
        throwBadSdapiArgument("SDhVoc", v17);
      }

      if (v17 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v17);
      }

      v21 = ModelMgr::getVocOrThrow(v10, v17);
      v22 = v49;
      if (!v49)
      {
        goto LABEL_44;
      }

      v23 = v48;
      v24 = 0xFFFFFFFFLL;
      while (1)
      {
        v25 = *v23++;
        if (v25 == v17)
        {
          break;
        }

        --v24;
        if (!--v22)
        {
          goto LABEL_44;
        }
      }

      if (!v24)
      {
LABEL_44:
        Voc::isPhonemeSetCompatibleWithVoc(VocOrThrow, v21, 1);
        v26 = v49;
        if (v49 == HIDWORD(v49))
        {
          DgnPrimArray<short>::reallocElts(&v48, 1, 1);
          v26 = v49;
        }

        *(v48 + v26) = v17;
        LODWORD(v49) = v26 + 1;
      }

      v27 = v18 - 1;
      if ((v18 - 1) >> 32)
      {
        throwBadSdapiArgument("SDhWord", v18);
      }

      if (v27 >= 0xFFFFF4)
      {
        throwBadSdapiArgument("SDhWord", v18);
      }

      v28 = *(v21 + 6);
      WordList::verifyVisible(v28, v27);
      *v50 = 0;
      WordList::getNumProns(v28, v27, &v50[1], v50);
      if (!(v50[1] + v50[0]))
      {
        goto LABEL_78;
      }

      v53[v15++] = v27 & 0xFFFFFF | (v17 << 25);
    }

    while (v15 != a2);
  }

  if (v46)
  {
    v29 = 0;
    while (1)
    {
      v30 = (a3 + 16 * v29);
      v31 = *v30;
      v32 = v30[1];
      v33 = *v30 & 0xFFFF0000;
      if (HIDWORD(v31))
      {
        v34 = 0;
      }

      else
      {
        v34 = v33 == 0;
      }

      if (!v34)
      {
        throwBadSdapiArgument("SDhVoc", v31);
      }

      if (v31 - 1 >= 0x7B)
      {
        throwBadSdapiArgument("SDhVoc", v31);
      }

      v35 = ModelMgr::getVocOrThrow(v10, v31);
      v36 = v49;
      if (!v49)
      {
        goto LABEL_68;
      }

      v37 = v48;
      v38 = 0xFFFFFFFFLL;
      while (1)
      {
        v39 = *v37++;
        if (v39 == v31)
        {
          break;
        }

        --v38;
        if (!--v36)
        {
          goto LABEL_68;
        }
      }

      if (!v38)
      {
LABEL_68:
        Voc::isPhonemeSetCompatibleWithVoc(VocOrThrow, v35, 1);
        v40 = v49;
        if (v49 == HIDWORD(v49))
        {
          DgnPrimArray<short>::reallocElts(&v48, 1, 1);
          v40 = v49;
        }

        *(v48 + v40) = v31;
        LODWORD(v49) = v40 + 1;
      }

      v41 = v32 - 1;
      if ((v32 - 1) >> 32)
      {
        throwBadSdapiArgument("SDhWord", v32);
      }

      if (v41 >= 0xFFFFF4)
      {
        throwBadSdapiArgument("SDhWord", v32);
      }

      v42 = *(v35 + 6);
      WordList::verifyVisible(v42, v41);
      *v50 = 0;
      WordList::getNumProns(v42, v41, &v50[1], v50);
      if (!(v50[1] + v50[0]))
      {
        break;
      }

      *(v51 + v29++) = v41 & 0xFFFFFF | (v31 << 25);
      if (v29 == v46)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    hasCommonProns = 0;
    goto LABEL_79;
  }

LABEL_77:
  v43 = MemChunkAlloc(0xC0uLL, 0);
  PhonemeLattice::PhonemeLattice(v43, &v53);
  hasCommonProns = PhonemeLattice::hasCommonProns(v43, &v51, 1);
  DgnDelete<PhonemeLattice>(v43);
LABEL_79:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v51);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v53);
LABEL_81:
  SdapiInsurance::~SdapiInsurance(v55);
  return hasCommonProns;
}

uint64_t SDWord_GetWordsWithCommonPron(unint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v24, "SDWord_GetWordsWithCommonPron", 1, 1, 410);
  if (v24[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v9 = a3;
      }

      else
      {
        v9 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v8, "SDWord_GetWordsWithCommonPron", a1, a2, v9, a4);
    }

    if (!a3 && a4)
    {
      throwBadLengthForNullPointer(a4, "DgnVerifyWritePtr");
    }

    v10 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v11 = *(ModelMgr::getVocOrThrow(v10, a1) + 48);
    if ((a2 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", a2);
    }

    if ((a2 - 1) >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", a2);
    }

    WordList::verifyVisible(v11, a2 - 1);
    *v23 = 0;
    WordList::getNumProns(v11, a2 - 1, &v23[1], v23);
    if (v23[1] + v23[0])
    {
      v21 = 0;
      v22 = 0;
      WordList::getWordsWithCommonPron(v11, a2 - 1, &v21);
      v19 = 0;
      *v20 = 0;
      if (v22)
      {
        v25 = 0;
        v20[1] = realloc_array(0, &v25, 8 * v22, 0, 0, 1) >> 3;
        v13 = v25;
        v19 = v25;
        v14 = v22;
        if (v22)
        {
          v15 = 0;
          LODWORD(v16) = v20[0];
          do
          {
            v17 = *(v21 + 4 * v15);
            if (v16 == v20[1])
            {
              DgnPrimArray<unsigned long long>::reallocElts(&v19, 1, 1);
              LODWORD(v16) = v20[0];
              v14 = v22;
            }

            v19[v16] = v17 + 1;
            v16 = (v16 + 1);
            v20[0] = v16;
            ++v15;
          }

          while (v15 < v14);
          v13 = v19;
          goto LABEL_30;
        }
      }

      else
      {
        v13 = 0;
      }

      v16 = v20[0];
LABEL_30:
      v12 = sdUtilItemMove(8, v13, v16, a3, a4);
      DgnIArray<Utterance *>::~DgnIArray(&v19);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
      goto LABEL_31;
    }
  }

  v12 = 0;
LABEL_31:
  SdapiInsurance::~SdapiInsurance(v24);
  return v12;
}

void sub_2627069CC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  if (a2 == 2)
  {
    v18 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v18, v19);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va1);
      _Unwind_Resume(a1);
    }

    v20 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v20);
  }

  __cxa_end_catch();
  JUMPOUT(0x2627068C0);
}

uint64_t SDWord_GetHumanReadableProns(unint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  SdapiInsurance::SdapiInsurance(v22, "SDWord_GetHumanReadableProns", 1, 1, 416);
  if (v22[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v9 = a3;
      }

      else
      {
        v9 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, <SDh %lld>, Masked:0x%016llx, %llu)\n", v8, "SDWord_GetHumanReadableProns", a1, a2, v9, a4);
    }

    v10 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v11 = *(ModelMgr::getVocOrThrow(v10, a1) + 48);
    if ((a2 - 1) >> 32)
    {
      throwBadSdapiArgument("SDhWord", a2);
    }

    if ((a2 - 1) >= 0xFFFFF4)
    {
      throwBadSdapiArgument("SDhWord", a2);
    }

    WordList::verifyVisible(v11, a2 - 1);
    v20 = 0;
    v21 = 0;
    WordList::lookupAll(v11, a2 - 1, &v20);
    DgnString::DgnString(&v18);
    if (v21)
    {
      v12 = 0;
      do
      {
        DgnString::DgnString(v17);
        WordList::getHumanReadablePron(v11, *(v20 + 4 * v12), v17);
        DgnString::operator+=(&v18, v17);
        DgnString::operator+=(&v18, 0);
        DgnString::~DgnString(v17);
        ++v12;
      }

      while (v12 < v21);
    }

    DgnString::operator+=(&v18, 0);
    if (v19)
    {
      v13 = v18;
    }

    else
    {
      v13 = &unk_26288A403;
    }

    if (v19)
    {
      v14 = (v19 - 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = sdUtilItemMove(1, v13, v14, a3, a4);
    DgnString::~DgnString(&v18);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v20);
  }

  else
  {
    v15 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v22);
  return v15;
}

uint64_t loggableFileObject(uint64_t *a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v3 = *a1;
  if (*a1)
  {
    v4 = (v3 + 48);
    if (*(v3 + 71) < 0)
    {
      v4 = *v4;
    }
  }

  else
  {
    v4 = "[dynamic object]";
  }

  v5 = strlen(v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v4, v5);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " (", 2);
  v7 = MEMORY[0x26672B080](v6, a1[4]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") : ", 4);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, " attribute '", 12);
  v9 = a1[1];
  v10 = __p;
  loggableUnicode(v9, __p);
  if (v15 < 0)
  {
    v10 = __p[0];
  }

  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "' : ", 4);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v16 = *MEMORY[0x277D82828];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x277D82828] + 24);
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::ostream::~ostream();
  return MEMORY[0x26672B160](&v20);
}

void sub_262706F50(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  std::ostringstream::~ostringstream(&a12, MEMORY[0x277D82828]);
  MEMORY[0x26672B160](va);
  _Unwind_Resume(a1);
}

uint64_t TFileObject::verify(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(a1 + 40))
  {
    loggableFileObject(a1);
    if (v40 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    tknPrintf("Error: %sBad attribute declaration, expected an object\n", v5, v6);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = 1;
    return v7 & 1;
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    a4 = 1;
  }

  if ((a4 & 1) == 0)
  {
    loggableFileObject(a1);
    v13 = v40 >= 0 ? __p : __p[0];
    tknPrintf("Error: %sObject has no attributes\n", v12, v13);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = a4 ^ 1;
  LOBYTE(v37[0]) = 0;
  std::vector<BOOL>::vector(__p, a3, v37);
  if (*a1)
  {
    v14 = *(*a1 + 72);
  }

  else
  {
    v14 = 0;
  }

  v34 = a1;
  if (v10)
  {
    while (1)
    {
      v15 = 0;
      if (a3)
      {
        break;
      }

LABEL_44:
      if (v15 == a3)
      {
LABEL_45:
        loggableFileObject(v10);
        v25 = v37;
        if (v38 < 0)
        {
          v25 = v37[0];
        }

        tknPrintf("Error: %sInvalid attribute\n", v24, v25);
        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        v7 = 1;
      }

      v10 = v10[2];
      if (!v10)
      {
        goto LABEL_51;
      }
    }

    v16 = v10[1];
    v17 = (a2 + 24);
    while (wcscmp(v16, *(v17 - 3)))
    {
      ++v15;
      v17 += 4;
      if (a3 == v15)
      {
        goto LABEL_45;
      }
    }

    if ((*(__p[0] + (v15 >> 6)) & (1 << v15)) != 0 && (*(v17 - 2) & 1) == 0)
    {
      loggableFileObject(v10);
      v19 = v37;
      if (v38 < 0)
      {
        v19 = v37[0];
      }

      tknPrintf("Error: %sRedefinition\n", v18, v19);
LABEL_40:
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      v7 = 1;
      goto LABEL_43;
    }

    if (v14)
    {
      if (v14 < *(v17 - 1))
      {
        loggableFileObject(v10);
        v21 = v37;
        if (v38 < 0)
        {
          v21 = v37[0];
        }

        tknPrintf("Error: %sAttribute not supported in file version %lld; file version must be at least %lld\n", v20, v21, v14, *(v17 - 1));
        goto LABEL_40;
      }

      if (v14 > *v17)
      {
        loggableFileObject(v10);
        v23 = v37;
        if (v38 < 0)
        {
          v23 = v37[0];
        }

        tknPrintf("Error: %sAttribute not supported in file version %lld; file version may not be greater than %lld\n", v22, v23, v14, *v17);
        goto LABEL_40;
      }
    }

LABEL_43:
    *(__p[0] + (v15 >> 6)) |= 1 << v15;
    goto LABEL_44;
  }

LABEL_51:
  if (a3)
  {
    v26 = 0;
    v27 = (a2 + 16);
    do
    {
      if (((*(__p[0] + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v26) & 1) == 0 && (*(v27 - 1) & 2) == 0 && (!v14 || v14 >= *v27 && v14 <= v27[1]))
      {
        loggableFileObject(v34);
        v28 = v38;
        v29 = v37[0];
        loggableUnicode(*(v27 - 2), v35);
        if (v28 >= 0)
        {
          v31 = v37;
        }

        else
        {
          v31 = v29;
        }

        if (v36 >= 0)
        {
          v32 = v35;
        }

        else
        {
          v32 = v35[0];
        }

        tknPrintf("Error: %sMissing declaration of '%s'\n", v30, v31, v32);
        if (v36 < 0)
        {
          operator delete(v35[0]);
        }

        if (v38 < 0)
        {
          operator delete(v37[0]);
        }

        v7 = 1;
      }

      ++v26;
      v27 += 4;
    }

    while (a3 != v26);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v7 & 1;
}

void sub_262707338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFileObject::verify(TFileObject *this, char a2, char a3)
{
  v3 = *(this + 10);
  if (v3)
  {
    if (v3 != 2 || (a2 & 1) != 0)
    {
      v8 = 0;
      if (**(this + 3) || (a3 & 1) != 0)
      {
        return v8;
      }

      loggableFileObject(this);
      if (v13 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      tknPrintf("Error: %sEmpty string not allowed here\n", v9, v10);
    }

    else
    {
      loggableFileObject(this);
      if (v13 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      tknPrintf("Error: %sRegExp not supported here\n", v4, v5);
    }
  }

  else
  {
    loggableFileObject(this);
    if (v13 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    tknPrintf("Error: %sBad attribute declaration, expected a string\n", v6, v7);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return 1;
}

void sub_2627074A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TFileObject::getAttribute(uint64_t a1, __int32 *a2)
{
  for (i = *(a1 + 24); i; i = *(i + 16))
  {
    if (!wcscmp(*(i + 8), a2))
    {
      break;
    }
  }

  return i;
}

void TFileObject::collectAttributes(uint64_t a1, __int32 *a2, uint64_t a3)
{
  for (i = *(a1 + 24); i; i = *(i + 16))
  {
    if (!wcscmp(*(i + 8), a2))
    {
      v7 = *(a3 + 8);
      v6 = *(a3 + 16);
      if (v7 >= v6)
      {
        v9 = (v7 - *a3) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
        }

        v10 = v6 - *a3;
        v11 = v10 >> 2;
        if (v10 >> 2 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(a3, v12);
        }

        *(8 * v9) = i;
        v8 = 8 * v9 + 8;
        v13 = *(a3 + 8) - *a3;
        v14 = (8 * v9 - v13);
        memcpy(v14, *a3, v13);
        v15 = *a3;
        *a3 = v14;
        *(a3 + 8) = v8;
        *(a3 + 16) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = i;
        v8 = (v7 + 1);
      }

      *(a3 + 8) = v8;
    }
  }
}

void TFileObjectParser::TFileObjectParser(TFileObjectParser *this, const TLocaleInfo **a2)
{
  TAllocator::TAllocator((this + 8), 2048);
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = 0;
  if (TInputStream::verifyVersion(a2, "ObjectFormatVersion", 1uLL, 1uLL, 1uLL))
  {
    std::string::basic_string[abi:ne200100]<0>(&v14, &byte_262899963);
    *__p = byte_287529580;
    if (SHIBYTE(v15) < 0)
    {
      std::string::__init_copy_ctor_external(&__p[8], v14, *(&v14 + 1));
    }

    else
    {
      *&__p[8] = v14;
      v13 = v15;
    }

    *__p = &unk_287528000;
    if (v13 >= 0)
    {
      v8 = &__p[8];
    }

    else
    {
      v8 = *&__p[8];
    }

    conditionalAssert(v8, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 247);
    *__p = byte_287529580;
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*&__p[8]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
    *exception = byte_287529580;
    v10 = (exception + 1);
    if ((__p[23] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v10, *__p, *&__p[8]);
    }

    else
    {
      v11 = *__p;
      exception[3] = *&__p[16];
      *&v10->__r_.__value_.__l.__data_ = v11;
    }

    *exception = &unk_287528000;
  }

  TLexerLexicon::TLexerLexicon(&v14, a2[22]);
  initLexicon(v4);
  TLexer::TLexer(__p, a2, 1uLL, &v14, 0);
  if (*(a2 + 39) >= 0)
  {
    v5 = a2 + 2;
  }

  else
  {
    v5 = a2[2];
  }

  MEMORY[0x26672AEC0](this + 48, v5);
  *(this + 9) = a2[12];
  Objects = TFileObjectParser::loadObjects(this, __p);
  v7 = TAllocator::allocate((this + 8), 48);
  *(v7 + 10) = 0;
  v7[3] = Objects;
  v7[4] = 0;
  *v7 = this;
  v7[1] = &dword_26288A404;
  v7[2] = 0;
  *this = v7;
  TLexer::~TLexer(__p);
  TLexerLexicon::~TLexerLexicon(&v14);
}

void sub_262707888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, void *a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      if (*(v19 + 71) < 0)
      {
        operator delete(*v20);
      }

      TAllocator::clear((v19 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

TRegExpCompiler *initLexicon(const void **a1)
{
  TLexerLexicon::addLiteral(a1, "=", 5);
  TLexerLexicon::addLiteral(a1, "{", 6);
  TLexerLexicon::addLiteral(a1, "}", 7);
  TLexerLexicon::addLiteral(a1, "(", 8);
  TLexerLexicon::addLiteral(a1, ")", 9);
  TLexerLexicon::addString(a1, 39, 3, 2);
  TLexerLexicon::addString(a1, 96, 4, 0);
  TLexerLexicon::addString(a1, 34, 2, 1);
  TLexerLexicon::addRegExp(a1, "[", 1);

  return TLexerLexicon::doneAdding(a1);
}

const TFileObject *TFileObjectParser::loadObjects(TFileObjectParser *this, TLexer *a2)
{
  if (*(a2 + 3) < ((*(a2 + 12) - *(a2 + 11)) >> 3))
  {
    v4 = 0;
    i = 0;
    while (1)
    {
      Object = TFileObjectParser::makeObject(this, a2, &dword_26288A404);
      if (i)
      {
        *(v4 + 2) = Object;
        v7 = Object;
        Object = v4;
        if (v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = *(Object + 2);
        for (i = Object; v7; v7 = *(v7 + 2))
        {
LABEL_5:
          Object = v7;
        }
      }

      v4 = Object;
      if (*(a2 + 3) >= ((*(a2 + 12) - *(a2 + 11)) >> 3))
      {
        return i;
      }
    }
  }

  return 0;
}

void *TFileObjectParser::TFileObjectParser(void *a1, const __int32 *a2, uint64_t a3, const TLocaleInfo *a4)
{
  TAllocator::TAllocator((a1 + 1), 2048);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  *a1 = 0;
  TLexerLexicon::TLexerLexicon(v12, a4);
  initLexicon(v7);
  TLexer::TLexer(v11, a2, 1, v12, 0);
  MEMORY[0x26672AEC0](a1 + 6, "[dynamic text object]");
  a1[9] = 1;
  Objects = TFileObjectParser::loadObjects(a1, v11);
  v9 = TAllocator::allocate((a1 + 1), 48);
  *(v9 + 10) = 0;
  v9[3] = Objects;
  v9[4] = 0;
  *v9 = a1;
  v9[1] = &dword_26288A404;
  v9[2] = 0;
  *a1 = v9;
  TLexer::~TLexer(v11);
  TLexerLexicon::~TLexerLexicon(v12);
  return a1;
}

void sub_262707BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TLexer::~TLexer(va);
  TLexerLexicon::~TLexerLexicon((v5 - 88));
  if (*(v3 + 71) < 0)
  {
    operator delete(*v4);
  }

  TAllocator::clear((v3 + 8));
  _Unwind_Resume(a1);
}

void TFileObjectParser::~TFileObjectParser(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  TAllocator::clear((this + 1));
}

__n128 TFileObjectParser::instantiateObject(TFileObjectParser *this, const TFileObject *a2, const TFileObject *a3)
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 10);
  if (!v6)
  {
    v23 = *(a2 + 3);
    if (!v23)
    {
      v7 = 0;
LABEL_57:
      v34 = TAllocator::allocate((this + 8), 48);
      v36 = *(a2 + 4);
      *(v34 + 10) = 0;
      v34[4] = v36;
      goto LABEL_58;
    }

    i = 0;
    v7 = 0;
    v25 = 0;
    while (!wcscmp(*(v23 + 8), "I"))
    {
LABEL_48:
      v23 = *(v23 + 16);
      if (!v23)
      {
        goto LABEL_57;
      }
    }

    TFileObjectParser::instantiateObject(this, v23, a3);
    if (v7)
    {
      i[2] = v26;
      v28 = v26;
      if (v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v28 = v26[2];
      v7 = v26;
      for (i = v26; v28; v28 = v28[2])
      {
LABEL_46:
        i = v28;
      }
    }

    v25 |= v27 & 1;
    goto LABEL_48;
  }

  if (v6 != 3)
  {
    v29 = TAllocator::allocate((this + 8), 48);
    *(v29 + 10) = *(a2 + 10);
    result = *a2;
    *v29 = *a2;
    v29[4] = *(a2 + 4);
    v29[2] = *(a2 + 2);
    v31 = *(a2 + 3);
    v29[2] = 0;
    v29[3] = v31;
    return result;
  }

  v7 = *(a2 + 3);
  v8 = *(a3 + 3);
  if (v8)
  {
    v9 = 0;
    do
    {
      v50 = __s2;
      v51 = 256;
      v54 = 0;
      v52 = 0;
      TBuffer<wchar_t>::insert(&v50, 0, "$", 2uLL);
      v10 = 0;
      v11 = *(v8 + 8);
        ;
      }

      TBuffer<wchar_t>::insert(&v50, v52, v11, v10 - 1);
      *v46 = 41;
      TBuffer<wchar_t>::insert(&v50, v52, v46, 1uLL);
      if (v52 >= v51)
      {
        if (v54)
        {
          *v46 = 0;
          TBuffer<wchar_t>::insert(&v50, v52--, v46, 1uLL);
        }

        else if (v51)
        {
          v50[v51 - 1] = 0;
        }
      }

      else
      {
        v50[v52] = 0;
      }

      if (!*(v8 + 40) && !wcscmp(__s2, v7))
      {
        v7 = *(v8 + 24);
        if (v7)
        {
          v19 = 0;
          v9 = 0;
          do
          {
            v20 = TAllocator::allocate((this + 8), 48);
            *(v20 + 10) = *(v7 + 10);
            *v20 = *v7;
            v20[4] = v7[4];
            v20[2] = v7[2];
            v21 = v7[3];
            v20[2] = 0;
            v20[3] = v21;
            if (v9)
            {
              v19[2] = v20;
              do
              {
                v22 = v20;
                v20 = v20[2];
              }

              while (v20);
              v20 = v22;
            }

            else
            {
              v9 = v20;
            }

            v7 = v7[2];
            v19 = v20;
          }

          while (v7);
          v17 = 0;
        }

        else
        {
          v17 = 0;
          v9 = 0;
        }
      }

      else
      {
        v13 = wcsstr(v7, __s2);
        if (v13)
        {
          if (!*(v8 + 40))
          {
            loggableFileObject(a2);
            v37 = v46[23];
            v38 = *v46;
            loggableFileObject(v8);
            v40 = v46;
            if (v37 < 0)
            {
              v40 = v38;
            }

            if (v49 >= 0)
            {
              v41 = __p;
            }

            else
            {
              v41 = __p[0];
            }

            tknPrintf("Error: %s%sCannot instantiate\n", v39, v40, v41);
            if (SHIBYTE(v49) < 0)
            {
              operator delete(__p[0]);
            }

            if ((v46[23] & 0x80000000) != 0)
            {
              operator delete(*v46);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
            *v46 = byte_287529580;
            if (SHIBYTE(v49) < 0)
            {
              std::string::__init_copy_ctor_external(&v46[8], __p[0], __p[1]);
            }

            else
            {
              *&v46[8] = *__p;
              v47 = v49;
            }

            *v46 = &unk_287526298;
            if (v47 >= 0)
            {
              v42 = &v46[8];
            }

            else
            {
              v42 = *&v46[8];
            }

            conditionalAssert(v42, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 366);
            *v46 = byte_287529580;
            if (SHIBYTE(v47) < 0)
            {
              operator delete(*&v46[8]);
            }

            if (SHIBYTE(v49) < 0)
            {
              operator delete(__p[0]);
            }

            exception = __cxa_allocate_exception(0x20uLL);
            std::string::basic_string[abi:ne200100]<0>(v46, &byte_262899963);
            *exception = byte_287529580;
            v44 = (exception + 1);
            if ((v46[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(v44, *v46, *&v46[8]);
            }

            else
            {
              v45 = *v46;
              exception[3] = *&v46[16];
              *&v44->__r_.__value_.__l.__data_ = v45;
            }

            *exception = &unk_287526298;
          }

          v14 = wcslen(__s2);
          wcscpy(__s2, v7);
          wcscpy((__s2 + v13 - v7), *(v8 + 24));
          wcscat(__s2, &v13[v14]);
          v15 = wcslen(__s2);
          if ((v15 + 1) >> 62)
          {
            v16 = -1;
          }

          else
          {
            v16 = 4 * (v15 + 1);
          }

          v7 = TAllocator::allocate((this + 8), v16);
          wcscpy(v7, __s2);
        }

        v17 = 1;
      }

      if (v54 == 1 && v50 != &v53 && v50 != 0)
      {
        MEMORY[0x26672B1B0]();
      }

      if (!v17)
      {
        break;
      }

      v8 = *(v8 + 16);
    }

    while (v8);
    if (v9)
    {
      v32 = TAllocator::allocate((this + 8), 48);
      v33 = *(a2 + 4);
      *(v32 + 10) = 0;
      v32[4] = v33;
      result = *a2;
      *v32 = *a2;
      v32[2] = 0;
      v32[3] = v9;
      return result;
    }
  }

  v34 = TAllocator::allocate((this + 8), 48);
  v35 = *(a2 + 4);
  *(v34 + 10) = *(a2 + 10);
  v34[4] = v35;
LABEL_58:
  result = *a2;
  *v34 = *a2;
  v34[2] = 0;
  v34[3] = v7;
  return result;
}

void sub_262708258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, void *a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      if (LOBYTE(STACK[0x468]) == 1 && a22 != a11 && a22 != 0)
      {
        MEMORY[0x26672B1B0]();
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

const TFileObject *TFileObjectParser::instantiateObject(TFileObjectParser *this, const TFileObject *a2)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  TFileObject::collectAttributes(a2, "I", &v22);
  v4 = v22;
  if (v22 != v23)
  {
    v5 = 0;
    i = 0;
    v7 = 0;
    while (1)
    {
      TFileObjectParser::instantiateObject(this, a2, v4[v5]);
      if ((v9 & 1) == 0)
      {
        loggableFileObject(a2);
        if (__p[23] >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = *__p;
        }

        tknPrintf("Error: %sNothing to instantiate\n", v12, v13);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        std::string::basic_string[abi:ne200100]<0>(v18, &byte_262899963);
        *__p = byte_287529580;
        if (SHIBYTE(v19) < 0)
        {
          std::string::__init_copy_ctor_external(&__p[8], v18[0], v18[1]);
        }

        else
        {
          *&__p[8] = *v18;
          v21 = v19;
        }

        *__p = &unk_287526298;
        if (v21 >= 0)
        {
          v14 = &__p[8];
        }

        else
        {
          v14 = *&__p[8];
        }

        conditionalAssert(v14, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 441);
        *__p = byte_287529580;
        if (SHIBYTE(v21) < 0)
        {
          operator delete(*&__p[8]);
        }

        if (SHIBYTE(v19) < 0)
        {
          operator delete(v18[0]);
        }

        exception = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *exception = byte_287529580;
        v16 = (exception + 1);
        if ((__p[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v16, *__p, *&__p[8]);
        }

        else
        {
          v17 = *__p;
          exception[3] = *&__p[16];
          *&v16->__r_.__value_.__l.__data_ = v17;
        }

        *exception = &unk_287526298;
      }

      if (v7)
      {
        *(i + 2) = v8;
        v10 = v8;
        if (v8)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v10 = *(v8 + 2);
        v7 = v8;
        for (i = v8; v10; v10 = *(v10 + 2))
        {
LABEL_6:
          i = v10;
        }
      }

      ++v5;
      v4 = v22;
      if (v5 >= v23 - v22)
      {
        goto LABEL_12;
      }
    }
  }

  v7 = a2;
LABEL_12:
  if (v4)
  {
    v23 = v4;
    operator delete(v4);
  }

  return v7;
}

void sub_2627085D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_6:
      if (a27)
      {
        operator delete(a27);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

const TFileObject *TFileObjectParser::makeObject(uint64_t a1, TLexer *a2, __int32 *a3)
{
  Token = nextToken(a2, a2);
  v8 = Token;
  v9 = *Token;
  if (*Token == 1)
  {
    v10 = wcslen(*(Token + 8));
    if ((v10 + 1) >> 62)
    {
      v11 = -1;
    }

    else
    {
      v11 = 4 * (v10 + 1);
    }

    a3 = TAllocator::allocate((a1 + 8), v11);
    wcscpy(a3, *(v8 + 8));
    v13 = nextToken(a2, v12);
    if (*v13 != 5)
    {
      loggableToken(a2, v13);
      if (v74[23] >= 0)
      {
        v54 = v74;
      }

      else
      {
        v54 = *v74;
      }

      tknPrintf("Error: %sSyntax error, missing '='\n", v53, v54);
      if ((v74[23] & 0x80000000) != 0)
      {
        operator delete(*v74);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
      *v74 = byte_287529580;
      if (SHIBYTE(v73) < 0)
      {
        std::string::__init_copy_ctor_external(&v74[8], __p[0], __p[1]);
      }

      else
      {
        *&v74[8] = *__p;
        v75 = v73;
      }

      *v74 = &unk_287527330;
      if (v75 >= 0)
      {
        v60 = &v74[8];
      }

      else
      {
        v60 = *&v74[8];
      }

      conditionalAssert(v60, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 488);
      *v74 = byte_287529580;
      if (SHIBYTE(v75) < 0)
      {
        operator delete(*&v74[8]);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(__p[0]);
      }

      exception = __cxa_allocate_exception(0x20uLL);
      std::string::basic_string[abi:ne200100]<0>(v74, &byte_262899963);
      *exception = byte_287529580;
      v62 = (exception + 1);
      if ((v74[23] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v62, *v74, *&v74[8]);
      }

      else
      {
        v69 = *v74;
        exception[3] = *&v74[16];
        *&v62->__r_.__value_.__l.__data_ = v69;
      }

      *exception = &unk_287527330;
    }

    v8 = nextToken(a2, v14);
    v9 = *v8;
  }

  if (v9 <= 3)
  {
    if (v9 == 2)
    {
      v34 = wcslen(*(v8 + 8));
      if ((v34 + 1) >> 62)
      {
        v35 = -1;
      }

      else
      {
        v35 = 4 * (v34 + 1);
      }

      v20 = TAllocator::allocate((a1 + 8), v35);
      wcscpy(v20, *(v8 + 8));
      v21 = TAllocator::allocate((a1 + 8), 48);
      v22 = v21;
      v23 = *(v8 + 16);
      v24 = 3;
    }

    else
    {
      if (v9 != 3)
      {
LABEL_86:
        loggableToken(a2, v8);
        if (v74[23] >= 0)
        {
          v56 = v74;
        }

        else
        {
          v56 = *v74;
        }

        tknPrintf("Error: %sSyntax error\n", v55, v56);
        if ((v74[23] & 0x80000000) != 0)
        {
          operator delete(*v74);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v74 = byte_287529580;
        if (SHIBYTE(v73) < 0)
        {
          std::string::__init_copy_ctor_external(&v74[8], __p[0], __p[1]);
        }

        else
        {
          *&v74[8] = *__p;
          v75 = v73;
        }

        *v74 = &unk_287527330;
        if (v75 >= 0)
        {
          v63 = &v74[8];
        }

        else
        {
          v63 = *&v74[8];
        }

        conditionalAssert(v63, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 571);
        *v74 = byte_287529580;
        if (SHIBYTE(v75) < 0)
        {
          operator delete(*&v74[8]);
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(__p[0]);
        }

        v64 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v74, &byte_262899963);
        *v64 = byte_287529580;
        v65 = (v64 + 1);
        if ((v74[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v65, *v74, *&v74[8]);
        }

        else
        {
          v70 = *v74;
          v64[3] = *&v74[16];
          *&v65->__r_.__value_.__l.__data_ = v70;
        }

        *v64 = &unk_287527330;
      }

      v18 = wcslen(*(v8 + 8));
      if ((v18 + 1) >> 62)
      {
        v19 = -1;
      }

      else
      {
        v19 = 4 * (v18 + 1);
      }

      v20 = TAllocator::allocate((a1 + 8), v19);
      wcscpy(v20, *(v8 + 8));
      v21 = TAllocator::allocate((a1 + 8), 48);
      v22 = v21;
      v23 = *(v8 + 16);
      v24 = 1;
    }

LABEL_38:
    *(v21 + 10) = v24;
    v21[3] = v20;
    v21[4] = v23;
    *v21 = a1;
    v21[1] = a3;
    v21[2] = 0;
    return v22;
  }

  if (v9 == 4)
  {
    v25 = wcslen(*(v8 + 8));
    if ((v25 + 1) >> 62)
    {
      v26 = -1;
    }

    else
    {
      v26 = 4 * (v25 + 1);
    }

    v20 = TAllocator::allocate((a1 + 8), v26);
    wcscpy(v20, *(v8 + 8));
    v21 = TAllocator::allocate((a1 + 8), 48);
    v22 = v21;
    v23 = *(v8 + 16);
    v24 = 2;
    goto LABEL_38;
  }

  if (v9 == 8)
  {
    v27 = nextToken(a2, v7);
    v22 = 0;
    for (i = 0; ; i = v32)
    {
      if (*v27 == 9)
      {
        if (!v22)
        {
          loggableToken(a2, v27);
          if (v74[23] >= 0)
          {
            v58 = v74;
          }

          else
          {
            v58 = *v74;
          }

          tknPrintf("Error: %sAssignment list is empty\n", v57, v58);
          if ((v74[23] & 0x80000000) != 0)
          {
            operator delete(*v74);
          }

          std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
          *v74 = byte_287529580;
          if (SHIBYTE(v73) < 0)
          {
            std::string::__init_copy_ctor_external(&v74[8], __p[0], __p[1]);
          }

          else
          {
            *&v74[8] = *__p;
            v75 = v73;
          }

          *v74 = &unk_287527330;
          if (v75 >= 0)
          {
            v66 = &v74[8];
          }

          else
          {
            v66 = *&v74[8];
          }

          conditionalAssert(v66, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 536);
          *v74 = byte_287529580;
          if (SHIBYTE(v75) < 0)
          {
            operator delete(*&v74[8]);
          }

          if (SHIBYTE(v73) < 0)
          {
            operator delete(__p[0]);
          }

          v67 = __cxa_allocate_exception(0x20uLL);
          std::string::basic_string[abi:ne200100]<0>(v74, &byte_262899963);
          *v67 = byte_287529580;
          v68 = (v67 + 1);
          if ((v74[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v68, *v74, *&v74[8]);
          }

          else
          {
            v71 = *v74;
            v67[3] = *&v74[16];
            *&v68->__r_.__value_.__l.__data_ = v71;
          }

          *v67 = &unk_287527330;
        }

        if (!*(v22 + 10))
        {
          goto LABEL_54;
        }

        return v22;
      }

      if (*v27 == 1)
      {
        loggableToken(a2, v27);
        v45 = v74[23];
        v46 = *v74;
        loggableUnicode(*(v27 + 8), __p);
        if (v45 >= 0)
        {
          v48 = v74;
        }

        else
        {
          v48 = v46;
        }

        if (v73 >= 0)
        {
          v49 = __p;
        }

        else
        {
          v49 = __p[0];
        }

        tknPrintf("Error: %sUnexpected attribute name '%s' in assignment list\n", v47, v48, v49);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(__p[0]);
        }

        if ((v74[23] & 0x80000000) != 0)
        {
          operator delete(*v74);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, &byte_262899963);
        *v74 = byte_287529580;
        if (SHIBYTE(v73) < 0)
        {
          std::string::__init_copy_ctor_external(&v74[8], __p[0], __p[1]);
        }

        else
        {
          *&v74[8] = *__p;
          v75 = v73;
        }

        *v74 = &unk_287527330;
        if (v75 >= 0)
        {
          v50 = &v74[8];
        }

        else
        {
          v50 = *&v74[8];
        }

        conditionalAssert(v50, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/shared/objectparser.cpp", 524);
        *v74 = byte_287529580;
        if (SHIBYTE(v75) < 0)
        {
          operator delete(*&v74[8]);
        }

        if (SHIBYTE(v73) < 0)
        {
          operator delete(__p[0]);
        }

        v51 = __cxa_allocate_exception(0x20uLL);
        std::string::basic_string[abi:ne200100]<0>(v74, &byte_262899963);
        *v51 = byte_287529580;
        v52 = (v51 + 1);
        if ((v74[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v52, *v74, *&v74[8]);
        }

        else
        {
          v59 = *v74;
          v51[3] = *&v74[16];
          *&v52->__r_.__value_.__l.__data_ = v59;
        }

        *v51 = &unk_287527330;
      }

      v29 = *(a2 + 3);
      if (v29)
      {
        *(a2 + 3) = v29 - 1;
      }

      Object = TFileObjectParser::makeObject(a1, a2, a3);
      v32 = Object;
      if (v22)
      {
        *(i + 2) = Object;
        v33 = Object;
        v32 = i;
        if (!Object)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v33 = *(Object + 2);
        v22 = Object;
        if (!v33)
        {
          goto LABEL_31;
        }
      }

      do
      {
        v32 = v33;
        v33 = *(v33 + 2);
      }

      while (v33);
LABEL_31:
      v27 = nextToken(a2, v31);
    }
  }

  if (v9 != 6)
  {
    goto LABEL_86;
  }

  v15 = nextToken(a2, v7);
  if (*v15 == 7)
  {
    v16 = v15;
    v17 = 0;
    goto LABEL_53;
  }

  v37 = 0;
  v17 = 0;
  do
  {
    v38 = *(a2 + 3);
    if (v38)
    {
      *(a2 + 3) = v38 - 1;
    }

    v39 = TFileObjectParser::makeObject(a1, a2, &dword_26288A404);
    v41 = v39;
    if (v17)
    {
      *(v37 + 2) = v39;
      v42 = v39;
      v41 = v37;
      if (!v39)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v42 = *(v39 + 2);
      v17 = v39;
      if (!v42)
      {
        goto LABEL_49;
      }
    }

    do
    {
      v41 = v42;
      v42 = *(v42 + 2);
    }

    while (v42);
LABEL_49:
    v43 = nextToken(a2, v40);
    v37 = v41;
  }

  while (*v43 != 7);
  v16 = v43;
LABEL_53:
  v22 = TAllocator::allocate((a1 + 8), 48);
  v44 = v16[2];
  *(v22 + 10) = 0;
  v22[3] = v17;
  v22[4] = v44;
  *v22 = a1;
  v22[1] = a3;
  v22[2] = 0;
LABEL_54:

  return TFileObjectParser::instantiateObject(a1, v22);
}

void sub_2627090E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
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

void sub_262709588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, void *a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27)
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

void MrecInitModule_gpuscsm_pel(void)
{
  if (!gParDiagnosticGPUMaxFramesInBatch)
  {
    v4[1] = v0;
    v4[2] = v1;
    v2 = MemChunkAlloc(0x38uLL, 0);
    v4[0] = 0x8000000001;
    v3 = IntGlobalParamBase::IntGlobalParamBase(v2, "DiagnosticGPUMaxFramesInBatch", &byte_262899963, &byte_262899963, 32, v4, 0);
    *v3 = &unk_287528130;
    gParDiagnosticGPUMaxFramesInBatch = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDiagnosticGPUMaxFramesInBatch);
  }
}

void ChannelStats::~ChannelStats(ChannelStats *this)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 88);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
}

void ChannelStats::printSize(ChannelStats *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 162);
  if (v93)
  {
    v13 = v92;
  }

  else
  {
    v13 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288A4A8, a3, &unk_26288A4A8, v13);
  DgnString::~DgnString(&v92);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288A4A8);
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
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 163);
  if (v93)
  {
    v19 = v92;
  }

  else
  {
    v19 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v19, v15, v15, 0);
  DgnString::~DgnString(&v92);
  *a4 += v15;
  *a5 += v15;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v21 = v92;
  }

  else
  {
    v21 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v21, 4, 4, 0);
  DgnString::~DgnString(&v92);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v23 = v92;
  }

  else
  {
    v23 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v22, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v23, 4, 4, 0);
  DgnString::~DgnString(&v92);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v25 = v92;
  }

  else
  {
    v25 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v25, 2, 2, 0);
  DgnString::~DgnString(&v92);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v27 = v92;
  }

  else
  {
    v27 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v27, 2, 2, 0);
  DgnString::~DgnString(&v92);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v29 = v92;
  }

  else
  {
    v29 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v29, 2, 2, 0);
  DgnString::~DgnString(&v92);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v31 = v92;
  }

  else
  {
    v31 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v92);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v33 = v92;
  }

  else
  {
    v33 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, (a3 + 1), &unk_26288A4A8, (34 - a3), (34 - a3), v33, 4, 4, 0);
  v91 = a3;
  DgnString::~DgnString(&v92);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v34 = 12;
  }

  else
  {
    v34 = 16;
  }

  v35 = *(this + 10);
  v36 = *(this + 11);
  v37 = v36 >= v35;
  v38 = v36 - v35;
  if (v37)
  {
    if (v35 > 0)
    {
      v39 = (v35 - 1) + v34 + 1;
    }

    else
    {
      v39 = v34;
    }

    v34 = v39 + v38;
    v35 = 0;
  }

  else
  {
    v39 = v34;
  }

  v40 = v35;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v42 = v92;
  }

  else
  {
    v42 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v16, &unk_26288A4A8, v17, v17, v42, v34, v39, v40);
  DgnString::~DgnString(&v92);
  *a4 += v34;
  *a5 += v39;
  *a6 += v40;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 12;
  }

  else
  {
    v43 = 16;
  }

  v44 = *(this + 14);
  v45 = *(this + 15);
  v37 = v45 >= v44;
  v46 = v45 - v44;
  if (v37)
  {
    if (v44 > 0)
    {
      v47 = (v44 - 1) + v43 + 1;
    }

    else
    {
      v47 = v43;
    }

    v43 = v47 + v46;
    v44 = 0;
  }

  else
  {
    v47 = v43;
  }

  v48 = v44;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v50 = v92;
  }

  else
  {
    v50 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, v16, &unk_26288A4A8, v17, v17, v50, v43, v47, v48);
  DgnString::~DgnString(&v92);
  *a4 += v43;
  *a5 += v47;
  *a6 += v48;
  v51 = sizeObject<DgnPrimArray<unsigned int>>(this + 64, 0);
  v52 = sizeObject<DgnPrimArray<unsigned int>>(this + 64, 1);
  v92 = 0;
  v93 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v92);
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v54 = v92;
  }

  else
  {
    v54 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v53, v16, &unk_26288A4A8, v17, v17, v54, v51, v52, 0);
  DgnString::~DgnString(&v92);
  *a4 += v51;
  *a5 += v52;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v56 = v92;
  }

  else
  {
    v56 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v16, &unk_26288A4A8, v17, v17, v56, 2, 2, 0);
  DgnString::~DgnString(&v92);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v58 = v92;
  }

  else
  {
    v58 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v57, v16, &unk_26288A4A8, v17, v17, v58, 2, 2, 0);
  DgnString::~DgnString(&v92);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v60 = v92;
  }

  else
  {
    v60 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v59, v16, &unk_26288A4A8, v17, v17, v60, 2, 2, 0);
  DgnString::~DgnString(&v92);
  *a4 += 2;
  *a5 += 2;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v61 = 12;
  }

  else
  {
    v61 = 16;
  }

  v62 = *(this + 24);
  v63 = *(this + 25);
  v37 = v63 >= v62;
  v64 = v63 - v62;
  if (v37)
  {
    if (v62 > 0)
    {
      v65 = (v62 - 1) + v61 + 1;
    }

    else
    {
      v65 = v61;
    }

    v61 = v65 + v64;
    v62 = 0;
  }

  else
  {
    v65 = v61;
  }

  v66 = v62;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v68 = v92;
  }

  else
  {
    v68 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v67, v16, &unk_26288A4A8, v17, v17, v68, v61, v65, v66);
  DgnString::~DgnString(&v92);
  *a4 += v61;
  *a5 += v65;
  *a6 += v66;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v69 = 12;
  }

  else
  {
    v69 = 16;
  }

  v70 = *(this + 28);
  v71 = *(this + 29);
  v37 = v71 >= v70;
  v72 = v71 - v70;
  if (v37)
  {
    if (v70 > 0)
    {
      v73 = (v70 - 1) + v69 + 1;
    }

    else
    {
      v73 = v69;
    }

    v69 = v73 + v72;
    v70 = 0;
  }

  else
  {
    v73 = v69;
  }

  v74 = v70;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v76 = v92;
  }

  else
  {
    v76 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v75, v16, &unk_26288A4A8, v17, v17, v76, v69, v73, v74);
  DgnString::~DgnString(&v92);
  *a4 += v69;
  *a5 += v73;
  *a6 += v74;
  v77 = sizeObject<DgnPrimArray<unsigned int>>(this + 120, 0);
  v78 = sizeObject<DgnPrimArray<unsigned int>>(this + 120, 1);
  v92 = 0;
  v93 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v92);
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v80 = v92;
  }

  else
  {
    v80 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v16, &unk_26288A4A8, v17, v17, v80, v77, v78, 0);
  DgnString::~DgnString(&v92);
  *a4 += v77;
  *a5 += v78;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v82 = v92;
  }

  else
  {
    v82 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v16, &unk_26288A4A8, v17, v17, v82, 2, 2, 0);
  DgnString::~DgnString(&v92);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v84 = v92;
  }

  else
  {
    v84 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v83, v16, &unk_26288A4A8, v17, v17, v84, 2, 2, 0);
  DgnString::~DgnString(&v92);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v86 = v92;
  }

  else
  {
    v86 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v85, v16, &unk_26288A4A8, v17, v17, v86, 2, 2, 0);
  DgnString::~DgnString(&v92);
  *a4 += 2;
  *a5 += 2;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 165);
  if (v93)
  {
    v88 = v92;
  }

  else
  {
    v88 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v87, v16, &unk_26288A4A8, v17, v17, v88, 4, 4, 0);
  DgnString::~DgnString(&v92);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v92, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/chanstat.cpp", 166);
  if (v93)
  {
    v90 = v92;
  }

  else
  {
    v90 = &unk_26288A4A8;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v91, &unk_26288A4A8, (35 - v91), (35 - v91), v90, *a4, *a5, *a6);
  DgnString::~DgnString(&v92);
}

void sub_26270A294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void ChannelStats::saveChannelStats(ChannelStats *this, DFile *a2, DFileChecksums *a3, int a4, _BOOL8 a5)
{
  if (a4)
  {

    ChannelStats::saveCST(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x10u, a5, "MRCST!?", 19, 4);
    v10 = 0;
    writeObject(v8, this + 2, &v10);
    writeObject(v8, this + 3, &v10);
    writeObject(v8, this + 8, &v10);
    writeObject(v8, this + 9, &v10);
    writeObject(v8, this + 10, &v10);
    writeObject(v8, this + 6, &v10);
    writeObject(v8, this + 7, &v10);
    writeObject<unsigned char>(v8, this + 32, &v10);
    writeObject<unsigned char>(v8, this + 48, &v10);
    writeObject<DgnPrimArray<unsigned int>>(v8, this + 64, &v10);
    writeObject(v8, this + 40, &v10);
    writeObject(v8, this + 41, &v10);
    writeObject(v8, this + 42, &v10);
    writeObject<unsigned char>(v8, this + 88, &v10);
    writeObject<unsigned char>(v8, this + 104, &v10);
    writeObject<DgnPrimArray<unsigned int>>(v8, this + 120, &v10);
    writeObject(v8, this + 68, &v10);
    writeObject(v8, this + 69, &v10);
    writeObject(v8, this + 70, &v10);
    writeObject(v8, this + 36, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 16, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void ChannelStats::saveCST(ChannelStats *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v38);
  DgnTextFileWriter::openDgnTextFileWriter(v38, a2, 17, a3);
  v36 = 0;
  v37 = 0;
  DgnTextFile::legalDgnTextFileVersions(v38, sCST_Versions, &v36);
  DgnTextFileWriter::setFileType(v38, "ChannelStatisticsText", (v36 + 8 * (v37 - 1)));
  v6 = *(this + 7);
  if (*(this + 24) != v6 && *(this + 28) != v6 && *(this + 68) == -1 && *(this + 32) != v6 && *(this + 69) == -1 && *(this + 70) == -1 && *(this + 36) == -1)
  {
    v8 = 0;
    v7 = 4;
  }

  else
  {
    v7 = 5;
    v8 = 1;
  }

  v34 = 0;
  v35 = 0;
  v32 = 0;
  v9 = realloc_array(0, &v32, 4 * v7, 0, 0, 1);
  v33 = 0;
  v34 = v32;
  LODWORD(v35) = v7;
  HIDWORD(v35) = v9 >> 2;
  v32 = 0;
  v30 = 0;
  HIDWORD(v33) = realloc_array(0, &v30, 16 * v7, 0, 0, 1) >> 4;
  v32 = v30;
  v10 = v33;
  if (v7 >= v33)
  {
    if (v7 > v33)
    {
      v12 = v7 - v33;
      v13 = 16 * v33;
      do
      {
        DgnString::DgnString((v32 + v13));
        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  else if (v33 > v7)
  {
    v11 = 16 * v33 - 16;
    do
    {
      --v10;
      DgnString::~DgnString(v32 + v11);
      v11 -= 16;
    }

    while (v10 > v7);
  }

  LODWORD(v33) = v7;
  *v34 = 0;
  DgnString::operator=(v32, "TableName");
  v34[1] = 3;
  DgnString::operator=((v32 + 16), "RowIndex");
  v34[2] = 3;
  DgnString::operator=((v32 + 32), "ColumnIndex");
  v34[3] = 1;
  DgnString::operator=((v32 + 48), "TableEntry");
  if (v8)
  {
    v34[4] = 1;
    DgnString::operator=((v32 + 64), "BackupTableEntry");
  }

  DgnTextFileWriter::setLineFieldFormat(v38, &v34, &v32);
  DgnTextFileWriter::setHeaderFieldUnsigned(v38, "NumberOfSpectralWarpChoices", *(this + 2));
  DgnTextFileWriter::setHeaderFieldUnsigned(v38, "ChannelNormalizationFeatureDim", *(this + 7));
  DgnString::DgnString(&v30);
  if (*(this + 8) == 1)
  {
    v14 = "NoMeansNorm";
  }

  else
  {
    v14 = "ChannelMeansSubtraction";
  }

  DgnString::operator=(&v30, v14);
  if (v31)
  {
    v15 = v30;
  }

  else
  {
    v15 = &unk_26288A4A8;
  }

  DgnTextFileWriter::setHeaderField(v38, "ChannelMeansNormalizationType", v15);
  if (*(this + 9) == 1)
  {
    v16 = "NoVarianceNorm";
  }

  else
  {
    v16 = "ChannelVarianceNorm";
  }

  DgnString::operator=(&v30, v16);
  if (v31)
  {
    v17 = v30;
  }

  else
  {
    v17 = &unk_26288A4A8;
  }

  DgnTextFileWriter::setHeaderField(v38, "ChannelVarianceNormalizationType", v17);
  v18 = *(this + 10);
  v19 = "InterpolatedCDFNorm";
  if (v18 == 2)
  {
    v19 = "SmoothedCDFNorm";
  }

  if (v18 == 1)
  {
    v20 = "NoCDFNorm";
  }

  else
  {
    v20 = v19;
  }

  DgnString::operator=(&v30, v20);
  if (v31)
  {
    v21 = v30;
  }

  else
  {
    v21 = &unk_26288A4A8;
  }

  DgnTextFileWriter::setHeaderField(v38, "CDFNormalizationType", v21);
  if (*(this + 10) != 1)
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v38, "CDFNormalizationSum", *(this + 6));
  }

  DgnTextFileWriter::setHeaderFieldBool(v38, "HasBackupChannelStatistics", v8);
  DgnTextFileWriter::setLineFieldValue(v38, 0, "UttDetBackgroundLevel");
  DgnTextFileWriter::setLineFieldUnsignedValue(v38, 1u, 0);
  DgnTextFileWriter::setLineFieldUnsignedValue(v38, 2u, 0);
  DgnTextFileWriter::setLineFieldIntegerValue(v38, 3u, *(this + 41));
  if (v8)
  {
    DgnTextFileWriter::setLineFieldIntegerValue(v38, 4u, *(this + 69));
  }

  DgnTextFileWriter::writeNextLine(v38);
  DgnTextFileWriter::setLineFieldValue(v38, 0, "UttDetSpeechLevel");
  DgnTextFileWriter::setLineFieldUnsignedValue(v38, 1u, 0);
  DgnTextFileWriter::setLineFieldUnsignedValue(v38, 2u, 0);
  DgnTextFileWriter::setLineFieldIntegerValue(v38, 3u, *(this + 42));
  if (v8)
  {
    DgnTextFileWriter::setLineFieldIntegerValue(v38, 4u, *(this + 70));
  }

  DgnTextFileWriter::writeNextLine(v38);
  if (*(this + 2))
  {
    DgnTextFileWriter::setLineFieldValue(v38, 0, "ChosenSpectralWarpIndex");
    DgnTextFileWriter::setLineFieldUnsignedValue(v38, 1u, 0);
    DgnTextFileWriter::setLineFieldUnsignedValue(v38, 2u, 0);
    DgnTextFileWriter::setLineFieldIntegerValue(v38, 3u, *(this + 3));
    if (v8)
    {
      DgnTextFileWriter::setLineFieldIntegerValue(v38, 4u, *(this + 36));
    }

    DgnTextFileWriter::writeNextLine(v38);
  }

  DgnTextFileWriter::setLineFieldValue(v38, 0, "ChannelSilenceLevel");
  DgnTextFileWriter::setLineFieldUnsignedValue(v38, 1u, 0);
  DgnTextFileWriter::setLineFieldUnsignedValue(v38, 2u, 0);
  DgnTextFileWriter::setLineFieldIntegerValue(v38, 3u, *(this + 40));
  if (v8)
  {
    if (*(this + 69) == -1)
    {
      v22 = -1;
    }

    else
    {
      v22 = *(this + 68);
    }

    DgnTextFileWriter::setLineFieldIntegerValue(v38, 4u, v22);
  }

  DgnTextFileWriter::writeNextLine(v38);
  if (*(this + 8) == 2 && *(this + 7))
  {
    v23 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v38, 0, "ChannelMeans");
      DgnTextFileWriter::setLineFieldUnsignedValue(v38, 1u, 0);
      DgnTextFileWriter::setLineFieldUnsignedValue(v38, 2u, v23);
      DgnTextFileWriter::setLineFieldIntegerValue(v38, 3u, *(*(this + 4) + v23));
      if (v8)
      {
        if (*(this + 24) == *(this + 7))
        {
          v24 = *(*(this + 11) + v23);
        }

        else
        {
          v24 = -1;
        }

        DgnTextFileWriter::setLineFieldIntegerValue(v38, 4u, v24);
      }

      DgnTextFileWriter::writeNextLine(v38);
      ++v23;
    }

    while (v23 < *(this + 7));
  }

  if (*(this + 9) == 2 && *(this + 7))
  {
    v25 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v38, 0, "ChannelVariance");
      DgnTextFileWriter::setLineFieldUnsignedValue(v38, 1u, 0);
      DgnTextFileWriter::setLineFieldUnsignedValue(v38, 2u, v25);
      DgnTextFileWriter::setLineFieldIntegerValue(v38, 3u, *(*(this + 6) + v25));
      if (v8)
      {
        if (*(this + 28) == *(this + 7))
        {
          v26 = *(*(this + 13) + v25);
        }

        else
        {
          v26 = -1;
        }

        DgnTextFileWriter::setLineFieldIntegerValue(v38, 4u, v26);
      }

      DgnTextFileWriter::writeNextLine(v38);
      ++v25;
    }

    while (v25 < *(this + 7));
  }

  if (*(this + 10) != 1 && *(this + 7))
  {
    v27 = 0;
    do
    {
      for (i = 0; i != 256; ++i)
      {
        DgnTextFileWriter::setLineFieldValue(v38, 0, "CDFNormalizationHistogram");
        DgnTextFileWriter::setLineFieldUnsignedValue(v38, 1u, v27);
        DgnTextFileWriter::setLineFieldUnsignedValue(v38, 2u, i);
        DgnTextFileWriter::setLineFieldUnsignedValue(v38, 3u, *(*(*(this + 8) + 16 * v27) + 4 * i));
        if (v8)
        {
          if (*(this + 32) == *(this + 7))
          {
            v29 = *(*(*(this + 15) + 16 * v27) + 4 * i);
          }

          else
          {
            v29 = -1;
          }

          DgnTextFileWriter::setLineFieldIntegerValue(v38, 4u, v29);
        }

        DgnTextFileWriter::writeNextLine(v38);
      }

      ++v27;
    }

    while (v27 < *(this + 7));
  }

  DgnString::~DgnString(&v30);
  DgnArray<DgnString>::releaseAll(&v32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
  DgnIArray<Utterance *>::~DgnIArray(&v36);
  DgnTextFileWriter::~DgnTextFileWriter(v38);
}

void sub_26270ACB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
  DgnArray<DgnString>::releaseAll(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  DgnTextFileWriter::~DgnTextFileWriter(va3);
  _Unwind_Resume(a1);
}

uint64_t FstHmmNet::scoreNetInternal(FstCore **this, int a2, int a3, uint64_t a4)
{
  FstCore::doFrameEmbedded(this[17], a4, 0);
  *(this + 26) = FstCore::getNActiveStates(this[17]);
  BestExitScore = FstCore::getBestExitScore(this[17]);
  *(this + 54) = BestExitScore;
  if (BestExitScore != 20000)
  {
    v6 = *this[9];
    *(v6 + 8) = BestExitScore;
    *v6 = **this[7];
  }

  result = FstCore::getBestScoreMaybeUpdateFstNode(this[17]);
  if (result != 20000)
  {
    v8 = this[1];
    if (*(v8 + 56) >= result)
    {

      return BestData::newOrTiedBestNode(v8 + 192, result, (this + 156), 0);
    }
  }

  return result;
}

uint64_t FstHmmNet::FstHmmNet(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7, uint64_t *a8, unsigned int a9, __int16 a10, PelScorer *a11, int a12, __int128 *a13, uint64_t a14, unsigned __int16 a15)
{
  HmmNet::HmmNet(a1, a2, a3, a4, a5, a6);
  *v18 = &unk_2875230D8;
  DgnString::DgnString((v18 + 15));
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x100000001;
  *(a1 + 152) = 1310740000;
  *(a1 + 156) = 0x100000001;
  *(a1 + 164) = 1310740000;
  *(a1 + 168) = 0;
  *(a1 + 176) = -65536;
  *(a1 + 180) = 0;
  *(a1 + 184) = -1;
  *(a1 + 188) = 0;
  ArcGraphOrThrow = ArcGraphMgr::getArcGraphOrThrow(ArcGraphMgr::smpArcGraphMgr, a15);
  Recognizer = FstCore::makeRecognizer(a13, a10, a14, a7, ArcGraphOrThrow);
  *(a1 + 136) = Recognizer;
  if (!a8)
  {
    RequiredVirtMapSize = FstCore::getRequiredVirtMapSize(Recognizer);
    if (RequiredVirtMapSize)
    {
      a8 = MemChunkAlloc(0x40uLL, 0);
      VirtMap::VirtMap(a8);
      v22 = RequiredVirtMapSize >> 6;
      v23 = *(a8 + 14);
      if (RequiredVirtMapSize >> 6 >= v23)
      {
        v24 = v22 + 1;
        *(a8 + 14) = v24;
        v25 = *(a8 + 3);
        if (v25 <= v22)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a8, v24 - v25, 0);
        }

        v26 = *(a8 + 2);
        if (v26 <= v24)
        {
          if (v26 <= v22)
          {
            v28 = (RequiredVirtMapSize >> 6) - v26 + 1;
            v29 = (*a8 + 16 * v26 + 8);
            do
            {
              *(v29 - 1) = 0;
              *v29 = 0;
              v29 += 4;
              --v28;
            }

            while (v28);
          }
        }

        else if (v26 > v24)
        {
          v27 = 16 * v26 - 16;
          do
          {
            --v26;
            DgnPrimFixArray<double>::~DgnPrimFixArray(*a8 + v27);
            v27 -= 16;
          }

          while (v26 > v24);
        }

        *(a8 + 2) = v24;
        v30 = *(a8 + 14);
        v31 = *(a8 + 7);
        v23 = v30;
        if (v30 > v31)
        {
          DgnPrimArray<unsigned long long>::reallocElts((a8 + 2), v30 - v31, 0);
          v23 = *(a8 + 14);
        }

        *(a8 + 6) = v30;
        *(a8 + 13) = 0;
      }

      bzero(a8[2], 8 * v23);
      *(a8 + 60) = 1;
      *(a1 + 188) = 1;
    }

    else
    {
      a8 = 0;
    }
  }

  FstCore::beginTopRecSyncRecog(*(a1 + 136), a7, a8);
  FstCore::beginTopRecPassSyncRecogEmbedded(*(a1 + 136), a9, -16, a11, a12);
  return a1;
}

{
  return FstHmmNet::FstHmmNet(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

void sub_26270B048(_Unwind_Exception *a1)
{
  BitArray::~BitArray(v2);
  HmmNet::~HmmNet(v1);
  _Unwind_Resume(a1);
}

void FstHmmNet::~FstHmmNet(FstCore **this)
{
  *this = &unk_2875230D8;
  FstCore::endTopRecPassSyncRecogEmbedded(this[17]);
  FstCore::endTopRecSyncRecog(this[17]);
  if (*(this + 188) == 1)
  {
    DgnDelete<VirtMap>(v2);
  }

  DgnDelete<FstCore>(this[17]);
  this[17] = 0;
  BitArray::~BitArray((this + 15));

  HmmNet::~HmmNet(this);
}

{
  FstHmmNet::~FstHmmNet(this);

  JUMPOUT(0x26672B1B0);
}

SearchItf **DgnDelete<FstCore>(SearchItf **result)
{
  if (result)
  {
    FstCore::~FstCore(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t FstHmmNet::unpackFstSequence(uint64_t this, Node **a2, Node **a3)
{
  *(this + 164) = 1310740000;
  *(this + 168) = 0;
  *(this + 176) = -65536;
  *(this + 180) = 1;
  *a3 = (this + 156);
  *a2 = (this + 156);
  return this;
}

uint64_t FstHmmNet::seedInPortFst(uint64_t this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(this + 56) + 8 * a2);
  if (*(v4 + 8) > a3)
  {
    v5 = this;
    v6 = *(this + 114);
    *(v4 + 8) = a3;
    *v4 = a4;
    if ((v6 & 1) == 0)
    {
      *(v4 + 4) = 0;
    }

    *(this + 156) = a4;
    *(this + 160) = *(v4 + 4);
    this = FstCore::seedTheory(*(this + 136), a3, *(this + 184), a4);
    *(v5 + 112) = 1;
  }

  return this;
}

void MrecInitModule_wavepac_sigproc(void)
{
  if (!gParDebugWavePacketLossDetection)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugWavePacketLossDetection", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugWavePacketLossDetection = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugWavePacketLossDetection);
  }
}

void MulTable::~MulTable(MulTable *this)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 88);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 72);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 40);
  DgnPrimFixArray<double>::~DgnPrimFixArray(this + 24);
}

void MulTable::printSize(MulTable *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 135);
  if (v54)
  {
    v13 = v53;
  }

  else
  {
    v13 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288A4D0, a3, &unk_26288A4D0, v13);
  DgnString::~DgnString(&v53);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288A4D0);
  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137);
  if (v54)
  {
    v16 = v53;
  }

  else
  {
    v16 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v15, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v16, 4, 4, 0);
  DgnString::~DgnString(&v53);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137);
  if (v54)
  {
    v18 = v53;
  }

  else
  {
    v18 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v18, 8, 8, 0);
  DgnString::~DgnString(&v53);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137);
  if (v54)
  {
    v20 = v53;
  }

  else
  {
    v20 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v20, 4, 4, 0);
  DgnString::~DgnString(&v53);
  *a4 += 4;
  *a5 += 4;
  v21 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v21 = 8;
  }

  v22 = *(this + 8);
  if (v22 <= 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = (2 * v22);
  }

  v24 = v21 + v23;
  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137);
  if (v54)
  {
    v26 = v53;
  }

  else
  {
    v26 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v26, v24, v24, 0);
  DgnString::~DgnString(&v53);
  *a4 += v24;
  *a5 += v24;
  v27 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 8;
  }

  v28 = *(this + 20);
  if (v28 > 0)
  {
    v29 = (v28 - 1) + v27 + 1;
  }

  else
  {
    v29 = v27;
  }

  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137);
  if (v54)
  {
    v31 = v53;
  }

  else
  {
    v31 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v31, v29, v29, 0);
  DgnString::~DgnString(&v53);
  *a4 += v29;
  *a5 += v29;
  v32 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v32 = 8;
  }

  v33 = *(this + 24);
  if (v33 <= 0)
  {
    v34 = 0;
  }

  else
  {
    v34 = (2 * v33);
  }

  v35 = v32 + v34;
  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 137);
  if (v54)
  {
    v37 = v53;
  }

  else
  {
    v37 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v37, v35, v35, 0);
  DgnString::~DgnString(&v53);
  *a4 += v35;
  *a5 += v35;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v38 = 4;
  }

  else
  {
    v38 = 8;
  }

  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 138);
  if (v54)
  {
    v40 = v53;
  }

  else
  {
    v40 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v39, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v40, v38, v38, 0);
  DgnString::~DgnString(&v53);
  *a4 += v38;
  *a5 += v38;
  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 140);
  if (v54)
  {
    v42 = v53;
  }

  else
  {
    v42 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v42, 4, 4, 0);
  DgnString::~DgnString(&v53);
  *a4 += 4;
  *a5 += 4;
  v43 = 12;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v43 = 8;
  }

  v44 = *(this + 12);
  if (v44 <= 0)
  {
    v45 = 0;
  }

  else
  {
    v45 = (2 * v44);
  }

  v46 = v43 + v45;
  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 142);
  if (v54)
  {
    v48 = v53;
  }

  else
  {
    v48 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v47, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v48, v46, v46, 0);
  DgnString::~DgnString(&v53);
  *a4 += v46;
  *a5 += v46;
  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 144);
  if (v54)
  {
    v50 = v53;
  }

  else
  {
    v50 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v49, (a3 + 1), &unk_26288A4D0, (34 - a3), (34 - a3), v50, 1, 1, 0);
  DgnString::~DgnString(&v53);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v53, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/pel/multable.cpp", 145);
  if (v54)
  {
    v52 = v53;
  }

  else
  {
    v52 = &unk_26288A4D0;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, a3, &unk_26288A4D0, (35 - a3), (35 - a3), v52, *a4, *a5, *a6);
  DgnString::~DgnString(&v53);
}

void sub_26270B964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MulTable::saveMulTable(MulTable *this, DFile *a2, DFileChecksums *a3, int a4, _BOOL8 a5)
{
  if (a4)
  {

    MulTable::saveMulTableText(this, a2, a5);
  }

  else
  {
    v8 = OpenAndWriteMrecHeader(a2, 0x2Du, a5, "MRMULT!?", 14, 1);
    v10 = 0;
    writeObject(v8, this, &v10);
    writeObject(v8, this + 13, &v10);
    writeObject(v8, this + 1, &v10);
    writeObject<short>(v8, this + 24, &v10);
    writeObject<unsigned char>(v8, this + 72, &v10);
    writeObject<unsigned short>(v8, this + 88, &v10);
    writeObjectChecksum(v8, &v10);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 45, v10);
    DgnDelete<DgnStream>(v8);
  }
}

void MulTable::saveMulTableText(MulTable *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v25);
  DgnTextFileWriter::openDgnTextFileWriter(v25, a2, 46, a3);
  v23 = 0;
  v24 = 0;
  DgnTextFile::legalDgnTextFileVersions(v25, sMTT_Versions, &v23);
  DgnTextFileWriter::setFileType(v25, "MulTableText", (v23 + 8 * (v24 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "NumberOfMulTables", *this);
  DgnTextFileWriter::setHeaderFieldReal(v25, "MulScale", *(this + 13));
  DgnTextFileWriter::setHeaderFieldUnsigned(v25, "MaxScaledDev", *(this + 1));
  v22 = 0;
  v18 = 0;
  HIDWORD(v22) = realloc_array(0, &v18, 0x40uLL, 0, 0, 1) >> 4;
  *v21 = v18;
  v6 = v22;
  if (v22 <= 4)
  {
    if (v22 != 4)
    {
      v8 = v22 + 1;
      v9 = 16 * v22;
      do
      {
        DgnString::DgnString((*v21 + v9));
        v9 += 16;
      }

      while (v8++ != 4);
    }
  }

  else if (v22 >= 5)
  {
    v7 = 16 * v22 - 16;
    do
    {
      --v6;
      DgnString::~DgnString(*v21 + v7);
      v7 -= 16;
    }

    while (v6 > 4);
  }

  LODWORD(v22) = 4;
  v26 = 0;
  v11 = realloc_array(0, &v26, 0x10uLL, 0, 0, 1);
  v18 = v26;
  v19 = 4;
  v20 = v11 >> 2;
  DgnString::operator=(*v21, "Type");
  *v18 = 0;
  DgnString::operator=((*v21 + 16), "UnsVal1");
  v18[1] = 3;
  DgnString::operator=((*v21 + 32), "IntVal1");
  v18[2] = 1;
  DgnString::operator=((*v21 + 48), "IntVal2");
  v18[3] = 1;
  DgnTextFileWriter::setLineFieldFormat(v25, &v18, v21);
  if (*this)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = 2 * v13 + 2;
      v13 += 512;
      for (i = 255; i != -256; --i)
      {
        DgnTextFileWriter::setLineFieldValue(v25, 0, "MulTable");
        DgnTextFileWriter::setLineFieldUnsignedValue(v25, 1u, v12);
        DgnTextFileWriter::setLineFieldIntegerValue(v25, 2u, i);
        DgnTextFileWriter::setLineFieldIntegerValue(v25, 3u, *(*(this + 3) + v14));
        DgnTextFileWriter::writeNextLine(v25);
        v14 += 2;
      }

      ++v12;
    }

    while (v12 < *this);
  }

  if (*(this + 1))
  {
    v16 = 1;
    do
    {
      DgnTextFileWriter::setLineFieldValue(v25, 0, "ScaledDevToMulTableMap");
      DgnTextFileWriter::setLineFieldUnsignedValue(v25, 1u, v16);
      v17 = *(*(this + 9) + v16 - 1) - 1;
      DgnTextFileWriter::setLineFieldIntegerValue(v25, 2u, v17);
      DgnTextFileWriter::setLineFieldIntegerValue(v25, 3u, *(*(this + 11) + 2 * v17));
      DgnTextFileWriter::writeNextLine(v25);
      ++v16;
    }

    while (v16 <= *(this + 1));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v18);
  DgnArray<DgnString>::releaseAll(v21);
  DgnIArray<Utterance *>::~DgnIArray(&v23);
  DgnTextFileWriter::~DgnTextFileWriter(v25);
}

void sub_26270BEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnTextFileWriter::~DgnTextFileWriter(va2);
  _Unwind_Resume(a1);
}

uint64_t *DgnPrimFixArray<unsigned char>::copyArraySlice(uint64_t *result, void *a2, int a3, unsigned int a4)
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
    result = MemChunkAlloc(a4, 0);
    *v7 = result;
    *(v7 + 8) = a4;
  }

  v8 = 0;
  do
  {
    *(*v7 + v8) = *(*a2 + (a3 + v8));
    ++v8;
  }

  while (a4 != v8);
  return result;
}

uint64_t tknLogString(uint64_t result)
{
  if (s_logCallBack)
  {
    return s_logCallBack(result);
  }

  return result;
}

TEnvManager *makeDataManager(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    verifyStringArgument(*(a1 + 8), 0, 0, "Bad data spec file-or-dir pointer");
    if (*a1 != 3)
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

uint64_t handleException(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    tknPrintf("Error: %s\n", a2, a1);
  }

  tknPrintf("Error: Caught exception in %s, TPError = %llu\n", a2, a2, a3);
  return a3;
}

void partial apply()
{
  TReentrancyHandler::TReentrancyHandler(&v6, "TPApi_Initialize");
  TLocaleHandler::TLocaleHandler(&v5);
  MrecInitModule_sdpres_sdapi();
  if (g_bInitialized != 1)
  {
    SDApi_CheckVersion(24, 407, sSDInitCheckSizesInternal);
    operator new();
  }

  conditionalAssert("Already initialized", "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/dll/tpmisc.cpp", 130);
  exception = __cxa_allocate_exception(0x28uLL);
  std::string::basic_string[abi:ne200100]<0>(&v3, "Already initialized");
  *exception = byte_287529580;
  v1 = (exception + 1);
  if (SHIBYTE(v4) < 0)
  {
    std::string::__init_copy_ctor_external(v1, v3, *(&v3 + 1));
  }

  else
  {
    v2 = v3;
    exception[3] = v4;
    *&v1->__r_.__value_.__l.__data_ = v2;
  }

  *exception = &unk_2875282E0;
  exception[4] = 5;
}

void sub_26270C2E8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, locale_t a20)
{
  MEMORY[0x26672B1B0](v21, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  MEMORY[0x26672B1B0](v20, 0x10F3C403D9D550DLL);
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

      handleException(v25, "TPApi_Initialize", *(v24 + 4));
      __cxa_end_catch();
      goto LABEL_27;
    case 6:
      v26 = __cxa_begin_catch(a1);
      v27 = v26 + 8;
      if (v26[31] < 0)
      {
        v27 = *v27;
      }

      handleException(v27, "TPApi_Initialize", 6);
      __cxa_end_catch();
      goto LABEL_27;
    case 5:
      v28 = __cxa_begin_catch(a1);
      v29 = v28 + 8;
      if (v28[31] < 0)
      {
        v29 = *v29;
      }

      break;
    case 4:
      v30 = __cxa_begin_catch(a1);
      v31 = v30 + 8;
      if (v30[31] < 0)
      {
        v31 = *v31;
      }

      handleException(v31, "TPApi_Initialize", 11);
      __cxa_end_catch();
LABEL_27:
      JUMPOUT(0x26270C1C4);
    case 3:
      v32 = __cxa_begin_catch(a1);
      v29 = v32 + 8;
      if (v32[31] < 0)
      {
        v29 = *v29;
      }

      break;
    case 2:
      v33 = __cxa_begin_catch(a1);
      v34 = (*(*v33 + 16))(v33);
      handleException(v34, "TPApi_Initialize", 1);
      __cxa_end_catch();
      goto LABEL_27;
    default:
      if (a2 != 1)
      {
        _Unwind_Resume(a1);
      }

      v35 = __cxa_begin_catch(a1);
      v36 = (*(*v35 + 16))(v35);
      handleException(v36, "TPApi_Initialize", 2);
LABEL_13:
      __cxa_end_catch();
      goto LABEL_27;
  }

  handleException(v29, "TPApi_Initialize", 2);
  goto LABEL_13;
}

void MrecInitModule_ngram2fsm_lm(void)
{
  if (!gParDebugWordLMToTransducerGrammar)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugWordLMToTransducerGrammar", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugWordLMToTransducerGrammar = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordLMToTransducerGrammar);
  }

  if (!gParDebugWordLMToTransducerGrammarDetails)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugWordLMToTransducerGrammarDetails", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugWordLMToTransducerGrammarDetails = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugWordLMToTransducerGrammarDetails);
  }
}

void (***WordLanguageModel::getWordIdToTrGrmLmIdArray(uint64_t a1, unsigned int *a2, void *a3, uint64_t a4, int *a5, uint64_t a6))(void)
{
  v10 = *(a1 + 104);
  v11 = *(a3 + 3);
  v92 = a3;
  if (v10 > v11)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a3, v10 - v11, 0);
    a3 = v92;
  }

  v89 = a6;
  v12 = *(a3 + 2);
  if (v12 <= v10)
  {
    if (v12 < v10)
    {
      v15 = v10 - v12;
      v16 = 16 * v12;
      do
      {
        v17 = (*a3 + v16);
        *v17 = 0;
        v17[1] = 0;
        v16 += 16;
        --v15;
      }

      while (v15);
    }
  }

  else if (v12 > v10)
  {
    v13 = v12;
    v14 = 16 * v12 - 16;
    do
    {
      --v13;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a3 + v14);
      a3 = v92;
      v14 -= 16;
    }

    while (v13 > v10);
  }

  *(a3 + 2) = v10;
  v18 = *(a4 + 12);
  if (v10 > v18)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a4, v10 - v18, 0);
  }

  v19 = *(a4 + 8);
  if (v19 <= v10)
  {
    if (v19 < v10)
    {
      v22 = v10 - v19;
      v23 = 16 * v19;
      do
      {
        v24 = (*a4 + v23);
        *v24 = 0;
        v24[1] = 0;
        v23 += 16;
        --v22;
      }

      while (v22);
    }
  }

  else if (v19 > v10)
  {
    v20 = v19;
    v21 = 16 * v19 - 16;
    do
    {
      --v20;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a4 + v21);
      v21 -= 16;
    }

    while (v20 > v10);
  }

  *(a4 + 8) = v10;
  *a5 = 0;
  v25 = a2[3];
  if (v25 <= 4)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, 5 - v25, 0);
  }

  v26 = a2[2];
  v27 = a6;
  if (v26 <= 5)
  {
    if (v26 != 5)
    {
      v29 = 16 * v26;
      do
      {
        v30 = (*a2 + v29);
        *v30 = 0;
        v30[1] = 0;
        v29 += 16;
      }

      while (v29 != 80);
    }
  }

  else if (v26 >= 6)
  {
    v28 = 16 * v26 - 16;
    do
    {
      --v26;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v28);
      v28 -= 16;
    }

    while (v26 > 5);
  }

  a2[2] = 5;
  v31 = *a2;
  v32 = *(*a2 + 24);
  v33 = *a2;
  if (v32 == *(*a2 + 28))
  {
    DgnPrimArray<unsigned int>::reallocElts(v31 + 16, 1, 1);
    v32 = *(v31 + 24);
    v33 = *a2;
  }

  *(*(v31 + 16) + 4 * v32) = 16777214;
  ++*(v31 + 24);
  v34 = *(v33 + 40);
  v35 = v33;
  if (v34 == *(v33 + 44))
  {
    DgnPrimArray<unsigned int>::reallocElts(v33 + 32, 1, 1);
    v34 = *(v33 + 40);
    v35 = *a2;
  }

  *(*(v33 + 32) + 4 * v34) = 16777213;
  ++*(v33 + 40);
  v36 = *(v35 + 56);
  v37 = v35;
  if (v36 == *(v35 + 60))
  {
    DgnPrimArray<unsigned int>::reallocElts(v35 + 48, 1, 1);
    v36 = *(v35 + 56);
    v37 = *a2;
  }

  *(*(v35 + 48) + 4 * v36) = 16777210;
  ++*(v35 + 56);
  v38 = *(v37 + 72);
  if (v38 == *(v37 + 76))
  {
    DgnPrimArray<unsigned int>::reallocElts(v37 + 64, 1, 1);
    v38 = *(v37 + 72);
  }

  *(*(v37 + 64) + 4 * v38) = 16777212;
  ++*(v37 + 72);
  *a5 = 5;
  v91 = MemChunkAlloc(0x70uLL, 0);
  Hash<Int32Pair,Int32Pair,Int32PairScope,int>::Hash(v91, 0, 16);
  v39 = *(a1 + 128);
  if (v39 || (v39 = *(a1 + 144)) != 0 || (v39 = *(a1 + 160)) != 0)
  {
    v40 = 0;
    v41 = v39;
    while (1)
    {
      v42 = *(a1 + 16);
      v43 = *(*(v42 + 256) + 4 * v40);
      if (v40 == v43)
      {
        break;
      }

      if (v40 < *(v42 + 388))
      {
        if (*(*(v42 + 104) + v40))
        {
          LmId = WordLanguageModel::getLmId(a1, v43);
          v52 = WordLanguageModel::getLmId(a1, v40);
          v42 = *(a1 + 16);
          if (LmId != v52)
          {
            v53 = *(*(v42 + 256) + 4 * v40);
            v54 = WordLanguageModel::getLmId(a1, v53);
            v55 = WordLanguageModel::getLmId(a1, v40);
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/ngram2fsm.cpp", 403, "lm/ngram2fsm", 2, "%u %u %u %u", v40, v53, v54, v55);
            v42 = *(a1 + 16);
          }
        }
      }

      if (v40 < *(v42 + 388))
      {
        if (*(*(v42 + 104) + v40))
        {
          MaybeContextLmId = WordLanguageModel::getMaybeContextLmId(a1, *(*(v42 + 256) + 4 * v40));
          if (MaybeContextLmId != WordLanguageModel::getMaybeContextLmId(a1, v40))
          {
            v57 = *(*(*(a1 + 16) + 256) + 4 * v40);
            v58 = WordLanguageModel::getMaybeContextLmId(a1, v57);
            v59 = WordLanguageModel::getMaybeContextLmId(a1, v40);
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/ngram2fsm.cpp", 411, "lm/ngram2fsm", 2, "%u %u %u %u", v40, v57, v58, v59);
          }
        }
      }

LABEL_105:
      if (++v40 == v41)
      {
        return DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v91);
      }
    }

    if (!*(*(v42 + 32) + 2 * v40))
    {
      v60 = *(v27 + 8);
      if (!v60)
      {
        goto LABEL_105;
      }

      v61 = *v27;
      v62 = 0xFFFFFFFFLL;
      while (1)
      {
        v63 = *v61++;
        if (v40 == v63)
        {
          break;
        }

        --v62;
        if (!--v60)
        {
          goto LABEL_105;
        }
      }

      if (!v62)
      {
        goto LABEL_105;
      }
    }

    v44 = a4;
    v45 = WordLanguageModel::getLmId(a1, v40);
    v46 = WordLanguageModel::getMaybeContextLmId(a1, v40);
    v48 = *(a1 + 112);
    v47 = *(a1 + 116);
    v94[0] = v45;
    v94[1] = v46;
    v49 = *Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v91, v94);
    if (v49)
    {
      v50 = v49 + 5;
      a4 = v44;
      goto LABEL_69;
    }

    if (v48 == v45)
    {
      a4 = v44;
      if (WordLanguageModel::getWordId(a1, v45, 0) == 16777214)
      {
        v64 = 1;
LABEL_66:
        v93 = v64;
LABEL_68:
        v50 = &v93;
        Hash<Int32Pair,Int32Pair,Int32PairScope,int>::add(v91, v94, &v93);
LABEL_69:
        v65 = *v50;
        v66 = *v92 + 16 * v45;
        v67 = *(v66 + 8);
        if (!v67)
        {
          goto LABEL_75;
        }

        v68 = *v66;
        v69 = *(v66 + 8);
        v70 = 0xFFFFFFFFLL;
        while (1)
        {
          v71 = *v68++;
          if (v71 == v65)
          {
            break;
          }

          --v70;
          if (!--v69)
          {
            goto LABEL_75;
          }
        }

        if (!v70)
        {
LABEL_75:
          if (v67 == *(v66 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(v66, 1, 1);
            v67 = *(v66 + 8);
          }

          *(*v66 + 4 * v67) = v65;
          ++*(v66 + 8);
        }

        v72 = *a4 + 16 * v46;
        v73 = *(v72 + 8);
        if (!v73)
        {
          goto LABEL_84;
        }

        v74 = *v72;
        v75 = *(v72 + 8);
        v76 = 0xFFFFFFFFLL;
        while (1)
        {
          v77 = *v74++;
          if (v77 == v65)
          {
            break;
          }

          --v76;
          if (!--v75)
          {
            goto LABEL_84;
          }
        }

        if (!v76)
        {
LABEL_84:
          if (v73 == *(v72 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(*a4 + 16 * v46, 1, 1);
            v73 = *(v72 + 8);
          }

          *(*v72 + 4 * v73) = v65;
          ++*(v72 + 8);
        }

        if ((v65 - 3) <= 0xFFFFFFFD)
        {
          v78 = a2[2];
          if (v78 <= v65)
          {
            v79 = (v65 + 1);
            v80 = a2[3];
            if (v79 > v80)
            {
              DgnArray<DgnPrimArray<double>>::reallocElts(a2, v79 - v80, 0);
              v78 = a2[2];
            }

            if (v78 <= v79)
            {
              if (v78 < v79)
              {
                v83 = 16 * v78;
                v84 = v79 - v78;
                do
                {
                  v85 = (*a2 + v83);
                  *v85 = 0;
                  v85[1] = 0;
                  v83 += 16;
                  --v84;
                }

                while (v84);
              }
            }

            else if (v78 > v79)
            {
              v81 = v78;
              v82 = 16 * v78 - 16;
              do
              {
                --v81;
                DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v82);
                v82 -= 16;
              }

              while (v81 > v79);
            }

            a2[2] = v79;
            v27 = v89;
            a4 = v44;
          }

          v86 = *a2 + 16 * v65;
          v87 = *(v86 + 8);
          if (v87 == *(v86 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(*a2 + 16 * v65, 1, 1);
            v87 = *(v86 + 8);
          }

          *(*v86 + 4 * v87) = v40;
          ++*(v86 + 8);
        }

        goto LABEL_105;
      }
    }

    else
    {
      a4 = v44;
      if (v47 == v45 && WordLanguageModel::getWordId(a1, v45, 0) == 16777213)
      {
        v64 = 2;
        goto LABEL_66;
      }
    }

    v93 = *a5;
    *a5 = v93 + 1;
    goto LABEL_68;
  }

  return DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v91);
}

uint64_t WordLanguageModel::getLmId(WordLanguageModel *this, unsigned int a2)
{
  if (a2 == 16777214)
  {
    return *(this + 28);
  }

  if (a2 == 16777213)
  {
    return *(this + 29);
  }

  v3 = *(this + 32);
  if (v3)
  {
    if (v3 > a2)
    {
      return *(*(this + 15) + 4 * a2);
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 36);
  if (v4)
  {
    if (v4 > a2)
    {
      v5 = *(*(this + 17) + 2 * a2);
      v6 = v5 == 0xFFFF;
      goto LABEL_13;
    }

    return 0xFFFFFFFFLL;
  }

  if (*(this + 40) <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(*(this + 19) + a2);
  v6 = v5 == 255;
LABEL_13:
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t WordLanguageModel::getMaybeContextLmId(WordLanguageModel *this, unsigned int a2)
{
  if (a2 == 16777212)
  {
    return 4294967294;
  }

  if (a2 == 16777214)
  {
    return *(this + 28);
  }

  v3 = *(this + 32);
  v4 = v3;
  if (!v3)
  {
    v4 = *(this + 36);
    if (!v4)
    {
      v4 = *(this + 40);
    }
  }

  if (v4 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 276) == 1)
  {
    if (*(this + 72))
    {
      v5 = *(this + 35);
      return *(v5 + 4 * a2);
    }

    if (*(this + 76))
    {
      v6 = *(this + 37);
LABEL_20:
      v7 = *(v6 + 2 * a2);
      v8 = v7 == 0xFFFF;
      goto LABEL_24;
    }

    v9 = *(this + 39);
  }

  else
  {
    if (v3)
    {
      v5 = *(this + 15);
      return *(v5 + 4 * a2);
    }

    if (*(this + 36))
    {
      v6 = *(this + 17);
      goto LABEL_20;
    }

    v9 = *(this + 19);
  }

  v7 = *(v9 + a2);
  v8 = v7 == 255;
LABEL_24:
  if (v8)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v7;
  }
}

void *WordLanguageModel::getWordTransducer(const WordLanguageModel *a1, unsigned __int16 **a2, uint64_t a3, unsigned int *a4, unsigned int a5, __int16 a6, uint64_t a7)
{
  if (*(a2 + 2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/ngram2fsm.cpp", 459, "lm/ngram2fsm", 1, "%u", **a2);
  }

  v284 = 2;
  v283[0] = 0;
  v283[1] = 0;
  v282[0] = 0;
  v282[1] = 0;
  WordLanguageModel::getWordIdToTrGrmLmIdArray(a1, a4, v283, v282, &v284 + 1, a7);
  v11 = v284;
  LODWORD(v284) = v284 + 1;
  v281 = v11;
  v12 = *(a1 + 28);
  if (v12 != -1)
  {
    v13 = v283[0] + 16 * v12;
    v14 = *(v13 + 8);
    if (!v14)
    {
      goto LABEL_10;
    }

    v15 = *v13;
    v16 = 0xFFFFFFFFLL;
    v17 = *(v13 + 8);
    while (1)
    {
      v18 = *v15++;
      if (v18 == 1)
      {
        break;
      }

      --v16;
      if (!--v17)
      {
        goto LABEL_10;
      }
    }

    if (!v16)
    {
LABEL_10:
      if (v14 == *(v13 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(v13, 1, 1);
        v14 = *(v13 + 8);
      }

      *(*v13 + 4 * v14) = 1;
      ++*(v13 + 8);
      v12 = *(a1 + 28);
    }

    v19 = v282[0] + 16 * v12;
    v20 = *(v19 + 8);
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = *v19;
    v22 = 0xFFFFFFFFLL;
    v23 = *(v19 + 8);
    while (1)
    {
      v24 = *v21++;
      if (v24 == 1)
      {
        break;
      }

      --v22;
      if (!--v23)
      {
        goto LABEL_19;
      }
    }

    if (!v22)
    {
LABEL_19:
      if (v20 == *(v19 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(v19, 1, 1);
        v20 = *(v19 + 8);
      }

      *(*v19 + 4 * v20) = 1;
      ++*(v19 + 8);
    }
  }

  v25 = *(a1 + 29);
  if (v25 != -1)
  {
    v26 = v283[0] + 16 * v25;
    v27 = *(v26 + 8);
    if (!v27)
    {
      goto LABEL_29;
    }

    v28 = *v26;
    v29 = 0xFFFFFFFFLL;
    v30 = *(v26 + 8);
    while (1)
    {
      v31 = *v28++;
      if (v31 == 2)
      {
        break;
      }

      --v29;
      if (!--v30)
      {
        goto LABEL_29;
      }
    }

    if (!v29)
    {
LABEL_29:
      if (v27 == *(v26 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(v26, 1, 1);
        v27 = *(v26 + 8);
      }

      *(*v26 + 4 * v27) = 2;
      ++*(v26 + 8);
      v25 = *(a1 + 29);
    }

    v32 = v282[0] + 16 * v25;
    v33 = *(v32 + 8);
    if (v33)
    {
      v34 = 0;
      v35 = *v32;
      while (*(v35 + v34) != 2)
      {
        v34 += 4;
        if (4 * v33 == v34)
        {
          goto LABEL_41;
        }
      }

      if (v34 != 0x3FFFFFFFCLL)
      {
        if (v33 == *(v32 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(v32, 1, 1);
          v33 = *(v32 + 8);
          v35 = *v32;
        }

        *(v35 + 4 * v33) = 2;
        ++*(v32 + 8);
      }
    }
  }

LABEL_41:
  v36 = HIDWORD(v284);
  v279 = 0;
  v280 = 0;
  if (HIDWORD(v284))
  {
    __b = 0;
    v37 = realloc_array(0, &__b, 4 * HIDWORD(v284), 0, 0, 1);
    v38 = __b;
    v279 = __b;
    LODWORD(v280) = v36;
    HIDWORD(v280) = v37 >> 2;
    v39 = (v36 + 3) & 0x1FFFFFFFCLL;
    v40 = vdupq_n_s64(v36 - 1);
    v41 = xmmword_26286BF80;
    v42 = xmmword_26286B680;
    v43 = __b + 8;
    v44 = vdupq_n_s64(4uLL);
    do
    {
      v45 = vmovn_s64(vcgeq_u64(v40, v42));
      if (vuzp1_s16(v45, *v40.i8).u8[0])
      {
        *(v43 - 2) = v11;
      }

      if (vuzp1_s16(v45, *&v40).i8[2])
      {
        *(v43 - 1) = v11;
      }

      if (vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, *&v41))).i32[1])
      {
        *v43 = v11;
        v43[1] = v11;
      }

      v41 = vaddq_s64(v41, v44);
      v42 = vaddq_s64(v42, v44);
      v43 += 4;
      v39 -= 4;
    }

    while (v39);
  }

  else
  {
    v38 = 0;
    LODWORD(v280) = 0;
  }

  v266 = a4;
  v46 = v11;
  if (*(a1 + 28) != -1)
  {
    v46 = v11;
    if (*(a1 + 16) != 1)
    {
      v46 = v284;
      LODWORD(v284) = v284 + 1;
    }
  }

  v38[1] = v46;
  v47 = *(a3 + 8);
  if (v47 == *(a3 + 12))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
    v47 = *(a3 + 8);
  }

  v48 = *a3 + 16 * v47;
  *v48 = 0;
  *(v48 + 4) = v46;
  *(v48 + 8) = 1;
  v49 = *(a3 + 8) + 1;
  *(a3 + 8) = v49;
  v50 = a1;
  if (*(a1 + 29) == -1)
  {
    if (v49 == *(a3 + 12))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
      v49 = *(a3 + 8);
    }

    v51 = *a3 + 16 * v49;
    *v51 = v11;
    *(v51 + 4) = 0x200000001;
    *(v51 + 12) = 0;
    ++*(a3 + 8);
    v50 = a1;
  }

  v279[2] = 1;
  if (a5 == 0xFFFFFF)
  {
    v52 = -1;
  }

  else if (*(v50 + 32))
  {
    v52 = *(*(v50 + 15) + 4 * a5);
  }

  else
  {
    if (*(v50 + 36))
    {
      v53 = *(*(v50 + 17) + 2 * a5);
      v54 = v53 == 0xFFFF;
    }

    else
    {
      v53 = *(*(v50 + 19) + a5);
      v54 = v53 == 255;
    }

    if (v54)
    {
      v52 = -1;
    }

    else
    {
      v52 = v53;
    }
  }

  v55 = *(v50 + 16);
  if (v55 >= 2)
  {
    NGramIterator::NGramIterator(&__b, a1, 2, 1);
    while (NGramIterator::next(&__b))
    {
      v56 = v282[0] + 16 * *v276[0];
      v57 = *(v56 + 8);
      if (v57)
      {
        for (i = 0; i < v57; ++i)
        {
          v59 = *(*v56 + 4 * i);
          if (v59 != 2)
          {
            v60 = v279[v59];
            if (v60 == v11)
            {
              v60 = v284;
              LODWORD(v284) = v284 + 1;
              v279[v59] = v60;
            }

            v61 = v278;
            v62 = *(a3 + 8);
            if (v62 == *(a3 + 12))
            {
              DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
              v62 = *(a3 + 8);
            }

            v63 = *a3 + 16 * v62;
            *v63 = v60;
            *(v63 + 4) = v11;
            *(v63 + 8) = 3;
            *(v63 + 12) = v61;
            *(v63 + 14) = 0;
            ++*(a3 + 8);
            v57 = *(v56 + 8);
            a4 = v266;
          }
        }
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v276);
    v55 = *(a1 + 16);
  }

  if (v55)
  {
    v272 = 0;
    v273 = 0;
    if (v36)
    {
      __b = 0;
      v64 = realloc_array(0, &__b, 2 * v36, 0, 0, 1);
      v272 = __b;
      LODWORD(v273) = v36;
      HIDWORD(v273) = v64 >> 1;
      memset_pattern16(__b, &unk_262888330, 2 * v36);
    }

    else
    {
      LODWORD(v273) = 0;
    }

    NGramIterator::NGramIterator(&__b, a1, 1, 0);
    v65 = 0;
    while ((NGramIterator::next(&__b) & 1) != 0)
    {
      v66 = *v276[0];
      v67 = v283[0] + 16 * v66;
      v68 = *(v67 + 8);
      if (v68)
      {
        v69 = *v67;
        v70 = *a4;
        v71 = v272;
        do
        {
          v73 = *v69++;
          v72 = v73;
          if (*(v70 + 16 * v73 + 8))
          {
            if (v66 == v52)
            {
              v71[v72] = a6;
              v65 = 1;
            }

            else
            {
              if (*(a1 + 16) == 1)
              {
                v74 = v277;
              }

              else
              {
                v74 = v278;
              }

              v71[v72] = v74;
            }
          }

          --v68;
        }

        while (v68);
      }
    }

    if (v36)
    {
      for (j = 0; j != v36; ++j)
      {
        if (j != 1)
        {
          v76 = *(v272 + j);
          if (v76 != 20000)
          {
            v77 = v279[j];
            v78 = *(a3 + 8);
            if (v78 == *(a3 + 12))
            {
              DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
              v78 = *(a3 + 8);
            }

            v79 = *a3 + 16 * v78;
            *v79 = v11;
            *(v79 + 4) = v77;
            *(v79 + 8) = j;
            *(v79 + 12) = v76;
            *(v79 + 14) = 0;
            ++*(a3 + 8);
            a4 = v266;
          }
        }
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v276);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v272);
  }

  else
  {
    v65 = 0;
  }

  if (v52 != -1 && (v65 & 1) == 0)
  {
    v80 = **(v283[0] + 16 * v52);
    v81 = *(a3 + 8);
    if (v81 == *(a3 + 12))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
      v81 = *(a3 + 8);
    }

    v82 = *a3 + 16 * v81;
    *v82 = v11;
    *(v82 + 4) = v11;
    *(v82 + 8) = v80;
    *(v82 + 12) = a6;
    *(v82 + 14) = 0;
    ++*(a3 + 8);
    a4 = v266;
  }

  v83 = MemChunkAlloc(0x70uLL, 0);
  Hash<Int32Pair,Int32Pair,Int32PairScope,int>::Hash(v83, 0, 16);
  v84 = *(a1 + 16);
  v267 = v83;
  if (v84 >= 3)
  {
    NGramIterator::NGramIterator(&__b, a1, 3, 1);
    while (NGramIterator::next(&__b))
    {
      v85 = v282[0] + 16 * *v276[0];
      v86 = *(v85 + 8);
      if (v86)
      {
        v87 = 0;
        v88 = v282[0] + 16 * *(v276[0] + 4);
        *v264 = v282[0] + 16 * *v276[0];
        do
        {
          v89 = *(*v85 + 4 * v87);
          if (v89 != 2 && *(*a4 + 16 * v89 + 8) != 0)
          {
            v91 = *(v88 + 8);
            if (v91)
            {
              for (k = 0; k < v91; ++k)
              {
                v93 = *(*v88 + 4 * k);
                if (v93 - 1 >= 2 && *(*a4 + 16 * v93 + 8) != 0)
                {
                  v268 = __PAIR64__(v93, v89);
                  v272 = 0;
                  v270 = &v284;
                  if (Hash<Int32Pair,Int32Pair,Int32PairScope,int>::insert(v267, &v268, &v272, &v270))
                  {
                    LODWORD(v284) = v284 + 1;
                  }

                  v95 = *v270;
                  v96 = v279[v93];
                  v97 = v278;
                  v98 = *(a3 + 8);
                  if (v98 == *(a3 + 12))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
                    v98 = *(a3 + 8);
                  }

                  v99 = *a3 + 16 * v98;
                  *v99 = v95;
                  *(v99 + 4) = v96;
                  *(v99 + 8) = 3;
                  *(v99 + 12) = v97;
                  *(v99 + 14) = 0;
                  ++*(a3 + 8);
                  v91 = *(v88 + 8);
                  a4 = v266;
                }
              }

              v85 = *v264;
              v86 = *(*v264 + 8);
            }
          }

          ++v87;
        }

        while (v87 < v86);
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v276);
    v84 = *(a1 + 16);
    v83 = v267;
  }

  if (v84 >= 2)
  {
    NGramIterator::NGramIterator(&__b, a1, 2, 0);
    while (NGramIterator::next(&__b))
    {
      v100 = v282[0] + 16 * *v276[0];
      v101 = *(v100 + 8);
      if (v101)
      {
        v102 = 0;
        v103 = v283[0] + 16 * *(v276[0] + 4);
        do
        {
          v104 = *(*v100 + 4 * v102);
          if (v104 != 2 && *(*a4 + 16 * v104 + 8) != 0)
          {
            v106 = *(v103 + 8);
            if (v106)
            {
              for (m = 0; m < v106; ++m)
              {
                v108 = *(*v103 + 4 * m);
                if (v108 != 1 && *(*a4 + 16 * v108 + 8) != 0)
                {
                  v272 = __PAIR64__(v108, v104);
                  Bucket = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v83, &v272);
                  if (*Bucket)
                  {
                    v111 = *Bucket + 5;
                  }

                  else
                  {
                    v111 = &v279[v108];
                  }

                  v112 = *v111;
                  v113 = v279[v104];
                  v114 = v277;
                  v115 = *(a3 + 8);
                  if (v115 == *(a3 + 12))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
                    v115 = *(a3 + 8);
                  }

                  v116 = *a3 + 16 * v115;
                  *v116 = v113;
                  *(v116 + 4) = v112;
                  *(v116 + 8) = v108;
                  *(v116 + 12) = v114;
                  *(v116 + 14) = 0;
                  ++*(a3 + 8);
                  v106 = *(v103 + 8);
                  a4 = v266;
                  v83 = v267;
                }
              }

              v101 = *(v100 + 8);
            }
          }

          ++v102;
        }

        while (v102 < v101);
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v276);
  }

  v117 = a3;
  v118 = MemChunkAlloc(0x70uLL, 0);
  Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::Hash(v118, 0, 16);
  v119 = *(a1 + 16);
  v265 = v118;
  if (v119 >= 4)
  {
    NGramIterator::NGramIterator(&__b, a1, 4, 1);
    while (NGramIterator::next(&__b))
    {
      v120 = v282[0] + 16 * *v276[0];
      v121 = *(v120 + 8);
      if (v121)
      {
        v122 = 0;
        v123 = v282[0] + 16 * *(v276[0] + 4);
        v124 = v282[0] + 16 * *(v276[0] + 8);
        v252 = v282[0] + 16 * *v276[0];
        v260 = v123;
        do
        {
          v125 = *(*v120 + 4 * v122);
          if (v125 != 2 && *(*a4 + 16 * v125 + 8) != 0)
          {
            v127 = *(v123 + 8);
            if (v127)
            {
              v257 = v122;
              for (n = 0; n < v127; ++n)
              {
                v129 = *(*v123 + 4 * n);
                if ((v129 - 1) >= 2 && *(*a4 + 16 * v129 + 8) != 0)
                {
                  v131 = *(v124 + 8);
                  if (v131)
                  {
                    for (ii = 0; ii < v131; ++ii)
                    {
                      v133 = *(*v124 + 4 * ii);
                      if (v133 != 1 && *(*a4 + 16 * v133 + 8) != 0)
                      {
                        v272 = __PAIR64__(v129, v125);
                        LODWORD(v273) = v133;
                        v270 = 0;
                        v268 = &v284;
                        if (Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::insert(v265, &v272, &v270, &v268))
                        {
                          LODWORD(v284) = v284 + 1;
                        }

                        v135 = *v268;
                        v270 = __PAIR64__(v133, v129);
                        v136 = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v267, &v270);
                        if (*v136)
                        {
                          v137 = *v136 + 5;
                        }

                        else
                        {
                          v137 = &v279[v133];
                        }

                        v138 = *v137;
                        v139 = v278;
                        v140 = *(a3 + 8);
                        if (v140 == *(a3 + 12))
                        {
                          DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
                          v140 = *(a3 + 8);
                        }

                        v141 = *a3 + 16 * v140;
                        *v141 = v135;
                        *(v141 + 4) = v138;
                        *(v141 + 8) = 3;
                        *(v141 + 12) = v139;
                        *(v141 + 14) = 0;
                        ++*(a3 + 8);
                        v131 = *(v124 + 8);
                        a4 = v266;
                      }
                    }

                    v123 = v260;
                    v127 = *(v260 + 8);
                  }
                }
              }

              v120 = v252;
              v121 = *(v252 + 8);
              v122 = v257;
            }
          }

          ++v122;
        }

        while (v122 < v121);
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v276);
    v119 = *(a1 + 16);
    v83 = v267;
    v118 = v265;
  }

  if (v119 >= 3)
  {
    NGramIterator::NGramIterator(&__b, a1, 3, 0);
LABEL_206:
    while (NGramIterator::next(&__b))
    {
      v142 = v282[0] + 16 * *v276[0];
      v143 = *(v142 + 8);
      if (v143)
      {
        v144 = 0;
        v145 = v282[0] + 16 * *(v276[0] + 4);
        v146 = v283[0] + 16 * *(v276[0] + 8);
        v253 = v282[0] + 16 * *v276[0];
        v261 = v145;
        while (1)
        {
          v147 = *(*v142 + 4 * v144);
          if (v147 != 2 && *(*a4 + 16 * v147 + 8) != 0)
          {
            v149 = *(v145 + 8);
            if (v149)
            {
              break;
            }
          }

LABEL_242:
          if (++v144 >= v143)
          {
            goto LABEL_206;
          }
        }

        v258 = v144;
        v150 = 0;
        while (1)
        {
          v151 = *(*v145 + 4 * v150);
          if ((v151 - 1) >= 2 && *(*a4 + 16 * v151 + 8) != 0)
          {
            v153 = *(v146 + 8);
            if (v153)
            {
              break;
            }
          }

LABEL_240:
          if (++v150 >= v149)
          {
            v142 = v253;
            v143 = *(v253 + 8);
            v118 = v265;
            v144 = v258;
            goto LABEL_242;
          }
        }

        v154 = 0;
        while (2)
        {
          v155 = *(*v146 + 4 * v154);
          if (v155 != 1 && *(*a4 + 16 * v155 + 8) != 0)
          {
            v270 = __PAIR64__(v151, v147);
            v157 = *Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v83, &v270);
            if (v157)
            {
              v158 = v157 + 5;
              goto LABEL_229;
            }

            if (v147 == 1)
            {
              v158 = &v279[v151];
LABEL_229:
              v272 = __PAIR64__(v151, v147);
              LODWORD(v273) = v155;
              v159 = *Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::findBucket(v265, &v272);
              if (v159)
              {
                v160 = (v159 + 24);
              }

              else
              {
                v268 = __PAIR64__(v155, v151);
                v161 = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v83, &v268);
                if (*v161)
                {
                  v160 = *v161 + 5;
                }

                else
                {
                  v160 = &v279[v155];
                }
              }

              v162 = *v158;
              v163 = *v160;
              v164 = v277;
              v117 = a3;
              v165 = *(a3 + 8);
              if (v165 == *(a3 + 12))
              {
                DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
                v165 = *(a3 + 8);
              }

              v166 = *a3 + 16 * v165;
              *v166 = v162;
              *(v166 + 4) = v163;
              *(v166 + 8) = v155;
              *(v166 + 12) = v164;
              *(v166 + 14) = 0;
              ++*(a3 + 8);
              a4 = v266;
              v83 = v267;
            }

            v153 = *(v146 + 8);
          }

          if (++v154 >= v153)
          {
            v145 = v261;
            v149 = *(v261 + 8);
            goto LABEL_240;
          }

          continue;
        }
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v276);
    if (*(a1 + 16) >= 4u)
    {
      NGramIterator::NGramIterator(&__b, a1, 4, 0);
LABEL_246:
      while (NGramIterator::next(&__b))
      {
        v250 = v282[0] + 16 * *v276[0];
        v167 = *(v250 + 8);
        if (v167)
        {
          v168 = 0;
          v169 = v282[0] + 16 * *(v276[0] + 4);
          v170 = v282[0] + 16 * *(v276[0] + 8);
          v171 = v283[0] + 16 * *(v276[0] + 12);
          v254 = v169;
          v259 = v170;
          while (1)
          {
            v251 = v168;
            v172 = *(*v250 + 4 * v168);
            if (*(*a4 + 16 * v172 + 8))
            {
              v173 = *(v169 + 8);
              if (v173)
              {
                break;
              }
            }

LABEL_290:
            v168 = v251 + 1;
            if (v251 + 1 >= v167)
            {
              goto LABEL_246;
            }
          }

          v174 = 0;
          while (1)
          {
            v175 = *(*v169 + 4 * v174);
            if ((v175 - 1) >= 2 && *(*a4 + 16 * v175 + 8) != 0)
            {
              v177 = *(v170 + 8);
              if (v177)
              {
                break;
              }
            }

LABEL_288:
            v174 = (v174 + 1);
            if (v174 >= v173)
            {
              v167 = *(v250 + 8);
              v83 = v267;
              goto LABEL_290;
            }
          }

          v256 = v174;
          v178 = 0;
          while (1)
          {
            v179 = *(*v170 + 4 * v178);
            if ((v179 - 1) >= 2 && *(*a4 + 16 * v179 + 8) != 0)
            {
              v181 = *(v171 + 8);
              if (v181)
              {
                break;
              }
            }

LABEL_286:
            if (++v178 >= v177)
            {
              v169 = v254;
              v174 = v256;
              v173 = *(v254 + 8);
              goto LABEL_288;
            }
          }

          v262 = v178;
          v182 = 0;
          while (2)
          {
            v183 = *(*v171 + 4 * v182);
            if (v183 != 1 && *(*a4 + 16 * v183 + 8) != 0)
            {
              v272 = __PAIR64__(v175, v172);
              LODWORD(v273) = v179;
              v185 = *Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::findBucket(v118, &v272);
              if (v172 != 1 || v185)
              {
                if (v185)
                {
                  v187 = (v185 + 24);
LABEL_274:
                  v270 = __PAIR64__(v179, v175);
                  LODWORD(v271) = v183;
                  v188 = *Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::findBucket(v118, &v270);
                  if (v188)
                  {
                    v189 = (v188 + 24);
                  }

                  else
                  {
                    v268 = __PAIR64__(v183, v179);
                    v190 = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v267, &v268);
                    if (*v190)
                    {
                      v189 = *v190 + 5;
                    }

                    else
                    {
                      v189 = &v279[v183];
                      if (*v189 == -1)
                      {
                        v189 = &v281;
                      }
                    }
                  }

                  v191 = *v187;
                  v192 = *v189;
                  v193 = v277;
                  v117 = a3;
                  v194 = *(a3 + 8);
                  if (v194 == *(a3 + 12))
                  {
                    DgnArray<DgnPrimArray<double>>::reallocElts(a3, 1, 1);
                    v194 = *(a3 + 8);
                  }

                  v195 = *a3 + 16 * v194;
                  *v195 = v191;
                  *(v195 + 4) = v192;
                  *(v195 + 8) = v183;
                  *(v195 + 12) = v193;
                  *(v195 + 14) = 0;
                  ++*(a3 + 8);
                  v118 = v265;
                  a4 = v266;
                }
              }

              else
              {
                v270 = __PAIR64__(v179, v175);
                v186 = *Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v267, &v270);
                if (v186)
                {
                  v187 = v186 + 5;
                  goto LABEL_274;
                }
              }

              v181 = *(v171 + 8);
            }

            if (++v182 >= v181)
            {
              v170 = v259;
              v178 = v262;
              v177 = *(v259 + 8);
              goto LABEL_286;
            }

            continue;
          }
        }
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(v276);
    }
  }

  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v118);
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v83);
  v196 = v284;
  v197 = v284 - 1;
  v198 = *(v117 + 8);
  if (!v198)
  {
    goto LABEL_303;
  }

  v199 = (*v117 + 4);
  do
  {
    v200 = v196 - 1;
    if (*v199 != 1)
    {
      if (*v199 != v197)
      {
        goto LABEL_299;
      }

      v200 = 1;
    }

    *v199 = v200;
LABEL_299:
    if (*(v199 - 1) == v197)
    {
      *(v199 - 1) = 1;
    }

    v199 += 4;
    --v198;
  }

  while (v198);
  v196 = v284;
LABEL_303:
  __b = 0;
  v275 = 0;
  if (!v196)
  {
    v272 = 0;
    v273 = 0;
    goto LABEL_311;
  }

  v272 = 0;
  v201 = realloc_array(0, &v272, 4 * v196, 0, 0, 1);
  v273 = 0;
  __b = v272;
  v202 = v284;
  LODWORD(v275) = v196;
  HIDWORD(v275) = v201 >> 2;
  v272 = 0;
  if (!v284)
  {
LABEL_311:
    LODWORD(v273) = 0;
    v270 = 0;
    v271 = 0;
    goto LABEL_312;
  }

  v270 = 0;
  v203 = realloc_array(0, &v270, 4 * v284, 0, 0, 1);
  v271 = 0;
  v272 = v270;
  v204 = v284;
  LODWORD(v273) = v202;
  HIDWORD(v273) = v203 >> 2;
  v270 = 0;
  if (!v284)
  {
LABEL_312:
    v207 = 0;
    LODWORD(v271) = 0;
    v208 = __b;
    goto LABEL_313;
  }

  v268 = 0;
  v205 = realloc_array(0, &v268, 4 * v284, 0, 0, 1);
  v206 = v268;
  v270 = v268;
  v207 = v284;
  LODWORD(v271) = v204;
  HIDWORD(v271) = v205 >> 2;
  v208 = __b;
  if (v284 >= 1)
  {
    v209 = 0;
    do
    {
      v208[v209] = 0;
      v206[v209++] = 0;
      v207 = v284;
    }

    while (v209 < v284);
  }

LABEL_313:
  v210 = *(v117 + 8);
  if (v210)
  {
    v211 = 0;
    v212 = *v117;
    v213 = v270;
    do
    {
      if (v212[2] == 3)
      {
        v214 = *v212;
        if (!v213[v214])
        {
          v213[v214] = v211;
          v208[*v212] = 1;
          v210 = *(v117 + 8);
        }
      }

      ++v211;
      v212 += 4;
    }

    while (v211 < v210);
    v207 = v284;
  }

  v215 = v272;
  if (v207 >= 1)
  {
    v216 = 0;
    do
    {
      v208[v216] = 0;
      v215[v216++] = 0;
    }

    while (v216 < v284);
  }

  *v208 = 1;
  v215[v197] = 1;
  v217 = *v117;
  v218 = *(v117 + 8);
  if (v218)
  {
    v219 = 0;
    v220 = 0;
    while (1)
    {
      v221 = (v217 + 16 * v219);
      if (v208[*v221] == 1)
      {
        v222 = v221[1];
        if (!v208[v222])
        {
          v220 = 1;
          v208[v222] = 1;
          v218 = *(v117 + 8);
        }
      }

      if (++v219 >= v218)
      {
        v219 = 0;
        v223 = v220 & (v218 != 0);
        v220 = 0;
        if ((v223 & 1) == 0)
        {
          break;
        }
      }
    }

    v217 = *v117;
  }

  v224 = v217 + 4;
  do
  {
    v225 = *(v117 + 8);
    v226 = (v225 - 1);
    if (v225 - 1 < 0)
    {
      break;
    }

    v227 = 0;
    v228 = v226 + 1;
    v229 = (v224 + 16 * v226);
    do
    {
      if (v215[*v229] == 1)
      {
        v230 = *(v229 - 1);
        if (!v215[v230])
        {
          v227 = 1;
          v215[v230] = 1;
        }
      }

      v229 -= 4;
    }

    while (v228-- > 1);
  }

  while ((v227 & 1) != 0);
  v232 = v284;
  v268 = 0;
  v269 = 0;
  if (v284)
  {
    v285 = 0;
    v233 = realloc_array(0, &v285, 4 * v284, 0, 0, 1);
    v234 = v285;
    v268 = v285;
    v235 = v284;
    LODWORD(v269) = v232;
    HIDWORD(v269) = v233 >> 2;
    if (v284 >= 1)
    {
      v236 = 0;
      v237 = 0;
      v238 = __b;
      v239 = v272;
      do
      {
        if (v238[v236] == 1 && v239[v236] == 1)
        {
          v234[v236] = v237++;
          v235 = v284;
        }

        ++v236;
      }

      while (v236 < v235);
    }
  }

  else
  {
    v234 = 0;
    LODWORD(v269) = 0;
  }

  v240 = *(v117 + 8);
  if (v240)
  {
    v241 = 0;
    v242 = 0;
    v243 = 0;
    do
    {
      v244 = *v117;
      v245 = (*v117 + v241);
      v246 = *v245;
      if (*(__b + v246))
      {
        v247 = v245[1];
        if (*(v272 + v247))
        {
          *v245 = v234[v246];
          v245[1] = v234[v247];
          if (v242 != v243)
          {
            *(v244 + 16 * v243) = *v245;
            v240 = *(v117 + 8);
          }

          ++v243;
        }
      }

      ++v242;
      v241 += 16;
    }

    while (v242 < v240);
    v248 = *(v117 + 12);
    if (v243 > v248)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(v117, v243 - v248, 0);
    }
  }

  else
  {
    v243 = 0;
  }

  *(v117 + 8) = v243;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v268);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v270);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v272);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&__b);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v279);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v282);
  return DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v283);
}

void sub_26270E568(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 160);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 - 136);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t Hash<Int32Pair,Int32Pair,Int32PairScope,int>::add(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  HIDWORD(v7) = *a2;
  LODWORD(v7) = *a2;
  v8 = (v7 >> 19) + a2[1];
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = (-1640531527 * v8) >> -v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v5 + 80);
  v12 = *(v5 + 32);
  if (!v12)
  {
    result = DgnPool::addChunk((v5 + 24));
    v12 = *(v5 + 32);
  }

  v13 = (v11 + 8 * v10);
  *(v5 + 32) = *v12;
  *(v12 + 8) = 0;
  *(v12 + 12) = *a2;
  *(v12 + 20) = *a3;
  *(v12 + 8) = v8;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v12 = *v13;
  }

  else
  {
    *v12 = 0;
    v14 = *v13;
    if (*v13)
    {
      do
      {
        v13 = v14;
        v14 = *v14;
      }

      while (v14);
    }
  }

  *v13 = v12;
  return result;
}

uint64_t Hash<Int32Pair,Int32Pair,Int32PairScope,int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524018;
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
    v7 = 20;
  }

  else
  {
    v7 = 24;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26270E860(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<Int32Pair,Int32Pair,Int32PairScope,int>::~Hash(uint64_t a1)
{
  Hash<Int32Pair,Int32Pair,Int32PairScope,int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287524018;
  if (*(a1 + 8))
  {
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<Int32Pair,Int32Pair,Int32PairScope,int>::insert(uint64_t a1, _DWORD *a2, void *a3, _DWORD **a4)
{
  v8 = *(a1 + 12);
  if (*(a1 + 8) >= v8 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v8);
  }

  v9 = a2[1];
  HIDWORD(v10) = *a2;
  LODWORD(v10) = *a2;
  v11 = (v10 >> 19) + v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = (-1640531527 * v11) >> -v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(a1 + 80);
  v15 = *(v14 + 8 * v13);
  if (!v15)
  {
LABEL_13:
    v17 = *(a1 + 32);
    if (!v17)
    {
      DgnPool::addChunk((a1 + 24));
      v17 = *(a1 + 32);
    }

    *(a1 + 32) = *v17;
    v18 = *a4;
    *(v17 + 8) = 0;
    *(v17 + 12) = *a2;
    *(v17 + 20) = *v18;
    *a4 = (v17 + 20);
    *a3 = v17 + 12;
    *(v17 + 8) = v11;
    ++*(a1 + 8);
    if (*(a1 + 20))
    {
      *v17 = *(v14 + 8 * v13);
    }

    else
    {
      *v17 = 0;
      v19 = *(v14 + 8 * v13);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
        *v20 = v17;
        return 1;
      }
    }

    *(v14 + 8 * v13) = v17;
    return 1;
  }

  while (*(v15 + 2) != v11 || *(v15 + 3) != *a2 || *(v15 + 4) != v9)
  {
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  result = 0;
  *a3 = v15 + 12;
  *a4 = v15 + 5;
  return result;
}

uint64_t Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875241D0;
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
    v7 = 28;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26270EB50(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::~Hash(uint64_t a1)
{
  Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_2875241D0;
  if (*(a1 + 8))
  {
    Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::removeAll(uint64_t result)
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
            result = v8(v5 + 3);
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

uint64_t Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::insert(uint64_t a1, _DWORD *a2, void *a3, _DWORD **a4)
{
  v8 = *(a1 + 12);
  if (*(a1 + 8) >= v8 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v8);
  }

  v9 = a2[1];
  HIDWORD(v10) = *a2;
  LODWORD(v10) = *a2;
  HIDWORD(v10) = (v10 >> 19) + v9;
  LODWORD(v10) = HIDWORD(v10);
  v11 = a2[2];
  v12 = (v10 >> 19) + v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (-1640531527 * v12) >> -v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 80);
  v16 = *(v15 + 8 * v14);
  if (!v16)
  {
LABEL_12:
    v17 = *(a1 + 32);
    if (!v17)
    {
      DgnPool::addChunk((a1 + 24));
      v17 = *(a1 + 32);
    }

    *(a1 + 32) = *v17;
    v18 = *a4;
    *(v17 + 8) = 0;
    v19 = a2[2];
    *(v17 + 12) = *a2;
    *(v17 + 20) = v19;
    *(v17 + 24) = *v18;
    *a4 = (v17 + 24);
    *a3 = v17 + 12;
    *(v17 + 8) = v12;
    ++*(a1 + 8);
    if (*(a1 + 20))
    {
      *v17 = *(v15 + 8 * v14);
    }

    else
    {
      *v17 = 0;
      v20 = *(v15 + 8 * v14);
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
        *v21 = v17;
        return 1;
      }
    }

    *(v15 + 8 * v14) = v17;
    return 1;
  }

  while (*(v16 + 2) != v12 || *(v16 + 3) != *a2 || *(v16 + 4) != v9 || *(v16 + 5) != v11)
  {
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  result = 0;
  *a3 = v16 + 12;
  *a4 = v16 + 3;
  return result;
}

void *Hash<Int32Triple,Int32Triple,Int32TripleScope,int>::findBucket(uint64_t a1, _DWORD *a2)
{
  v2 = a2[1];
  HIDWORD(v3) = *a2;
  LODWORD(v3) = *a2;
  HIDWORD(v3) = (v3 >> 19) + v2;
  LODWORD(v3) = HIDWORD(v3);
  v4 = a2[2];
  v5 = (v3 >> 19) + v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (-1640531527 * v5) >> -v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(a1 + 80) + 8 * v7);
  v9 = *v8;
  if (!*v8)
  {
    return v8;
  }

  do
  {
    result = v8;
    v8 = v9;
    if (*(v9 + 2) == v5 && *(v9 + 3) == *a2 && *(v9 + 4) == v2 && *(v9 + 5) == v4)
    {
      break;
    }

    v9 = *v9;
    result = v8;
  }

  while (*v8);
  return result;
}

void MrecInitModule_dcuda_mrecutil(void)
{
  if (!gParDebugCUDAHelpers1)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugCUDAHelpers1", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugCUDAHelpers1 = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugCUDAHelpers1);
  }
}

void EnvHolder::EnvHolder(EnvHolder *this, int a2)
{
  FileHistory::FileHistory((this + 16), 100, 100);
  *(this + 2) = a2;
  v4 = MemChunkAlloc(0x110uLL, 0);
  EnvMgr::EnvMgr(v4, 6);
  *this = v5;
  *(this + 1) = 0xFFFFFFFFLL;
}

double verifySubFileExistsAtMostOneOfDouble(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = a3;
  v6 = a2;
  v8 = DFile::subFileExists(a1, a2);
  if (DFile::subFileExists(a1, v5) && v8)
  {
    if (*(a1 + 24))
    {
      v10 = *(a1 + 16);
    }

    else
    {
      v10 = &byte_262899963;
    }

    SubFileExtensionString = GetSubFileExtensionString(v6);
    v12 = GetSubFileExtensionString(v5);
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 94, "fileutil/envhold", 6, "%.500s %.500s %.500s %.500s", a4, v10, SubFileExtensionString, v12);
  }

  return result;
}

uint64_t EnvHolder::errorIfFileObviouslyIsNotOfTypeUser(EnvHolder *this, DFile *a2)
{
  verifySubFileExistsAtMostOneOfDouble(this, 21, 22, "User");
  verifySubFileExistsOneOfDouble(this, 62, 61, "User");
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  DgnPrimArray<unsigned int>::reallocElts(&v15, 1, 1);
  v3 = v15;
  v5 = v16;
  v4 = HIDWORD(v16);
  *(v15 + 4 * v16) = 38;
  v6 = v5 + 1;
  LODWORD(v16) = v6;
  if (v6 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v15, 1, 1);
    v3 = v15;
    v6 = v16;
    v4 = HIDWORD(v16);
  }

  *(v3 + 4 * v6) = 39;
  v7 = v6 + 1;
  LODWORD(v16) = v7;
  if (v7 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v15, 1, 1);
    v7 = v16;
    v3 = v15;
  }

  *(v3 + 4 * v7) = 43;
  v8 = v7 + 1;
  LODWORD(v16) = v7 + 1;
  v9 = v14;
  if (v14 == HIDWORD(v14))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v13, 1, 1);
    v9 = v14;
    v8 = v16;
  }

  *(v13 + 4 * v9) = 42;
  LODWORD(v14) = v9 + 1;
  v12[0] = 0;
  v12[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v12, &v15, 0, v8);
  v11[0] = 0;
  v11[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v11, &v13, 0, v14);
  verifySubFileSetExistsOneOfDouble(this, v12, v11, "User");
  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v12);
  verifySubFileExistsOneOfDouble(this, 71, 70, "User");
  verifySubFileExistsOneOfDouble(this, 87, 86, "User");
  verifySubFileExistsAtMostOneOfDouble(this, 32, 31, "User");
  verifySubFileExistsAtMostOneOfDouble(this, 83, 80, "User");
  verifySubFileExistsAtMostOneOfDouble(this, 85, 80, "User");
  verifySubFile1ImpliesSubFile2(this, 83, 85, "User");
  verifySubFile1ImpliesSubFile2(this, 85, 83, "User");
  verifySubFile1ImpliesSubFile2(this, 45, 99, "User");
  verifySubFile1ImpliesSubFile2(this, 42, 99, "User");
  verifySubFile1ImpliesSubFile2(this, 61, 99, "User");
  verifySubFile1ImpliesSubFile2(this, 31, 99, "User");
  verifySubFile1ImpliesSubFile2(this, 80, 99, "User");
  verifySubFile1ImpliesSubFile2(this, 23, 99, "User");
  verifySubFile1ImpliesSubFile2(this, 63, 99, "User");
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v15);
}

void sub_26270F3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v12 - 32);
  _Unwind_Resume(a1);
}

double verifySubFileExistsOneOfDouble(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = DFile::subFileExists(a1, a2);
  v9 = DFile::subFileExists(a1, v5);
  if (v8)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if (!v9)
  {
    v11 = v8;
  }

  if (v11 != 1)
  {
    if (v11)
    {
      if (*(a1 + 24))
      {
        v13 = *(a1 + 16);
      }

      else
      {
        v13 = &byte_262899963;
      }

      GetSubFileExtensionString(v6);
      GetSubFileExtensionString(v5);
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 121, "fileutil/envhold", 6, "%.500s %.500s %.500s %.500s", a4, v13);
    }

    else
    {
      if (*(a1 + 24))
      {
        v12 = *(a1 + 16);
      }

      else
      {
        v12 = &byte_262899963;
      }

      GetSubFileExtensionString(v6);
      GetSubFileExtensionString(v5);
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 116, "fileutil/envhold", 5, "%.500s %.500s %.500s %.500s", a4, v12);
    }
  }

  return result;
}

void verifySubFileSetExistsOneOfDouble(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v6 = a2;
  if (*(a2 + 8))
  {
    v8 = 0;
    while (!DFile::subFileExists(a1, *(*v6 + 4 * v8)))
    {
      if (++v8 >= *(v6 + 8))
      {
        goto LABEL_5;
      }
    }

    v9 = v6;
    v6 = a3;
  }

  else
  {
LABEL_5:
    v9 = a3;
  }

  if (*(v9 + 8))
  {
    v10 = 0;
    do
    {
      verifySubFileExists(a1, *(*v9 + 4 * v10++), a4);
    }

    while (v10 < *(v9 + 8));
  }

  if (*(v6 + 8))
  {
    v11 = 0;
    do
    {
      v12 = *(*v6 + 4 * v11);
      if (DFile::subFileExists(a1, v12))
      {
        if (*(a1 + 24))
        {
          v13 = *(a1 + 16);
        }

        else
        {
          v13 = &byte_262899963;
        }

        SubFileExtensionString = GetSubFileExtensionString(v12);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 62, "fileutil/envhold", 4, "%.500s %.500s %.500s", a4, v13, SubFileExtensionString);
      }

      ++v11;
    }

    while (v11 < *(v6 + 8));
  }
}

double verifySubFile1ImpliesSubFile2(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = a3;
  v6 = a2;
  if (DFile::subFileExists(a1, a2) && (DFile::subFileExists(a1, v5) & 1) == 0)
  {
    if (*(a1 + 24))
    {
      v9 = *(a1 + 16);
    }

    else
    {
      v9 = &byte_262899963;
    }

    SubFileExtensionString = GetSubFileExtensionString(v6);
    v11 = GetSubFileExtensionString(v5);
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 163, "fileutil/envhold", 2, "%.500s %.500s %.500s %.500s", a4, v9, SubFileExtensionString, v11);
  }

  return result;
}

double EnvHolder::errorIfFileObviouslyIsNotOfTypeSigProc(EnvHolder *this, DFile *a2)
{
  verifySubFileExistsAtMostOneOfDouble(this, 21, 22, "SigProc");
  verifySubFileExistsOneOfDouble(this, 87, 86, "SigProc");
  verifySubFileExistsAtMostOneOfDouble(this, 110, 108, "SigProc");
  verifySubFileExistsAtMostOneOfDouble(this, 17, 16, "SigProc");
  verifySubFileExistsAtMostOneOfDouble(this, 36, 35, "SigProc");
  verifySubFile1ImpliesSubFile2(this, 86, 82, "SigProc");
  verifySubFile1ImpliesSubFile2(this, 16, 82, "SigProc");

  return verifySubFile1ImpliesSubFile2(this, 35, 82, "SigProc");
}

double EnvHolder::errorIfFileObviouslyIsNotOfTypeVoc(EnvHolder *this, DFile *a2)
{
  verifySubFileExistsAtMostOneOfDouble(this, 21, 22, "Voc");
  verifySubFileExistsOneOfDouble(this, 62, 61, "Voc");
  verifySubFileExistsOneOfDouble(this, 98, 47, "Voc");
  verifySubFileExistsAtMostOneOfDouble(this, 97, 89, "Voc");
  verifySubFileExistsAtMostOneOfDouble(this, 97, 78, "Voc");
  verifySubFileExistsAtMostOneOfDouble(this, 91, 14, "Voc");
  verifySubFileExistsAtMostOneOfDouble(this, 90, 10, "Voc");
  verifySubFileExistsAtMostOneOfDouble(this, 58, 56, "Voc");
  verifySubFile1ImpliesSubFile2(this, 47, 105, "Voc");
  verifySubFile1ImpliesSubFile2(this, 78, 105, "Voc");
  verifySubFile1ImpliesSubFile2(this, 89, 105, "Voc");
  verifySubFile1ImpliesSubFile2(this, 22, 105, "Voc");
  verifySubFile1ImpliesSubFile2(this, 10, 105, "Voc");
  verifySubFile1ImpliesSubFile2(this, 14, 105, "Voc");

  return verifySubFile1ImpliesSubFile2(this, 56, 105, "Voc");
}

double verifySubFileExists(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = a2;
  if ((DFile::subFileExists(a1, a2) & 1) == 0)
  {
    if (*(a1 + 24))
    {
      v7 = *(a1 + 16);
    }

    else
    {
      v7 = &byte_262899963;
    }

    SubFileExtensionString = GetSubFileExtensionString(v4);
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 73, "fileutil/envhold", 3, "%.500s %.500s %.500s", a3, v7, SubFileExtensionString);
  }

  return result;
}

uint64_t EnvHolder::errorIfFileObviouslyIsNotOfTypeParamSetHolder(EnvHolder *this, DFile *a2)
{
  verifySubFileExistsAtMostOneOfDouble(this, 21, 22, "ParamSetHolder");
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
  v3 = v23;
  v5 = v24;
  v4 = HIDWORD(v24);
  *(v23 + 4 * v24) = 0;
  v6 = v5 + 1;
  LODWORD(v24) = v6;
  if (v6 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v6 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v6) = 11;
  v7 = v6 + 1;
  LODWORD(v24) = v7;
  if (v7 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v7 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v7) = 15;
  v8 = v7 + 1;
  LODWORD(v24) = v8;
  if (v8 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v8 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v8) = 33;
  v9 = v8 + 1;
  LODWORD(v24) = v9;
  if (v9 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v9 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v9) = 34;
  v10 = v9 + 1;
  LODWORD(v24) = v10;
  if (v10 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v10 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v10) = 55;
  v11 = v10 + 1;
  LODWORD(v24) = v11;
  if (v11 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v11 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v11) = 69;
  v12 = v11 + 1;
  LODWORD(v24) = v12;
  if (v12 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v12 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v12) = 60;
  v13 = v12 + 1;
  LODWORD(v24) = v13;
  if (v13 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v13 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v13) = 79;
  v14 = v13 + 1;
  LODWORD(v24) = v14;
  if (v14 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v3 = v23;
    v14 = v24;
    v4 = HIDWORD(v24);
  }

  *(v3 + 4 * v14) = 88;
  v15 = v14 + 1;
  LODWORD(v24) = v15;
  if (v15 == v4)
  {
    DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
    v15 = v24;
    v3 = v23;
  }

  *(v3 + 4 * v15) = 84;
  v16 = v15 + 1;
  LODWORD(v24) = v15 + 1;
  v17 = v22;
  if (v22 == HIDWORD(v22))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
    v17 = v22;
    v16 = v24;
  }

  *(v21 + 4 * v17) = 68;
  LODWORD(v22) = v17 + 1;
  v20[0] = 0;
  v20[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v20, &v23, 0, v16);
  v19[0] = 0;
  v19[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v19, &v21, 0, v22);
  verifySubFileSetExistsOneOfDouble(this, v20, v19, "ParamSetHolder");
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
  verifySubFile1ImpliesSubFile2(this, 68, 57, "ParamSetHolder");
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
}

void sub_26270FCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v12 - 32);
  _Unwind_Resume(a1);
}

void EnvHolder::loadEnvHolder(uint64_t a1, EnvHolder *a2, int a3)
{
  v15 = 0u;
  v16 = 0u;
  SnapTime::recordTime(&v15, 1, 1, 1, 1);
  v7 = 0;
  *(a1 + 12) = a3;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        EnvHolder::errorIfFileObviouslyIsNotOfTypeUser(a2, v6);
        v7 = 3;
      }
    }

    else
    {
      verifySubFileExistsAtMostOneOfDouble(a2, 21, 22, "EnvHolder");
      v7 = 6;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        EnvHolder::errorIfFileObviouslyIsNotOfTypeSigProc(a2, v6);
        v7 = 4;
        break;
      case 3:
        EnvHolder::errorIfFileObviouslyIsNotOfTypeVoc(a2, v6);
        v7 = 2;
        break;
      case 4:
        EnvHolder::errorIfFileObviouslyIsNotOfTypeParamSetHolder(a2, v6);
        v7 = 13;
        break;
    }
  }

  DFileChecksums::DFileChecksums(v14);
  DgnDelete<EnvMgr>(*a1);
  v8 = MemChunkAlloc(0x110uLL, 0);
  EnvMgr::EnvMgr(v8, v7);
  *a1 = v9;
  EnvMgr::loadEnvMgr(v9, a2, v14);
  EnvMgr::setSemanticType(*a1, 6);
  v11 = *a1;
  v10 = (a1 + 16);
  FileHistory::loadFileHistory(v10, a2, *(v11 + 264));
  v12 = 0u;
  v13 = 0u;
  SnapTime::recordTime(&v12, 1, 1, 1, 1);
  v12 = vsubq_s64(v12, v15);
  v13 = vsubq_s64(v13, v16);
  FileHistory::addEntryWithElapsedTime(v10, " loadEnvHolder time: ", &v12);
  if (!a3)
  {
    (*(*a2 + 80))(a2, "EnvHolder");
  }

  DFileChecksums::~DFileChecksums(v14);
}

void sub_26270FECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DFileChecksums::~DFileChecksums(va);
  _Unwind_Resume(a1);
}

void EnvHolder::saveEnvHolder(EnvMgr **a1, uint64_t a2, _DWORD *a3, int a4, int a5)
{
  v17 = 0u;
  v18 = 0u;
  SnapTime::recordTime(&v17, 1, 1, 1, 1);
  if (a4)
  {
    v10 = a4 != 2;
  }

  else
  {
    v10 = *(*a1 + 264);
  }

  DFileOwner::DFileOwner(v16);
  *a3 = 1;
  v11 = DFile::openDFile(a2, 1, 6, v16);
  *a3 = 2;
  DFileChecksums::DFileChecksums(v15);
  EnvMgr::saveEnvMgr(*a1, v11, v15, v10 & 1, a5);
  v13 = 0u;
  v14 = 0u;
  SnapTime::recordTime(&v13, 1, 1, 1, 1);
  v13 = vsubq_s64(v13, v17);
  v14 = vsubq_s64(v14, v18);
  FileHistory::addEntryWithElapsedTime((a1 + 2), " saveEnvHolder time: ", &v13);
  FileHistory::saveFileHistory((a1 + 2), v11, v10 & 1);
  DFileOwner::setRemoveFileOnDestruction(v16, 0);
  *a3 = 0;
  DFileChecksums::~DFileChecksums(v15);
  DFileOwner::~DFileOwner(v16, v12);
}

void sub_262710030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  DFileChecksums::~DFileChecksums(va);
  DFileOwner::~DFileOwner(va1, v12);
  _Unwind_Resume(a1);
}

void EnvHolder::printSize(EnvMgr **this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v29, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 451);
  if (v30)
  {
    v13 = v29;
  }

  else
  {
    v13 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &byte_262899963, a3, &byte_262899963, v13);
  DgnString::~DgnString(&v29);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &byte_262899963);
  v15 = *this;
  if (*this)
  {
    v28 = 0;
    v29 = 0;
    v16 = (a3 + 1);
    v27 = 0;
    EnvMgr::printSize(v15, 0xFFFFFFFFLL, v16, &v29, &v28, &v27);
    *a4 += v29;
    *a5 += v28;
    *a6 += v27;
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

  getShipObjectSizeDescription(&v29, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 452);
  if (v30)
  {
    v19 = v29;
  }

  else
  {
    v19 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, v16, &byte_262899963, (34 - a3), (34 - a3), v19, v17, v17, 0);
  DgnString::~DgnString(&v29);
  *a4 += v17;
  *a5 += v17;
  v20 = sizeObject((this + 2), 0);
  v21 = sizeObject((this + 2), 1);
  v22 = sizeObject((this + 2), 3);
  getShipObjectSizeDescription(&v29, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 453);
  if (v30)
  {
    v24 = v29;
  }

  else
  {
    v24 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v16, &byte_262899963, (34 - a3), (34 - a3), v24, v20, v21, v22);
  DgnString::~DgnString(&v29);
  *a4 += v20;
  *a5 += v21;
  *a6 += v22;
  getShipObjectSizeDescription(&v29, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 454);
  if (v30)
  {
    v26 = v29;
  }

  else
  {
    v26 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, a3, &byte_262899963, (35 - a3), (35 - a3), v26, *a4, *a5, *a6);
  DgnString::~DgnString(&v29);
}

void sub_26271031C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

double EnvHolderMgr::startupEnvHolderMgr(EnvHolderMgr *this)
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
  EnvHolderMgr::smpEnvHolderMgr = v1;
  return result;
}

uint64_t EnvHolderMgr::getEnvHolder(EnvHolderMgr *this, unsigned int a2)
{
  if (*(this + 2) <= a2 || (result = *(*this + 8 * a2)) == 0)
  {
    v4 = a2;
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 500, "fileutil/envhold", 1, "%u", a2);
    return *(*this + 8 * v4);
  }

  return result;
}

uint64_t EnvHolderMgr::newEnvHolder(EnvHolderMgr *this)
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

  v4 = MemChunkAlloc(0x28uLL, 0);
  EnvHolder::EnvHolder(v4, NextId);
  *(*this + 8 * NextId) = v5;
  return NextId;
}

void EnvHolderMgr::deleteEnvHolder(EnvHolderMgr *this, unsigned int a2)
{
  EnvHolder = EnvHolderMgr::getEnvHolder(this, a2);
  DgnDelete<EnvHolder>(EnvHolder);
  *(*this + 8 * a2) = 0;

  IdMgr<unsigned int>::recycleId(this + 4, a2);
}

EnvMgr **DgnDelete<EnvHolder>(EnvMgr **result)
{
  if (result)
  {
    EnvHolder::~EnvHolder(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t EnvHolderMgr::loadEnvHolder(uint64_t a1, EnvHolder *a2, int a3)
{
  NextId = IdMgr<unsigned int>::getNextId((a1 + 16));
  for (i = *(a1 + 8); i <= NextId; *(a1 + 8) = i)
  {
    if (i == *(a1 + 12))
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
      i = *(a1 + 8);
    }

    *(*a1 + 8 * i++) = 0;
  }

  v8 = MemChunkAlloc(0x28uLL, 0);
  EnvHolder::EnvHolder(v8, NextId);
  EnvHolder::loadEnvHolder(v9, a2, a3);
  *(*a1 + 8 * NextId) = v8;
  return NextId;
}

void EnvHolderMgr::saveEnvHolder(EnvHolderMgr *a1, unsigned int a2, uint64_t a3, _DWORD *a4, int a5, int a6)
{
  EnvHolder = EnvHolderMgr::getEnvHolder(a1, a2);

  EnvHolder::saveEnvHolder(EnvHolder, a3, a4, a5, a6);
}

void EnvHolderMgr::printSize(EnvHolderMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 557);
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
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 558);
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
      v23 = *(*this + 8 * v19);
      if (v23)
      {
        v48 = 0;
        v49 = 0;
        v47 = 0;
        EnvHolder::printSize(v23, v19, (a3 + 2), &v49, &v48, &v47);
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
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 558);
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

  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 560);
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
  getShipObjectSizeDescription(&v49, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fileutil/envhold.cpp", 561);
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

void sub_2627109C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void TGrammarManager2::TGrammarManager2(TGrammarManager2 *this, TInputStream *a2, const TTagManager *a3, TLexicon *a4, TItnParamManager *a5)
{
  *this = &unk_287523E50;
  *(this + 2) = &unk_287523E50;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 8) = -1;
  *(this + 7) = a5;
  *(this + 4) = a4;
  operator new();
}

uint64_t callBackThousandSeparator(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 - 5 < 0xFFFFFFFFFFFFFFFELL || *a1 > 1uLL || a1[2] > 1uLL || a1[4] > 1uLL || a2 == 4 && a1[6] > 1uLL)
  {
    return 0;
  }

  v9 = a1[1];
  v10 = a1[3];
  v11 = a1[5];
  v12 = wcslen(v9);
  v47 = 0;
  {
    operator new();
  }

  v13 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11, &v47);
  if (v47)
  {
    return 0;
  }

  v16 = v13;
  v43 = v45;
  v44 = xmmword_26286B6F0;
  v46 = 1;
  if (a2 < 4)
  {
    GrammarValue = TStringParam::getGrammarValue((*(a3 + 336) + 15664), 1, &v43);
  }

  else
  {
    GrammarValue = TBuffer<wchar_t>::assign(&v43, a1[7]);
  }

  if (*(&v44 + 1) != 1)
  {
    v26 = TBuffer<wchar_t>::c_str(&v43);
    loggableUnicode(v26, __p);
    if (v42 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    goto LABEL_45;
  }

  v18 = *v43;
  GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(GrammarValue);
  if (v18 >= 48)
  {
    if (v18 < 0x3A || v18 >= 0x660 && (GlobalLocaleInfo = TLocaleInfo::getDigitExtended(GlobalLocaleInfo, v18), GlobalLocaleInfo != -1))
    {
      v20 = *v43;
      v21 = TLocaleInfo::getGlobalLocaleInfo(GlobalLocaleInfo);
      DigitExtended = v20 - 48;
      if (v20 >= 48)
      {
        if (v20 <= 0x39)
        {
LABEL_23:
          if (DigitExtended <= 1)
          {
            v23 = TBuffer<wchar_t>::c_str(&v43);
            loggableUnicode(v23, __p);
            if (v42 >= 0)
            {
              v25 = __p;
            }

            else
            {
              v25 = __p[0];
            }

LABEL_45:
            tknPrintf("Error: <%s> : The digitGrouping argument passed to $AddThousandSeparator() must be a single digit greater than 1 or the letter 'I'.\n", v24, v25);
            if (v42 < 0)
            {
              operator delete(__p[0]);
            }

            v14 = 0;
            goto LABEL_48;
          }

          v29 = DigitExtended;
LABEL_56:
          v14 = 1;
          if (*v10 && v12 > v16)
          {
            v27 = 0;
            v31 = v12 / v29;
            if (v12 % v29)
            {
              v28 = v12 % v29;
            }

            else
            {
              v28 = v29;
            }

LABEL_61:
            v35 = v12 + wcslen(v10) * v31 + 1;
            if (v35 >> 62)
            {
              v36 = -1;
            }

            else
            {
              v36 = 4 * v35;
            }

            v37 = TAllocator::allocate(a5, v36);
            v38 = v37;
            if (*v9)
            {
              v39 = 0;
              v38 = v37;
              do
              {
                if (v28 == (v39 * 4) >> 2)
                {
                  wcscpy(v38, v10);
                  v38 += wcslen(v38);
                  if (v27)
                  {
                    if ((v12 - v28) % v29 == 3)
                    {
                      v28 += 3;
                    }

                    else
                    {
                      v28 += 2;
                    }
                  }

                  else
                  {
                    v28 += v29;
                  }
                }

                *v38++ = v9[v39];
              }

              while (v9[++v39]);
            }

            *v38 = 0;
            v14 = 1;
            goto LABEL_48;
          }

          goto LABEL_48;
        }

        if (v20 >= 0x660)
        {
          DigitExtended = TLocaleInfo::getDigitExtended(v21, v20);
          goto LABEL_23;
        }
      }

      v29 = -1;
      goto LABEL_56;
    }
  }

  if (*v43 != 73)
  {
    v33 = TBuffer<wchar_t>::c_str(&v43);
    loggableUnicode(v33, __p);
    if (v42 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    goto LABEL_45;
  }

  v14 = 1;
  if (*v10 && v12 > v16)
  {
    v27 = 1;
    v28 = 2;
    v29 = 7;
    v30 = v12 % 7;
    v31 = 3 * (v12 / 7) + v12 % 7 / 3;
    if (v12 % 7)
    {
      if (((v12 % 7) & 5) == 4)
      {
        v32 = 1;
      }

      else
      {
        v32 = v12 % 7;
      }

      if (v30 != 5)
      {
        v29 = 7;
      }

      v27 = 1;
      if (v30 != 5)
      {
        v28 = v32;
      }
    }

    goto LABEL_61;
  }

LABEL_48:
  if (v46 == 1 && v43 != v45 && v43 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  return v14;
}

{
  if (a2 - 5 < 0xFFFFFFFFFFFFFFFELL || *a1 > 1uLL || a1[2] > 1uLL || a1[4] > 1uLL || a2 == 4 && a1[6] > 1uLL)
  {
    return 0;
  }

  v9 = a1[1];
  v10 = a1[3];
  v11 = a1[5];
  v12 = wcslen(v9);
  v47 = 0;
  {
    operator new();
  }

  v13 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11, &v47);
  if (v47)
  {
    return 0;
  }

  v16 = v13;
  v43 = v45;
  v44 = xmmword_26286B6F0;
  v46 = 1;
  if (a2 < 4)
  {
    GrammarValue = TStringParam::getGrammarValue((*(a3 + 336) + 15664), 1, &v43);
  }

  else
  {
    GrammarValue = TBuffer<wchar_t>::assign(&v43, a1[7]);
  }

  if (*(&v44 + 1) != 1)
  {
    v26 = TBuffer<wchar_t>::c_str(&v43);
    loggableUnicode(v26, __p);
    if (v42 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    goto LABEL_45;
  }

  v18 = *v43;
  GlobalLocaleInfo = TLocaleInfo::getGlobalLocaleInfo(GrammarValue);
  if (v18 >= 48)
  {
    if (v18 < 0x3A || v18 >= 0x660 && (GlobalLocaleInfo = TLocaleInfo::getDigitExtended(GlobalLocaleInfo, v18), GlobalLocaleInfo != -1))
    {
      v20 = *v43;
      v21 = TLocaleInfo::getGlobalLocaleInfo(GlobalLocaleInfo);
      DigitExtended = v20 - 48;
      if (v20 >= 48)
      {
        if (v20 <= 0x39)
        {
LABEL_23:
          if (DigitExtended <= 1)
          {
            v23 = TBuffer<wchar_t>::c_str(&v43);
            loggableUnicode(v23, __p);
            if (v42 >= 0)
            {
              v25 = __p;
            }

            else
            {
              v25 = __p[0];
            }

LABEL_45:
            tknPrintf("Error: <%s> : The digitGrouping argument passed to $AddThousandSeparator() must be a single digit greater than 1 or the letter 'I'.\n", v24, v25);
            if (v42 < 0)
            {
              operator delete(__p[0]);
            }

            v14 = 0;
            goto LABEL_48;
          }

          v29 = DigitExtended;
LABEL_56:
          v14 = 1;
          if (*v10 && v12 > v16)
          {
            v27 = 0;
            v31 = v12 / v29;
            if (v12 % v29)
            {
              v28 = v12 % v29;
            }

            else
            {
              v28 = v29;
            }

LABEL_61:
            v35 = v12 + wcslen(v10) * v31 + 1;
            if (v35 >> 62)
            {
              v36 = -1;
            }

            else
            {
              v36 = 4 * v35;
            }

            v37 = TAllocator::allocate(a5, v36);
            v38 = v37;
            if (*v9)
            {
              v39 = 0;
              v38 = v37;
              do
              {
                if (v28 == (v39 * 4) >> 2)
                {
                  wcscpy(v38, v10);
                  v38 += wcslen(v38);
                  if (v27)
                  {
                    if ((v12 - v28) % v29 == 3)
                    {
                      v28 += 3;
                    }

                    else
                    {
                      v28 += 2;
                    }
                  }

                  else
                  {
                    v28 += v29;
                  }
                }

                *v38++ = v9[v39];
              }

              while (v9[++v39]);
            }

            *v38 = 0;
            v14 = 1;
            goto LABEL_48;
          }

          goto LABEL_48;
        }

        if (v20 >= 0x660)
        {
          DigitExtended = TLocaleInfo::getDigitExtended(v21, v20);
          goto LABEL_23;
        }
      }

      v29 = -1;
      goto LABEL_56;
    }
  }

  if (*v43 != 73)
  {
    v33 = TBuffer<wchar_t>::c_str(&v43);
    loggableUnicode(v33, __p);
    if (v42 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    goto LABEL_45;
  }

  v14 = 1;
  if (*v10 && v12 > v16)
  {
    v27 = 1;
    v28 = 2;
    v29 = 7;
    v30 = v12 % 7;
    v31 = 3 * (v12 / 7) + v12 % 7 / 3;
    if (v12 % 7)
    {
      if (((v12 % 7) & 5) == 4)
      {
        v32 = 1;
      }

      else
      {
        v32 = v12 % 7;
      }

      if (v30 != 5)
      {
        v29 = 7;
      }

      v27 = 1;
      if (v30 != 5)
      {
        v28 = v32;
      }
    }

    goto LABEL_61;
  }

LABEL_48:
  if (v46 == 1 && v43 != v45 && v43 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  return v14;
}

void sub_262711BA0(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t callBackToken(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  v10 = wcslen(v9);
  if (v10)
  {
    v11 = v10;
    if (TLexicon::checkName(a3, v9, 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      loggableUnicode(*(a1 + 8), &__p);
      if (v20 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      tknPrintf("Warning: $Token('%s') : The formatter adaptation grammar constructed an invalid token.\n", v12, p_p);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p);
      }

      return 0;
    }

    if ((v11 + 9) >> 62)
    {
      v14 = -1;
    }

    else
    {
      v14 = 4 * (v11 + 9);
    }

    __p = TAllocator::allocate(a5, v14);
    v19 = v11 + 9;
    v20 = 0;
    v22 = 0;
    TBuffer<wchar_t>::assign(&__p, dword_26288A86C);
    v15 = 0;
    v16 = *(a1 + 8);
      ;
    }

    TBuffer<wchar_t>::insert(&__p, v20, v16, v15 - 1);
    TBuffer<wchar_t>::insert(&__p, v20, &unk_26288A88C, 1uLL);
    if (v20 >= v19)
    {
      if (v22)
      {
        v23 = 0;
        TBuffer<wchar_t>::insert(&__p, v20--, &v23, 1uLL);
      }

      else if (v19)
      {
        *(__p + v19 - 1) = 0;
      }
    }

    else
    {
      *(__p + v20) = 0;
    }

    if (v22 == 1 && __p != &v21 && __p)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  return 1;
}

void sub_262711E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t callBackAlt(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, TAllocator *a5)
{
  if (!a2 || *a1 > 1uLL)
  {
    return 0;
  }

  if (a2 != 1)
  {
    v19 = v21;
    v20 = xmmword_26286B6F0;
    v22 = 1;
    TBuffer<wchar_t>::assign(&v19, dword_26288A944);
    v9 = 0;
    v10 = a1[1];
      ;
    }

    TBuffer<wchar_t>::insert(&v19, *(&v20 + 1), v10, v9 - 1);
    v12 = 1;
    do
    {
      TBuffer<wchar_t>::insert(&v19, *(&v20 + 1), dword_26288A95C, 5uLL);
      v13 = 0;
      v14 = a1[2 * v12 + 1];
        ;
      }

      TBuffer<wchar_t>::insert(&v19, *(&v20 + 1), v14, v13 - 1);
      ++v12;
    }

    while (v12 != a2);
    TBuffer<wchar_t>::insert(&v19, *(&v20 + 1), dword_26288A974, 6uLL);
    if ((*(&v20 + 1) + 1) >> 62)
    {
      v16 = -1;
    }

    else
    {
      v16 = 4 * (*(&v20 + 1) + 1);
    }

    v17 = TAllocator::allocate(a5, v16);
    if (*(&v20 + 1) >= v20)
    {
      if (v22)
      {
        v23 = 0;
        TBuffer<wchar_t>::insert(&v19, *(&v20 + 1), &v23, 1uLL);
        v18 = v19;
        --*(&v20 + 1);
      }

      else
      {
        v18 = v19;
        if (v20)
        {
          v19[v20 - 1] = 0;
        }
      }
    }

    else
    {
      v18 = v19;
      v19[*(&v20 + 1)] = 0;
    }

    wcscpy(v17, v18);
    if (v22 == 1 && v19 != v21)
    {
      if (v19)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  return 1;
}

void sub_262712050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10 && a10 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t callBackTag(uint64_t a1, uint64_t a2, __int32 *a3, uint64_t a4, TAllocator *a5)
{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v9 = wcslen(*(a1 + 8));
  if (v9)
  {
    v10 = v9;
    v11 = a3;
    if (*(a3 + 23) < 0)
    {
      v11 = *a3;
    }

    v12 = v10 + wcslen(v11) + 4;
    if (v12 >> 62)
    {
      v13 = -1;
    }

    else
    {
      v13 = 4 * v12;
    }

    v19 = TAllocator::allocate(a5, v13);
    v20 = v12;
    v21 = 0;
    v23 = 0;
    TBuffer<wchar_t>::assign(&v19, &unk_26288A990);
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v14 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v19, v21, a3, v14 - 1);
    TBuffer<wchar_t>::insert(&v19, v21, &unk_26288A998, 1uLL);
    v16 = 0;
    v17 = *(a1 + 8);
      ;
    }

    TBuffer<wchar_t>::insert(&v19, v21, v17, v16 - 1);
    TBuffer<wchar_t>::insert(&v19, v21, &unk_26288A88C, 1uLL);
    if (v21 >= v20)
    {
      if (v23)
      {
        v24 = 0;
        TBuffer<wchar_t>::insert(&v19, v21--, &v24, 1uLL);
      }

      else if (v20)
      {
        *(v19 + v20 - 1) = 0;
      }
    }

    else
    {
      *(v19 + v21) = 0;
    }

    if (v23 == 1 && v19 != &v22)
    {
      if (v19)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  return 1;
}

{
  if (a2 != 1 || *a1 > 1uLL)
  {
    return 0;
  }

  v9 = wcslen(*(a1 + 8));
  if (v9)
  {
    v10 = v9;
    v11 = a3;
    if (*(a3 + 23) < 0)
    {
      v11 = *a3;
    }

    v12 = v10 + wcslen(v11) + 4;
    if (v12 >> 62)
    {
      v13 = -1;
    }

    else
    {
      v13 = 4 * v12;
    }

    v19 = TAllocator::allocate(a5, v13);
    v20 = v12;
    v21 = 0;
    v23 = 0;
    TBuffer<wchar_t>::assign(&v19, &unk_26288FE60);
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    v14 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v19, v21, a3, v14 - 1);
    TBuffer<wchar_t>::insert(&v19, v21, &unk_26288FE68, 1uLL);
    v16 = 0;
    v17 = *(a1 + 8);
      ;
    }

    TBuffer<wchar_t>::insert(&v19, v21, v17, v16 - 1);
    TBuffer<wchar_t>::insert(&v19, v21, &unk_26288FDA8, 1uLL);
    if (v21 >= v20)
    {
      if (v23)
      {
        v24 = 0;
        TBuffer<wchar_t>::insert(&v19, v21--, &v24, 1uLL);
      }

      else if (v20)
      {
        *(v19 + v20 - 1) = 0;
      }
    }

    else
    {
      *(v19 + v21) = 0;
    }

    if (v23 == 1 && v19 != &v22)
    {
      if (v19)
      {
        MEMORY[0x26672B1B0]();
      }
    }
  }

  return 1;
}

void sub_262712278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (LOBYTE(STACK[0x420]) == 1)
  {
    callBackSync(va);
  }

  _Unwind_Resume(a1);
}

uint64_t callBackParam2(uint64_t a1, unint64_t a2, unsigned int *lpsrc, uint64_t *a4, TAllocator *a5)
{
  v7 = a1;
  if (!a2)
  {
    return callBackParam(a1, 0, lpsrc, a4, a5);
  }

  v8 = a2;
  v9 = lpsrc[2];
  if (v9)
  {
    if (v9 == 4)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((v10[164] - v10[163]) >> 3);
      if (v8)
      {
        goto LABEL_67;
      }

      goto LABEL_8;
    }

    v11 = 0;
    v10 = 0;
    if (v8)
    {
LABEL_67:
      v45 = lpsrc + 4;
      if (*(lpsrc + 39) < 0)
      {
        v45 = *v45;
      }

      loggableUnicode(v45, &v70);
      if (v71 >= 0)
      {
        v47 = &v70;
      }

      else
      {
        v47 = v70;
      }

      tknPrintf("Error: $Param%s() must have an even number of arguments.\n", v46, v47);
      if (SHIBYTE(v71) < 0)
      {
        operator delete(v70);
      }

      return 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = 2;
    if (v8)
    {
      goto LABEL_67;
    }
  }

LABEL_8:
  v62 = a5;
  LOBYTE(v70) = 0;
  std::vector<BOOL>::vector(&v74, v11, &v70);
  v70 = v72;
  v71 = xmmword_26286B6F0;
  v73 = 1;
  TBuffer<wchar_t>::assign(&v70, dword_26288A944);
  v13 = 0;
  if (v10)
  {
    v14 = 83;
  }

  else
  {
    v14 = 66;
  }

  v15 = lpsrc + 4;
  v64 = v10;
  v63 = v14;
  do
  {
    v16 = (v7 + 16 * v13);
    if (*v16 > 1uLL)
    {
      goto LABEL_57;
    }

    v17 = v16 + 2;
    if (v16[2] > 1uLL)
    {
      goto LABEL_57;
    }

    if (v13)
    {
      TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), dword_26288A95C, 5uLL);
    }

    TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), dword_26288A9A0, 7uLL);
    LODWORD(v68[0]) = v14;
    TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v68, 1uLL);
    v18 = v15;
    if (*(lpsrc + 39) < 0)
    {
      v18 = *v15;
    }

    v19 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v18, v19 - 1);
    TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), &unk_26288A998, 1uLL);
    v21 = v16[1];
    if (v10)
    {
      v22 = v13;
      v23 = v8;
      v24 = v7;
      v25 = v15;
      v26 = v10[163];
      v27 = v10[164] - v26;
      if (!v27)
      {
LABEL_45:
        if (*(lpsrc + 39) < 0)
        {
          v25 = *v25;
        }

        loggableUnicode(v25, v68);
        v39 = v69;
        v40 = v68[0];
        loggableUnicode(v21, __p);
        v42 = v68;
        if (v39 < 0)
        {
          v42 = v40;
        }

        if (v67 >= 0)
        {
          v43 = __p;
        }

        else
        {
          v43 = __p[0];
        }

        tknPrintf("Error: $Param%s(): Value is invalid, was '%s', expected an allowable string.\n", v41, v42, v43);
LABEL_53:
        if (v67 < 0)
        {
          operator delete(__p[0]);
        }

        if (v69 < 0)
        {
          operator delete(v68[0]);
        }

LABEL_57:
        v12 = 0;
        goto LABEL_58;
      }

      v28 = 0;
      v29 = 0xAAAAAAAAAAAAAAABLL * (v27 >> 3);
      if (v29 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      while (1)
      {
        v31 = v26;
        if (*(v26 + 23) < 0)
        {
          v31 = *v26;
        }

        if (!wcscmp(v21, v31))
        {
          break;
        }

        ++v28;
        v26 += 24;
        if (v30 == v28)
        {
          goto LABEL_45;
        }
      }

      v15 = v25;
      v7 = v24;
      v8 = v23;
      v13 = v22;
      v14 = v63;
    }

    else
    {
      v65 = 0;
      {
        operator new();
      }

      v32 = TLocaleInfo::stringToBool(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v21, &v65);
      if (v65)
      {
        if (*(lpsrc + 39) < 0)
        {
          v15 = *v15;
        }

        loggableUnicode(v15, v68);
        v57 = v69;
        v58 = v68[0];
        loggableUnicode(v21, __p);
        v60 = v68;
        if (v57 < 0)
        {
          v60 = v58;
        }

        if (v67 >= 0)
        {
          v61 = __p;
        }

        else
        {
          v61 = __p[0];
        }

        tknPrintf("Error: $Param%s(): Value is invalid, was '%s', expected a BOOLean.\n", v59, v60, v61);
        goto LABEL_53;
      }

      v28 = v32;
      if (v32)
      {
        v21 = &unk_26288A9C0;
      }

      else
      {
        v21 = &unk_26288A9C8;
      }
    }

    v33 = v74[v28 >> 6];
    if ((v33 & (1 << v28)) != 0)
    {
      if (*(lpsrc + 39) < 0)
      {
        v15 = *v15;
      }

      loggableUnicode(v15, v68);
      v49 = v69;
      v50 = v68[0];
      loggableUnicode(v21, __p);
      v52 = v68;
      if (v49 < 0)
      {
        v52 = v50;
      }

      if (v67 >= 0)
      {
        v53 = __p;
      }

      else
      {
        v53 = __p[0];
      }

      tknPrintf("Error: $Param%s(): Value '%s' has already been specified.\n", v51, v52, v53);
      goto LABEL_53;
    }

    v34 = 0;
    v74[v28 >> 6] = v33 | (1 << v28);
      ;
    }

    TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v21, v34 - 1);
    v10 = v64;
    TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), &unk_26288A88C, 1uLL);
    v36 = 0;
    v37 = v17[1];
      ;
    }

    TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v37, v36 - 1);
    v13 += 2;
  }

  while (v13 < v8);
  TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), dword_26288A974, 6uLL);
  if ((*(&v71 + 1) + 1) >> 62)
  {
    v54 = -1;
  }

  else
  {
    v54 = 4 * (*(&v71 + 1) + 1);
  }

  v55 = TAllocator::allocate(v62, v54);
  if (*(&v71 + 1) >= v71)
  {
    if (v73)
    {
      LODWORD(v68[0]) = 0;
      TBuffer<wchar_t>::insert(&v70, *(&v71 + 1), v68, 1uLL);
      v56 = v70;
      --*(&v71 + 1);
    }

    else
    {
      v56 = v70;
      if (v71)
      {
        *(v70 + v71 - 1) = 0;
      }
    }
  }

  else
  {
    v56 = v70;
    *(v70 + *(&v71 + 1)) = 0;
  }

  wcscpy(v55, v56);
  v12 = 1;
LABEL_58:
  if (v73 == 1 && v70 != v72 && v70 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v74)
  {
    operator delete(v74);
  }

  return v12;
}

void sub_262712914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  MEMORY[0x26672B1B0](a11, 0x1070C40ADD13FEBLL, a3, a4, a5, a6, a7, a8);
  if (LOBYTE(STACK[0x488]) == 1 && a23 != a13 && a23)
  {
    MEMORY[0x26672B1B0]();
  }

  if (*v23)
  {
    operator delete(*v23);
  }

  _Unwind_Resume(a1);
}

uint64_t TGrammarManager2::freeMemory(TGrammarManager2 *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    TParser::~TParser(v2);
    MEMORY[0x26672B1B0]();
  }

  result = *(this + 5);
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

TAllocator *TGrammarManager2::clearResult(TGrammarManager2 *this)
{
  v1 = *(this + 6);
  v3 = *(v1 + 48);
  result = (v1 + 48);
  if (v3 >= 0x801)
  {
    return TAllocator::clear(result);
  }

  return result;
}

void TWideChartSeeder2::makeTerminals(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, uint64_t a5, TAllocator *a6)
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16) + a2;
  if (v6 < *(a1 + 24))
  {
    v8 = **(a1 + 8);
    if (v6 < 0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 8) + 8) - v8) >> 4) && (!a2 || (*(v8 + 112 * v6 + 32) & 1) == 0))
    {
      v52 = v54;
      v53 = xmmword_26286B6F0;
      v55 = 1;
      TWord::getTokenName(*(v8 + 112 * v6 + 16), &v52);
      v15 = *a3;
      v14 = a3[1];
      v16 = *(a1 + 32);
      if (*(&v53 + 1) >= v53)
      {
        if (v55)
        {
          LODWORD(v48) = 0;
          TBuffer<wchar_t>::insert(&v52, *(&v53 + 1), &v48, 1uLL);
          v17 = v52;
          --*(&v53 + 1);
        }

        else
        {
          v17 = v52;
          if (v53)
          {
            v52[v53 - 1] = 0;
          }
        }
      }

      else
      {
        v17 = v52;
        v52[*(&v53 + 1)] = 0;
      }

      TGrammar::getTerminals(v16, v17, a3);
      v18 = v14 - v15;
      if (a3[1] - *a3 != v18)
      {
        if ((*(&v53 + 1) + 1) >> 62)
        {
          v19 = -1;
        }

        else
        {
          v19 = 4 * (*(&v53 + 1) + 1);
        }

        v20 = TAllocator::allocate(a6, v19);
        if (*(&v53 + 1) >= v53)
        {
          if (v55)
          {
            LODWORD(v48) = 0;
            TBuffer<wchar_t>::insert(&v52, *(&v53 + 1), &v48, 1uLL);
            v21 = v52;
            --*(&v53 + 1);
          }

          else
          {
            v21 = v52;
            if (v53)
            {
              v52[v53 - 1] = 0;
            }
          }
        }

        else
        {
          v21 = v52;
          v52[*(&v53 + 1)] = 0;
        }

        wcscpy(v20, v21);
        v48 = v50;
        v49 = xmmword_26286B6F0;
        v51 = 1;
        TWord::getOptionalTagBits(*(**(a1 + 8) + 112 * *(a1 + 16) + 112 * a2 + 16), &v48);
        if ((*(&v49 + 1) + 1) >> 62)
        {
          v22 = -1;
        }

        else
        {
          v22 = 4 * (*(&v49 + 1) + 1);
        }

        v23 = TAllocator::allocate(a6, v22);
        if (*(&v49 + 1) >= v49)
        {
          if (v51)
          {
            LODWORD(v57) = 0;
            TBuffer<wchar_t>::insert(&v48, *(&v49 + 1), &v57, 1uLL);
            v24 = v48;
            --*(&v49 + 1);
          }

          else
          {
            v24 = v48;
            if (v49)
            {
              v48[v49 - 1] = 0;
            }
          }
        }

        else
        {
          v24 = v48;
          v48[*(&v49 + 1)] = 0;
        }

        wcscpy(v23, v24);
        *&v57 = 1;
        *(&v57 + 1) = v20;
        v58 = 1;
        v59 = v23;
        v56 = xmmword_279B3E8E8;
        if (v18 < (a3[1] - *a3))
        {
          v25 = v18 >> 3;
          do
          {
            ClientData = TGrammarCompiler::makeClientData(&v56, &v57, 2, a6);
            v28 = *(a5 + 8);
            v27 = *(a5 + 16);
            if (v28 >= v27)
            {
              v30 = (v28 - *a5) >> 3;
              if ((v30 + 1) >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v31 = v27 - *a5;
              v32 = v31 >> 2;
              if (v31 >> 2 <= (v30 + 1))
              {
                v32 = v30 + 1;
              }

              if (v31 >= 0x7FFFFFFFFFFFFFF8)
              {
                v33 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v33 = v32;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a5, v33);
              }

              v34 = (8 * v30);
              *v34 = ClientData;
              v29 = 8 * v30 + 8;
              v35 = *(a5 + 8) - *a5;
              v36 = v34 - v35;
              memcpy(v34 - v35, *a5, v35);
              v37 = *a5;
              *a5 = v36;
              *(a5 + 8) = v29;
              *(a5 + 16) = 0;
              if (v37)
              {
                operator delete(v37);
              }
            }

            else
            {
              *v28 = ClientData;
              v29 = (v28 + 1);
            }

            *(a5 + 8) = v29;
            v39 = a4[1];
            v38 = a4[2];
            if (v39 >= v38)
            {
              v41 = *a4;
              v42 = v39 - *a4;
              v43 = v42 >> 3;
              v44 = (v42 >> 3) + 1;
              if (v44 >> 61)
              {
                std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
              }

              v45 = v38 - v41;
              if (v45 >> 2 > v44)
              {
                v44 = v45 >> 2;
              }

              if (v45 >= 0x7FFFFFFFFFFFFFF8)
              {
                v46 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v46 = v44;
              }

              if (v46)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a4, v46);
              }

              *(8 * v43) = 1;
              v40 = (8 * v43 + 8);
              memcpy(0, v41, v42);
              v47 = *a4;
              *a4 = 0;
              a4[1] = v40;
              a4[2] = 0;
              if (v47)
              {
                operator delete(v47);
              }
            }

            else
            {
              *v39 = 1;
              v40 = v39 + 8;
            }

            a4[1] = v40;
            ++v25;
          }

          while (v25 < (a3[1] - *a3) >> 3);
        }

        if (v51 == 1 && v48 != v50 && v48)
        {
          MEMORY[0x26672B1B0]();
        }
      }

      if (v55 == 1 && v52 != v54)
      {
        if (v52)
        {
          MEMORY[0x26672B1B0]();
        }
      }
    }
  }
}

void sub_262712FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (LOBYTE(STACK[0x448]) == 1 && a15 != a10 && a15 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x868]) == 1)
  {
    v17 = STACK[0x450];
    if (STACK[0x450] != a14)
    {
      if (v17)
      {
        MEMORY[0x26672B1B0](v17, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TGrammarManager2::getLMScore(uint64_t a1, __int32 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v44[97] = *MEMORY[0x277D85DE8];
  v9 = a4;
  if (a4)
  {
    v10 = a4 - 1;
    if (a4 != 1 && TWord::getWordSpec(*(*a3 + 112 * a4 - 208)) != -1 && TWord::getWordSpec(*(*a3 + 112 * a4 - 96)) != -1)
    {
      v11 = v44;
      WordSpec = TWord::getWordSpec(*(*a3 + 112 * (a4 - 2) + 16));
      v43[0] = v12;
      v43[1] = TWord::getWordSpec(*(*a3 + 112 * v10 + 16));
      v9 = 2;
LABEL_8:
      *v11 = v13;
      goto LABEL_10;
    }

    if (TWord::getWordSpec(*(*a3 + 112 * a4 - 96)) != -1)
    {
      v11 = v43;
      WordSpec = TWord::getWordSpec(*(*a3 + 112 * v10 + 16));
      v9 = 1;
      goto LABEL_8;
    }

    v9 = 0;
  }

LABEL_10:
  v37 = v39;
  v38 = xmmword_26286B6F0;
  v40 = 1;
  if (*a2)
  {
    v14 = &v43[2 * v9];
    while (!wcsncmp(a2, dword_26288A86C, 7uLL))
    {
      v15 = a2 + 7;
      v16 = wcsstr(a2 + 7, &unk_26288A88C);
      TBuffer<wchar_t>::resize(&v37, 0);
      TBuffer<wchar_t>::insert(&v37, 0, v15, v16 - v15);
      v17 = *(a1 + 32);
      if (*(&v38 + 1) >= v38)
      {
        if (v40)
        {
          v41[0] = 0;
          TBuffer<wchar_t>::insert(&v37, *(&v38 + 1), v41, 1uLL);
          v18 = v37;
          --*(&v38 + 1);
        }

        else
        {
          v18 = v37;
          if (v38)
          {
            v37[v38 - 1] = 0;
          }
        }
      }

      else
      {
        v18 = v37;
        v37[*(&v38 + 1)] = 0;
      }

      HeadClone = TLexicon::findHeadClone(v17, v18);
      if (!HeadClone)
      {
        break;
      }

      ++v9;
      *(v14 - 1) = TWord::getWordSpec(HeadClone);
      *v14 = v20;
      v21 = v16[1];
      a2 = v16 + 1;
      v14 += 2;
      if (!v21)
      {
        goto LABEL_21;
      }
    }

    v31 = 0;
  }

  else
  {
LABEL_21:
    v22 = a5 + a4;
    v23 = *a3;
    if (a5 + a4 < (0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4)))
    {
      v24 = 112 * v22 + 16;
      v25 = &v43[2 * v9];
      v26 = v22 + 1;
      v27 = 1;
      do
      {
        if (TWord::getWordSpec(*(v23 + v24)) == -1)
        {
          break;
        }

        v28 = TWord::getWordSpec(*(*a3 + v24));
        v23 = *a3;
        v29 = (v26 < 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 4)) & v27;
        ++v9;
        *(v25 - 1) = v28;
        *v25 = v30;
        v24 += 112;
        v25 += 2;
        ++v26;
        v27 = 0;
      }

      while ((v29 & 1) != 0);
    }

    SDLm_LmScore(0, 0, 0, 0, 0, &WordSpec, v9, v41, v9, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    v31 = 0;
    if (v9)
    {
      v32 = v41;
      do
      {
        v33 = *v32++;
        v31 = (v33 + v31);
        --v9;
      }

      while (v9);
    }
  }

  if (v40 == 1 && v37 != v39 && v37 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  return v31;
}