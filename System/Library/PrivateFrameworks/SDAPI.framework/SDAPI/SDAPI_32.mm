void MultiLMContextData::MultiLMContextData(MultiLMContextData *this, uint64_t a2)
{
  v2 = a2;
  *(this + 2) = 16777212;
  *this = &unk_287526590;
  *(this + 2) = 0;
  v4 = (this + 16);
  *(this + 3) = 0;
  if (a2)
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 16, a2, 0);
    LODWORD(v5) = *(this + 6);
    if (v5 > v2)
    {
      DgnIOwnArray<LMContextData *>::destructAt(v4, v2, v5 - v2);
      goto LABEL_8;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 < v2)
  {
    v5 = v5;
    do
    {
      (*v4)[v5++] = 0;
    }

    while (v2 != v5);
  }

LABEL_8:
  *(this + 6) = v2;
}

void MultiLMContextData::~MultiLMContextData(MultiLMContextData *this)
{
  *this = &unk_287526590;
  DgnIOwnArray<LMContextData *>::releaseAll(this + 16);
}

{
  *this = &unk_287526590;
  DgnIOwnArray<LMContextData *>::releaseAll(this + 16);

  JUMPOUT(0x26672B1B0);
}

void *DgnIOwnArray<LanguageModel *>::releaseAll(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 >= 1)
  {
    v3 = 8 * v2 - 8;
    do
    {
      DgnDelete<LanguageModel>(*(*a1 + v3));
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

uint64_t readObject<unsigned int,DgnPrimArray<unsigned int>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v6 = 0;
  v7 = 0;
  readObject<unsigned int>(a1, &v6, a3);
  if (*a2)
  {
    MemChunkFree(*a2, 0);
    *a2 = 0;
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (v7)
  {
    v4 = 0;
    do
    {
      DgnPrimQueue<unsigned int,DgnPrimArray<unsigned int>>::enqueue(a2, *(v6 + 4 * v4++));
    }

    while (v4 < v7);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v6);
}

uint64_t writeObject<unsigned int,DgnPrimArray<unsigned int>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 20);
  v7 = *(a2 + 24);
  v12 = 0;
  v13 = 0;
  if (v7)
  {
    v9 = 0;
    v7 = 0;
    do
    {
      v10 = *(*a2 + 4 * v5);
      if (v7 == HIDWORD(v13))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v12, 1, 1);
        v7 = v13;
        v9 = v12;
      }

      v9[v7] = v10;
      v7 = v13 + 1;
      LODWORD(v13) = v13 + 1;
      if (v5 + 1 == *(a2 + 8))
      {
        v5 = 0;
      }

      else
      {
        ++v5;
      }
    }

    while (v5 != v6);
  }

  v14 = v7;
  writeObject(a1, &v14, a3);
  writeObjectArray(a1, v12, v13, a3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v12);
}

void sub_26272F81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void MergedStateTransition::updateMergedStateTransition(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6 == -1)
  {
LABEL_11:
    v10 = *(a1 + 8);
    v11 = *(a1 + 12);
    *(a1 + 16) = v10;
    if (v10 == v11)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1, 1, 1);
      v10 = *(a1 + 8);
    }

    *(*a1 + 8 * v10) = *a3;
    ++*(a1 + 8);
    goto LABEL_14;
  }

  if (*a3 == *(*a1 + 8 * v6))
  {
    goto LABEL_14;
  }

  v7 = *(a1 + 8);
  if (v7 < 1)
  {
    *(a1 + 16) = v7 - 1;
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v8 = (*a1 + 8 * v7 - 4);
  while (*(v8 - 1) != *a3 || *v8 != *(a3 + 4))
  {
    v8 -= 2;
    v9 = __OFSUB__(v7, 1);
    LODWORD(v7) = v7 - 1;
    if ((v7 < 0) ^ v9 | (v7 == 0))
    {
      goto LABEL_11;
    }
  }

  *(a1 + 16) = v7 - 1;
LABEL_14:
  v12 = DgnArray<PredState>::reverseFind(a1 + 24, a2);
  if (v12 == -1)
  {
    v12 = *(a1 + 32);
    v13 = v12;
    if (v12 == *(a1 + 36))
    {
      DgnArray<RuleDesc>::reallocElts(a1 + 24, 1, 1);
      v13 = *(a1 + 32);
    }

    v14 = *(a1 + 24) + 12 * v13;
    v15 = *a2;
    *(v14 + 8) = *(a2 + 2);
    *v14 = v15;
    ++*(a1 + 32);
    v16 = *(a1 + 48);
    if (v16 == *(a1 + 52))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 40, 1, 1);
      v16 = *(a1 + 48);
    }

    DgnString::DgnString((*(a1 + 40) + 16 * v16));
    ++*(a1 + 48);
  }

  v17 = *(a1 + 40) + 16 * v12;
  v18 = *(a1 + 16);
  if (*(v17 + 8) <= v18)
  {
    BitArray::setSize((*(a1 + 40) + 16 * v12), v18 + 1);
    v18 = *(a1 + 16);
  }

  *(*v17 + 4 * (v18 >> 5)) |= 1 << v18;
}

uint64_t DgnArray<PredState>::reverseFind(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 8);
  result = (v3 - 1);
  if (v3 >= 1)
  {
    for (i = (*a1 + 12 * v3 - 4); *(i - 4) != *a2 || *(i - 1) != *(a2 + 1) || *i != *(a2 + 2); i -= 3)
    {
      v6 = __OFSUB__(v3--, 1);
      if ((v3 < 0) ^ v6 | (v3 == 0))
      {
        return 0xFFFFFFFFLL;
      }
    }

    return (v3 - 1);
  }

  return result;
}

uint64_t sizeObject<BitArray>(uint64_t a1, int a2)
{
  DgnString::DgnString(v11);
  v4 = BitArray::sizeObject(v11, 2);
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
          v5 += BitArray::sizeObject(*a1 + v9, a2);
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

  BitArray::~BitArray(v11);
  return v5;
}

uint64_t SeedMergedActiveWord::processMergedWord(SeedMergedActiveWord *this, ActiveWord *a2, const HistoryMgr *a3, const PhnIndexSet *a4, uint64_t a5)
{
  v5 = a5;
  *(this + 1) = a2;
  v9 = *(a2 + 1);
  *(this + 16) = *(v9 + 16);
  *(this + 17) = *(v9 + 20);
  *(this + 72) = *(v9 + 24);
  v10 = *(a2 + 3);
  v11 = *(v10 + 8);
  v12 = *(a4 + 2);
  BitArray::setSizeNoGrow((this + 32), 0);
  BitArray::setSize((this + 32), v11);
  v13 = *(this + 7);
  if (v11 > v13)
  {
    DgnPrimArray<short>::reallocElts(this + 16, v11 - v13, 0);
  }

  *(this + 6) = v11;
  if (v11 >= 1)
  {
    memset_pattern16(*(this + 2), &unk_262888330, 2 * v11);
  }

  v14 = *(this + 14);
  if (v14 >= v11)
  {
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    do
    {
      if (v14 == *(this + 15))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(this + 48, 1, 1);
        v14 = *(this + 14);
      }

      DgnString::DgnString((*(this + 6) + 16 * v14));
      v14 = *(this + 14) + 1;
      *(this + 14) = v14;
    }

    while (v14 < v11);
  }

  v15 = 0;
  do
  {
    BitArray::setSizeNoGrow((*(this + 6) + v15), 0);
    BitArray::setSize((*(this + 6) + v15), v12);
    v15 += 16;
    --v11;
  }

  while (v11);
LABEL_13:
  result = SeedMergedActiveWord::processOnePredStateForPort<true>(this, v10, a3, v5);
  if (v12 >= 1)
  {
    v17 = v12 + 1;
    do
    {
      if ((*(*a4 + 4 * ((v17 - 2) >> 5)) >> (v17 - 2)))
      {
        result = SeedMergedActiveWord::processOnePredStateForPort<false>(this, v10, a3, v5, (v17 - 2));
      }

      --v17;
    }

    while (v17 > 1);
  }

  *(this + 22) = -1;
  return result;
}

void *SeedMergedActiveWord::processOnePredStateForPort<true>(void *result, uint64_t a2, uint64_t a3, int a4)
{
  v4 = **(*(result[1] + 8) + 72);
  v5 = *(v4 + 8);
  if (v5 <= a4)
  {
    if (v5 == 20000)
    {
      v6 = -2;
    }

    else
    {
      v6 = *v4;
    }

    v7 = *(a2 + 32);
    if (v7)
    {
      v8 = 0;
      v9 = (*(a3 + 8) + 36 * v6);
      v11 = v9[2];
      v10 = v9[3];
      v12 = *v9 >> 25;
      v13 = (*(a2 + 24) + 8);
      while (*(v13 - 4) != v12 || *(v13 - 1) != v11 || *v13 != v10)
      {
        ++v8;
        v13 += 3;
        if (v7 == v8)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v8 = 0xFFFFFFFFLL;
    }

    v14 = *(a2 + 40) + 16 * v8;
    v15 = *(v14 + 8);
    if (v15 >= 1)
    {
      v16 = *v14;
      v17 = v15 - 1;
      do
      {
        v18 = v17 >> 5;
        if ((*(v16 + 4 * v18) & (1 << v17)) != 0)
        {
          *(result[4] + 4 * v18) |= 1 << v17;
          v19 = result[2];
          if (v5 < *(v19 + 2 * v17))
          {
            *(v19 + 2 * v17) = v5;
          }
        }

        v20 = v17-- + 1;
      }

      while (v20 > 1);
    }
  }

  return result;
}

uint64_t SeedMergedActiveWord::processOnePredStateForPort<false>(void *a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5)
{
  result = HmmNet::maybeGetNonSilOutPort(*(a1[1] + 8), a5);
  v11 = *(result + 8);
  if (v11 <= a4)
  {
    if (v11 == 20000)
    {
      v12 = -2;
    }

    else
    {
      v12 = *result;
    }

    v13 = *(a2 + 32);
    if (v13)
    {
      v14 = 0;
      v15 = (*(a3 + 8) + 36 * v12);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 >> 25;
      v19 = (*(a2 + 24) + 8);
      while (*(v19 - 4) != v18 || *(v19 - 1) != v17 || *v19 != v16)
      {
        ++v14;
        v19 += 3;
        if (v13 == v14)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v14 = 0xFFFFFFFFLL;
    }

    v20 = *(a2 + 40) + 16 * v14;
    v21 = *(v20 + 8);
    if (v21 >= 1)
    {
      v22 = *v20;
      v23 = v21 + 1;
      v24 = 2 * v21 - 2;
      do
      {
        if ((*(v22 + 4 * ((v23 - 2) >> 5)) >> (v23 - 2)))
        {
          v25 = *(a1[6] + 8 * v24);
          *(v25 + 4 * (a5 >> 5)) |= 1 << a5;
          v26 = a1[2];
          if (v11 < *(v26 + v24))
          {
            *(v26 + v24) = v11;
          }
        }

        --v23;
        v24 -= 2;
      }

      while (v23 > 1);
    }
  }

  return result;
}

uint64_t MergedActive::initMergedActive(uint64_t result, uint64_t a2, char a3, char a4)
{
  *result = a2;
  *(result + 128) = a3;
  *(result + 129) = a4;
  return result;
}

uint64_t sizeObject<ActiveWord *>(uint64_t a1, int a2)
{
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    result = 12;
  }

  else
  {
    result = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v4 = *(a1 + 8);
    v5 = 2;
    if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
    {
      v5 = 3;
    }

    if (a2)
    {
      v6 = v4 << v5;
    }

    else
    {
      v6 = (v4 + (*(a1 + 12) - v4)) << v5;
    }

    result += v6;
  }

  return result;
}

uint64_t HmmNet::maybeGetNonSilOutPort(HmmNet *this, unsigned int a2)
{
  v2 = *(this + 10);
  if (v2 < 2)
  {
    v3 = 0;
    return *(*(this + 9) + 8 * v3);
  }

  if (v2 - 3 < 2)
  {
    v3 = *(*(this + 11) + a2);
    if (v3 == 255)
    {
      return 0;
    }

    return *(*(this + 9) + 8 * v3);
  }

  if (v2 == 2)
  {
    v3 = 1;
    return *(*(this + 9) + 8 * v3);
  }

  return 0;
}

unint64_t StartupPrefiltererBuildParamSpecMgr(void)
{
  v21 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v21, "PrefiltererBuildAllowMultiPhonemeSequences", &byte_262899963, &byte_262899963, &sPrefiltererBuildAllowMultiPhonemeSequencesBoolHistory);
  v20 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v20, "PrefiltererBuildDurationScoreScale", &byte_262899963, &byte_262899963, &sPrefiltererBuildDurationScoreScaleDoubleHistory);
  v18 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v18, "PrefiltererBuildBestScoreAdditionalPhonemeStartDepth", &byte_262899963, &byte_262899963, &sPrefiltererBuildBestScoreAdditionalPhonemeStartDepthIntHistory);
  v19 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v19, "PrefiltererBuildMaxPronLength", &byte_262899963, &byte_262899963, &sPrefiltererBuildMaxPronLengthIntHistory);
  v17 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v17, "PrefiltererBuildMaxWordEndScore", &byte_262899963, &byte_262899963, &sPrefiltererBuildMaxWordEndScoreIntHistory);
  v15 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v15, "PrefiltererBuildEnableGenoneScoreCacheThresh", &byte_262899963, &byte_262899963, &sPrefiltererBuildEnableGenoneScoreCacheThreshDoubleHistory);
  v16 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v16, "PrefiltererBuildTruncatePackedIntComponentScores", &byte_262899963, &byte_262899963, &sPrefiltererBuildTruncatePackedIntComponentScoresBoolHistory);
  v13 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v13, "PrefiltererBuildFmpeMinimumPosteriorProbability", &byte_262899963, &byte_262899963, &sPrefiltererBuildFmpeMinimumPosteriorProbabilityDoubleHistory);
  v14 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v14, "PrefiltererBuildLookaheadScoringType", &byte_262899963, &byte_262899963, &sPrefiltererBuildLookaheadScoringTypeEnumHistory);
  v12 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v12, "PrefiltererBuildLookaheadThreadingType", &byte_262899963, &byte_262899963, &sPrefiltererBuildLookaheadThreadingTypeEnumHistory);
  v0 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v0, "PrefiltererBuildThreadingType", &byte_262899963, &byte_262899963, &sPrefiltererBuildThreadingTypeEnumHistory);
  v1 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v1, "PrefiltererBuildUseGPU", &byte_262899963, &byte_262899963, &sPrefiltererBuildUseGPUBoolHistory);
  v2 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v2, "PrefiltererBuildHierScorerBeamList", &byte_262899963, &byte_262899963, &sPrefiltererBuildHierScorerBeamListStringHistory);
  v11 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v11, "PrefiltererBuildHierScorerCutoffList", &byte_262899963, &byte_262899963, &sPrefiltererBuildHierScorerCutoffListStringHistory);
  v3 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v3, "PrefiltererBuildHierScorerCutoffRatioList", &byte_262899963, &byte_262899963, &sPrefiltererBuildHierScorerCutoffRatioListStringHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v4, "PrefiltererBuildHierInactiveComponentScore", &byte_262899963, &byte_262899963, &sPrefiltererBuildHierInactiveComponentScoreIntHistory);
  v5 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v5, "PrefiltererBuildDisableHierarchicalScorer", &byte_262899963, &byte_262899963, &sPrefiltererBuildDisableHierarchicalScorerBoolHistory);
  v6 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v6, "PrefiltererBuildDisableGPUScorer", &byte_262899963, &byte_262899963, &sPrefiltererBuildDisableGPUScorerBoolHistory);
  v7 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v7, "PrefiltererBuildContextType", &byte_262899963, &byte_262899963, &sPrefiltererBuildContextTypeEnumHistory);
  v8 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v8, "PrefiltererBuildWordBoundaryType", &byte_262899963, &byte_262899963, &sPrefiltererBuildWordBoundaryTypeEnumHistory);
  ParamSpecMgr::addParam(qword_281051F98, v21);
  ParamSpecMgr::addParam(qword_281051F98, v18);
  ParamSpecMgr::addParam(qword_281051F98, v20);
  ParamSpecMgr::addParam(qword_281051F98, v15);
  ParamSpecMgr::addParam(qword_281051F98, v13);
  ParamSpecMgr::addParam(qword_281051F98, v19);
  ParamSpecMgr::addParam(qword_281051F98, v17);
  ParamSpecMgr::addParam(qword_281051F98, v16);
  ParamSpecMgr::addParam(qword_281051F98, v14);
  ParamSpecMgr::addParam(qword_281051F98, v12);
  ParamSpecMgr::addParam(qword_281051F98, v0);
  ParamSpecMgr::addParam(qword_281051F98, v1);
  ParamSpecMgr::addParam(qword_281051F98, v2);
  ParamSpecMgr::addParam(qword_281051F98, v3);
  ParamSpecMgr::addParam(qword_281051F98, v4);
  ParamSpecMgr::addParam(qword_281051F98, v5);
  ParamSpecMgr::addParam(qword_281051F98, v6);
  ParamSpecMgr::addParam(qword_281051F98, v7);
  ParamSpecMgr::addParam(qword_281051F98, v8);
  ParamSpecMgr::addParam(qword_281051F98, v11);
  v9 = qword_281051F98;

  return ParamSpecMgr::sortParams(v9);
}

_DWORD *PrefiltererBuildParamSet::PrefiltererBuildParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287524C80;
  DgnString::DgnString((a1 + 26));
  DgnString::DgnString((a1 + 30));
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_262730750(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 15));
  DgnString::~DgnString((v1 + 13));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t PrefiltererBuildParamSet::PrefiltererBuildParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287524C80;
  DgnString::DgnString((a1 + 104));
  DgnString::DgnString((a1 + 120));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  v11 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  DgnString::operator=((a1 + 104), (a2 + 104));
  DgnString::operator=((a1 + 120), (a2 + 120));
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

void sub_26273089C(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 13));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t PrefiltererBuildParamSet::setDefaults(PrefiltererBuildParamSet *this)
{
  *(this + 40) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F98, 1, 0, 0);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051F98, 2, 0, 0);
  *(this + 6) = ParamSpecMgr::ParamGetDefault_double(qword_281051F98, 3, 0, 0);
  *(this + 7) = ParamSpecMgr::ParamGetDefault_double(qword_281051F98, 4, 0, 0);
  *(this + 8) = ParamSpecMgr::ParamGetDefault_double(qword_281051F98, 5, 0, 0);
  *(this + 18) = ParamSpecMgr::ParamGetDefault_int(qword_281051F98, 6, 0, 0);
  *(this + 19) = ParamSpecMgr::ParamGetDefault_int(qword_281051F98, 7, 0, 0);
  *(this + 80) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F98, 8, 0, 0);
  *(this + 21) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F98, 9);
  *(this + 22) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F98, 10);
  *(this + 23) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F98, 11);
  *(this + 96) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F98, 12, 0, 0);
  Default_string = ParamSpecMgr::ParamGetDefault_string(qword_281051F98, 13, 0, 0);
  DgnString::operator=((this + 104), Default_string);
  v3 = ParamSpecMgr::ParamGetDefault_string(qword_281051F98, 14, 0, 0);
  DgnString::operator=((this + 120), v3);
  *(this + 34) = ParamSpecMgr::ParamGetDefault_int(qword_281051F98, 15, 0, 0);
  *(this + 140) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F98, 16, 0, 0);
  *(this + 141) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051F98, 17, 0, 0);
  *(this + 36) = ParamSpecMgr::ParamGetDefault_enum(qword_281051F98, 18);
  result = ParamSpecMgr::ParamGetDefault_enum(qword_281051F98, 19);
  *(this + 37) = result;
  return result;
}

uint64_t PrefiltererBuildParamSet::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject(a1 + 8, a2) + 16 * (a2 != 3);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v6 = sizeObject(a1 + 104, a2);
    v5 = a2 != 3;
    v4 += (8 * v5 || 2 * v5) + 2 * (8 * v5 + 12 * v5) + v6 + sizeObject(a1 + 120, a2) + (v5 || 4 * v5 || 2 * (v5 || 4 * v5));
  }

  return v4;
}

void PrefiltererBuildParamSet::setParamSetPrefiltererBuildHierScorerBeamList(PrefiltererBuildParamSet *this, char *a2)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("PrefiltererBuildHierScorerBeamList", "string");
  }

  else
  {
    DgnString::operator=((this + 104), a2);
  }
}

void PrefiltererBuildParamSet::setParamSetPrefiltererBuildHierScorerCutoffRatioList(PrefiltererBuildParamSet *this, char *a2)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("PrefiltererBuildHierScorerCutoffRatioList", "string");
  }

  else
  {
    DgnString::operator=((this + 120), a2);
  }
}

uint64_t PrefiltererBuildParamSet::getBoolParameter(_BYTE *a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      if (a3 == 1)
      {
        v7 = qword_281051F98;
        v8 = 1;
        goto LABEL_41;
      }

      if (a3)
      {
        goto LABEL_23;
      }

      v3 = a1[40];
      return v3 & 1;
    case 2:
      v4 = "int";
      v5 = 2;
      goto LABEL_32;
    case 3:
      v4 = "double";
      v5 = 3;
      goto LABEL_32;
    case 4:
      v4 = "double";
      v5 = 4;
      goto LABEL_32;
    case 5:
      v4 = "double";
      v5 = 5;
      goto LABEL_32;
    case 6:
      v4 = "int";
      v5 = 6;
      goto LABEL_32;
    case 7:
      v4 = "int";
      v5 = 7;
      goto LABEL_32;
    case 8:
      if (a3 == 1)
      {
        v7 = qword_281051F98;
        v8 = 8;
        goto LABEL_41;
      }

      if (a3)
      {
        goto LABEL_23;
      }

      v3 = a1[80];
      return v3 & 1;
    case 9:
      v4 = "enum";
      v5 = 9;
      goto LABEL_32;
    case 10:
      v4 = "enum";
      v5 = 10;
      goto LABEL_32;
    case 11:
      v4 = "enum";
      v5 = 11;
      goto LABEL_32;
    case 12:
      if (a3 == 1)
      {
        v7 = qword_281051F98;
        v8 = 12;
        goto LABEL_41;
      }

      if (a3)
      {
        goto LABEL_23;
      }

      v3 = a1[96];
      return v3 & 1;
    case 13:
      v4 = "string";
      v5 = 13;
      goto LABEL_32;
    case 14:
      v4 = "string";
      v5 = 14;
      goto LABEL_32;
    case 15:
      v4 = "int";
      v5 = 15;
      goto LABEL_32;
    case 16:
      if (a3 == 1)
      {
        v7 = qword_281051F98;
        v8 = 16;
        goto LABEL_41;
      }

      if (a3)
      {
        goto LABEL_23;
      }

      v3 = a1[140];
      break;
    case 17:
      if (a3 == 1)
      {
        v7 = qword_281051F98;
        v8 = 17;
LABEL_41:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v7, v8);
      }

      else if (a3)
      {
LABEL_23:
        throwWrongQueryMode(a3, "BOOL");
LABEL_33:
        v3 = 0;
      }

      else
      {
        v3 = a1[141];
      }

      break;
    case 18:
      v4 = "enum";
      v5 = 18;
      goto LABEL_32;
    case 19:
      v4 = "enum";
      v5 = 19;
LABEL_32:
      throwWrongTypeForParamId(v5, v4, "BOOL");
      goto LABEL_33;
    default:
      throwWrongParamIdValue(a2, "BOOL");
      goto LABEL_33;
  }

  return v3 & 1;
}

uint64_t PrefiltererBuildParamSet::getIntParameter(unsigned int *a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_34;
    case 2:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_51;
        }

        v5 = qword_281051F98;
        v6 = 2;
        goto LABEL_30;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F98;
        v13 = 2;
        goto LABEL_60;
      }

      if (a3 != 3)
      {
        goto LABEL_51;
      }

      v9 = qword_281051F98;
      v10 = 2;
      goto LABEL_50;
    case 3:
      v3 = "double";
      v4 = 3;
      goto LABEL_34;
    case 4:
      v3 = "double";
      v4 = 4;
      goto LABEL_34;
    case 5:
      v3 = "double";
      v4 = 5;
      goto LABEL_34;
    case 6:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[18];
        }

        if (a3 != 1)
        {
          goto LABEL_51;
        }

        v5 = qword_281051F98;
        v6 = 6;
        goto LABEL_30;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F98;
        v13 = 6;
        goto LABEL_60;
      }

      if (a3 != 3)
      {
        goto LABEL_51;
      }

      v9 = qword_281051F98;
      v10 = 6;
      goto LABEL_50;
    case 7:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[19];
        }

        if (a3 != 1)
        {
          goto LABEL_51;
        }

        v5 = qword_281051F98;
        v6 = 7;
        goto LABEL_30;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F98;
        v13 = 7;
        goto LABEL_60;
      }

      if (a3 != 3)
      {
        goto LABEL_51;
      }

      v9 = qword_281051F98;
      v10 = 7;
      goto LABEL_50;
    case 8:
      v3 = "BOOL";
      v4 = 8;
      goto LABEL_34;
    case 9:
      v3 = "enum";
      v4 = 9;
      goto LABEL_34;
    case 10:
      v3 = "enum";
      v4 = 10;
      goto LABEL_34;
    case 11:
      v3 = "enum";
      v4 = 11;
      goto LABEL_34;
    case 12:
      v3 = "BOOL";
      v4 = 12;
      goto LABEL_34;
    case 13:
      v3 = "string";
      v4 = 13;
      goto LABEL_34;
    case 14:
      v3 = "string";
      v4 = 14;
      goto LABEL_34;
    case 15:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[34];
        }

        if (a3 == 1)
        {
          v5 = qword_281051F98;
          v6 = 15;
LABEL_30:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v5, v6);
        }

LABEL_51:
        throwWrongQueryMode(a3, "int");
        return 0;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F98;
        v13 = 15;
LABEL_60:
        v14 = ParamSpecMgr::getParamByParamId(v12, v13);
      }

      if (a3 != 3)
      {
        goto LABEL_51;
      }

      v9 = qword_281051F98;
      v10 = 15;
LABEL_50:
      v11 = ParamSpecMgr::getParamByParamId(v9, v10);
    case 16:
      v3 = "BOOL";
      v4 = 16;
      goto LABEL_34;
    case 17:
      v3 = "BOOL";
      v4 = 17;
      goto LABEL_34;
    case 18:
      v3 = "enum";
      v4 = 18;
      goto LABEL_34;
    case 19:
      v3 = "enum";
      v4 = 19;
LABEL_34:
      throwWrongTypeForParamId(v4, v3, "int");
      return 0;
    default:
      throwWrongParamIdValue(a2, "int");
      return 0;
  }
}

