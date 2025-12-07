void sub_2625FBEF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<DgnCollArray<unsigned int,WordList>>(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v9[0] = 0;
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 0;
  if (a2 != 3)
  {
    v2 = (gShadowDiagnosticShowIdealizedObjectSizes & 1) != 0 ? 12 : 16;
    if ((a2 & 0xFFFFFFFE) != 2)
    {
      v5 = *(a1 + 8);
      if (v5 >= 1)
      {
        v6 = v5 + 1;
        v7 = 80 * v5 - 80;
        do
        {
          v2 += DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(*a1 + v7, a2);
          --v6;
          v7 -= 80;
        }

        while (v6 > 1);
      }

      if (!a2)
      {
        v2 += 80 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(v9);
  return v2;
}

uint64_t sizeObject<BitArray *>(uint64_t a1, uint64_t a2)
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
          v9 += BitArray::sizeObject(v10, v3);
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

uint64_t sizeObject<DgnPrimArray<unsigned short>>(uint64_t a1, int a2)
{
  v2 = 0;
  v10[0] = 0;
  v10[1] = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v3 = 12;
  }

  else
  {
    v3 = 16;
  }

  if (a2 != 3)
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v2 = v3;
    }

    else
    {
      v6 = *(a1 + 8);
      v2 = v3;
      if (v6 >= 1)
      {
        v7 = v6 + 1;
        v8 = 16 * v6 - 16;
        v2 = v3;
        do
        {
          v2 += sizeObject<unsigned short>(*a1 + v8, a2);
          --v7;
          v8 -= 16;
        }

        while (v7 > 1);
      }

      if (!a2)
      {
        v2 += v3 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  return v2;
}

void *StateMgr::getName(StateMgr *this, unsigned int a2)
{
  StateMgr::verifyVisible(this, a2);
  v4 = (*(this + 12) + 16 * a2);
  if (v4[2])
  {
    return *v4;
  }

  else
  {
    return &unk_26287398E;
  }
}

unint64_t DgnPrimArray<unsigned int>::compact(unint64_t result)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  if (v3 != v4)
  {
    v6[3] = v1;
    v6[4] = v2;
    v5 = result;
    if (v3)
    {
      v6[0] = 0;
      result = realloc_array(*result, v6, 4 * v3, 4 * v3, 4 * v4, 0);
      *(v5 + 12) = result >> 2;
      *v5 = v6[0];
    }

    else
    {
      result = *result;
      if (*v5)
      {
        result = MemChunkFree(result, 0);
      }

      *v5 = 0;
      *(v5 + 12) = 0;
    }
  }

  return result;
}

uint64_t StateMgr::precedingNonAcousticWordStateValid(StateMgr *this, unsigned int a2, unsigned int a3, DgnString *a4)
{
  if (!a3)
  {
    return 1;
  }

  if (*(*(this + 74) + 16 * a2 + 8))
  {
    DgnString::stringPrintf(a4, "State %d is a precedingNonAcousticWordState for other states");
  }

  else if (*(*(this + 64) + 4 * a3))
  {
    DgnString::stringPrintf(a4, "PrecedingNonAcousticWordState %d has another state as its precedingNonAcousticWordState");
  }

  else
  {
    if (!*(*(this + 62) + 4 * a3))
    {
      return 1;
    }

    DgnString::stringPrintf(a4, "PrecedingNonAcousticWordState %d has a word alias state");
  }

  return 0;
}

double StateMgr::verifyVisible(uint64_t this, unsigned int a2)
{
  if (*(this + 720) <= a2 || !*(*(this + 560) + a2))
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1332, "voc/statemgr", 1, "%u", a2);
  }

  return result;
}

double StateMgr::verifyStateFull(uint64_t this, unsigned int a2, int a3, char a4)
{
  if (a2 || (a4 & 1) == 0)
  {
    v4 = *(this + 720);
    if (a3)
    {
      if (v4 <= a2)
      {
        return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1339, "voc/statemgr", 1, "%u", a2);
      }

      v5 = *(this + 560);
    }

    else
    {
      if (v4 <= a2)
      {
        return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1339, "voc/statemgr", 1, "%u", a2);
      }

      v5 = *(this + 544);
    }

    if (*(v5 + a2))
    {
      return result;
    }

    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1339, "voc/statemgr", 1, "%u", a2);
  }

  return result;
}

double StateMgr::verifyAliasingValid(uint64_t this, unsigned int a2, unsigned int a3)
{
  if (a3 && (*(*(this + 576) + 16 * a2 + 8) || *(*(this + 496) + 4 * a3)))
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1344, "voc/statemgr", 9, "%s", &errStr_voc_statemgr_E_CHAINED_WORD_ALIAS);
  }

  return result;
}

void StateMgr::verifyPrecedingNonAcousticWordStateValid(StateMgr *this, unsigned int a2, unsigned int a3)
{
  DgnString::DgnString(&v7);
  if ((StateMgr::precedingNonAcousticWordStateValid(this, a2, a3, &v7) & 1) == 0)
  {
    if (v8)
    {
      v6 = v7;
    }

    else
    {
      v6 = &unk_26287398E;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1354, "voc/statemgr", 35, "%.500s", v6);
  }

  DgnString::~DgnString(&v7);
}

void sub_2625FC620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t StateMgr::preAllocToEnsureStateId(uint64_t this, unsigned int a2)
{
  v3 = this;
  *(this + 696) = 1;
  *(this + 656) = 0;
  for (i = *(this + 720); i < a2; i = *(v3 + 180))
  {
    v6 = 0;
    this = StateMgr::newState(v3, 0, &v6);
  }

  if (i >= 2)
  {
    v5 = 1;
    do
    {
      this = StateMgr::killState(v3, v5++, 1);
    }

    while (v5 < *(v3 + 180));
  }

  *(v3 + 182) = a2;
  return this;
}

uint64_t StateMgr::killState(StateMgr *this, unsigned int a2, int a3)
{
  StateMgr::verifyStateFull(this, a2, a3, 0);
  v6 = *(this + 16) + 16 * a2;
  v7 = *(v6 + 8);
  if (v7)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1834, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "delete", a2, "childStatesCount", v7, **v6);
  }

  v8 = (*(this + 18) + 16 * a2);
  v9 = *(v8 + 2);
  if (v9)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1837, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "delete", a2, "childRulesCount", v9, **v8);
  }

  v10 = (*(this + 10) + 16 * a2);
  v11 = *(v10 + 2);
  if (v11)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1841, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "delete", a2, "includingRulesCount", v11, **v10);
  }

  if (*(*(this + 20) + 2 * a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1844, "voc/statemgr", 13, "%.500s %d %.500s %d", "delete", a2, "mIncludingLatticesCount", *(*(this + 20) + 2 * a2));
  }

  if (*(*(this + 22) + 2 * a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1847, "voc/statemgr", 13, "%.500s %d %.500s %d", "delete", a2, "mIncludingPrefilterersCount", *(*(this + 22) + 2 * a2));
  }

  if (*(*(this + 24) + 2 * a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1850, "voc/statemgr", 13, "%.500s %d %.500s %d", "delete", a2, "mIncludingTransducersCount", *(*(this + 24) + 2 * a2));
  }

  if (*(*(this + 26) + 2 * a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1853, "voc/statemgr", 13, "%.500s %d %.500s %d", "delete", a2, "mIncludingTransducerGrammarsCount", *(*(this + 26) + 2 * a2));
  }

  v12 = *(this + 72) + 16 * a2;
  v13 = *(v12 + 8);
  if (v13)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1857, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "delete", a2, "aliasingStatesCount", v13, **v12);
  }

  v14 = *(this + 74) + 16 * a2;
  v15 = *(v14 + 8);
  if (v15)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1861, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "delete", a2, "PrecededStatesAsNonAcousticWordStateCount", v15, **v14);
  }

  v16 = *(this + 76) + 16 * a2;
  v17 = *(v16 + 8);
  if (v17)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1865, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "delete", a2, "transitioningStatesCount", v17, **v16);
  }

  return StateMgr::killStateInternal(this, a2, a3, 0);
}

uint64_t StateMgr::newState(StateMgr *this, unsigned int a2, uint64_t a3)
{
  if (*(this + 182) <= a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1552, "voc/statemgr", 22, "%u %u", *(this + 180), a3);
  }

  StateMgr::verifyStateFull(this, a2, 1, 1);
  v6 = *(this + 178);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *(this + 88);
  v8 = 0xFFFFFFFFLL;
  while (1)
  {
    v9 = *v7++;
    if (v9 == a3)
    {
      break;
    }

    --v8;
    if (!--v6)
    {
      goto LABEL_9;
    }
  }

  if (!v8)
  {
LABEL_9:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1558, "voc/statemgr", 29, "%u", a3);
  }

  PhnIndexSet::PhnIndexSet(v17, *(*(this + 92) + 184));
  *v17[0] |= 1u;
  v10 = *(this + 178);
  if (v10)
  {
    v11 = *(this + 178);
    v12 = *(this + 88);
    while (*v12 != a3)
    {
      ++v12;
      if (!--v11)
      {
        goto LABEL_16;
      }
    }

    v13 = v10 - 1;
    *v12 = *(*(this + 88) + 4 * v13);
    *(this + 178) = v13;
  }

LABEL_16:
  *(*(this + 68) + a3) = 1;
  *(*(this + 70) + a3) = 1;
  BitArray::operator=((*(this + 83) + 16 * a3), v17);
  v14 = *(this + 16) + 16 * a2;
  v15 = *(v14 + 8);
  if (v15 == *(v14 + 12))
  {
    DgnPrimArray<unsigned int>::reallocElts(*(this + 16) + 16 * a2, 1, 1);
    v15 = *(v14 + 8);
  }

  *(*v14 + 4 * v15) = a3;
  ++*(v14 + 8);
  *(*(this + 14) + 4 * a3) = a2;
  *(*(this + 6) + 2 * a3) = 0;
  *(*(this + 8) + 4 * a3) = 0;
  *(this + 183) ^= StateMgr::computeOneStateIdNameChecksum(this, a3);
  BitArray::~BitArray(v17);
  return a3;
}

void sub_2625FCC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  BitArray::~BitArray(va);
  _Unwind_Resume(a1);
}

uint64_t StateMgr::changeRecursivePrefilteringAllowed(uint64_t this, unsigned int a2)
{
  v2 = *(this + 464);
  if (*(v2 + a2) == 1)
  {
    v3 = *(this + 608) + 16 * a2;
    v4 = *(v3 + 8);
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = 0;
    v6 = *v3;
    v7 = 1;
    v8 = v4;
    do
    {
      v10 = *v6++;
      v9 = v10;
      if (v10 != a2 && *(*(this + 680) + v9) != 1)
      {
        break;
      }

      v5 = v7++ >= v4;
      --v8;
    }

    while (v8);
    if (v5)
    {
LABEL_8:
      *(*(this + 680) + a2) = 1;
      return this;
    }

    goto LABEL_22;
  }

  v11 = *(this + 224) + 16 * a2;
  v12 = *(v11 + 8);
  if (v12)
  {
    v13 = *v11;
    v14 = 1;
    v15 = v12;
    v16 = 1;
    do
    {
      v18 = *v13++;
      v17 = v18;
      if (v18 != a2 && *(v2 + v17))
      {
        break;
      }

      v16 = v14++ < v12;
      --v15;
    }

    while (v15);
    if (v16)
    {
      return this;
    }

LABEL_22:
    *(this + 696) = 1;
    return this;
  }

  *(*(this + 680) + a2) = 0;
  v19 = *(this + 608) + 16 * a2;
  v20 = *(v19 + 8);
  if (v20)
  {
    v21 = 0;
    v22 = *v19;
    v23 = 1;
    v24 = v20;
    do
    {
      v26 = *v22++;
      v25 = v26;
      if (v26 != a2 && !*(*(this + 464) + v25))
      {
        break;
      }

      v21 = v23++ >= v20;
      --v24;
    }

    while (v24);
    if (!v21)
    {
      goto LABEL_22;
    }
  }

  return this;
}

unsigned __int8 *StateMgr::setColls(void *a1, unsigned int a2, uint64_t a3, int a4)
{
  StateMgr::verifyStateFull(a1, a2, a4, 0);
  v7 = (*a1 + 80 * a2);

  return DgnCollArray<unsigned int,WordList>::setColls(v7, a3);
}

uint64_t StateMgr::deleteWordIdNoPhones(WordList **this, unsigned int a2, uint64_t a3, int a4)
{
  v5 = a3;
  if (!StateMgr::isWordIdInState(this, a2, a3, a4))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2105, "voc/statemgr", 4, "%u %u", v5, a2);
  }

  if (*(this[20] + a2) && WordList::getIncludingLatticeRefCount(*(this[92] + 6), v5))
  {
    v8 = *(this[20] + a2);
    IncludingLatticeRefCount = WordList::getIncludingLatticeRefCount(*(this[92] + 6), v5);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2112, "voc/statemgr", 14, "%.500s %d %d %d %d", "word", a2, v5, v8, IncludingLatticeRefCount);
  }

  if (*(this[24] + a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2116, "voc/statemgr", 13, "%.500s %d %.500s %d", "word", a2, "mIncludingTransducersCount", *(this[24] + a2));
  }

  if (*(this[26] + a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2119, "voc/statemgr", 13, "%.500s %d %.500s %d", "word", a2, "mIncludingTransducerGrammarsCount", *(this[26] + a2));
  }

  if (a4)
  {
    ItemPairEnvId = EnvMgr::getItemPairEnvId(this[95], a2, v5);
    if (ItemPairEnvId)
    {
      EnvMgr::killEnv(this[95], ItemPairEnvId);
      EnvMgr::setItemPairEnvId(this[95], a2, v5, 0);
    }
  }

  DgnCollArray<unsigned int,WordList>::remove(*this + 80 * a2, v5);
  result = WordList::removeIncludingStateRef(this[93], v5);
  v12 = *(this[2] + a2);
  if (v12)
  {
    *(*v12 + 4 * (v5 >> 5)) &= ~(1 << v5);
  }

  return result;
}

BitArray *DgnDelete<BitArray>(BitArray *result)
{
  if (result)
  {
    BitArray::~BitArray(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void *StateMgr::setEmptyStateTransition(StateMgr *this, unsigned int a2, int a3)
{
  StateMgr::verifyStateFull(this, a2, a3, 0);
  v5 = a2;
  if (*(*(this + 20) + 2 * a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3116, "voc/statemgr", 13, "%.500s %d %.500s %d", "setEmptyStateTransition", a2, "mIncludingLatticesCount", *(*(this + 20) + 2 * a2));
  }

  if (*(*(this + 24) + 2 * a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3118, "voc/statemgr", 13, "%.500s %d %.500s %d", "setEmptyStateTransition", a2, "mIncludingTransducersCount", *(*(this + 24) + 2 * a2));
  }

  if (*(*(this + 26) + 2 * a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3121, "voc/statemgr", 13, "%.500s %d %.500s %d", "setEmptyStateTransition", a2, "mIncludingTransducerGrammarsCount", *(*(this + 26) + 2 * a2));
  }

  if ((*(this + 696) & 1) == 0)
  {
    v6 = *(this + 58);
    if (!*(v6 + a2))
    {
      v7 = *(this + 85);
      if (*(v7 + a2) == 1)
      {
        v8 = *(this + 76) + 16 * a2;
        v9 = *(v8 + 8);
        if (!v9)
        {
          goto LABEL_16;
        }

        v10 = 0;
        v11 = *v8;
        v12 = 1;
        v13 = v9;
        do
        {
          v15 = *v11++;
          v14 = v15;
          if (v15 != a2 && !*(v6 + v14))
          {
            break;
          }

          v10 = v12++ >= v9;
          --v13;
        }

        while (v13);
        if (!v10)
        {
          *(this + 696) = 1;
        }

        else
        {
LABEL_16:
          *(v7 + a2) = 0;
        }
      }
    }
  }

  v16 = *(this + 28) + 16 * a2;
  v17 = *(v16 + 8);
  v18 = *v16;
  if (v17)
  {
    v19 = 0;
    v20 = *(this + 76);
    do
    {
      v21 = v20 + 16 * *(v18 + v19);
      v22 = *(v21 + 8);
      if (v22)
      {
        v23 = *(v21 + 8);
        v24 = *v21;
        while (*v24 != a2)
        {
          ++v24;
          if (!--v23)
          {
            goto LABEL_26;
          }
        }

        *v24 = *(*v21 + 4 * (v22 - 1));
        *(v21 + 8) = v22 - 1;
        v17 = *(v16 + 8);
      }

LABEL_26:
      ++v19;
    }

    while (v19 < v17);
  }

  if (v18)
  {
    MemChunkFree(v18, 0);
    *v16 = 0;
  }

  *(v16 + 8) = 0;
  v25 = *(this + 30) + 16 * a2;
  if (*v25)
  {
    MemChunkFree(*v25, 0);
    *v25 = 0;
  }

  *(v25 + 8) = 0;
  v26 = *(this + 32) + 16 * v5;
  result = *v26;
  if (*v26)
  {
    result = MemChunkFree(result, 0);
    *v26 = 0;
  }

  *(v26 + 8) = 0;
  return result;
}

void StateMgr::setPrecedingNonAcousticWordState(StateMgr *this, unsigned int a2, unsigned int a3, int a4)
{
  if (a4)
  {
    StateMgr::verifyStateFull(this, a2, 1, 0);
    StateMgr::verifyStateFull(this, a3, 1, 1);
    StateMgr::verifyPrecedingNonAcousticWordStateValid(this, a2, a3);
  }

  else
  {
    DgnString::DgnString(v14);
    DgnString::~DgnString(v14);
  }

  v7 = *(this + 64);
  v8 = *(v7 + 4 * a2);
  if (v8)
  {
    v9 = *(this + 74) + 16 * v8;
    v10 = *(v9 + 8);
    if (v10)
    {
      v11 = *(v9 + 8);
      v12 = *v9;
      while (*v12 != a2)
      {
        ++v12;
        if (!--v11)
        {
          goto LABEL_11;
        }
      }

      v13 = v10 - 1;
      *v12 = *(*v9 + 4 * v13);
      *(v9 + 8) = v13;
    }
  }

LABEL_11:
  *(v7 + 4 * a2) = a3;
  if (a3)
  {
    StateMgr::addPrecedingNonAcousticWordStateRef(this, a3, a2);
  }

  if (*(*(this + 10) + 16 * a2 + 8))
  {
    RuleMgr::alteredStateInRule(*(*(this + 92) + 64), a2);
  }
}

void StateMgr::setWordAliasState(StateMgr *this, unsigned int a2, unsigned int a3, char a4)
{
  if (a4)
  {
    StateMgr::verifyStateFull(this, a2, 1, 0);
    StateMgr::verifyStateFull(this, a3, 1, 1);
    StateMgr::verifyAliasingValid(this, a2, a3);
    v7 = a2;
    if (*(*(this + 20) + 2 * a2))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3312, "voc/statemgr", 13, "%.500s %d %.500s %d", "setWordAliasState", a2, "mIncludingLatticesCount", *(*(this + 20) + 2 * a2));
    }

    if (*(*(this + 24) + 2 * a2))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3314, "voc/statemgr", 13, "%.500s %d %.500s %d", "setWordAliasState", a2, "mIncludingTransducersCount", *(*(this + 24) + 2 * a2));
    }

    if (*(*(this + 26) + 2 * a2))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3317, "voc/statemgr", 13, "%.500s %d %.500s %d", "setWordAliasState", a2, "mIncludingTransducerGrammarsCount", *(*(this + 26) + 2 * a2));
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(this + 62);
  v9 = *(v8 + 4 * v7);
  if (v9)
  {
    v10 = *(this + 72) + 16 * v9;
    v11 = *(v10 + 8);
    if (v11)
    {
      v12 = *(v10 + 8);
      v13 = *v10;
      while (*v13 != a2)
      {
        ++v13;
        if (!--v12)
        {
          goto LABEL_14;
        }
      }

      v14 = v11 - 1;
      *v13 = *(*v10 + 4 * v14);
      *(v10 + 8) = v14;
      if (!a3)
      {
        goto LABEL_17;
      }

LABEL_15:
      StateMgr::addAliasingStateRef(this, a3, a2);
      *(*(this + 62) + 4 * v7) = a3;
      goto LABEL_18;
    }
  }

LABEL_14:
  if (a3)
  {
    goto LABEL_15;
  }

LABEL_17:
  *(v8 + 4 * v7) = 0;
LABEL_18:
  if (*(*(this + 10) + 16 * v7 + 8))
  {
    v15 = *(*(this + 92) + 64);

    RuleMgr::alteredStateInRule(v15, a2);
  }
}

void StateMgr::setStateCharacteristicsForRuleState(StateMgr *this, unsigned int a2, unsigned int a3)
{
  StateMgr::verifyState(this, a2);
  StateMgr::verifyState(this, a3);
  *(*(this + 34) + 4 * a2) = *(*(this + 34) + 4 * a3);
  *(*(this + 36) + 4 * a2) = *(*(this + 36) + 4 * a3);
  *(*(this + 38) + a2) = *(*(this + 38) + a3);
  *(*(this + 40) + a2) = *(*(this + 40) + a3);
  *(*(this + 48) + a2) = *(*(this + 48) + a3);
  *(*(this + 50) + 4 * a2) = *(*(this + 50) + 4 * a3);
  *(*(this + 52) + 4 * a2) = *(*(this + 52) + 4 * a3);
  *(*(this + 54) + 4 * a2) = *(*(this + 54) + 4 * a3);
  *(*(this + 56) + 4 * a2) = *(*(this + 56) + 4 * a3);
  StateMgr::setPrecedingNonAcousticWordState(this, a2, *(*(this + 64) + 4 * a3), 0);
  *(*(this + 60) + a2) = *(*(this + 60) + a3);
  v6 = *(this + 58);
  v7 = *(v6 + a3);
  if (*(v6 + a2) != v7)
  {
    *(v6 + a2) = v7;
    if ((*(this + 696) & 1) == 0)
    {
      StateMgr::changeRecursivePrefilteringAllowed(this, a2);
    }
  }

  *(*(this + 44) + a2) = *(*(this + 44) + a3);
  *(*(this + 46) + a2) = *(*(this + 46) + a3);
  *(*(this + 4) + a2) = 0;
  *(*(this + 42) + a2) = 0;
  if (*(*(this + 62) + 4 * a3))
  {
    v8 = *(*(this + 62) + 4 * a3);
  }

  else
  {
    v8 = a3;
  }

  StateMgr::setWordAliasState(this, a2, v8, 0);
  *(*(this + 8) + 4 * a2) = a3;
}

uLong StateMgr::setName(StateMgr *this, unsigned int a2, char *a3)
{
  StateMgr::verifyVisible(this, a2);
  StateMgr::verifyVisible(this, a2);
  if (a2)
  {
    v6 = *(*(this + 14) + 4 * a2);
  }

  else
  {
    v6 = 0;
  }

  result = StateMgr::getHandle(this, a3, v6);
  if (result != a2)
  {
    if (result)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1957, "voc/statemgr", 2, "%.500s", a3);
    }

    *(this + 183) ^= StateMgr::computeOneStateIdNameChecksum(this, a2);
    DgnString::operator=((*(this + 12) + 16 * a2), a3);
    result = StateMgr::computeOneStateIdNameChecksum(this, a2);
    *(this + 183) ^= result;
  }

  return result;
}

uint64_t StateMgr::getParent(StateMgr *this, unsigned int a2)
{
  StateMgr::verifyVisible(this, a2);
  if (a2)
  {
    return *(*(this + 14) + 4 * a2);
  }

  else
  {
    return 0;
  }
}

void StateMgr::setWeights(StateMgr *this, unsigned int a2, int a3, int a4)
{
  v7.n128_f64[0] = StateMgr::verifyStateFull(this, a2, a4, 0);
  (*(**(*(this + 92) + 72) + 688))(v7);
  *(*(this + 34) + 4 * a2) = a3;
  if (*(*(this + 10) + 16 * a2 + 8))
  {
    v8 = *(*(this + 92) + 64);

    RuleMgr::alteredStateInRule(v8, a2);
  }
}

void StateMgr::setWordPenalty(StateMgr *this, unsigned int a2, int a3, int a4)
{
  StateMgr::verifyStateFull(this, a2, a4, 0);
  if ((a3 - 1001) <= 0xFFFFF82E)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2007, "voc/statemgr", 32, "%s", &errStr_voc_statemgr_E_WORDPENALTY);
  }

  *(*(this + 36) + 4 * a2) = a3;
  if (*(*(this + 10) + 16 * a2 + 8))
  {
    v7 = *(*(this + 92) + 64);

    RuleMgr::alteredStateInRule(v7, a2);
  }
}

double StateMgr::checkCollIdExposed(StateMgr *this, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  StateMgr::verifyVisible(this, a2);
  v6 = *this + 80 * a2;

  return DgnCollArray<unsigned int,WordList>::checkCollIdExposed(v6, v3);
}

double DgnCollArray<unsigned int,WordList>::checkCollIdExposed(uint64_t result, unsigned int a2)
{
  if (a2 != 0xFFFF && (*result != 1 || *(result + 5) != 1 || *(result + 2) != a2) && (*(result + 32) <= a2 || !*(*(result + 24) + 8 * a2)))
  {
    return errorBadCollationId(a2);
  }

  return v2;
}

BOOL StateMgr::isWordIdInState(StateMgr *this, unsigned int a2, unsigned int a3, int a4)
{
  StateMgr::verifyStateFull(this, a2, a4, 0);
  v7 = *(*(this + 2) + 8 * a2);
  if (v7 || *(*this + 80 * a2 + 16) >= 0x1F4u && (StateMgr::getBitWords(this, a2), (v7 = *(*(this + 2) + 8 * a2)) != 0))
  {
    if (*(v7 + 8) > a3)
    {
      return (*(*v7 + 4 * (a3 >> 5)) >> a3) & 1;
    }

    return 0;
  }

  v9 = *this + 80 * a2;
  v10 = *(v9 + 16);
  if (!v10)
  {
    return 0;
  }

  v11 = *(v9 + 8);
  for (i = 0xFFFFFFFFLL; ; --i)
  {
    v13 = *v11++;
    if (v13 == a3)
    {
      break;
    }

    if (!--v10)
    {
      return 0;
    }
  }

  return i != 0;
}

uint64_t DgnCollArray<unsigned int,WordList>::addArray(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = result;
    v5 = *(result + 16);
    if (v5)
    {
      v6 = onePlusHighestSet32(v5);
      v7 = *(v4 + 16);
      v8 = v6 * v2 > v7;
      v2 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
      v8 = 1;
    }

    DgnCollArray<unsigned int,WordList>::preAllocate(v4, v2 + v7);
    v19 = 0;
    v20 = 0;
    DgnPrimArray<int>::copyArraySlice(&v19, a2, 0, *(a2 + 8));
    if (*v4 == 1)
    {
      v9 = *(v4 + 2);
      v21 = *(v4 + 64);
      v22 = v9;
      mrec_qsort_r<WordList>(v19, v20, 4, &v21, *&v21);
      v10 = *(v4 + 2);
      if (v8)
      {
        DgnCollArray<unsigned int,WordList>::mergeLargeSortedArray(v4, &v19, v10);
      }

      else
      {
        DgnCollArray<unsigned int,WordList>::mergeSmallSortedArray(v4, &v19, v10);
      }
    }

    else
    {
      v11 = *(a2 + 8);
      v12 = *(v4 + 20);
      v13 = *(v4 + 16) + v11;
      if (v13 > v12)
      {
        DgnPrimArray<unsigned int>::reallocElts(v4 + 8, v13 - v12, 1);
        v11 = *(a2 + 8);
      }

      if (v11)
      {
        v14 = 0;
        v15 = *a2;
        v16 = *(v4 + 8);
        do
        {
          *(v16 + 4 * (v14 + *(v4 + 16))) = *(v15 + 4 * v14);
          ++v14;
          v17 = *(a2 + 8);
        }

        while (v14 < v17);
      }

      else
      {
        LODWORD(v17) = 0;
      }

      *(v4 + 16) += v17;
    }

    if (*(v4 + 32))
    {
      v18 = 0;
      do
      {
        if (*(*(v4 + 24) + 8 * v18))
        {
          v21 = *(v4 + 64);
          v22 = v18;
          mrec_qsort_r<WordList>(v19, v20, 4, &v21, *&v21);
          if (v8)
          {
            DgnCollArray<unsigned int,WordList>::mergeLargeSortedArray(v4, &v19, v18);
          }

          else
          {
            DgnCollArray<unsigned int,WordList>::mergeSmallSortedArray(v4, &v19, v18);
          }
        }

        ++v18;
      }

      while (*(v4 + 32) > v18);
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v19);
  }

  return result;
}

uint64_t StateMgr::getBitWords(StateMgr *this, unsigned int a2)
{
  result = *(*(this + 2) + 8 * a2);
  if (!result)
  {
    v4 = a2;
    v5 = *this + 80 * a2;
    v6 = *(*(this + 93) + 388);
    v7 = MemChunkAlloc(0x10uLL, 0);
    BitArray::BitArray(v7, v6);
    BitArray::clearRange(v8, 0, *(v8 + 2));
    if (*(v5 + 16))
    {
      v9 = 0;
      v10 = *(v5 + 8);
      v11 = *v7;
      do
      {
        *(v11 + ((*(v10 + 4 * v9) >> 3) & 0x1FFFFFFC)) |= 1 << *(v10 + 4 * v9);
        ++v9;
      }

      while (v9 < *(v5 + 16));
    }

    *(*(this + 2) + 8 * v4) = v7;
    return *(*(this + 2) + 8 * v4);
  }

  return result;
}

void StateMgr::addWordIdArray(StateMgr *a1, unsigned int a2, uint64_t a3, int a4)
{
  StateMgr::verifyState(a1, a2);
  v8 = (*a1 + 80 * a2);
  StateMgr::verifyState(a1, a2);
  DgnCollArray<unsigned int,WordList>::preAllocate(v8, *(a3 + 8) + *(*a1 + 80 * a2 + 16));
  StateMgr::addWordIdArrayNoPhones(a1, a2, a3, a4);

  StateMgr::addPrimitiveBegPhonesArray(a1, a2, a3);
}

uint64_t *DgnCollArray<unsigned int,WordList>::preAllocate(uint64_t *result, unsigned int a2)
{
  v3 = result;
  v4 = *(result + 5);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {
    result = DgnPrimArray<unsigned int>::reallocElts((result + 1), v6, 0);
  }

  v7 = *(v3 + 8);
  if (v7)
  {
    for (i = 0; i < v7; ++i)
    {
      result = *(v3[3] + 8 * i);
      if (result)
      {
        v9 = *(result + 3);
        if (a2 > v9)
        {
          result = DgnPrimArray<unsigned int>::reallocElts(result, a2 - v9, 0);
          v7 = *(v3 + 8);
        }
      }
    }
  }

  return result;
}

void StateMgr::addWordIdsToStatesWithId(StateMgr *this, uint64_t a2, unsigned int a3)
{
  if (*(this + 180))
  {
    v6 = 0;
    do
    {
      if (*(*(this + 68) + v6))
      {
        if (StateMgr::isWordIdInState(this, v6, a3, 0))
        {
          StateMgr::addWordIdArray(this, v6, a2, 0);
        }
      }

      ++v6;
    }

    while (v6 < *(this + 180));
  }
}

uint64_t DgnCollArray<unsigned int,WordList>::remove(uint64_t result, int a2)
{
  v2 = *(result + 16);
  if (*result == 1)
  {
    if (v2)
    {
      v3 = 0;
      v4 = (*(result + 8) + 4);
      while (*(v4 - 1) != a2)
      {
        ++v3;
        ++v4;
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      LODWORD(v2) = v2 - 1;
      if (v2 > v3)
      {
        do
        {
          ++v3;
          *(v4 - 1) = *v4;
          v2 = (*(result + 16) - 1);
          ++v4;
        }

        while (v3 < v2);
      }
    }

    else
    {
LABEL_6:
      LODWORD(v2) = v2 - 1;
    }
  }

  else
  {
    if (!v2)
    {
      goto LABEL_17;
    }

    v5 = *(result + 16);
    v6 = *(result + 8);
    while (*v6 != a2)
    {
      ++v6;
      if (!--v5)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v2) = v2 - 1;
    *v6 = *(*(result + 8) + 4 * v2);
  }

  *(result + 16) = v2;
LABEL_17:
  v7 = *(result + 32);
  if (v7)
  {
    v8 = 0;
    v9 = *(result + 24);
    do
    {
      v10 = *(v9 + 8 * v8);
      if (v10)
      {
        v11 = v10[2];
        if (v11)
        {
          v12 = 0;
          v13 = (*v10 + 4);
          while (*(*v10 + 4 * v12) != a2)
          {
            ++v12;
            ++v13;
            if (v11 == v12)
            {
              goto LABEL_24;
            }
          }

          LODWORD(v11) = v11 - 1;
          if (v11 > v12)
          {
            do
            {
              ++v12;
              *(v13 - 1) = *v13;
              v11 = v10[2] - 1;
              ++v13;
            }

            while (v12 < v11);
            v7 = *(result + 32);
          }
        }

        else
        {
LABEL_24:
          LODWORD(v11) = v11 - 1;
        }

        v10[2] = v11;
      }

      ++v8;
    }

    while (v7 > v8);
  }

  return result;
}

uint64_t StateMgr::deleteWordIdArrayNoPhones(StateMgr *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = a2;
  v9 = "word";
  if (*(*(this + 24) + 2 * a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2149, "voc/statemgr", 13, "%.500s %d %.500s %d", "word", a2, "mIncludingTransducersCount", *(*(this + 24) + 2 * a2));
  }

  if (*(*(this + 26) + 2 * v8))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2152, "voc/statemgr", 13, "%.500s %d %.500s %d", "word", v6, "mIncludingTransducerGrammarsCount", *(*(this + 26) + 2 * v8));
  }

  if (*(a3 + 8))
  {
    v10 = 0;
    v11 = "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp";
    v12 = "voc/statemgr";
    v26 = v6;
    v27 = v6;
    do
    {
      v13 = *(*a3 + 4 * v10);
      if (!StateMgr::isWordIdInState(this, v6, *(*a3 + 4 * v10), a4))
      {
        errThrowInternal(0, v11, 2163, v12, 4, "%u %u", v13, v27);
      }

      if (*(*(this + 20) + 2 * v8) && WordList::getIncludingLatticeRefCount(*(*(this + 92) + 48), v13))
      {
        v14 = a3;
        v15 = a4;
        v16 = v12;
        v17 = v11;
        v18 = v9;
        v19 = *(*(this + 20) + 2 * v8);
        IncludingLatticeRefCount = WordList::getIncludingLatticeRefCount(*(*(this + 92) + 48), v13);
        v25 = v19;
        v9 = v18;
        v11 = v17;
        v12 = v16;
        a4 = v15;
        a3 = v14;
        v6 = v26;
        errThrowInternal(0, v11, 2170, v12, 14, "%.500s %d %d %d %d", v9, v26, v13, v25, IncludingLatticeRefCount);
      }

      if (a4)
      {
        ItemPairEnvId = EnvMgr::getItemPairEnvId(*(this + 95), v6, v13);
        if (ItemPairEnvId)
        {
          EnvMgr::killEnv(*(this + 95), ItemPairEnvId);
          EnvMgr::setItemPairEnvId(*(this + 95), v6, v13, 0);
        }
      }

      WordList::removeIncludingStateRef(*(this + 93), v13);
      v22 = *(*(this + 2) + 8 * v8);
      if (v22)
      {
        *(*v22 + ((v13 >> 3) & 0x1FFFFFFC)) &= ~(1 << v13);
      }

      ++v10;
    }

    while (v10 < *(a3 + 8));
  }

  v23 = *this + 80 * v8;

  return DgnCollArray<unsigned int,WordList>::removeArray(v23, a3);
}

uint64_t DgnCollArray<unsigned int,WordList>::removeArray(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v4 = result;
    v14 = 0;
    v15 = 0;
    DgnPrimArray<int>::copyArraySlice(&v14, a2, 0, v2);
    if (*v4)
    {
      v5 = *(v4 + 2);
      v16 = *(v4 + 64);
      v17 = v5;
      mrec_qsort_r<WordList>(v14, v15, 4, &v16, *&v16);
      DgnCollArray<unsigned int,WordList>::removeSortedArray(v4, &v14, *(v4 + 2));
    }

    else
    {
      v6 = *(a2 + 8);
      if (v6)
      {
        v7 = 0;
        v8 = *a2;
        v9 = *(v4 + 16);
        do
        {
          if (v9)
          {
            v10 = v9;
            v11 = *(v4 + 8);
            while (*v11 != *(v8 + 4 * v7))
            {
              ++v11;
              if (!--v10)
              {
                goto LABEL_12;
              }
            }

            *v11 = *(*(v4 + 8) + 4 * --v9);
            *(v4 + 16) = v9;
            v6 = *(a2 + 8);
          }

LABEL_12:
          ++v7;
        }

        while (v7 < v6);
      }
    }

    v12 = *(v4 + 32);
    if (v12)
    {
      for (i = 0; i < v12; ++i)
      {
        if (*(*(v4 + 24) + 8 * i))
        {
          v16 = *(v4 + 64);
          v17 = i;
          mrec_qsort_r<WordList>(v14, v15, 4, &v16, *&v16);
          DgnCollArray<unsigned int,WordList>::removeSortedArray(v4, &v14, i);
          v12 = *(v4 + 32);
        }
      }
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v14);
  }

  return result;
}

void StateMgr::deleteWordIdArray(StateMgr *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  StateMgr::deleteWordIdArrayNoPhones(a1, a2, a3, a4);
  StateMgr::verifyState(a1, a2);
  if (*(*a1 + 80 * a2 + 16) <= 5u)
  {

    StateMgr::recomputePrimitiveBegPhones(a1, a2);
  }
}

void StateMgr::deleteWordIdsFromStatesWithId(StateMgr *this, uint64_t a2, unsigned int a3)
{
  if (*(this + 180))
  {
    v6 = 0;
    do
    {
      if (*(*(this + 68) + v6))
      {
        if (StateMgr::isWordIdInState(this, v6, a3, 0))
        {
          StateMgr::deleteWordIdArray(this, v6, a2, 0);
        }
      }

      ++v6;
    }

    while (v6 < *(this + 180));
  }
}

BOOL StateMgr::isStateInRule(StateMgr *this, unsigned int a2, int a3)
{
  StateMgr::verifyVisible(this, a2);
  v6 = *(this + 10) + 16 * a2;
  v7 = *(v6 + 8);
  if (!v7)
  {
    return 0;
  }

  v8 = *v6;
  for (i = 0xFFFFFFFFLL; ; --i)
  {
    v10 = *v8++;
    if (v10 == a3)
    {
      break;
    }

    if (!--v7)
    {
      return 0;
    }
  }

  return i != 0;
}

uint64_t *StateMgr::includeStateInRule(uint64_t *this, unsigned int a2, __int16 a3)
{
  v4 = this[10] + 16 * a2;
  v5 = *(v4 + 8);
  if (v5 == *(v4 + 12))
  {
    this = DgnPrimArray<short>::reallocElts(this[10] + 16 * a2, 1, 1);
    v5 = *(v4 + 8);
  }

  *(*v4 + 2 * v5) = a3;
  *(v4 + 8) = v5 + 1;
  return this;
}

uint64_t StateMgr::unincludeStateInRule(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 80) + 16 * a2;
  v4 = *(v3 + 8);
  if (v4)
  {
    v5 = *(v3 + 8);
    for (i = *v3; *i != a3; ++i)
    {
      if (!--v5)
      {
        return this;
      }
    }

    v7 = v4 - 1;
    *i = *(*v3 + 2 * v7);
    *(v3 + 8) = v7;
  }

  return this;
}

void StateMgr::getWordsWithPrefix(void *a1, unsigned int a2, unsigned int a3, char *a4, char *a5, uint64_t a6, BOOL *a7)
{
  StateMgr::verifyVisible(a1, a2);
  v14 = DgnCollArray<unsigned int,WordList>::checkCollIdExposed(*a1 + 80 * a2, a3);
  v15 = *a1 + 80 * a2;
  if (a3 == 0xFFFF || *v15 == 1 && *(v15 + 2) == a3)
  {
    v16 = v15 + 8;
  }

  else
  {
    v16 = *(*(v15 + 24) + 8 * a3);
  }

  v17 = a1[93];

  WordList::getWordsWithPrefix(v17, v16, a3, a4, a5, a6, a7, v14);
}

uint64_t StateMgr::getCollWords(StateMgr *this, unsigned int a2, unsigned int a3, int a4)
{
  StateMgr::verifyStateFull(this, a2, a4, 0);
  v7 = *this + 80 * a2;
  if (a3 == 0xFFFF || *v7 == 1 && *(v7 + 2) == a3)
  {
    return v7 + 8;
  }

  else
  {
    return *(*(v7 + 24) + 8 * a3);
  }
}

unsigned __int8 *DgnCollArray<unsigned int,WordList>::setColls(unsigned __int8 *result, uint64_t a2)
{
  v2 = result;
  v3 = (result + 40);
  if (result + 40 == a2)
  {
    v4 = *(a2 + 8);
    goto LABEL_8;
  }

  v4 = *(a2 + 8);
  if (*(result + 12) != v4)
  {
LABEL_8:
    DgnPrimArray<unsigned short>::copyArraySlice(result + 5, a2, 0, v4);
    result = DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::wipeOtherArrays(v2);
    if (*v2 != 1 || (v2[4] & 1) == 0)
    {
      *v2 = 0;
    }

    v2[5] = 0;
    v8 = *(v2 + 12);
    if (!v8)
    {
      return result;
    }

    if (v8 == 1)
    {
      v9 = 0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = *v2;
        v15 = *(v2 + 5);
        while (1)
        {
          v16 = *(v15 + 2 * v12);
          if (!v14 || v16 != *(v2 + 1))
          {
            break;
          }

          if (v16 != 65534)
          {
            goto LABEL_34;
          }

          v13 = 0;
          v2[5] = 1;
          if (++v12 >= v8)
          {
            return result;
          }
        }

        if (v16 == 65534)
        {
          v13 = 0;
          *v2 = 1;
          *(v2 + 2) = 16842750;
        }

        else
        {
          v17 = *(v2 + 8);
          if (v17 <= v16)
          {
            v18 = v16 - v17 + 1;
            do
            {
              if (v17 == *(v2 + 9))
              {
                DgnPrimArray<unsigned long long>::reallocElts((v2 + 24), 1, 1);
                v17 = *(v2 + 8);
              }

              *(*(v2 + 3) + 8 * v17++) = 0;
              *(v2 + 8) = v17;
              --v18;
            }

            while (v18);
          }

          v19 = MemChunkAlloc(0x10uLL, 0);
          *v19 = 0;
          v19[1] = 0;
          *(*(v2 + 3) + 8 * *(*(v2 + 5) + 2 * v12)) = v19;
          DgnPrimArray<int>::copyArraySlice(*(*(v2 + 3) + 8 * *(*(v2 + 5) + 2 * v12)), v2 + 1, 0, *(v2 + 4));
          v15 = *(v2 + 5);
        }

        result = DgnCollArray<unsigned int,WordList>::sortCollation(v2, *(v15 + 2 * v12));
        v8 = *(v2 + 12);
LABEL_34:
        ++v12;
      }

      while (v12 < v8 - v13);
      if (v13 != 1)
      {
        return result;
      }

      v9 = v8 - 1;
    }

    if (*v2)
    {
      v10 = *(v2 + 5);
      if (v2[4] == 1)
      {
        v11 = *(v10 + 2 * v9);
        if (v11 == 65534)
        {
          v2[5] = 1;
          return result;
        }

        v21 = *(v2 + 8);
        if (v21 <= v11)
        {
          v22 = v11 - v21 + 1;
          do
          {
            if (v21 == *(v2 + 9))
            {
              DgnPrimArray<unsigned long long>::reallocElts((v2 + 24), 1, 1);
              v21 = *(v2 + 8);
            }

            *(*(v2 + 3) + 8 * v21++) = 0;
            *(v2 + 8) = v21;
            --v22;
          }

          while (v22);
        }

        v23 = MemChunkAlloc(0x10uLL, 0);
        *v23 = 0;
        v23[1] = 0;
        *(*(v2 + 3) + 8 * *(*(v2 + 5) + 2 * v9)) = v23;
        DgnPrimArray<int>::copyArraySlice(*(*(v2 + 3) + 8 * *(*(v2 + 5) + 2 * v9)), v2 + 1, 0, *(v2 + 4));
        v20 = *(*(v2 + 5) + 2 * v9);
        goto LABEL_40;
      }
    }

    else
    {
      v10 = *v3;
    }

    *v2 = 1;
    *(v2 + 2) = 256;
    v20 = *(v10 + 2 * v9);
    *(v2 + 1) = v20;
LABEL_40:

    return DgnCollArray<unsigned int,WordList>::sortCollation(v2, v20);
  }

  v5 = *(result + 12);
  while (v5 >= 1)
  {
    v6 = *v3 + 2 * v5;
    v7 = *(*a2 - 2 + 2 * v5--);
    if (*(v6 - 2) != v7)
    {
      v4 = *(result + 12);
      goto LABEL_8;
    }
  }

  return result;
}

void StateMgr::setLMAllowed(StateMgr *this, unsigned int a2, char a3, int a4)
{
  StateMgr::verifyStateFull(this, a2, a4, 0);
  *(*(this + 38) + a2) = a3;
  if (*(*(this + 10) + 16 * a2 + 8))
  {
    v7 = *(*(this + 92) + 64);

    RuleMgr::alteredStateInRule(v7, a2);
  }
}

void StateMgr::setPrecedingNonAcousticWordRequired(StateMgr *this, unsigned int a2, char a3, int a4)
{
  StateMgr::verifyStateFull(this, a2, a4, 0);
  if (a3)
  {
    v7 = a2;
    if (!*(*(this + 64) + 4 * a2))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2468, "voc/statemgr", 36, "%u", a2);
    }
  }

  else
  {
    v7 = a2;
  }

  *(*(this + 60) + v7) = a3;
  if (*(*(this + 10) + 16 * v7 + 8))
  {
    v8 = *(*(this + 92) + 64);

    RuleMgr::alteredStateInRule(v8, a2);
  }
}

void StateMgr::setPrefilteringAllowed(StateMgr *this, unsigned int a2, char a3, int a4)
{
  StateMgr::verifyStateFull(this, a2, a4, 0);
  v7 = *(this + 58);
  v8 = *(v7 + a2);
  *(v7 + a2) = a3;
  if ((*(this + 696) & 1) == 0 && v8 != *(*(this + 58) + a2))
  {
    StateMgr::changeRecursivePrefilteringAllowed(this, a2);
  }

  if (*(*(this + 10) + 16 * a2 + 8))
  {
    v9 = *(*(this + 92) + 64);

    RuleMgr::alteredStateInRule(v9, a2);
  }
}

void StateMgr::setCoartAllowed(StateMgr *this, unsigned int a2, char a3, int a4)
{
  StateMgr::verifyStateFull(this, a2, a4, 0);
  *(*(this + 40) + a2) = a3;
  if (*(*(this + 10) + 16 * a2 + 8))
  {
    v7 = *(*(this + 92) + 64);

    RuleMgr::alteredStateInRule(v7, a2);
  }
}

void StateMgr::setSkipAllowed(StateMgr *this, unsigned int a2, int a3, int a4)
{
  StateMgr::verifyStateFull(this, a2, a4, 0);
  if ((*(*(this + 76) + 16 * a2 + 8) || *(*(this + 28) + 16 * a2 + 8)) && *(*(this + 44) + a2) != *(*(this + 46) + a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2550, "voc/statemgr", 24, "%s", &errStr_voc_statemgr_E_SKIPPABLE_WB_MISMATCH);
  }

  *(*(this + 42) + a2) = a3;
  if (a3)
  {
    VocMgr::beginRuleStateRecursiveOperation(VocMgr::smpVocMgr);
    StateMgr::verifyStateNotInAllSkippableLoop(this, a2, a2);
    v7 = VocMgr::smpVocMgr;

    VocMgr::endRuleStateRecursiveOperation(v7);
  }
}

unint64_t StateMgr::verifyStateNotInAllSkippableLoop(unint64_t this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 624);
  if (!*(v3 + a2))
  {
    v6 = this;
    v7 = a2;
    *(v3 + a2) = 1;
    v8 = *(this + 648);
    if (v8 == *(this + 652))
    {
      this = DgnPrimArray<unsigned int>::reallocElts(this + 640, 1, 1);
      v8 = *(v6 + 648);
    }

    *(*(v6 + 640) + 4 * v8) = a2;
    ++*(v6 + 648);
    if (*(*(v6 + 336) + v7))
    {
      v9 = *(v6 + 224);
      v10 = v9 + 16 * v7;
      if (*(v10 + 8))
      {
        v11 = 0;
        do
        {
          if (*(*v10 + 4 * v11) == a3)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2757, "voc/statemgr", 23, "%d %d", a3, *(*(v6 + 736) + 168));
            v9 = *(v6 + 224);
          }

          this = StateMgr::verifyStateNotInAllSkippableLoop(v6, *(*(v9 + 16 * v7) + 4 * v11++), a3);
          v9 = *(v6 + 224);
          v10 = v9 + 16 * v7;
        }

        while (v11 < *(v10 + 8));
      }
    }
  }

  return this;
}

void StateMgr::setLeftWBAllowed(StateMgr *this, unsigned int a2, char a3, int a4)
{
  StateMgr::verifyStateFull(this, a2, a4, 0);
  v7 = (*(this + 10) + 16 * a2);
  v8 = *(v7 + 2);
  if (v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2577, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "setLeftWBAllowed", a2, "includingRulesCount", v8, **v7);
  }

  v9 = *(this + 76);
  v10 = v9 + 16 * a2;
  v11 = *(v10 + 8);
  if (v11)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2581, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "setLeftWBAllowed", a2, "transitioningStatesCount", v11, **v10);
    v9 = *(this + 76);
  }

  v12 = *(v9 + 16 * a2 + 8);
  if (v12)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2585, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "setLeftWBAllowed", a2, "stateTransitionCount", v12, **(*(this + 28) + 16 * a2));
  }

  *(*(this + 44) + a2) = a3;
}

void StateMgr::setRightWBAllowed(StateMgr *this, unsigned int a2, char a3, int a4)
{
  StateMgr::verifyStateFull(this, a2, a4, 0);
  v7 = (*(this + 10) + 16 * a2);
  v8 = *(v7 + 2);
  if (v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2606, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "setRightWBAllowed", a2, "includingRulesCount", v8, **v7);
  }

  v9 = *(this + 76);
  v10 = v9 + 16 * a2;
  v11 = *(v10 + 8);
  if (v11)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2610, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "setRightWBAllowed", a2, "transitioningStatesCount", v11, **v10);
    v9 = *(this + 76);
  }

  v12 = *(v9 + 16 * a2 + 8);
  if (v12)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2614, "voc/statemgr", 12, "%.500s %d %.500s %d %d", "setRightWBAllowed", a2, "stateTransitionCount", v12, **(*(this + 28) + 16 * a2));
  }

  *(*(this + 46) + a2) = a3;
}

void StateMgr::setCollapsible(StateMgr *this, unsigned int a2, char a3)
{
  StateMgr::verifyState(this, a2);
  *(*(this + 48) + a2) = a3;
  if (*(*(this + 10) + 16 * a2 + 8))
  {
    v6 = *(*(this + 92) + 64);

    RuleMgr::alteredStateInRule(v6, a2);
  }
}

void StateMgr::setTimeConstraint(StateMgr *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  StateMgr::verifyStateFull(this, a2, 1, 0);
  if (a3 != -1 && a3 > a4)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2659, "voc/statemgr", 34, "%u %.500s %u %.500s %u", a2, "MinStartTime", a3, "MaxStartTime", a4);
  }

  if (a5 != -1 && a5 > a6)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2666, "voc/statemgr", 34, "%u %.500s %u %.500s %u", a2, "MinEndTime", a5, "MaxEndTime", a6);
  }

  if (a3 != -1 && a6 != -1 && a3 >= a6)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2673, "voc/statemgr", 34, "%u %.500s %u %.500s %u", a2, "MinStartTime", a3, "MaxEndTime", a6);
  }

  *(*(this + 50) + 4 * a2) = a3;
  *(*(this + 52) + 4 * a2) = a4;
  *(*(this + 54) + 4 * a2) = a5;
  *(*(this + 56) + 4 * a2) = a6;
}

void StateMgr::getTimeConstraint(StateMgr *this, unsigned int a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, unsigned int *a6)
{
  StateMgr::verifyStateFull(this, a2, 1, 0);
  *a3 = *(*(this + 50) + 4 * a2);
  *a4 = *(*(this + 52) + 4 * a2);
  *a5 = *(*(this + 54) + 4 * a2);
  *a6 = *(*(this + 56) + 4 * a2);
}