double PrefiltererBuildParamSet::getDoubleParameter(double *a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_31;
    case 2:
      v3 = "int";
      v4 = 2;
      goto LABEL_31;
    case 3:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[6];
        }

        if (a3 != 1)
        {
          goto LABEL_45;
        }

        v5 = qword_281051F98;
        v6 = 3;
        goto LABEL_21;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F98;
        v13 = 3;
        goto LABEL_52;
      }

      if (a3 != 3)
      {
        goto LABEL_45;
      }

      v9 = qword_281051F98;
      v10 = 3;
      goto LABEL_44;
    case 4:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[7];
        }

        if (a3 != 1)
        {
          goto LABEL_45;
        }

        v5 = qword_281051F98;
        v6 = 4;
        goto LABEL_21;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F98;
        v13 = 4;
        goto LABEL_52;
      }

      if (a3 != 3)
      {
        goto LABEL_45;
      }

      v9 = qword_281051F98;
      v10 = 4;
      goto LABEL_44;
    case 5:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[8];
        }

        if (a3 == 1)
        {
          v5 = qword_281051F98;
          v6 = 5;
LABEL_21:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v5, v6);
        }

LABEL_45:
        throwWrongQueryMode(a3, "double");
        return 0.0;
      }

      if (a3 == 2)
      {
        v12 = qword_281051F98;
        v13 = 5;
LABEL_52:
        v14 = ParamSpecMgr::getParamByParamId(v12, v13);
      }

      if (a3 != 3)
      {
        goto LABEL_45;
      }

      v9 = qword_281051F98;
      v10 = 5;
LABEL_44:
      v11 = ParamSpecMgr::getParamByParamId(v9, v10);
    case 6:
      v3 = "int";
      v4 = 6;
      goto LABEL_31;
    case 7:
      v3 = "int";
      v4 = 7;
      goto LABEL_31;
    case 8:
      v3 = "BOOL";
      v4 = 8;
      goto LABEL_31;
    case 9:
      v3 = "enum";
      v4 = 9;
      goto LABEL_31;
    case 10:
      v3 = "enum";
      v4 = 10;
      goto LABEL_31;
    case 11:
      v3 = "enum";
      v4 = 11;
      goto LABEL_31;
    case 12:
      v3 = "BOOL";
      v4 = 12;
      goto LABEL_31;
    case 13:
      v3 = "string";
      v4 = 13;
      goto LABEL_31;
    case 14:
      v3 = "string";
      v4 = 14;
      goto LABEL_31;
    case 15:
      v3 = "int";
      v4 = 15;
      goto LABEL_31;
    case 16:
      v3 = "BOOL";
      v4 = 16;
      goto LABEL_31;
    case 17:
      v3 = "BOOL";
      v4 = 17;
      goto LABEL_31;
    case 18:
      v3 = "enum";
      v4 = 18;
      goto LABEL_31;
    case 19:
      v3 = "enum";
      v4 = 19;
LABEL_31:
      throwWrongTypeForParamId(v4, v3, "double");
      return 0.0;
    default:
      throwWrongParamIdValue(a2, "double");
      return 0.0;
  }
}

char *PrefiltererBuildParamSet::getStringParameter(uint64_t a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_28;
    case 2:
      v3 = "int";
      v4 = 2;
      goto LABEL_28;
    case 3:
      v3 = "double";
      v4 = 3;
      goto LABEL_28;
    case 4:
      v3 = "double";
      v4 = 4;
      goto LABEL_28;
    case 5:
      v3 = "double";
      v4 = 5;
      goto LABEL_28;
    case 6:
      v3 = "int";
      v4 = 6;
      goto LABEL_28;
    case 7:
      v3 = "int";
      v4 = 7;
      goto LABEL_28;
    case 8:
      v3 = "BOOL";
      v4 = 8;
      goto LABEL_28;
    case 9:
      v3 = "enum";
      v4 = 9;
      goto LABEL_28;
    case 10:
      v3 = "enum";
      v4 = 10;
      goto LABEL_28;
    case 11:
      v3 = "enum";
      v4 = 11;
      goto LABEL_28;
    case 12:
      v3 = "BOOL";
      v4 = 12;
      goto LABEL_28;
    case 13:
      if (a3 == 1)
      {
        v8 = qword_281051F98;
        v9 = 13;
        goto LABEL_35;
      }

      if (a3)
      {
        goto LABEL_32;
      }

      v5 = *(a1 + 112);
      v6 = *(a1 + 104);
      goto LABEL_21;
    case 14:
      if (a3 == 1)
      {
        v8 = qword_281051F98;
        v9 = 14;
LABEL_35:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v8, v9);
      }

      else if (a3)
      {
LABEL_32:
        throwWrongQueryMode(a3, "string");
        return 0;
      }

      else
      {
        v5 = *(a1 + 128);
        v6 = *(a1 + 120);
LABEL_21:
        if (v5)
        {
          return v6;
        }

        else
        {
          return &byte_262899963;
        }
      }

    case 15:
      v3 = "int";
      v4 = 15;
      goto LABEL_28;
    case 16:
      v3 = "BOOL";
      v4 = 16;
      goto LABEL_28;
    case 17:
      v3 = "BOOL";
      v4 = 17;
      goto LABEL_28;
    case 18:
      v3 = "enum";
      v4 = 18;
      goto LABEL_28;
    case 19:
      v3 = "enum";
      v4 = 19;
LABEL_28:
      throwWrongTypeForParamId(v4, v3, "string");
      return 0;
    default:
      throwWrongParamIdValue(a2, "string");
      return 0;
  }
}

uint64_t PrefiltererBuildParamSet::getEnumParameter(unsigned int *a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_20;
    case 2:
      v3 = "int";
      v4 = 2;
      goto LABEL_20;
    case 3:
      v3 = "double";
      v4 = 3;
      goto LABEL_20;
    case 4:
      v3 = "double";
      v4 = 4;
      goto LABEL_20;
    case 5:
      v3 = "double";
      v4 = 5;
      goto LABEL_20;
    case 6:
      v3 = "int";
      v4 = 6;
      goto LABEL_20;
    case 7:
      v3 = "int";
      v4 = 7;
      goto LABEL_20;
    case 8:
      v3 = "BOOL";
      v4 = 8;
      goto LABEL_20;
    case 9:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v30 = qword_281051F98;
          v31 = 9;
          goto LABEL_91;
        }

        if (a3 != 3)
        {
          goto LABEL_79;
        }

        v27 = qword_281051F98;
        v28 = 9;
        goto LABEL_74;
      }

      if (!a3)
      {
        return a1[21];
      }

      if (a3 != 1)
      {
        goto LABEL_79;
      }

      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F98, 9);
      if (**(v24 + 24))
      {
        v25 = v24 + 16;
        v26 = 1;
        v9 = v25;
        do
        {
          if (*v9 == 1)
          {
            return *(v9 + 16);
          }

          result = 0;
          v9 = v25 + 32 * v26++;
        }

        while (**(v9 + 8));
        return result;
      }

      return 0;
    case 10:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v30 = qword_281051F98;
          v31 = 10;
          goto LABEL_91;
        }

        if (a3 != 3)
        {
          goto LABEL_79;
        }

        v27 = qword_281051F98;
        v28 = 10;
        goto LABEL_74;
      }

      if (!a3)
      {
        return a1[22];
      }

      if (a3 != 1)
      {
        goto LABEL_79;
      }

      v5 = ParamSpecMgr::getParamByParamId(qword_281051F98, 10);
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
    case 11:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v30 = qword_281051F98;
          v31 = 11;
          goto LABEL_91;
        }

        if (a3 != 3)
        {
          goto LABEL_79;
        }

        v27 = qword_281051F98;
        v28 = 11;
        goto LABEL_74;
      }

      if (!a3)
      {
        return a1[23];
      }

      if (a3 != 1)
      {
        goto LABEL_79;
      }

      v19 = ParamSpecMgr::getParamByParamId(qword_281051F98, 11);
      if (**(v20 + 24))
      {
        v21 = v20 + 16;
        v22 = 1;
        v9 = v21;
        do
        {
          if (*v9 == 1)
          {
            return *(v9 + 16);
          }

          result = 0;
          v9 = v21 + 32 * v22++;
        }

        while (**(v9 + 8));
        return result;
      }

      return 0;
    case 12:
      v3 = "BOOL";
      v4 = 12;
      goto LABEL_20;
    case 13:
      v3 = "string";
      v4 = 13;
      goto LABEL_20;
    case 14:
      v3 = "string";
      v4 = 14;
      goto LABEL_20;
    case 15:
      v3 = "int";
      v4 = 15;
      goto LABEL_20;
    case 16:
      v3 = "BOOL";
      v4 = 16;
      goto LABEL_20;
    case 17:
      v3 = "BOOL";
      v4 = 17;
LABEL_20:
      throwWrongTypeForParamId(v4, v3, "BOOL");
      return 0;
    case 18:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v30 = qword_281051F98;
          v31 = 18;
          goto LABEL_91;
        }

        if (a3 != 3)
        {
          goto LABEL_79;
        }

        v27 = qword_281051F98;
        v28 = 18;
        goto LABEL_74;
      }

      if (!a3)
      {
        return a1[36];
      }

      if (a3 != 1)
      {
        goto LABEL_79;
      }

      v11 = ParamSpecMgr::getParamByParamId(qword_281051F98, 18);
      if (**(v12 + 24))
      {
        v13 = v12 + 16;
        v14 = 1;
        v9 = v13;
        do
        {
          if (*v9 == 1)
          {
            return *(v9 + 16);
          }

          result = 0;
          v9 = v13 + 32 * v14++;
        }

        while (**(v9 + 8));
        return result;
      }

      return 0;
    case 19:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v30 = qword_281051F98;
          v31 = 19;
LABEL_91:
          v32 = ParamSpecMgr::getParamByParamId(v30, v31);
          if (v32)
          {
          }

          return EnumParamSpec::getMinVal(v32);
        }

        if (a3 == 3)
        {
          v27 = qword_281051F98;
          v28 = 19;
LABEL_74:
          v29 = ParamSpecMgr::getParamByParamId(v27, v28);
          if (v29)
          {
          }

          return EnumParamSpec::getMaxVal(v29);
        }

        goto LABEL_79;
      }

      if (!a3)
      {
        return a1[37];
      }

      if (a3 != 1)
      {
LABEL_79:
        throwWrongQueryMode(a3, "enum");
        return 0;
      }

      v15 = ParamSpecMgr::getParamByParamId(qword_281051F98, 19);
      if (!**(v16 + 24))
      {
        return 0;
      }

      v17 = v16 + 16;
      v18 = 1;
      v9 = v17;
      while (*v9 != 1)
      {
        result = 0;
        v9 = v17 + 32 * v18++;
        if (!**(v9 + 8))
        {
          return result;
        }
      }

      return *(v9 + 16);
    default:
      throwWrongParamIdValue(a2, "enum");
      return 0;
  }
}

double PrefiltererBuildParamSet::setBoolParameter(uint64_t this, int a2, char a3)
{
  switch(a2)
  {
    case 1:
      if (*(this + 36))
      {
        v6 = "PrefiltererBuildAllowMultiPhonemeSequences";
        goto LABEL_26;
      }

      *(this + 40) = a3;
      return result;
    case 2:
      throwWrongTypeForParamId(2, "int", "BOOL");
      goto LABEL_19;
    case 3:
LABEL_19:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_20;
    case 4:
LABEL_20:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_21;
    case 5:
LABEL_21:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_22;
    case 6:
LABEL_22:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_23;
    case 7:
LABEL_23:
      result = throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_24;
    case 8:
LABEL_24:
      if (*(this + 36))
      {
        v6 = "PrefiltererBuildTruncatePackedIntComponentScores";
        goto LABEL_26;
      }

      *(this + 80) = a3;
      return result;
    case 9:
      throwWrongTypeForParamId(9, "enum", "BOOL");
      goto LABEL_7;
    case 10:
LABEL_7:
      throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_8;
    case 11:
LABEL_8:
      result = throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_9;
    case 12:
LABEL_9:
      if (*(this + 36))
      {
        v6 = "PrefiltererBuildUseGPU";
        goto LABEL_26;
      }

      *(this + 96) = a3;
      return result;
    case 13:
      throwWrongTypeForParamId(13, "string", "BOOL");
      goto LABEL_13;
    case 14:
LABEL_13:
      throwWrongTypeForParamId(a2, "string", "BOOL");
      goto LABEL_14;
    case 15:
LABEL_14:
      result = throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_15;
    case 16:
LABEL_15:
      if (*(this + 36))
      {
        v6 = "PrefiltererBuildDisableHierarchicalScorer";
        goto LABEL_26;
      }

      *(this + 140) = a3;
      break;
    case 17:
      if (*(this + 36))
      {
        v6 = "PrefiltererBuildDisableGPUScorer";
LABEL_26:

        result = throwParamSetSetFailed(v6, "BOOL");
      }

      else
      {
        *(this + 141) = a3;
      }

      break;
    case 18:
      throwWrongTypeForParamId(18, "enum", "BOOL");
      goto LABEL_31;
    case 19:
LABEL_31:
      throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_32;
    default:
LABEL_32:

      return throwWrongParamIdValue(a2, "BOOL");
  }

  return result;
}

void PrefiltererBuildParamSet::setIntParameter(PrefiltererBuildParamSet *this, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "int");
      goto LABEL_3;
    case 2:
LABEL_3:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F98, 2);
      if (ParamByParamId)
      {
      }

      IntParamSpec::validateValue(ParamByParamId, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "PrefiltererBuildBestScoreAdditionalPhonemeStartDepth";
        goto LABEL_26;
      }

      *(this + 11) = a3;
      return;
    case 3:
      throwWrongTypeForParamId(3, "double", "int");
      goto LABEL_20;
    case 4:
LABEL_20:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_21;
    case 5:
LABEL_21:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_22;
    case 6:
LABEL_22:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051F98, 6);
      if (v9)
      {
      }

      IntParamSpec::validateValue(v9, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "PrefiltererBuildMaxPronLength";
        goto LABEL_26;
      }

      *(this + 18) = a3;
      return;
    case 7:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051F98, 7);
      if (v10)
      {
      }

      IntParamSpec::validateValue(v10, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "PrefiltererBuildMaxWordEndScore";
        goto LABEL_26;
      }

      *(this + 19) = a3;
      break;
    case 8:
      throwWrongTypeForParamId(8, "BOOL", "int");
      goto LABEL_8;
    case 9:
LABEL_8:
      throwWrongTypeForParamId(a2, "enum", "int");
      goto LABEL_9;
    case 10:
LABEL_9:
      throwWrongTypeForParamId(a2, "enum", "int");
      goto LABEL_10;
    case 11:
LABEL_10:
      throwWrongTypeForParamId(a2, "enum", "int");
      goto LABEL_11;
    case 12:
LABEL_11:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_12;
    case 13:
LABEL_12:
      throwWrongTypeForParamId(a2, "string", "int");
      goto LABEL_13;
    case 14:
LABEL_13:
      throwWrongTypeForParamId(a2, "string", "int");
      goto LABEL_14;
    case 15:
LABEL_14:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051F98, 15);
      if (v8)
      {
      }

      IntParamSpec::validateValue(v8, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "PrefiltererBuildHierInactiveComponentScore";
LABEL_26:

        throwParamSetSetFailed(v7, "int");
      }

      else
      {
        *(this + 34) = a3;
      }

      break;
    case 16:
      throwWrongTypeForParamId(16, "BOOL", "int");
      goto LABEL_35;
    case 17:
LABEL_35:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_36;
    case 18:
LABEL_36:
      throwWrongTypeForParamId(a2, "enum", "int");
      goto LABEL_37;
    case 19:
LABEL_37:
      throwWrongTypeForParamId(a2, "enum", "int");
      goto LABEL_38;
    default:
LABEL_38:

      throwWrongParamIdValue(a2, "int");
      return;
  }
}

void PrefiltererBuildParamSet::setDoubleParameter(PrefiltererBuildParamSet *this, int a2, double a3)
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
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F98, 3);
      if (ParamByParamId)
      {
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "PrefiltererBuildDurationScoreScale";
        goto LABEL_17;
      }

      *(this + 6) = a3;
      return;
    case 4:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051F98, 4);
      if (v9)
      {
      }

      DoubleParamSpec::validateValue(v9, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "PrefiltererBuildEnableGenoneScoreCacheThresh";
        goto LABEL_17;
      }

      *(this + 7) = a3;
      break;
    case 5:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051F98, 5);
      if (v8)
      {
      }

      DoubleParamSpec::validateValue(v8, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "PrefiltererBuildFmpeMinimumPosteriorProbability";
LABEL_17:

        throwParamSetSetFailed(v7, "double");
      }

      else
      {
        *(this + 8) = a3;
      }

      break;
    case 6:
      throwWrongTypeForParamId(6, "int", "double");
      goto LABEL_21;
    case 7:
LABEL_21:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_22;
    case 8:
LABEL_22:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_23;
    case 9:
LABEL_23:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_24;
    case 10:
LABEL_24:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_25;
    case 11:
LABEL_25:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_26;
    case 12:
LABEL_26:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_27;
    case 13:
LABEL_27:
      throwWrongTypeForParamId(a2, "string", "double");
      goto LABEL_28;
    case 14:
LABEL_28:
      throwWrongTypeForParamId(a2, "string", "double");
      goto LABEL_29;
    case 15:
LABEL_29:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_30;
    case 16:
LABEL_30:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_31;
    case 17:
LABEL_31:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_32;
    case 18:
LABEL_32:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_33;
    case 19:
LABEL_33:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_34;
    default:
LABEL_34:

      throwWrongParamIdValue(a2, "double");
      return;
  }
}

double PrefiltererBuildParamSet::setStringParameter(PrefiltererBuildParamSet *this, int a2, char *a3)
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
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(a2, "double", "string");
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
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_11;
    case 10:
LABEL_11:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_12;
    case 11:
LABEL_12:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_13;
    case 12:
LABEL_13:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_14;
    case 13:
LABEL_14:

      PrefiltererBuildParamSet::setParamSetPrefiltererBuildHierScorerBeamList(this, a3);
      return result;
    case 14:

      PrefiltererBuildParamSet::setParamSetPrefiltererBuildHierScorerCutoffRatioList(this, a3);
      return result;
    case 15:
      throwWrongTypeForParamId(15, "int", "string");
      goto LABEL_21;
    case 16:
LABEL_21:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_22;
    case 17:
LABEL_22:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_23;
    case 18:
LABEL_23:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_24;
    case 19:
LABEL_24:
      throwWrongTypeForParamId(a2, "enum", "string");
      break;
    default:
      break;
  }

  return throwWrongParamIdValue(a2, "string");
}

double PrefiltererBuildParamSet::setEnumParameter(PrefiltererBuildParamSet *this, int a2, int a3)
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
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_6;
    case 5:
LABEL_6:
      throwWrongTypeForParamId(a2, "double", "BOOL");
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
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051F98, 9);
      if (ParamByParamId)
      {
      }

      result = EnumParamSpec::validateValue(ParamByParamId, a3);
      if (*(this + 9))
      {
        v8 = "PrefiltererBuildLookaheadScoringType";
        goto LABEL_29;
      }

      *(this + 21) = a3;
      return result;
    case 10:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051F98, 10);
      if (v9)
      {
      }

      result = EnumParamSpec::validateValue(v9, a3);
      if (*(this + 9))
      {
        v8 = "PrefiltererBuildLookaheadThreadingType";
        goto LABEL_29;
      }

      *(this + 22) = a3;
      return result;
    case 11:
      v12 = ParamSpecMgr::getParamByParamId(qword_281051F98, 11);
      if (v12)
      {
      }

      result = EnumParamSpec::validateValue(v12, a3);
      if (*(this + 9))
      {
        v8 = "PrefiltererBuildThreadingType";
        goto LABEL_29;
      }

      *(this + 23) = a3;
      return result;
    case 12:
      throwWrongTypeForParamId(12, "BOOL", "BOOL");
      goto LABEL_20;
    case 13:
LABEL_20:
      throwWrongTypeForParamId(a2, "string", "BOOL");
      goto LABEL_21;
    case 14:
LABEL_21:
      throwWrongTypeForParamId(a2, "string", "BOOL");
      goto LABEL_22;
    case 15:
LABEL_22:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_23;
    case 16:
LABEL_23:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_24;
    case 17:
LABEL_24:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_25;
    case 18:
LABEL_25:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051F98, 18);
      if (v10)
      {
      }

      result = EnumParamSpec::validateValue(v10, a3);
      if (*(this + 9))
      {
        v8 = "PrefiltererBuildContextType";
        goto LABEL_29;
      }

      *(this + 36) = a3;
      break;
    case 19:
      v11 = ParamSpecMgr::getParamByParamId(qword_281051F98, 19);
      if (v11)
      {
      }

      result = EnumParamSpec::validateValue(v11, a3);
      if (*(this + 9))
      {
        v8 = "PrefiltererBuildWordBoundaryType";
LABEL_29:

        result = throwParamSetSetFailed(v8, "enum");
      }

      else
      {
        *(this + 37) = a3;
      }

      break;
    default:

      return throwWrongParamIdValue(a2, "enum");
  }

  return result;
}

void PrefiltererBuildParamSet::~PrefiltererBuildParamSet(PrefiltererBuildParamSet *this)
{
  PrefiltererBuildParamSet::~PrefiltererBuildParamSet(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287524C80;
  v2 = this + 104;
  DgnString::~DgnString(this + 120);
  DgnString::~DgnString(v2);
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);
}

void MrecInitModule_wordlist_word(void)
{
  if (!gParDebugShowWordListOnLoad)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugShowWordListOnLoad", &unk_26288C6A6, &unk_26288C6A6, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugShowWordListOnLoad = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugShowWordListOnLoad);
  }

  if (!gParDebugWordListAddDelete)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugWordListAddDelete", &unk_26288C6A6, &unk_26288C6A6, 0, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugWordListAddDelete = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordListAddDelete);
  }

  if (!gParDebugWordListSetAllPronsAsClient)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugWordListSetAllPronsAsClient", &unk_26288C6A6, &unk_26288C6A6, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugWordListSetAllPronsAsClient = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordListSetAllPronsAsClient);
  }

  if (!gParDebugWordListSetAsFactory)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugWordListSetAsFactory", &unk_26288C6A6, &unk_26288C6A6, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugWordListSetAsFactory = v7;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordListSetAsFactory);
  }

  if (!gParDebugWordListSetPron)
  {
    v8 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v8, "DebugWordListSetPron", &unk_26288C6A6, &unk_26288C6A6, 0, 0, 0);
    *v9 = &unk_287527EA0;
    gParDebugWordListSetPron = v9;
    v10 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v10, &gParDebugWordListSetPron);
  }
}

uint64_t WordIdCollSearchCmp(unsigned int *a1, CharInfo **a2, double a3)
{
  v5 = a2[1];
  v4 = a2[2];
  v6 = *a2;
  v7 = *(a2 + 26);
  v8 = *(a2 + 12);
  v9 = (*(v5 + 28) + *(*(v5 + 25) + 4 * *a1));
  if (v7 == 1)
  {
    return CollMgr::collPrefixcmpUns8(v4, v8, v9, v6, a3);
  }

  else
  {
    return CollMgr::collStrcmpUns8(v4, v8, v9, v6, a3);
  }
}

uint64_t WordIdCollSearchCmpFromWordId(unsigned int *a1, char *a2)
{
  v4 = *a2;
  v5 = *(a2 + 12);
  v14 = *(a2 + 8);
  v6 = v14;
  v7 = a2[26];
  v13 = (*(v14 + 224) + *(*(v14 + 200) + 4 * v4));
  v15 = v5;
  v16 = v7;
  result = WordIdCollSearchCmp(a1, &v13, *&v14);
  if (!result)
  {
    if (a2[26])
    {
      return 0;
    }

    else
    {
      v9 = *a1;
      v10 = *a2;
      if (*(a2 + 12) >= 0xFFFEu)
      {
        return *(*(v6 + 104) + v9) - *(*(v6 + 104) + v10);
      }

      v11 = *(v6 + 256);
      v12 = *(v11 + 4 * v9);
      LODWORD(v11) = *(v11 + 4 * v10);
      result = (v12 - v11);
      if (v12 == v11)
      {
        return *(*(v6 + 104) + v9) - *(*(v6 + 104) + v10);
      }
    }
  }

  return result;
}

void *TagBitsAndStrings::reInit(TagBitsAndStrings *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 1) = 0;
  }

  *(this + 2) = 0;
  result = *(this + 3);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 3) = 0;
  }

  *(this + 4) = 0;
  return result;
}

uint64_t TagBitsAndStrings::compact(TagBitsAndStrings *this)
{
  v2 = *(this + 1);
  v16 = 0;
  v17 = 0;
  v3 = *(this + 4);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 7) >> 3;
    v6 = v5 + 1;
    v7 = *(this + 1);
    do
    {
      v8 = *(v7 + 4 * v4);
      if (v8 != -1)
      {
        v9 = strlen((*(this + 3) + v8 + v5));
        v10 = v17;
        v11 = v6 + v17 + v9;
        if (HIDWORD(v17) < v11)
        {
          v18 = 0;
          HIDWORD(v17) = realloc_array(v16, &v18, v11, v17, v17, 1);
          v16 = v18;
        }

        LODWORD(v17) = v6 + v17 + v9;
        v12 = v6 + v9;
        if (v6 + v9)
        {
          v13 = v10;
          do
          {
            *(v16 + v13++) = *(*(this + 3) + v8++);
            --v12;
          }

          while (v12);
        }

        v7 = *(this + 1);
        *(v7 + 4 * v4) = v10;
        v3 = *(this + 4);
      }

      ++v4;
    }

    while (v4 < v3);
    v14 = v17;
  }

  else
  {
    v14 = 0;
  }

  DgnPrimArray<unsigned char>::copyArraySlice(this + 3, &v16, 0, v14);
  DgnPrimArray<unsigned char>::compact(this + 3);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v16);
}

void sub_262733754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

size_t TagBitsAndStrings::setTagBits(TagBitsAndStrings *this, unsigned int a2, const BitArray *a3)
{
  result = TagBitsAndStrings::createIndex(this, a2, 0);
  v6 = *(this + 1);
  v7 = v6 + 7;
  v8 = (v6 + 7) >> 3;
  if ((v6 + 7) >= 8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      *(*(this + 3) + (result + v10)) = *(*a3 + (v10 & 0xFFFFFFFC)) >> (v9 & 0x18);
      ++v10;
      v9 += 8;
    }

    while (v8 != v10);
    v6 = *(this + 1);
  }

  v11 = (v7 & 0xFFFFFFF8) - v6;
  if (v11)
  {
    *(*(this + 3) + (result + v8 - 1)) &= ~(~(-1 << v11) << (8 - v11));
  }

  return result;
}