void StateMgr::addChildRule(StateMgr *this, unsigned int a2, int a3)
{
  StateMgr::verifyStateFull(this, a2, 1, 1);
  v6 = *(this + 18) + 16 * a2;
  v7 = *(v6 + 8);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = *v6;
  v9 = 0xFFFFFFFFLL;
  v10 = *(v6 + 8);
  while (1)
  {
    v11 = *v8++;
    if (v11 == a3)
    {
      break;
    }

    --v9;
    if (!--v10)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
LABEL_7:
    if (v7 == *(v6 + 12))
    {
      DgnPrimArray<short>::reallocElts(v6, 1, 1);
      v7 = *(v6 + 8);
    }

    *(*v6 + 2 * v7) = a3;
    *(v6 + 8) = v7 + 1;
  }
}

double StateMgr::endRecursiveOperation(StateMgr *this)
{
  if (*(this + 162))
  {
    v2 = 0;
    do
    {
      *(*(this + 78) + *(*(this + 80) + 4 * v2++)) = 0;
    }

    while (v2 < *(this + 162));
  }

  v3 = *(this + 80);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 80) = 0;
  }

  result = 0.0;
  *(this + 81) = 0;
  return result;
}

uint64_t *StateMgr::addAliasingStateRef(uint64_t *this, unsigned int a2, int a3)
{
  v4 = this[72] + 16 * a2;
  v5 = *(v4 + 8);
  if (v5 == *(v4 + 12))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(this[72] + 16 * a2, 1, 1);
    v5 = *(v4 + 8);
  }

  *(*v4 + 4 * v5) = a3;
  ++*(v4 + 8);
  return this;
}

uint64_t *StateMgr::addTransitioningStateRef(uint64_t *this, unsigned int a2, int a3)
{
  v4 = this[76] + 16 * a2;
  v5 = *(v4 + 8);
  if (v5 == *(v4 + 12))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(this[76] + 16 * a2, 1, 1);
    v5 = *(v4 + 8);
  }

  *(*v4 + 4 * v5) = a3;
  ++*(v4 + 8);
  return this;
}

void StateMgr::fastEmptyTransitionsForKill(uint64_t a1, uint64_t a2)
{
  BitArray::BitArray(v36, *(a1 + 720));
  if (*(a2 + 8))
  {
    v4 = 0;
    do
    {
      v5 = *(*a2 + 4 * v4);
      *(v36[0] + ((v5 >> 3) & 0x1FFFFFFC)) |= 1 << v5;
      StateMgr::verifyStateFull(a1, v5, 0, 0);
      if (*(*(a1 + 160) + 2 * v5))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3037, "voc/statemgr", 13, "%.500s %d %.500s %d", "fastEmptyTransitionsForKill", v5, "mIncludingLatticesCount", *(*(a1 + 160) + 2 * v5));
      }

      if (*(*(a1 + 192) + 2 * v5))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3040, "voc/statemgr", 13, "%.500s %d %.500s %d", "fastEmptyTransitionsForKill", v5, "mIncludingTransducersCount", *(*(a1 + 192) + 2 * v5));
      }

      if (*(*(a1 + 208) + 2 * v5))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3043, "voc/statemgr", 13, "%.500s %d %.500s %d", "fastEmptyTransitionsForKill", v5, "mIncludingTransducerGrammarsCount", *(*(a1 + 208) + 2 * v5));
      }

      if ((*(a1 + 696) & 1) == 0)
      {
        v6 = *(a1 + 464);
        if (!*(v6 + v5) && *(*(a1 + 680) + v5) == 1)
        {
          v7 = *(a1 + 608) + 16 * v5;
          v8 = *(v7 + 8);
          if (v8)
          {
            v9 = 0;
            v10 = *v7;
            v11 = 1;
            v12 = v8;
            do
            {
              v14 = *v10++;
              v13 = v14;
              if (v14 != v5 && !*(v6 + v13))
              {
                break;
              }

              v9 = v11++ >= v8;
              --v12;
            }

            while (v12);
            if (!v9)
            {
              *(a1 + 696) = 1;
            }
          }
        }
      }

      ++v4;
      v15 = *(a2 + 8);
    }

    while (v4 < v15);
    if (v15)
    {
      v16 = 0;
      do
      {
        v17 = *(*a2 + 4 * v16);
        v18 = *(a1 + 224) + 16 * v17;
        v19 = *(v18 + 8);
        if (v19)
        {
          v20 = 0;
          v21 = *v18;
          v22 = v36[0];
          do
          {
            v23 = *(v21 + 4 * v20);
            if (((*(v22 + ((v23 >> 3) & 0x1FFFFFFC)) >> v23) & 1) == 0)
            {
              v24 = *(a1 + 608) + 16 * v23;
              v25 = *(v24 + 8);
              if (v25)
              {
                v26 = *(v24 + 8);
                v27 = *v24;
                while (*v27 != v17)
                {
                  ++v27;
                  if (!--v26)
                  {
                    goto LABEL_25;
                  }
                }

                *v27 = *(*v24 + 4 * (v25 - 1));
                *(v24 + 8) = v25 - 1;
                v19 = *(v18 + 8);
              }
            }

LABEL_25:
            ++v20;
          }

          while (v20 < v19);
        }

        v28 = *(a1 + 608) + 16 * v17;
        v29 = *(v28 + 8);
        if (v29)
        {
          v30 = 0;
          v31 = *v28;
          v32 = v36[0];
          do
          {
            v33 = *(v31 + 4 * v30);
            if ((*(v32 + ((v33 >> 3) & 0x1FFFFFFC)) >> v33))
            {
              *(v31 + 4 * v30) = *(v31 + 4 * --v29);
              *(v28 + 8) = v29;
              --v30;
            }

            ++v30;
          }

          while (v30 < v29);
        }

        if (*v18)
        {
          MemChunkFree(*v18, 0);
          *v18 = 0;
        }

        *(v18 + 8) = 0;
        v34 = *(a1 + 240) + 16 * v17;
        if (*v34)
        {
          MemChunkFree(*v34, 0);
          *v34 = 0;
        }

        *(v34 + 8) = 0;
        v35 = *(a1 + 256) + 16 * v17;
        if (*v35)
        {
          MemChunkFree(*v35, 0);
          *v35 = 0;
        }

        *(v35 + 8) = 0;
        ++v16;
      }

      while (v16 < *(a2 + 8));
    }
  }

  BitArray::~BitArray(v36);
}

void sub_2625FFED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  BitArray::~BitArray(va);
  _Unwind_Resume(a1);
}

void StateMgr::addStateTransition(unint64_t a1, unsigned int a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  v9 = a2;
  StateMgr::verifyStateFull(a1, a2, a4, 0);
  v11 = v9;
  if (*(*(a1 + 336) + v9) && *(*(a1 + 368) + v9) != *(*(a1 + 352) + v9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3193, "voc/statemgr", 24, "%s", &errStr_voc_statemgr_E_SKIPPABLE_WB_MISMATCH);
  }

  LODWORD(v12) = *(a3 + 2);
  v69 = v9;
  if (v12)
  {
    v70 = a6;
    v13 = 0;
    do
    {
      v14 = *(*a3 + 4 * v13);
      v15 = *(*(a1 + 368) + v11);
      StateMgr::verifyStateFull(a1, *(*a3 + 4 * v13), 0, 0);
      if ((v15 == 0) == (*(*(a1 + 352) + v14) != 0))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3199, "voc/statemgr", 25, "%s", errStr_voc_statemgr_E_TRANSITION_WB_MISMATCH);
      }

      StateMgr::verifyStateFull(a1, v14, 0, 0);
      if (*(*(a1 + 336) + v14))
      {
        v16 = *(*(a1 + 368) + v11);
        StateMgr::verifyStateFull(a1, v14, 0, 0);
        if ((v16 == 0) == (*(*(a1 + 368) + v14) != 0))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 3203, "voc/statemgr", 24, "%s", &errStr_voc_statemgr_E_SKIPPABLE_WB_MISMATCH);
        }
      }

      ++v13;
      v12 = *(a3 + 2);
    }

    while (v13 < v12);
    v9 = v69;
    a6 = v70;
  }

  v17 = *(a1 + 224) + 16 * v11;
  v18 = *(v17 + 12);
  v19 = *(v17 + 8) + v12;
  if (v19 > v18)
  {
    DgnPrimArray<unsigned int>::reallocElts(*(a1 + 224) + 16 * v11, v19 - v18, 1);
    LODWORD(v12) = *(a3 + 2);
  }

  if (v12)
  {
    v20 = 0;
    v21 = *a3;
    v22 = *v17;
    do
    {
      *(v22 + 4 * (v20 + *(v17 + 8))) = *(v21 + 4 * v20);
      ++v20;
      v23 = *(a3 + 2);
    }

    while (v20 < v23);
  }

  else
  {
    LODWORD(v23) = 0;
  }

  *(v17 + 8) += v23;
  if (*(*(a1 + 336) + v11) == 1)
  {
    VocMgr::beginRuleStateRecursiveOperation(VocMgr::smpVocMgr);
    StateMgr::verifyStateNotInAllSkippableLoop(a1, v9, v9);
    VocMgr::endRuleStateRecursiveOperation(VocMgr::smpVocMgr);
  }

  if (*(*(a1 + 48) + 2 * v11))
  {
    v24 = *(a1 + 240) + 16 * v11;
    v25 = *(a6 + 8);
    v26 = *(v24 + 12);
    v27 = *(v24 + 8) + v25;
    if (v27 > v26)
    {
      DgnPrimArray<short>::reallocElts(v24, v27 - v26, 1);
      v25 = *(a6 + 8);
    }

    v71 = a5;
    if (v25)
    {
      v28 = 0;
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = a6;
        v32 = *(*a6 + v30);
        v33 = *(v71 + 8);
        v34 = *(a1 + 240) + 16 * v11;
        v35 = *(v34 + 8);
        if (v35 == *(v34 + 12))
        {
          DgnPrimArray<short>::reallocElts(*(a1 + 240) + 16 * v11, 1, 1);
          v35 = *(v34 + 8);
          v25 = *(v31 + 8);
        }

        *(*v34 + 2 * v35) = v32 + v33;
        *(v34 + 8) = v35 + 1;
        v29 += v32 + v33;
        ++v28;
        v30 += 16;
        a6 = v31;
      }

      while (v28 < v25);
    }

    else
    {
      v29 = 0;
    }

    v36 = *(a1 + 256) + 16 * v11;
    v37 = *(v36 + 12);
    v38 = *(v36 + 8) + v29;
    if (v38 > v37)
    {
      DgnPrimArray<unsigned int>::reallocElts(v36, v38 - v37, 1);
      v25 = *(a6 + 8);
    }

    v9 = v69;
    if (v25)
    {
      v39 = 0;
      do
      {
        v40 = *(a1 + 256) + 16 * v11;
        v41 = *(v71 + 8);
        v42 = *(v40 + 8);
        v43 = *(v40 + 12);
        if (v42 + v41 > v43)
        {
          DgnPrimArray<unsigned int>::reallocElts(*(a1 + 256) + 16 * v11, v42 + v41 - v43, 1);
          v41 = *(v71 + 8);
          v42 = *(v40 + 8);
        }

        if (v41)
        {
          v44 = *v40;
          v45 = v41;
          v46 = *v71 + 2;
          v47 = v42;
          do
          {
            *(v44 + 4 * v47) = *(v46 - 2);
            v46 += 4;
            ++v47;
            --v45;
          }

          while (v45);
        }

        *(v40 + 8) = v41 + v42;
        v48 = *(a1 + 256) + 16 * v11;
        v49 = *a6 + 16 * v39;
        v50 = *(v49 + 8);
        v51 = *(v48 + 8);
        v52 = *(v48 + 12);
        if (v51 + v50 > v52)
        {
          DgnPrimArray<unsigned int>::reallocElts(*(a1 + 256) + 16 * v11, v51 + v50 - v52, 1);
          v50 = *(v49 + 8);
          v51 = *(v48 + 8);
        }

        if (v50)
        {
          v53 = *v48;
          v54 = v50;
          v55 = *v49 + 2;
          v56 = v51;
          do
          {
            *(v53 + 4 * v56) = *(v55 - 2);
            v55 += 4;
            ++v56;
            --v54;
          }

          while (v54);
        }

        *(v48 + 8) = v50 + v51;
        ++v39;
      }

      while (v39 < *(a6 + 8));
    }
  }

  if (*(a3 + 2))
  {
    v57 = 0;
    v58 = 0;
    do
    {
      v59 = *(*a3 + 4 * v57);
      v58 = v58 || *(*(a1 + 680) + v59) == 1;
      StateMgr::addTransitioningStateRef(a1, v59, v9);
      ++v57;
    }

    while (v57 < *(a3 + 2));
  }

  else
  {
    v58 = 0;
  }

  if ((*(a1 + 696) & 1) == 0)
  {
    v60 = *(a1 + 680);
    if (*(v60 + v11) == 0 && v58)
    {
      v61 = *(a1 + 608) + 16 * v11;
      v62 = *(v61 + 8);
      if (!v62)
      {
        goto LABEL_63;
      }

      v63 = 0;
      v64 = *v61;
      v65 = 1;
      v66 = v62;
      do
      {
        v68 = *v64++;
        v67 = v68;
        if (v68 != v9 && *(v60 + v67) != 1)
        {
          break;
        }

        v63 = v65++ >= v62;
        --v66;
      }

      while (v66);
      if (!v63)
      {
        *(a1 + 696) = 1;
      }

      else
      {
LABEL_63:
        *(v60 + v11) = 1;
      }
    }
  }
}

void StateMgr::notifyPronsChanged(StateMgr *this, uint64_t a2)
{
  if (*(this + 180) >= 2u)
  {
    v4 = 1;
    do
    {
      if (*(*(this + 68) + v4) && *(a2 + 8))
      {
        for (i = 0; i < *(a2 + 8); ++i)
        {
          if (StateMgr::isWordIdInState(this, v4, *(*a2 + 4 * i), 0))
          {
            StateMgr::verifyState(this, v4);
            if (*(*this + 80 * v4 + 16) <= 5u)
            {
              StateMgr::recomputePrimitiveBegPhones(this, v4);
              break;
            }

            StateMgr::addPrimitiveBegPhones(this, v4, *(*a2 + 4 * i));
          }
        }
      }

      ++v4;
    }

    while (v4 < *(this + 180));
  }
}

uint64_t StateMgr::mergeBegPhones(void *a1, unsigned int a2, BitArray *a3)
{
  **a3 |= 1u;
  v6 = a2;
  v7 = *(a1[62] + 4 * a2);
  if (!v7)
  {
    v7 = a2;
  }

  result = BitArray::inplaceOrSameSize(a3, (a1[83] + 16 * v7));
  if (*(a1[42] + a2))
  {
    v9 = a1[28] + 16 * v6;
    if (*(v9 + 8))
    {
      v10 = 0;
      do
      {
        result = StateMgr::mergeBegPhones(a1, *(*v9 + 4 * v10++), a3);
        v9 = a1[28] + 16 * v6;
      }

      while (v10 < *(v9 + 8));
    }
  }

  return result;
}

void *StateMgr::mergeNextPhones(void *result, unsigned int a2, BitArray *a3)
{
  **a3 |= 1u;
  v3 = result[28] + 16 * a2;
  if (*(v3 + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = a2;
    do
    {
      result = StateMgr::mergeBegPhones(v5, *(*v3 + 4 * v6++), a3);
      v3 = v5[28] + 16 * v7;
    }

    while (v6 < *(v3 + 8));
  }

  return result;
}

uint64_t StateMgr::cacheAllWordInStateInfo(uint64_t this)
{
  v1 = *(this + 24);
  if (v1 >= 2)
  {
    v2 = this;
    v3 = 1;
    v4 = 96;
    do
    {
      if (*(*(v2 + 544) + v3) && !*(*(v2 + 16) + 8 * v3) && *(*v2 + v4) >= 0x1F4u)
      {
        this = StateMgr::getBitWords(v2, v3);
        v1 = *(v2 + 24);
      }

      ++v3;
      v4 += 80;
    }

    while (v3 < v1);
  }

  return this;
}

void *DgnArray<DgnCollArray<unsigned int,WordList>>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 80 * v2 - 80;
    do
    {
      DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(*a1 + v3);
      v3 -= 80;
    }

    while (v3 != -80);
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

void *DgnIOwnArray<DgnPrimArray<unsigned int> *>::destructAt(void *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<DgnPrimArray<unsigned int>>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

void *DgnIOwnArray<BitArray *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<BitArray>(*(*a1 + v3));
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

BitArray *DgnIOwnArray<BitArray *>::destructAt(BitArray *result, int a2, int a3)
{
  if (a3 + a2 > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = a3 + a2 - 1;
    do
    {
      result = DgnDelete<BitArray>(*(*v3 + 8 * v5));
      *(*v3 + 8 * v5) = 0;
    }

    while (v5-- > v4);
  }

  return result;
}

void DgnCollArray<unsigned int,WordList>::readObject(uint64_t a1, DgnStream *a2, unsigned int *a3)
{
  readObject<unsigned int>(a2, a1 + 8, a3);
  readObject<unsigned short>(a2, a1 + 40, a3);
  v14 = 0;
  readObject(a2, &v14, a3);
  readObject(a2, &v14, a3);
  *a1 = v14 != 0;
  readObject(a2, &v14 + 1, a3);
  *(a1 + 2) = WORD2(v14);
  readObject(a2, &v14, a3);
  *(a1 + 4) = v14 != 0;
  readObject(a2, &v14, a3);
  *(a1 + 5) = v14 != 0;
  v13 = 0;
  readObject(a2, &v13, a3);
  LODWORD(v6) = *(a1 + 32);
  if (v6)
  {
    v7 = 0;
    do
    {
      DgnDelete<DgnPrimArray<unsigned int>>(*(*(a1 + 24) + 8 * v7));
      *(*(a1 + 24) + 8 * v7++) = 0;
      v6 = *(a1 + 32);
    }

    while (v7 < v6);
  }

  v8 = v13;
  v9 = *(a1 + 36);
  if (v13 > v9)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a1 + 24, v13 - v9, 0);
    LODWORD(v6) = *(a1 + 32);
  }

  if (v6 <= v8)
  {
    if (v6 < v8)
    {
      v6 = v6;
      do
      {
        *(*(a1 + 24) + 8 * v6++) = 0;
      }

      while (v8 != v6);
    }
  }

  else
  {
    DgnIOwnArray<DgnPrimArray<unsigned int> *>::destructAt((a1 + 24), v8, v6 - v8);
  }

  *(a1 + 32) = v8;
  if (v8)
  {
    v10 = 0;
    do
    {
      v12 = 0;
      readObject(a2, &v12, a3);
      *(*(a1 + 24) + 8 * v10) = 0;
      if (v12)
      {
        v11 = MemChunkAlloc(0x10uLL, 0);
        *v11 = 0;
        v11[1] = 0;
        *(*(a1 + 24) + 8 * v10) = v11;
        readObject<unsigned int>(a2, *(*(a1 + 24) + 8 * v10), a3);
      }

      ++v10;
    }

    while (v10 < *(a1 + 32));
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
}

uint64_t *DgnArray<StateSpec>::copyArraySlice(uint64_t *result, void *a2, unsigned int a3, unsigned int a4)
{
  v7 = result;
  *(result + 2) = 0;
  v8 = *(result + 3);
  if (a4 <= v8)
  {
    if (!a4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = DgnPrimArray<unsigned long long>::reallocElts(result, a4 - v8, 0);
  }

  v9 = *(v7 + 2);
  v10 = a4;
  do
  {
    *(*v7 + 8 * v9) = *(*a2 + 8 * a3);
    v9 = *(v7 + 2) + 1;
    *(v7 + 2) = v9;
    ++a3;
    --v10;
  }

  while (v10);
LABEL_6:
  *(v7 + 2) = a4;
  return result;
}

uint64_t *DgnArray<RuleSpec>::copyArraySlice(uint64_t *result, uint64_t *a2, unsigned int a3, unsigned int a4)
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
    result = DgnPrimArray<unsigned int>::reallocElts(result, a4 - v8, 0);
    v9 = *(v7 + 2);
  }

  v11 = *a2;
  v12 = *v7;
  v13 = a4;
  v10 = v9;
  do
  {
    *(v12 + 4 * v10++) = *(v11 + 4 * a3++);
    --v13;
  }

  while (v13);
LABEL_6:
  if (v10 < a4)
  {
    v14 = a4 - v10;
    v15 = *v7 + 4 * v10 + 2;
    do
    {
      *(v15 - 2) = 127;
      v15 += 4;
      --v14;
    }

    while (v14);
  }

  *(v7 + 2) = a4;
  return result;
}

uint64_t DgnCollArray<unsigned int,WordList>::writeObject(unsigned __int8 *a1, DgnStream *a2, unsigned int *a3)
{
  writeObject<unsigned int>(a2, (a1 + 8), a3);
  writeObject<unsigned short>(a2, (a1 + 40), a3);
  v13 = 0;
  writeObject(a2, &v13, a3);
  v12 = *a1;
  writeObject(a2, &v12, a3);
  v11 = *(a1 + 1);
  writeObject(a2, &v11, a3);
  v10 = a1[4];
  writeObject(a2, &v10, a3);
  v9 = a1[5];
  writeObject(a2, &v9, a3);
  v8 = *(a1 + 8);
  result = writeObject(a2, &v8, a3);
  if (*(a1 + 8))
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 3) + 8 * v7) != 0;
      result = writeObject(a2, &v8, a3);
      if (v8)
      {
        result = writeObject<unsigned int>(a2, *(*(a1 + 3) + 8 * v7), a3);
      }

      ++v7;
    }

    while (v7 < *(a1 + 8));
  }

  return result;
}

uint64_t DgnCollArray<unsigned int,WordList>::mergeLargeSortedArray(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v3 = a3;
  if (*a1 == 1 && *(a1 + 2) == a3)
  {
    v6 = a1 + 8;
  }

  else
  {
    v6 = *(*(a1 + 24) + 8 * a3);
  }

  v7 = *(v6 + 8);
  v8 = *(a2 + 2) + v7;
  v29 = 0;
  v30 = 0;
  DgnPrimArray<int>::copyArraySlice(&v29, v6, 0, v7);
  v10 = *(v6 + 12);
  if (v8 > v10)
  {
    DgnPrimArray<unsigned int>::reallocElts(v6, v8 - v10, 0);
  }

  v11 = 0;
  *(v6 + 8) = v8;
  v12 = *(a1 + 64);
  v27 = v12;
  v28 = v3;
  v13 = v30;
  v14 = *(a2 + 2);
  v15 = 0;
  v16 = 0;
  if (v30 && v14)
  {
    v16 = 0;
    v15 = 0;
    v11 = 0;
    do
    {
      v17 = WordList::compareElements(&v27, (v29 + 4 * v11), (*a2 + 4 * v15), v9, *&v12);
      v18 = (v29 + 4 * v11);
      if (v17 < 1)
      {
        ++v11;
      }

      else
      {
        v18 = (*a2 + 4 * v15);
      }

      *(*v6 + 4 * v16) = *v18;
      if (v17 > 0)
      {
        ++v15;
      }

      ++v16;
      v13 = v30;
      v14 = *(a2 + 2);
    }

    while (v11 < v30 && v15 < v14);
  }

  if (v11 < v13)
  {
    v20 = v29;
    v21 = *v6;
    v22 = v11;
    do
    {
      *(v21 + 4 * v16++) = *(v20 + 4 * v22++);
    }

    while (v22 < v30);
    v14 = *(a2 + 2);
  }

  if (v15 < v14)
  {
    v23 = *a2;
    v24 = *v6;
    v25 = v15;
    do
    {
      *(v24 + 4 * v16++) = *(v23 + 4 * v25++);
    }

    while (v25 < *(a2 + 2));
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v29);
}

void sub_262600EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t DgnCollArray<unsigned int,WordList>::mergeSmallSortedArray(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v3 = a3;
  if (*a1 == 1 && *(a1 + 2) == a3)
  {
    v6 = (a1 + 8);
  }

  else
  {
    v6 = *(*(a1 + 24) + 8 * a3);
  }

  v7 = *(v6 + 2);
  v8 = *(a2 + 2);
  v23 = 0;
  v24 = 0;
  if (v8 + v7)
  {
    v25 = 0;
    HIDWORD(v24) = realloc_array(0, &v25, 4 * (v8 + v7), 0, 0, 1) >> 2;
    v9 = v25;
    v23 = v25;
  }

  else
  {
    v9 = 0;
  }

  LODWORD(v24) = v8 + v7;
  v10 = *v6;
  if (v8)
  {
    v11 = 0;
    v12 = 0;
    v13 = *a2;
    do
    {
      LODWORD(v25) = *(v13 + 4 * v11);
      v26 = *(a1 + 64);
      v27 = v3;
      v28 = 0;
      v14 = DgnPrimArray<unsigned int>::searchLastOrBefore(v6, v12, *(v6 + 2), &v25, *(a1 + 56));
      LODWORD(v15) = v14 + 1;
      if (v14 == -1)
      {
        v15 = v12;
      }

      else
      {
        v15 = v15;
      }

      if (v12 < v15)
      {
        v16 = (v10 + 4 * v12);
        v17 = v15 - v12;
        do
        {
          v18 = *v16++;
          *v9++ = v18;
          --v17;
        }

        while (v17);
      }

      *v9++ = *(v13 + 4 * v11++);
      v12 = v15;
    }

    while (v11 != v8);
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 < v7)
  {
    v19 = (v10 + 4 * v15);
    v20 = v7 - v15;
    do
    {
      v21 = *v19++;
      *v9++ = v21;
      --v20;
    }

    while (v20);
  }

  if (*v6)
  {
    MemChunkFree(*v6, 0);
    *v6 = 0;
  }

  *v6 = v23;
  v6[1] = v24;
  v23 = 0;
  v24 = 0;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
}