size_t TagBitsAndStrings::createIndex(TagBitsAndStrings *this, unsigned int a2, unsigned int a3)
{
  v6 = *(this + 1) + 7;
  v7 = v6 >> 3;
  v8 = *(this + 4);
  if (v8 <= a2 || (v9 = *(*(this + 1) + 4 * a2), v9 == -1) || (v10 = strlen((*(this + 3) + (v9 + v7))), v10 < a3))
  {
    v11 = a3 + v7 + 1;
    v9 = *(this + 8);
    if (*(this + 9) < (v9 + v11))
    {
      v19 = 0;
      *(this + 9) = realloc_array(*(this + 3), &v19, (v9 + v11), v9, v9, 1);
      *(this + 3) = v19;
      v8 = *(this + 4);
    }

    *(this + 8) = v9 + v11;
    if (v8 <= a2)
    {
      do
      {
        if (v8 == *(this + 5))
        {
          DgnPrimArray<unsigned int>::reallocElts(this + 8, 1, 1);
          v8 = *(this + 4);
        }

        v12 = *(this + 1);
        *(v12 + 4 * v8) = -1;
        v8 = *(this + 4) + 1;
        *(this + 4) = v8;
      }

      while (v8 <= a2);
    }

    else
    {
      v12 = *(this + 1);
      if (*(v12 + 4 * a2) != -1)
      {
        if (v6 >= 8)
        {
          v14 = 0;
          v15 = v9;
          do
          {
            *(*(this + 3) + v15++) = *(*(this + 3) + (v14++ + *(*(this + 1) + 4 * a2)));
          }

          while (v7 != v14);
          v12 = *(this + 1);
        }

        else
        {
          LODWORD(v7) = 0;
        }

        v13 = (v12 + 4 * a2);
        goto LABEL_20;
      }
    }

    LODWORD(v7) = 0;
    v13 = (v12 + 4 * a2);
LABEL_20:
    *v13 = v9;
    if (v7 < v11)
    {
      v16 = v7 + v9;
      v17 = v11 - v7;
      do
      {
        *(*(this + 3) + v16++) = 0;
        --v17;
      }

      while (v17);
    }

    return v9;
  }

  if (v10 > a3)
  {
    *this = 1;
  }

  return v9;
}

void TagBitsAndStrings::getTagBits(TagBitsAndStrings *this, unsigned int a2, BitArray *a3)
{
  v5 = *(*(this + 1) + 4 * a2);
  v6 = *(this + 1);
  BitArray::setSizeNoGrow(a3, 0);
  BitArray::setSize(a3, v6);
  if (v6 + 7 >= 8)
  {
    v7 = 0;
    v8 = 0;
    v9 = *(this + 3);
    v10 = *a3;
    do
    {
      *(v10 + (v8 & 0xFFFFFFFC)) |= *(v9 + (v5 + v8)) << (v7 & 0x18);
      ++v8;
      v7 += 8;
    }

    while ((v6 + 7) >> 3 != v8);
  }
}

size_t TagBitsAndStrings::setTagString(TagBitsAndStrings *this, unsigned int a2, const char *__s)
{
  v3 = __s;
  v6 = strlen(__s);
  result = TagBitsAndStrings::createIndex(this, a2, v6);
  if (v6 + 1 > 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = result + ((*(this + 1) + 7) >> 3);
  do
  {
    v10 = *v3++;
    *(*(this + 3) + v9++) = v10;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t writeObject(DgnStream *a1, const TagBitsAndStrings *a2, unsigned int *a3)
{
  v7 = *(a2 + 1);
  writeObject(a1, &v7, a3);
  writeObject<unsigned int>(a1, a2 + 8, a3);
  return writeObject<unsigned char>(a1, a2 + 24, a3);
}

void readObject(DgnStream *a1, TagBitsAndStrings *a2, unsigned int *a3)
{
  v18 = 0;
  readObject(a1, &v18, a3);
  *(a2 + 1) = v18;
  if (*(a1 + 32) != 1)
  {
    readObject<unsigned int>(a1, a2 + 8, a3);
    goto LABEL_27;
  }

  HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::HashNCHV(v15, 0, 1);
  readObject<unsigned int,unsigned int,WordIdScope,unsigned int>(a1, v15, a3);
  if (!v16)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v6 = *v17;
  if (*v17)
  {
LABEL_10:
    LODWORD(v7) = 0;
    goto LABEL_11;
  }

  v7 = 0;
  do
  {
    if (v16 - 1 == v7)
    {
      goto LABEL_26;
    }

    v6 = v17[++v7];
  }

  while (!v6);
LABEL_11:
  if (v7 >= v16)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v8 = *(a2 + 4);
    v9 = *(v6 + 2);
    if (v8 <= v9)
    {
      do
      {
        if (v8 == *(a2 + 5))
        {
          DgnPrimArray<unsigned int>::reallocElts(a2 + 8, 1, 1);
          v8 = *(a2 + 4);
        }

        v10 = *(a2 + 1);
        *(v10 + 4 * v8) = -1;
        v8 = *(a2 + 4) + 1;
        *(a2 + 4) = v8;
        v9 = *(v6 + 2);
      }

      while (v8 <= v9);
    }

    else
    {
      v10 = *(a2 + 1);
    }

    *(v10 + 4 * v9) = *(v6 + 3);
    v11 = *v6;
    if (*v6)
    {
      goto LABEL_25;
    }

    v7 = (v7 + 1);
    if (v7 >= v16)
    {
      v11 = v6;
      goto LABEL_25;
    }

    v11 = v17[v7];
    if (!v11)
    {
      break;
    }

LABEL_25:
    v6 = v11;
    if (v7 >= v16)
    {
      goto LABEL_26;
    }
  }

  v12 = &v17[v7 + 1];
  v13 = ~v7 + v16;
  while (v13)
  {
    v14 = *v12++;
    v11 = v14;
    LODWORD(v7) = v7 + 1;
    --v13;
    if (v14)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::~HashNCHV(v15);
LABEL_27:
  readObject<unsigned char>(a1, a2 + 24, a3);
}

void sub_262733D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::~HashNCHV(va);
  _Unwind_Resume(a1);
}

uint64_t readObject<unsigned int,unsigned int,WordIdScope,unsigned int>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v12 = 0;
  readObject(a1, &v12, a3);
  v11 = 0;
  readObject(a1, &v11, a3);
  if (*(a1 + 34) == 1)
  {
    v10 = 0;
    readObject(a1, &v10, a3);
  }

  v10 = 0;
  readObject(a1, &v10, a3);
  result = HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::reInit(a2, v11);
  *(a2 + 20) = 0;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v9 = 0;
      readObject(a1, &v9, a3);
      v8 = 0;
      readObject(a1, &v8, a3);
      result = HashNCHV<unsigned int,unsigned int,WordIdScope,unsigned int>::add(a2, &v9, &v8);
    }
  }

  *(a2 + 20) = v10 != 0;
  return result;
}

{
  v12 = 0;
  readObject(a1, &v12, a3);
  v11 = 0;
  readObject(a1, &v11, a3);
  if (*(a1 + 34) == 1)
  {
    v10 = 0;
    readObject(a1, &v10, a3);
  }

  v10 = 0;
  readObject(a1, &v10, a3);
  result = Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::reInit(a2, v11);
  *(a2 + 20) = 0;
  if (v12)
  {
    for (i = 0; i < v12; ++i)
    {
      v9 = 0;
      readObject(a1, &v9, a3);
      v8 = 0;
      readObject(a1, &v8, a3);
      result = Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::add(a2, &v9, &v8);
    }
  }

  *(a2 + 20) = v10 != 0;
  return result;
}

void WordList::WordList(WordList *this, CollMgr *a2, const PronCollMgr *a3, const PhnMgr *a4)
{
  *(this + 2) = 0u;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  DgnString::DgnString((this + 88));
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 272) = 0;
  *(this + 274) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 42) = 0;
  *(this + 43) = 0;
  MrecTime::MrecTime((this + 352));
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  DgnString::DgnString((this + 464));
  DgnString::DgnString((this + 480));
  DgnString::DgnString((this + 496));
  *(this + 512) = 0;
  *(this + 137) = 0;
  *(this + 516) = 0u;
  *(this + 532) = 0u;
  DgnString::DgnString((this + 560));
  DgnString::DgnString((this + 576));
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  DgnString::DgnString((this + 624));
  DgnString::DgnString((this + 640));
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  v8 = MemChunkAlloc(0x110uLL, 0);
  EnvMgr::EnvMgr(v8, 2);
  *(this + 3) = v9;
  *(this + 16) = 0;
  *(this + 54) = 0;
  *(this + 57) = 0;
  *(this + 138) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 46) = this;
  *(this + 47) = 0;
  *(this + 104) = 0;
  *(this + 420) = 0;
  v10 = *this;
  *(this + 41) = WordIdCollSearchCmpFromWordId;
  *(this + 42) = this;
  *(this + 43) = v10;
  *(this + 272) = 1;
  *(this + 274) = 131070;
}

void sub_262734028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  BitArray::~BitArray((v16 + 624));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 608);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 592);
  BitArray::~BitArray((v16 + 576));
  BitArray::~BitArray((v16 + 560));
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 536);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 520);
  DgnString::~DgnString(v16 + 496);
  DgnString::~DgnString(v16 + 480);
  DgnString::~DgnString(v16 + 464);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 440);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v16 + 400);
  DgnString::~DgnString(v18 + 248);
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(v21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  BitArray::~BitArray((v17 + 56));
  DgnPrimArray<unsigned int>::~DgnPrimArray(a16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  _Unwind_Resume(a1);
}

void WordList::~WordList(EnvMgr **this)
{
  DgnDelete<EnvMgr>(this[3]);
  this[3] = 0;
  BitArray::~BitArray((this + 80));
  BitArray::~BitArray((this + 78));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 76));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 74));
  BitArray::~BitArray((this + 72));
  BitArray::~BitArray((this + 70));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 67));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 65));
  DgnString::~DgnString((this + 62));
  DgnString::~DgnString((this + 60));
  DgnString::~DgnString((this + 58));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 55));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 53));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 50));
  DgnString::~DgnString((this + 44));
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray((this + 34));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 32));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 30));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 28));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 25));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 23));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 21));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 19));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 17));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 15));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 13));
  BitArray::~BitArray((this + 11));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 9));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 4));
}

uLong WordList::computeWordIdNameChecksum(WordList *this, unsigned int a2)
{
  v10 = a2;
  v4 = computeCRC32(0, 0, 0);
  v5 = *(*(this + 25) + 4 * a2);
  v6 = *(this + 28);
  v7 = strlen((v6 + v5));
  v8 = computeCRC32(v4, (v6 + v5), v7);
  return computeCRC32(v8, &v10, 1u);
}

uLong WordList::computeWordIdPronChecksum(WordList *this, unsigned int a2)
{
  v7 = a2;
  LODWORD(v4) = computeCRC32(0, 0, 0);
  v5 = *(this + 4);
  if (*(v5 + 2 * a2))
  {
    v4 = computeCRC32(v4, (*(this + 9) + 2 * *(*(this + 6) + 4 * a2)), *(v5 + 2 * a2));
    if (*(this + 98) >= 2u)
    {
      v4 = computeCRC32(v4, (*(this + 53) + a2), 1u);
    }

    if (*(this + 99) >= 2u)
    {
      LODWORD(v4) = computeCRC32(v4, (*(this + 55) + a2), 1u);
    }
  }

  return computeCRC32(v4, &v7, 1u);
}

uLong WordList::computeWordChecksums(uLong this)
{
  v1 = this;
  *(this + 376) = 0;
  if (*(this + 272) == 1 && *(this + 274) == -2)
  {
    v2 = this + 280;
  }

  else
  {
    v2 = *(*(this + 296) + 524272);
  }

  if (*(v2 + 8))
  {
    v3 = 0;
    do
    {
      this = WordList::computeWordIdNameChecksum(v1, *(*v2 + 4 * v3));
      *(v1 + 94) ^= this;
      ++v3;
      v4 = *(v2 + 8);
    }

    while (v3 < v4);
    *(v1 + 95) = 0;
    if (v4)
    {
      v5 = 0;
      do
      {
        this = WordList::computeWordIdPronChecksum(v1, *(*v2 + 4 * v5));
        *(v1 + 95) ^= this;
        ++v5;
      }

      while (v5 < *(v2 + 8));
    }
  }

  else
  {
    *(this + 380) = 0;
  }

  return this;
}

void WordList::loadTwl(WordList *this, FileSpec **a2)
{
  DgnTextFileParser::DgnTextFileParser(v219);
  DgnTextFileParser::openDgnTextFileParser(v219, a2, 98, 1);
  DgnTextFileParser::verifyMatchingFileType(v219, "TextWordList");
  v218[0] = 0;
  v218[1] = 0;
  DgnTextFile::legalDgnTextFileVersions(v219, sTWL_Versions, v218);
  DgnTextFileParser::verifyFileVersionInRange(v219, v218);
  FileVersion = DgnTextFile::getFileVersion(v219);
  *v217 = 0;
  v216 = 0;
  v214 = 0;
  v215 = 0;
  v212 = 0;
  v213 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v219, "NumberOfWords", &v217[1], 1, 0, 0xF42400u);
  DgnTextFile::getHeaderFieldUnsigned(v219, "NumberOfPronlessWords", v217, 1, 0, 0xF42400u);
  DgnTextFile::getHeaderFieldUnsigned(v219, "NumberOfPronIds", &v216, 1, 0, 0xF42400u);
  v211 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v219, "NumberOfFreePronIds", &v211, 1, 0, 0xF42400u);
  v168 = (v211 + v216);
  if (v216 > 0xFFFFF2 || v211 > 0xFFFFF2 || v168 > 0xFFFFF2 || v217[1] > v216 || v217[0] > v217[1])
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1050, "word/wordlist", 24, "%u %u %u %u", v216, v217[1], v217[0], v168);
  }

  v210 = 0;
  *v208 = 0;
  *v209 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v219, "NumberOfPronPredecessorSeedCategories", &v210, 1, 1u, 0xFAu);
  *(this + 98) = v210;
  DgnTextFile::getHeaderFieldUnsigned(v219, "NumberOfPronSuccessorSeedCategories", &v209[1], 1, 1u, 0xFAu);
  *(this + 99) = v209[1];
  DgnTextFile::getHeaderFieldUnsigned(v219, "StartOfUtterancePredecessorSeedCategory", v208, 1, 0, v210);
  *(this + 416) = v208[0];
  DgnTextFile::getHeaderFieldUnsigned(v219, "EndOfUtteranceSuccessorSeedCategory", v208, 1, 0, v209[1]);
  *(this + 417) = v208[0];
  DgnTextFile::getHeaderFieldUnsigned(v219, "RootDeterminesPronPredecessorSeedCategory", v208, 1, 0, 1u);
  *(this + 421) = v208[0] == 1;
  DgnTextFile::getHeaderFieldUnsigned(v219, "RootDeterminesPronSuccessorSeedCategory", v208, 1, 0, 1u);
  *(this + 422) = v208[0] == 1;
  DgnTextFile::getHeaderFieldUnsigned(v219, "DefaultClientPronPredecessorSeedCategory", v209, 1, 0, v210 - 1);
  *(this + 419) = v209[0];
  DgnTextFile::getHeaderFieldUnsigned(v219, "DefaultClientPronSuccessorSeedCategory", &v208[1], 1, 0, v209[1] - 1);
  *(this + 420) = v208[1];
  v164 = FileVersion;
  v165 = HIDWORD(FileVersion);
  if (FileVersion != 19)
  {
    if (FileVersion != 20 || v165 - 18 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_13;
    }

LABEL_12:
    v206[0] = 0;
    DgnTextFile::getHeaderFieldInteger(v219, "WordTagsVersion", v206, 1, -16000000, 16000000);
    v5 = v206[0];
    *(this + 114) = v206[0];
    *(this + 115) = v5;
    goto LABEL_14;
  }

  if (HIDWORD(FileVersion) == 15)
  {
    goto LABEL_12;
  }

LABEL_13:
  DgnTextFile::getHeaderFieldInteger(v219, "RequiredWordTagsVersion", this + 114, 1, -16000000, 16000000);
  DgnTextFile::getHeaderFieldInteger(v219, "OptionalWordTagsVersion", this + 115, 1, -16000000, 16000000);
LABEL_14:
  DgnTextFile::getHeaderField(v219, "RequiredTags", (this + 464), 1);
  splitTagsString(this + 116, &v214);
  *(this + 138) = v215;
  DgnTextFile::getHeaderField(v219, "OptionalTags", (this + 480), 1);
  splitTagsString(this + 120, &v212);
  if (v213)
  {
    *(this + 129) = v213;
  }

  DgnTextFile::getHeaderField(v219, "NewWordTag", (this + 496), 1);
  v6 = *(this + 138);
  if ((v6 != 0) == *(this + 126) < 2u)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1142, "word/wordlist", 58, "%s", &unk_26288C6A6);
    v6 = *(this + 138);
  }

  if (v6)
  {
    tagStringToTagBits(this + 124, &v214, (this + 560));
  }

  DgnString::DgnString(v206);
  DgnTextFile::getHeaderField(v219, "AllowedCollations", v206, 1);
  DgnTextFileParser::verifyNoUnknownHeaderFields(v219);
  WordList::setSizeForWordListLoad(this, v168, *(this + 98), *(this + 99));
  v204 = 0;
  v205 = 0;
  DgnTextFile::getLineFieldNames(v219, &v204);
  v203[0] = 0;
  v203[1] = 0;
  DgnTextFile::getLineFieldFormats(v219, v203);
  if (!v205)
  {
    v175 = -1;
    v176 = -1;
    v173 = -1;
    v174 = -1;
    v171 = -1;
    v172 = -1;
LABEL_58:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1237, "word/wordlist", 15, "%.500s", "Type");
    v177 = -1;
    goto LABEL_59;
  }

  v7 = 0;
  v8 = 0;
  v176 = -1;
  v177 = -1;
  v174 = -1;
  v175 = -1;
  v172 = -1;
  v173 = -1;
  v171 = -1;
  do
  {
    if (*(v204 + v7 + 8))
    {
      v9 = *(v204 + v7);
    }

    else
    {
      v9 = &unk_26288C6A6;
    }

    if (!strcmp(v9, "Type"))
    {
      if (*(v203[0] + 4 * v8))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1182, "word/wordlist", 59, "%.500s %.500s", v9, "String");
      }

      v177 = v8;
    }

    else if (!strcmp(v9, "WordName"))
    {
      if (*(v203[0] + 4 * v8))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1190, "word/wordlist", 59, "%.500s %.500s", v9, "String");
      }

      v176 = v8;
    }

    else if (!strcmp(v9, "UnsValue1"))
    {
      if (*(v203[0] + 4 * v8) != 3)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1198, "word/wordlist", 59, "%.500s %.500s", v9, "Unsigned");
      }

      v175 = v8;
    }

    else if (!strcmp(v9, "UnsValue2"))
    {
      if (*(v203[0] + 4 * v8) != 3)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1206, "word/wordlist", 59, "%.500s %.500s", v9, "Unsigned");
      }

      v174 = v8;
    }

    else if (!strcmp(v9, "UnsValue3"))
    {
      if (*(v203[0] + 4 * v8) != 3)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1214, "word/wordlist", 59, "%.500s %.500s", v9, "Unsigned");
      }

      v173 = v8;
    }

    else if (!strcmp(v9, "StrValue1"))
    {
      if (*(v203[0] + 4 * v8))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1222, "word/wordlist", 59, "%.500s %.500s", v9, "String");
      }

      v172 = v8;
    }

    else if (!strcmp(v9, "StrValue2"))
    {
      if (*(v203[0] + 4 * v8))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1230, "word/wordlist", 59, "%.500s %.500s", v9, "String");
      }

      v171 = v8;
    }

    else
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1235, "word/wordlist", 12, "%.500s %u %u", v9, v164, v165);
    }

    ++v8;
    v7 += 16;
  }

  while (v8 < v205);
  if (v177 == -1)
  {
    goto LABEL_58;
  }

LABEL_59:
  if (v176 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1238, "word/wordlist", 15, "%.500s", "WordName");
  }

  if (v175 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1239, "word/wordlist", 15, "%.500s", "UnsValue1");
  }

  if (v174 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1240, "word/wordlist", 15, "%.500s", "UnsValue2");
  }

  if (v173 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1241, "word/wordlist", 15, "%.500s", "UnsValue3");
  }

  if (v172 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1242, "word/wordlist", 15, "%.500s", "StrValue1");
  }

  if (v171 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1243, "word/wordlist", 15, "%.500s", "StrValue2");
  }

  v178 = this;
  if (!DgnTextFileParser::parseNextLine(v219))
  {
    goto LABEL_300;
  }

  LineFieldString = DgnTextFileParser::getLineFieldString(v219, v177);
  if ((DgnTextFileParser::atEof(v219) & 1) != 0 || strcmp(LineFieldString, "SeedTable"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1251, "word/wordlist", 43, "%u %.500s", v221, "SeedTable");
  }

  v11 = this;
  v12 = *(this + 98);
  v13 = *(v11 + 103);
  if (v12 > v13)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v178 + 400, v12 - v13, 0);
  }

  v14 = *(v178 + 102);
  if (v14 <= v12)
  {
    v15 = v178;
    if (v14 < v12)
    {
      v18 = v12 - v14;
      v19 = 16 * v14;
      do
      {
        v20 = (*(v178 + 50) + v19);
        *v20 = 0;
        v20[1] = 0;
        v19 += 16;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v15 = v178;
    if (v14 > v12)
    {
      v16 = v14;
      v17 = 16 * v14 - 16;
      do
      {
        --v16;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(v178 + 50) + v17);
        v17 -= 16;
      }

      while (v16 > v12);
    }
  }

  *(v15 + 102) = v12;
  v21 = *(v15 + 98);
  if (!v21)
  {
    goto LABEL_113;
  }

  v22 = 0;
  for (i = 0; i < v21; ++i)
  {
    v24 = *(v178 + 50) + v22;
    v25 = *(v178 + 99);
    if (*(v24 + 12) < v25)
    {
      v201 = 0;
      *(v24 + 12) = realloc_array(*v24, &v201, v25, *(v24 + 8), *(v24 + 8), 1);
      *v24 = v201;
      v21 = *(v178 + 98);
    }

    *(v24 + 8) = v25;
    v22 += 16;
  }

  if (!v21)
  {
LABEL_113:
    v27 = 0;
LABEL_114:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1289, "word/wordlist", 60, "%s", &errStr_word_wordlist_E_SEED_TABLE_NOSEED);
    goto LABEL_115;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = *(v178 + 99);
  do
  {
    if (v29)
    {
      for (j = 0; j < v29; ++j)
      {
        v31 = DgnTextFileParser::getLineFieldString(v219, v177);
        if (strcmp(v31, "SeedTable"))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1266, "word/wordlist", 61, "%s", &errStr_word_wordlist_E_INCOMPLETE_SEEDTABLE);
        }

        DgnString::DgnString(&v201);
        DgnString::DgnString(&v199);
        DgnString::DgnString(&v197);
        DgnString::DgnString(&v195);
        v32 = DgnTextFileParser::getLineFieldString(v219, v177);
        DgnString::operator=(&v201, v32);
        v33 = DgnTextFileParser::getLineFieldString(v219, v176);
        DgnString::operator=(&v199, v33);
        LineFieldUnsigned = DgnTextFileParser::getLineFieldUnsigned(v219, v175);
        v35 = DgnTextFileParser::getLineFieldUnsigned(v219, v174);
        v36 = DgnTextFileParser::getLineFieldUnsigned(v219, v173);
        v37 = DgnTextFileParser::getLineFieldString(v219, v172);
        DgnString::operator=(&v197, v37);
        v38 = DgnTextFileParser::getLineFieldString(v219, v171);
        DgnString::operator=(&v195, v38);
        v39 = v221;
        if (v200 >= 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1270, "word/wordlist", 44, "%u", v221);
        }

        if (LineFieldUnsigned != v28)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1272, "word/wordlist", 62, "%u", v39);
        }

        if (j != v35)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1274, "word/wordlist", 63, "%u", v39);
        }

        if (v36 >= 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1276, "word/wordlist", 48, "%u", v39);
        }

        if (v198 >= 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1278, "word/wordlist", 49, "%u", v39);
        }

        if (v196 >= 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1280, "word/wordlist", 50, "%u", v39);
        }

        *(*(*(v178 + 50) + 16 * LineFieldUnsigned) + v35) = v36 == 1;
        DgnTextFileParser::parseNextLine(v219);
        v27 |= v36 == 0;
        v26 |= v36 == 1;
        DgnString::~DgnString(&v195);
        DgnString::~DgnString(&v197);
        DgnString::~DgnString(&v199);
        DgnString::~DgnString(&v201);
        v29 = *(v178 + 99);
      }

      v21 = *(v178 + 98);
    }

    ++v28;
  }

  while (v28 < v21);
  if ((v26 & 1) == 0)
  {
    goto LABEL_114;
  }

LABEL_115:
  *(v178 + 418) = v27 & 1;
  DgnString::DgnString(&v201);
  if ((DgnTextFileParser::atEof(v219) & 1) == 0)
  {
    v40 = 0;
    v167 = 0;
    v166 = 0;
    v169 = 0xFFFFFF;
    v41 = "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp";
    v42 = 1;
    while (1)
    {
      DgnString::DgnString(&v199);
      DgnString::DgnString(&v197);
      DgnString::DgnString(&v195);
      DgnString::DgnString(&v193);
      v43 = DgnTextFileParser::getLineFieldString(v219, v177);
      DgnString::operator=(&v199, v43);
      v44 = DgnTextFileParser::getLineFieldString(v219, v176);
      DgnString::operator=(&v197, v44);
      v45 = DgnTextFileParser::getLineFieldUnsigned(v219, v175);
      v46 = DgnTextFileParser::getLineFieldUnsigned(v219, v174);
      v47 = DgnTextFileParser::getLineFieldUnsigned(v219, v173);
      v48 = DgnTextFileParser::getLineFieldString(v219, v172);
      DgnString::operator=(&v195, v48);
      v49 = DgnTextFileParser::getLineFieldString(v219, v171);
      DgnString::operator=(&v193, v49);
      v50 = v221;
      v51 = *(v178 + 98);
      if (v46 >= v51)
      {
        errThrowInternal(0, v41, 1310, "word/wordlist", 64, "%u %u", v46, v51);
      }

      v52 = *(v178 + 99);
      if (v47 >= v52)
      {
        errThrowInternal(0, v41, 1313, "word/wordlist", 65, "%u %u", v46, v52);
      }

      v53 = v196;
      v54 = v195;
      v55 = &unk_26288C6A6;
      if (v196)
      {
        v55 = v195;
      }

      v56 = *v55;
      if (v56 != 85 && v56 != 70 || v55[1])
      {
        errThrowInternal(0, v41, 1320, "word/wordlist", 66, "%u %.500s", v50, v55);
        v53 = v196;
        v54 = v195;
      }

      v57 = v53 == 0;
      v58 = &unk_26288C6A6;
      if (!v57)
      {
        v58 = v54;
      }

      v170 = *v58 == 70 && v58[1] == 0;
      if (v198 <= 1)
      {
        errThrowInternal(0, v41, 1331, "word/wordlist", 55, "%d", v50);
      }

      if (v45 >= v168)
      {
        v59 = &unk_26288C6A6;
        if (v198)
        {
          v59 = v197;
        }

        errThrowInternal(0, v41, 1336, "word/wordlist", 5, "%d %.500s %u", v50, v59, v45);
      }

      if (*(v178 + 97) > v45 && *(*(v178 + 13) + v45))
      {
        v60 = &unk_26288C6A6;
        if (v198)
        {
          v60 = v197;
        }

        errThrowInternal(0, v41, 1341, "word/wordlist", 25, "%d %.500s %u", v50, v60, v45);
      }

      DgnString::DgnString(&v191, &v193);
      v61 = v41;
      v189 = 0;
      v190 = 0;
      if (v192)
      {
        v62 = v191;
      }

      else
      {
        v62 = &unk_26288C6A6;
      }

      WordList::strToPhonemes(v178, v62, &v189);
      WordList::checkNewTwlWordBoundaryPhonemes(v178, &v189, v50, &v197, &v191);
      if (v190 >= 0x4000)
      {
        v63 = &unk_26288C6A6;
        if (v198)
        {
          v63 = v197;
        }

        errThrowInternal(0, v41, 1355, "word/wordlist", 7, "%d %.500s %d", v50, v63, v190);
      }

      if (v198)
      {
        v64 = v197;
      }

      else
      {
        v64 = &unk_26288C6A6;
      }

      if (v202)
      {
        v65 = v201;
      }

      else
      {
        v65 = &unk_26288C6A6;
      }

      if (!strcmp(v64, v65))
      {
        if (++v42 >= 0xFF)
        {
          errThrowInternal(0, v61, 1379, "word/wordlist", 32, "%d %.500s %d", v50, v64, 254);
        }

        v66 = v190;
        if (!v166 && v190 != 0)
        {
          v166 = 0;
          v41 = v61;
          goto LABEL_171;
        }

        v68 = &unk_26288C6A6;
        if (v198)
        {
          v68 = v197;
        }

        errThrowInternal(0, v61, 1382, "word/wordlist", 17, "%d %.500s", v50, v68);
        v66 = v190;
      }

      else
      {
        DgnString::operator=(&v201, &v197);
        v66 = v190;
        v166 = v190 == 0;
        if (v190)
        {
          v67 = v167;
        }

        else
        {
          v67 = v167 + 1;
        }

        v167 = v67;
        v42 = 1;
        v169 = v45;
      }

      v41 = v61;
      if (!v66)
      {
        goto LABEL_177;
      }

LABEL_171:
      if (*v189)
      {
        v69 = v66 - 1;
        if (!v189[v69] && v69)
        {
LABEL_176:
          errThrowInternal(0, v41, 1394, "word/wordlist", 37, "%u", v45);
        }
      }

      else if (v66 != 1)
      {
        goto LABEL_176;
      }

LABEL_177:
      if (v42 == 1)
      {
        v70 = -1;
        v71 = v169;
      }

      else
      {
        v71 = v169;
        v70 = *(*(v178 + 25) + 4 * v169);
      }

      if (v198)
      {
        v72 = v197;
      }

      else
      {
        v72 = &unk_26288C6A6;
      }

      v73 = WordList::addWordInternal(v178, 0, v45, v71, v70, v72, v42, &v189, 0, 0);
      WordList::setPronPredecessorSeedCategory(v178, v73, v46);
      WordList::setPronSuccessorSeedCategory(v178, v73, v47);
      v74 = 1 << v73;
      v75 = *(v178 + 80);
      if (v170)
      {
        v76 = *(v75 + 4 * (v73 >> 5)) | v74;
      }

      else
      {
        v76 = *(v75 + 4 * (v73 >> 5)) & ~v74;
      }

      *(v75 + 4 * (v73 >> 5)) = v76;
      if (DgnTextFileParser::parseNextLine(v219))
      {
        v77 = DgnTextFileParser::getLineFieldString(v219, v177);
        DgnString::DgnString(&v187, v77);
        if (v188)
        {
          v78 = v187;
        }

        else
        {
          v78 = &unk_26288C6A6;
        }

        v79 = strcmp(v78, "Pron") != 0;
        DgnString::~DgnString(&v187);
      }

      else
      {
        v79 = 1;
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v189);
      DgnString::~DgnString(&v191);
      DgnString::~DgnString(&v193);
      DgnString::~DgnString(&v195);
      DgnString::~DgnString(&v197);
      DgnString::~DgnString(&v199);
      ++v40;
      if (v79)
      {
        goto LABEL_193;
      }
    }
  }

  v167 = 0;
  v40 = 0;
LABEL_193:
  v80 = v178;
  if (v40 != v216)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1429, "word/wordlist", 1, "%d %d", v216, v40);
  }

  if (v164 == 19)
  {
    if (v165 == 15)
    {
      goto LABEL_202;
    }
  }

  else if (v164 == 20 && v165 == 16)
  {
    goto LABEL_202;
  }

  if (v167 != v217[0])
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1434, "word/wordlist", 29, "%u %u", v217[0], v167);
  }

LABEL_202:
  WordList::setupWordIdsForWordListLoad(v178);
  BitArray::BitArray(&v199, *(v178 + 97));
  DgnString::DgnString(&v197);
  if (DgnTextFileParser::atEof(v219))
  {
    goto LABEL_243;
  }

  while (1)
  {
    DgnString::DgnString(&v195);
    DgnString::DgnString(&v193);
    DgnString::DgnString(&v191);
    DgnString::DgnString(&v189);
    v81 = DgnTextFileParser::getLineFieldString(v219, v177);
    DgnString::operator=(&v195, v81);
    v82 = DgnTextFileParser::getLineFieldString(v219, v176);
    DgnString::operator=(&v193, v82);
    v83 = DgnTextFileParser::getLineFieldUnsigned(v219, v175);
    v84 = DgnTextFileParser::getLineFieldUnsigned(v219, v174);
    v85 = DgnTextFileParser::getLineFieldUnsigned(v219, v173);
    v86 = DgnTextFileParser::getLineFieldString(v219, v172);
    DgnString::operator=(&v191, v86);
    v87 = DgnTextFileParser::getLineFieldString(v219, v171);
    DgnString::operator=(&v189, v87);
    if (v84)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1443, "word/wordlist", 46, "%u", v221);
    }

    if (v85)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1445, "word/wordlist", 47, "%u", v221);
    }

    v88 = v221;
    if (v194 > 1 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1449, "word/wordlist", 55, "%d", v221), v194))
    {
      v89 = v193;
    }

    else
    {
      v89 = &unk_26288C6A6;
    }

    v90 = WordList::lookupWord(v178, v89);
    if (v90 == 0xFFFFFF)
    {
      v91 = &unk_26288C6A6;
      if (v194)
      {
        v91 = v193;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1452, "word/wordlist", 52, "%d %.500s", v88, v91);
    }

    v92 = v199;
    v93 = v90 >> 5;
    v94 = *(v199 + 4 * (v90 >> 5));
    v95 = 1 << v90;
    if ((v94 & (1 << v90)) != 0)
    {
      v96 = &unk_26288C6A6;
      if (v194)
      {
        v96 = v193;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1454, "word/wordlist", 53, "%d %.500s %.500s", v88, "ReqTags", v96);
      v92 = v199;
      v94 = *(v199 + 4 * v93);
    }

    *(v92 + 4 * v93) = v94 | v95;
    if (v83)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1458, "word/wordlist", 45, "%u", v88);
    }

    v97 = &unk_26288C6A6;
    if (v192)
    {
      v97 = v191;
    }

    v98 = *v97;
    if (v98 != 85)
    {
      if (v98 == 70 && !v97[1])
      {
        v99 = *(v178 + 78);
        v100 = *(v99 + 4 * v93) | v95;
        goto LABEL_229;
      }

LABEL_227:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1467, "word/wordlist", 67, "%u %.500s", v88, v97);
      goto LABEL_228;
    }

    if (v97[1])
    {
      goto LABEL_227;
    }

LABEL_228:
    v99 = *(v178 + 78);
    v100 = *(v99 + 4 * v93) & ~v95;
LABEL_229:
    *(v99 + 4 * v93) = v100;
    DgnString::DgnString(&v187, &v189);
    v101 = *(v178 + 138);
    if ((v101 != 0) == v188 < 2)
    {
      v102 = &unk_26288C6A6;
      if (v194)
      {
        v102 = v193;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1474, "word/wordlist", 21, "%d %.500s", v88, v102);
      v101 = *(v178 + 138);
    }

    v80 = v178;
    if (v101)
    {
      tagStringToTagBits(&v187, &v214, &v197);
      BitArray::setBitsInRange(v178 + 72, &v197, *(v178 + 138) * v90, *(v178 + 138) * v90 + *(v178 + 138));
    }

    if (!DgnTextFileParser::parseNextLine(v219))
    {
      break;
    }

    v103 = DgnTextFileParser::getLineFieldString(v219, v177);
    DgnString::DgnString(&v185, v103);
    if (v186)
    {
      v104 = v185;
    }

    else
    {
      v104 = &unk_26288C6A6;
    }

    v105 = strcmp(v104, "ReqTags");
    DgnString::~DgnString(&v185);
    DgnString::~DgnString(&v187);
    DgnString::~DgnString(&v189);
    DgnString::~DgnString(&v191);
    DgnString::~DgnString(&v193);
    DgnString::~DgnString(&v195);
    if (v105)
    {
      goto LABEL_243;
    }
  }

  DgnString::~DgnString(&v187);
  DgnString::~DgnString(&v189);
  DgnString::~DgnString(&v191);
  DgnString::~DgnString(&v193);
  DgnString::~DgnString(&v195);
LABEL_243:
  v106 = *(v80 + 97);
  if (v106)
  {
    for (k = 0; k < v106; ++k)
    {
      if (*(*(v178 + 13) + k) && k == *(*(v178 + 32) + 4 * k) && ((*(v199 + ((k >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> k) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1504, "word/wordlist", 54, "%d %.500s %.500s", v221, "ReqTags", (*(v178 + 28) + *(*(v178 + 25) + 4 * k)));
        v106 = *(v178 + 97);
      }
    }
  }

  BitArray::BitArray(&v195, v106);
  if ((DgnTextFileParser::atEof(v219) & 1) == 0)
  {
    v108 = DgnTextFileParser::getLineFieldString(v219, v177);
    if (!strcmp(v108, "OptTags"))
    {
      do
      {
        DgnString::DgnString(&v193);
        DgnString::DgnString(&v191);
        DgnString::DgnString(&v189);
        DgnString::DgnString(&v187);
        v143 = DgnTextFileParser::getLineFieldString(v219, v177);
        DgnString::operator=(&v193, v143);
        v144 = DgnTextFileParser::getLineFieldString(v219, v176);
        DgnString::operator=(&v191, v144);
        v145 = DgnTextFileParser::getLineFieldUnsigned(v219, v175);
        v146 = DgnTextFileParser::getLineFieldUnsigned(v219, v174);
        v147 = DgnTextFileParser::getLineFieldUnsigned(v219, v173);
        v148 = DgnTextFileParser::getLineFieldString(v219, v172);
        DgnString::operator=(&v189, v148);
        v149 = DgnTextFileParser::getLineFieldString(v219, v171);
        DgnString::operator=(&v187, v149);
        if (v145)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1514, "word/wordlist", 45, "%u", v221);
        }

        if (v146)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1516, "word/wordlist", 46, "%u", v221);
        }

        if (v147)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1518, "word/wordlist", 47, "%u", v221);
        }

        v150 = v221;
        if (v192 > 1 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1521, "word/wordlist", 55, "%d", v221), v192))
        {
          v151 = v191;
        }

        else
        {
          v151 = &unk_26288C6A6;
        }

        v152 = WordList::lookupWord(v178, v151);
        if (v152 == 0xFFFFFF)
        {
          v153 = &unk_26288C6A6;
          if (v192)
          {
            v153 = v191;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1524, "word/wordlist", 52, "%d %.500s", v150, v153);
        }

        v154 = v195;
        v155 = v152 >> 5;
        v156 = *&v195[4 * (v152 >> 5)];
        if ((v156 & (1 << v152)) != 0)
        {
          v157 = &unk_26288C6A6;
          if (v192)
          {
            v157 = v191;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1526, "word/wordlist", 53, "%d %.500s %.500s", v150, "OptTags", v157);
          v154 = v195;
          v156 = *&v195[4 * v155];
        }

        *&v154[4 * v155] = v156 | (1 << v152);
        DgnString::DgnString(&v185, &v189);
        DgnString::DgnString(&__s, &v187);
        v158 = v186;
        if (!*(v178 + 129) && v186 >= 2)
        {
          v159 = &unk_26288C6A6;
          if (v192)
          {
            v159 = v191;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1532, "word/wordlist", 6, "%d %.500s", v150, v159);
          v158 = v186;
        }

        if (v158 <= 1 && v184 >= 2)
        {
          v160 = &unk_26288C6A6;
          if (v192)
          {
            v160 = v191;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1535, "word/wordlist", 30, "%d %.500s", v150, v160);
          v158 = v186;
        }

        if (*(v178 + 129))
        {
          if (v158 >= 2)
          {
            tagStringToTagBits(&v185, &v212, &v197);
            TagBitsAndStrings::setTagBits((v178 + 512), v152, &v197);
            if (v184 >= 2)
            {
              TagBitsAndStrings::setTagString((v178 + 512), v152, __s);
            }
          }
        }

        if (DgnTextFileParser::parseNextLine(v219))
        {
          v161 = DgnTextFileParser::getLineFieldString(v219, v177);
          DgnString::DgnString(&v181, v161);
          if (v182)
          {
            v162 = v181;
          }

          else
          {
            v162 = &unk_26288C6A6;
          }

          v163 = strcmp(v162, "OptTags") != 0;
          DgnString::~DgnString(&v181);
        }

        else
        {
          v163 = 1;
        }

        DgnString::~DgnString(&__s);
        DgnString::~DgnString(&v185);
        DgnString::~DgnString(&v187);
        DgnString::~DgnString(&v189);
        DgnString::~DgnString(&v191);
        DgnString::~DgnString(&v193);
      }

      while (!v163);
    }
  }

  BitArray::BitArray(&v193, *(v178 + 97));
  if (DgnTextFileParser::atEof(v219))
  {
    v109 = 1;
  }

  else
  {
    v110 = DgnTextFileParser::getLineFieldString(v219, v177);
    v109 = strcmp(v110, "Env") != 0;
  }

  DgnString::DgnString(&v191);
  if (!v109)
  {
    v111 = *(v178 + 3);
    while (1)
    {
      DgnString::DgnString(&v189);
      DgnString::DgnString(&v187);
      DgnString::DgnString(&v185);
      DgnString::DgnString(&__s);
      v112 = DgnTextFileParser::getLineFieldString(v219, v177);
      DgnString::operator=(&v189, v112);
      v113 = DgnTextFileParser::getLineFieldString(v219, v176);
      DgnString::operator=(&v187, v113);
      v114 = DgnTextFileParser::getLineFieldUnsigned(v219, v175);
      v115 = DgnTextFileParser::getLineFieldUnsigned(v219, v174);
      v116 = DgnTextFileParser::getLineFieldUnsigned(v219, v173);
      v117 = DgnTextFileParser::getLineFieldString(v219, v172);
      DgnString::operator=(&v185, v117);
      v118 = DgnTextFileParser::getLineFieldString(v219, v171);
      DgnString::operator=(&__s, v118);
      if (v114)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1570, "word/wordlist", 45, "%u", v221);
      }

      if (v115)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1572, "word/wordlist", 46, "%u", v221);
      }

      if (v116)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1574, "word/wordlist", 47, "%u", v221);
      }

      v119 = v221;
      if (v188 > 1 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1577, "word/wordlist", 55, "%d", v221), v188))
      {
        v120 = v187;
      }

      else
      {
        v120 = &unk_26288C6A6;
      }

      v121 = WordList::lookupWord(v178, v120);
      if (v121 == 0xFFFFFF)
      {
        v122 = &unk_26288C6A6;
        if (v188)
        {
          v122 = v187;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1580, "word/wordlist", 52, "%d %.500s", v119, v122);
      }

      v123 = v193;
      v124 = v121 >> 5;
      v125 = *&v193[4 * (v121 >> 5)];
      if ((v125 & (1 << v121)) != 0)
      {
        v126 = v188 ? v187 : &unk_26288C6A6;
        v127 = v192 ? v191 : &unk_26288C6A6;
        if (strcmp(v126, v127))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1583, "word/wordlist", 53, "%d %.500s %.500s", v119, "Env", v126);
          v123 = v193;
          v125 = *&v193[4 * v124];
        }
      }

      *&v123[4 * v124] = v125 | (1 << v121);
      DgnString::operator=(&v191, &v187);
      ItemEnvIdMaybeNew = EnvMgr::getItemEnvIdMaybeNew(v111, v121, 1);
      if (v186 <= 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1590, "word/wordlist", 56, "%u", v221);
      }

      if (v184 <= 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1592, "word/wordlist", 57, "%u", v221);
      }

      v181 = 0;
      v182 = 0;
      v129 = v220 ? v219[4] : &unk_26288C6A6;
      DgnTextFile::convertFromEnvValueFormat(&__s, &v181, v129, v221);
      v130 = v186 ? v185 : &unk_26288C6A6;
      EnvMgr::setData(v111, ItemEnvIdMaybeNew, v130, v181, v182, 1);
      if (!DgnTextFileParser::parseNextLine(v219))
      {
        break;
      }

      v131 = DgnTextFileParser::getLineFieldString(v219, v177);
      DgnString::DgnString(&v179, v131);
      if (v180)
      {
        v132 = v179;
      }

      else
      {
        v132 = &unk_26288C6A6;
      }

      v133 = strcmp(v132, "Env");
      DgnString::~DgnString(&v179);
      DgnPrimFixArray<double>::~DgnPrimFixArray(&v181);
      DgnString::~DgnString(&__s);
      DgnString::~DgnString(&v185);
      DgnString::~DgnString(&v187);
      DgnString::~DgnString(&v189);
      if (v133)
      {
        goto LABEL_297;
      }
    }

    DgnPrimFixArray<double>::~DgnPrimFixArray(&v181);
    DgnString::~DgnString(&__s);
    DgnString::~DgnString(&v185);
    DgnString::~DgnString(&v187);
    DgnString::~DgnString(&v189);
  }

LABEL_297:
  if ((DgnTextFileParser::atEof(v219) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1609, "word/wordlist", 51, "%u", v221);
  }

  DgnString::~DgnString(&v191);
  BitArray::~BitArray(&v193);
  BitArray::~BitArray(&v195);
  BitArray::~BitArray(&v197);
  BitArray::~BitArray(&v199);
  DgnString::~DgnString(&v201);
  this = v178;
LABEL_300:
  PrefiltererWordIdPronCollArray::removeAll(this + 352);
  WordIdPronCollArray::addArray(this + 352, this + 280);
  v201 = 0;
  v202 = 0;
  if (v207)
  {
    v134 = *v206;
  }

  else
  {
    v134 = &unk_26288C6A6;
  }

  DgnSplitStringIntoTokens(v134, ",", &v201, 0);
  v199 = 0;
  v200 = 0;
  if (v202)
  {
    v135 = 0;
    v136 = 0;
    do
    {
      if (*(v201 + v135 + 8))
      {
        v137 = *(v201 + v135);
      }

      else
      {
        v137 = &unk_26288C6A6;
      }

      if (!strcmp(v137, "_IDENTITY"))
      {
        v140 = -2;
      }

      else
      {
        v139 = CollMgr::lookupCollation(*v178, v137, v138);
        v140 = v139;
        if (!v139)
        {
          if (*(v201 + v135 + 8))
          {
            v141 = *(v201 + v135);
          }

          else
          {
            v141 = &unk_26288C6A6;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1626, "word/wordlist", 36, "%.500s", v141);
          v140 = 0;
        }
      }

      v142 = v200;
      if (v200 == HIDWORD(v200))
      {
        DgnPrimArray<short>::reallocElts(&v199, 1, 1);
        v142 = v200;
      }

      *(v199 + 2 * v142) = v140;
      LODWORD(v200) = v142 + 1;
      ++v136;
      v135 += 16;
    }

    while (v136 < v202);
  }

  DgnCollArray<unsigned int,WordList>::setColls(v178 + 272, &v199);
  WordList::computeWordChecksums(v178);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v199);
  DgnArray<DgnString>::releaseAll(&v201);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v203);
  DgnArray<DgnString>::releaseAll(&v204);
  DgnString::~DgnString(v206);
  DgnArray<DgnString>::releaseAll(&v212);
  DgnArray<DgnString>::releaseAll(&v214);
  DgnIArray<Utterance *>::~DgnIArray(v218);
  DgnTextFileParser::~DgnTextFileParser(v219);
}

void sub_262736990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  BitArray::~BitArray(&a38);
  BitArray::~BitArray(&a40);
  BitArray::~BitArray(&a42);
  BitArray::~BitArray(&a44);
  DgnString::~DgnString(&a46);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a48);
  DgnArray<DgnString>::releaseAll(&a50);
  DgnString::~DgnString(&a52);
  DgnArray<DgnString>::releaseAll(&a57);
  DgnArray<DgnString>::releaseAll(&a59);
  DgnIArray<Utterance *>::~DgnIArray(&a63);
  DgnTextFileParser::~DgnTextFileParser(&a65);
  _Unwind_Resume(a1);
}

void splitTagsString(_DWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= 1)
  {
    v5 = 16 * v4 - 16;
    do
    {
      DgnString::~DgnString(*a2 + v5);
      v5 -= 16;
    }

    while (v5 != -16);
  }

  *(a2 + 8) = 0;
  v6 = a1[2];
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 >= 2 && (**a1 != 48 || *(*a1 + 1)))
  {
    DgnString::DgnString(&v18);
    v8 = 0;
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    do
    {
      v10 = *a1;
      v11 = *(*a1 + v8);
      if ((v11 - 65) < 0x1A)
      {
        goto LABEL_40;
      }

      if (v11 == 95 || (v11 - 97) < 0x1Au)
      {
        goto LABEL_40;
      }

      if (v8)
      {
        v13 = (v11 - 48) >= 0xA;
      }

      else
      {
        v13 = 1;
      }

      v14 = !v13;
      if (v11 != 44 && (v14 & 1) == 0)
      {
        if (!a1[2])
        {
          v10 = &unk_26288C6A6;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 376, "word/wordlist", 18, "%c %.500s", *(*a1 + v8), v10);
      }

      if (v11 == 44)
      {
        ++v8;
        if (v19 < 2 || v8 == v7)
        {
          if (a1[2])
          {
            v15 = *a1;
          }

          else
          {
            v15 = &unk_26288C6A6;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 382, "word/wordlist", 19, "%.500s", v15);
        }

        v16 = *(a2 + 8);
        if (v16 == *(a2 + 12))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a2, 1, 1);
          v16 = *(a2 + 8);
        }

        DgnString::DgnString((*a2 + 16 * v16), &v18);
        ++*(a2 + 8);
        v19 = 0;
      }

      else
      {
LABEL_40:
        DgnString::operator+=(&v18, v11);
        ++v8;
      }
    }

    while (v8 != v9);
    v17 = *(a2 + 8);
    if (v17 == *(a2 + 12))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(a2, 1, 1);
      v17 = *(a2 + 8);
    }

    DgnString::DgnString((*a2 + 16 * v17), &v18);
    ++*(a2 + 8);
    DgnString::~DgnString(&v18);
  }
}

void sub_262736F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void *tagStringToTagBits(_DWORD *a1, unsigned int *a2, BitArray *a3)
{
  v23 = 0;
  v24 = 0;
  splitTagsString(a1, &v23);
  v6 = a2[2];
  BitArray::setSize(a3, a2[2]);
  if (v6)
  {
    v7 = v24 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = v23;
    v11 = (*a2 + 8);
    do
    {
      v12 = v10 + 16 * v9;
      if (*v11)
      {
        v13 = *(v11 - 1);
      }

      else
      {
        v13 = &unk_26288C6A6;
      }

      v14 = *(v12 + 8);
      v15 = *v12;
      if (v14)
      {
        v16 = v15;
      }

      else
      {
        v16 = &unk_26288C6A6;
      }

      v17 = strcmp(v13, v16);
      v18 = 1 << v8;
      v19 = v8 >> 5;
      if (v17)
      {
        *(*a3 + 4 * v19) &= ~v18;
      }

      else
      {
        *(*a3 + 4 * v19) |= v18;
        ++v9;
      }

      if (++v8 >= v6)
      {
        break;
      }

      v11 += 4;
    }

    while (v9 < v24);
    if (v9 < v24)
    {
      if (a1[2])
      {
        v20 = *a1;
      }

      else
      {
        v20 = &unk_26288C6A6;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 428, "word/wordlist", 20, "%.500s", v20);
    }
  }

  if (v8 < v6)
  {
    v21 = *a3;
    do
    {
      *(v21 + 4 * (v8 >> 5)) &= ~(1 << v8);
      LODWORD(v8) = v8 + 1;
    }

    while (v6 != v8);
  }

  return DgnArray<DgnString>::releaseAll(&v23);
}

void sub_2627370B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnArray<DgnString>::releaseAll(va);
  _Unwind_Resume(a1);
}

void WordList::setSizeForWordListLoad(WordList *this, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v6 = a2;
  *(this + 97) = a2;
  v8 = *(this + 67);
  v9 = a2;
  v10 = a2 >= v8;
  v11 = a2 - v8;
  if (v11 != 0 && v10)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 256, v11, 0);
    v9 = *(this + 97);
  }

  *(this + 66) = v6;
  v12 = v9;
  if (*(this + 29) < v9)
  {
    v38 = 0;
    *(this + 29) = realloc_array(*(this + 13), &v38, v9, *(this + 28), *(this + 28), 1);
    *(this + 13) = v38;
    v12 = *(this + 97);
  }

  *(this + 28) = v9;
  v13 = *(this + 53);
  v14 = v12;
  if (v12 > v13)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 200, v12 - v13, 0);
    v14 = *(this + 97);
  }

  *(this + 52) = v12;
  v15 = *(this + 15);
  v16 = v14;
  if (v14 > v15)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 48, v14 - v15, 0);
    v16 = *(this + 97);
  }

  *(this + 14) = v14;
  v17 = *(this + 11);
  v18 = v16;
  if (v16 > v17)
  {
    DgnPrimArray<short>::reallocElts(this + 32, v16 - v17, 0);
    v18 = *(this + 97);
  }

  *(this + 10) = v16;
  if (a3 >= 2)
  {
    v19 = v18;
    if (*(this + 109) < v18)
    {
      v38 = 0;
      *(this + 109) = realloc_array(*(this + 53), &v38, v18, *(this + 108), *(this + 108), 1);
      *(this + 53) = v38;
      v19 = *(this + 97);
    }

    *(this + 108) = v18;
    v18 = v19;
  }

  if (a4 >= 2)
  {
    v20 = v18;
    if (*(this + 113) < v18)
    {
      v38 = 0;
      *(this + 113) = realloc_array(*(this + 55), &v38, v18, *(this + 112), *(this + 112), 1);
      *(this + 55) = v38;
      v20 = *(this + 97);
    }

    *(this + 112) = v18;
    v18 = v20;
  }

  BitArray::setSize((this + 624), v18);
  BitArray::setSize((this + 640), *(this + 97));
  BitArray::clearRange((this + 624), 0, *(this + 158));
  BitArray::clearRange((this + 640), 0, *(this + 162));
  v21 = *(this + 138);
  if (v21)
  {
    BitArray::setSize((this + 576), *(this + 97) * v21);
    BitArray::clearRange((this + 576), 0, *(this + 146));
  }

  v22 = *(this + 97);
  v23 = *(this + 33);
  v24 = v22;
  if (v22 > v23)
  {
    DgnPrimArray<short>::reallocElts(this + 120, v22 - v23, 0);
    v24 = *(this + 97);
  }

  *(this + 32) = v22;
  v25 = *(this + 37);
  v26 = v24;
  if (v24 > v25)
  {
    DgnPrimArray<short>::reallocElts(this + 136, v24 - v25, 0);
    v26 = *(this + 97);
  }

  *(this + 36) = v24;
  v27 = *(this + 151);
  v28 = v26;
  if (v26 > v27)
  {
    DgnPrimArray<short>::reallocElts(this + 592, v26 - v27, 0);
    v28 = *(this + 97);
  }

  *(this + 150) = v26;
  v29 = *(this + 155);
  v30 = v28;
  if (v28 > v29)
  {
    DgnPrimArray<short>::reallocElts(this + 608, v28 - v29, 0);
    v30 = *(this + 97);
  }

  *(this + 154) = v28;
  v31 = *(this + 41);
  v32 = v30;
  if (v30 > v31)
  {
    DgnPrimArray<short>::reallocElts(this + 152, v30 - v31, 0);
    v32 = *(this + 97);
  }

  *(this + 40) = v30;
  v33 = *(this + 45);
  v34 = v32;
  if (v32 > v33)
  {
    DgnPrimArray<short>::reallocElts(this + 168, v32 - v33, 0);
    v34 = *(this + 97);
  }

  *(this + 44) = v32;
  v35 = *(this + 49);
  v36 = v34;
  if (v34 > v35)
  {
    DgnPrimArray<short>::reallocElts(this + 184, v34 - v35, 0);
    v36 = *(this + 97);
  }

  *(this + 48) = v34;
  if (v36 >= 1)
  {
    v37 = v36 + 1;
    do
    {
      WordList::invalidateId(this, v37 - 2);
      --v37;
    }

    while (v37 > 1);
  }
}