uint64_t mrec_qsort_r<WordList>(uint64_t result, unint64_t a2, int64_t a3, CollMgr **a4, double a5)
{
  v5 = a4;
  v7 = a2;
  v8 = result;
  v9 = -a3;
  v115 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v10 = 2;
  }

  else
  {
    v10 = a3 != 8;
  }

  v120 = ((result | a3) & 7) == 0;
  v121 = v10;
  if (a2 < 7)
  {
LABEL_117:
    if ((v7 * a3) > a3)
    {
      v86 = v5;
      v118 = (v8 + v7 * a3);
      v87 = (v8 + a3);
      v88 = v8;
      do
      {
        if (v87 > v8)
        {
          v89 = v88;
          v90 = v87;
          do
          {
            v91 = v90;
            v90 = (v90 + v9);
            result = WordList::compareElements(v86, v90, v91, a4, a5);
            if (result < 1)
            {
              break;
            }

            if (v121)
            {
              if (v120)
              {
                v92 = 0;
                v93 = v90;
                do
                {
                  v94 = *&v91[2 * v92];
                  *&v91[2 * v92] = *v93;
                  *v93 = v94;
                  v93 += 2;
                  ++v92;
                }

                while (a3 >> 3 != v92);
              }

              else
              {
                v96 = 0;
                v97 = a3;
                do
                {
                  v98 = *(v91 + v96);
                  *(v91 + v96) = *(v89 + v96);
                  *(v89 + v96++) = v98;
                  --v97;
                }

                while (v97);
              }
            }

            else
            {
              v95 = *v91;
              *v91 = *v90;
              *v90 = v95;
            }

            v89 = (v89 + v9);
          }

          while (v90 > v8);
        }

        v87 = (v87 + a3);
        v88 = (v88 + a3);
      }

      while (v87 < v118);
    }

    return result;
  }

  v11 = a3 >> 3;
  while (1)
  {
    v12 = (v8 + (v7 >> 1) * a3);
    if (v7 == 7)
    {
      goto LABEL_44;
    }

    v13 = (v8 + (v7 - 1) * a3);
    if (v7 >= 0x29)
    {
      v116 = (v8 + (v7 - 1) * a3);
      v14 = (v7 >> 3) * a3;
      v15 = (v8 + v14);
      v112 = v14;
      v16 = (v8 + 2 * v14);
      v17 = WordList::compareElements(v5, v8, (v8 + v14), a4, a5);
      v114 = v15;
      v20 = WordList::compareElements(v5, v15, v16, v18, v19);
      if (v17 < 0)
      {
        if ((v20 & 0x80000000) == 0)
        {
          if (WordList::compareElements(v5, v8, v16, v21, v22) >= 0)
          {
            v23 = v8;
          }

          else
          {
            v23 = v16;
          }

          goto LABEL_18;
        }
      }

      else if (v20 <= 0)
      {
        if (WordList::compareElements(v5, v8, v16, v21, v22) >= 0)
        {
          v23 = v16;
        }

        else
        {
          v23 = v8;
        }

LABEL_18:
        v114 = v23;
      }

      v25 = (v7 >> 3) * a3;
      v26 = (v12 + v112);
      v111 = (v12 - v112);
      v27 = WordList::compareElements(v5, (v12 - v112), (v8 + (v7 >> 1) * a3), v21, v22);
      v30 = WordList::compareElements(v5, (v8 + (v7 >> 1) * a3), (v12 + v112), v28, v29);
      if (v27 < 0)
      {
        if ((v30 & 0x80000000) == 0)
        {
          v12 = (v12 - v112);
          if (WordList::compareElements(v5, v111, v26, v31, v32) < 0)
          {
            v12 = v26;
          }
        }
      }

      else if (v30 <= 0)
      {
        v12 = (v12 - v112);
        if (WordList::compareElements(v5, v111, v26, v31, v32) >= 0)
        {
          v12 = v26;
        }
      }

      v13 = (v116 - v112);
      v113 = (v116 - 2 * v112);
      v33 = WordList::compareElements(v5, (v116 - 2 * v25), (v116 - v25), v31, v32);
      v36 = WordList::compareElements(v5, (v116 - v25), v116, v34, v35);
      if (v33 < 0)
      {
        v24 = v114;
        if ((v36 & 0x80000000) == 0)
        {
          v13 = (v8 + (v7 - 1) * a3);
          if (WordList::compareElements(v5, v113, v116, a4, a5) >= 0)
          {
            v13 = v113;
          }
        }
      }

      else
      {
        v24 = v114;
        if (v36 <= 0)
        {
          v13 = (v8 + (v7 - 1) * a3);
          if (WordList::compareElements(v5, v113, v116, a4, a5) < 0)
          {
            v13 = v113;
          }
        }
      }

      goto LABEL_35;
    }

    v24 = v8;
LABEL_35:
    v37 = WordList::compareElements(v5, v24, v12, a4, a5);
    result = WordList::compareElements(v5, v12, v13, v38, v39);
    if (v37 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WordList::compareElements(v5, v24, v13, a4, a5);
        if (result >= 0)
        {
          v12 = v24;
        }

        else
        {
          v12 = v13;
        }
      }
    }

    else if (result <= 0)
    {
      result = WordList::compareElements(v5, v24, v13, a4, a5);
      if (result >= 0)
      {
        v12 = v13;
      }

      else
      {
        v12 = v24;
      }
    }

LABEL_44:
    if (v121)
    {
      if (v120)
      {
        v40 = v8;
        v41 = a3 >> 3;
        do
        {
          v42 = *v40;
          *v40 = *v12;
          v40 += 2;
          *v12 = v42;
          v12 += 2;
          --v41;
        }

        while (v41);
      }

      else
      {
        v44 = a3;
        v45 = v8;
        do
        {
          v46 = *v45;
          *v45 = *v12;
          v45 = (v45 + 1);
          *v12 = v46;
          v12 = (v12 + 1);
          --v44;
        }

        while (v44);
      }
    }

    else
    {
      v43 = *v8;
      *v8 = *v12;
      *v12 = v43;
    }

    v47 = 0;
    v48 = (v8 + a3);
    v117 = v7;
    v49 = (v8 + (v7 - 1) * a3);
    v50 = v49;
    v51 = (v8 + a3);
LABEL_53:
    while (v51 <= v50)
    {
      result = WordList::compareElements(v5, v51, v8, a4, a5);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v121)
        {
          if (v120)
          {
            v52 = 0;
            do
            {
              v53 = v48[v52];
              v48[v52] = *&v51[2 * v52];
              *&v51[2 * v52++] = v53;
            }

            while (v11 != v52);
          }

          else
          {
            v62 = 0;
            do
            {
              v63 = *(v48 + v62);
              *(v48 + v62) = *(v51 + v62);
              *(v51 + v62++) = v63;
            }

            while (a3 != v62);
          }
        }

        else
        {
          v61 = *v48;
          *v48 = *v51;
          *v51 = v61;
        }

        v48 = (v48 + a3);
        v47 = 1;
      }

      v51 = (v51 + a3);
    }

    while (v51 <= v50)
    {
      result = WordList::compareElements(v5, v50, v8, a4, a5);
      if ((result & 0x80000000) != 0)
      {
        if (v121)
        {
          if (v120)
          {
            v59 = 0;
            do
            {
              v60 = *&v51[2 * v59];
              *&v51[2 * v59] = *&v50[2 * v59];
              *&v50[2 * v59++] = v60;
            }

            while (v11 != v59);
          }

          else
          {
            v65 = 0;
            do
            {
              v66 = *(v51 + v65);
              *(v51 + v65) = *(v50 + v65);
              *(v50 + v65++) = v66;
            }

            while (a3 != v65);
          }
        }

        else
        {
          v64 = *v51;
          *v51 = *v50;
          *v50 = v64;
        }

        v51 = (v51 + a3);
        v50 = (v50 + v9);
        v47 = 1;
        goto LABEL_53;
      }

      if (!result)
      {
        if (v121)
        {
          if (v120)
          {
            v54 = 0;
            do
            {
              v55 = *&v50[2 * v54];
              *&v50[2 * v54] = *&v49[2 * v54];
              *&v49[2 * v54++] = v55;
            }

            while (v11 != v54);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = *(v50 + v57);
              *(v50 + v57) = *(v49 + v57);
              *(v49 + v57++) = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v50;
          *v50 = *v49;
          *v49 = v56;
        }

        v49 = (v49 + v9);
        v47 = 1;
      }

      v50 = (v50 + v9);
    }

    v67 = (v8 + v117 * a3);
    if (!v47)
    {
      break;
    }

    v68 = v51 - v48;
    if (v48 - v8 >= v51 - v48)
    {
      v69 = v51 - v48;
    }

    else
    {
      v69 = v48 - v8;
    }

    if (v69)
    {
      if (v120)
      {
        v70 = (v51 - v69);
        v71 = v69 >> 3;
        v72 = v8;
        do
        {
          v73 = *v72;
          *v72 = *v70;
          v72 += 2;
          *v70++ = v73;
          --v71;
        }

        while (v71);
      }

      else
      {
        v74 = -v69;
        v75 = v8;
        do
        {
          v76 = *v75;
          *v75 = *(v51 + v74);
          v75 = (v75 + 1);
          *(v51 + v74) = v76;
          v77 = __CFADD__(v74++, 1);
        }

        while (!v77);
      }
    }

    v78 = v49 - v50;
    if (v49 - v50 >= v67 - (v49 + a3))
    {
      v79 = v67 - (v49 + a3);
    }

    else
    {
      v79 = v49 - v50;
    }

    if (v79)
    {
      if (v120)
      {
        v80 = v67 - v79;
        v81 = v79 >> 3;
        do
        {
          v82 = *v51;
          *v51 = *v80;
          v51 += 2;
          *v80 = v82;
          v80 += 8;
          --v81;
        }

        while (v81);
      }

      else
      {
        v83 = -v79;
        do
        {
          v84 = *v51;
          *v51 = *(v67 + v83);
          v51 = (v51 + 1);
          *(v67 + v83) = v84;
          v77 = __CFADD__(v83++, 1);
        }

        while (!v77);
      }
    }

    if (v68 > a3)
    {
      result = mrec_qsort_r<WordList>(v8, v68 / a3, a3, a4);
    }

    if (v78 <= a3)
    {
      return result;
    }

    v8 = (v67 - v78);
    v7 = v78 / a3;
    v85 = v115;
    if ((((v67 - v78) | a3) & 7) != 0)
    {
      v85 = 2;
    }

    v120 = (((v67 - v78) | a3) & 7) == 0;
    v121 = v85;
    v5 = a4;
    if (v7 < 7)
    {
      goto LABEL_117;
    }
  }

  v99 = (v8 + a3);
  if (v117 * a3 > a3)
  {
    v100 = v8;
    do
    {
      if (v99 > v8)
      {
        v101 = v100;
        v102 = v99;
        do
        {
          v103 = v102;
          v102 = (v102 + v9);
          result = WordList::compareElements(a4, v102, v103, a4, a5);
          if (result < 1)
          {
            break;
          }

          if (v121)
          {
            if (v120)
            {
              v104 = 0;
              v105 = v102;
              do
              {
                v106 = *&v103[2 * v104];
                *&v103[2 * v104] = *v105;
                *v105 = v106;
                v105 += 2;
                ++v104;
              }

              while (v11 != v104);
            }

            else
            {
              v108 = 0;
              v109 = a3;
              do
              {
                v110 = *(v103 + v108);
                *(v103 + v108) = *(v101 + v108);
                *(v101 + v108++) = v110;
                --v109;
              }

              while (v109);
            }
          }

          else
          {
            v107 = *v103;
            *v103 = *v102;
            *v102 = v107;
          }

          v101 = (v101 + v9);
        }

        while (v102 > v8);
      }

      v99 = (v99 + a3);
      v100 = (v100 + a3);
    }

    while (v99 < v67);
  }

  return result;
}

uint64_t DgnCollArray<unsigned int,WordList>::removeSortedArray(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*a1 == 1 && *(a1 + 2) == a3)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = *(*(a1 + 24) + 8 * a3);
  }

  v5 = *(v4 + 8);
  v6 = *(a2 + 8);
  LODWORD(v22) = **a2;
  v23 = *(a1 + 64);
  v24 = a3;
  v25 = 0;
  Equal = DgnPrimArray<unsigned int>::searchFirstEqual(v4, 0, v5, &v22, *(a1 + 56));
  v8 = v5 - v6;
  v22 = 0;
  *&v23 = 0;
  DgnPrimArray<int>::copyArraySlice(&v22, v4, 0, *(v4 + 8));
  v9 = *(v4 + 12);
  if (v8 > v9)
  {
    DgnPrimArray<unsigned int>::reallocElts(v4, v8 - v9, 0);
  }

  *(v4 + 8) = v8;
  if (Equal < v5)
  {
    v10 = 0;
    v11 = v22;
    v12 = *a2;
    v13 = Equal;
    do
    {
      v14 = *(v11 + 4 * v13);
      if (v14 == v12[v10])
      {
        v15 = v13 + 1;
        if (++v10 == *(a2 + 8) && v15 < v5)
        {
          v17 = *v4;
          v18 = (v11 + 4 * v15);
          v19 = ~v13 + v5;
          do
          {
            v20 = *v18++;
            *(v17 + 4 * Equal++) = v20;
            --v19;
          }

          while (v19);
          return DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
        }

        ++v13;
      }

      else
      {
        *(*v4 + 4 * Equal++) = v14;
        ++v13;
      }
    }

    while (v13 < v5);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
}

uint64_t DgnPrimArray<unsigned int>::searchFirstEqual(void *a1, int a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = 0xFFFFFFFFLL;
  if (a3)
  {
    v6 = a2;
    if (a3 > a2)
    {
      v10 = a3 - 1;
      do
      {
        v5 = ((v6 + v10) / 2);
        v11 = a5(*a1 + 4 * v5, a4);
        if (v11)
        {
          if (v11 < 0)
          {
            v6 = v5 + 1;
          }

          else
          {
            v10 = v5 - 1;
          }
        }

        else
        {
          v12 = v10 == v6;
          v10 = (v6 + v10) / 2;
          if (v12)
          {
            return v5;
          }
        }
      }

      while (v6 <= v10);
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t DgnCollArray<unsigned int,WordList>::sortCollation(uint64_t a1, unsigned int a2)
{
  if (*a1 == 1 && *(a1 + 2) == a2)
  {
    v4 = a1 + 8;
  }

  else
  {
    v4 = *(*(a1 + 24) + 8 * a2);
  }

  v8 = v2;
  v9 = v3;
  v6 = *(a1 + 64);
  v7 = a2;
  return mrec_qsort_r<WordList>(*v4, *(v4 + 8), 4, &v6, *&v6);
}

void MrecInitModule_fstcore_fst(void)
{
  if (!gParDebugFstLatticeConstruction)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugFstLatticeConstruction", &unk_262873A63, &unk_262873A63, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugFstLatticeConstruction = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugFstLatticeConstruction);
  }
}

uint64_t FstCore::FstCore(uint64_t a1, __int128 *a2, __int16 a3, uint64_t a4, uint64_t a5, const ArcGraph *a6)
{
  *a1 = 0x7FFFFFFFF0;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = -16;
  *(a1 + 44) = 0;
  *(a1 + 72) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  PelStats::resetStats((a1 + 80));
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  PelStats::resetStats((a1 + 256));
  SearchStats::resetStats(a1 + 432);
  SearchStats::resetStats(a1 + 464);
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  LatticeStats::LatticeStats((a1 + 688));
  *(a1 + 1096) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1408) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 1112) = *(a2 + 79);
  if (a4)
  {
    v11 = *(a4 + 48);
  }

  else
  {
    v11 = 0;
  }

  if (*(a2 + 78) == 1)
  {
    v12 = MemChunkAlloc(0x138uLL, 0);
    FwdBwd::FwdBwd(v12, v11);
  }

  else
  {
    FstCore::generateDecoder(*(a2 + 7), *(a2 + 76), *(a2 + 64), *(a2 + 77), *(a2 + 9) != 5000, *(a2 + 17), *(a2 + 18));
  }

  *(a1 + 16) = v13;
  *(v13 + 104) = a1 + 1120;
  v14 = *a2;
  *(&v14 + 1) = *(a2 + 12);
  *(v13 + 8) = v14;
  SearchItf::setHashPropagateBestTokensFirst(v13, *(a2 + 5));
  v15 = *(a1 + 16);
  v15[7] = *(a2 + 6);
  (*(*v15 + 96))(v15, v11);
  (*(**(a1 + 16) + 104))(*(a1 + 16), v11, a5);
  v16 = *(a1 + 16);
  *(v16 + 56) = a4;
  v17 = **(a4 + 48);
  *(v16 + 64) = *v17;
  *(v16 + 68) = *(v17 + 56);
  *(v16 + 72) = *(a2 + 4);
  SearchItf::setArcGraph(v16, a6);
  (*(**(a1 + 16) + 144))(*(a1 + 16), *(a1 + 24), a5 == 2);
  *(a1 + 60) = *(a2 + 5);
  v18 = MemChunkAlloc(0xD0uLL, 0);
  *(a1 + 72) = SearchLMScorer::SearchLMScorer(v18, *(a2 + 12), *(a2 + 52), *(a2 + 14), *(a2 + 15), 0, 0, 0, 0, 0);
  return a1;
}

void FstCore::~FstCore(SearchItf **this)
{
  SearchItf::unsetArcGraph(this[2]);
  DgnDelete<SearchItf>(this[2]);
  this[2] = 0;
  DgnDelete<SearchLMScorer>(this[9]);
  this[9] = 0;
  DgnDelete<Constraint>(this[138]);
  this[138] = 0;
}

void *DgnDelete<SearchItf>(void *result)
{
  if (result)
  {
    v1 = result;
    (*(*result + 16))(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

SearchLMScorer *DgnDelete<SearchLMScorer>(SearchLMScorer *result)
{
  if (result)
  {
    SearchLMScorer::~SearchLMScorer(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

Constraint *DgnDelete<Constraint>(Constraint *result)
{
  if (result)
  {
    Constraint::~Constraint(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t FstCore::beginTopRecPassSyncRecogEmbedded(FstCore *this, int a2, int a3, PelScorer *a4, int a5)
{
  *(this + 4) = a4;
  v6 = *(this + 12) * a2;
  *(this + 13) = a2;
  *(this + 14) = v6;
  *(this + 10) = a3;
  *this = a5;
  v7 = *(this + 2);
  v8 = *(v7 + 128);
  if (v8)
  {
    if (v8 != 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 202, "fst/fstcore", 4, "%u", *(v7 + 128));
    }

    ArcGraphOrThrow = ArcGraphMgr::getArcGraphOrThrow(ArcGraphMgr::smpArcGraphMgr, *(*(v7 + 120) + 6));
    v7 = *(this + 2);
  }

  else
  {
    ArcGraphOrThrow = 0;
  }

  v11 = *(*v7 + 48);

  return v11(v7, a4, ArcGraphOrThrow);
}

uint64_t FstCore::beginTopRecPassSyncRecog(FstCore *this, int a2, int a3, PelScorer *a4)
{
  FstCore::beginTopRecPassSyncRecogEmbedded(this, a2, a3, a4, 0);
  PelScoreCache::addCacheClient(*(*(this + 4) + 120), this);
  *(this + 44) = 1;
  v5 = *(**(this + 2) + 112);

  return v5();
}

uint64_t FstCore::seedTheory(FstCore *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 24))
  {
    a3 = (2 * a3 + 1);
  }

  else
  {
    a3 = a3;
  }

  return (*(**(this + 2) + 112))(*(this + 2), a2, a3, a4, this + 432);
}

uint64_t FstCore::endTopRecPassSyncRecog(FstCore *this)
{
  v2 = *(*(this + 4) + 120);
  PelScoreCache::removeCacheClientOfFramesFromTimeOn(v2, *this, 1, this);
  v3.n128_f64[0] = PelScoreCache::removeCacheClient(v2, this);
  *(this + 44) = 0;
  *(this + 4) = 0;
  v4 = *(**(this + 2) + 56);

  return v4(v3);
}

uint64_t FstCore::doFrame(unsigned int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = v4[15];
  (*(*v4 + 56))(v4, v3, 0, a2, a1 + 20, *(a1 + 1112));
  FstCore::doFrameEmbedded(a1, 5000, 1);
  (*(**(a1 + 4) + 64))(*(a1 + 4), v3, a1 + 20);

  return PelScoreCache::removeCacheClientOfFrame(v5, v3, a1);
}

uint64_t FstCore::doFrameEmbedded(FstCore *this, uint64_t a2, int a3)
{
  if (*(this + 24))
  {
    v6 = (2 * *this);
    if (a3)
    {
      v7 = *(this + 2);
      if (*this <= 0)
      {
        v8 = -1;
      }

      else
      {
        v8 = v6 - 1;
      }

      v9 = (*(*v7 + 184))(*(this + 2));
      a2 = SearchItf::normalizeBestAndComputeEstimatedThresh(v7, v8, v9);
    }

    (*(**(this + 2) + 8))(*(this + 2), v6, a2, this + 432, 0);
    if (a3)
    {
      v10 = *(this + 2);
      v11 = (*(*v10 + 184))(v10);
      SearchItf::normalizeBestAndComputeEstimatedThresh(v10, v6, v11);
    }

    v12 = *(**(this + 2) + 8);
  }

  else
  {
    if (a3)
    {
      v13 = *(this + 2);
      if (*this <= 0)
      {
        v14 = -1;
      }

      else
      {
        v14 = *this - 1;
      }

      v15 = (*(*v13 + 184))(*(this + 2));
      SearchItf::normalizeBestAndComputeEstimatedThresh(v13, v14, v15);
    }

    v12 = *(**(this + 2) + 8);
  }

  result = v12();
  ++*(this + 108);
  ++*this;
  return result;
}

uint64_t FstCore::beginTopRecSyncRecog(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 48) = a2;
  *a1 = -16;
  *(a1 + 1120) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0u;
  *(a1 + 1248) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1408) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 0u;
  *(a1 + 1504) = 0u;
  *(a1 + 1520) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1616) = 0u;
  (*(**(a1 + 16) + 32))(*(a1 + 16), a3);
  v4 = ***(a1 + 16);

  return v4();
}

double FstStats::resetStats(FstStats *this)
{
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

double FstCore::endTopRecSyncRecog(FstCore *this)
{
  (*(**(this + 2) + 40))(*(this + 2));
  result = 0.0;
  *(this + 70) = 0u;
  *(this + 71) = 0u;
  *(this + 72) = 0u;
  *(this + 73) = 0u;
  *(this + 74) = 0u;
  *(this + 75) = 0u;
  *(this + 76) = 0u;
  *(this + 77) = 0u;
  *(this + 78) = 0u;
  *(this + 79) = 0u;
  *(this + 80) = 0u;
  *(this + 81) = 0u;
  *(this + 82) = 0u;
  *(this + 83) = 0u;
  *(this + 84) = 0u;
  *(this + 85) = 0u;
  *(this + 86) = 0u;
  *(this + 87) = 0u;
  *(this + 88) = 0u;
  *(this + 89) = 0u;
  *(this + 90) = 0u;
  *(this + 91) = 0u;
  *(this + 92) = 0u;
  *(this + 93) = 0u;
  *(this + 94) = 0u;
  *(this + 95) = 0u;
  *(this + 96) = 0u;
  *(this + 97) = 0u;
  *(this + 98) = 0u;
  *(this + 99) = 0u;
  *(this + 100) = 0u;
  *(this + 101) = 0u;
  return result;
}

void FstCore::printSize(FstCore *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 382);
  if (v129)
  {
    v13 = v128;
  }

  else
  {
    v13 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_262873A63, a3, &unk_262873A63, v13);
  DgnString::~DgnString(&v128);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_262873A63);
  v15 = (a3 + 1);
  v16 = (34 - a3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 383);
  if (v129)
  {
    v18 = v128;
  }

  else
  {
    v18 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v17, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v18, 4, 4, 0);
  DgnString::~DgnString(&v128);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 384);
  if (v129)
  {
    v20 = v128;
  }

  else
  {
    v20 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v19, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v20, 2, 2, 0);
  DgnString::~DgnString(&v128);
  *a4 += 2;
  *a5 += 2;
  v21 = *(this + 2);
  if (v21)
  {
    v127 = 0;
    v128 = 0;
    v126 = 0;
    (*(*v21 + 64))(v21, 0xFFFFFFFFLL, (a3 + 1), &v128, &v127, &v126);
    *a4 += v128;
    *a5 += v127;
    *a6 += v126;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v22 = 4;
  }

  else
  {
    v22 = 8;
  }

  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 385);
  if (v129)
  {
    v24 = v128;
  }

  else
  {
    v24 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v24, v22, v22, 0);
  DgnString::~DgnString(&v128);
  *a4 += v22;
  *a5 += v22;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 387);
  if (v129)
  {
    v26 = v128;
  }

  else
  {
    v26 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v26, 1, 1, 0);
  DgnString::~DgnString(&v128);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 4;
  }

  else
  {
    v27 = 8;
  }

  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 388);
  if (v129)
  {
    v29 = v128;
  }

  else
  {
    v29 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v29, v27, v27, 0);
  DgnString::~DgnString(&v128);
  *a4 += v27;
  *a5 += v27;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 390);
  if (v129)
  {
    v31 = v128;
  }

  else
  {
    v31 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v31, 4, 4, 0);
  DgnString::~DgnString(&v128);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 392);
  if (v129)
  {
    v33 = v128;
  }

  else
  {
    v33 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v33, 1, 1, 0);
  DgnString::~DgnString(&v128);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 394);
  if (v129)
  {
    v35 = v128;
  }

  else
  {
    v35 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v34, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v35, 4, 4, 0);
  DgnString::~DgnString(&v128);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 396);
  if (v129)
  {
    v37 = v128;
  }

  else
  {
    v37 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v37, 4, 4, 0);
  DgnString::~DgnString(&v128);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 398);
  if (v129)
  {
    v39 = v128;
  }

  else
  {
    v39 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v38, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v39, 4, 4, 0);
  DgnString::~DgnString(&v128);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 400);
  if (v129)
  {
    v41 = v128;
  }

  else
  {
    v41 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v41, 4, 4, 0);
  DgnString::~DgnString(&v128);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 402);
  if (v129)
  {
    v43 = v128;
  }

  else
  {
    v43 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v43, 4, 4, 0);
  DgnString::~DgnString(&v128);
  *a4 += 4;
  *a5 += 4;
  v44 = *(this + 9);
  if (v44)
  {
    v127 = 0;
    v128 = 0;
    v126 = 0;
    SearchLMScorer::printSize(v44, 0xFFFFFFFFLL, (a3 + 1), &v128, &v127, &v126);
    *a4 += v128;
    *a5 += v127;
    *a6 += v126;
  }

  v125 = a3;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v45 = 4;
  }

  else
  {
    v45 = 8;
  }

  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 404);
  if (v129)
  {
    v47 = v128;
  }

  else
  {
    v47 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, (a3 + 1), &unk_262873A63, (34 - a3), (34 - a3), v47, v45, v45, 0);
  DgnString::~DgnString(&v128);
  *a4 += v45;
  *a5 += v45;
  v48 = PelStats::sizeObject(this + 80, 0);
  v49 = PelStats::sizeObject(this + 80, 1);
  v50 = PelStats::sizeObject(this + 80, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 406);
  if (v129)
  {
    v52 = v128;
  }

  else
  {
    v52 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v15, &unk_262873A63, v16, v16, v52, v48, v49, v50);
  DgnString::~DgnString(&v128);
  *a4 += v48;
  *a5 += v49;
  *a6 += v50;
  v53 = PelStats::sizeObject(this + 256, 0);
  v54 = PelStats::sizeObject(this + 256, 1);
  v55 = PelStats::sizeObject(this + 256, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 408);
  if (v129)
  {
    v57 = v128;
  }

  else
  {
    v57 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v15, &unk_262873A63, v16, v16, v57, v53, v54, v55);
  DgnString::~DgnString(&v128);
  *a4 += v53;
  *a5 += v54;
  *a6 += v55;
  v58 = sizeObject(this + 432, 0);
  v59 = sizeObject(this + 432, 1);
  v60 = sizeObject(this + 432, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 410);
  if (v129)
  {
    v62 = v128;
  }

  else
  {
    v62 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v61, v15, &unk_262873A63, v16, v16, v62, v58, v59, v60);
  DgnString::~DgnString(&v128);
  *a4 += v58;
  *a5 += v59;
  *a6 += v60;
  v63 = sizeObject(this + 464, 0);
  v64 = sizeObject(this + 464, 1);
  v65 = sizeObject(this + 464, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 412);
  if (v129)
  {
    v67 = v128;
  }

  else
  {
    v67 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v15, &unk_262873A63, v16, v16, v67, v63, v64, v65);
  DgnString::~DgnString(&v128);
  *a4 += v63;
  *a5 += v64;
  *a6 += v65;
  v68 = SnapTime::sizeObject(this + 496, 0);
  v69 = SnapTime::sizeObject(this + 496, 1);
  v70 = SnapTime::sizeObject(this + 496, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 414);
  if (v129)
  {
    v72 = v128;
  }

  else
  {
    v72 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v15, &unk_262873A63, v16, v16, v72, v68, v69, v70);
  DgnString::~DgnString(&v128);
  *a4 += v68;
  *a5 += v69;
  *a6 += v70;
  v73 = SnapTime::sizeObject(this + 528, 0);
  v74 = SnapTime::sizeObject(this + 528, 1);
  v75 = SnapTime::sizeObject(this + 528, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 416);
  if (v129)
  {
    v77 = v128;
  }

  else
  {
    v77 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v76, v15, &unk_262873A63, v16, v16, v77, v73, v74, v75);
  DgnString::~DgnString(&v128);
  *a4 += v73;
  *a5 += v74;
  *a6 += v75;
  v78 = SnapTime::sizeObject(this + 560, 0);
  v79 = SnapTime::sizeObject(this + 560, 1);
  v80 = SnapTime::sizeObject(this + 560, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 418);
  if (v129)
  {
    v82 = v128;
  }

  else
  {
    v82 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v81, v15, &unk_262873A63, v16, v16, v82, v78, v79, v80);
  DgnString::~DgnString(&v128);
  *a4 += v78;
  *a5 += v79;
  *a6 += v80;
  v83 = SnapTime::sizeObject(this + 592, 0);
  v84 = SnapTime::sizeObject(this + 592, 1);
  v85 = SnapTime::sizeObject(this + 592, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 420);
  if (v129)
  {
    v87 = v128;
  }

  else
  {
    v87 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v15, &unk_262873A63, v16, v16, v87, v83, v84, v85);
  DgnString::~DgnString(&v128);
  *a4 += v83;
  *a5 += v84;
  *a6 += v85;
  v88 = SnapTime::sizeObject(this + 624, 0);
  v89 = SnapTime::sizeObject(this + 624, 1);
  v90 = SnapTime::sizeObject(this + 624, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 422);
  if (v129)
  {
    v92 = v128;
  }

  else
  {
    v92 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v91, v15, &unk_262873A63, v16, v16, v92, v88, v89, v90);
  DgnString::~DgnString(&v128);
  *a4 += v88;
  *a5 += v89;
  *a6 += v90;
  v93 = SnapTime::sizeObject(this + 656, 0);
  v94 = SnapTime::sizeObject(this + 656, 1);
  v95 = SnapTime::sizeObject(this + 656, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 424);
  if (v129)
  {
    v97 = v128;
  }

  else
  {
    v97 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v15, &unk_262873A63, v16, v16, v97, v93, v94, v95);
  DgnString::~DgnString(&v128);
  *a4 += v93;
  *a5 += v94;
  *a6 += v95;
  v98 = LatticeStats::sizeObject(this + 688, 0);
  v99 = LatticeStats::sizeObject(this + 688, 1);
  v100 = LatticeStats::sizeObject(this + 688, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 426);
  if (v129)
  {
    v102 = v128;
  }

  else
  {
    v102 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v101, v15, &unk_262873A63, v16, v16, v102, v98, v99, v100);
  DgnString::~DgnString(&v128);
  *a4 += v98;
  *a5 += v99;
  *a6 += v100;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 428);
  if (v129)
  {
    v104 = v128;
  }

  else
  {
    v104 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v15, &unk_262873A63, v16, v16, v104, 4, 4, 0);
  DgnString::~DgnString(&v128);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 430);
  if (v129)
  {
    v106 = v128;
  }

  else
  {
    v106 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v105, v15, &unk_262873A63, v16, v16, v106, 4, 4, 0);
  DgnString::~DgnString(&v128);
  *a4 += 4;
  *a5 += 4;
  v107 = *(this + 138);
  if (v107)
  {
    v127 = 0;
    v128 = 0;
    v126 = 0;
    Constraint::printSize(v107, 0xFFFFFFFFLL, v15, &v128, &v127, &v126);
    *a4 += v128;
    *a5 += v127;
    *a6 += v126;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v108 = 4;
  }

  else
  {
    v108 = 8;
  }

  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 432);
  if (v129)
  {
    v110 = v128;
  }

  else
  {
    v110 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v109, v15, &unk_262873A63, v16, v16, v110, v108, v108, 0);
  DgnString::~DgnString(&v128);
  *a4 += v108;
  *a5 += v108;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 434);
  if (v129)
  {
    v112 = v128;
  }

  else
  {
    v112 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v111, v15, &unk_262873A63, v16, v16, v112, 1, 1, 0);
  DgnString::~DgnString(&v128);
  ++*a4;
  ++*a5;
  v113 = FstStats::sizeObject(this + 1120, 0);
  v114 = FstStats::sizeObject(this + 1120, 1);
  v115 = FstStats::sizeObject(this + 1120, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 435);
  if (v129)
  {
    v117 = v128;
  }

  else
  {
    v117 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v116, v15, &unk_262873A63, v16, v16, v117, v113, v114, v115);
  DgnString::~DgnString(&v128);
  *a4 += v113;
  *a5 += v114;
  *a6 += v115;
  v118 = FstStats::sizeObject(this + 1376, 0);
  v119 = FstStats::sizeObject(this + 1376, 1);
  v120 = FstStats::sizeObject(this + 1376, 3);
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 437);
  if (v129)
  {
    v122 = v128;
  }

  else
  {
    v122 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v121, v15, &unk_262873A63, v16, v16, v122, v118, v119, v120);
  DgnString::~DgnString(&v128);
  *a4 += v118;
  *a5 += v119;
  *a6 += v120;
  getShipObjectSizeDescription(&v128, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 438);
  if (v129)
  {
    v124 = v128;
  }

  else
  {
    v124 = &unk_262873A63;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v123, v125, &unk_262873A63, (35 - v125), (35 - v125), v124, *a4, *a5, *a6);
  DgnString::~DgnString(&v128);
}

void sub_2626038BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

WordLattice *FstCore::makeRecognizerResults(FstCore *this, LatticeStats *a2)
{
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v11 = 1879048192;
  v10[0] = 0;
  v10[1] = 0;
  if ((*(**(this + 2) + 80))(*(this + 2), &v14, &v12, &v11, v10))
  {
    SnapTime::recordTime((this + 496), 1, 1, 1, 1);
    SilentLattice = MemChunkAlloc(0x120uLL, 0);
    WordLattice::WordLattice(SilentLattice, *(this + 10), *(this + 13), *(this + 14), *(this + 4), 1, a2, 0, 1);
    (*(**(this + 2) + 72))(*(this + 2), SilentLattice, &v14, &v12, *(this + 24));
    v9 = 0;
    if (FstCore::maybeAddGrammarStates(this, SilentLattice, &v9))
    {
      DgnDelete<WordLattice>(SilentLattice);
      SilentLattice = v9;
    }

    SnapTime::recordTime((this + 528), 1, 1, 1, 1);
    v5 = *(this + 138);
    if (*(v5 + 192))
    {
      v6 = (v5 + 184);
    }

    else
    {
      v6 = 0;
    }

    WordLattice::computeParseTokens(SilentLattice, v5 + 168, v6);
    Lattice<WordLatticeLC>::minimize(SilentLattice);
    v7 = FstCore::maybeRescoreLattice(this, SilentLattice);
    SnapTime::recordTime((this + 624), 1, 1, 1, 1);
    Lattice<WordLatticeLC>::minimize(SilentLattice);
    WordLattice::maybePruneToNumUniquePaths(SilentLattice, *(this + 15));
    *(SilentLattice + 210) = v7 == 1;
    WordLattice::fixStateIds(SilentLattice);
  }

  else
  {
    SilentLattice = BackTraceLatticeBuilder::makeSilentLattice(*(this + 4), *(this + 10), *(this + 13), *(this + 14), 1, this + 688, a2);
    *(SilentLattice + 209) = 1;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v10);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v12);
  DgnPrimFixArray<double>::~DgnPrimFixArray(&v14);
  return SilentLattice;
}

void sub_262603B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va1);
  DgnPrimFixArray<double>::~DgnPrimFixArray(v7 - 48);
  _Unwind_Resume(a1);
}

uint64_t FstCore::maybeAddGrammarStates(FstCore *this, unsigned int **a2, WordLattice **a3)
{
  v4 = a2;
  v6 = *a2[2];
  v7 = *(this + 138);
  v114 = *(*(**VocMgr::smpVocMgr + 8 * *v7) + 56);
  if (*(v7 + 44) == 1)
  {
    v8 = **(v7 + 21);
    StateTransition = StateMgr::getStateTransition(v114, v8, 0);
    v10 = *(StateTransition + 8);
    if (!v10 || v10 == 1 && **StateTransition == v8)
    {
      v11 = *(v4 + 26);
      if (v11)
      {
        v12 = v4[12];
        v13 = v4[16];
        do
        {
          v14 = *v12++;
          v15 = &v13[34 * v14];
          v16 = v15[22] & 0xFFFFFF;
          *(v15 + 46) = 0x3FFF;
          if ((v16 - 16777213) >= 2)
          {
            v17 = v8;
          }

          else
          {
            v17 = 0;
          }

          v15[24] = v17;
          --v11;
        }

        while (v11);
      }

      return 0;
    }
  }

  v116 = MemChunkAlloc(0x68uLL, 0);
  HashKEV<ComposeLatticeNode,ComposeLatticeNode,ComposeLatticeNode>::HashKEV(v116, 0, 16);
  v115 = MemChunkAlloc(0x70uLL, 0);
  Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::Hash(v115, 0, 16);
  v130 = 0;
  v131 = 0;
  v132 = 0;
  v126.n128_u64[0] = 0;
  HIDWORD(v131) = realloc_array(0, &v126, 0x410uLL, 0, 0, 1) >> 4;
  v130 = v126.n128_u64[0];
  if (v131 <= 0x40)
  {
    v19 = v131 - 65;
    v20 = (v126.n128_u64[0] + 16 * v131 + 8);
    do
    {
      *(v20 - 2) = -16;
      *v20 = 0;
      v20 += 2;
      v21 = __CFADD__(v19++, 1);
    }

    while (!v21);
  }

  v110 = a3;
  v111 = this;
  LODWORD(v131) = 65;
  v132 = 0x4000000001;
  v128 = 0;
  v129 = 0;
  v22 = v4[10][6 * v6 + 5];
  if (v22 == -2)
  {
    v23 = 2;
  }

  else
  {
    LODWORD(v24) = *(v7 + 44);
    v23 = 2;
    do
    {
      if (v24)
      {
        v25 = 0;
        do
        {
          v124 = 0;
          v26 = &v4[16][34 * v22];
          v27 = v4[10][6 * *(v26 + 120)];
          LODWORD(v26) = *(v26 + 88);
          v126.n128_u64[0] = __PAIR64__(*(*(v7 + 21) + 4 * v25), v27);
          v126.n128_u64[1] = v26 | 0xFAFFFFFC00000000;
          v127 = v23;
          if (HashKEV<ComposeLatticeNode,ComposeLatticeNode,ComposeLatticeNode>::insert(v116, &v126, &v124))
          {
            v126.n128_u32[0] = v4[16][34 * v22 + 5] + v4[16][34 * v22 + 4] + v4[16][34 * v22 + 6];
            v126.n128_u64[1] = v124;
            TEHeapSort<TimeQueEl>::add_to_heap(&v130, &v126);
            ++v23;
          }

          v28 = v129;
          if (v129 == HIDWORD(v129))
          {
            DgnArray<CWIDAC>::reallocElts(&v128, 1, 1);
            v28 = v129;
          }

          v29 = v128 + 24 * v28;
          *v29 = 0;
          *(v29 + 4) = v23 - 1;
          *(v29 + 8) = 0xFAFFFFFC00000000;
          *(v29 + 16) = -83886084;
          *(v29 + 20) = v22;
          LODWORD(v129) = v129 + 1;
          ++v25;
          v24 = *(v7 + 44);
        }

        while (v25 < v24);
      }

      v22 = v4[16][34 * v22 + 32];
    }

    while (v22 != -2);
  }

  v124 = 0;
  v125 = 0;
  v126.n128_u64[0] = 0;
  v30 = realloc_array(0, &v126, 0x40uLL, 0, 0, 1);
  v124 = v126.n128_u64[0];
  LODWORD(v125) = 16;
  HIDWORD(v125) = v30 >> 2;
  if (v132 >= 2)
  {
    v31 = v4;
    while (1)
    {
      LODWORD(v123) = -16;
      *(&v123 + 1) = 0;
      TEHeapSort<TimeQueEl>::remove_from_heap(&v130, &v123);
      v32 = 0;
      v33 = *(&v123 + 1);
      LODWORD(v125) = 0;
      v34 = *(*(&v123 + 1) + 4);
      if (!HIDWORD(v125))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v124, 1, 1);
        v32 = v125;
      }

      *(v124 + 4 * v32) = v34;
      v21 = __CFADD__(v125, 1);
      v35 = v125 + 1;
      LODWORD(v125) = v125 + 1;
      if (!v21)
      {
        break;
      }

LABEL_65:
      if (v132 <= 1)
      {
        goto LABEL_66;
      }
    }

    while (1)
    {
      v36 = v35 - 1;
      v37 = *(v124 + 4 * v36);
      LODWORD(v125) = v36;
      v38 = *(*(v114 + 62) + 4 * v37);
      if (!v38)
      {
        v38 = v37;
      }

      v112 = *v114 + 80 * v38;
      v39 = *(v112 + 16);
      v40 = StateMgr::getStateTransition(v114, v37, 0);
      v41 = v40;
      if (!v39 && *(v40 + 8))
      {
        v42 = 0;
        v43 = v125;
        do
        {
          v44 = *(*v41 + 4 * v42);
          if (v43 == HIDWORD(v125))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v124, 1, 1);
            v43 = v125;
          }

          *(v124 + 4 * v43) = v44;
          v43 = v125 + 1;
          LODWORD(v125) = v125 + 1;
          ++v42;
        }

        while (v42 < *(v41 + 8));
      }

      v113 = v39;
      v45 = v4[10][6 * v4[2][*v33] + 5];
      if (v45 != -2)
      {
        break;
      }

LABEL_64:
      v35 = v125;
      if (!v125)
      {
        goto LABEL_65;
      }
    }

    v46 = v4[16];
    while (1)
    {
      v47 = v46[34 * v45 + 22];
      v48 = v47 & 0xFFFFFF;
      if ((v47 & 0xFFFFFF) == 0xFFFFFD)
      {
        if (StateMgr::getEndOfUtteranceAllowed(v114, v37))
        {
          v49 = v33[4];
          v50 = *(v33 + 1);
          v51 = v129;
          if (v129 == HIDWORD(v129))
          {
            DgnArray<CWIDAC>::reallocElts(&v128, 1, 1);
            v51 = v129;
          }

          v52 = v128 + 24 * v51;
          *v52 = v49;
          *(v52 + 4) = 1;
          *(v52 + 8) = v37;
          *(v52 + 12) = v50;
          *(v52 + 20) = v45;
          LODWORD(v129) = v129 + 1;
        }
      }

      else
      {
        v121 = __PAIR64__(v37, v47);
        Bucket = Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(v115, &v121);
        if (*Bucket)
        {
          if (*(*Bucket + 20))
          {
            goto LABEL_56;
          }
        }

        else
        {
          if (v113)
          {
            v54 = v113;
            v55 = *(v112 + 8);
            while (1)
            {
              v56 = *v55++;
              if (v56 == v48)
              {
                break;
              }

              if (!--v54)
              {
                goto LABEL_54;
              }
            }

            v126.n128_u8[0] = 1;
            Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::add(v115, &v121, &v126);
LABEL_56:
            if (*(v41 + 8))
            {
              v57 = 0;
              do
              {
                v58 = *(*v41 + 4 * v57);
                v119 = 0;
                v59 = &v4[16][34 * v45];
                v60 = v4[10][6 * *(v59 + 120)];
                LODWORD(v59) = *(v59 + 88);
                v126.n128_u64[0] = __PAIR64__(v58, v60);
                v126.n128_u64[1] = v59 | 0xFAFFFFFC00000000;
                v127 = v23;
                if (HashKEV<ComposeLatticeNode,ComposeLatticeNode,ComposeLatticeNode>::insert(v116, &v126, &v119))
                {
                  v126.n128_u32[0] = v4[16][34 * v45 + 5] + v4[16][34 * v45 + 4] + v4[16][34 * v45 + 6];
                  v126.n128_u64[1] = v119;
                  TEHeapSort<TimeQueEl>::add_to_heap(&v130, &v126);
                  ++v23;
                }

                v61 = v33[4];
                v62 = *(v119 + 4);
                v63 = *(v33 + 1);
                v64 = v129;
                if (v129 == HIDWORD(v129))
                {
                  DgnArray<CWIDAC>::reallocElts(&v128, 1, 1);
                  v64 = v129;
                }

                v65 = v128 + 24 * v64;
                *v65 = v61;
                *(v65 + 4) = v62;
                *(v65 + 8) = v37;
                *(v65 + 12) = v63;
                *(v65 + 20) = v45;
                LODWORD(v129) = v129 + 1;
                ++v57;
                v4 = v31;
              }

              while (v57 < *(v41 + 8));
            }

            goto LABEL_63;
          }

LABEL_54:
          v126.n128_u8[0] = 0;
          Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::add(v115, &v121, &v126);
        }
      }

LABEL_63:
      v46 = v4[16];
      v45 = v46[34 * v45 + 32];
      if (v45 == -2)
      {
        goto LABEL_64;
      }
    }
  }

LABEL_66:
  v66 = v129;
  v126 = 0uLL;
  if (v129)
  {
    *&v123 = 0;
    v67 = realloc_array(0, &v123, 8 * v129, 0, 0, 1);
    v68 = 0;
    v69 = v67 >> 3;
    v70 = v123;
    v126.n128_u64[0] = v123;
    v126.n128_u64[1] = __PAIR64__(v69, v66);
    v71 = (v123 + 4);
    v72 = (v128 + 4);
    do
    {
      v73 = *v72;
      if (*v72 == 1)
      {
        *v72 = v23;
        v73 = v23;
      }

      *(v71 - 1) = v68;
      *v71 = v73;
      ++v68;
      v71 += 2;
      v72 += 6;
    }

    while (v66 != v68);
    v74 = v66;
  }

  else
  {
    v70 = 0;
    v74 = 0;
    v126.n128_u32[2] = 0;
  }

  mrec_qsort_r<SortLink>(v70, v74, 8uLL);
  v123 = 0uLL;
  v75 = v23 + 1;
  if (v23 == -1)
  {
    v76 = 0;
  }

  else
  {
    v121 = 0;
    HIDWORD(v123) = realloc_array(0, &v121, 4 * (v23 + 1), 0, 0, 1) >> 2;
    v76 = v121;
    *&v123 = v121;
  }

  DWORD2(v123) = v23 + 1;
  if (v66)
  {
    v77 = 0;
    v78 = v126.n128_u64[0];
    v79 = v128;
    v80 = v23 + 1;
    do
    {
      v81 = *v78;
      v78 += 2;
      v82 = v79 + 24 * v81;
      v85 = *(v82 + 4);
      v83 = (v82 + 4);
      v84 = v85;
      if (v85 != v80)
      {
        v76[v84] = v77;
        v80 = *v83;
      }

      ++v77;
    }

    while (v74 != v77);
  }

  v121 = 0;
  v122 = 0;
  if (v23 == -1)
  {
    LODWORD(v122) = 0;
  }

  else
  {
    v119 = 0;
    v86 = realloc_array(0, &v119, 4 * (v23 + 1), 0, 0, 1);
    v121 = v119;
    LODWORD(v122) = v23 + 1;
    HIDWORD(v122) = v86 >> 2;
    bzero(v119, 4 * (v23 + 1));
  }

  v119 = 0;
  v120 = 0;
  v87 = 1;
  DgnPrimArray<unsigned int>::reallocElts(&v119, 1, 1);
  v88 = v119;
  v89 = v121;
  *(v119 + v120) = v23;
  LODWORD(v120) = v120 + 1;
  v89[v23] = 1;
  v90 = v120;
  if (v120)
  {
    v87 = 1;
    do
    {
      v91 = v88[--v90];
      LODWORD(v120) = v90;
      if (v91)
      {
        v92 = *(v123 + 4 * v91);
        do
        {
          v93 = (v128 + 24 * *(v126.n128_u64[0] + 8 * v92));
          if (v93[1] != v91)
          {
            break;
          }

          v94 = *v93;
          if (!*(v121 + *v93))
          {
            *(v121 + v94) = 1;
            v95 = v120;
            if (v120 == HIDWORD(v120))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v119, 1, 1);
              v95 = v120;
              v88 = v119;
            }

            v88[v95] = v94;
            v90 = v120 + 1;
            LODWORD(v120) = v120 + 1;
            ++v87;
          }

          ++v92;
        }

        while (v92 < v66);
      }
    }

    while (v90);
  }

  v96 = MemChunkAlloc(0x120uLL, 0);
  WordLattice::WordLattice(v96, *(v111 + 10), *(v111 + 13), *(v111 + 14), *(v111 + 4), 1, 0, 0, 1);
  v117 = 0;
  v118 = 0;
  if (v87)
  {
    v133 = 0;
    HIDWORD(v118) = realloc_array(0, &v133, 4 * v87, 0, 0, 1) >> 2;
    v117 = v133;
  }

  LODWORD(v118) = v87;
  if (v75)
  {
    v97 = 0;
    v98 = 0;
    v99 = 4 * v75;
    do
    {
      if (*(v121 + v97) < 1)
      {
        *(v121 + v97) = -1;
      }

      else
      {
        *(v121 + v97) = v98;
        v117[v98++] = Lattice<WordLatticeLC>::createNode(v96);
      }

      v97 += 4;
    }

    while (v99 != v97);
  }

  v100 = v129;
  if (v129)
  {
    v101 = 0;
    v102 = 0;
    do
    {
      v103 = *(v128 + v101 + 4);
      v104 = v121;
      if ((*(v121 + v103) & 0x80000000) == 0)
      {
        v105 = *(v128 + v101);
        if ((*(v121 + v105) & 0x80000000) == 0)
        {
          v106 = v128 + v101;
          v107 = &v4[16][34 * *(v128 + v101 + 20)];
          v108 = *(v107 + 88) & 0xFFFFFF;
          *(v107 + 92) = 0x3FFF;
          if ((v108 - 16777213) >= 2)
          {
            v109 = *(v106 + 8);
          }

          else
          {
            v109 = 0;
          }

          *(v107 + 96) = v109;
          *(v107 + 104) = *(v106 + 12);
          Lattice<WordLatticeLC>::maybeCreateAndConnectLink(v96, v117[v104[v105]], v117[v104[v103]], v107, 1, 0);
          v100 = v129;
        }
      }

      ++v102;
      v101 += 24;
    }

    while (v102 < v100);
  }

  *v110 = v96;
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v116);
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(v115);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v117);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v119);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v121);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v123);
  DgnIArray<Utterance *>::~DgnIArray(&v126);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v124);
  DgnIArray<Utterance *>::~DgnIArray(&v128);
  DgnIArray<Utterance *>::~DgnIArray(&v130);
  return 1;
}

void sub_26260464C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a23);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a25);
  DgnIArray<Utterance *>::~DgnIArray(v26 - 152);
  DgnIArray<Utterance *>::~DgnIArray(v26 - 136);
  _Unwind_Resume(a1);
}

uint64_t Lattice<WordLatticeLC>::minimize(uint64_t result)
{
  if ((*(result + 8) & 1) == 0)
  {
    v1 = result;
    result = Lattice<WordLatticeLC>::gc(result);
    if (*(v1 + 24) >= 2u)
    {
      Lattice<WordLatticeLC>::minimizeDAG(v1);
      result = Lattice<WordLatticeLC>::topSortInternal(v1, 0);
    }

    *(v1 + 8) = 1;
  }

  return result;
}