void WordList::strToPhonemes(uint64_t a1, const char *a2, uint64_t a3)
{
  DgnString::DgnString(&v13, a2);
  v11 = 0;
  v12 = 0;
  if (v14)
  {
    v5 = v13;
  }

  else
  {
    v5 = &unk_26288C6A6;
  }

  DgnSplitStringIntoTokens(v5, ".", &v11, 0);
  if (v12)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(v11 + v6 + 8))
      {
        v8 = *(v11 + v6);
      }

      else
      {
        v8 = &unk_26288C6A6;
      }

      PhnIndex = PhnMgr::getPhnIndex(*(a1 + 16), v8);
      v10 = *(a3 + 8);
      if (v10 == *(a3 + 12))
      {
        DgnPrimArray<short>::reallocElts(a3, 1, 1);
        v10 = *(a3 + 8);
      }

      *(*a3 + 2 * v10) = PhnIndex;
      *(a3 + 8) = v10 + 1;
      ++v7;
      v6 += 16;
    }

    while (v7 < v12);
  }

  DgnArray<DgnString>::releaseAll(&v11);
  DgnString::~DgnString(&v13);
}

void sub_262737524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnArray<DgnString>::releaseAll(&a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void WordList::checkNewTwlWordBoundaryPhonemes(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = *(*a2 + 2 * v11);
      v14 = *(*(a1 + 16) + 60);
      v15 = v13 == v14;
      if (v13 == v14 && (!v11 || ((v11 != v5 - 1) & ~v12) == 0))
      {
        if (*(a4 + 8))
        {
          v16 = *a4;
        }

        else
        {
          v16 = &unk_26288C6A6;
        }

        if (*(a5 + 8))
        {
          v17 = *a5;
        }

        else
        {
          v17 = &unk_26288C6A6;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 5052, "word/wordlist", 71, "%d %.500s %.500s", a3, v16, v17);
        v5 = *(a2 + 8);
      }

      ++v11;
      v12 = v15;
    }

    while (v11 < v5);
  }
}

uint64_t WordList::addWordInternal(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4, unsigned int a5, CharInfo *this, int a7, uint64_t a8, char a9, char a10)
{
  v14 = a4;
  FreeId = a3;
  v16 = a2;
  if (***a1)
  {
    CharInfo::validateEncodedCharString(this, a2, a3, a4);
  }

  v18 = strlen(this);
  if (v16)
  {
    FreeId = WordList::getFreeId(a1);
    if (v14 == 0xFFFFFF && (v14 = WordList::lookupWord(a1, this), v14 == 0xFFFFFF))
    {
      v14 = FreeId;
    }

    else
    {
      a5 = *(*(a1 + 200) + 4 * v14);
    }
  }

  if (FreeId >= 0xFFFFF4)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 3010, "word/wordlist", 10, "%u %.500s", FreeId, this);
  }

  if (*(a8 + 8))
  {
    PhnMgr::verifyPhonemePron(*(a1 + 16), a8, this, 0);
  }

  if (a7 == 255)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 3019, "word/wordlist", 9, "%u %.500s", FreeId, this);
  }

  if (a5 == -1)
  {
    v40 = a7;
    v19 = v16;
    v20 = 0;
    a5 = *(a1 + 232);
    v21 = a5;
    do
    {
      v22 = *(this + v20);
      if (v21 == *(a1 + 236))
      {
        DgnPrimArray<char>::reallocElts(a1 + 224, 1, 1);
        v21 = *(a1 + 232);
      }

      *(*(a1 + 224) + v21) = v22;
      v21 = *(a1 + 232) + 1;
      *(a1 + 232) = v21;
      ++v20;
    }

    while (v20 <= v18);
    v16 = v19;
    a7 = v40;
  }

  *(*(a1 + 200) + 4 * FreeId) = a5;
  *(*(a1 + 104) + FreeId) = a7;
  *(*(a1 + 256) + 4 * FreeId) = v14;
  v23 = *(a8 + 8);
  *(*(a1 + 32) + 2 * FreeId) = v23;
  *(*(a1 + 48) + 4 * FreeId) = *(a1 + 80);
  if (*(a8 + 8))
  {
    v24 = 0;
    v25 = *(*(a1 + 16) + 60);
    do
    {
      v26 = *(*a8 + 2 * v24);
      if (v26 == v25)
      {
        --*(*(a1 + 32) + 2 * FreeId);
        *(*(a1 + 88) + 4 * ((*(a1 + 80) - 1) >> 5)) |= 1 << (*(a1 + 80) - 1);
      }

      else
      {
        v27 = *(a1 + 80);
        if (v27 == *(a1 + 84))
        {
          DgnPrimArray<short>::reallocElts(a1 + 72, 1, 1);
          v27 = *(a1 + 80);
        }

        *(*(a1 + 72) + 2 * v27) = v26;
        *(a1 + 80) = v27 + 1;
        BitArray::add((a1 + 88), 0);
      }

      ++v24;
    }

    while (v24 < *(a8 + 8));
    v23 = *(*(a1 + 32) + 2 * FreeId);
  }

  if (v23)
  {
    v28 = (*(a1 + 72) + 2 * *(*(a1 + 48) + 4 * FreeId));
    v29 = *v28;
    v30 = v28[v23 - 1];
    v31 = 608;
    v32 = 592;
  }

  else
  {
    v29 = *(*(a1 + 16) + 58);
    v31 = 592;
    v32 = 608;
    v30 = v29;
  }

  *(*(a1 + v32) + 2 * FreeId) = v29;
  *(*(a1 + v31) + 2 * FreeId) = v30;
  if (v16)
  {
    if (FreeId == v14)
    {
      *(*(a1 + 624) + 4 * (v14 >> 5)) &= ~(1 << v14);
    }

    v33 = *(a1 + 640);
    v34 = FreeId >> 5;
    v35 = *(v33 + 4 * (FreeId >> 5)) & ~(1 << FreeId);
  }

  else
  {
    if (FreeId == v14)
    {
      *(*(a1 + 624) + 4 * (v14 >> 5)) |= 1 << v14;
    }

    v33 = *(a1 + 640);
    v34 = FreeId >> 5;
    v35 = *(v33 + 4 * (FreeId >> 5)) | (1 << FreeId);
  }

  *(v33 + 4 * v34) = v35;
  v36 = *(a1 + 552);
  if (v36 && FreeId == v14)
  {
    BitArray::setBitsInRange((a1 + 576), (a1 + 560), v36 * v14, v36 * v14 + v36);
  }

  if (a7 == 1)
  {
    ++*(a1 + 384);
  }

  if (v16)
  {
    v37 = *(a1 + 419);
    if (*(a1 + 421) == 1 && FreeId != v14)
    {
      if (*(a1 + 392) < 2u)
      {
        v37 = 0;
      }

      else
      {
        v37 = *(*(a1 + 424) + v14);
      }
    }

    v38 = *(a1 + 420);
    if (*(a1 + 422) == 1 && FreeId != v14)
    {
      if (*(a1 + 396) < 2u)
      {
        v38 = 0;
      }

      else
      {
        v38 = *(*(a1 + 440) + v14);
      }
    }

    WordList::setPronPredecessorSeedCategory(a1, FreeId, v37);
    WordList::setPronSuccessorSeedCategory(a1, FreeId, v38);
    if (a10)
    {
      DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::add(a1 + 272, FreeId);
    }

    if (a9)
    {
      WordIdPronCollArray::add((a1 + 352), FreeId);
    }
  }

  *(a1 + 376) ^= WordList::computeWordIdNameChecksum(a1, FreeId);
  *(a1 + 380) ^= WordList::computeWordIdPronChecksum(a1, FreeId);
  return FreeId;
}

void WordList::setPronPredecessorSeedCategory(WordList *this, unsigned int a2, unsigned int a3)
{
  v3 = a3;
  v6 = *(this + 98);
  if (v6 < a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 4794, "word/wordlist", 64, "%u %u", a3, v6);
    v6 = *(this + 98);
  }

  if (v6 >= 2)
  {
    *(*(this + 53) + a2) = v3;
  }
}

void WordList::setPronSuccessorSeedCategory(WordList *this, unsigned int a2, unsigned int a3)
{
  v3 = a3;
  v6 = *(this + 99);
  if (v6 < a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 4814, "word/wordlist", 65, "%u %u", a3, v6);
    v6 = *(this + 99);
  }

  if (v6 >= 2)
  {
    *(*(this + 55) + a2) = v3;
  }
}

uint64_t WordList::setupWordIdsForWordListLoad(uint64_t this)
{
  v1 = *(this + 388);
  if (v1)
  {
    v2 = this;
    v9[0] = 0;
    v10 = 0;
    v9[1] = realloc_array(0, &v10, 4 * v1, 0, 0, 1) >> 2;
    v8 = v10;
    if (*(v2 + 388))
    {
      v3 = 0;
      while (!*(*(v2 + 104) + v3))
      {
        v6 = *(v2 + 248);
        v4 = (v2 + 240);
        v5 = (v2 + 248);
        if (v6 == *(v2 + 252))
        {
          DgnPrimArray<unsigned int>::reallocElts(v2 + 240, 1, 1);
          v5 = (v2 + 248);
          v4 = (v2 + 240);
          goto LABEL_8;
        }

LABEL_9:
        *(*v4 + v6) = v3;
        ++*v5;
        if (++v3 >= *(v2 + 388))
        {
          goto LABEL_10;
        }
      }

      v4 = &v8;
      v5 = v9;
LABEL_8:
      v6 = *v5;
      goto LABEL_9;
    }

LABEL_10:
    DgnCollArray<unsigned int,WordList>::addArray(v2 + 272, &v8);
    if (*(v2 + 388))
    {
      v7 = 0;
      do
      {
        if (*(*(v2 + 104) + v7) && v7 != WordList::lookupWord(v2, (*(v2 + 224) + *(*(v2 + 200) + 4 * v7))) && *(*(v2 + 104) + v7) == 1)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2768, "word/wordlist", 3, "%.500s", (*(v2 + 224) + *(*(v2 + 200) + 4 * v7)));
        }

        ++v7;
      }

      while (v7 < *(v2 + 388));
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v8);
  }

  return this;
}

void sub_262737DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordList::lookupWord(WordList *this, const char *a2)
{
  v2 = *this;
  v6[0] = a2;
  v6[1] = this;
  v6[2] = v2;
  v7 = -2;
  v8 = 0;
  if (*(this + 272) == 1 && *(this + 137) == -2)
  {
    v3 = this + 280;
  }

  else
  {
    v3 = *(*(this + 37) + 524272);
  }

  Equal = DgnPrimArray<unsigned int>::searchFirstEqual(v3, 0, *(v3 + 2), v6, WordIdCollSearchCmp);
  if (Equal == -1)
  {
    return 0xFFFFFFLL;
  }

  else
  {
    return *(*v3 + 4 * Equal);
  }
}

uint64_t *copyBadPredecessorSeedCategoryArray(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  v5 = v4;
  if (*(a2 + 12) < v4)
  {
    v7 = 0;
    result = realloc_array(*a2, &v7, v4, *(a2 + 8), *(a2 + 8), 1);
    *(a2 + 12) = result;
    *a2 = v7;
    v5 = *(v3 + 2);
  }

  *(a2 + 8) = v4;
  if (v5)
  {
    v6 = 0;
    do
    {
      *(*a2 + v6) = *(*v3 + v6);
      ++v6;
    }

    while (v6 < *(v3 + 2));
  }

  return result;
}

uint64_t WordList::loadBinary(WordList *this, const char **a2, DFileChecksums *a3)
{
  v55 = 0;
  v6 = OpenAndReadMrecHeader(a2, 0x2Fu, 1, "MRWORD!?", &v55 + 1, &v55);
  v7 = v6;
  *(v6 + 32) = 0;
  *(v6 + 34) = 0;
  v8 = v55;
  switch(v55)
  {
    case 0x1300000025:
      v9 = 0;
      v10 = 0;
      v11 = 1;
      *(v6 + 32) = 1;
      *(v6 + 34) = 1;
      v12 = 19;
LABEL_5:
      v13 = 1;
      goto LABEL_6;
    case 0x1400000026:
      v9 = 0;
      v10 = 0;
      v11 = 1;
      *(v6 + 32) = 1;
      *(v6 + 34) = 1;
      v12 = 20;
      goto LABEL_5;
    case 0x1400000027:
      v11 = 0;
      v9 = 0;
      v10 = 0;
      v13 = 1;
      *(v6 + 32) = 1;
      *(v6 + 34) = 1;
      v12 = 20;
      goto LABEL_6;
    case 0x1600000028:
      v11 = 0;
      v13 = 0;
      v9 = 0;
      v10 = 0;
      *(v6 + 32) = 1;
      *(v6 + 34) = 1;
LABEL_60:
      v12 = 22;
      goto LABEL_6;
    case 0x1600000029:
      v11 = 0;
      v13 = 0;
      v9 = 0;
      v10 = 0;
      goto LABEL_60;
    case 0x160000002ALL:
      v11 = 0;
      v13 = 0;
      v10 = 0;
      v9 = 1;
      goto LABEL_60;
  }

  if (*(a2 + 6))
  {
    v47 = a2[2];
  }

  else
  {
    v47 = &unk_26288C6A6;
  }

  MrecHeaderCheckVersions(v47, "MRWORD!?", HIDWORD(v55), v55, 0x18u, 0x2Bu);
  v11 = 0;
  v13 = 0;
  v12 = HIDWORD(v55);
  v9 = 1;
  v8 = v55;
  v10 = 1;
LABEL_6:
  MrecHeaderCheckLatestVersionIfShared(a2, "MRWORD!?", v12, v8, 24, 43);
  v54[0] = 0;
  v54[1] = 0;
  v53[0] = 0;
  v53[1] = 0;
  *v52 = 0;
  readObject<unsigned short>(v7, this + 32, v52);
  readObject<unsigned int>(v7, this + 48, v52);
  readObject<unsigned short>(v7, this + 72, v52);
  readObject(v7, (this + 88), v52);
  readObject<unsigned char>(v7, this + 104, v52);
  readObject<unsigned short>(v7, this + 120, v52);
  readObject<unsigned short>(v7, this + 136, v52);
  readObject<unsigned int>(v7, this + 200, v52);
  readObject<char>(v7, this + 224, v52);
  readObject<unsigned int>(v7, this + 240, v52);
  readObject<unsigned int>(v7, this + 256, v52);
  DgnCollArray<unsigned int,WordList>::readObject(this + 272, v7, v52);
  PrefiltererWordIdPronCollArray::readObject((this + 352), v7, v52);
  if (v9)
  {
    readObject(v7, this + 94, v52);
    readObject(v7, this + 95, v52);
  }

  readObject(v7, this + 96, v52);
  v14 = (this + 388);
  readObject(v7, this + 97, v52);
  readObject(v7, this + 98, v52);
  readObject(v7, this + 99, v52);
  readObject<DgnPrimArray<BOOL>>(v7, this + 400, v52);
  readObject(v7, this + 416, v52);
  readObject(v7, this + 417, v52);
  readObject(v7, this + 418, v52);
  readObject(v7, this + 419, v52);
  readObject(v7, this + 420, v52);
  readObject(v7, this + 421, v52);
  readObject(v7, this + 422, v52);
  if (v13)
  {
    readObject<BadPredecessorSeedCategory>(v7, v54, v52);
    readObject<BadPredecessorSeedCategory>(v7, v53, v52);
  }

  else
  {
    readObject<unsigned char>(v7, this + 424, v52);
    readObject<unsigned char>(v7, this + 440, v52);
  }

  readObject(v7, (this + 624), v52);
  readObject(v7, (this + 640), v52);
  if (v10)
  {
    readObject(v7, this + 114, v52);
    v15 = (this + 460);
  }

  else
  {
    v15 = &v52[1];
  }

  readObject(v7, v15, v52);
  readObject(v7, (this + 464), v52);
  readObject(v7, (this + 480), v52);
  readObject(v7, (this + 496), v52);
  readObject(v7, (this + 576), v52);
  readObject(v7, (this + 512), v52);
  if (v13)
  {
    copyBadPredecessorSeedCategoryArray(v54, this + 424);
    copyBadPredecessorSeedCategoryArray(v53, this + 440);
  }

  if ((v10 & 1) == 0)
  {
    v16 = v52[1];
    *(this + 114) = v52[1];
    *(this + 115) = v16;
  }

  EnvMgr::loadEnvMgrFromStream(*(this + 3), a2, v7, v52, 0);
  readObjectChecksumAndVerify(v7, v52[0]);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 47, v52[0]);
  DgnDelete<DgnStream>(v7);
  v18 = *this;
  *(this + 41) = WordIdCollSearchCmpFromWordId;
  *(this + 42) = this;
  *(this + 43) = v18;
  v50 = 0;
  v51 = 0;
  splitTagsString(this + 116, &v50);
  v19 = v51;
  *(this + 138) = v51;
  if (v19)
  {
    tagStringToTagBits(this + 124, &v50, (this + 560));
  }

  v20 = *(this + 97);
  v21 = *(this + 151);
  v22 = v20;
  if (v20 > v21)
  {
    DgnPrimArray<short>::reallocElts(this + 592, v20 - v21, 0);
    v22 = *v14;
  }

  *(this + 150) = v20;
  v23 = *(this + 155);
  v24 = v22;
  if (v22 > v23)
  {
    DgnPrimArray<short>::reallocElts(this + 608, v22 - v23, 0);
    v24 = *v14;
  }

  *(this + 154) = v22;
  v25 = *(this + 41);
  v26 = v24;
  if (v24 > v25)
  {
    DgnPrimArray<short>::reallocElts(this + 152, v24 - v25, 0);
    v26 = *v14;
  }

  *(this + 40) = v24;
  v27 = *(this + 45);
  v28 = v26;
  if (v26 > v27)
  {
    DgnPrimArray<short>::reallocElts(this + 168, v26 - v27, 0);
    v28 = *v14;
  }

  *(this + 44) = v26;
  v29 = *(this + 49);
  v30 = v28;
  v31 = v28 >= v29;
  v32 = v28 - v29;
  if (v32 != 0 && v31)
  {
    DgnPrimArray<short>::reallocElts(this + 184, v32, 0);
    v30 = *v14;
  }

  v48 = v11;
  *(this + 48) = v28;
  BitArray::BitArray(v49, v30);
  v33 = *(this + 62);
  if (v33 >= 1)
  {
    v34 = v49[0];
    v35 = v33 + 1;
    v36 = (*(this + 30) + 4 * v33 - 4);
    do
    {
      v37 = *v36--;
      *(v34 + ((v37 >> 3) & 0x1FFFFFFC)) |= 1 << v37;
      --v35;
    }

    while (v35 > 1);
  }

  if (*v14)
  {
    v38 = 0;
    do
    {
      *(*(this + 19) + 2 * v38) = 0;
      *(*(this + 21) + 2 * v38) = 0;
      *(*(this + 23) + 2 * v38) = 0;
      v39 = *(v49[0] + ((v38 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) & (1 << v38);
      if (*(*(this + 13) + v38))
      {
        if (v39)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1850, "word/wordlist", 27, "%u", v38);
        }

        if (*(*(this + 4) + 2 * v38))
        {
          v40 = (*(this + 9) + 2 * *(*(this + 6) + 4 * v38));
          v41 = *v40;
          v42 = v40[*(*(this + 4) + 2 * v38) - 1];
          v43 = 592;
          v44 = 608;
        }

        else
        {
          v41 = *(*(this + 2) + 58);
          v43 = 608;
          v44 = 592;
          v42 = v41;
        }

        *(*(this + v43) + 2 * v38) = v41;
        v45 = this + v44;
      }

      else
      {
        if (!v39)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 1855, "word/wordlist", 28, "%u", v38);
        }

        v42 = -1;
        *(*(this + 74) + 2 * v38) = -1;
        v45 = this + 608;
      }

      *(*v45 + 2 * v38++) = v42;
    }

    while (v38 < *v14);
  }

  if (v48)
  {
    PrefiltererWordIdPronCollArray::removeAll(this + 352);
    WordIdPronCollArray::addArray(this + 352, this + 280);
  }

  if ((v9 & 1) == 0)
  {
    WordList::computeWordChecksums(this);
  }

  BitArray::~BitArray(v49);
  DgnArray<DgnString>::releaseAll(&v50);
  DgnIArray<Utterance *>::~DgnIArray(v53);
  return DgnIArray<Utterance *>::~DgnIArray(v54);
}

void sub_262738714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  DgnArray<DgnString>::releaseAll(va);
  DgnIArray<Utterance *>::~DgnIArray(va1);
  DgnIArray<Utterance *>::~DgnIArray(va2);
  _Unwind_Resume(a1);
}

unint64_t readObject<DgnPrimArray<BOOL>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v17 = 0;
  result = readObject(a1, &v17, a3);
  v7 = v17;
  v8 = *(a2 + 12);
  if (v17 > v8)
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(a2, v17 - v8, 0);
  }

  v9 = *(a2 + 8);
  if (v9 <= v7)
  {
    if (v9 < v7)
    {
      v12 = v7 - v9;
      v13 = 16 * v9;
      do
      {
        v14 = (*a2 + v13);
        *v14 = 0;
        v14[1] = 0;
        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  else if (v9 > v7)
  {
    v10 = v9;
    v11 = 16 * v9 - 16;
    do
    {
      --v10;
      result = DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v11);
      v11 -= 16;
    }

    while (v10 > v7);
  }

  *(a2 + 8) = v7;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      result = readObject<BOOL>(a1, *a2 + v15, a3);
      ++v16;
      v15 += 16;
    }

    while (v16 < *(a2 + 8));
  }

  return result;
}

uint64_t readObject<BadPredecessorSeedCategory>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v10[0] = 0;
  result = readObject(a1, v10, a3);
  v7 = v10[0];
  if (*(a2 + 12) >= v10[0])
  {
    *(a2 + 8) = v10[0];
    if (!v7)
    {
      return result;
    }
  }

  else
  {
    *&v10[1] = 0;
    v8 = realloc_array(*a2, &v10[1], v10[0], *(a2 + 8), *(a2 + 8), 1);
    *a2 = *&v10[1];
    *(a2 + 8) = v7;
    *(a2 + 12) = v8;
  }

  v9 = 0;
  do
  {
    result = readObject(a1, (*a2 + v9++), a3);
  }

  while (v9 < *(a2 + 8));
  return result;
}

uint64_t WordList::loadWordList(WordList *this, FileSpec **a2, DFileChecksums *a3)
{
  if (DFile::subFileExists(a2, 0x62u))
  {
    WordList::loadTwl(this, a2);
  }

  else
  {
    WordList::loadBinary(this, a2, a3);
  }

  WordList::compact(this);

  return TagBitsAndStrings::compact((this + 512));
}

uint64_t WordList::compact(uint64_t this)
{
  v1 = this;
  v2 = *(this + 388);
  if (!v2)
  {
    if (!*(this + 80))
    {
      v5 = 0;
      goto LABEL_31;
    }

    v5 = 0;
    v4 = 0;
    v42 = 0;
    v43 = 0;
    goto LABEL_11;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = *(this + 104);
  do
  {
    if (*(v6 + v3))
    {
      v4 += *(*(v1 + 32) + 2 * v3);
      if (v3 == *(*(v1 + 256) + 4 * v3))
      {
        this = strlen((*(v1 + 224) + *(*(v1 + 200) + 4 * v3)));
        v5 += this + 1;
      }
    }

    ++v3;
  }

  while (v2 != v3);
  if (*(v1 + 80) != v4)
  {
    v42 = 0;
    v43 = 0;
    v40 = 0;
    HIDWORD(v43) = realloc_array(0, &v40, 4 * v2, 0, 0, 1) >> 2;
    v42 = v40;
LABEL_11:
    v40 = 0;
    v41 = 0;
    DgnString::DgnString(&v38);
    if (HIDWORD(v41) < v4)
    {
      v44 = 0;
      HIDWORD(v41) = realloc_array(v40, &v44, 2 * v4, 2 * v41, 2 * v41, 1) >> 1;
      v40 = v44;
    }

    BitArray::preAllocate(&v38, v4);
    if (*(v1 + 388))
    {
      v7 = 0;
      v8 = *(v1 + 104);
      v9 = v42;
      v10 = v40;
      do
      {
        if (*(v8 + v7))
        {
          v9[v43] = v41;
          LODWORD(v43) = v43 + 1;
          v11 = *(*(v1 + 32) + 2 * v7);
          if (*(*(v1 + 32) + 2 * v7))
          {
            v12 = *(*(v1 + 48) + 4 * v7);
            v13 = *(v1 + 72);
            v14 = *(v1 + 88);
            v15 = v38;
            do
            {
              v16 = v41;
              v10[v41] = *(v13 + 2 * v12);
              LODWORD(v41) = v16 + 1;
              v17 = *(v14 + 4 * (v12 >> 5));
              v18 = v39++;
              v19 = 1 << v18;
              if ((v17 >> v12))
              {
                *(v15 + ((v18 >> 3) & 0x1FFFFFFC)) |= v19;
              }

              else
              {
                v15[v18 >> 5] &= ~v19;
              }

              ++v12;
              --v11;
            }

            while (v11);
          }
        }

        else
        {
          v9[v43] = 0;
          LODWORD(v43) = v43 + 1;
        }

        ++v7;
      }

      while (v7 < *(v1 + 388));
    }

    v20 = *(v1 + 48);
    if (v20)
    {
      MemChunkFree(v20, 0);
      *(v1 + 48) = 0;
    }

    *(v1 + 56) = 0;
    DgnPrimArray<int>::copyArraySlice((v1 + 48), &v42, 0, v43);
    *(v1 + 64) = 0;
    v21 = *(v1 + 72);
    if (v21)
    {
      MemChunkFree(v21, 0);
      *(v1 + 72) = 0;
    }

    *(v1 + 80) = 0;
    DgnPrimArray<unsigned short>::copyArraySlice((v1 + 72), &v40, 0, v41);
    BitArray::releaseAll((v1 + 88));
    BitArray::operator=((v1 + 88), &v38);
    BitArray::~BitArray(&v38);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
    this = DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  }

LABEL_31:
  if (*(v1 + 232) != v5)
  {
    v42 = 0;
    v43 = 0;
    v22 = *(v1 + 388);
    if (v22)
    {
      v40 = 0;
      HIDWORD(v43) = realloc_array(0, &v40, 4 * v22, 0, 0, 1) >> 2;
      v42 = v40;
    }

    v40 = 0;
    v41 = 0;
    if (v5)
    {
      v38 = 0;
      HIDWORD(v41) = realloc_array(0, &v38, v5, 0, 0, 1);
      v40 = v38;
    }

    if (*(v1 + 388))
    {
      v23 = 0;
      while (1)
      {
        if (*(*(v1 + 104) + v23))
        {
          v24 = v42;
          v25 = v43;
          if (v23 == *(*(v1 + 256) + 4 * v23))
          {
            v26 = v41;
            v42[v43] = v41;
            LODWORD(v43) = v43 + 1;
            v27 = (*(v1 + 224) + *(*(v1 + 200) + 4 * v23));
            LOBYTE(v28) = *v27;
            if (*v27)
            {
              v29 = 1;
              do
              {
                *(v40 + v26) = v28;
                v26 = v41 + 1;
                LODWORD(v41) = v41 + 1;
                v28 = v27[v29++];
              }

              while (v28);
            }

            *(v40 + v26) = 0;
            v30 = &v41;
            goto LABEL_46;
          }
        }

        else
        {
          v24 = v42;
          v25 = v43;
        }

        v24[v25] = 0;
        v30 = &v43;
LABEL_46:
        ++*v30;
        ++v23;
        v31 = *(v1 + 388);
        if (v23 >= v31)
        {
          if (*(v1 + 388))
          {
            v32 = 0;
            v33 = *(v1 + 104);
            v34 = v42;
            do
            {
              if (*(v33 + v32))
              {
                v35 = *(*(v1 + 256) + 4 * v32);
                if (v32 != v35)
                {
                  v34[v32] = v34[v35];
                  v31 = *(v1 + 388);
                }
              }

              ++v32;
            }

            while (v32 < v31);
          }

          break;
        }
      }
    }

    v36 = *(v1 + 200);
    if (v36)
    {
      MemChunkFree(v36, 0);
      *(v1 + 200) = 0;
    }

    *(v1 + 208) = 0;
    DgnPrimArray<int>::copyArraySlice((v1 + 200), &v42, 0, v43);
    *(v1 + 216) = 0;
    v37 = *(v1 + 224);
    if (v37)
    {
      MemChunkFree(v37, 0);
      *(v1 + 224) = 0;
    }

    *(v1 + 232) = 0;
    DgnPrimArray<unsigned char>::copyArraySlice((v1 + 224), &v40, 0, v41);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v40);
    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  }

  return this;
}