uint64_t FstCore::maybeRescoreLattice(FstCore *this, WordLattice *a2)
{
  v4 = VocMgr::smpVocMgr;
  v29 = 0;
  v30 = 0;
  DgnPrimArray<unsigned int>::reallocElts(&v29, 1, 1);
  v5 = 4244635646;
  *(v29 + 4 * v30) = -50331650;
  LODWORD(v30) = v30 + 1;
  SearchLMScorer::setInitialContext(*(this + 9), &v29);
  v6 = *(this + 9);
  if ((*(v6 + 51) & 1) == 0 && *(v6 + 54) != 1)
  {
    v20 = 0;
    LOBYTE(v19) = 0;
    goto LABEL_31;
  }

  SnapTime::recordTime((this + 560), 1, 1, 1, 1);
  v27 = 0;
  v28 = 0;
  if (!*(a2 + 26))
  {
LABEL_27:
    v20 = 0;
    LOBYTE(v19) = 0;
    goto LABEL_28;
  }

  v7 = 0;
  do
  {
    v8 = *(a2 + 16) + 136 * *(*(a2 + 12) + 4 * v7);
    v11 = *(v8 + 88);
    v9 = (v8 + 88);
    v10 = v11;
    if (v11 >> 27 != 31)
    {
      v12 = v28;
      if (!v28)
      {
        goto LABEL_12;
      }

      v13 = v27;
      v14 = v28;
      v15 = 0xFFFFFFFFLL;
      while (1)
      {
        v16 = *v13++;
        if (v16 == v10 >> 25)
        {
          break;
        }

        --v15;
        if (!--v14)
        {
          goto LABEL_12;
        }
      }

      if (!v15)
      {
LABEL_12:
        v17 = *(this + 138);
        if ((*(v17 + 68) & 0xFFFFFFFD) == 0)
        {
          if (!Constraint::isLMAllowedForState(v17, v9))
          {
            goto LABEL_18;
          }

          v12 = v28;
        }

        if (v12 == HIDWORD(v28))
        {
          DgnPrimArray<short>::reallocElts(&v27, 1, 1);
          v12 = v28;
        }

        v27[v12] = v10 >> 25;
        LODWORD(v28) = v12 + 1;
      }
    }

LABEL_18:
    ++v7;
  }

  while (v7 < *(a2 + 26));
  if (!v28)
  {
    goto LABEL_27;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  do
  {
    v21 = *(*(**v4 + 8 * v27[v18]) + 72);
    v22 = *(this + 9);
    if (*(v22 + 51) == 1)
    {
      v19 |= (*(*v21 + 448))(*(*(**v4 + 8 * v27[v18]) + 72), v9);
      v22 = *(this + 9);
    }

    if (*(v22 + 54) == 1)
    {
      v20 |= (*(*v21 + 312))(v21, 0) != 0;
    }

    ++v18;
  }

  while (v18 < v28);
LABEL_28:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v27);
  if (v19)
  {
LABEL_33:
    v24 = *(this + 9);
    if (*(v24 + 112))
    {
      v5 = **(v24 + 104);
    }

    if (v19)
    {
      v25 = 4;
    }

    else
    {
      v25 = 3;
    }

    v23 = WordLattice::expandLMContext(a2, v25, v5, *(this + 16), this + 688, this + 274, this + 275);
    if (v23 != 1)
    {
      SnapTime::recordTime((this + 592), 1, 1, 1, 1);
      WordLattice::rescoreLatticeLM(a2, *(this + 9), this + 86, v19 & 1);
    }

    goto LABEL_40;
  }

LABEL_31:
  if (v20)
  {
    goto LABEL_33;
  }

  v23 = 0;
LABEL_40:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v29);
  return v23;
}

void sub_262604A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t FstCore::makeRecognizer(__int128 *a1, __int16 a2, uint64_t a3, uint64_t a4, const ArcGraph *a5)
{
  v10 = MemChunkAlloc(0x660uLL, 0);

  return FstCore::FstCore(v10, a1, a2, a3, a4, a5);
}

__n128 FstCoreOptions::FstCoreOptions(uint64_t a1, int a2, int a3, char a4, int a5, int a6, int a7, int a8, __n128 a9, __n128 a10, int a14, int a15, char a16, int a17, int a18, char arg24, int arg28, int arg2C, char a19, char a20, char a21, char a22)
{
  result = a10;
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 12) = a5;
  *(a1 + 16) = a6;
  *(a1 + 20) = a7;
  *(a1 + 24) = a8;
  *(a1 + 28) = a10;
  *(a1 + 44) = a14;
  *(a1 + 48) = a15;
  *(a1 + 52) = a16;
  *(a1 + 56) = a17;
  *(a1 + 60) = a18;
  *(a1 + 64) = arg24;
  *(a1 + 68) = arg28;
  *(a1 + 72) = arg2C;
  *(a1 + 76) = a19;
  *(a1 + 77) = a20;
  *(a1 + 78) = a21;
  *(a1 + 79) = a22;
  return result;
}

double FstCoreOptions::FstCoreOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  result = *(a2 + 68);
  *(a1 + 68) = result;
  *(a1 + 76) = *(a2 + 76);
  return result;
}

uint64_t HashKEV<ComposeLatticeNode,ComposeLatticeNode,ComposeLatticeNode>::insert(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v6);
  }

  v7 = a2[1];
  HIDWORD(v8) = *a2;
  LODWORD(v8) = *a2;
  HIDWORD(v8) = (v8 >> 19) + v7;
  LODWORD(v8) = HIDWORD(v8);
  v10 = a2[2];
  v9 = a2[3];
  HIDWORD(v8) = (v8 >> 19) + v9;
  LODWORD(v8) = HIDWORD(v8);
  v11 = (v8 >> 19) + v10;
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
    v16 = *(a1 + 32);
    if (!v16)
    {
      DgnPool::addChunk((a1 + 24));
      v16 = *(a1 + 32);
    }

    *(a1 + 32) = *v16;
    *(v16 + 8) = 0;
    v17 = *a2;
    *(v16 + 28) = a2[4];
    *(v16 + 12) = v17;
    *a3 = v16 + 12;
    *(v16 + 8) = v11;
    ++*(a1 + 8);
    if (*(a1 + 20))
    {
      *v16 = *(v14 + 8 * v13);
    }

    else
    {
      *v16 = 0;
      v18 = *(v14 + 8 * v13);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
        *v19 = v16;
        return 1;
      }
    }

    *(v14 + 8 * v13) = v16;
    return 1;
  }

  while (*(v15 + 2) != v11 || *(v15 + 3) != *a2 || *(v15 + 4) != v7 || *(v15 + 5) != v10 || *(v15 + 6) != v9)
  {
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  result = 0;
  *a3 = v15 + 12;
  return result;
}

__n128 TEHeapSort<TimeQueEl>::add_to_heap(uint64_t *a1, __n128 *a2)
{
  v5 = *(a1 + 4);
  v4 = *(a1 + 5);
  if (v5 >= v4)
  {
    v6 = (2 * v4);
    v7 = *(a1 + 3);
    if (v6 > v7)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a1, v6 - v7, 0);
    }

    v8 = *(a1 + 2);
    if (v8 < v6)
    {
      v9 = v6 - v8;
      v10 = (*a1 + 16 * v8 + 8);
      do
      {
        *(v10 - 2) = -16;
        *v10 = 0;
        v10 += 2;
        --v9;
      }

      while (v9);
    }

    *(a1 + 2) = v6;
    *(a1 + 5) = 2 * *(a1 + 5) - 1;
  }

  v11 = *a1;
  v12 = (*a1 + 16 * v5);
  if (v5 >= 2)
  {
    v14 = v5;
    while (1)
    {
      v14 >>= 1;
      v13 = (v11 + 16 * v14);
      if (a2->n128_u32[0] <= *v13)
      {
        break;
      }

      *v12 = *v13;
      v12 = (v11 + 16 * v14);
      if (v14 <= 1)
      {
        goto LABEL_13;
      }
    }
  }

  v13 = v12;
LABEL_13:
  result = *a2;
  *v13 = *a2;
  *(a1 + 4) = v5 + 1;
  return result;
}

uint64_t TEHeapSort<TimeQueEl>::remove_from_heap(int *a1, _OWORD *a2)
{
  if (a1[4] < 2)
  {
    return 0;
  }

  v3 = *a1;
  *a2 = *(*a1 + 16);
  v4 = a1[4];
  v5 = v4 - 1;
  a1[4] = v4 - 1;
  v6 = (v3 + 16 * (v4 - 1));
  v7 = *v6;
  v15 = *(v6 + 1);
  v16 = v6[3];
  v8 = 1;
  if (v4 < 4)
  {
    goto LABEL_18;
  }

  v9 = 2;
  v10 = 3;
  while (1)
  {
    v11 = *(v3 + 16 * v9);
    if (v7 <= v11)
    {
      if (v10 >= v5)
      {
        v12 = v9;
        v10 = v9;
      }

      else
      {
        if (*(v3 + 16 * v10) <= v11)
        {
          v10 = v9;
        }

        v12 = v10;
      }

      goto LABEL_14;
    }

    if (v10 >= v5 || v7 > *(v3 + 16 * v10))
    {
      break;
    }

    v12 = v10;
LABEL_14:
    v13 = v10;
    *(v3 + 16 * v8) = *(v3 + 16 * v12);
    v9 = 2 * v10;
    v10 = (2 * v10) | 1;
    v5 = a1[4];
    LODWORD(v8) = v13;
    if (v9 >= v5)
    {
      goto LABEL_17;
    }
  }

  v13 = v8;
LABEL_17:
  v8 = v13;
LABEL_18:
  v14 = v3 + 16 * v8;
  *v14 = v7;
  *(v14 + 4) = v15;
  *(v14 + 12) = v16;
  return 1;
}

uint64_t Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::add(uint64_t result, _DWORD *a2, _BYTE *a3)
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

uint64_t *mrec_qsort_r<SortLink>(uint64_t *result, unint64_t a2, unint64_t a3)
{
  v4 = -a3;
  v5 = a3 != 8;
  v6 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3 != 8;
  }

  if (a2 >= 7)
  {
    v20 = a3 >> 3;
    while (1)
    {
      v21 = result + (a2 >> 1) * a3;
      if (a2 != 7)
      {
        v22 = result + (a2 - 1) * a3;
        if (a2 < 0x29)
        {
          v24 = result;
          v39 = result + (a2 - 1) * a3;
        }

        else
        {
          v23 = (a2 >> 3) * a3;
          v24 = result + v23;
          v25 = 2 * v23;
          v26 = result + 2 * v23;
          v27 = *(result + 1);
          v28 = *(result + v23 + 4);
          v29 = *(v26 + 4);
          if (v27 >= v29)
          {
            v30 = result + 2 * v23;
          }

          else
          {
            v30 = result;
          }

          if (v28 > v29)
          {
            v30 = result + v23;
          }

          if (v27 >= v29)
          {
            v26 = result;
          }

          if (v28 >= v29)
          {
            v24 = v26;
          }

          if (v27 >= v28)
          {
            v24 = v30;
          }

          v31 = -v23;
          v32 = &v21[-v23];
          v33 = &v21[v23];
          v34 = *(v32 + 1);
          v35 = *(v21 + 1);
          v36 = *(v33 + 1);
          if (v34 >= v36)
          {
            v37 = v33;
          }

          else
          {
            v37 = v32;
          }

          if (v35 > v36)
          {
            v37 = result + (a2 >> 1) * a3;
          }

          if (v34 >= v36)
          {
            v33 = v32;
          }

          if (v35 >= v36)
          {
            v21 = v33;
          }

          if (v34 >= v35)
          {
            v21 = v37;
          }

          v38 = v22 - v25;
          v39 = v22 + v31;
          v40 = *(v38 + 4);
          v41 = *(v39 + 4);
          v42 = *(v22 + 4);
          if (v40 >= v41)
          {
            if (v41 <= v42)
            {
              if (v40 >= v42)
              {
                v39 = result + (a2 - 1) * a3;
              }

              else
              {
                v39 = v38;
              }
            }
          }

          else if (v41 >= v42)
          {
            if (v40 >= v42)
            {
              v39 = v38;
            }

            else
            {
              v39 = result + (a2 - 1) * a3;
            }
          }
        }

        v43 = *(v24 + 4);
        v44 = *(v21 + 1);
        v45 = *(v39 + 4);
        if (v43 >= v45)
        {
          v46 = v39;
        }

        else
        {
          v46 = v24;
        }

        if (v44 > v45)
        {
          v46 = v21;
        }

        if (v43 < v45)
        {
          v24 = v39;
        }

        if (v44 >= v45)
        {
          v21 = v24;
        }

        if (v43 >= v44)
        {
          v21 = v46;
        }
      }

      if (v7)
      {
        if (v6)
        {
          v47 = result;
          v48 = a3 >> 3;
          do
          {
            v49 = *v47;
            *v47++ = *v21;
            *v21 = v49;
            v21 += 8;
            --v48;
          }

          while (v48);
        }

        else
        {
          v51 = a3;
          v52 = result;
          do
          {
            v53 = *v52;
            *v52++ = *v21;
            *v21++ = v53;
            --v51;
          }

          while (v51);
        }
      }

      else
      {
        v50 = *result;
        *result = *v21;
        *v21 = v50;
      }

      v54 = 0;
      v55 = result + a3;
      v56 = (result + (a2 - 1) * a3);
      v57 = v56;
      v58 = result + a3;
      v59 = (result + a3);
LABEL_72:
      while (v58 <= v57)
      {
        v60 = *(v58 + 1);
        v61 = *(result + 1);
        if (v60 > v61)
        {
          break;
        }

        if (v60 == v61)
        {
          if (v7)
          {
            v62 = 0;
            if (v6)
            {
              do
              {
                v63 = v59[v62];
                v59[v62] = *&v58[8 * v62];
                *&v58[8 * v62++] = v63;
              }

              while (v20 != v62);
            }

            else
            {
              do
              {
                v64 = *(v59 + v62);
                *(v59 + v62) = v58[v62];
                v58[v62++] = v64;
              }

              while (a3 != v62);
            }
          }

          else
          {
            v74 = *v59;
            *v59 = *v58;
            *v58 = v74;
          }

          v59 = (v59 + a3);
          v54 = 1;
        }

        v58 += a3;
      }

      while (v58 <= v57)
      {
        v69 = *(v57 + 1);
        v70 = *(result + 1);
        if (v69 < v70)
        {
          if (v7)
          {
            v71 = 0;
            if (v6)
            {
              do
              {
                v72 = *&v58[8 * v71];
                *&v58[8 * v71] = v57[v71];
                v57[v71++] = v72;
              }

              while (v20 != v71);
            }

            else
            {
              do
              {
                v73 = v58[v71];
                v58[v71] = *(v57 + v71);
                *(v57 + v71++) = v73;
              }

              while (a3 != v71);
            }
          }

          else
          {
            v75 = *v58;
            *v58 = *v57;
            *v57 = v75;
          }

          v58 += a3;
          v57 = (v57 + v4);
          v54 = 1;
          goto LABEL_72;
        }

        if (v69 == v70)
        {
          if (v7)
          {
            v65 = 0;
            if (v6)
            {
              do
              {
                v66 = v57[v65];
                v57[v65] = v56[v65];
                v56[v65++] = v66;
              }

              while (v20 != v65);
            }

            else
            {
              do
              {
                v67 = *(v57 + v65);
                *(v57 + v65) = *(v56 + v65);
                *(v56 + v65++) = v67;
              }

              while (a3 != v65);
            }
          }

          else
          {
            v68 = *v57;
            *v57 = *v56;
            *v56 = v68;
          }

          v56 = (v56 + v4);
          v54 = 1;
        }

        v57 = (v57 + v4);
      }

      v76 = result + a2 * a3;
      if (!v54)
      {
        break;
      }

      v77 = v58 - v59;
      if (v59 - result >= v58 - v59)
      {
        v78 = v58 - v59;
      }

      else
      {
        v78 = v59 - result;
      }

      if (v78)
      {
        if (v6)
        {
          v79 = &v58[-v78];
          v80 = v78 >> 3;
          v81 = result;
          do
          {
            v82 = *v81;
            *v81++ = *v79;
            *v79++ = v82;
            --v80;
          }

          while (v80);
        }

        else
        {
          v83 = -v78;
          v84 = result;
          do
          {
            v85 = *v84;
            *v84++ = v58[v83];
            v58[v83] = v85;
            v86 = __CFADD__(v83++, 1);
          }

          while (!v86);
        }
      }

      v87 = v56 - v57;
      v88 = v76 - (v56 + a3);
      if (v56 - v57 < v88)
      {
        v88 = v56 - v57;
      }

      if (v88)
      {
        if (v6)
        {
          v89 = (v76 - v88);
          v90 = v88 >> 3;
          do
          {
            v91 = *v58;
            *v58 = *v89;
            v58 += 8;
            *v89++ = v91;
            --v90;
          }

          while (v90);
        }

        else
        {
          v92 = -v88;
          do
          {
            v93 = *v58;
            *v58++ = *(v76 + v92);
            *(v76 + v92) = v93;
            v86 = __CFADD__(v92++, 1);
          }

          while (!v86);
        }
      }

      if (v77 > a3)
      {
        result = mrec_qsort_r<SortLink>(result, v77 / a3, a3);
      }

      if (v87 <= a3)
      {
        return result;
      }

      result = (v76 - v87);
      a2 = v87 / a3;
      v6 = (((v76 - v87) | a3) & 7) == 0;
      if ((((v76 - v87) | a3) & 7) != 0)
      {
        v7 = 2;
      }

      else
      {
        v7 = v5;
      }

      if (a2 < 7)
      {
        goto LABEL_5;
      }
    }

    if ((a2 * a3) > a3)
    {
      v94 = result;
      do
      {
        if (v55 > result)
        {
          v95 = v94;
          v96 = v55;
          do
          {
            v97 = v96;
            v96 += v4;
            if (*(v96 + 4) <= *(v97 + 4))
            {
              break;
            }

            if (v7)
            {
              v98 = 0;
              if (v6)
              {
                v99 = v96;
                do
                {
                  v100 = *(v97 + 8 * v98);
                  *(v97 + 8 * v98) = *v99;
                  *v99++ = v100;
                  ++v98;
                }

                while (v20 != v98);
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

            v95 += v4;
          }

          while (v96 > result);
        }

        v55 += a3;
        v94 += a3;
      }

      while (v55 < v76);
    }
  }

  else
  {
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v8 = result + a2 * a3;
      v9 = result + a3;
      v10 = result;
      do
      {
        if (v9 > result)
        {
          v11 = v10;
          v12 = v9;
          do
          {
            v13 = v12;
            v12 += v4;
            if (*(v12 + 4) <= *(v13 + 4))
            {
              break;
            }

            if (v7)
            {
              v14 = 0;
              if (v6)
              {
                v15 = v12;
                do
                {
                  v16 = *(v13 + 8 * v14);
                  *(v13 + 8 * v14) = *v15;
                  *v15++ = v16;
                  ++v14;
                }

                while (a3 >> 3 != v14);
              }

              else
              {
                v18 = a3;
                do
                {
                  v19 = *(v13 + v14);
                  *(v13 + v14) = *(v11 + v14);
                  *(v11 + v14++) = v19;
                  --v18;
                }

                while (v18);
              }
            }

            else
            {
              v17 = *v13;
              *v13 = *v12;
              *v12 = v17;
            }

            v11 += v4;
          }

          while (v12 > result);
        }

        v9 += a3;
        v10 += a3;
      }

      while (v9 < v8);
    }
  }

  return result;
}

uint64_t Lattice<WordLatticeLC>::createNode(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(*(a1 + 64) + 4 * v3);
    *(a1 + 72) = v3;
    v5 = *(a1 + 80);
  }

  else
  {
    v4 = *(a1 + 88);
    v6 = v4;
    if (v4 == *(a1 + 92))
    {
      DgnArray<CWIDAC>::reallocElts(a1 + 80, 1, 1);
      v6 = *(a1 + 88);
    }

    v5 = *(a1 + 80);
    v7 = v5 + 24 * v6;
    *v7 = xmmword_26286C150;
    *(v7 + 16) = 0x100000001;
    *(a1 + 88) = v6 + 1;
  }

  v8 = *(a1 + 12);
  *(a1 + 12) = v8 + 1;
  v9 = v5 + 24 * v4;
  v10 = *(a1 + 24);
  *v9 = v10;
  *(v9 + 4) = v8;
  *(v9 + 8) = xmmword_262873A50;
  if (v10 == *(a1 + 28))
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 16, 1, 1);
    v10 = *(a1 + 24);
  }

  *(*(a1 + 16) + 4 * v10) = v4;
  ++*(a1 + 24);
  v11 = *(a1 + 40);
  if (v11 == *(a1 + 44))
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 32, 1, 1);
    v11 = *(a1 + 40);
  }

  *(*(a1 + 32) + 4 * v11) = v4;
  ++*(a1 + 40);
  v12 = *(a1 + 56);
  if (v12 == *(a1 + 60))
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 48, 1, 1);
    v12 = *(a1 + 56);
  }

  *(*(a1 + 48) + 4 * v12) = v4;
  ++*(a1 + 56);
  *(a1 + 8) = 0;
  return v4;
}

uint64_t Lattice<WordLatticeLC>::maybeCreateAndConnectLink(unint64_t a1, int a2, const WordLatticeLC *a3, WordLatticeLC *this, int a5, _DWORD *a6)
{
  v9 = a3;
  v12 = *(*(a1 + 80) + 24 * a2 + 20);
  if (v12 == -2)
  {
LABEL_7:
    Link = Lattice<WordLatticeLC>::createLink(a1, a2, v9, this);
    v15 = Link;
    if (a6)
    {
      *a6 = *(*(a1 + 128) + 136 * Link + 112);
    }

    if (a5)
    {
      Lattice<WordLatticeLC>::connectInLink(a1, Link);
      Lattice<WordLatticeLC>::connectOutLink(a1, v15);
    }

    else
    {
      Lattice<WordLatticeLC>::connectInLinkUnordered(a1, Link);
      Lattice<WordLatticeLC>::connectOutLinkUnordered(a1, v15);
    }

    return 1;
  }

  v13 = *(a1 + 128);
  while (*(v13 + 136 * v12 + 120) != v9)
  {
LABEL_6:
    v12 = *(v13 + 136 * v12 + 128);
    if (v12 == -2)
    {
      goto LABEL_7;
    }
  }

  if (WordLatticeLC::cmpForDuplicateCheck(this, (v13 + 136 * v12), a3))
  {
    v13 = *(a1 + 128);
    goto LABEL_6;
  }

  result = 0;
  if (a6)
  {
    *a6 = *(*(a1 + 128) + 136 * v12 + 112);
  }

  return result;
}

void FstCore::makeFstActiveWord(uint64_t a1, uint64_t a2, __int128 *a3, __int16 a4, uint64_t a5, unsigned __int16 a6, PelScorer *a7, int a8, unsigned int a9, unsigned int a10)
{
  v18 = MemChunkAlloc(0xC0uLL, 0);
  FstHmmNet::FstHmmNet(v18, a2 + 16, a1, 1, 1, 0, a10, 0, a9, a4, a7, a8, a3, a5, a6);
  v19 = MemChunkAlloc(0x28uLL, 0);

  ActiveWordEmbeddedFst::ActiveWordEmbeddedFst(v19, (a2 + 16), v18);
}

uint64_t FstStats::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = SnapTime::sizeObject(a1, a2);
  v5 = SnapTime::sizeObject(a1 + 32, v2) + v4;
  v6 = SnapTime::sizeObject(a1 + 64, v2);
  v7 = v5 + v6 + SnapTime::sizeObject(a1 + 96, v2);
  v8 = SnapTime::sizeObject(a1 + 128, v2);
  v9 = v8 + SnapTime::sizeObject(a1 + 160, v2);
  v10 = v7 + v9 + SnapTime::sizeObject(a1 + 192, v2);
  return v10 + SnapTime::sizeObject(a1 + 224, v2);
}

__n128 FstStats::operator=(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  v4 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v4;
  v5 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v5;
  v6 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v6;
  v7 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v7;
  v8 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v8;
  result = *(a2 + 224);
  v10 = *(a2 + 240);
  *(a1 + 224) = result;
  *(a1 + 240) = v10;
  return result;
}

int64x2_t FstStats::operator-=(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  *a1 = vsubq_s64(*a1, *a2);
  a1[1] = vsubq_s64(v2, a2[1]);
  v3 = a1[3];
  a1[2] = vsubq_s64(a1[2], a2[2]);
  a1[3] = vsubq_s64(v3, a2[3]);
  v4 = a1[5];
  a1[4] = vsubq_s64(a1[4], a2[4]);
  a1[5] = vsubq_s64(v4, a2[5]);
  v5 = a1[7];
  a1[6] = vsubq_s64(a1[6], a2[6]);
  a1[7] = vsubq_s64(v5, a2[7]);
  v6 = a1[9];
  a1[8] = vsubq_s64(a1[8], a2[8]);
  a1[9] = vsubq_s64(v6, a2[9]);
  v7 = a1[11];
  a1[10] = vsubq_s64(a1[10], a2[10]);
  a1[11] = vsubq_s64(v7, a2[11]);
  v8 = a1[13];
  a1[12] = vsubq_s64(a1[12], a2[12]);
  a1[13] = vsubq_s64(v8, a2[13]);
  v9 = a1[15];
  a1[14] = vsubq_s64(a1[14], a2[14]);
  result = vsubq_s64(v9, a2[15]);
  a1[15] = result;
  return result;
}

double FstCore::setConstraint(Constraint **this, Constraint *a2)
{
  DgnDelete<Constraint>(this[138]);
  this[138] = a2;
  if (a2)
  {
    Constraint::setupConstraint(a2);
    v5 = this[138];
    *(this[9] + 16) = v5;
    v6 = *(this[2] + 5);
    v7 = (v5 + 168);
    v8 = (v6 + 216);
    v9 = *(v5 + 48);
    v10 = *(v6 + 224);
    if (v10)
    {
      v11 = v7 == v8;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      if (*(v5 + 44) == v10)
      {
        v12 = *v8 - 4;
        while (v10 >= 1)
        {
          v13 = *v7 + 4 * v10;
          v14 = *(v12 + 4 * v10--);
          if (*(v13 - 4) != v14)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
LABEL_10:
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 1774, "fst/fstcore", 2, "%s", &unk_262873A63);
      }
    }

    if (*(v6 + 240))
    {
      v15 = v9 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15 && !DgnArray<DgnArray<ParseToken>>::operator==(v5 + 184, v6 + 232))
    {
      return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/fst/fstcore.cpp", 1777, "fst/fstcore", 3, "%s", &errStr_fst_fstcore_E_FST_START_TOKENS_DO_NOT_MATCH);
    }
  }

  return result;
}

uint64_t *FstCore::setEmbeddedTransducers(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    return DgnArray<StateSpec>::copyArraySlice((result[2] + 120), a2, 0, *(a2 + 8));
  }

  return result;
}

void LatticeStats::LatticeStats(LatticeStats *this)
{
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  LMStats::resetStats((this + 48));
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  LMStats::resetStats((this + 256));
  LatticeStats::resetStats(this);
}