void sub_262738E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void WordList::saveTwl(WordList *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v100);
  DgnTextFileWriter::openDgnTextFileWriter(v100, a2, 98, a3);
  v98 = 0;
  v99 = 0;
  DgnTextFile::legalDgnTextFileVersions(v100, sTWL_Versions, &v98);
  DgnTextFileWriter::setFileType(v100, "TextWordList", (v98 + 8 * (v99 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "NumberOfWords", *(this + 96));
  v6 = *(this + 90);
  if (v6)
  {
    v7 = 0;
    while (!*(*(this + 4) + 2 * *(*(this + 44) + 4 * v7)))
    {
      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 90);
        break;
      }
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "NumberOfPronlessWords", v8);
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "NumberOfPronIds", *(this + 72));
  v9 = *(this + 97);
  if (v9 >= 1)
  {
    v10 = v9 - 1;
    while (v10 >= v9 || !*(*(this + 13) + v10))
    {
      v11 = v10-- + 1;
      if (v11 <= 1)
      {
        LODWORD(v9) = 0;
        goto LABEL_18;
      }
    }

    LODWORD(v9) = v10 + 1;
LABEL_18:
    v12 = *(this + 72);
    goto LABEL_19;
  }

  v12 = *(this + 72);
  if (v9 != -1)
  {
LABEL_19:
    v13 = (v9 - v12);
    goto LABEL_20;
  }

  if (v12)
  {
    LODWORD(v9) = -1;
    goto LABEL_19;
  }

  v13 = 0;
LABEL_20:
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "NumberOfFreePronIds", v13);
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "NumberOfPronPredecessorSeedCategories", *(this + 98));
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "NumberOfPronSuccessorSeedCategories", *(this + 99));
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "StartOfUtterancePredecessorSeedCategory", *(this + 416));
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "EndOfUtteranceSuccessorSeedCategory", *(this + 417));
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "RootDeterminesPronPredecessorSeedCategory", *(this + 421));
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "RootDeterminesPronSuccessorSeedCategory", *(this + 422));
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "DefaultClientPronPredecessorSeedCategory", *(this + 419));
  DgnTextFileWriter::setHeaderFieldUnsigned(v100, "DefaultClientPronSuccessorSeedCategory", *(this + 420));
  DgnTextFileWriter::setHeaderFieldInteger(v100, "RequiredWordTagsVersion", *(this + 114));
  DgnTextFileWriter::setHeaderFieldInteger(v100, "OptionalWordTagsVersion", *(this + 115));
  if (*(this + 118))
  {
    v14 = *(this + 58);
  }

  else
  {
    v14 = &unk_26288C6A6;
  }

  DgnTextFileWriter::setHeaderField(v100, "RequiredTags", v14);
  if (*(this + 122))
  {
    v15 = *(this + 60);
  }

  else
  {
    v15 = &unk_26288C6A6;
  }

  DgnTextFileWriter::setHeaderField(v100, "OptionalTags", v15);
  v16 = &unk_26288C6A6;
  if (*(this + 126))
  {
    v17 = *(this + 62);
  }

  else
  {
    v17 = &unk_26288C6A6;
  }

  DgnTextFileWriter::setHeaderField(v100, "NewWordTag", v17);
  DgnString::DgnString(&v96);
  if (*(this + 80))
  {
    v19 = 0;
    do
    {
      if (v19)
      {
        DgnString::operator+=(&v96, ",");
      }

      v20 = *(*(this + 39) + 2 * v19);
      CollationName = "_IDENTITY";
      if (v20 != 65534)
      {
        CollationName = CollMgr::getCollationName(*this, v20, v18);
      }

      DgnString::operator+=(&v96, CollationName);
      ++v19;
    }

    while (v19 < *(this + 80));
  }

  if (v97)
  {
    v22 = v96;
  }

  else
  {
    v22 = &unk_26288C6A6;
  }

  DgnTextFileWriter::setHeaderField(v100, "AllowedCollations", v22);
  DgnString::~DgnString(&v96);
  v96 = 0;
  v97 = 0;
  v94 = 0;
  v95 = 0;
  DgnString::DgnString(&v92, "Type");
  v23 = v97;
  if (v97 == HIDWORD(v97))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v96, 1, 1);
    v23 = v97;
  }

  DgnString::DgnString(&v96[16 * v23], &v92);
  LODWORD(v97) = v97 + 1;
  DgnString::~DgnString(&v92);
  v24 = v95;
  if (v95 == HIDWORD(v95))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v94, 1, 1);
    v24 = v95;
  }

  *(v94 + 4 * v24) = 0;
  LODWORD(v95) = v24 + 1;
  v25 = v97;
  DgnString::DgnString(&v92, "WordName");
  v26 = v97;
  if (v97 == HIDWORD(v97))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v96, 1, 1);
    v26 = v97;
  }

  DgnString::DgnString(&v96[16 * v26], &v92);
  LODWORD(v97) = v97 + 1;
  DgnString::~DgnString(&v92);
  v27 = v95;
  if (v95 == HIDWORD(v95))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v94, 1, 1);
    v27 = v95;
  }

  *(v94 + 4 * v27) = 0;
  LODWORD(v95) = v27 + 1;
  v83 = v97;
  DgnString::DgnString(&v92, "UnsValue1");
  v28 = v97;
  if (v97 == HIDWORD(v97))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v96, 1, 1);
    v28 = v97;
  }

  DgnString::DgnString(&v96[16 * v28], &v92);
  LODWORD(v97) = v97 + 1;
  DgnString::~DgnString(&v92);
  v29 = v95;
  if (v95 == HIDWORD(v95))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v94, 1, 1);
    v29 = v95;
  }

  *(v94 + 4 * v29) = 3;
  LODWORD(v95) = v29 + 1;
  v82 = v97;
  DgnString::DgnString(&v92, "UnsValue2");
  v30 = v97;
  if (v97 == HIDWORD(v97))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v96, 1, 1);
    v30 = v97;
  }

  DgnString::DgnString(&v96[16 * v30], &v92);
  LODWORD(v97) = v97 + 1;
  DgnString::~DgnString(&v92);
  v31 = v95;
  if (v95 == HIDWORD(v95))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v94, 1, 1);
    v31 = v95;
  }

  *(v94 + 4 * v31) = 3;
  LODWORD(v95) = v31 + 1;
  v81 = v97;
  DgnString::DgnString(&v92, "UnsValue3");
  v32 = v97;
  if (v97 == HIDWORD(v97))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v96, 1, 1);
    v32 = v97;
  }

  DgnString::DgnString(&v96[16 * v32], &v92);
  LODWORD(v97) = v97 + 1;
  DgnString::~DgnString(&v92);
  v33 = v95;
  if (v95 == HIDWORD(v95))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v94, 1, 1);
    v33 = v95;
  }

  *(v94 + 4 * v33) = 3;
  LODWORD(v95) = v33 + 1;
  v80 = v97;
  DgnString::DgnString(&v92, "StrValue1");
  v34 = v97;
  if (v97 == HIDWORD(v97))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v96, 1, 1);
    v34 = v97;
  }

  DgnString::DgnString(&v96[16 * v34], &v92);
  LODWORD(v97) = v97 + 1;
  DgnString::~DgnString(&v92);
  v35 = v95;
  if (v95 == HIDWORD(v95))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v94, 1, 1);
    v35 = v95;
  }

  *(v94 + 4 * v35) = 0;
  LODWORD(v95) = v35 + 1;
  v79 = v97;
  DgnString::DgnString(&v92, "StrValue2");
  v36 = v97;
  if (v97 == HIDWORD(v97))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v96, 1, 1);
    v36 = v97;
  }

  DgnString::DgnString(&v96[16 * v36], &v92);
  LODWORD(v97) = v97 + 1;
  DgnString::~DgnString(&v92);
  v37 = v95;
  if (v95 == HIDWORD(v95))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v94, 1, 1);
    v37 = v95;
  }

  *(v94 + 4 * v37) = 0;
  LODWORD(v95) = v37 + 1;
  DgnTextFileWriter::setLineFieldFormat(v100, &v94, &v96);
  v92 = 0;
  v93 = 0;
  v90 = 0;
  v91 = 0;
  splitTagsString(this + 116, &v92);
  splitTagsString(this + 120, &v90);
  v38 = v93;
  v76 = v91;
  v39 = *(this + 98);
  if (v39)
  {
    v40 = 0;
    LODWORD(v41) = *(this + 99);
    do
    {
      if (v41)
      {
        v42 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldValue(v100, 0, "SeedTable");
          DgnTextFileWriter::setLineFieldValue(v100, v25, &unk_26288C6A6);
          DgnTextFileWriter::setLineFieldUnsignedValue(v100, v83, v40);
          DgnTextFileWriter::setLineFieldUnsignedValue(v100, v82, v42);
          DgnTextFileWriter::setLineFieldUnsignedValue(v100, v81, *(*(*(this + 50) + 16 * v40) + v42));
          DgnTextFileWriter::setLineFieldValue(v100, v80, &unk_26288C6A6);
          DgnTextFileWriter::setLineFieldValue(v100, v79, &unk_26288C6A6);
          DgnTextFileWriter::writeNextLine(v100);
          ++v42;
          v41 = *(this + 99);
        }

        while (v42 < v41);
        v39 = *(this + 98);
      }

      ++v40;
    }

    while (v40 < v39);
  }

  DgnString::DgnString(&v88);
  v86 = 0;
  v87 = 0;
  WordList::getAllByRootId(this, &v86);
  v43 = *(this + 97);
  if (v43)
  {
    v44 = 0;
    v77 = v38;
    do
    {
      if (*(*(this + 13) + v44))
      {
        if (v44 == *(*(this + 32) + 4 * v44))
        {
          v45 = &v86[16 * v44];
          if (*(v45 + 2))
          {
            v46 = 0;
            do
            {
              v47 = *(*v45 + 4 * v46);
              DgnTextFileWriter::setLineFieldValue(v100, 0, "Pron");
              DgnTextFileWriter::setLineFieldValue(v100, v25, (*(this + 28) + *(*(this + 25) + 4 * v47)));
              DgnTextFileWriter::setLineFieldUnsignedValue(v100, v83, v47);
              if (*(this + 98) < 2u)
              {
                v48 = 0;
              }

              else
              {
                v48 = *(*(this + 53) + v47);
              }

              DgnTextFileWriter::setLineFieldUnsignedValue(v100, v82, v48);
              if (*(this + 99) < 2u)
              {
                v49 = 0;
              }

              else
              {
                v49 = *(*(this + 55) + v47);
              }

              DgnTextFileWriter::setLineFieldUnsignedValue(v100, v81, v49);
              DgnString::DgnString(&v84);
              if ((*(*(this + 80) + ((v47 >> 3) & 0x1FFFFFFC)) >> v47))
              {
                v50 = "F";
              }

              else
              {
                v50 = "U";
              }

              DgnString::operator=(&v84, v50);
              if (v85)
              {
                v51 = v84;
              }

              else
              {
                v51 = &unk_26288C6A6;
              }

              DgnTextFileWriter::setLineFieldValue(v100, v80, v51);
              WordList::getHumanReadablePron(this, v47, &v88);
              if (v89)
              {
                v52 = v88;
              }

              else
              {
                v52 = &unk_26288C6A6;
              }

              DgnTextFileWriter::setLineFieldValue(v100, v79, v52);
              DgnTextFileWriter::writeNextLine(v100);
              DgnString::~DgnString(&v84);
              ++v46;
            }

            while (v46 < *(v45 + 2));
            v43 = *(this + 97);
            v38 = v77;
          }
        }
      }

      ++v44;
    }

    while (v44 < v43);
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v86);
  DgnString::~DgnString(&v88);
  DgnString::DgnString(&v88);
  DgnString::DgnString(&v86);
  v53 = *(this + 97);
  if (v53)
  {
    v54 = 0;
    v55 = 0;
    while (1)
    {
      if (!*(*(this + 13) + v55) || v55 != *(*(this + 32) + 4 * v55))
      {
        goto LABEL_114;
      }

      DgnTextFileWriter::setLineFieldValue(v100, 0, "ReqTags");
      DgnTextFileWriter::setLineFieldValue(v100, v25, (*(this + 28) + *(*(this + 25) + 4 * v55)));
      DgnTextFileWriter::setLineFieldUnsignedValue(v100, v83, 0);
      DgnTextFileWriter::setLineFieldUnsignedValue(v100, v82, 0);
      DgnTextFileWriter::setLineFieldUnsignedValue(v100, v81, 0);
      v56 = ((*(*(this + 78) + ((v55 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v55) & 1) != 0 ? "F" : "U";
      DgnString::DgnString(&v84, v56);
      v57 = v85 ? v84 : &unk_26288C6A6;
      DgnTextFileWriter::setLineFieldValue(v100, v80, v57);
      if (!v38)
      {
        break;
      }

      BitArray::getBitsFromRange((this + 576), &v86, v54, v38 + v54);
      tagBitsToTagString(&v86, &v92, &v88);
      if (!v89)
      {
        goto LABEL_112;
      }

      v58 = v88;
LABEL_113:
      DgnTextFileWriter::setLineFieldValue(v100, v79, v58);
      DgnTextFileWriter::writeNextLine(v100);
      DgnString::~DgnString(&v84);
      v53 = *(this + 97);
LABEL_114:
      ++v55;
      v54 += v38;
      if (v55 >= v53)
      {
        goto LABEL_115;
      }
    }

    LODWORD(v89) = 0;
LABEL_112:
    v58 = &unk_26288C6A6;
    goto LABEL_113;
  }

LABEL_115:
  BitArray::~BitArray(&v86);
  DgnString::~DgnString(&v88);
  if (v76)
  {
    DgnString::DgnString(&v88);
    DgnString::DgnString(&v86);
    DgnString::DgnString(&v84);
    v59 = *(this + 97);
    if (v59)
    {
      for (i = 0; i < v59; ++i)
      {
        if (*(*(this + 13) + i) && i == *(*(this + 32) + 4 * i) && i < *(this + 132) && *(*(this + 65) + 4 * i) != -1)
        {
          DgnTextFileWriter::setLineFieldValue(v100, 0, "OptTags");
          DgnTextFileWriter::setLineFieldValue(v100, v25, (*(this + 28) + *(*(this + 25) + 4 * i)));
          DgnTextFileWriter::setLineFieldUnsignedValue(v100, v83, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v100, v82, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v100, v81, 0);
          TagBitsAndStrings::getTagBits((this + 512), i, &v86);
          tagBitsToTagString(&v86, &v90, &v88);
          if (v89)
          {
            v61 = v88;
          }

          else
          {
            v61 = &unk_26288C6A6;
          }

          DgnTextFileWriter::setLineFieldValue(v100, v80, v61);
          DgnString::operator=(&v84, (*(this + 67) + *(*(this + 65) + 4 * i) + ((*(this + 129) + 7) >> 3)));
          if (v85)
          {
            v62 = v84;
          }

          else
          {
            v62 = &unk_26288C6A6;
          }

          DgnTextFileWriter::setLineFieldValue(v100, v79, v62);
          DgnTextFileWriter::writeNextLine(v100);
          v59 = *(this + 97);
        }
      }
    }

    DgnString::~DgnString(&v84);
    BitArray::~BitArray(&v86);
    DgnString::~DgnString(&v88);
  }

  v63 = *(this + 3);
  v88 = 0;
  v89 = 0;
  EnvMgr::getItemsWithEnv(v63, &v88);
  DgnString::DgnString(&v86);
  if (v89)
  {
    v64 = 0;
    do
    {
      v65 = *&v88[4 * v64];
      ItemEnvId = EnvMgr::getItemEnvId(v63, v65);
      NameIds = EnvMgr::getNameIds(v63, ItemEnvId);
      v78 = v64;
      v68 = v25;
      v69 = v16;
      Values = EnvMgr::getValues(v63, ItemEnvId);
      if (*(NameIds + 8))
      {
        v71 = Values;
        v72 = 0;
        v73 = 0;
        do
        {
          Name = EnvMgr::getName(v63, *(*NameIds + 2 * v73));
          DgnTextFile::convertToEnvValueFormat(*v71 + v72, &v86);
          DgnTextFileWriter::setLineFieldValue(v100, 0, "Env");
          DgnTextFileWriter::setLineFieldValue(v100, v68, (*(this + 28) + *(*(this + 25) + 4 * v65)));
          DgnTextFileWriter::setLineFieldUnsignedValue(v100, v83, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v100, v82, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v100, v81, 0);
          DgnTextFileWriter::setLineFieldValue(v100, v80, Name);
          if (v87)
          {
            v75 = v86;
          }

          else
          {
            v75 = v69;
          }

          DgnTextFileWriter::setLineFieldValue(v100, v79, v75);
          DgnTextFileWriter::writeNextLine(v100);
          ++v73;
          v72 += 16;
        }

        while (v73 < *(NameIds + 8));
      }

      v64 = v78 + 1;
      v16 = v69;
      v25 = v68;
    }

    while (v78 + 1 < v89);
  }

  DgnString::~DgnString(&v86);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v88);
  DgnArray<DgnString>::releaseAll(&v90);
  DgnArray<DgnString>::releaseAll(&v92);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v94);
  DgnArray<DgnString>::releaseAll(&v96);
  DgnIArray<Utterance *>::~DgnIArray(&v98);
  DgnTextFileWriter::~DgnTextFileWriter(v100);
}

void sub_262739D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a25);
  DgnArray<DgnString>::releaseAll(&a27);
  DgnIArray<Utterance *>::~DgnIArray(&a29);
  DgnTextFileWriter::~DgnTextFileWriter(va);
  _Unwind_Resume(a1);
}

uint64_t WordList::getAllByRootId(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= 1)
  {
    v5 = 16 * v4 - 16;
    do
    {
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v5);
      v5 -= 16;
    }

    while (v5 != -16);
  }

  v6 = 0;
  *(a2 + 8) = 0;
  v7 = *(a1 + 388);
  v8 = *(a2 + 12);
  if (v7 <= v8 || (DgnArray<DgnPrimArray<double>>::reallocElts(a2, v7 - v8, 0), v6 = *(a2 + 8), v6 <= v7))
  {
    if (v6 < v7)
    {
      v11 = v7 - v6;
      v12 = 16 * v6;
      do
      {
        v13 = (*a2 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v6 > v7)
  {
    v9 = v6;
    v10 = 16 * v6 - 16;
    do
    {
      --v9;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v7);
  }

  *(a2 + 8) = v7;
  if (*(a1 + 272) == 1 && *(a1 + 274) == -2)
  {
    v14 = a1 + 280;
  }

  else
  {
    v14 = *(*(a1 + 296) + 524272);
  }

  v21 = 0;
  v22 = 0;
  if (*(v14 + 8))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0xFFFFFFLL;
    do
    {
      v18 = *(*v14 + 4 * v16);
      v19 = *(*(a1 + 256) + 4 * v18);
      if (v19 != v17 && v15)
      {
        DgnPrimArray<int>::copyArraySlice((*a2 + 16 * v17), &v21, 0, v15);
        v15 = 0;
        LODWORD(v22) = 0;
      }

      if (v15 == HIDWORD(v22))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
        v15 = v22;
      }

      *(v21 + 4 * v15) = v18;
      v15 = v22 + 1;
      LODWORD(v22) = v22 + 1;
      ++v16;
      v17 = v19;
    }

    while (v16 < *(v14 + 8));
    if (v15)
    {
      DgnPrimArray<int>::copyArraySlice((*a2 + 16 * v19), &v21, 0, v15);
    }
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
}

uint64_t WordList::getPronPredecessorSeedCategory(WordList *this, unsigned int a2)
{
  if (*(this + 98) < 2u)
  {
    return 0;
  }

  else
  {
    return *(*(this + 53) + a2);
  }
}

uint64_t WordList::getPronSuccessorSeedCategory(WordList *this, unsigned int a2)
{
  if (*(this + 99) < 2u)
  {
    return 0;
  }

  else
  {
    return *(*(this + 55) + a2);
  }
}

uint64_t WordList::getHumanReadablePron(WordList *this, unsigned int a2, DgnString *a3)
{
  v6 = 0;
  v7 = 0;
  WordList::getPronWithWB(this, a2, &v6);
  *(a3 + 2) = 0;
  if (v7)
  {
    WordList::phonemesToStr(this, &v6, a3);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v6);
}

DgnString *tagBitsToTagString(uint64_t a1, void *a2, DgnString *a3)
{
  *(a3 + 2) = 0;
  v10 = a1;
  v9 = *(a1 + 8);
  v8 = 0;
  result = BitArrayIterator::scanForNextSetBitOrStop(&v8);
  if (HIDWORD(v8) < v9)
  {
    v6 = result;
    v7 = &unk_26288C6A6;
    do
    {
      DgnString::operator+=(a3, v7);
      DgnString::operator+=(a3, *a2 + 16 * v6);
      ++HIDWORD(v8);
      result = BitArrayIterator::scanForNextSetBitOrStop(&v8);
      v6 = result;
      v7 = ",";
    }

    while (HIDWORD(v8) < v9);
  }

  if (*(a3 + 2) <= 1u)
  {
    return DgnString::operator=(a3, "0");
  }

  return result;
}

void (***WordList::saveBinary(WordList *this, DFile *a2, DFileChecksums *a3, uint64_t a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x2Fu, a4, "MRWORD!?", 24, 43);
  v10 = 0;
  writeObject<unsigned short>(v7, this + 32, &v10);
  writeObject<unsigned int>(v7, this + 48, &v10);
  writeObject<unsigned short>(v7, this + 72, &v10);
  writeObject(v7, this + 88, &v10);
  writeObject<unsigned char>(v7, this + 104, &v10);
  writeObject<unsigned short>(v7, this + 120, &v10);
  writeObject<unsigned short>(v7, this + 136, &v10);
  writeObject<unsigned int>(v7, this + 200, &v10);
  writeObject<char>(v7, this + 224, &v10);
  writeObject<unsigned int>(v7, this + 240, &v10);
  writeObject<unsigned int>(v7, this + 256, &v10);
  DgnCollArray<unsigned int,WordList>::writeObject(this + 272, v7, &v10);
  PrefiltererWordIdPronCollArray::writeObject((this + 352), v7, &v10);
  writeObject(v7, this + 94, &v10);
  writeObject(v7, this + 95, &v10);
  writeObject(v7, this + 96, &v10);
  writeObject(v7, this + 97, &v10);
  writeObject(v7, this + 98, &v10);
  writeObject(v7, this + 99, &v10);
  writeObject<DgnPrimArray<BOOL>>(v7, this + 400, &v10);
  writeObject(v7, this + 416, &v10);
  writeObject(v7, this + 417, &v10);
  writeObject(v7, this + 418, &v10);
  writeObject(v7, this + 419, &v10);
  writeObject(v7, this + 420, &v10);
  writeObject(v7, this + 421, &v10);
  writeObject(v7, this + 422, &v10);
  writeObject<unsigned char>(v7, this + 424, &v10);
  writeObject<unsigned char>(v7, this + 440, &v10);
  writeObject(v7, this + 624, &v10);
  writeObject(v7, this + 640, &v10);
  writeObject(v7, this + 114, &v10);
  writeObject(v7, this + 115, &v10);
  writeObject(v7, this + 464, &v10);
  writeObject(v7, this + 480, &v10);
  writeObject(v7, this + 496, &v10);
  writeObject(v7, this + 576, &v10);
  writeObject(v7, (this + 512), &v10);
  EnvMgr::saveEnvMgrToStream(*(this + 3), v7, &v10, 1, 0);
  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 47, v10);
  return DgnDelete<DgnStream>(v7);
}

uint64_t writeObject<DgnPrimArray<BOOL>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<BOOL>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void WordList::saveWordList(WordList *this, DFile *a2, DFileChecksums *a3, int a4, DFileChecksums *a5)
{
  if (a4)
  {
    WordList::saveTwl(this, a2, a5);
  }

  else
  {
    WordList::saveBinary(this, a2, a3, a5);
  }
}

void WordList::printSize(WordList *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2279);
  if (v268)
  {
    v13 = v267;
  }

  else
  {
    v13 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, a3, &unk_26288C6A6, a3, &unk_26288C6A6, v13);
  DgnString::~DgnString(&v267);
  if (a2 != -1)
  {
    xlprintf("%d ", v14, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v14, a3, &unk_26288C6A6);
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
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2280);
  if (v268)
  {
    v19 = v267;
  }

  else
  {
    v19 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v18, (a3 + 1), &unk_26288C6A6, (34 - a3), (34 - a3), v19, v15, v15, 0);
  DgnString::~DgnString(&v267);
  *a4 += v15;
  *a5 += v15;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2281);
  if (v268)
  {
    v22 = v267;
  }

  else
  {
    v22 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, (a3 + 1), &unk_26288C6A6, (34 - a3), (34 - a3), v22, v20, v20, 0);
  DgnString::~DgnString(&v267);
  *a4 += v20;
  *a5 += v20;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2282);
  if (v268)
  {
    v25 = v267;
  }

  else
  {
    v25 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, (a3 + 1), &unk_26288C6A6, (34 - a3), (34 - a3), v25, v23, v23, 0);
  DgnString::~DgnString(&v267);
  *a4 += v23;
  *a5 += v23;
  v26 = *(this + 3);
  if (v26)
  {
    v266 = 0;
    v267 = 0;
    v265 = 0;
    EnvMgr::printSize(v26, 0xFFFFFFFFLL, (a3 + 1), &v267, &v266, &v265);
    *a4 += v267;
    *a5 += v266;
    *a6 += v265;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v27 = 4;
  }

  else
  {
    v27 = 8;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2284);
  if (v268)
  {
    v29 = v267;
  }

  else
  {
    v29 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, (a3 + 1), &unk_26288C6A6, (34 - a3), (34 - a3), v29, v27, v27, 0);
  v264 = a3;
  DgnString::~DgnString(&v267);
  *a4 += v27;
  *a5 += v27;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v30 = 12;
  }

  else
  {
    v30 = 16;
  }

  v31 = *(this + 10);
  v32 = *(this + 11);
  if (v32 >= v31)
  {
    v33 = 0;
    if (v31 > 0)
    {
      v30 += 2 * (v31 - 1) + 2;
    }

    v34 = v30 + 2 * (v32 - v31);
  }

  else
  {
    v33 = 2 * v31;
    v34 = v30;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v36 = v267;
  }

  else
  {
    v36 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v16, &unk_26288C6A6, v17, v17, v36, v34, v30, v33);
  DgnString::~DgnString(&v267);
  *a4 += v34;
  *a5 += v30;
  *a6 += v33;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 12;
  }

  else
  {
    v37 = 16;
  }

  v38 = *(this + 14);
  v39 = *(this + 15);
  if (v39 >= v38)
  {
    v40 = 0;
    if (v38 > 0)
    {
      v37 += 4 * (v38 - 1) + 4;
    }

    v41 = v37 + 4 * (v39 - v38);
  }

  else
  {
    v40 = 4 * v38;
    v41 = v37;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v43 = v267;
  }

  else
  {
    v43 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v42, v16, &unk_26288C6A6, v17, v17, v43, v41, v37, v40);
  DgnString::~DgnString(&v267);
  *a4 += v41;
  *a5 += v37;
  *a6 += v40;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v45 = v267;
  }

  else
  {
    v45 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v16, &unk_26288C6A6, v17, v17, v45, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v46 = 12;
  }

  else
  {
    v46 = 16;
  }

  v47 = *(this + 20);
  v48 = *(this + 21);
  if (v48 >= v47)
  {
    v49 = 0;
    if (v47 > 0)
    {
      v46 += 2 * (v47 - 1) + 2;
    }

    v50 = v46 + 2 * (v48 - v47);
  }

  else
  {
    v49 = 2 * v47;
    v50 = v46;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v52 = v267;
  }

  else
  {
    v52 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v16, &unk_26288C6A6, v17, v17, v52, v50, v46, v49);
  DgnString::~DgnString(&v267);
  *a4 += v50;
  *a5 += v46;
  *a6 += v49;
  v53 = BitArray::sizeObject(this + 88, 0);
  v54 = BitArray::sizeObject(this + 88, 1);
  v55 = BitArray::sizeObject(this + 88, 3);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v57 = v267;
  }

  else
  {
    v57 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v16, &unk_26288C6A6, v17, v17, v57, v53, v54, v55);
  DgnString::~DgnString(&v267);
  *a4 += v53;
  *a5 += v54;
  *a6 += v55;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v58 = 12;
  }

  else
  {
    v58 = 16;
  }

  v59 = *(this + 28);
  v60 = *(this + 29);
  v61 = v60 >= v59;
  v62 = v60 - v59;
  if (v61)
  {
    if (v59 > 0)
    {
      v63 = (v59 - 1) + v58 + 1;
    }

    else
    {
      v63 = v58;
    }

    v58 = v63 + v62;
    v59 = 0;
  }

  else
  {
    v63 = v58;
  }

  v64 = v59;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v66 = v267;
  }

  else
  {
    v66 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v16, &unk_26288C6A6, v17, v17, v66, v58, v63, v64);
  DgnString::~DgnString(&v267);
  *a4 += v58;
  *a5 += v63;
  *a6 += v64;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v67 = 12;
  }

  else
  {
    v67 = 16;
  }

  v68 = *(this + 32);
  v69 = *(this + 33);
  if (v69 >= v68)
  {
    v70 = 0;
    if (v68 > 0)
    {
      v67 += 2 * (v68 - 1) + 2;
    }

    v71 = v67 + 2 * (v69 - v68);
  }

  else
  {
    v70 = 2 * v68;
    v71 = v67;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v73 = v267;
  }

  else
  {
    v73 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v16, &unk_26288C6A6, v17, v17, v73, v71, v67, v70);
  DgnString::~DgnString(&v267);
  *a4 += v71;
  *a5 += v67;
  *a6 += v70;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v74 = 12;
  }

  else
  {
    v74 = 16;
  }

  v75 = *(this + 36);
  v76 = *(this + 37);
  if (v76 >= v75)
  {
    v77 = 0;
    if (v75 > 0)
    {
      v74 += 2 * (v75 - 1) + 2;
    }

    v78 = v74 + 2 * (v76 - v75);
  }

  else
  {
    v77 = 2 * v75;
    v78 = v74;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v80 = v267;
  }

  else
  {
    v80 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v16, &unk_26288C6A6, v17, v17, v80, v78, v74, v77);
  DgnString::~DgnString(&v267);
  *a4 += v78;
  *a5 += v74;
  *a6 += v77;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v81 = 12;
  }

  else
  {
    v81 = 16;
  }

  v82 = *(this + 40);
  v83 = *(this + 41);
  if (v83 >= v82)
  {
    v84 = 0;
    if (v82 > 0)
    {
      v81 += 2 * (v82 - 1) + 2;
    }

    v85 = v81 + 2 * (v83 - v82);
  }

  else
  {
    v84 = 2 * v82;
    v85 = v81;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v87 = v267;
  }

  else
  {
    v87 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v86, v16, &unk_26288C6A6, v17, v17, v87, v85, v81, v84);
  DgnString::~DgnString(&v267);
  *a4 += v85;
  *a5 += v81;
  *a6 += v84;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v88 = 12;
  }

  else
  {
    v88 = 16;
  }

  v89 = *(this + 44);
  v90 = *(this + 45);
  if (v90 >= v89)
  {
    v91 = 0;
    if (v89 > 0)
    {
      v88 += 2 * (v89 - 1) + 2;
    }

    v92 = v88 + 2 * (v90 - v89);
  }

  else
  {
    v91 = 2 * v89;
    v92 = v88;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v94 = v267;
  }

  else
  {
    v94 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v93, v16, &unk_26288C6A6, v17, v17, v94, v92, v88, v91);
  DgnString::~DgnString(&v267);
  *a4 += v92;
  *a5 += v88;
  *a6 += v91;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v95 = 12;
  }

  else
  {
    v95 = 16;
  }

  v96 = *(this + 48);
  v97 = *(this + 49);
  if (v97 >= v96)
  {
    v98 = 0;
    if (v96 > 0)
    {
      v95 += 2 * (v96 - 1) + 2;
    }

    v99 = v95 + 2 * (v97 - v96);
  }

  else
  {
    v98 = 2 * v96;
    v99 = v95;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v101 = v267;
  }

  else
  {
    v101 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v100, v16, &unk_26288C6A6, v17, v17, v101, v99, v95, v98);
  DgnString::~DgnString(&v267);
  *a4 += v99;
  *a5 += v95;
  *a6 += v98;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v102 = 12;
  }

  else
  {
    v102 = 16;
  }

  v103 = *(this + 52);
  v104 = *(this + 53);
  if (v104 >= v103)
  {
    v105 = 0;
    if (v103 > 0)
    {
      v102 += 4 * (v103 - 1) + 4;
    }

    v106 = v102 + 4 * (v104 - v103);
  }

  else
  {
    v105 = 4 * v103;
    v106 = v102;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v108 = v267;
  }

  else
  {
    v108 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v107, v16, &unk_26288C6A6, v17, v17, v108, v106, v102, v105);
  DgnString::~DgnString(&v267);
  *a4 += v106;
  *a5 += v102;
  *a6 += v105;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v110 = v267;
  }

  else
  {
    v110 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v109, v16, &unk_26288C6A6, v17, v17, v110, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v111 = 12;
  }

  else
  {
    v111 = 16;
  }

  v112 = *(this + 58);
  v113 = *(this + 59);
  v61 = v113 >= v112;
  v114 = v113 - v112;
  if (v61)
  {
    if (v112 > 0)
    {
      v115 = (v112 - 1) + v111 + 1;
    }

    else
    {
      v115 = v111;
    }

    v111 = v115 + v114;
    v112 = 0;
  }

  else
  {
    v115 = v111;
  }

  v116 = v112;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v118 = v267;
  }

  else
  {
    v118 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v16, &unk_26288C6A6, v17, v17, v118, v111, v115, v116);
  DgnString::~DgnString(&v267);
  *a4 += v111;
  *a5 += v115;
  *a6 += v116;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v119 = 12;
  }

  else
  {
    v119 = 16;
  }

  v120 = *(this + 62);
  v121 = *(this + 63);
  if (v121 >= v120)
  {
    v122 = 0;
    if (v120 > 0)
    {
      v119 += 4 * (v120 - 1) + 4;
    }

    v123 = v119 + 4 * (v121 - v120);
  }

  else
  {
    v122 = 4 * v120;
    v123 = v119;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v125 = v267;
  }

  else
  {
    v125 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v124, v16, &unk_26288C6A6, v17, v17, v125, v123, v119, v122);
  DgnString::~DgnString(&v267);
  *a4 += v123;
  *a5 += v119;
  *a6 += v122;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v126 = 12;
  }

  else
  {
    v126 = 16;
  }

  v127 = *(this + 66);
  v128 = *(this + 67);
  if (v128 >= v127)
  {
    v129 = 0;
    if (v127 > 0)
    {
      v126 += 4 * (v127 - 1) + 4;
    }

    v130 = v126 + 4 * (v128 - v127);
  }

  else
  {
    v129 = 4 * v127;
    v130 = v126;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v132 = v267;
  }

  else
  {
    v132 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v131, v16, &unk_26288C6A6, v17, v17, v132, v130, v126, v129);
  DgnString::~DgnString(&v267);
  *a4 += v130;
  *a5 += v126;
  *a6 += v129;
  v133 = DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(this + 272, 0);
  v134 = DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(this + 272, 1);
  v135 = DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::sizeObject(this + 272, 3);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v137 = v267;
  }

  else
  {
    v137 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v136, v16, &unk_26288C6A6, v17, v17, v137, v133, v134, v135);
  DgnString::~DgnString(&v267);
  *a4 += v133;
  *a5 += v134;
  *a6 += v135;
  v138 = PrefiltererWordIdPronCollArray::sizeObject(this + 352, 0);
  v139 = PrefiltererWordIdPronCollArray::sizeObject(this + 352, 1);
  v140 = PrefiltererWordIdPronCollArray::sizeObject(this + 352, 3);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v142 = v267;
  }

  else
  {
    v142 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v141, v16, &unk_26288C6A6, v17, v17, v142, v138, v139, v140);
  DgnString::~DgnString(&v267);
  *a4 += v138;
  *a5 += v139;
  *a6 += v140;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v144 = v267;
  }

  else
  {
    v144 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v16, &unk_26288C6A6, v17, v17, v144, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v146 = v267;
  }

  else
  {
    v146 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v145, v16, &unk_26288C6A6, v17, v17, v146, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v148 = v267;
  }

  else
  {
    v148 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v147, v16, &unk_26288C6A6, v17, v17, v148, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v150 = v267;
  }

  else
  {
    v150 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v149, v16, &unk_26288C6A6, v17, v17, v150, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v151 = 12;
  }

  else
  {
    v151 = 16;
  }

  v152 = *(this + 150);
  v153 = *(this + 151);
  if (v153 >= v152)
  {
    v154 = 0;
    if (v152 > 0)
    {
      v151 += 2 * (v152 - 1) + 2;
    }

    v155 = v151 + 2 * (v153 - v152);
  }

  else
  {
    v154 = 2 * v152;
    v155 = v151;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v157 = v267;
  }

  else
  {
    v157 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v156, v16, &unk_26288C6A6, v17, v17, v157, v155, v151, v154);
  DgnString::~DgnString(&v267);
  *a4 += v155;
  *a5 += v151;
  *a6 += v154;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v158 = 12;
  }

  else
  {
    v158 = 16;
  }

  v159 = *(this + 154);
  v160 = *(this + 155);
  if (v160 >= v159)
  {
    v161 = 0;
    if (v159 > 0)
    {
      v158 += 2 * (v159 - 1) + 2;
    }

    v162 = v158 + 2 * (v160 - v159);
  }

  else
  {
    v161 = 2 * v159;
    v162 = v158;
  }

  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v164 = v267;
  }

  else
  {
    v164 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v16, &unk_26288C6A6, v17, v17, v164, v162, v158, v161);
  DgnString::~DgnString(&v267);
  *a4 += v162;
  *a5 += v158;
  *a6 += v161;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v166 = v267;
  }

  else
  {
    v166 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v165, v16, &unk_26288C6A6, v17, v17, v166, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v168 = v267;
  }

  else
  {
    v168 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v167, v16, &unk_26288C6A6, v17, v17, v168, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  v169 = sizeObject<DgnPrimArray<unsigned char>>(this + 400, 0);
  v170 = sizeObject<DgnPrimArray<unsigned char>>(this + 400, 1);
  v267 = 0;
  v268 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v267);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v172 = v267;
  }

  else
  {
    v172 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v16, &unk_26288C6A6, v17, v17, v172, v169, v170, 0);
  DgnString::~DgnString(&v267);
  *a4 += v169;
  *a5 += v170;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v174 = v267;
  }

  else
  {
    v174 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v173, v16, &unk_26288C6A6, v17, v17, v174, 1, 1, 0);
  DgnString::~DgnString(&v267);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v176 = v267;
  }

  else
  {
    v176 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v175, v16, &unk_26288C6A6, v17, v17, v176, 1, 1, 0);
  DgnString::~DgnString(&v267);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v178 = v267;
  }

  else
  {
    v178 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v177, v16, &unk_26288C6A6, v17, v17, v178, 1, 1, 0);
  DgnString::~DgnString(&v267);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v180 = v267;
  }

  else
  {
    v180 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v179, v16, &unk_26288C6A6, v17, v17, v180, 1, 1, 0);
  DgnString::~DgnString(&v267);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v182 = v267;
  }

  else
  {
    v182 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v181, v16, &unk_26288C6A6, v17, v17, v182, 1, 1, 0);
  DgnString::~DgnString(&v267);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v184 = v267;
  }

  else
  {
    v184 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v183, v16, &unk_26288C6A6, v17, v17, v184, 1, 1, 0);
  DgnString::~DgnString(&v267);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v186 = v267;
  }

  else
  {
    v186 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v185, v16, &unk_26288C6A6, v17, v17, v186, 1, 1, 0);
  DgnString::~DgnString(&v267);
  ++*a4;
  ++*a5;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v187 = 12;
  }

  else
  {
    v187 = 16;
  }

  v188 = *(this + 108);
  v189 = *(this + 109);
  v61 = v189 >= v188;
  v190 = v189 - v188;
  if (v61)
  {
    if (v188 > 0)
    {
      v191 = (v188 - 1) + v187 + 1;
    }

    else
    {
      v191 = v187;
    }

    v187 = v191 + v190;
    v188 = 0;
  }

  else
  {
    v191 = v187;
  }

  v192 = v188;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v194 = v267;
  }

  else
  {
    v194 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v193, v16, &unk_26288C6A6, v17, v17, v194, v187, v191, v192);
  DgnString::~DgnString(&v267);
  *a4 += v187;
  *a5 += v191;
  *a6 += v192;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v195 = 12;
  }

  else
  {
    v195 = 16;
  }

  v196 = *(this + 112);
  v197 = *(this + 113);
  v61 = v197 >= v196;
  v198 = v197 - v196;
  if (v61)
  {
    if (v196 > 0)
    {
      v199 = (v196 - 1) + v195 + 1;
    }

    else
    {
      v199 = v195;
    }

    v195 = v199 + v198;
    v196 = 0;
  }

  else
  {
    v199 = v195;
  }

  v200 = v196;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v202 = v267;
  }

  else
  {
    v202 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v201, v16, &unk_26288C6A6, v17, v17, v202, v195, v199, v200);
  DgnString::~DgnString(&v267);
  *a4 += v195;
  *a5 += v199;
  *a6 += v200;
  v203 = BitArray::sizeObject(this + 624, 0);
  v204 = BitArray::sizeObject(this + 624, 1);
  v205 = BitArray::sizeObject(this + 624, 3);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v207 = v267;
  }

  else
  {
    v207 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v206, v16, &unk_26288C6A6, v17, v17, v207, v203, v204, v205);
  DgnString::~DgnString(&v267);
  *a4 += v203;
  *a5 += v204;
  *a6 += v205;
  v208 = BitArray::sizeObject(this + 640, 0);
  v209 = BitArray::sizeObject(this + 640, 1);
  v210 = BitArray::sizeObject(this + 640, 3);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v212 = v267;
  }

  else
  {
    v212 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v211, v16, &unk_26288C6A6, v17, v17, v212, v208, v209, v210);
  DgnString::~DgnString(&v267);
  *a4 += v208;
  *a5 += v209;
  *a6 += v210;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v214 = v267;
  }

  else
  {
    v214 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v213, v16, &unk_26288C6A6, v17, v17, v214, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v216 = v267;
  }

  else
  {
    v216 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v215, v16, &unk_26288C6A6, v17, v17, v216, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  v217 = sizeObject(this + 464, 0);
  v218 = sizeObject(this + 464, 1);
  v219 = sizeObject(this + 464, 3);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v221 = v267;
  }

  else
  {
    v221 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v220, v16, &unk_26288C6A6, v17, v17, v221, v217, v218, v219);
  DgnString::~DgnString(&v267);
  *a4 += v217;
  *a5 += v218;
  *a6 += v219;
  v222 = sizeObject(this + 480, 0);
  v223 = sizeObject(this + 480, 1);
  v224 = sizeObject(this + 480, 3);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v226 = v267;
  }

  else
  {
    v226 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v225, v16, &unk_26288C6A6, v17, v17, v226, v222, v223, v224);
  DgnString::~DgnString(&v267);
  *a4 += v222;
  *a5 += v223;
  *a6 += v224;
  v227 = sizeObject(this + 496, 0);
  v228 = sizeObject(this + 496, 1);
  v229 = sizeObject(this + 496, 3);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v231 = v267;
  }

  else
  {
    v231 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v230, v16, &unk_26288C6A6, v17, v17, v231, v227, v228, v229);
  DgnString::~DgnString(&v267);
  *a4 += v227;
  *a5 += v228;
  *a6 += v229;
  v232 = BitArray::sizeObject(this + 576, 0);
  v233 = BitArray::sizeObject(this + 576, 1);
  v234 = BitArray::sizeObject(this + 576, 3);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v236 = v267;
  }

  else
  {
    v236 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v235, v16, &unk_26288C6A6, v17, v17, v236, v232, v233, v234);
  DgnString::~DgnString(&v267);
  *a4 += v232;
  *a5 += v233;
  *a6 += v234;
  v237 = 12;
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v237 = 16;
  }

  v238 = *(this + 132);
  v239 = *(this + 133);
  v240 = v237;
  if (v239 >= v238)
  {
    v241 = v237 + 4 * (v238 - 1) + 4;
    if (v238 <= 0)
    {
      v241 = v237;
    }

    v240 = v241 + 4 * (v239 - v238);
  }

  v242 = v240 + 4;
  v243 = *(this + 136);
  v244 = *(this + 137);
  v245 = v237;
  if (v244 >= v243)
  {
    if (v243 > 0)
    {
      v246 = (v243 - 1) + v237 + 1;
    }

    else
    {
      v246 = v237;
    }

    v245 = v246 + v244 - v243;
  }

  v247 = v242 + v245;
  v248 = v237;
  if (v239 >= v238)
  {
    v248 = v237 + 4 * (v238 - 1) + 4;
    if (v238 <= 0)
    {
      v248 = v237;
    }
  }

  v249 = v248 + 4;
  if (v244 >= v243)
  {
    if (v243 > 0)
    {
      v237 += (v243 - 1) + 1;
    }

    v243 = 0;
  }

  v250 = v249 + v237;
  if (v239 >= v238)
  {
    v251 = 0;
  }

  else
  {
    v251 = 4 * v238;
  }

  v252 = v251 + v243;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v254 = v267;
  }

  else
  {
    v254 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v253, v16, &unk_26288C6A6, v17, v17, v254, v247, v250, v252);
  DgnString::~DgnString(&v267);
  *a4 += v247;
  *a5 += v250;
  *a6 += v252;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v256 = v267;
  }

  else
  {
    v256 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v255, v16, &unk_26288C6A6, v17, v17, v256, 4, 4, 0);
  DgnString::~DgnString(&v267);
  *a4 += 4;
  *a5 += 4;
  v257 = BitArray::sizeObject(this + 560, 0);
  v258 = BitArray::sizeObject(this + 560, 1);
  v259 = BitArray::sizeObject(this + 560, 3);
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2286);
  if (v268)
  {
    v261 = v267;
  }

  else
  {
    v261 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v260, v16, &unk_26288C6A6, v17, v17, v261, v257, v258, v259);
  DgnString::~DgnString(&v267);
  *a4 += v257;
  *a5 += v258;
  *a6 += v259;
  getShipObjectSizeDescription(&v267, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2287);
  if (v268)
  {
    v263 = v267;
  }

  else
  {
    v263 = &unk_26288C6A6;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v262, v264, &unk_26288C6A6, (35 - v264), (35 - v264), v263, *a4, *a5, *a6);
  DgnString::~DgnString(&v267);
}

void sub_26273C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

unint64_t WordList::lookupAll(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  v18[0] = a2;
  *(a3 + 8) = 0;
  v8 = *a1;
  v18[1] = a1;
  v18[2] = v8;
  v19 = -2;
  v20 = 0;
  if (*(a1 + 272) == 1 && *(a1 + 137) == -2)
  {
    v9 = a1 + 35;
  }

  else
  {
    v9 = *(a1[37] + 524272);
  }

  result = DgnPrimArray<unsigned int>::searchFirstEqual(v9, 0, *(v9 + 2), v18, WordIdCollSearchCmp);
  if (result == -1 || result >= *(v9 + 2))
  {
    v12 = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = result;
    v14 = *(*v9 + 4 * result);
    do
    {
      v15 = *(*v9 + 4 * v13);
      if (*(a1 + 97) <= v15 || !*(a1[13] + v15) || *(a1[25] + 4 * v15) != *(a1[25] + 4 * v14))
      {
        break;
      }

      v16 = *(a3 + 8);
      if (v16 == *(a3 + 12))
      {
        result = DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
        v16 = *(a3 + 8);
      }

      *(*a3 + 4 * v16) = v15;
      ++*(a3 + 8);
      if ((*(a1[80] + ((v15 >> 3) & 0x1FFFFFFC)) & (1 << v15)) != 0)
      {
        ++v11;
      }

      else
      {
        ++v12;
      }

      ++v13;
    }

    while (v13 < *(v9 + 2));
  }

  if (a4)
  {
    *a4 = v11;
  }

  if (a5)
  {
    *a5 = v12;
  }

  return result;
}

uint64_t WordList::lookupAllClientAddedProns(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  WordList::lookupAll(a1, a2, &v10, 0, 0);
  v5 = v11;
  if (v11)
  {
    v6 = 0;
    do
    {
      v7 = *(v10 + 4 * v6);
      if (((*(a1[80] + ((v7 >> 3) & 0x1FFFFFFC)) >> v7) & 1) == 0)
      {
        v8 = *(a3 + 8);
        if (v8 == *(a3 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
          v8 = *(a3 + 8);
        }

        *(*a3 + 4 * v8) = v7;
        ++*(a3 + 8);
        v5 = v11;
      }

      ++v6;
    }

    while (v6 < v5);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v10);
}

uint64_t *WordList::getAllGuessedWordsByOptionalTag(uint64_t *this, uint64_t a2)
{
  v3 = this;
  *(a2 + 8) = 0;
  if (*(this + 272) == 1 && *(this + 137) == -2)
  {
    v4 = this + 35;
  }

  else
  {
    v4 = *(this[37] + 524272);
  }

  if (*(v4 + 2))
  {
    v5 = 0;
    do
    {
      v6 = *(*v4 + 4 * v5);
      if (*(v3 + 528) > v6 && *(*(v3 + 520) + 4 * v6) != -1)
      {
        this = WordList::isGuessedWordByOptionalTag(v3, *(*v4 + 4 * v5));
        if (this)
        {
          v7 = *(a2 + 8);
          if (v7 == *(a2 + 12))
          {
            this = DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
            v7 = *(a2 + 8);
          }

          *(*a2 + 4 * v7) = v6;
          ++*(a2 + 8);
        }
      }

      ++v5;
    }

    while (v5 < *(v4 + 2));
  }

  return this;
}

uint64_t WordList::numAltProns(WordList *this, const char *a2)
{
  v4 = 0;
  v5 = 0;
  WordList::lookupAll(this, a2, &v4, 0, 0);
  v2 = v5;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v4);
  return v2;
}

void WordList::getWordsWithPrefix(uint64_t a1, unsigned int a2, char *a3, char *a4, uint64_t a5, BOOL *a6, double a7)
{
  if (a2 != 65534 && (a7 = DgnCollArray<unsigned int,WordList>::checkCollIdExposed(a1 + 272, a2), a2 == 0xFFFF) || *(a1 + 272) == 1 && *(a1 + 274) == a2)
  {
    v13 = a1 + 280;
  }

  else
  {
    v13 = *(*(a1 + 296) + 8 * a2);
  }

  WordList::getWordsWithPrefix(a1, v13, a2, a3, a4, a5, a6, a7);
}