void *Lattice<WordLatticeLC>::gc(void *a1)
{
  Lattice<WordLatticeLC>::gcNonTerminal(a1);
  Lattice<WordLatticeLC>::gcNonInitial(a1);
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

uint64_t Lattice<WordLatticeLC>::minimizeDAG(uint64_t *a1)
{
  do
  {
    do
    {
      v2 = Lattice<WordLatticeLC>::reduceDAGOnceBackward(a1);
      v3 = Lattice<WordLatticeLC>::reduceDAGOnceForward(a1);
      result = Lattice<WordLatticeLC>::removeMultiLinks(a1, v4, v5);
    }

    while ((result & 1) != 0);
  }

  while ((v3 & 1) != 0 || (v2 & 1) != 0);
  return result;
}

uint64_t *Lattice<WordLatticeLC>::gcNonTerminal(uint64_t a1)
{
  Lattice<WordLatticeLC>::gcSetup(a1);
  if (*(a1 + 56))
  {
    v2 = 0;
    v3 = *(a1 + 48);
    v4 = *(a1 + 80);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    do
    {
      v7 = *(v3 + 4 * v2);
      *(v4 + 24 * v7) = v6;
      *(v5 + 4 * v6) = v7;
      v6 = *(a1 + 24) + 1;
      *(a1 + 24) = v6;
      ++v2;
    }

    while (v2 < *(a1 + 56));
  }

  else
  {
    v6 = *(a1 + 24);
  }

  DgnPrimArray<int>::copyArraySlice((a1 + 48), (a1 + 16), 0, v6);
  *(a1 + 40) = 0;
  if (*(a1 + 24))
  {
    v8 = 0;
    do
    {
      v9 = *(a1 + 16);
      v10 = *(v9 + 4 * v8);
      v11 = *(a1 + 80);
      if (*(v11 + 24 * v10 + 8))
      {
        v12 = *(v11 + 24 * v10 + 16);
        if (v12 != -2)
        {
          v13 = *(a1 + 128);
          v14 = *(a1 + 96);
          do
          {
            v15 = *(v13 + 136 * v12 + 116);
            v16 = (v11 + 24 * v15);
            if (*v16 == -1)
            {
              v17 = *(a1 + 24);
              *v16 = v17;
              *(v9 + 4 * v17) = v15;
              ++*(a1 + 24);
            }

            v18 = *(a1 + 104);
            v19 = v13 + 136 * v12;
            *(v19 + 112) = v18;
            *(v14 + 4 * v18) = v12;
            ++*(a1 + 104);
            v12 = *(v19 + 124);
          }

          while (v12 != -2);
        }
      }

      else
      {
        v20 = *(a1 + 40);
        if (v20 == *(a1 + 44))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 32, 1, 1);
          v20 = *(a1 + 40);
        }

        *(*(a1 + 32) + 4 * v20) = v10;
        ++*(a1 + 40);
      }

      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  return Lattice<WordLatticeLC>::gcCleanup(a1);
}

uint64_t *Lattice<WordLatticeLC>::gcNonInitial(uint64_t a1)
{
  Lattice<WordLatticeLC>::gcSetup(a1);
  if (*(a1 + 40))
  {
    v2 = 0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 80);
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    do
    {
      v7 = *(v3 + 4 * v2);
      *(v4 + 24 * v7) = v6;
      *(v5 + 4 * v6) = v7;
      v6 = *(a1 + 24) + 1;
      *(a1 + 24) = v6;
      ++v2;
    }

    while (v2 < *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 24);
  }

  DgnPrimArray<int>::copyArraySlice((a1 + 32), (a1 + 16), 0, v6);
  *(a1 + 56) = 0;
  if (*(a1 + 24))
  {
    v8 = 0;
    do
    {
      v9 = *(a1 + 16);
      v10 = *(v9 + 4 * v8);
      v11 = *(a1 + 80);
      if (*(v11 + 24 * v10 + 12))
      {
        v12 = *(v11 + 24 * v10 + 20);
        if (v12 != -2)
        {
          v13 = *(a1 + 128);
          v14 = *(a1 + 96);
          do
          {
            v15 = *(v13 + 136 * v12 + 120);
            v16 = (v11 + 24 * v15);
            if (*v16 == -1)
            {
              v17 = *(a1 + 24);
              *v16 = v17;
              *(v9 + 4 * v17) = v15;
              ++*(a1 + 24);
            }

            v18 = *(a1 + 104);
            v19 = v13 + 136 * v12;
            *(v19 + 112) = v18;
            *(v14 + 4 * v18) = v12;
            ++*(a1 + 104);
            v12 = *(v19 + 128);
          }

          while (v12 != -2);
        }
      }

      else
      {
        v20 = *(a1 + 56);
        if (v20 == *(a1 + 60))
        {
          DgnPrimArray<unsigned int>::reallocElts(a1 + 48, 1, 1);
          v20 = *(a1 + 56);
        }

        *(*(a1 + 48) + 4 * v20) = v10;
        ++*(a1 + 56);
      }

      ++v8;
    }

    while (v8 < *(a1 + 24));
  }

  return Lattice<WordLatticeLC>::gcCleanup(a1);
}

uint64_t *Lattice<WordLatticeLC>::gcSetup(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 80);
    v5 = (v3 + 4 * v2);
    LODWORD(v6) = *(a1 + 40);
    do
    {
      if (!*(v4 + 24 * *(v3 + 4 * (v2 - 1)) + 12))
      {
        v6 = (v6 - 1);
        if (v2 - 1 < v6)
        {
          v7 = v5;
          v8 = v2 - 1;
          do
          {
            ++v8;
            *(v7 - 1) = *v7;
            ++v7;
          }

          while (v8 < (*(a1 + 40) - 1));
          LODWORD(v6) = *(a1 + 40) - 1;
        }

        *(a1 + 40) = v6;
      }

      --v5;
      v9 = v2-- <= 1;
    }

    while (!v9);
  }

  v10 = *(a1 + 56);
  if (v10 >= 1)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 80);
    v13 = (v11 + 4 * v10);
    LODWORD(v14) = *(a1 + 56);
    do
    {
      if (!*(v12 + 24 * *(v11 + 4 * (v10 - 1)) + 8))
      {
        v14 = (v14 - 1);
        if (v10 - 1 < v14)
        {
          v15 = v13;
          v16 = v10 - 1;
          do
          {
            ++v16;
            *(v15 - 1) = *v15;
            ++v15;
          }

          while (v16 < (*(a1 + 56) - 1));
          LODWORD(v14) = *(a1 + 56) - 1;
        }

        *(a1 + 56) = v14;
      }

      --v13;
      v9 = v10-- <= 1;
    }

    while (!v9);
  }

  DgnPrimArray<int>::copyArraySlice((a1 + 176), (a1 + 16), 0, *(a1 + 24));
  *(a1 + 24) = 0;
  v17 = *(a1 + 184);
  if (v17 >= 1)
  {
    v18 = *(a1 + 80);
    v19 = v17 + 1;
    v20 = (*(a1 + 176) + 4 * v17 - 4);
    do
    {
      v21 = *v20--;
      *(v18 + 24 * v21) = -1;
      --v19;
    }

    while (v19 > 1);
  }

  result = DgnPrimArray<int>::copyArraySlice((a1 + 160), (a1 + 96), 0, *(a1 + 104));
  *(a1 + 104) = 0;
  v23 = *(a1 + 168);
  if (v23 >= 1)
  {
    v24 = *(a1 + 128);
    v25 = v23 + 1;
    v26 = (*(a1 + 160) + 4 * v23 - 4);
    do
    {
      v27 = *v26--;
      *(v24 + 136 * v27 + 112) = -1;
      --v25;
    }

    while (v25 > 1);
  }

  return result;
}

uint64_t *Lattice<WordLatticeLC>::gcCleanup(uint64_t *result)
{
  v1 = result;
  v2 = *(result + 42);
  if (v2 >= 1)
  {
    v3 = v2 - 1;
    do
    {
      v4 = *(*(v1 + 160) + 4 * v3);
      if (*(*(v1 + 128) + 136 * v4 + 112) == -1)
      {
        result = Lattice<WordLatticeLC>::disconnectAndDestroyLink(v1, v4);
      }

      v5 = v3-- + 1;
    }

    while (v5 > 1);
  }

  v6 = *(v1 + 184);
  if (v6 >= 1)
  {
    v7 = v6 - 1;
    do
    {
      v8 = *(*(v1 + 176) + 4 * v7);
      v9 = *(v1 + 80) + 24 * v8;
      if (*v9 == -1)
      {
        *(v9 + 16) = 0x100000001;
        result = Lattice<WordLatticeLC>::destroyNode(v1, v8);
      }

      v10 = v7-- + 1;
    }

    while (v10 > 1);
  }

  return result;
}

uint64_t *Lattice<WordLatticeLC>::disconnectAndDestroyLink(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  Lattice<WordLatticeLC>::disconnectInLink(a1, a2);
  Lattice<WordLatticeLC>::disconnectOutLink(a1, v2);

  return Lattice<WordLatticeLC>::destroyLinkNoDuplicateCheck(a1, v2);
}

uint64_t *Lattice<WordLatticeLC>::destroyNode(uint64_t *result, unsigned int a2)
{
  v3 = result;
  v4 = result[10];
  v5 = *(v4 + 24 * a2);
  if (v5 != -1)
  {
    v6 = *(result + 6) - 1;
    v7 = result[2];
    v8 = *(v7 + 4 * v6);
    *(v7 + 4 * v5) = v8;
    *(v4 + 24 * v8) = v5;
    *(result + 6) = v6;
  }

  if (!*(v4 + 24 * a2 + 8))
  {
    v10 = *(result + 10);
    if (v10)
    {
      v11 = 0;
      v12 = (result[4] + 4);
      while (*(v12 - 1) != a2)
      {
        ++v11;
        ++v12;
        if (v10 == v11)
        {
          goto LABEL_4;
        }
      }

      if (v11 != 0xFFFFFFFF)
      {
        LODWORD(v10) = v10 - 1;
        if (v10 > v11)
        {
          do
          {
            ++v11;
            *(v12 - 1) = *v12;
            v10 = (*(result + 10) - 1);
            ++v12;
          }

          while (v11 < v10);
        }

        *(result + 10) = v10;
      }
    }
  }

LABEL_4:
  if (!*(v4 + 24 * a2 + 12))
  {
    v13 = *(result + 14);
    if (v13)
    {
      v14 = 0;
      v15 = (result[6] + 4);
      while (*(v15 - 1) != a2)
      {
        ++v14;
        ++v15;
        if (v13 == v14)
        {
          goto LABEL_5;
        }
      }

      if (v14 != 0xFFFFFFFF)
      {
        LODWORD(v13) = v13 - 1;
        if (v13 > v14)
        {
          do
          {
            ++v14;
            *(v15 - 1) = *v15;
            v13 = (*(result + 14) - 1);
            ++v15;
          }

          while (v14 < v13);
        }

        *(result + 14) = v13;
      }
    }
  }

LABEL_5:
  v9 = *(result + 18);
  if (v9 == *(result + 19))
  {
    result = DgnPrimArray<unsigned int>::reallocElts((result + 8), 1, 1);
    v9 = *(v3 + 18);
  }

  *(v3[8] + 4 * v9) = a2;
  ++*(v3 + 18);
  return result;
}

uint64_t *Lattice<WordLatticeLC>::disconnectInLink(uint64_t *result, unsigned int a2)
{
  v3 = result[16];
  v4 = *(v3 + 136 * a2 + 120);
  v5 = (result[10] + 24 * v4);
  if (*v5 != -1)
  {
    v6 = result;
    v7 = v5 + 4;
    v8 = v5[4];
    v9 = v8 == a2;
    if (v8 != -2 && v8 != a2)
    {
      do
      {
        v11 = v3 + 136 * v8;
        v12 = *(v11 + 124);
        v7 = (v11 + 124);
        v8 = v12;
        v9 = v12 == a2;
      }

      while (v12 != -2 && v8 != a2);
    }

    if (v9)
    {
      *v7 = *(v3 + 136 * a2 + 124);
      v14 = v5[2] - 1;
      v5[2] = v14;
      if (!v14)
      {
        v15 = *(result + 10);
        if (v15 == *(result + 11))
        {
          result = DgnPrimArray<unsigned int>::reallocElts((result + 4), 1, 1);
          v15 = *(v6 + 40);
          v3 = *(v6 + 128);
        }

        *(*(v6 + 32) + 4 * v15) = v4;
        ++*(v6 + 40);
      }
    }
  }

  *(v3 + 136 * a2 + 120) = -2;
  return result;
}

uint64_t *Lattice<WordLatticeLC>::disconnectOutLink(uint64_t *result, unsigned int a2)
{
  v3 = result[16];
  v4 = *(v3 + 136 * a2 + 116);
  v5 = (result[10] + 24 * v4);
  if (*v5 != -1)
  {
    v6 = result;
    v7 = v5 + 5;
    v8 = v5[5];
    v9 = v8 == a2;
    if (v8 != -2 && v8 != a2)
    {
      do
      {
        v11 = v3 + 136 * v8;
        v12 = *(v11 + 128);
        v7 = (v11 + 128);
        v8 = v12;
        v9 = v12 == a2;
      }

      while (v12 != -2 && v8 != a2);
    }

    if (v9)
    {
      *v7 = *(v3 + 136 * a2 + 128);
      v14 = v5[3] - 1;
      v5[3] = v14;
      if (!v14)
      {
        v15 = *(result + 14);
        if (v15 == *(result + 15))
        {
          result = DgnPrimArray<unsigned int>::reallocElts((result + 6), 1, 1);
          v15 = *(v6 + 56);
          v3 = *(v6 + 128);
        }

        *(*(v6 + 48) + 4 * v15) = v4;
        ++*(v6 + 56);
      }
    }
  }

  *(v3 + 136 * a2 + 116) = -2;
  return result;
}

uint64_t *Lattice<WordLatticeLC>::destroyLinkNoDuplicateCheck(uint64_t *result, unsigned int a2)
{
  v3 = result;
  v4 = result[16];
  v5 = *(v4 + 136 * a2 + 112);
  if (v5 != -1)
  {
    v6 = *(result + 26) - 1;
    v7 = result[12];
    v8 = *(v7 + 4 * v6);
    *(v7 + 4 * v5) = v8;
    *(v4 + 136 * v8 + 112) = v5;
    *(result + 26) = v6;
  }

  v9 = *(result + 30);
  if (v9 == *(result + 31))
  {
    result = DgnPrimArray<unsigned int>::reallocElts((result + 14), 1, 1);
    v9 = *(v3 + 30);
  }

  *(v3[14] + 4 * v9) = a2;
  ++*(v3 + 30);
  return result;
}

uint64_t Lattice<WordLatticeLC>::removeMultiLinks(uint64_t a1, uint64_t a2, const WordLatticeLC *a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(a1 + 80) + 24 * *(*(a1 + 16) + 4 * v5) + 20);
      if (v7 != -2)
      {
        do
        {
          v8 = v7;
          v9 = *(a1 + 128) + 136 * v7;
          while (2)
          {
            v10 = *(v9 + 128);
            while (1)
            {
              if (v10 == -2)
              {
                v7 = *(*(a1 + 128) + 136 * v8 + 128);
                goto LABEL_13;
              }

              v11 = *(a1 + 128);
              v12 = v10;
              if (*(v11 + 136 * v8 + 120) != *(v11 + 136 * v10 + 120))
              {
                goto LABEL_11;
              }

              v13 = WordLatticeLC::cmpForMultiLinkCheck((v11 + 136 * v8), (v11 + 136 * v10), a3);
              if (v13 < 1)
              {
                break;
              }

              v10 = *(*(a1 + 128) + 136 * v10 + 128);
              Lattice<WordLatticeLC>::disconnectAndDestroyLink(a1, v12);
              v6 = 1;
            }

            v11 = *(a1 + 128);
            if ((v13 & 0x80000000) == 0)
            {
LABEL_11:
              v9 = v11 + 136 * v10;
              continue;
            }

            break;
          }

          v7 = *(v11 + 136 * v8 + 128);
          Lattice<WordLatticeLC>::disconnectAndDestroyLink(a1, v8);
          v6 = 1;
LABEL_13:
          ;
        }

        while (v7 != -2);
        v3 = *(a1 + 24);
      }

      ++v5;
    }

    while (v5 < v3);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t Lattice<WordLatticeLC>::reduceDAGOnceBackward(uint64_t *a1)
{
  v2 = *(a1 + 6);
  v38 = 0;
  v39 = 0;
  if (v2)
  {
    __b = 0;
    v3 = realloc_array(0, &__b, 4 * v2, 0, 0, 1);
    v38 = __b;
    LODWORD(v39) = v2;
    HIDWORD(v39) = v3 >> 2;
    if (v2 >= 1)
    {
      memset(__b, 255, 4 * v2);
    }
  }

  else
  {
    LODWORD(v39) = 0;
  }

  v4 = *(a1 + 14);
  __b = 0;
  v37 = 0;
  if (v4)
  {
    v34 = 0;
    v5 = realloc_array(0, &v34, 4 * v4, 0, 0, 1);
    v6 = v34;
    __b = v34;
    v7 = *(a1 + 14);
    LODWORD(v37) = v4;
    HIDWORD(v37) = v5 >> 2;
    if (v7 >= 1)
    {
      v8 = a1[6];
      v9 = a1[10];
      v10 = v7 - 1;
      v11 = v38;
      do
      {
        v12 = *(v8 + 4 * v10);
        v6[v10] = v12;
        v11[*(v9 + 24 * v12)] = 0;
        v13 = v10-- + 1;
      }

      while (v13 > 1);
    }
  }

  else
  {
    LODWORD(v37) = 0;
  }

  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v14 = *(a1 + 6);
  if (v14)
  {
    v40 = 0;
    HIDWORD(v35) = realloc_array(0, &v40, 4 * v14, 0, 0, 1) >> 2;
    v34 = v40;
    LODWORD(v14) = *(a1 + 6);
    v15 = HIDWORD(v33);
  }

  else
  {
    v15 = 0;
  }

  if (v15 < v14)
  {
    v40 = 0;
    HIDWORD(v33) = realloc_array(v32, &v40, 4 * v14, 4 * v33, 4 * v33, 1) >> 2;
    v32 = v40;
  }

  if (v37)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      (*(*a1 + 40))(a1, &__b);
      v18 = v37;
      if (v37 >= 2)
      {
        v19 = 0;
        v20 = 1;
        do
        {
          if (Lattice<WordLatticeLC>::cmpNodesByOutLinksIgnoreNodes(a1, *(__b + v19), *(__b + v20)))
          {
            v19 = v20;
          }

          else
          {
            Lattice<WordLatticeLC>::copyInLinks(a1, *(__b + v20), *(__b + v19));
            Lattice<WordLatticeLC>::destroyAllLinks(a1, *(__b + v20));
            v21 = *(__b + v20);
            v22 = v33;
            if (v33 == HIDWORD(v33))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v32, 1, 1);
              v22 = v33;
            }

            *(v32 + v22) = v21;
            LODWORD(v33) = v33 + 1;
            v16 = 1;
          }

          ++v20;
          v18 = v37;
        }

        while (v20 < v37);
      }

      LODWORD(v35) = 0;
      if (v18)
      {
        v23 = 0;
        v24 = a1[10];
        do
        {
          v25 = *(v24 + 24 * *(__b + v23) + 16);
          if (v25 != -2)
          {
            v26 = a1[16];
            v27 = v38;
            do
            {
              v28 = *(v26 + 136 * v25 + 116);
              if ((v27[*(v24 + 24 * v28)] & 0x80000000) != 0)
              {
                v29 = v35;
                if (v35 == HIDWORD(v35))
                {
                  DgnPrimArray<unsigned int>::reallocElts(&v34, 1, 1);
                  v29 = v35;
                  v24 = a1[10];
                  v27 = v38;
                  v26 = a1[16];
                }

                *(v34 + v29) = v28;
                LODWORD(v35) = v35 + 1;
                v27[*(v24 + 24 * v28)] = v17 + 1;
              }

              v25 = *(v26 + 136 * v25 + 124);
            }

            while (v25 != -2);
            v18 = v37;
          }

          ++v23;
        }

        while (v23 < v18);
        v30 = v35;
      }

      else
      {
        v30 = 0;
      }

      DgnPrimArray<int>::copyArraySlice(&__b, &v34, 0, v30);
      ++v17;
    }

    while (v37);
  }

  else
  {
    v16 = 0;
  }

  if (v33)
  {
    Lattice<WordLatticeLC>::destroyNodesUsingGcMarks(a1, &v32);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&__b);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v38);
  return v16 & 1;
}

void sub_262606EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Lattice<WordLatticeLC>::reduceDAGOnceForward(uint64_t *a1)
{
  v2 = *(a1 + 6);
  v38 = 0;
  v39 = 0;
  if (v2)
  {
    __b = 0;
    v3 = realloc_array(0, &__b, 4 * v2, 0, 0, 1);
    v38 = __b;
    LODWORD(v39) = v2;
    HIDWORD(v39) = v3 >> 2;
    if (v2 >= 1)
    {
      memset(__b, 255, 4 * v2);
    }
  }

  else
  {
    LODWORD(v39) = 0;
  }

  v4 = *(a1 + 10);
  __b = 0;
  v37 = 0;
  if (v4)
  {
    v34 = 0;
    v5 = realloc_array(0, &v34, 4 * v4, 0, 0, 1);
    v6 = v34;
    __b = v34;
    v7 = *(a1 + 10);
    LODWORD(v37) = v4;
    HIDWORD(v37) = v5 >> 2;
    if (v7 >= 1)
    {
      v8 = a1[4];
      v9 = a1[10];
      v10 = v7 - 1;
      v11 = v38;
      do
      {
        v12 = *(v8 + 4 * v10);
        v6[v10] = v12;
        v11[*(v9 + 24 * v12)] = 0;
        v13 = v10-- + 1;
      }

      while (v13 > 1);
    }
  }

  else
  {
    LODWORD(v37) = 0;
  }

  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v14 = *(a1 + 6);
  if (v14)
  {
    v40 = 0;
    HIDWORD(v35) = realloc_array(0, &v40, 4 * v14, 0, 0, 1) >> 2;
    v34 = v40;
    LODWORD(v14) = *(a1 + 6);
    v15 = HIDWORD(v33);
  }

  else
  {
    v15 = 0;
  }

  if (v15 < v14)
  {
    v40 = 0;
    HIDWORD(v33) = realloc_array(v32, &v40, 4 * v14, 4 * v33, 4 * v33, 1) >> 2;
    v32 = v40;
  }

  if (v37)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      (*(*a1 + 32))(a1, &__b);
      v18 = v37;
      if (v37 >= 2)
      {
        v19 = 0;
        v20 = 1;
        do
        {
          if (Lattice<WordLatticeLC>::cmpNodesByInLinksIgnoreNodes(a1, *(__b + v19), *(__b + v20)))
          {
            v19 = v20;
          }

          else
          {
            Lattice<WordLatticeLC>::copyOutLinks(a1, *(__b + v20), *(__b + v19));
            Lattice<WordLatticeLC>::destroyAllLinks(a1, *(__b + v20));
            v21 = *(__b + v20);
            v22 = v33;
            if (v33 == HIDWORD(v33))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v32, 1, 1);
              v22 = v33;
            }

            *(v32 + v22) = v21;
            LODWORD(v33) = v33 + 1;
            v17 = 1;
          }

          ++v20;
          v18 = v37;
        }

        while (v20 < v37);
      }

      LODWORD(v35) = 0;
      if (v18)
      {
        v23 = 0;
        v24 = a1[10];
        do
        {
          v25 = *(v24 + 24 * *(__b + v23) + 20);
          if (v25 != -2)
          {
            v26 = a1[16];
            v27 = v38;
            do
            {
              v28 = *(v26 + 136 * v25 + 120);
              if ((v27[*(v24 + 24 * v28)] & 0x80000000) != 0)
              {
                v29 = v35;
                if (v35 == HIDWORD(v35))
                {
                  DgnPrimArray<unsigned int>::reallocElts(&v34, 1, 1);
                  v29 = v35;
                  v24 = a1[10];
                  v27 = v38;
                  v26 = a1[16];
                }

                *(v34 + v29) = v28;
                LODWORD(v35) = v35 + 1;
                v27[*(v24 + 24 * v28)] = v16 + 1;
              }

              v25 = *(v26 + 136 * v25 + 128);
            }

            while (v25 != -2);
            v18 = v37;
          }

          ++v23;
        }

        while (v23 < v18);
        v30 = v35;
      }

      else
      {
        v30 = 0;
      }

      DgnPrimArray<int>::copyArraySlice(&__b, &v34, 0, v30);
      ++v16;
    }

    while (v37);
  }

  else
  {
    v17 = 0;
  }

  if (v33)
  {
    Lattice<WordLatticeLC>::destroyNodesUsingGcMarks(a1, &v32);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&__b);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v38);
  return v17 & 1;
}

void sub_2626072C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Lattice<WordLatticeLC>::cmpNodesByOutLinksIgnoreNodes(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v5 = *(a1 + 80);
  v6 = *(v5 + 24 * a2 + 12);
  v7 = *(v5 + 24 * a3 + 12);
  if (v6 == v7)
  {
    v8 = *(v5 + 24 * a2 + 20);
    if (v8 == -2)
    {
      return 0;
    }

    else
    {
      v9 = (v5 + 24 * a3 + 20);
      while (1)
      {
        v10 = *v9;
        result = Lattice<WordLatticeLC>::cmpOutLink(a1, v8, *v9);
        if (result)
        {
          break;
        }

        v11 = *(a1 + 128);
        v12 = v11 + 136 * v8;
        v9 = (v11 + 136 * v10 + 128);
        v8 = *(v12 + 128);
        if (v8 == -2)
        {
          return 0;
        }
      }
    }
  }

  else if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }

  return result;
}