void WordList::getWordsWithPrefix(uint64_t a1, uint64_t a2, unsigned int a3, char *a4, char *a5, uint64_t a6, BOOL *a7, double a8)
{
  if (!*a4)
  {
    if (*a5)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2538, "word/wordlist", 75, "%s", &errStr_word_wordlist_E_EMPTY_PREFIX1_WITH_NONEMPTY_PREFIX2);
    }

    v22 = *(a2 + 8);
    if (v22)
    {
      for (i = 0; i < v22; ++i)
      {
        v24 = *(*a2 + 4 * i);
        if (*(*(a1 + 256) + 4 * v24) == v24)
        {
          v25 = *(a6 + 8);
          if (v25 == *(a6 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
            v25 = *(a6 + 8);
          }

          *(*a6 + 4 * v25) = v24;
          ++*(a6 + 8);
          v22 = *(a2 + 8);
        }
      }
    }

    goto LABEL_46;
  }

  if ((CollMgr::collationCanGetWordsWithPrefix(*a1, a3, a8) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2552, "word/wordlist", 13, "%s", &errStr_word_wordlist_E_BAD_COLLATION);
  }

  v15 = *a1;
  v52[0] = a4;
  v52[1] = a1;
  v52[2] = v15;
  v53 = a3;
  v54 = 1;
  v51 = 0;
  EqualWithLastEqualBounds = DgnPrimArray<unsigned int>::searchFirstEqualWithLastEqualBounds(a2, 0, *(a2 + 8), v52, WordIdCollSearchCmp, &v51 + 1, &v51);
  if (EqualWithLastEqualBounds == -1)
  {
LABEL_46:
    *a7 = 0;
    return;
  }

  v17 = EqualWithLastEqualBounds;
  if (!*a5)
  {
    Equal = DgnPrimArray<unsigned int>::searchLastEqual(a2, HIDWORD(v51), v51, v52, WordIdCollSearchCmp);
    if (v17 <= Equal)
    {
      v38 = Equal;
      do
      {
        v39 = *(*a2 + 4 * v17);
        if (*(*(a1 + 256) + 4 * v39) == v39)
        {
          v40 = *(a6 + 8);
          if (v40 == *(a6 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
            v40 = *(a6 + 8);
          }

          *(*a6 + 4 * v40) = v39;
          ++*(a6 + 8);
        }

        ++v17;
      }

      while (v17 <= v38);
    }

    goto LABEL_46;
  }

  v18 = *a1;
  v48[0] = a4;
  v48[1] = a1;
  v48[2] = v18;
  v49 = a3;
  v50 = 0;
  v19 = DgnPrimArray<unsigned int>::searchLastEqual(a2, EqualWithLastEqualBounds, v51, v48, WordIdCollSearchCmp);
  if (v19 != -1)
  {
    while (v17 <= v19)
    {
      v20 = *(*a2 + 4 * v17);
      if (*(*(a1 + 256) + 4 * v20) == v20)
      {
        v21 = *(a6 + 8);
        if (v21 == *(a6 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
          v21 = *(a6 + 8);
        }

        *(*a6 + 4 * v21) = v20;
        ++*(a6 + 8);
      }

      ++v17;
    }
  }

  DgnString::DgnString(&v46, a4);
  DgnString::operator+=(&v46, a5);
  if (v47)
  {
    v26 = v46;
  }

  else
  {
    v26 = &unk_26288C6A6;
  }

  v27 = *a1;
  v43[0] = v26;
  v43[1] = a1;
  v43[2] = v27;
  v44 = a3;
  v45 = 1;
  v42 = 0;
  v28 = DgnPrimArray<unsigned int>::searchFirstEqualWithLastEqualBounds(a2, v17, v51, v43, WordIdCollSearchCmp, &v42 + 1, &v42);
  v30 = v28;
  if (v19 == -1)
  {
    v31 = v17;
  }

  else
  {
    v31 = v19 + 1;
  }

  if (v28 == -1)
  {
    goto LABEL_48;
  }

  v41 = a7;
  v32 = DgnPrimArray<unsigned int>::searchLastEqual(a2, HIDWORD(v42), v42, v43, WordIdCollSearchCmp);
  if (v30 <= v32)
  {
    v33 = v30;
    do
    {
      v34 = *(*a2 + 4 * v33);
      if (*(*(a1 + 256) + 4 * v34) == v34)
      {
        v35 = *(a6 + 8);
        if (v35 == *(a6 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a6, 1, 1);
          v35 = *(a6 + 8);
        }

        *(*a6 + 4 * v35) = v34;
        ++*(a6 + 8);
      }

      ++v33;
    }

    while (v33 <= v32);
  }

  if (v30 <= v31)
  {
    v31 = v32 + 1;
    a7 = v41;
LABEL_48:
    v36 = v31 < *(a2 + 8) && CollMgr::collPrefixcmpUns8(*a1, a3, (*(a1 + 224) + *(*(a1 + 200) + 4 * *(*a2 + 4 * v31))), a4, v29) == 0;
    goto LABEL_51;
  }

  v36 = 1;
  a7 = v41;
LABEL_51:
  *a7 = v36;
  DgnString::~DgnString(&v46);
}

void sub_26273CEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t DgnPrimArray<unsigned int>::searchFirstEqualWithLastEqualBounds(void *a1, int a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), _DWORD *a6, int *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a3)
  {
    v10 = a2;
    *a6 = -1;
    *a7 = a3;
    if (a3 > a2)
    {
      v14 = (a3 - 1);
      do
      {
        v7 = ((v10 + v14) / 2);
        v15 = a5(*a1 + 4 * v7, a4);
        if (v15)
        {
          if (v15 < 0)
          {
            v10 = v7 + 1;
            v7 = v14;
          }

          else
          {
            *a7 = v7;
            v7 = (v7 - 1);
          }
        }

        else
        {
          if (v7 > *a6)
          {
            *a6 = v7;
          }

          if (v14 == v10)
          {
            return v7;
          }
        }

        v14 = v7;
      }

      while (v10 <= v7);
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

uint64_t DgnPrimArray<unsigned int>::searchLastEqual(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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
        if (v6 == v10 - 1)
        {
          v5 = v10;
        }

        else
        {
          v5 = ((v6 + v10) / 2);
        }

        v11 = a5(*a1 + 4 * v5, a4);
        if (v11)
        {
          if (v11 < 0)
          {
            v5 = (v5 + 1);
          }

          else
          {
            v10 = v5 - 1;
            v5 = v6;
          }
        }

        else if (v10 == v6)
        {
          return v5;
        }

        v6 = v5;
      }

      while (v5 <= v10);
      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

double WordList::verifyValid(WordList *this, unsigned int a2)
{
  if (*(this + 97) <= a2 || !*(*(this + 13) + a2))
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2699, "word/wordlist", 2, "%d", a2);
  }

  return result;
}

double WordList::verifyVisible(WordList *this, unsigned int a2)
{
  if (*(this + 97) <= a2 || !*(*(this + 13) + a2) || *(*(this + 32) + 4 * a2) != a2)
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2704, "word/wordlist", 2, "%d", a2);
  }

  return result;
}

double WordList::verifyModifiable(WordList *this, unsigned int a2)
{
  if (*(*(this + 19) + 2 * a2))
  {
    result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2711, "word/wordlist", 4, "%.500s %d %.500s %d", "modify", a2, "mIncludingLatticesCount", *(*(this + 19) + 2 * a2));
  }

  if (*(*(this + 21) + 2 * a2))
  {
    result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2713, "word/wordlist", 4, "%.500s %d %.500s %d", "modify", a2, "mIncludingPrefilterResultsCount", *(*(this + 21) + 2 * a2));
  }

  if (*(*(this + 23) + 2 * a2))
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2715, "word/wordlist", 4, "%.500s %d %.500s %d", "modify", a2, "mIncludingSausagesCount", *(*(this + 23) + 2 * a2));
  }

  return result;
}

double WordList::verifyDeletable(WordList *this, unsigned int a2)
{
  if (*(*(this + 15) + 2 * a2))
  {
    result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2721, "word/wordlist", 4, "%.500s %d %.500s %d", "delete", a2, "mIncludingStatesCount", *(*(this + 15) + 2 * a2));
  }

  if (*(*(this + 17) + 2 * a2))
  {
    result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2723, "word/wordlist", 4, "%.500s %d %.500s %d", "delete", a2, "mIncludingRulesCount", *(*(this + 17) + 2 * a2));
  }

  if (*(*(this + 19) + 2 * a2))
  {
    result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2725, "word/wordlist", 4, "%.500s %d %.500s %d", "delete", a2, "mIncludingLatticesCount", *(*(this + 19) + 2 * a2));
  }

  if (*(*(this + 21) + 2 * a2))
  {
    result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2727, "word/wordlist", 4, "%.500s %d %.500s %d", "delete", a2, "mIncludingPrefilterResultsCount", *(*(this + 21) + 2 * a2));
  }

  if (*(*(this + 23) + 2 * a2))
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 2729, "word/wordlist", 4, "%.500s %d %.500s %d", "delete", a2, "mIncludingSausagesCount", *(*(this + 23) + 2 * a2));
  }

  return result;
}

uint64_t WordList::addWord(WordList *this, CharInfo *a2, int a3, char a4, char a5, const char *a6)
{
  v8[0] = 0;
  v8[1] = 0;
  v6 = WordList::addWordInternal(this, 1, 0xFFFFFFLL, 0xFFFFFF, 0xFFFFFFFF, a2, a3, v8, a4, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v6;
}

void sub_26273D47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordList::getFreeId(WordList *this)
{
  v2 = *(this + 62);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(*(this + 30) + 4 * v3);
    *(this + 62) = v3;
    v5 = *(this + 97);
    if (v4 != v5)
    {
      return v4;
    }
  }

  else
  {
    v4 = *(this + 97);
    v5 = *(this + 97);
  }

  *(this + 97) = v5 + 1;
  v6 = *(this + 66);
  if (v6 == *(this + 67))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 256, 1, 1);
    v6 = *(this + 66);
  }

  *(this + 66) = v6 + 1;
  v7 = *(this + 28);
  if (v7 == *(this + 29))
  {
    DgnPrimArray<char>::reallocElts(this + 104, 1, 1);
    v7 = *(this + 28);
  }

  *(this + 28) = v7 + 1;
  v8 = *(this + 52);
  if (v8 == *(this + 53))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 200, 1, 1);
    v8 = *(this + 52);
  }

  *(this + 52) = v8 + 1;
  v9 = *(this + 14);
  if (v9 == *(this + 15))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 48, 1, 1);
    v9 = *(this + 14);
  }

  *(this + 14) = v9 + 1;
  v10 = *(this + 10);
  if (v10 == *(this + 11))
  {
    DgnPrimArray<short>::reallocElts(this + 32, 1, 1);
    v10 = *(this + 10);
  }

  *(this + 10) = v10 + 1;
  BitArray::add((this + 624), 0);
  BitArray::add((this + 640), 0);
  if (*(this + 98) >= 2u)
  {
    v11 = *(this + 108);
    if (v11 == *(this + 109))
    {
      DgnPrimArray<char>::reallocElts(this + 424, 1, 1);
      v11 = *(this + 108);
    }

    *(*(this + 53) + v11) = -2;
    ++*(this + 108);
  }

  if (*(this + 99) >= 2u)
  {
    v12 = *(this + 112);
    if (v12 == *(this + 113))
    {
      DgnPrimArray<char>::reallocElts(this + 440, 1, 1);
      v12 = *(this + 112);
    }

    *(*(this + 55) + v12) = -2;
    ++*(this + 112);
  }

  v13 = *(this + 138);
  if (v13)
  {
    BitArray::addSize((this + 576), v13);
  }

  v14 = *(this + 32);
  if (v14 == *(this + 33))
  {
    DgnPrimArray<short>::reallocElts(this + 120, 1, 1);
    v14 = *(this + 32);
  }

  *(this + 32) = v14 + 1;
  v15 = *(this + 36);
  if (v15 == *(this + 37))
  {
    DgnPrimArray<short>::reallocElts(this + 136, 1, 1);
    v15 = *(this + 36);
  }

  *(this + 36) = v15 + 1;
  v16 = *(this + 150);
  if (v16 == *(this + 151))
  {
    DgnPrimArray<short>::reallocElts(this + 592, 1, 1);
    v16 = *(this + 150);
  }

  *(this + 150) = v16 + 1;
  v17 = *(this + 154);
  if (v17 == *(this + 155))
  {
    DgnPrimArray<short>::reallocElts(this + 608, 1, 1);
    v17 = *(this + 154);
  }

  *(this + 154) = v17 + 1;
  v18 = *(this + 40);
  if (v18 == *(this + 41))
  {
    DgnPrimArray<short>::reallocElts(this + 152, 1, 1);
    v18 = *(this + 40);
  }

  *(this + 40) = v18 + 1;
  v19 = *(this + 44);
  if (v19 == *(this + 45))
  {
    DgnPrimArray<short>::reallocElts(this + 168, 1, 1);
    v19 = *(this + 44);
  }

  *(this + 44) = v19 + 1;
  v20 = *(this + 48);
  if (v20 == *(this + 49))
  {
    DgnPrimArray<short>::reallocElts(this + 184, 1, 1);
    v20 = *(this + 48);
  }

  *(this + 48) = v20 + 1;
  WordList::invalidateId(this, v5);
  return v4;
}

void WordList::getTagBits(WordList *this, unsigned int a2, int a3, BitArray *a4)
{
  if (a3)
  {
    BitArray::getBitsFromRange((this + 576), a4, *(this + 138) * a2, *(this + 138) * a2 + *(this + 138));
  }

  else
  {
    TagBitsAndStrings::getTagBits((this + 512), a2, a4);
  }
}

uLong WordList::setPron(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, int a7)
{
  *(a1 + 380) ^= WordList::computeWordIdPronChecksum(a1, a2);
  v14 = *(a3 + 8);
  if (v14 >= 0x3FFF)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 3447, "word/wordlist", 8, "%u %u", a2, v14);
  }

  if (a7)
  {
    if (v14 <= 1)
    {
      goto LABEL_10;
    }
  }

  else if (!v14)
  {
    goto LABEL_10;
  }

  if (!**a3 || !*(*a3 + 2 * (v14 - 1)))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/word/wordlist.cpp", 3454, "word/wordlist", 37, "%u", a2);
  }

LABEL_10:
  PhnMgr::verifyPhonemePron2(*(a1 + 16), a3, (*(a1 + 224) + *(*(a1 + 200) + 4 * a2)), 0);
  if (a6)
  {
    WordIdPronCollArray::remove((a1 + 352), a2);
  }

  *(*(a1 + 48) + 4 * a2) = *(a1 + 80);
  *(*(a1 + 32) + 2 * a2) = v14;
  if (!v14)
  {
    goto LABEL_22;
  }

  v29 = a6;
  a6 = a4;
  v15 = a5;
  v16 = 0;
  v17 = *(*(a1 + 16) + 60);
  v18 = 2 * v14;
  do
  {
    v19 = *(*a3 + v16);
    if (v19 == v17)
    {
      --*(*(a1 + 32) + 2 * a2);
      *(*(a1 + 88) + 4 * ((*(a1 + 80) - 1) >> 5)) |= 1 << (*(a1 + 80) - 1);
    }

    else
    {
      v20 = *(a1 + 80);
      if (v20 == *(a1 + 84))
      {
        DgnPrimArray<short>::reallocElts(a1 + 72, 1, 1);
        v20 = *(a1 + 80);
      }

      *(*(a1 + 72) + 2 * v20) = v19;
      *(a1 + 80) = v20 + 1;
      BitArray::add((a1 + 88), 0);
    }

    v16 += 2;
  }

  while (v18 != v16);
  v21 = *(a1 + 32);
  v22 = *(v21 + 2 * a2);
  a5 = v15;
  a4 = a6;
  LOBYTE(a6) = v29;
  if (*(v21 + 2 * a2))
  {
    v23 = (*(a1 + 72) + 2 * *(*(a1 + 48) + 4 * a2));
    v24 = *v23;
    v25 = v23[v22 - 1];
    v26 = 608;
    v27 = 592;
  }

  else
  {
LABEL_22:
    v24 = *(*(a1 + 16) + 58);
    v26 = 592;
    v27 = 608;
    v25 = v24;
  }

  *(*(a1 + v27) + 2 * a2) = v24;
  *(*(a1 + v26) + 2 * a2) = v25;
  if (a6)
  {
    WordIdPronCollArray::add((a1 + 352), a2);
  }

  WordList::setPronPredecessorSeedCategory(a1, a2, a4);
  WordList::setPronSuccessorSeedCategory(a1, a2, a5);
  result = WordList::computeWordIdPronChecksum(a1, a2);
  *(a1 + 380) ^= result;
  return result;
}

uint64_t WordList::addClientPronsAvoidDuplicates(uint64_t *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, int a8, uint64_t a9, uint64_t a10)
{
  v43 = 0;
  v44 = 0;
  WordList::lookupAll(a1, a1[28] + *(a1[25] + 4 * *(a1[32] + 4 * a2)), &v43, 0, 0);
  v33 = *(a1[25] + 4 * a2);
  v32 = a1[28];
  v35 = v44;
  v42[0] = 0;
  v42[1] = 0;
  v38 = *(a1[4] + 2 * a2);
  v41[0] = 0;
  v41[1] = 0;
  if (*(a5 + 8))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *a5 + 16 * v15;
      if (v38 || v15)
      {
        if (v16 == a8 || v16 + v35 == 254)
        {
          break;
        }

        v39 = 0;
        v40 = 0;
        if (v44)
        {
          v20 = 0;
          while (1)
          {
            WordList::getPronWithWB(a1, *(v43 + 4 * v20), &v39);
            if (&v39 == v17)
            {
              break;
            }

            v21 = v40;
            if (v40 == *(v17 + 8))
            {
              while (v21 >= 1)
              {
                v22 = *(v39 - 2 + 2 * v21);
                v23 = *(*v17 - 2 + 2 * v21--);
                if (v22 != v23)
                {
                  goto LABEL_20;
                }
              }

              break;
            }

LABEL_20:
            if (++v20 >= v44)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
LABEL_21:
          if (a10)
          {
            v24 = *(a10 + 8);
            if (v24 == *(a10 + 12))
            {
              DgnPrimArray<unsigned int>::reallocElts(a10, 1, 1);
              v24 = *(a10 + 8);
            }

            *(*a10 + 4 * v24) = v15;
            ++*(a10 + 8);
          }

          v25 = v16 + 1;
          if (v38)
          {
            v26 = v16 + 1;
          }

          else
          {
            v26 = v16;
          }

          v27 = WordList::addWordInternal(a1, 1, 0xFFFFFFLL, a2, 0xFFFFFFFF, (v32 + v33), (v26 + v35), v41, 1, 1);
          v28 = a4;
          v29 = *(a4 + 8);
          if (v29 == *(a4 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a4, 1, 1);
            v28 = a4;
            v29 = *(a4 + 8);
          }

          *(*v28 + 4 * v29) = v27;
          ++*(v28 + 8);
          v30 = v44;
          if (v44 == HIDWORD(v44))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v43, 1, 1);
            v30 = v44;
          }

          *(v43 + 4 * v30) = v27;
          LODWORD(v44) = v44 + 1;
          WordList::setPron(a1, v27, v17, *(*a6 + v15), *(*a7 + v15), 1u, 1);
          v16 = v25;
        }

        DgnPrimArray<unsigned int>::~DgnPrimArray(&v39);
      }

      else
      {
        if (a10)
        {
          v18 = *(a10 + 8);
          if (v18 == *(a10 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a10, 1, 1);
            v18 = *(a10 + 8);
          }

          *(*a10 + 4 * v18) = 0;
          ++*(a10 + 8);
        }

        v19 = *(a3 + 8);
        if (v19 == *(a3 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a3, 1, 1);
          v19 = *(a3 + 8);
        }

        *(*a3 + 4 * v19) = a2;
        ++*(a3 + 8);
        WordList::setPron(a1, a2, v17, **a6, **a7, 1u, 1);
        ++v16;
        *(a1[80] + 4 * (a2 >> 5)) &= ~(1 << a2);
      }

      ++v15;
    }

    while (v15 < *(a5 + 8));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v41);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v42);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v43);
}

void sub_26273DE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  va_copy(va2, va1);
  v23 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18 - 96);
  _Unwind_Resume(a1);
}

uint64_t *WordList::getPronWithWB(uint64_t *result, unsigned int a2, uint64_t *a3)
{
  v3 = *(result[4] + 2 * a2);
  *(a3 + 2) = 0;
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = result[9] + 2 * *(result[6] + 4 * a2);
    do
    {
      v10 = *(v9 + 2 * v8);
      if (v7 == *(a3 + 3))
      {
        result = DgnPrimArray<short>::reallocElts(a3, 1, 1);
        v7 = *(a3 + 2);
      }

      v11 = *a3;
      *(*a3 + 2 * v7++) = v10;
      *(a3 + 2) = v7;
      v12 = v8 + *(v6[6] + 4 * a2);
      if ((*(v6[11] + 4 * (v12 >> 5)) >> v12))
      {
        v13 = *(v6[2] + 60);
        if (v7 == *(a3 + 3))
        {
          result = DgnPrimArray<short>::reallocElts(a3, 1, 1);
          v7 = *(a3 + 2);
          v11 = *a3;
        }

        *(v11 + 2 * v7++) = v13;
        *(a3 + 2) = v7;
      }

      ++v8;
    }

    while (v3 != v8);
  }

  return result;
}

uint64_t WordList::getNumClientProns(WordList *this, unsigned int a2)
{
  if (!*(*(this + 4) + 2 * a2))
  {
    return 0;
  }

  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  WordList::lookupAll(this, *(this + 28) + *(*(this + 25) + 4 * a2), v4, 0, &v5);
  v2 = v5;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  return v2;
}

void sub_26273DFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordList::deleteWordClientProns(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *(*(a1 + 200) + 4 * a2);
  v11 = *(a1 + 224);
  WordList::verifyModifiable(a1, a2);
  v22 = 0;
  v23 = 0;
  DgnPrimArray<int>::copyArraySlice(&v22, a3, 0, *(a3 + 8));
  v12 = v23;
  v20 = 0;
  v21 = 0;
  WordList::lookupAll(a1, v11 + v10, &v20, 0, 0);
  if (v21 == v12)
  {
    if (v12 >= 2)
    {
      v13 = *(a5 + 8);
      do
      {
        v14 = *(v20 + v12 - 1);
        if (v13 == *(a5 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
          v13 = *(a5 + 8);
        }

        --v12;
        *(*a5 + 4 * v13) = v14;
        v13 = *(a5 + 8) + 1;
        *(a5 + 8) = v13;
      }

      while (v12 > 1);
      if (!HIDWORD(v21))
      {
        v19[0] = 0;
        HIDWORD(v21) = realloc_array(v20, v19, 4uLL, 4 * v21, 4 * v21, 1) >> 2;
        v20 = v19[0];
      }

      LODWORD(v12) = 1;
      LODWORD(v21) = 1;
    }

    DgnPrimArray<int>::copyArraySlice(a4, &v20, 0, v12);
    v19[0] = 0;
    v19[1] = 0;
    WordList::setPron(a1, a2, v19, *(a1 + 419), *(a1 + 420), 1u, 1);
    DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  }

  else if (v12)
  {
    v15 = *(a5 + 8);
    v16 = 4 * v12 - 4;
    do
    {
      v17 = *(v22 + v16);
      if (v15 == *(a5 + 12))
      {
        DgnPrimArray<unsigned int>::reallocElts(a5, 1, 1);
        v15 = *(a5 + 8);
      }

      *(*a5 + 4 * v15) = v17;
      v15 = *(a5 + 8) + 1;
      *(a5 + 8) = v15;
      v16 -= 4;
    }

    while (v16 != -4);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v20);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
}

void sub_26273E1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void WordList::invalidateId(WordList *this, unsigned int a2)
{
  *(*(this + 32) + 4 * a2) = 0xFFFFFF;
  *(*(this + 13) + a2) = 0;
  *(*(this + 25) + 4 * a2) = 0;
  *(*(this + 6) + 4 * a2) = 0;
  *(*(this + 4) + 2 * a2) = 0;
  if (*(this + 98) >= 2u)
  {
    *(*(this + 53) + a2) = *(this + 419);
  }

  if (*(this + 99) >= 2u)
  {
    *(*(this + 55) + a2) = *(this + 420);
  }

  v4 = a2 >> 5;
  *(*(this + 78) + 4 * v4) &= ~(1 << a2);
  *(*(this + 80) + 4 * v4) &= ~(1 << a2);
  v5 = *(this + 138);
  if (v5)
  {
    BitArray::clearRange((this + 576), v5 * a2, v5 * a2 + v5);
  }

  if (*(this + 132) > a2)
  {
    v6 = *(this + 65);
    if (*(v6 + 4 * a2) != -1)
    {
      *(v6 + 4 * a2) = -1;
      *(this + 512) = 1;
    }
  }

  *(*(this + 15) + 2 * a2) = 0;
  *(*(this + 17) + 2 * a2) = 0;
  *(*(this + 74) + 2 * a2) = -1;
  *(*(this + 76) + 2 * a2) = -1;
  *(*(this + 19) + 2 * a2) = 0;
  *(*(this + 21) + 2 * a2) = 0;
  *(*(this + 23) + 2 * a2) = 0;
}

uint64_t WordList::resetWordList(WordList *this)
{
  *(this + 47) = 0;
  *(this + 48) = 0;
  v2 = *(this + 32);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 32) = 0;
  }

  *(this + 33) = 0;
  v3 = *(this + 13);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 13) = 0;
  }

  *(this + 14) = 0;
  v4 = *(this + 25);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 25) = 0;
  }

  *(this + 26) = 0;
  *(this + 54) = 0;
  v5 = *(this + 28);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 28) = 0;
  }

  *(this + 29) = 0;
  v6 = *(this + 4);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 4) = 0;
  }

  *(this + 5) = 0;
  v7 = *(this + 6);
  if (v7)
  {
    MemChunkFree(v7, 0);
    *(this + 6) = 0;
  }

  *(this + 7) = 0;
  *(this + 16) = 0;
  v8 = *(this + 9);
  if (v8)
  {
    MemChunkFree(v8, 0);
    *(this + 9) = 0;
  }

  *(this + 10) = 0;
  BitArray::releaseAll(this + 11);
  v9 = *(this + 74);
  if (v9)
  {
    MemChunkFree(v9, 0);
    *(this + 74) = 0;
  }

  *(this + 75) = 0;
  v10 = *(this + 76);
  if (v10)
  {
    MemChunkFree(v10, 0);
    *(this + 76) = 0;
  }

  *(this + 77) = 0;
  BitArray::releaseAll(this + 72);
  TagBitsAndStrings::reInit((this + 512));
  v11 = *(this + 15);
  if (v11)
  {
    MemChunkFree(v11, 0);
    *(this + 15) = 0;
  }

  *(this + 16) = 0;
  v12 = *(this + 17);
  if (v12)
  {
    MemChunkFree(v12, 0);
    *(this + 17) = 0;
  }

  *(this + 18) = 0;
  v13 = *(this + 19);
  if (v13)
  {
    MemChunkFree(v13, 0);
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  v14 = *(this + 21);
  if (v14)
  {
    MemChunkFree(v14, 0);
    *(this + 21) = 0;
  }

  *(this + 22) = 0;
  v15 = *(this + 23);
  if (v15)
  {
    MemChunkFree(v15, 0);
    *(this + 23) = 0;
  }

  *(this + 24) = 0;
  v16 = *(this + 30);
  if (v16)
  {
    MemChunkFree(v16, 0);
    *(this + 30) = 0;
  }

  *(this + 31) = 0;

  return PrefiltererWordIdPronCollArray::removeAll(this + 352);
}