void Lattice<WordLatticeLC>::copyInLinks(uint64_t result, unsigned int a2, const WordLatticeLC *a3)
{
  v3 = *(result + 80);
  v4 = *(v3 + 24 * a2 + 16);
  if (v4 != -2)
  {
    v5 = a3;
    v7 = 0;
    v22 = a3;
    v8 = *(v3 + 24 * a3 + 16);
    v9 = *(result + 128);
    v10 = 1;
    v11 = -2;
    do
    {
      if (v8 != -2)
      {
        do
        {
          v12 = v8;
          v13 = v8;
          v14 = WordLatticeLC::cmp((v9 + 136 * v8), (v9 + 136 * v4), a3);
          if (v14)
          {
            v9 = *(result + 128);
            if ((v14 & 0x80000000) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            v9 = *(result + 128);
            v15 = *(v9 + 136 * v13 + 116);
            v16 = *(v9 + 136 * v4 + 116);
            if (v15 == v16)
            {
              goto LABEL_16;
            }

            if (*(*(result + 80) + 24 * v15 + 4) >= *(*(result + 80) + 24 * v16 + 4))
            {
              goto LABEL_12;
            }
          }

          v10 = 0;
          v8 = *(v9 + 136 * v13 + 124);
          v11 = v12;
        }

        while (v8 != -2);
        v11 = v12;
      }

      v12 = 4294967294;
LABEL_12:
      Link = Lattice<WordLatticeLC>::createLink(result, *(v9 + 136 * v4 + 116), v5, (v9 + 136 * v4));
      v18 = Link;
      if (v10)
      {
        *(*(result + 80) + 24 * v22 + 16) = Link;
        v19 = *(result + 128);
      }

      else
      {
        v19 = *(result + 128);
        *(v19 + 136 * v11 + 124) = Link;
      }

      *(v19 + 136 * Link + 124) = v12;
      Lattice<WordLatticeLC>::connectOutLink(result, Link);
      v10 = 0;
      ++v7;
      v9 = *(result + 128);
      v11 = v18;
LABEL_16:
      v4 = *(v9 + 136 * v4 + 124);
      v8 = v12;
    }

    while (v4 != -2);
    if (v7)
    {
      *(result + 8) = 0;
      v20 = *(result + 80);
      v21 = *(v20 + 24 * v22 + 8);
      if (!v21)
      {
        DgnPrimArray<unsigned int>::removeKeepOrder((result + 32), v5);
        v20 = *(result + 80);
        v21 = *(v20 + 24 * v22 + 8);
      }

      *(v20 + 24 * v22 + 8) = v21 + v7;
    }
  }
}

uint64_t *Lattice<WordLatticeLC>::destroyAllLinks(uint64_t *result, unsigned int a2)
{
  v2 = result;
  v3 = result[10];
  v5 = *(v3 + 24 * a2 + 20);
  if (v5 != -2)
  {
    do
    {
      v6 = *(v2[16] + 136 * v5 + 128);
      result = Lattice<WordLatticeLC>::disconnectAndDestroyLink(v2, v5);
      v5 = v6;
    }

    while (v6 != -2);
    v3 = v2[10];
  }

  v7 = *(v3 + 24 * a2 + 16);
  if (v7 != -2)
  {
    do
    {
      v8 = *(v2[16] + 136 * v7 + 124);
      result = Lattice<WordLatticeLC>::disconnectAndDestroyLink(v2, v7);
      v7 = v8;
    }

    while (v8 != -2);
  }

  return result;
}

unint64_t Lattice<WordLatticeLC>::destroyNodesUsingGcMarks(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    v5 = *a2;
    v6 = *(a1 + 80);
    do
    {
      v7 = *v5++;
      *(v6 + 24 * v7) = -1;
      --v4;
    }

    while (v4);
  }

  v32 = 0;
  v33 = 0;
  v8 = *(a1 + 24);
  if (v8)
  {
    v34 = 0;
    HIDWORD(v33) = realloc_array(0, &v34, 4 * v8, 0, 0, 1) >> 2;
    v9 = v34;
    v32 = v34;
    v10 = *(a1 + 24);
    if (v10)
    {
      for (i = 0; i < v10; ++i)
      {
        v12 = *(a1 + 16);
        v13 = (*(a1 + 80) + 24 * *(v12 + 4 * i));
        if (*v13 != -1)
        {
          v14 = v33;
          *v13 = v33;
          v15 = *(v12 + 4 * i);
          if (v14 == HIDWORD(v33))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v32, 1, 1);
            v14 = v33;
            v9 = v32;
          }

          v9[v14] = v15;
          LODWORD(v33) = v33 + 1;
          v10 = *(a1 + 24);
        }
      }
    }
  }

  DgnPrimArray<int>::copyArraySlice((a1 + 16), &v32, 0, v33);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
  v32 = 0;
  v33 = 0;
  v16 = *(a1 + 40);
  if (v16)
  {
    v34 = 0;
    HIDWORD(v33) = realloc_array(0, &v34, 4 * v16, 0, 0, 1) >> 2;
    v17 = v34;
    v32 = v34;
    v18 = *(a1 + 40);
    if (v18)
    {
      for (j = 0; j < v18; ++j)
      {
        v20 = *(*(a1 + 32) + 4 * j);
        if (*(*(a1 + 80) + 24 * v20) != -1)
        {
          v21 = v33;
          if (v33 == HIDWORD(v33))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v32, 1, 1);
            v21 = v33;
            v17 = v32;
          }

          v17[v21] = v20;
          LODWORD(v33) = v33 + 1;
          v18 = *(a1 + 40);
        }
      }
    }
  }

  DgnPrimArray<int>::copyArraySlice((a1 + 32), &v32, 0, v33);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
  v32 = 0;
  v33 = 0;
  v22 = *(a1 + 56);
  if (v22)
  {
    v34 = 0;
    HIDWORD(v33) = realloc_array(0, &v34, 4 * v22, 0, 0, 1) >> 2;
    v23 = v34;
    v32 = v34;
    v24 = *(a1 + 56);
    if (v24)
    {
      for (k = 0; k < v24; ++k)
      {
        v26 = *(*(a1 + 48) + 4 * k);
        if (*(*(a1 + 80) + 24 * v26) != -1)
        {
          v27 = v33;
          if (v33 == HIDWORD(v33))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v32, 1, 1);
            v27 = v33;
            v23 = v32;
          }

          v23[v27] = v26;
          LODWORD(v33) = v33 + 1;
          v24 = *(a1 + 56);
        }
      }
    }
  }

  DgnPrimArray<int>::copyArraySlice((a1 + 48), &v32, 0, v33);
  result = DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
  if (*(a2 + 8))
  {
    v29 = 0;
    v30 = *(a1 + 72);
    do
    {
      v31 = *(*a2 + 4 * v29);
      if (v30 == *(a1 + 76))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a1 + 64, 1, 1);
        v30 = *(a1 + 72);
      }

      *(*(a1 + 64) + 4 * v30) = v31;
      v30 = *(a1 + 72) + 1;
      *(a1 + 72) = v30;
      ++v29;
    }

    while (v29 < *(a2 + 8));
  }

  return result;
}

void sub_262607974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Lattice<WordLatticeLC>::cmpOutLink(uint64_t a1, unsigned int a2, const WordLatticeLC *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = a3;
  result = WordLatticeLC::cmp((*(a1 + 128) + 136 * a2), (*(a1 + 128) + 136 * a3), a3);
  if (!result)
  {
    v7 = *(a1 + 128);
    v8 = *(v7 + 136 * a2 + 120);
    v9 = *(v7 + 136 * v4 + 120);
    if (v8 == v9)
    {
      return 0;
    }

    else if (*(*(a1 + 80) + 24 * v8 + 4) < *(*(a1 + 80) + 24 * v9 + 4))
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

uint64_t Lattice<WordLatticeLC>::createLink(uint64_t a1, int a2, int a3, WordLatticeLC *a4)
{
  WordLatticeLC::WordLatticeLC(v15, a4);
  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = v7 - 1;
    v9 = *(*(a1 + 112) + 4 * v8);
    *(a1 + 120) = v8;
  }

  else
  {
    v9 = *(a1 + 136);
    v10 = v9;
    if (v9 == *(a1 + 140))
    {
      DgnArray<LatticeLink<WordLatticeLC>>::reallocElts(a1 + 128, 1, 1);
      v10 = *(a1 + 136);
    }

    v11 = *(a1 + 128) + 136 * v10;
    *(v11 + 16) = -16;
    *(v11 + 20) = 0u;
    *(v11 + 36) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 1879048192;
    *(v11 + 72) = 0;
    *(v11 + 80) = -1;
    *v11 = &unk_2875281A8;
    *(v11 + 8) = 0xBFF0000000000000;
    *(v11 + 92) = 0x3FFF;
    *(v11 + 96) = xmmword_26286CC40;
    ++*(a1 + 136);
  }

  v12 = *(a1 + 128) + 136 * v9;
  *(v12 + 8) = v15[1];
  *(v12 + 16) = v16;
  *(v12 + 32) = v17;
  *(v12 + 48) = v18;
  *(v12 + 64) = v19;
  *(v12 + 72) = v20;
  *(v12 + 80) = v21;
  *(v12 + 88) = v22;
  *(v12 + 92) = v23;
  *(v12 + 94) = v24;
  *(v12 + 96) = v25;
  v13 = *(a1 + 104);
  *(v12 + 112) = v13;
  *(v12 + 116) = a2;
  *(v12 + 120) = a3;
  *(v12 + 124) = 0x100000001;
  if (v13 == *(a1 + 108))
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 96, 1, 1);
    v13 = *(a1 + 104);
  }

  *(*(a1 + 96) + 4 * v13) = v9;
  ++*(a1 + 104);
  WordLatticeLC::~WordLatticeLC(v15);
  return v9;
}

void Lattice<WordLatticeLC>::connectOutLink(uint64_t result, const WordLatticeLC *a2)
{
  v4 = *(result + 128);
  v5 = a2;
  v6 = *(v4 + 136 * a2 + 116);
  v7 = *(result + 80);
  v8 = v7 + 24 * v6;
  v11 = *(v8 + 20);
  v10 = (v8 + 20);
  v9 = v11;
  if (v11 == -2)
  {
    v12 = -2;
  }

  else
  {
    do
    {
      v13 = Lattice<WordLatticeLC>::cmpOutLink(result, v9, a2);
      if (v13)
      {
        if (v13 >= 1)
        {
          v12 = *v10;
          v4 = *(result + 128);
          goto LABEL_9;
        }
      }

      else
      {
        DuplicateLinkError(*(*(result + 128) + 136 * v5 + 112), *(*(result + 128) + 136 * *v10 + 112));
      }

      v4 = *(result + 128);
      v14 = v4 + 136 * *v10;
      v15 = *(v14 + 128);
      v10 = (v14 + 128);
      v9 = v15;
    }

    while (v15 != -2);
    v12 = -2;
LABEL_9:
    v7 = *(result + 80);
  }

  *v10 = a2;
  *(v4 + 136 * v5 + 128) = v12;
  v16 = v7 + 24 * v6;
  v17 = *(v16 + 12);
  *(v16 + 12) = v17 + 1;
  if (!v17)
  {

    DgnPrimArray<unsigned int>::removeKeepOrder((result + 48), v6);
  }
}

unint64_t DgnPrimArray<unsigned int>::removeKeepOrder(unsigned int *a1, int a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  for (i = (*a1 + 4); *(i - 1) != a2; ++i)
  {
    if (v2 == ++result)
    {
      return 0xFFFFFFFFLL;
    }
  }

  LODWORD(v2) = v2 - 1;
  if (v2 > result)
  {
    v6 = result;
    do
    {
      ++v6;
      *(i - 1) = *i;
      v2 = a1[2] - 1;
      ++i;
    }

    while (v6 < v2);
  }

  a1[2] = v2;
  return result;
}

void WordLatticeLC::WordLatticeLC(WordLatticeLC *this, const WordLatticeLC *a2)
{
  BaseWordLatticeLC::BaseWordLatticeLC(this, a2);
  *v3 = &unk_2875281A8;
  *(v3 + 88) = *(a2 + 22);
  *(v3 + 92) = *(a2 + 23);
  *(v3 + 96) = *(a2 + 6);
}

double BaseWordLatticeLC::BaseWordLatticeLC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287527268;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return result;
}

uint64_t *DgnArray<LatticeLink<WordLatticeLC>>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 136 * v6, 136 * v5, 136 * v5, 1);
  *(a1 + 12) = result / 0x88;
  *a1 = v8;
  return result;
}

uint64_t Lattice<WordLatticeLC>::cmpNodesByInLinksIgnoreNodes(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v5 = *(a1 + 80);
  v6 = *(v5 + 24 * a2 + 8);
  v7 = *(v5 + 24 * a3 + 8);
  if (v6 == v7)
  {
    v8 = *(v5 + 24 * a2 + 16);
    if (v8 == -2)
    {
      return 0;
    }

    else
    {
      v9 = (v5 + 24 * a3 + 16);
      while (1)
      {
        v10 = *v9;
        result = Lattice<WordLatticeLC>::cmpInLink(a1, v8, *v9);
        if (result)
        {
          break;
        }

        v11 = *(a1 + 128);
        v12 = v11 + 136 * v8;
        v9 = (v11 + 136 * v10 + 124);
        v8 = *(v12 + 124);
        if (v8 == -2)
        {
          return 0;
        }
      }
    }
  }

  else if (v6 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }

  return result;
}

void Lattice<WordLatticeLC>::copyOutLinks(uint64_t result, unsigned int a2, const WordLatticeLC *a3)
{
  v3 = *(result + 80);
  v4 = *(v3 + 24 * a2 + 20);
  if (v4 != -2)
  {
    v5 = a3;
    v7 = 0;
    v22 = a3;
    v8 = *(v3 + 24 * a3 + 20);
    v9 = *(result + 128);
    v10 = 1;
    v11 = -2;
    do
    {
      if (v8 != -2)
      {
        do
        {
          v12 = v8;
          v13 = v8;
          v14 = WordLatticeLC::cmp((v9 + 136 * v8), (v9 + 136 * v4), a3);
          if (v14)
          {
            v9 = *(result + 128);
            if ((v14 & 0x80000000) == 0)
            {
              goto LABEL_12;
            }
          }

          else
          {
            v9 = *(result + 128);
            v15 = *(v9 + 136 * v13 + 120);
            v16 = *(v9 + 136 * v4 + 120);
            if (v15 == v16)
            {
              goto LABEL_16;
            }

            if (*(*(result + 80) + 24 * v15 + 4) >= *(*(result + 80) + 24 * v16 + 4))
            {
              goto LABEL_12;
            }
          }

          v10 = 0;
          v8 = *(v9 + 136 * v13 + 128);
          v11 = v12;
        }

        while (v8 != -2);
        v11 = v12;
      }

      v12 = 4294967294;
LABEL_12:
      Link = Lattice<WordLatticeLC>::createLink(result, v5, *(v9 + 136 * v4 + 120), (v9 + 136 * v4));
      v18 = Link;
      if (v10)
      {
        *(*(result + 80) + 24 * v22 + 20) = Link;
        v19 = *(result + 128);
      }

      else
      {
        v19 = *(result + 128);
        *(v19 + 136 * v11 + 128) = Link;
      }

      *(v19 + 136 * Link + 128) = v12;
      Lattice<WordLatticeLC>::connectInLink(result, Link);
      v10 = 0;
      ++v7;
      v9 = *(result + 128);
      v11 = v18;
LABEL_16:
      v4 = *(v9 + 136 * v4 + 128);
      v8 = v12;
    }

    while (v4 != -2);
    if (v7)
    {
      *(result + 8) = 0;
      v20 = *(result + 80);
      v21 = *(v20 + 24 * v22 + 12);
      if (!v21)
      {
        DgnPrimArray<unsigned int>::removeKeepOrder((result + 48), v5);
        v20 = *(result + 80);
        v21 = *(v20 + 24 * v22 + 12);
      }

      *(v20 + 24 * v22 + 12) = v21 + v7;
    }
  }
}

uint64_t Lattice<WordLatticeLC>::cmpInLink(uint64_t a1, unsigned int a2, const WordLatticeLC *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  v4 = a3;
  result = WordLatticeLC::cmp((*(a1 + 128) + 136 * a2), (*(a1 + 128) + 136 * a3), a3);
  if (!result)
  {
    v7 = *(a1 + 128);
    v8 = *(v7 + 136 * a2 + 116);
    v9 = *(v7 + 136 * v4 + 116);
    if (v8 == v9)
    {
      return 0;
    }

    else if (*(*(a1 + 80) + 24 * v8 + 4) < *(*(a1 + 80) + 24 * v9 + 4))
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

void Lattice<WordLatticeLC>::connectInLink(uint64_t result, const WordLatticeLC *a2)
{
  v4 = *(result + 128);
  v5 = a2;
  v6 = *(v4 + 136 * a2 + 120);
  v7 = *(result + 80);
  v8 = v7 + 24 * v6;
  v11 = *(v8 + 16);
  v10 = (v8 + 16);
  v9 = v11;
  if (v11 == -2)
  {
    v12 = -2;
  }

  else
  {
    do
    {
      v13 = Lattice<WordLatticeLC>::cmpInLink(result, v9, a2);
      if (v13)
      {
        if (v13 >= 1)
        {
          v12 = *v10;
          v4 = *(result + 128);
          goto LABEL_9;
        }
      }

      else
      {
        DuplicateLinkError(*(*(result + 128) + 136 * v5 + 112), *(*(result + 128) + 136 * *v10 + 112));
      }

      v4 = *(result + 128);
      v14 = v4 + 136 * *v10;
      v15 = *(v14 + 124);
      v10 = (v14 + 124);
      v9 = v15;
    }

    while (v15 != -2);
    v12 = -2;
LABEL_9:
    v7 = *(result + 80);
  }

  *v10 = a2;
  *(v4 + 136 * v5 + 124) = v12;
  v16 = v7 + 24 * v6;
  v17 = *(v16 + 8);
  *(v16 + 8) = v17 + 1;
  if (!v17)
  {

    DgnPrimArray<unsigned int>::removeKeepOrder((result + 32), v6);
  }
}

uint64_t Lattice<WordLatticeLC>::topSortInternal(uint64_t a1, int a2)
{
  v4 = *(a1 + 24);
  v79 = 0;
  v80 = 0;
  if (v4)
  {
    v77 = 0;
    v5 = realloc_array(0, &v77, 4 * v4, 0, 0, 1);
    v6 = v77;
    v79 = v77;
    v7 = *(a1 + 24);
    LODWORD(v80) = v4;
    HIDWORD(v80) = v5 >> 2;
    if (!v7)
    {
      v22 = 0;
      goto LABEL_36;
    }

    v8 = 0;
    v9 = 0;
    v10 = *(a1 + 16);
    v11 = *(a1 + 80);
    do
    {
      v12 = *(v10 + 4 * v8);
      v13 = *(v11 + 24 * v12 + 8);
      if (!v13)
      {
        if (v8 == v9)
        {
          v13 = 0;
        }

        else
        {
          if (a2)
          {
            goto LABEL_67;
          }

          v14 = *(v10 + 4 * v9);
          *(v10 + 4 * v8) = v14;
          *(v11 + 24 * v14) = v8;
          *(v10 + 4 * v9) = v12;
          *(v11 + 24 * v12) = v9;
          v13 = v6[v9];
          v6[v9] = 0;
        }

        v9 = (v9 + 1);
      }

      v6[v8++] = v13;
    }

    while (v8 < *(a1 + 24));
    if (v9 >= 2)
    {
      if (a2)
      {
        v15 = *(a1 + 16);
        v18 = *v15;
        v16 = v15 + 1;
        v17 = v18;
        v19 = v9 - 1;
        while (1)
        {
          v21 = *v16++;
          v20 = v21;
          if (v17 == v21 || *(*(a1 + 80) + 24 * v17 + 4) >= *(*(a1 + 80) + 24 * v20 + 4))
          {
            goto LABEL_67;
          }

          v17 = v20;
          if (!--v19)
          {
            goto LABEL_19;
          }
        }
      }

      (*(*a1 + 24))(a1, a1 + 16, v9);
      if (v9 >= 1)
      {
        v64 = *(a1 + 80);
        v65 = v9;
        v66 = *(a1 + 16) - 4;
        v67 = *(a1 + 32) - 4;
        do
        {
          v68 = v65 > 1;
          *(v64 + 24 * *(v66 + 4 * v65)) = v65 - 1;
          *(v67 + 4 * v65) = *(v66 + 4 * v65);
          --v65;
        }

        while (v68);
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
    LODWORD(v80) = 0;
  }

LABEL_19:
  v22 = *(a1 + 24);
  if (v22)
  {
    v23 = 0;
    v24 = 0;
    v25 = *(a1 + 16);
    v26 = *(a1 + 80);
    do
    {
      v27 = *(v26 + 24 * *(v25 + 4 * v23) + 20);
      if (v27 != -2)
      {
        v28 = *(a1 + 128);
        v29 = v79;
        do
        {
          v30 = *(v28 + 136 * v27 + 112);
          if (v24 != v30)
          {
            if (a2)
            {
              goto LABEL_67;
            }

            v31 = *(a1 + 96);
            v32 = *(v31 + 4 * v30);
            v33 = *(v31 + 4 * v24);
            *(v31 + 4 * v30) = v33;
            *(v28 + 136 * v33 + 112) = v30;
            *(v31 + 4 * v24) = v32;
            *(v28 + 136 * v32 + 112) = v24;
          }

          v34 = *(v26 + 24 * *(v28 + 136 * v27 + 120));
          v35 = v29[v34] - 1;
          v29[v34] = v35;
          if (!v35)
          {
            if (v34 != v9)
            {
              if (a2)
              {
                goto LABEL_67;
              }

              v36 = *(v25 + 4 * v34);
              v37 = *(v25 + 4 * v9);
              *(v25 + 4 * v34) = v37;
              *(v26 + 24 * v37) = v34;
              *(v25 + 4 * v9) = v36;
              *(v26 + 24 * v36) = v9;
              v29[v34] = v29[v9];
              v29[v9] = 0;
            }

            LODWORD(v9) = v9 + 1;
          }

          v27 = *(v28 + 136 * v27 + 128);
          ++v24;
        }

        while (v27 != -2);
        v22 = *(a1 + 24);
      }

      ++v23;
    }

    while (v23 < v22);
  }

LABEL_36:
  v38 = *(a1 + 56);
  if (v38 >= 2)
  {
    if (a2)
    {
      v39 = v38 - 1;
      v40 = v22 - 2;
      while (1)
      {
        v41 = __OFSUB__(v39--, 1);
        if (v39 < 0 != v41)
        {
          break;
        }

        v42 = *(a1 + 16);
        v43 = *(v42 + 4 * v40);
        v44 = *(v42 + 4 * (v40 + 1));
        if (v43 != v44)
        {
          --v40;
          if (*(*(a1 + 80) + 24 * v43 + 4) < *(*(a1 + 80) + 24 * v44 + 4))
          {
            continue;
          }
        }

        goto LABEL_67;
      }
    }

    else
    {
      (*(*a1 + 16))(a1, a1 + 48);
      if ((v38 - 1) < 0)
      {
        goto LABEL_65;
      }

      v45 = *(a1 + 48);
      v46 = *(a1 + 16);
      v47 = *(a1 + 80);
      v48 = 4 * (v38 - 1);
      v49 = *(a1 + 24) - 1;
      do
      {
        v50 = *(v45 + v48);
        *(v46 + 4 * v49) = v50;
        *(v47 + 24 * v50) = v49;
        v48 -= 4;
        --v49;
      }

      while (v48 != -4);
    }
  }

  if (a2)
  {
    v51 = *(a1 + 24);
    if (v51)
    {
      v52 = 0;
      v53 = *(a1 + 16);
      v54 = *(a1 + 80);
      v55 = 1;
      v56 = *(a1 + 24);
      while (1)
      {
        v58 = *v53++;
        v57 = v58;
        v59 = *(v54 + 24 * v58 + 8);
        if ((v55 & 1) == 0 && !v59)
        {
          goto LABEL_67;
        }

        v60 = *(v54 + 24 * v57 + 12);
        if ((v52 & (v60 != 0)) != 0)
        {
          goto LABEL_67;
        }

        v55 &= v59 == 0;
        v52 |= v60 == 0;
        if (!--v56)
        {
          v77 = 0;
          v78 = 0;
          v81 = 0;
          v61 = realloc_array(0, &v81, v51, 0, 0, 1);
          v62 = v81;
          v77 = v81;
          v63 = *(a1 + 24);
          v78 = __PAIR64__(v61, v51);
          if (v63 >= 1)
          {
            bzero(v81, v63);
          }

          goto LABEL_60;
        }
      }
    }

    v62 = 0;
    v77 = 0;
    v78 = 0;
LABEL_60:
    v69 = *(a1 + 104);
    if (v69)
    {
      v70 = *(a1 + 96);
      v71 = *(a1 + 128);
      v72 = *(a1 + 80);
      while (1)
      {
        v73 = *v70++;
        v74 = v71 + 136 * v73;
        v62[*(v72 + 24 * *(v74 + 116))] = 1;
        if (v62[*(v72 + 24 * *(v74 + 120))] == 1)
        {
          break;
        }

        if (!--v69)
        {
          goto LABEL_64;
        }
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v77);
LABEL_67:
      v75 = 0;
      goto LABEL_68;
    }

LABEL_64:
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v77);
  }

LABEL_65:
  v75 = 1;
LABEL_68:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v79);
  return v75;
}

void sub_262608834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t HashKEV<ComposeLatticeNode,ComposeLatticeNode,ComposeLatticeNode>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523B18;
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
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 28;
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

void sub_262608908(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<ComposeLatticeNode,ComposeLatticeNode,ComposeLatticeNode>::~HashKEV(uint64_t a1)
{
  HashKEV<ComposeLatticeNode,ComposeLatticeNode,ComposeLatticeNode>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287523B18;
  if (*(a1 + 8))
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524158;
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
    v7 = 17;
  }

  else
  {
    v7 = 21;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_262608A98(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::~Hash(uint64_t a1)
{
  Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

{
  *a1 = &unk_287524158;
  if (*(a1 + 8))
  {
    Hash<StateSpec,StateSpec,StateSpec,BOOL>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  MrecInitModule_sdpres_sdapi();
}

uint64_t **Hash<CwidStatePair,CwidStatePair,CwidStatePair,BOOL>::findBucket(uint64_t a1, _DWORD *a2)
{
  v2 = a2[1];
  HIDWORD(v3) = *a2;
  LODWORD(v3) = *a2;
  v4 = (v3 >> 19) + v2;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (-1640531527 * v4) >> -v5;
  }

  else
  {
    v6 = 0;
  }

  result = (*(a1 + 80) + 8 * v6);
  v8 = *result;
  if (*result)
  {
    do
    {
      v9 = v8;
      if (*(v8 + 2) == v4 && *(v8 + 3) == *a2 && *(v8 + 4) == v2)
      {
        break;
      }

      v8 = *v8;
      result = v9;
    }

    while (*v9);
  }

  return result;
}

unint64_t Lattice<WordLatticeLC>::connectInLinkUnordered(unint64_t result, unsigned int a2)
{
  v3 = *(result + 128) + 136 * a2;
  v4 = *(v3 + 120);
  v5 = *(result + 80) + 24 * v4;
  v6 = *(v5 + 16);
  *(v5 + 16) = a2;
  *(v3 + 124) = v6;
  v7 = *(v5 + 8);
  *(v5 + 8) = v7 + 1;
  if (!v7)
  {
    return DgnPrimArray<unsigned int>::removeKeepOrder((result + 32), v4);
  }

  return result;
}