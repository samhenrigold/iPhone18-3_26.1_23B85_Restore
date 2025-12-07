int *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,TWord const*> *,std::__less<void,void> &>(int *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 1);
  while (1)
  {
    v5 = a1[v2 + 4];
    if (v5 >= v3 && (v3 < v5 || *&a1[v2 + 6] >= v4))
    {
      break;
    }

    v2 += 4;
  }

  v6 = &a1[v2 + 4];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 16);
      a2 -= 16;
      v7 = v8;
    }

    while (v8 >= v3 && (v3 < v7 || *(a2 + 8) >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 16);
        a2 -= 16;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v3 < v9)
        {
          goto LABEL_19;
        }
      }

      while (*(a2 + 8) >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = *(v13 + 1);
      *(v13 + 1) = *(v14 + 8);
      *(v14 + 8) = v15;
      do
      {
        do
        {
          v16 = v13[4];
          v13 += 4;
          v5 = v16;
        }

        while (v16 < v3);
      }

      while (v3 >= v5 && *(v13 + 1) < v4);
      do
      {
        v17 = *(v14 - 16);
        v14 -= 16;
        v12 = v17;
      }

      while (v17 >= v3 && (v3 < v12 || *(v14 + 8) >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 4 != a1)
  {
    *a1 = *(v13 - 4);
    *(a1 + 1) = *(v13 - 1);
  }

  *(v13 - 4) = v3;
  *(v13 - 1) = v4;
  return v13 - 4;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(uint64_t a1, int *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(a1, (a1 + 16), a2 - 4);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(a1, (a1 + 16), (a1 + 32));
        v23 = *(a2 - 4);
        v24 = *(a1 + 32);
        if (v23 >= v24)
        {
          if (v24 < v23)
          {
            return 1;
          }

          v26 = *(a2 - 1);
          v25 = *(a1 + 40);
          if (v26 >= v25)
          {
            return 1;
          }
        }

        else
        {
          v25 = *(a1 + 40);
          v26 = *(a2 - 1);
        }

        *(a1 + 32) = v23;
        *(a2 - 4) = v24;
        *(a1 + 40) = v26;
        *(a2 - 1) = v25;
        v27 = *(a1 + 32);
        v28 = *(a1 + 16);
        if (v27 >= v28)
        {
          if (v28 < v27)
          {
            return 1;
          }

          v30 = *(a1 + 40);
          v29 = *(a1 + 24);
          if (v30 >= v29)
          {
            return 1;
          }
        }

        else
        {
          v29 = *(a1 + 24);
          v30 = *(a1 + 40);
        }

        *(a1 + 16) = v27;
        *(a1 + 32) = v28;
        *(a1 + 24) = v30;
        *(a1 + 40) = v29;
        v31 = *a1;
        if (v27 >= *a1)
        {
          if (v31 < v27)
          {
            return 1;
          }

          v32 = *(a1 + 8);
          if (v30 >= v32)
          {
            return 1;
          }
        }

        else
        {
          v32 = *(a1 + 8);
        }

        *a1 = v27;
        *(a1 + 16) = v31;
        *(a1 + 8) = v30;
        result = 1;
        *(a1 + 24) = v32;
        return result;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, a2 - 4);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 4);
      v6 = *a1;
      if (v5 < *a1)
      {
        v7 = *(a1 + 8);
        v8 = *(a2 - 1);
LABEL_6:
        *a1 = v5;
        *(a2 - 4) = v6;
        *(a1 + 8) = v8;
        result = 1;
        *(a2 - 1) = v7;
        return result;
      }

      if (v6 >= v5)
      {
        v8 = *(a2 - 1);
        v7 = *(a1 + 8);
        if (v8 < v7)
        {
          goto LABEL_6;
        }
      }

      return 1;
    }
  }

  v10 = (a1 + 32);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  while (2)
  {
    v14 = *v11;
    v15 = *v10;
    if (*v11 >= *v10)
    {
      if (v15 < v14)
      {
        goto LABEL_28;
      }

      v16 = *(v11 + 1);
      v17 = *(v10 + 1);
      if (v16 >= v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(v11 + 1);
      v17 = *(v10 + 1);
    }

    *v11 = v15;
    *(v11 + 1) = v17;
    v18 = v12;
    while (1)
    {
      v19 = a1 + v18;
      v20 = *(a1 + v18 + 16);
      if (v14 >= v20)
      {
        break;
      }

      v21 = *(v19 + 24);
LABEL_21:
      *(v19 + 32) = v20;
      *(a1 + v18 + 40) = v21;
      v18 -= 16;
      if (v18 == -32)
      {
        v22 = a1;
        goto LABEL_27;
      }
    }

    if (v20 >= v14)
    {
      v21 = *(a1 + v18 + 24);
      if (v16 < v21)
      {
        goto LABEL_21;
      }
    }

    v22 = a1 + v18 + 32;
LABEL_27:
    *v22 = v14;
    *(v22 + 8) = v16;
    if (++v13 != 8)
    {
LABEL_28:
      v10 = v11;
      v12 += 16;
      v11 += 4;
      if (v11 == a2)
      {
        return 1;
      }

      continue;
    }

    return v11 + 4 == a2;
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *,std::pair<int,TWord const*> *>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    i = a2;
    if (a2 != a3)
    {
      for (i = a2; i != a3; i += 16)
      {
        v13 = *i;
        v14 = *a1;
        if (*i >= *a1)
        {
          if (v14 < v13)
          {
            continue;
          }

          v15 = *(i + 1);
          v16 = *(a1 + 1);
          if (v15 >= v16)
          {
            continue;
          }
        }

        else
        {
          v15 = *(i + 1);
          v16 = *(a1 + 1);
        }

        *i = v14;
        *a1 = v13;
        *(i + 1) = v16;
        *(a1 + 1) = v15;
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(a1, a4, v8, a1);
      }
    }

    if (v8 >= 2)
    {
      v17 = a2 - 16;
      do
      {
        v18 = *a1;
        v19 = *(a1 + 1);
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(a1, a4, v8);
        if (v17 == v20)
        {
          *v20 = v18;
          *(v20 + 8) = v19;
        }

        else
        {
          *v20 = *v17;
          *(v20 + 8) = *(v17 + 1);
          *v17 = v18;
          *(v17 + 1) = v19;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(a1, v20 + 16, a4, (v20 + 16 - a1) >> 4);
        }

        v17 -= 16;
      }

      while (v8-- > 2);
    }

    return i;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = *(v8 + 16);
        if (*v8 < v10 || v10 >= *v8 && *(v8 + 8) < *(v8 + 24))
        {
          v8 += 16;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v12 >= v11)
        {
          v14 = *(v8 + 8);
          v13 = *(a4 + 1);
          if (v14 < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = *(a4 + 1);
          v14 = *(v8 + 8);
        }

        *a4 = v11;
        *(a4 + 1) = v14;
        if (v5 >= v7)
        {
          while (1)
          {
            v16 = 2 * v7;
            v7 = (2 * v7) | 1;
            v15 = result + 16 * v7;
            v17 = v16 + 2;
            if (v17 < a3)
            {
              v18 = *(v15 + 16);
              if (*v15 < v18 || v18 >= *v15 && *(v15 + 8) < *(v15 + 24))
              {
                v15 += 16;
                v7 = v17;
              }
            }

            v19 = *v15;
            if (*v15 < v12)
            {
              break;
            }

            v20 = *(v15 + 8);
            if (v12 >= v19 && v20 < v13)
            {
              break;
            }

            *v8 = v19;
            *(v8 + 8) = v20;
            v8 = v15;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v15 = v8;
LABEL_14:
        *v15 = v12;
        *(v15 + 8) = v13;
      }
    }
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = result + 16 * v3;
    result = v5 + 16;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = *(v5 + 32);
      v9 = *(v5 + 16);
      if (v9 < v8 || v8 >= v9 && *(v5 + 24) < *(v5 + 40))
      {
        result = v5 + 32;
        v3 = v7;
      }
    }

    *v4 = *result;
    *(v4 + 8) = *(result + 8);
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,TWord const*> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 16);
    if (*v6 >= v8)
    {
      if (v8 < v7)
      {
        return result;
      }

      v10 = *(v6 + 1);
      v9 = *(a2 - 8);
      if (v10 >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 8);
      v10 = *(v6 + 1);
    }

    *(a2 - 16) = v7;
    *(a2 - 8) = v10;
    if (v4 >= 2)
    {
      while (1)
      {
        v12 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v11 = (result + 16 * v5);
        v13 = *v11;
        if (*v11 >= v8)
        {
          if (v8 < v13)
          {
            break;
          }

          v14 = *(v11 + 1);
          if (v14 >= v9)
          {
            break;
          }
        }

        else
        {
          v14 = *(v11 + 1);
        }

        *v6 = v13;
        *(v6 + 1) = v14;
        v6 = (result + 16 * v5);
        if (v12 <= 1)
        {
          goto LABEL_11;
        }
      }
    }

    v11 = v6;
LABEL_11:
    *v11 = v8;
    *(v11 + 1) = v9;
  }

  return result;
}

uint64_t *std::vector<wchar_t const*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<wchar_t const*>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2626F7070(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<wchar_t const*>::__init_with_size[abi:ne200100]<wchar_t const**,wchar_t const**>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<wchar_t const*>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2626F70EC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t StartupSearchParamSpecMgr(void)
{
  v127 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v127, "SearchPelScoreScale", &byte_262899963, &byte_262899963, &sSearchPelScoreScaleDoubleHistory);
  v126 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v126, "SearchPelScoreUseBestCompScore", &byte_262899963, &byte_262899963, &sSearchPelScoreUseBestCompScoreBoolHistory);
  v118 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v118, "SearchDecimationType", &byte_262899963, &byte_262899963, &sSearchDecimationTypeEnumHistory);
  v117 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v117, "SearchEnableGenoneScoreCacheThresh", &byte_262899963, &byte_262899963, &sSearchEnableGenoneScoreCacheThreshDoubleHistory);
  v116 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v116, "SearchFrameTransformerThreadingType", &byte_262899963, &byte_262899963, &sSearchFrameTransformerThreadingTypeEnumHistory);
  v115 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v115, "SearchThreadingType", &byte_262899963, &byte_262899963, &sSearchThreadingTypeEnumHistory);
  v125 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v125, "SearchTruncatePackedIntComponentScores", &byte_262899963, &byte_262899963, &sSearchTruncatePackedIntComponentScoresBoolHistory);
  v114 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v114, "SearchFmpeMinimumPosteriorProbability", &byte_262899963, &byte_262899963, &sSearchFmpeMinimumPosteriorProbabilityDoubleHistory);
  v129 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v129, "SearchFmpeWindowTruncateUnavailableFrames", &byte_262899963, &byte_262899963, &sSearchFmpeWindowTruncateUnavailableFramesBoolHistory);
  v124 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v124, "SearchUseWordEndThreshWhenSeedingFinalSilence", &byte_262899963, &byte_262899963, &sSearchUseWordEndThreshWhenSeedingFinalSilenceBoolHistory);
  v123 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v123, "SearchTraceThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchTraceThreshScoreIncrementIntHistory);
  v105 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v105, "SearchActiveWordSpreadSeedScore", &byte_262899963, &byte_262899963, &sSearchActiveWordSpreadSeedScoreIntHistory);
  v121 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v121, "SearchPelBackoffThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchPelBackoffThreshScoreDecrementIntHistory);
  v128 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v128, "SearchAdjustThreshScoreType", &byte_262899963, &byte_262899963, &sSearchAdjustThreshScoreTypeEnumHistory);
  v109 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v109, "SearchInterWordSilencePenalty", &byte_262899963, &byte_262899963, &sSearchInterWordSilencePenaltyIntHistory);
  v119 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v119, "SearchNodeSkippingType", &byte_262899963, &byte_262899963, &sSearchNodeSkippingTypeEnumHistory);
  v120 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v120, "SearchRemoveInactiveWordsIntervalFrames", &byte_262899963, &byte_262899963, &sSearchRemoveInactiveWordsIntervalFramesIntHistory);
  v98 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v98, "SearchAbortOnNumHistories", &byte_262899963, &byte_262899963, &sSearchAbortOnNumHistoriesIntHistory);
  v97 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v97, "SearchAbortOnAllocBytes", &byte_262899963, &byte_262899963, &sSearchAbortOnAllocBytesIntHistory);
  v96 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v96, "SearchAbortOnAverageWordsEndingPerFrame", &byte_262899963, &byte_262899963, &sSearchAbortOnAverageWordsEndingPerFrameIntHistory);
  v95 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v95, "SearchAbortOnNumRecognizedFrames", &byte_262899963, &byte_262899963, &sSearchAbortOnNumRecognizedFramesIntHistory);
  v91 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v91, "SearchLatticeLMRescoringAbortOnTotalNewNodes", &byte_262899963, &byte_262899963, &sSearchLatticeLMRescoringAbortOnTotalNewNodesIntHistory);
  v122 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v122, "SearchLatticeSilentWordsUseCoarticulation", &byte_262899963, &byte_262899963, &sSearchLatticeSilentWordsUseCoarticulationBoolHistory);
  v104 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v104, "SearchLatticeAbortOnNumNodes", &byte_262899963, &byte_262899963, &sSearchLatticeAbortOnNumNodesIntHistory);
  v102 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v102, "SearchLatticeAbortOnNumLinks", &byte_262899963, &byte_262899963, &sSearchLatticeAbortOnNumLinksIntHistory);
  v101 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v101, "SearchLatticeAbortOnScaledAverageNodesPerFrame", &byte_262899963, &byte_262899963, &sSearchLatticeAbortOnScaledAverageNodesPerFrameIntHistory);
  v100 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v100, "SearchLatticeAbortOnScaledAverageLinksPerFrame", &byte_262899963, &byte_262899963, &sSearchLatticeAbortOnScaledAverageLinksPerFrameIntHistory);
  v113 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v113, "SearchTraceLatticeNormalizedThreshFactor", &byte_262899963, &byte_262899963, &sSearchTraceLatticeNormalizedThreshFactorDoubleHistory);
  v112 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v112, "SearchTraceLatticeThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchTraceLatticeThreshScoreIncrementIntHistory);
  v99 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v99, "SearchLatticeAllowZeroDurationFinalSilence", &byte_262899963, &byte_262899963, &sSearchLatticeAllowZeroDurationFinalSilenceBoolHistory);
  v103 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v103, "SearchPerWordPenalty", &byte_262899963, &byte_262899963, &sSearchPerWordPenaltyIntHistory);
  v111 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v111, "SearchWordSeedThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchWordSeedThreshScoreDecrementIntHistory);
  v110 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v110, "SearchWordSeedFinalSilenceThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchWordSeedFinalSilenceThreshScoreDecrementIntHistory);
  v108 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v108, "SearchWordSeedScoreIncludePrefiltererScore", &byte_262899963, &byte_262899963, &sSearchWordSeedScoreIncludePrefiltererScoreBoolHistory);
  v107 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v107, "SearchWordSeedUnprefilteredUseThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchWordSeedUnprefilteredUseThreshScoreDecrementBoolHistory);
  v106 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v106, "SearchEstimateAndPreScoreActivePels", &byte_262899963, &byte_262899963, &sSearchEstimateAndPreScoreActivePelsBoolHistory);
  v81 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v81, "SearchActiveWordHasPredecessorPhonemeContext", &byte_262899963, &byte_262899963, &sSearchActiveWordHasPredecessorPhonemeContextBoolHistory);
  v78 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v78, "SearchActiveWordHasPredecessorWordContext", &byte_262899963, &byte_262899963, &sSearchActiveWordHasPredecessorWordContextBoolHistory);
  v76 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v76, "SearchActiveWordHasMergedGrammarState", &byte_262899963, &byte_262899963, &sSearchActiveWordHasMergedGrammarStateBoolHistory);
  v75 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v75, "SearchActiveWordHasMergedLatticeLinkId", &byte_262899963, &byte_262899963, &sSearchActiveWordHasMergedLatticeLinkIdBoolHistory);
  v74 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v74, "SearchLatticeTimeConstraintDistanceMaxFrames", &byte_262899963, &byte_262899963, &sSearchLatticeTimeConstraintDistanceMaxFramesIntHistory);
  v69 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v69, "SearchLatticeTimeConstraintSeedThreshScore", &byte_262899963, &byte_262899963, &sSearchLatticeTimeConstraintSeedThreshScoreIntHistory);
  v86 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v86, "SearchLMLimit", &byte_262899963, &byte_262899963, &sSearchLMLimitEnumHistory);
  v85 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v85, "SearchLMRescoreWithCorrective", &byte_262899963, &byte_262899963, &sSearchLMRescoreWithCorrectiveBoolHistory);
  v79 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v79, "SearchLMDisallowedLMScore", &byte_262899963, &byte_262899963, &sSearchLMDisallowedLMScoreIntHistory);
  v80 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v80, "SearchLMDynamicReadCacheBlocksPerChunk", &byte_262899963, &byte_262899963, &sSearchLMDynamicReadCacheBlocksPerChunkIntHistory);
  v77 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v77, "SearchLMDynamicReadCacheMaxBlocks", &byte_262899963, &byte_262899963, &sSearchLMDynamicReadCacheMaxBlocksIntHistory);
  v70 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v70, "SearchLMDynamicBigramReadCacheMaxChunksPerRead", &byte_262899963, &byte_262899963, &sSearchLMDynamicBigramReadCacheMaxChunksPerReadIntHistory);
  v72 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v72, "SearchLMDynamicTrigramReadCacheMaxChunksPerRead", &byte_262899963, &byte_262899963, &sSearchLMDynamicTrigramReadCacheMaxChunksPerReadIntHistory);
  v67 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v67, "SearchLMDynamicQuadgramReadCacheMaxChunksPerRead", &byte_262899963, &byte_262899963, &sSearchLMDynamicQuadgramReadCacheMaxChunksPerReadIntHistory);
  v64 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v64, "SearchInitialSilenceToFinalSilenceLMScore", &byte_262899963, &byte_262899963, &sSearchInitialSilenceToFinalSilenceLMScoreIntHistory);
  v60 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v60, "SearchLatticePruneKeepUniquePathsMaxSize", &byte_262899963, &byte_262899963, &sSearchLatticePruneKeepUniquePathsMaxSizeIntHistory);
  v58 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v58, "SearchLatticeNodeCreationUseRightWord", &byte_262899963, &byte_262899963, &sSearchLatticeNodeCreationUseRightWordBoolHistory);
  v56 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v56, "SearchLatticeUseCoarticulation", &byte_262899963, &byte_262899963, &sSearchLatticeUseCoarticulationBoolHistory);
  v93 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v93, "SearchLatticeUseThresholding", &byte_262899963, &byte_262899963, &sSearchLatticeUseThresholdingBoolHistory);
  v90 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v90, "SearchLatticePreserveAlternateProns", &byte_262899963, &byte_262899963, &sSearchLatticePreserveAlternatePronsBoolHistory);
  v84 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v84, "SearchRecognitionContinuationInterval", &byte_262899963, &byte_262899963, &sSearchRecognitionContinuationIntervalIntHistory);
  v83 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v83, "SearchRecognitionBatchProcessing", &byte_262899963, &byte_262899963, &sSearchRecognitionBatchProcessingBoolHistory);
  v71 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v71, "SearchNonAcousticWordLMThreshScore", &byte_262899963, &byte_262899963, &sSearchNonAcousticWordLMThreshScoreIntHistory);
  v68 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v68, "SearchNonAcousticWordEndThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchNonAcousticWordEndThreshScoreIncrementIntHistory);
  v65 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v65, "SearchNonAcousticWordAndSuccessorLMThreshScore", &byte_262899963, &byte_262899963, &sSearchNonAcousticWordAndSuccessorLMThreshScoreIntHistory);
  v66 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v66, "SearchNonAcousticWordSeedThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchNonAcousticWordSeedThreshScoreIncrementIntHistory);
  v94 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v94, "SearchGenerateConstraintLattice", &byte_262899963, &byte_262899963, &sSearchGenerateConstraintLatticeBoolHistory);
  v92 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v92, "SearchConstraintLatticePreserveTimes", &byte_262899963, &byte_262899963, &sSearchConstraintLatticePreserveTimesBoolHistory);
  v89 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v89, "SearchConstraintLatticeMaxSyntheticSilenceFrames", &byte_262899963, &byte_262899963, &sSearchConstraintLatticeMaxSyntheticSilenceFramesIntHistory);
  v88 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v88, "SearchConstraintLatticeMergeNodeMaxFrames", &byte_262899963, &byte_262899963, &sSearchConstraintLatticeMergeNodeMaxFramesIntHistory);
  v61 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v61, "SearchLatticeComputeOnlyBestPath", &byte_262899963, &byte_262899963, &sSearchLatticeComputeOnlyBestPathBoolHistory);
  v63 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v63, "SearchThreshScoreWhenSilenceBest", &byte_262899963, &byte_262899963, &sSearchThreshScoreWhenSilenceBestIntHistory);
  v62 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v62, "SearchThreshScoreIncrementWhenNonSilenceBest", &byte_262899963, &byte_262899963, &sSearchThreshScoreIncrementWhenNonSilenceBestIntHistory);
  v54 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v54, "SearchFinalSilenceThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchFinalSilenceThreshScoreIncrementIntHistory);
  v87 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v87, "SearchActiveCountLimitScoreCompareWithBeam", &byte_262899963, &byte_262899963, &sSearchActiveCountLimitScoreCompareWithBeamBoolHistory);
  v52 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v52, "SearchActiveNodeCountLimit", &byte_262899963, &byte_262899963, &sSearchActiveNodeCountLimitIntHistory);
  v51 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v51, "SearchActiveNodePreserveMultipleHistories", &byte_262899963, &byte_262899963, &sSearchActiveNodePreserveMultipleHistoriesBoolHistory);
  v50 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v50, "SearchActiveSequenceCountLimit", &byte_262899963, &byte_262899963, &sSearchActiveSequenceCountLimitIntHistory);
  v55 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v55, "SearchWordEndThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchWordEndThreshScoreDecrementIntHistory);
  v53 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v53, "SearchWordEndAgainstBestWordEndThreshScoreDecrement", &byte_262899963, &byte_262899963, &sSearchWordEndAgainstBestWordEndThreshScoreDecrementIntHistory);
  v82 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v82, "SearchWordEndAgainstPrevBestNodeThreshScore", &byte_262899963, &byte_262899963, &sSearchWordEndAgainstPrevBestNodeThreshScoreIntHistory);
  v49 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v49, "SearchLatticeNormalizedThreshFactor", &byte_262899963, &byte_262899963, &sSearchLatticeNormalizedThreshFactorDoubleHistory);
  v48 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v48, "SearchLatticeThreshScore", &byte_262899963, &byte_262899963, &sSearchLatticeThreshScoreIntHistory);
  v73 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v73, "SearchLatticeLinksPerSecondLimit", &byte_262899963, &byte_262899963, &sSearchLatticeLinksPerSecondLimitIntHistory);
  v45 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v45, "SearchLatticePruneLinksPerSecondLimit", &byte_262899963, &byte_262899963, &sSearchLatticePruneLinksPerSecondLimitIntHistory);
  v38 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v38, "SearchLatticeBestCrumbDistanceMaxFrames", &byte_262899963, &byte_262899963, &sSearchLatticeBestCrumbDistanceMaxFramesIntHistory);
  v36 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v36, "SearchLatticeBestCrumbThreshScoreIncrement", &byte_262899963, &byte_262899963, &sSearchLatticeBestCrumbThreshScoreIncrementIntHistory);
  v0 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v0, "SearchLatticeComputeOnlyBestTimes", &byte_262899963, &byte_262899963, &sSearchLatticeComputeOnlyBestTimesBoolHistory);
  v40 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v40, "SearchStateUsePrefiltererMinNumWords", &byte_262899963, &byte_262899963, &sSearchStateUsePrefiltererMinNumWordsIntHistory);
  v21 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v21, "SearchConTransAccStartFrame", &byte_262899963, &byte_262899963, &sSearchConTransAccStartFrameIntHistory);
  v18 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v18, "SearchConTransAccRampFrames", &byte_262899963, &byte_262899963, &sSearchConTransAccRampFramesIntHistory);
  v15 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v15, "SearchConTransAccMaxSilenceFrames", &byte_262899963, &byte_262899963, &sSearchConTransAccMaxSilenceFramesIntHistory);
  v11 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v11, "SearchConTransAccFactorList", &byte_262899963, &byte_262899963, &sSearchConTransAccFactorListStringHistory);
  v1 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v1, "SearchConTransAccDecayFrequency", &byte_262899963, &byte_262899963, &sSearchConTransAccDecayFrequencyIntHistory);
  v2 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v2, "SearchConTransAccDecayFactor", &byte_262899963, &byte_262899963, &sSearchConTransAccDecayFactorDoubleHistory);
  v35 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v35, "SearchPrefilterResultUseCrumbBank", &byte_262899963, &byte_262899963, &sSearchPrefilterResultUseCrumbBankBoolHistory);
  v34 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v34, "SearchPrefilterResultUseCrumbBankDistanceMaxFrames", &byte_262899963, &byte_262899963, &sSearchPrefilterResultUseCrumbBankDistanceMaxFramesIntHistory);
  v33 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v33, "SearchSegmentAllNets", &byte_262899963, &byte_262899963, &sSearchSegmentAllNetsBoolHistory);
  v42 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v42, "SearchHierScorerBeamList", &byte_262899963, &byte_262899963, &sSearchHierScorerBeamListStringHistory);
  v57 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v57, "SearchHierScorerCutoffList", &byte_262899963, &byte_262899963, &sSearchHierScorerCutoffListStringHistory);
  v47 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v47, "SearchHierScorerCutoffRatioList", &byte_262899963, &byte_262899963, &sSearchHierScorerCutoffRatioListStringHistory);
  v37 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v37, "SearchHierInactiveComponentScore", &byte_262899963, &byte_262899963, &sSearchHierInactiveComponentScoreIntHistory);
  v59 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v59, "SearchUsesFst", &byte_262899963, &byte_262899963, &sSearchUsesFstBoolHistory);
  v32 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v32, "FstCoreBeam", &byte_262899963, &byte_262899963, &sFstCoreBeamDoubleHistory);
  v31 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v31, "FstCoreLatticeBeam", &byte_262899963, &byte_262899963, &sFstCoreLatticeBeamDoubleHistory);
  v43 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v43, "FstCoreLateLatticeArcFingerSuckPenalty", &byte_262899963, &byte_262899963, &sFstCoreLateLatticeArcFingerSuckPenaltyDoubleHistory);
  v29 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v29, "FstCoreMaxActive", &byte_262899963, &byte_262899963, &sFstCoreMaxActiveIntHistory);
  v27 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v27, "FstCoreNBest", &byte_262899963, &byte_262899963, &sFstCoreNBestIntHistory);
  v26 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v26, "FstCoreHashPropagateBestTokensFirst", &byte_262899963, &byte_262899963, &sFstCoreHashPropagateBestTokensFirstIntHistory);
  v25 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v25, "FstCoreRepeatFrame", &byte_262899963, &byte_262899963, &sFstCoreRepeatFrameBoolHistory);
  v46 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v46, "FstCoreSearchType", &byte_262899963, &byte_262899963, &sFstCoreSearchTypeEnumHistory);
  v28 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v28, "FstCoreLatticeGeneration", &byte_262899963, &byte_262899963, &sFstCoreLatticeGenerationEnumHistory);
  v44 = MemChunkAlloc(0x28uLL, 0);
  DoubleParamSpec::DoubleParamSpec(v44, "FstCorePelScoreScale", &byte_262899963, &byte_262899963, &sFstCorePelScoreScaleDoubleHistory);
  v23 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v23, "FstCoreGenerateLeafLattice", &byte_262899963, &byte_262899963, &sFstCoreGenerateLeafLatticeBoolHistory);
  v39 = MemChunkAlloc(0x38uLL, 0);
  StringParamSpec::StringParamSpec(v39, "FstCoreAttilaLatticeOutputFileNamePrefix", &byte_262899963, &byte_262899963, &sFstCoreAttilaLatticeOutputFileNamePrefixStringHistory);
  v41 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v41, "FstCorePerWordPenalty", &byte_262899963, &byte_262899963, &sFstCorePerWordPenaltyIntHistory);
  v22 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v22, "SearchDisableHierarchicalScorer", &byte_262899963, &byte_262899963, &sSearchDisableHierarchicalScorerBoolHistory);
  v20 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v20, "SearchDisableGPUScorer", &byte_262899963, &byte_262899963, &sSearchDisableGPUScorerBoolHistory);
  v19 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v19, "FstCoreUseDurationModel", &byte_262899963, &byte_262899963, &sFstCoreUseDurationModelBoolHistory);
  v30 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v30, "FstCoreGenerateLattice", &byte_262899963, &byte_262899963, &sFstCoreGenerateLatticeBoolHistory);
  v17 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v17, "FstCoreHashTokens", &byte_262899963, &byte_262899963, &sFstCoreHashTokensBoolHistory);
  v16 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v16, "FstCoreUseFwdBwdAlgorithm", &byte_262899963, &byte_262899963, &sFstCoreUseFwdBwdAlgorithmBoolHistory);
  v14 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v14, "FstCoreLockPelScoreCache", &byte_262899963, &byte_262899963, &sFstCoreLockPelScoreCacheBoolHistory);
  v13 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v13, "FstCoreCollectTracesPeriod", &byte_262899963, &byte_262899963, &sFstCoreCollectTracesPeriodIntHistory);
  v12 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v12, "FstCoreBackoffThreshScore", &byte_262899963, &byte_262899963, &sFstCoreBackoffThreshScoreIntHistory);
  v24 = MemChunkAlloc(0x30uLL, 0);
  BoolParamSpec::BoolParamSpec(v24, "SearchPartialExtendWithPrefilterer", &byte_262899963, &byte_262899963, &sSearchPartialExtendWithPrefiltererBoolHistory);
  v3 = MemChunkAlloc(0x28uLL, 0);
  EnumParamSpec::EnumParamSpec(v3, "SearchPartialIncludePrefiltererResult", &byte_262899963, &byte_262899963, &sSearchPartialIncludePrefiltererResultEnumHistory);
  v4 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v4, "SearchPartialIncompleteMaxWords", &byte_262899963, &byte_262899963, &sSearchPartialIncompleteMaxWordsIntHistory);
  v5 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v5, "SearchPartialIncompleteMinListFrames", &byte_262899963, &byte_262899963, &sSearchPartialIncompleteMinListFramesIntHistory);
  v6 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v6, "SearchPartialIncompleteMinWordFrames", &byte_262899963, &byte_262899963, &sSearchPartialIncompleteMinWordFramesIntHistory);
  v7 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v7, "SearchPartialCompleteMinWordFrames", &byte_262899963, &byte_262899963, &sSearchPartialCompleteMinWordFramesIntHistory);
  v8 = MemChunkAlloc(0x28uLL, 0);
  IntParamSpec::IntParamSpec(v8, "SearchPartialRegularMinWordFrames", &byte_262899963, &byte_262899963, &sSearchPartialRegularMinWordFramesIntHistory);
  ParamSpecMgr::addParam(qword_281051FB8, v0);
  ParamSpecMgr::addParam(qword_281051FB8, v91);
  ParamSpecMgr::addParam(qword_281051FB8, v60);
  ParamSpecMgr::addParam(qword_281051FB8, v58);
  ParamSpecMgr::addParam(qword_281051FB8, v56);
  ParamSpecMgr::addParam(qword_281051FB8, v97);
  ParamSpecMgr::addParam(qword_281051FB8, v96);
  ParamSpecMgr::addParam(qword_281051FB8, v98);
  ParamSpecMgr::addParam(qword_281051FB8, v95);
  ParamSpecMgr::addParam(qword_281051FB8, v81);
  ParamSpecMgr::addParam(qword_281051FB8, v78);
  ParamSpecMgr::addParam(qword_281051FB8, v76);
  ParamSpecMgr::addParam(qword_281051FB8, v75);
  ParamSpecMgr::addParam(qword_281051FB8, v69);
  ParamSpecMgr::addParam(qword_281051FB8, v74);
  ParamSpecMgr::addParam(qword_281051FB8, v105);
  ParamSpecMgr::addParam(qword_281051FB8, v2);
  ParamSpecMgr::addParam(qword_281051FB8, v1);
  ParamSpecMgr::addParam(qword_281051FB8, v11);
  ParamSpecMgr::addParam(qword_281051FB8, v15);
  ParamSpecMgr::addParam(qword_281051FB8, v18);
  ParamSpecMgr::addParam(qword_281051FB8, v21);
  ParamSpecMgr::addParam(qword_281051FB8, v118);
  ParamSpecMgr::addParam(qword_281051FB8, v117);
  ParamSpecMgr::addParam(qword_281051FB8, v114);
  ParamSpecMgr::addParam(qword_281051FB8, v116);
  ParamSpecMgr::addParam(qword_281051FB8, v115);
  ParamSpecMgr::addParam(qword_281051FB8, v64);
  ParamSpecMgr::addParam(qword_281051FB8, v109);
  ParamSpecMgr::addParam(qword_281051FB8, v79);
  ParamSpecMgr::addParam(qword_281051FB8, v70);
  ParamSpecMgr::addParam(qword_281051FB8, v67);
  ParamSpecMgr::addParam(qword_281051FB8, v80);
  ParamSpecMgr::addParam(qword_281051FB8, v77);
  ParamSpecMgr::addParam(qword_281051FB8, v72);
  ParamSpecMgr::addParam(qword_281051FB8, v86);
  ParamSpecMgr::addParam(qword_281051FB8, v85);
  ParamSpecMgr::addParam(qword_281051FB8, v52);
  ParamSpecMgr::addParam(qword_281051FB8, v51);
  ParamSpecMgr::addParam(qword_281051FB8, v50);
  ParamSpecMgr::addParam(qword_281051FB8, v54);
  ParamSpecMgr::addParam(qword_281051FB8, v38);
  ParamSpecMgr::addParam(qword_281051FB8, v36);
  ParamSpecMgr::addParam(qword_281051FB8, v61);
  ParamSpecMgr::addParam(qword_281051FB8, v100);
  ParamSpecMgr::addParam(qword_281051FB8, v101);
  ParamSpecMgr::addParam(qword_281051FB8, v102);
  ParamSpecMgr::addParam(qword_281051FB8, v104);
  ParamSpecMgr::addParam(qword_281051FB8, v45);
  ParamSpecMgr::addParam(qword_281051FB8, v49);
  ParamSpecMgr::addParam(qword_281051FB8, v48);
  ParamSpecMgr::addParam(qword_281051FB8, v99);
  ParamSpecMgr::addParam(qword_281051FB8, v40);
  ParamSpecMgr::addParam(qword_281051FB8, v62);
  ParamSpecMgr::addParam(qword_281051FB8, v63);
  ParamSpecMgr::addParam(qword_281051FB8, v53);
  ParamSpecMgr::addParam(qword_281051FB8, v55);
  ParamSpecMgr::addParam(qword_281051FB8, v119);
  ParamSpecMgr::addParam(qword_281051FB8, v65);
  ParamSpecMgr::addParam(qword_281051FB8, v68);
  ParamSpecMgr::addParam(qword_281051FB8, v71);
  ParamSpecMgr::addParam(qword_281051FB8, v66);
  ParamSpecMgr::addParam(qword_281051FB8, v121);
  ParamSpecMgr::addParam(qword_281051FB8, v127);
  ParamSpecMgr::addParam(qword_281051FB8, v126);
  ParamSpecMgr::addParam(qword_281051FB8, v103);
  ParamSpecMgr::addParam(qword_281051FB8, v35);
  ParamSpecMgr::addParam(qword_281051FB8, v34);
  ParamSpecMgr::addParam(qword_281051FB8, v33);
  ParamSpecMgr::addParam(qword_281051FB8, v83);
  ParamSpecMgr::addParam(qword_281051FB8, v84);
  ParamSpecMgr::addParam(qword_281051FB8, v120);
  ParamSpecMgr::addParam(qword_281051FB8, v113);
  ParamSpecMgr::addParam(qword_281051FB8, v112);
  ParamSpecMgr::addParam(qword_281051FB8, v123);
  ParamSpecMgr::addParam(qword_281051FB8, v125);
  ParamSpecMgr::addParam(qword_281051FB8, v124);
  ParamSpecMgr::addParam(qword_281051FB8, v110);
  ParamSpecMgr::addParam(qword_281051FB8, v108);
  ParamSpecMgr::addParam(qword_281051FB8, v111);
  ParamSpecMgr::addParam(qword_281051FB8, v107);
  ParamSpecMgr::addParam(qword_281051FB8, v106);
  ParamSpecMgr::addParam(qword_281051FB8, v42);
  ParamSpecMgr::addParam(qword_281051FB8, v37);
  ParamSpecMgr::addParam(qword_281051FB8, v32);
  ParamSpecMgr::addParam(qword_281051FB8, v31);
  ParamSpecMgr::addParam(qword_281051FB8, v29);
  ParamSpecMgr::addParam(qword_281051FB8, v27);
  ParamSpecMgr::addParam(qword_281051FB8, v26);
  ParamSpecMgr::addParam(qword_281051FB8, v25);
  ParamSpecMgr::addParam(qword_281051FB8, v23);
  ParamSpecMgr::addParam(qword_281051FB8, v90);
  ParamSpecMgr::addParam(qword_281051FB8, v122);
  ParamSpecMgr::addParam(qword_281051FB8, v93);
  ParamSpecMgr::addParam(qword_281051FB8, v22);
  ParamSpecMgr::addParam(qword_281051FB8, v20);
  ParamSpecMgr::addParam(qword_281051FB8, v47);
  ParamSpecMgr::addParam(qword_281051FB8, v19);
  ParamSpecMgr::addParam(qword_281051FB8, v28);
  ParamSpecMgr::addParam(qword_281051FB8, v17);
  ParamSpecMgr::addParam(qword_281051FB8, v16);
  ParamSpecMgr::addParam(qword_281051FB8, v14);
  ParamSpecMgr::addParam(qword_281051FB8, v43);
  ParamSpecMgr::addParam(qword_281051FB8, v13);
  ParamSpecMgr::addParam(qword_281051FB8, v12);
  ParamSpecMgr::addParam(qword_281051FB8, v3);
  ParamSpecMgr::addParam(qword_281051FB8, v4);
  ParamSpecMgr::addParam(qword_281051FB8, v5);
  ParamSpecMgr::addParam(qword_281051FB8, v6);
  ParamSpecMgr::addParam(qword_281051FB8, v7);
  ParamSpecMgr::addParam(qword_281051FB8, v8);
  ParamSpecMgr::addParam(qword_281051FB8, v87);
  ParamSpecMgr::addParam(qword_281051FB8, v128);
  ParamSpecMgr::addParam(qword_281051FB8, v89);
  ParamSpecMgr::addParam(qword_281051FB8, v88);
  ParamSpecMgr::addParam(qword_281051FB8, v92);
  ParamSpecMgr::addParam(qword_281051FB8, v94);
  ParamSpecMgr::addParam(qword_281051FB8, v57);
  ParamSpecMgr::addParam(qword_281051FB8, v73);
  ParamSpecMgr::addParam(qword_281051FB8, v82);
  ParamSpecMgr::addParam(qword_281051FB8, v39);
  ParamSpecMgr::addParam(qword_281051FB8, v46);
  ParamSpecMgr::addParam(qword_281051FB8, v30);
  ParamSpecMgr::addParam(qword_281051FB8, v44);
  ParamSpecMgr::addParam(qword_281051FB8, v129);
  ParamSpecMgr::addParam(qword_281051FB8, v41);
  ParamSpecMgr::addParam(qword_281051FB8, v24);
  ParamSpecMgr::addParam(qword_281051FB8, v59);
  v9 = qword_281051FB8;

  return ParamSpecMgr::sortParams(v9);
}

_DWORD *SearchParamSet::SearchParamSet(_DWORD *a1, const char *a2, int a3, int a4, int a5)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 2), a2);
  a1[6] = a3;
  a1[7] = a4;
  a1[8] = a5;
  a1[9] = 0;
  *a1 = &unk_287528020;
  DgnString::DgnString((a1 + 26));
  DgnString::DgnString((a1 + 98));
  DgnString::DgnString((a1 + 114));
  (*(*a1 + 16))(a1);
  return a1;
}

void sub_2626F8E38(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 57));
  DgnString::~DgnString((v1 + 49));
  DgnString::~DgnString((v1 + 13));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t SearchParamSet::SearchParamSet(uint64_t a1, uint64_t a2, char *a3, int a4, int a5, int a6)
{
  *a1 = &unk_287528C00;
  DgnString::DgnString((a1 + 8), a3);
  *(a1 + 24) = a4;
  *(a1 + 28) = a5;
  *(a1 + 32) = a6;
  *(a1 + 36) = 0;
  *a1 = &unk_287528020;
  DgnString::DgnString((a1 + 104));
  DgnString::DgnString((a1 + 392));
  DgnString::DgnString((a1 + 456));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  DgnString::operator=((a1 + 104), (a2 + 104));
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 244) = *(a2 + 244);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 324) = *(a2 + 324);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 332) = *(a2 + 332);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 337) = *(a2 + 337);
  *(a1 + 340) = *(a2 + 340);
  *(a1 + 344) = *(a2 + 344);
  v11 = *(a2 + 360);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = v11;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 369) = *(a2 + 369);
  *(a1 + 372) = *(a2 + 372);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 380) = *(a2 + 380);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 385) = *(a2 + 385);
  DgnString::operator=((a1 + 392), (a2 + 392));
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 444) = *(a2 + 444);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 450) = *(a2 + 450);
  DgnString::operator=((a1 + 456), (a2 + 456));
  *(a1 + 472) = *(a2 + 472);
  *(a1 + 476) = *(a2 + 476);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 481) = *(a2 + 481);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 512) = *(a2 + 512);
  return a1;
}

void sub_2626F9140(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 49));
  DgnString::~DgnString((v1 + 13));
  *v1 = v2;
  DgnString::~DgnString((v1 + 1));
  _Unwind_Resume(a1);
}

uint64_t SearchParamSet::setDefaults(SearchParamSet *this)
{
  *(this + 40) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 1, 0, 0);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 2, 0, 0);
  *(this + 12) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 3, 0, 0);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 4, 0, 0);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 5, 0, 0);
  *(this + 14) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 6, 0, 0);
  *(this + 15) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 7, 0, 0);
  *(this + 16) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 8, 0, 0);
  *(this + 17) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 9, 0, 0);
  *(this + 72) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 10, 0, 0);
  *(this + 73) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 11, 0, 0);
  *(this + 74) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 12, 0, 0);
  *(this + 75) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 13, 0, 0);
  *(this + 19) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 14, 0, 0);
  *(this + 20) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 15, 0, 0);
  *(this + 21) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 16, 0, 0);
  *(this + 11) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 17, 0, 0);
  *(this + 24) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 18, 0, 0);
  Default_string = ParamSpecMgr::ParamGetDefault_string(qword_281051FB8, 19, 0, 0);
  DgnString::operator=((this + 104), Default_string);
  *(this + 30) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 20, 0, 0);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 21, 0, 0);
  *(this + 32) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 22, 0, 0);
  *(this + 33) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 23);
  *(this + 17) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 24, 0, 0);
  *(this + 18) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 25, 0, 0);
  *(this + 38) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 26);
  *(this + 39) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 27);
  *(this + 40) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 28, 0, 0);
  *(this + 41) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 29, 0, 0);
  *(this + 42) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 30, 0, 0);
  *(this + 43) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 31, 0, 0);
  *(this + 44) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 32, 0, 0);
  *(this + 45) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 33, 0, 0);
  *(this + 46) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 34, 0, 0);
  *(this + 47) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 35, 0, 0);
  *(this + 48) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 36);
  *(this + 196) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 37, 0, 0);
  *(this + 50) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 38, 0, 0);
  *(this + 204) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 39, 0, 0);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 40, 0, 0);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 41, 0, 0);
  *(this + 54) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 42, 0, 0);
  *(this + 55) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 43, 0, 0);
  *(this + 224) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 44, 0, 0);
  *(this + 57) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 45, 0, 0);
  *(this + 58) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 46, 0, 0);
  *(this + 59) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 47, 0, 0);
  *(this + 60) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 48, 0, 0);
  *(this + 61) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 49, 0, 0);
  *(this + 31) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 50, 0, 0);
  *(this + 64) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 51, 0, 0);
  *(this + 260) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 52, 0, 0);
  *(this + 66) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 53, 0, 0);
  *(this + 67) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 54, 0, 0);
  *(this + 68) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 55, 0, 0);
  *(this + 69) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 56, 0, 0);
  *(this + 70) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 57, 0, 0);
  *(this + 71) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 58);
  *(this + 72) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 59, 0, 0);
  *(this + 73) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 60, 0, 0);
  *(this + 74) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 61, 0, 0);
  *(this + 75) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 62, 0, 0);
  *(this + 76) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 63, 0, 0);
  *(this + 39) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 64, 0, 0);
  *(this + 320) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 65, 0, 0);
  *(this + 81) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 66, 0, 0);
  *(this + 328) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 67, 0, 0);
  *(this + 83) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 68, 0, 0);
  *(this + 336) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 69, 0, 0);
  *(this + 337) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 70, 0, 0);
  *(this + 85) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 71, 0, 0);
  *(this + 86) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 72, 0, 0);
  *(this + 44) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 73, 0, 0);
  *(this + 90) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 74, 0, 0);
  *(this + 91) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 75, 0, 0);
  *(this + 368) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 76, 0, 0);
  *(this + 369) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 77, 0, 0);
  *(this + 93) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 78, 0, 0);
  *(this + 376) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 79, 0, 0);
  *(this + 95) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 80, 0, 0);
  *(this + 384) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 81, 0, 0);
  *(this + 385) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 82, 0, 0);
  v3 = ParamSpecMgr::ParamGetDefault_string(qword_281051FB8, 83, 0, 0);
  DgnString::operator=((this + 392), v3);
  *(this + 102) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 84, 0, 0);
  *(this + 52) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 85, 0, 0);
  *(this + 53) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 86, 0, 0);
  *(this + 108) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 87, 0, 0);
  *(this + 109) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 88, 0, 0);
  *(this + 110) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 89, 0, 0);
  *(this + 444) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 90, 0, 0);
  *(this + 445) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 91, 0, 0);
  *(this + 446) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 92, 0, 0);
  *(this + 447) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 93, 0, 0);
  *(this + 448) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 94, 0, 0);
  *(this + 449) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 95, 0, 0);
  *(this + 450) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 96, 0, 0);
  v4 = ParamSpecMgr::ParamGetDefault_string(qword_281051FB8, 97, 0, 0);
  DgnString::operator=((this + 456), v4);
  *(this + 472) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 98, 0, 0);
  *(this + 119) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 99);
  *(this + 480) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 100, 0, 0);
  *(this + 481) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 101, 0, 0);
  *(this + 482) = ParamSpecMgr::ParamGetDefault_BOOL(qword_281051FB8, 102, 0, 0);
  *(this + 61) = ParamSpecMgr::ParamGetDefault_double(qword_281051FB8, 103, 0, 0);
  *(this + 124) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 104, 0, 0);
  *(this + 125) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 105, 0, 0);
  *(this + 126) = ParamSpecMgr::ParamGetDefault_enum(qword_281051FB8, 106);
  *(this + 127) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 107, 0, 0);
  *(this + 128) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 108, 0, 0);
  *(this + 129) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 109, 0, 0);
  *(this + 130) = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 110, 0, 0);
  result = ParamSpecMgr::ParamGetDefault_int(qword_281051FB8, 111, 0, 0);
  *(this + 131) = result;
  return result;
}

uint64_t SearchParamSet::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject(a1 + 8, a2) + 16 * (a2 != 3);
  if ((gShadowDiagnosticShowIdealizedObjectSizes & 1) == 0)
  {
    v5 = sizeObject(a1 + 104, a2);
    v6 = sizeObject(a1 + 392, a2);
    v7 = sizeObject(a1 + 456, a2);
    v8 = 11;
    if (a2 == 3)
    {
      v8 = 0;
    }

    v9 = 20;
    if (a2 == 3)
    {
      v9 = 0;
    }

    v4 += v9 + 40 * (a2 != 3) + v8 + 56 * (a2 != 3) + 248 * (a2 != 3) + v5 + v6 + v7;
  }

  return v4;
}

void SearchParamSet::setParamSetSearchConTransAccFactorList(SearchParamSet *this, char *a2)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("SearchConTransAccFactorList", "string");
  }

  else
  {
    DgnString::operator=((this + 104), a2);
  }
}

void SearchParamSet::setParamSetSearchHierScorerBeamList(SearchParamSet *this, char *a2)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("SearchHierScorerBeamList", "string");
  }

  else
  {
    DgnString::operator=((this + 392), a2);
  }
}

void SearchParamSet::setParamSetSearchHierScorerCutoffRatioList(SearchParamSet *this, char *a2)
{
  if (*(this + 9))
  {
    throwParamSetSetFailed("SearchHierScorerCutoffRatioList", "string");
  }

  else
  {
    DgnString::operator=((this + 456), a2);
  }
}

uint64_t SearchParamSet::getBoolParameter(_BYTE *a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 1;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[40];
      return v3 & 1;
    case 2:
      v4 = "int";
      v5 = 2;
      goto LABEL_149;
    case 3:
      v4 = "int";
      v5 = 3;
      goto LABEL_149;
    case 4:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 4;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[52];
      return v3 & 1;
    case 5:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 5;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[53];
      return v3 & 1;
    case 6:
      v4 = "int";
      v5 = 6;
      goto LABEL_149;
    case 7:
      v4 = "int";
      v5 = 7;
      goto LABEL_149;
    case 8:
      v4 = "int";
      v5 = 8;
      goto LABEL_149;
    case 9:
      v4 = "int";
      v5 = 9;
      goto LABEL_149;
    case 10:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 10;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[72];
      return v3 & 1;
    case 11:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 11;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[73];
      return v3 & 1;
    case 12:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 12;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[74];
      return v3 & 1;
    case 13:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 13;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[75];
      return v3 & 1;
    case 14:
      v4 = "int";
      v5 = 14;
      goto LABEL_149;
    case 15:
      v4 = "int";
      v5 = 15;
      goto LABEL_149;
    case 16:
      v4 = "int";
      v5 = 16;
      goto LABEL_149;
    case 17:
      v4 = "double";
      v5 = 17;
      goto LABEL_149;
    case 18:
      v4 = "int";
      v5 = 18;
      goto LABEL_149;
    case 19:
      v4 = "string";
      v5 = 19;
      goto LABEL_149;
    case 20:
      v4 = "int";
      v5 = 20;
      goto LABEL_149;
    case 21:
      v4 = "int";
      v5 = 21;
      goto LABEL_149;
    case 22:
      v4 = "int";
      v5 = 22;
      goto LABEL_149;
    case 23:
      v4 = "enum";
      v5 = 23;
      goto LABEL_149;
    case 24:
      v4 = "double";
      v5 = 24;
      goto LABEL_149;
    case 25:
      v4 = "double";
      v5 = 25;
      goto LABEL_149;
    case 26:
      v4 = "enum";
      v5 = 26;
      goto LABEL_149;
    case 27:
      v4 = "enum";
      v5 = 27;
      goto LABEL_149;
    case 28:
      v4 = "int";
      v5 = 28;
      goto LABEL_149;
    case 29:
      v4 = "int";
      v5 = 29;
      goto LABEL_149;
    case 30:
      v4 = "int";
      v5 = 30;
      goto LABEL_149;
    case 31:
      v4 = "int";
      v5 = 31;
      goto LABEL_149;
    case 32:
      v4 = "int";
      v5 = 32;
      goto LABEL_149;
    case 33:
      v4 = "int";
      v5 = 33;
      goto LABEL_149;
    case 34:
      v4 = "int";
      v5 = 34;
      goto LABEL_149;
    case 35:
      v4 = "int";
      v5 = 35;
      goto LABEL_149;
    case 36:
      v4 = "enum";
      v5 = 36;
      goto LABEL_149;
    case 37:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 37;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[196];
      return v3 & 1;
    case 38:
      v4 = "int";
      v5 = 38;
      goto LABEL_149;
    case 39:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 39;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[204];
      return v3 & 1;
    case 40:
      v4 = "int";
      v5 = 40;
      goto LABEL_149;
    case 41:
      v4 = "int";
      v5 = 41;
      goto LABEL_149;
    case 42:
      v4 = "int";
      v5 = 42;
      goto LABEL_149;
    case 43:
      v4 = "int";
      v5 = 43;
      goto LABEL_149;
    case 44:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 44;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[224];
      return v3 & 1;
    case 45:
      v4 = "int";
      v5 = 45;
      goto LABEL_149;
    case 46:
      v4 = "int";
      v5 = 46;
      goto LABEL_149;
    case 47:
      v4 = "int";
      v5 = 47;
      goto LABEL_149;
    case 48:
      v4 = "int";
      v5 = 48;
      goto LABEL_149;
    case 49:
      v4 = "int";
      v5 = 49;
      goto LABEL_149;
    case 50:
      v4 = "double";
      v5 = 50;
      goto LABEL_149;
    case 51:
      v4 = "int";
      v5 = 51;
      goto LABEL_149;
    case 52:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 52;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[260];
      return v3 & 1;
    case 53:
      v4 = "int";
      v5 = 53;
      goto LABEL_149;
    case 54:
      v4 = "int";
      v5 = 54;
      goto LABEL_149;
    case 55:
      v4 = "int";
      v5 = 55;
      goto LABEL_149;
    case 56:
      v4 = "int";
      v5 = 56;
      goto LABEL_149;
    case 57:
      v4 = "int";
      v5 = 57;
      goto LABEL_149;
    case 58:
      v4 = "enum";
      v5 = 58;
      goto LABEL_149;
    case 59:
      v4 = "int";
      v5 = 59;
      goto LABEL_149;
    case 60:
      v4 = "int";
      v5 = 60;
      goto LABEL_149;
    case 61:
      v4 = "int";
      v5 = 61;
      goto LABEL_149;
    case 62:
      v4 = "int";
      v5 = 62;
      goto LABEL_149;
    case 63:
      v4 = "int";
      v5 = 63;
      goto LABEL_149;
    case 64:
      v4 = "double";
      v5 = 64;
      goto LABEL_149;
    case 65:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 65;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[320];
      return v3 & 1;
    case 66:
      v4 = "int";
      v5 = 66;
      goto LABEL_149;
    case 67:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 67;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[328];
      return v3 & 1;
    case 68:
      v4 = "int";
      v5 = 68;
      goto LABEL_149;
    case 69:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 69;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[336];
      return v3 & 1;
    case 70:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 70;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[337];
      return v3 & 1;
    case 71:
      v4 = "int";
      v5 = 71;
      goto LABEL_149;
    case 72:
      v4 = "int";
      v5 = 72;
      goto LABEL_149;
    case 73:
      v4 = "double";
      v5 = 73;
      goto LABEL_149;
    case 74:
      v4 = "int";
      v5 = 74;
      goto LABEL_149;
    case 75:
      v4 = "int";
      v5 = 75;
      goto LABEL_149;
    case 76:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 76;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[368];
      return v3 & 1;
    case 77:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 77;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[369];
      return v3 & 1;
    case 78:
      v4 = "int";
      v5 = 78;
      goto LABEL_149;
    case 79:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 79;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[376];
      return v3 & 1;
    case 80:
      v4 = "int";
      v5 = 80;
      goto LABEL_149;
    case 81:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 81;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[384];
      return v3 & 1;
    case 82:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 82;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[385];
      return v3 & 1;
    case 83:
      v4 = "string";
      v5 = 83;
      goto LABEL_149;
    case 84:
      v4 = "int";
      v5 = 84;
      goto LABEL_149;
    case 85:
      v4 = "double";
      v5 = 85;
      goto LABEL_149;
    case 86:
      v4 = "double";
      v5 = 86;
      goto LABEL_149;
    case 87:
      v4 = "int";
      v5 = 87;
      goto LABEL_149;
    case 88:
      v4 = "int";
      v5 = 88;
      goto LABEL_149;
    case 89:
      v4 = "int";
      v5 = 89;
      goto LABEL_149;
    case 90:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 90;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[444];
      return v3 & 1;
    case 91:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 91;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[445];
      return v3 & 1;
    case 92:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 92;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[446];
      return v3 & 1;
    case 93:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 93;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[447];
      return v3 & 1;
    case 94:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 94;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[448];
      return v3 & 1;
    case 95:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 95;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[449];
      return v3 & 1;
    case 96:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 96;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[450];
      return v3 & 1;
    case 97:
      v4 = "string";
      v5 = 97;
      goto LABEL_149;
    case 98:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 98;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[472];
      return v3 & 1;
    case 99:
      v4 = "enum";
      v5 = 99;
      goto LABEL_149;
    case 100:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 100;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[480];
      return v3 & 1;
    case 101:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 101;
        goto LABEL_211;
      }

      if (a3)
      {
        goto LABEL_179;
      }

      v3 = a1[481];
      break;
    case 102:
      if (a3 == 1)
      {
        v7 = qword_281051FB8;
        v8 = 102;
LABEL_211:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v7, v8);
      }

      else if (a3)
      {
LABEL_179:
        throwWrongQueryMode(a3, "BOOL");
LABEL_150:
        v3 = 0;
      }

      else
      {
        v3 = a1[482];
      }

      break;
    case 103:
      v4 = "double";
      v5 = 103;
      goto LABEL_149;
    case 104:
      v4 = "int";
      v5 = 104;
      goto LABEL_149;
    case 105:
      v4 = "int";
      v5 = 105;
      goto LABEL_149;
    case 106:
      v4 = "enum";
      v5 = 106;
      goto LABEL_149;
    case 107:
      v4 = "int";
      v5 = 107;
      goto LABEL_149;
    case 108:
      v4 = "int";
      v5 = 108;
      goto LABEL_149;
    case 109:
      v4 = "int";
      v5 = 109;
      goto LABEL_149;
    case 110:
      v4 = "int";
      v5 = 110;
      goto LABEL_149;
    case 111:
      v4 = "int";
      v5 = 111;
LABEL_149:
      throwWrongTypeForParamId(v5, v4, "BOOL");
      goto LABEL_150;
    default:
      throwWrongParamIdValue(a2, "BOOL");
      goto LABEL_150;
  }

  return v3 & 1;
}

uint64_t SearchParamSet::getIntParameter(unsigned int *a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_298;
    case 2:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 2;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 2;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 2;
      goto LABEL_484;
    case 3:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[12];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 3;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 3;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 3;
      goto LABEL_484;
    case 4:
      v3 = "BOOL";
      v4 = 4;
      goto LABEL_298;
    case 5:
      v3 = "BOOL";
      v4 = 5;
      goto LABEL_298;
    case 6:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[14];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 6;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 6;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 6;
      goto LABEL_484;
    case 7:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[15];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 7;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 7;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 7;
      goto LABEL_484;
    case 8:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[16];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 8;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 8;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 8;
      goto LABEL_484;
    case 9:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[17];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 9;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 9;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 9;
      goto LABEL_484;
    case 10:
      v3 = "BOOL";
      v4 = 10;
      goto LABEL_298;
    case 11:
      v3 = "BOOL";
      v4 = 11;
      goto LABEL_298;
    case 12:
      v3 = "BOOL";
      v4 = 12;
      goto LABEL_298;
    case 13:
      v3 = "BOOL";
      v4 = 13;
      goto LABEL_298;
    case 14:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[19];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 14;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 14;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 14;
      goto LABEL_484;
    case 15:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[20];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 15;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 15;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 15;
      goto LABEL_484;
    case 16:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[21];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 16;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 16;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 16;
      goto LABEL_484;
    case 17:
      v3 = "double";
      v4 = 17;
      goto LABEL_298;
    case 18:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[24];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 18;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 18;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 18;
      goto LABEL_484;
    case 19:
      v3 = "string";
      v4 = 19;
      goto LABEL_298;
    case 20:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[30];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 20;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 20;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 20;
      goto LABEL_484;
    case 21:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 21;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 21;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 21;
      goto LABEL_484;
    case 22:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[32];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 22;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 22;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 22;
      goto LABEL_484;
    case 23:
      v3 = "enum";
      v4 = 23;
      goto LABEL_298;
    case 24:
      v3 = "double";
      v4 = 24;
      goto LABEL_298;
    case 25:
      v3 = "double";
      v4 = 25;
      goto LABEL_298;
    case 26:
      v3 = "enum";
      v4 = 26;
      goto LABEL_298;
    case 27:
      v3 = "enum";
      v4 = 27;
      goto LABEL_298;
    case 28:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[40];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 28;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 28;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 28;
      goto LABEL_484;
    case 29:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[41];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 29;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 29;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 29;
      goto LABEL_484;
    case 30:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[42];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 30;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 30;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 30;
      goto LABEL_484;
    case 31:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[43];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 31;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 31;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 31;
      goto LABEL_484;
    case 32:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[44];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 32;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 32;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 32;
      goto LABEL_484;
    case 33:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[45];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 33;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 33;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 33;
      goto LABEL_484;
    case 34:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[46];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 34;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 34;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 34;
      goto LABEL_484;
    case 35:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[47];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 35;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 35;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 35;
      goto LABEL_484;
    case 36:
      v3 = "enum";
      v4 = 36;
      goto LABEL_298;
    case 37:
      v3 = "BOOL";
      v4 = 37;
      goto LABEL_298;
    case 38:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[50];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 38;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 38;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 38;
      goto LABEL_484;
    case 39:
      v3 = "BOOL";
      v4 = 39;
      goto LABEL_298;
    case 40:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[52];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 40;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 40;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 40;
      goto LABEL_484;
    case 41:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[53];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 41;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 41;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 41;
      goto LABEL_484;
    case 42:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[54];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 42;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 42;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 42;
      goto LABEL_484;
    case 43:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[55];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 43;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 43;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 43;
      goto LABEL_484;
    case 44:
      v3 = "BOOL";
      v4 = 44;
      goto LABEL_298;
    case 45:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[57];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 45;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 45;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 45;
      goto LABEL_484;
    case 46:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[58];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 46;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 46;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 46;
      goto LABEL_484;
    case 47:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[59];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 47;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 47;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 47;
      goto LABEL_484;
    case 48:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[60];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 48;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 48;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 48;
      goto LABEL_484;
    case 49:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[61];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 49;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 49;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 49;
      goto LABEL_484;
    case 50:
      v3 = "double";
      v4 = 50;
      goto LABEL_298;
    case 51:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[64];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 51;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 51;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 51;
      goto LABEL_484;
    case 52:
      v3 = "BOOL";
      v4 = 52;
      goto LABEL_298;
    case 53:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[66];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 53;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 53;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 53;
      goto LABEL_484;
    case 54:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[67];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 54;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 54;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 54;
      goto LABEL_484;
    case 55:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[68];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 55;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 55;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 55;
      goto LABEL_484;
    case 56:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[69];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 56;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 56;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 56;
      goto LABEL_484;
    case 57:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[70];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 57;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 57;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 57;
      goto LABEL_484;
    case 58:
      v3 = "enum";
      v4 = 58;
      goto LABEL_298;
    case 59:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[72];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 59;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 59;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 59;
      goto LABEL_484;
    case 60:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[73];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 60;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 60;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 60;
      goto LABEL_484;
    case 61:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[74];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 61;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 61;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 61;
      goto LABEL_484;
    case 62:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[75];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 62;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 62;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 62;
      goto LABEL_484;
    case 63:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[76];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 63;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 63;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 63;
      goto LABEL_484;
    case 64:
      v3 = "double";
      v4 = 64;
      goto LABEL_298;
    case 65:
      v3 = "BOOL";
      v4 = 65;
      goto LABEL_298;
    case 66:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[81];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 66;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 66;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 66;
      goto LABEL_484;
    case 67:
      v3 = "BOOL";
      v4 = 67;
      goto LABEL_298;
    case 68:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[83];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 68;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 68;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 68;
      goto LABEL_484;
    case 69:
      v3 = "BOOL";
      v4 = 69;
      goto LABEL_298;
    case 70:
      v3 = "BOOL";
      v4 = 70;
      goto LABEL_298;
    case 71:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[85];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 71;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 71;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 71;
      goto LABEL_484;
    case 72:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[86];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 72;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 72;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 72;
      goto LABEL_484;
    case 73:
      v3 = "double";
      v4 = 73;
      goto LABEL_298;
    case 74:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[90];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 74;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 74;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 74;
      goto LABEL_484;
    case 75:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[91];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 75;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 75;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 75;
      goto LABEL_484;
    case 76:
      v3 = "BOOL";
      v4 = 76;
      goto LABEL_298;
    case 77:
      v3 = "BOOL";
      v4 = 77;
      goto LABEL_298;
    case 78:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[93];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 78;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 78;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 78;
      goto LABEL_484;
    case 79:
      v3 = "BOOL";
      v4 = 79;
      goto LABEL_298;
    case 80:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[95];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 80;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 80;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 80;
      goto LABEL_484;
    case 81:
      v3 = "BOOL";
      v4 = 81;
      goto LABEL_298;
    case 82:
      v3 = "BOOL";
      v4 = 82;
      goto LABEL_298;
    case 83:
      v3 = "string";
      v4 = 83;
      goto LABEL_298;
    case 84:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[102];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 84;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 84;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 84;
      goto LABEL_484;
    case 85:
      v3 = "double";
      v4 = 85;
      goto LABEL_298;
    case 86:
      v3 = "double";
      v4 = 86;
      goto LABEL_298;
    case 87:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[108];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 87;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 87;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 87;
      goto LABEL_484;
    case 88:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[109];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 88;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 88;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 88;
      goto LABEL_484;
    case 89:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[110];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 89;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 89;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 89;
      goto LABEL_484;
    case 90:
      v3 = "BOOL";
      v4 = 90;
      goto LABEL_298;
    case 91:
      v3 = "BOOL";
      v4 = 91;
      goto LABEL_298;
    case 92:
      v3 = "BOOL";
      v4 = 92;
      goto LABEL_298;
    case 93:
      v3 = "BOOL";
      v4 = 93;
      goto LABEL_298;
    case 94:
      v3 = "BOOL";
      v4 = 94;
      goto LABEL_298;
    case 95:
      v3 = "BOOL";
      v4 = 95;
      goto LABEL_298;
    case 96:
      v3 = "BOOL";
      v4 = 96;
      goto LABEL_298;
    case 97:
      v3 = "string";
      v4 = 97;
      goto LABEL_298;
    case 98:
      v3 = "BOOL";
      v4 = 98;
      goto LABEL_298;
    case 99:
      v3 = "enum";
      v4 = 99;
      goto LABEL_298;
    case 100:
      v3 = "BOOL";
      v4 = 100;
      goto LABEL_298;
    case 101:
      v3 = "BOOL";
      v4 = 101;
      goto LABEL_298;
    case 102:
      v3 = "BOOL";
      v4 = 102;
      goto LABEL_298;
    case 103:
      v3 = "double";
      v4 = 103;
      goto LABEL_298;
    case 104:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[124];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 104;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 104;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 104;
      goto LABEL_484;
    case 105:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[125];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 105;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 105;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 105;
      goto LABEL_484;
    case 106:
      v3 = "enum";
      v4 = 106;
LABEL_298:
      throwWrongTypeForParamId(v4, v3, "int");
      return 0;
    case 107:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[127];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 107;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 107;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 107;
      goto LABEL_484;
    case 108:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[128];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 108;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 108;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 108;
      goto LABEL_484;
    case 109:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[129];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 109;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 109;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 109;
      goto LABEL_484;
    case 110:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[130];
        }

        if (a3 != 1)
        {
          goto LABEL_485;
        }

        v5 = qword_281051FB8;
        v6 = 110;
        goto LABEL_288;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 110;
        goto LABEL_608;
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 110;
      goto LABEL_484;
    case 111:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[131];
        }

        if (a3 == 1)
        {
          v5 = qword_281051FB8;
          v6 = 111;
LABEL_288:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v5, v6);
        }

LABEL_485:
        throwWrongQueryMode(a3, "int");
        return 0;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 111;
LABEL_608:
        v14 = ParamSpecMgr::getParamByParamId(v12, v13);
      }

      if (a3 != 3)
      {
        goto LABEL_485;
      }

      v9 = qword_281051FB8;
      v10 = 111;
LABEL_484:
      v11 = ParamSpecMgr::getParamByParamId(v9, v10);
    default:
      throwWrongParamIdValue(a2, "int");
      return 0;
  }
}

double SearchParamSet::getDoubleParameter(double *a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_142;
    case 2:
      v3 = "int";
      v4 = 2;
      goto LABEL_142;
    case 3:
      v3 = "int";
      v4 = 3;
      goto LABEL_142;
    case 4:
      v3 = "BOOL";
      v4 = 4;
      goto LABEL_142;
    case 5:
      v3 = "BOOL";
      v4 = 5;
      goto LABEL_142;
    case 6:
      v3 = "int";
      v4 = 6;
      goto LABEL_142;
    case 7:
      v3 = "int";
      v4 = 7;
      goto LABEL_142;
    case 8:
      v3 = "int";
      v4 = 8;
      goto LABEL_142;
    case 9:
      v3 = "int";
      v4 = 9;
      goto LABEL_142;
    case 10:
      v3 = "BOOL";
      v4 = 10;
      goto LABEL_142;
    case 11:
      v3 = "BOOL";
      v4 = 11;
      goto LABEL_142;
    case 12:
      v3 = "BOOL";
      v4 = 12;
      goto LABEL_142;
    case 13:
      v3 = "BOOL";
      v4 = 13;
      goto LABEL_142;
    case 14:
      v3 = "int";
      v4 = 14;
      goto LABEL_142;
    case 15:
      v3 = "int";
      v4 = 15;
      goto LABEL_142;
    case 16:
      v3 = "int";
      v4 = 16;
      goto LABEL_142;
    case 17:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[11];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v5 = qword_281051FB8;
        v6 = 17;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 17;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v9 = qword_281051FB8;
      v10 = 17;
      goto LABEL_172;
    case 18:
      v3 = "int";
      v4 = 18;
      goto LABEL_142;
    case 19:
      v3 = "string";
      v4 = 19;
      goto LABEL_142;
    case 20:
      v3 = "int";
      v4 = 20;
      goto LABEL_142;
    case 21:
      v3 = "int";
      v4 = 21;
      goto LABEL_142;
    case 22:
      v3 = "int";
      v4 = 22;
      goto LABEL_142;
    case 23:
      v3 = "enum";
      v4 = 23;
      goto LABEL_142;
    case 24:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[17];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v5 = qword_281051FB8;
        v6 = 24;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 24;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v9 = qword_281051FB8;
      v10 = 24;
      goto LABEL_172;
    case 25:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[18];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v5 = qword_281051FB8;
        v6 = 25;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 25;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v9 = qword_281051FB8;
      v10 = 25;
      goto LABEL_172;
    case 26:
      v3 = "enum";
      v4 = 26;
      goto LABEL_142;
    case 27:
      v3 = "enum";
      v4 = 27;
      goto LABEL_142;
    case 28:
      v3 = "int";
      v4 = 28;
      goto LABEL_142;
    case 29:
      v3 = "int";
      v4 = 29;
      goto LABEL_142;
    case 30:
      v3 = "int";
      v4 = 30;
      goto LABEL_142;
    case 31:
      v3 = "int";
      v4 = 31;
      goto LABEL_142;
    case 32:
      v3 = "int";
      v4 = 32;
      goto LABEL_142;
    case 33:
      v3 = "int";
      v4 = 33;
      goto LABEL_142;
    case 34:
      v3 = "int";
      v4 = 34;
      goto LABEL_142;
    case 35:
      v3 = "int";
      v4 = 35;
      goto LABEL_142;
    case 36:
      v3 = "enum";
      v4 = 36;
      goto LABEL_142;
    case 37:
      v3 = "BOOL";
      v4 = 37;
      goto LABEL_142;
    case 38:
      v3 = "int";
      v4 = 38;
      goto LABEL_142;
    case 39:
      v3 = "BOOL";
      v4 = 39;
      goto LABEL_142;
    case 40:
      v3 = "int";
      v4 = 40;
      goto LABEL_142;
    case 41:
      v3 = "int";
      v4 = 41;
      goto LABEL_142;
    case 42:
      v3 = "int";
      v4 = 42;
      goto LABEL_142;
    case 43:
      v3 = "int";
      v4 = 43;
      goto LABEL_142;
    case 44:
      v3 = "BOOL";
      v4 = 44;
      goto LABEL_142;
    case 45:
      v3 = "int";
      v4 = 45;
      goto LABEL_142;
    case 46:
      v3 = "int";
      v4 = 46;
      goto LABEL_142;
    case 47:
      v3 = "int";
      v4 = 47;
      goto LABEL_142;
    case 48:
      v3 = "int";
      v4 = 48;
      goto LABEL_142;
    case 49:
      v3 = "int";
      v4 = 49;
      goto LABEL_142;
    case 50:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[31];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v5 = qword_281051FB8;
        v6 = 50;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 50;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v9 = qword_281051FB8;
      v10 = 50;
      goto LABEL_172;
    case 51:
      v3 = "int";
      v4 = 51;
      goto LABEL_142;
    case 52:
      v3 = "BOOL";
      v4 = 52;
      goto LABEL_142;
    case 53:
      v3 = "int";
      v4 = 53;
      goto LABEL_142;
    case 54:
      v3 = "int";
      v4 = 54;
      goto LABEL_142;
    case 55:
      v3 = "int";
      v4 = 55;
      goto LABEL_142;
    case 56:
      v3 = "int";
      v4 = 56;
      goto LABEL_142;
    case 57:
      v3 = "int";
      v4 = 57;
      goto LABEL_142;
    case 58:
      v3 = "enum";
      v4 = 58;
      goto LABEL_142;
    case 59:
      v3 = "int";
      v4 = 59;
      goto LABEL_142;
    case 60:
      v3 = "int";
      v4 = 60;
      goto LABEL_142;
    case 61:
      v3 = "int";
      v4 = 61;
      goto LABEL_142;
    case 62:
      v3 = "int";
      v4 = 62;
      goto LABEL_142;
    case 63:
      v3 = "int";
      v4 = 63;
      goto LABEL_142;
    case 64:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[39];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v5 = qword_281051FB8;
        v6 = 64;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 64;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v9 = qword_281051FB8;
      v10 = 64;
      goto LABEL_172;
    case 65:
      v3 = "BOOL";
      v4 = 65;
      goto LABEL_142;
    case 66:
      v3 = "int";
      v4 = 66;
      goto LABEL_142;
    case 67:
      v3 = "BOOL";
      v4 = 67;
      goto LABEL_142;
    case 68:
      v3 = "int";
      v4 = 68;
      goto LABEL_142;
    case 69:
      v3 = "BOOL";
      v4 = 69;
      goto LABEL_142;
    case 70:
      v3 = "BOOL";
      v4 = 70;
      goto LABEL_142;
    case 71:
      v3 = "int";
      v4 = 71;
      goto LABEL_142;
    case 72:
      v3 = "int";
      v4 = 72;
      goto LABEL_142;
    case 73:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[44];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v5 = qword_281051FB8;
        v6 = 73;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 73;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v9 = qword_281051FB8;
      v10 = 73;
      goto LABEL_172;
    case 74:
      v3 = "int";
      v4 = 74;
      goto LABEL_142;
    case 75:
      v3 = "int";
      v4 = 75;
      goto LABEL_142;
    case 76:
      v3 = "BOOL";
      v4 = 76;
      goto LABEL_142;
    case 77:
      v3 = "BOOL";
      v4 = 77;
      goto LABEL_142;
    case 78:
      v3 = "int";
      v4 = 78;
      goto LABEL_142;
    case 79:
      v3 = "BOOL";
      v4 = 79;
      goto LABEL_142;
    case 80:
      v3 = "int";
      v4 = 80;
      goto LABEL_142;
    case 81:
      v3 = "BOOL";
      v4 = 81;
      goto LABEL_142;
    case 82:
      v3 = "BOOL";
      v4 = 82;
      goto LABEL_142;
    case 83:
      v3 = "string";
      v4 = 83;
      goto LABEL_142;
    case 84:
      v3 = "int";
      v4 = 84;
      goto LABEL_142;
    case 85:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[52];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v5 = qword_281051FB8;
        v6 = 85;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 85;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v9 = qword_281051FB8;
      v10 = 85;
      goto LABEL_172;
    case 86:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[53];
        }

        if (a3 != 1)
        {
          goto LABEL_173;
        }

        v5 = qword_281051FB8;
        v6 = 86;
        goto LABEL_123;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 86;
        goto LABEL_192;
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v9 = qword_281051FB8;
      v10 = 86;
      goto LABEL_172;
    case 87:
      v3 = "int";
      v4 = 87;
      goto LABEL_142;
    case 88:
      v3 = "int";
      v4 = 88;
      goto LABEL_142;
    case 89:
      v3 = "int";
      v4 = 89;
      goto LABEL_142;
    case 90:
      v3 = "BOOL";
      v4 = 90;
      goto LABEL_142;
    case 91:
      v3 = "BOOL";
      v4 = 91;
      goto LABEL_142;
    case 92:
      v3 = "BOOL";
      v4 = 92;
      goto LABEL_142;
    case 93:
      v3 = "BOOL";
      v4 = 93;
      goto LABEL_142;
    case 94:
      v3 = "BOOL";
      v4 = 94;
      goto LABEL_142;
    case 95:
      v3 = "BOOL";
      v4 = 95;
      goto LABEL_142;
    case 96:
      v3 = "BOOL";
      v4 = 96;
      goto LABEL_142;
    case 97:
      v3 = "string";
      v4 = 97;
      goto LABEL_142;
    case 98:
      v3 = "BOOL";
      v4 = 98;
      goto LABEL_142;
    case 99:
      v3 = "enum";
      v4 = 99;
      goto LABEL_142;
    case 100:
      v3 = "BOOL";
      v4 = 100;
      goto LABEL_142;
    case 101:
      v3 = "BOOL";
      v4 = 101;
      goto LABEL_142;
    case 102:
      v3 = "BOOL";
      v4 = 102;
      goto LABEL_142;
    case 103:
      if (a3 <= 1)
      {
        if (!a3)
        {
          return a1[61];
        }

        if (a3 == 1)
        {
          v5 = qword_281051FB8;
          v6 = 103;
LABEL_123:
          ParamByParamId = ParamSpecMgr::getParamByParamId(v5, v6);
        }

LABEL_173:
        throwWrongQueryMode(a3, "double");
        return 0.0;
      }

      if (a3 == 2)
      {
        v12 = qword_281051FB8;
        v13 = 103;
LABEL_192:
        v14 = ParamSpecMgr::getParamByParamId(v12, v13);
      }

      if (a3 != 3)
      {
        goto LABEL_173;
      }

      v9 = qword_281051FB8;
      v10 = 103;
LABEL_172:
      v11 = ParamSpecMgr::getParamByParamId(v9, v10);
    case 104:
      v3 = "int";
      v4 = 104;
      goto LABEL_142;
    case 105:
      v3 = "int";
      v4 = 105;
      goto LABEL_142;
    case 106:
      v3 = "enum";
      v4 = 106;
      goto LABEL_142;
    case 107:
      v3 = "int";
      v4 = 107;
      goto LABEL_142;
    case 108:
      v3 = "int";
      v4 = 108;
      goto LABEL_142;
    case 109:
      v3 = "int";
      v4 = 109;
      goto LABEL_142;
    case 110:
      v3 = "int";
      v4 = 110;
      goto LABEL_142;
    case 111:
      v3 = "int";
      v4 = 111;
LABEL_142:
      throwWrongTypeForParamId(v4, v3, "double");
      return 0.0;
    default:
      throwWrongParamIdValue(a2, "double");
      return 0.0;
  }
}

char *SearchParamSet::getStringParameter(uint64_t a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_124;
    case 2:
      v3 = "int";
      v4 = 2;
      goto LABEL_124;
    case 3:
      v3 = "int";
      v4 = 3;
      goto LABEL_124;
    case 4:
      v3 = "BOOL";
      v4 = 4;
      goto LABEL_124;
    case 5:
      v3 = "BOOL";
      v4 = 5;
      goto LABEL_124;
    case 6:
      v3 = "int";
      v4 = 6;
      goto LABEL_124;
    case 7:
      v3 = "int";
      v4 = 7;
      goto LABEL_124;
    case 8:
      v3 = "int";
      v4 = 8;
      goto LABEL_124;
    case 9:
      v3 = "int";
      v4 = 9;
      goto LABEL_124;
    case 10:
      v3 = "BOOL";
      v4 = 10;
      goto LABEL_124;
    case 11:
      v3 = "BOOL";
      v4 = 11;
      goto LABEL_124;
    case 12:
      v3 = "BOOL";
      v4 = 12;
      goto LABEL_124;
    case 13:
      v3 = "BOOL";
      v4 = 13;
      goto LABEL_124;
    case 14:
      v3 = "int";
      v4 = 14;
      goto LABEL_124;
    case 15:
      v3 = "int";
      v4 = 15;
      goto LABEL_124;
    case 16:
      v3 = "int";
      v4 = 16;
      goto LABEL_124;
    case 17:
      v3 = "double";
      v4 = 17;
      goto LABEL_124;
    case 18:
      v3 = "int";
      v4 = 18;
      goto LABEL_124;
    case 19:
      if (a3 == 1)
      {
        v8 = qword_281051FB8;
        v9 = 19;
        goto LABEL_130;
      }

      if (a3)
      {
        goto LABEL_84;
      }

      v5 = *(a1 + 112);
      v6 = *(a1 + 104);
      goto LABEL_81;
    case 20:
      v3 = "int";
      v4 = 20;
      goto LABEL_124;
    case 21:
      v3 = "int";
      v4 = 21;
      goto LABEL_124;
    case 22:
      v3 = "int";
      v4 = 22;
      goto LABEL_124;
    case 23:
      v3 = "enum";
      v4 = 23;
      goto LABEL_124;
    case 24:
      v3 = "double";
      v4 = 24;
      goto LABEL_124;
    case 25:
      v3 = "double";
      v4 = 25;
      goto LABEL_124;
    case 26:
      v3 = "enum";
      v4 = 26;
      goto LABEL_124;
    case 27:
      v3 = "enum";
      v4 = 27;
      goto LABEL_124;
    case 28:
      v3 = "int";
      v4 = 28;
      goto LABEL_124;
    case 29:
      v3 = "int";
      v4 = 29;
      goto LABEL_124;
    case 30:
      v3 = "int";
      v4 = 30;
      goto LABEL_124;
    case 31:
      v3 = "int";
      v4 = 31;
      goto LABEL_124;
    case 32:
      v3 = "int";
      v4 = 32;
      goto LABEL_124;
    case 33:
      v3 = "int";
      v4 = 33;
      goto LABEL_124;
    case 34:
      v3 = "int";
      v4 = 34;
      goto LABEL_124;
    case 35:
      v3 = "int";
      v4 = 35;
      goto LABEL_124;
    case 36:
      v3 = "enum";
      v4 = 36;
      goto LABEL_124;
    case 37:
      v3 = "BOOL";
      v4 = 37;
      goto LABEL_124;
    case 38:
      v3 = "int";
      v4 = 38;
      goto LABEL_124;
    case 39:
      v3 = "BOOL";
      v4 = 39;
      goto LABEL_124;
    case 40:
      v3 = "int";
      v4 = 40;
      goto LABEL_124;
    case 41:
      v3 = "int";
      v4 = 41;
      goto LABEL_124;
    case 42:
      v3 = "int";
      v4 = 42;
      goto LABEL_124;
    case 43:
      v3 = "int";
      v4 = 43;
      goto LABEL_124;
    case 44:
      v3 = "BOOL";
      v4 = 44;
      goto LABEL_124;
    case 45:
      v3 = "int";
      v4 = 45;
      goto LABEL_124;
    case 46:
      v3 = "int";
      v4 = 46;
      goto LABEL_124;
    case 47:
      v3 = "int";
      v4 = 47;
      goto LABEL_124;
    case 48:
      v3 = "int";
      v4 = 48;
      goto LABEL_124;
    case 49:
      v3 = "int";
      v4 = 49;
      goto LABEL_124;
    case 50:
      v3 = "double";
      v4 = 50;
      goto LABEL_124;
    case 51:
      v3 = "int";
      v4 = 51;
      goto LABEL_124;
    case 52:
      v3 = "BOOL";
      v4 = 52;
      goto LABEL_124;
    case 53:
      v3 = "int";
      v4 = 53;
      goto LABEL_124;
    case 54:
      v3 = "int";
      v4 = 54;
      goto LABEL_124;
    case 55:
      v3 = "int";
      v4 = 55;
      goto LABEL_124;
    case 56:
      v3 = "int";
      v4 = 56;
      goto LABEL_124;
    case 57:
      v3 = "int";
      v4 = 57;
      goto LABEL_124;
    case 58:
      v3 = "enum";
      v4 = 58;
      goto LABEL_124;
    case 59:
      v3 = "int";
      v4 = 59;
      goto LABEL_124;
    case 60:
      v3 = "int";
      v4 = 60;
      goto LABEL_124;
    case 61:
      v3 = "int";
      v4 = 61;
      goto LABEL_124;
    case 62:
      v3 = "int";
      v4 = 62;
      goto LABEL_124;
    case 63:
      v3 = "int";
      v4 = 63;
      goto LABEL_124;
    case 64:
      v3 = "double";
      v4 = 64;
      goto LABEL_124;
    case 65:
      v3 = "BOOL";
      v4 = 65;
      goto LABEL_124;
    case 66:
      v3 = "int";
      v4 = 66;
      goto LABEL_124;
    case 67:
      v3 = "BOOL";
      v4 = 67;
      goto LABEL_124;
    case 68:
      v3 = "int";
      v4 = 68;
      goto LABEL_124;
    case 69:
      v3 = "BOOL";
      v4 = 69;
      goto LABEL_124;
    case 70:
      v3 = "BOOL";
      v4 = 70;
      goto LABEL_124;
    case 71:
      v3 = "int";
      v4 = 71;
      goto LABEL_124;
    case 72:
      v3 = "int";
      v4 = 72;
      goto LABEL_124;
    case 73:
      v3 = "double";
      v4 = 73;
      goto LABEL_124;
    case 74:
      v3 = "int";
      v4 = 74;
      goto LABEL_124;
    case 75:
      v3 = "int";
      v4 = 75;
      goto LABEL_124;
    case 76:
      v3 = "BOOL";
      v4 = 76;
      goto LABEL_124;
    case 77:
      v3 = "BOOL";
      v4 = 77;
      goto LABEL_124;
    case 78:
      v3 = "int";
      v4 = 78;
      goto LABEL_124;
    case 79:
      v3 = "BOOL";
      v4 = 79;
      goto LABEL_124;
    case 80:
      v3 = "int";
      v4 = 80;
      goto LABEL_124;
    case 81:
      v3 = "BOOL";
      v4 = 81;
      goto LABEL_124;
    case 82:
      v3 = "BOOL";
      v4 = 82;
      goto LABEL_124;
    case 83:
      if (a3 == 1)
      {
        v8 = qword_281051FB8;
        v9 = 83;
        goto LABEL_130;
      }

      if (a3)
      {
        goto LABEL_84;
      }

      v5 = *(a1 + 400);
      v6 = *(a1 + 392);
      goto LABEL_81;
    case 84:
      v3 = "int";
      v4 = 84;
      goto LABEL_124;
    case 85:
      v3 = "double";
      v4 = 85;
      goto LABEL_124;
    case 86:
      v3 = "double";
      v4 = 86;
      goto LABEL_124;
    case 87:
      v3 = "int";
      v4 = 87;
      goto LABEL_124;
    case 88:
      v3 = "int";
      v4 = 88;
      goto LABEL_124;
    case 89:
      v3 = "int";
      v4 = 89;
      goto LABEL_124;
    case 90:
      v3 = "BOOL";
      v4 = 90;
      goto LABEL_124;
    case 91:
      v3 = "BOOL";
      v4 = 91;
      goto LABEL_124;
    case 92:
      v3 = "BOOL";
      v4 = 92;
      goto LABEL_124;
    case 93:
      v3 = "BOOL";
      v4 = 93;
      goto LABEL_124;
    case 94:
      v3 = "BOOL";
      v4 = 94;
      goto LABEL_124;
    case 95:
      v3 = "BOOL";
      v4 = 95;
      goto LABEL_124;
    case 96:
      v3 = "BOOL";
      v4 = 96;
      goto LABEL_124;
    case 97:
      if (a3 == 1)
      {
        v8 = qword_281051FB8;
        v9 = 97;
LABEL_130:
        ParamByParamId = ParamSpecMgr::getParamByParamId(v8, v9);
      }

      else if (a3)
      {
LABEL_84:
        throwWrongQueryMode(a3, "string");
        return 0;
      }

      else
      {
        v5 = *(a1 + 464);
        v6 = *(a1 + 456);
LABEL_81:
        if (v5)
        {
          return v6;
        }

        else
        {
          return &byte_262899963;
        }
      }

    case 98:
      v3 = "BOOL";
      v4 = 98;
      goto LABEL_124;
    case 99:
      v3 = "enum";
      v4 = 99;
      goto LABEL_124;
    case 100:
      v3 = "BOOL";
      v4 = 100;
      goto LABEL_124;
    case 101:
      v3 = "BOOL";
      v4 = 101;
      goto LABEL_124;
    case 102:
      v3 = "BOOL";
      v4 = 102;
      goto LABEL_124;
    case 103:
      v3 = "double";
      v4 = 103;
      goto LABEL_124;
    case 104:
      v3 = "int";
      v4 = 104;
      goto LABEL_124;
    case 105:
      v3 = "int";
      v4 = 105;
      goto LABEL_124;
    case 106:
      v3 = "enum";
      v4 = 106;
      goto LABEL_124;
    case 107:
      v3 = "int";
      v4 = 107;
      goto LABEL_124;
    case 108:
      v3 = "int";
      v4 = 108;
      goto LABEL_124;
    case 109:
      v3 = "int";
      v4 = 109;
      goto LABEL_124;
    case 110:
      v3 = "int";
      v4 = 110;
      goto LABEL_124;
    case 111:
      v3 = "int";
      v4 = 111;
LABEL_124:
      throwWrongTypeForParamId(v4, v3, "string");
      return 0;
    default:
      throwWrongParamIdValue(a2, "string");
      return 0;
  }
}

uint64_t SearchParamSet::getEnumParameter(unsigned int *a1, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      v3 = "BOOL";
      v4 = 1;
      goto LABEL_163;
    case 2:
      v3 = "int";
      v4 = 2;
      goto LABEL_163;
    case 3:
      v3 = "int";
      v4 = 3;
      goto LABEL_163;
    case 4:
      v3 = "BOOL";
      v4 = 4;
      goto LABEL_163;
    case 5:
      v3 = "BOOL";
      v4 = 5;
      goto LABEL_163;
    case 6:
      v3 = "int";
      v4 = 6;
      goto LABEL_163;
    case 7:
      v3 = "int";
      v4 = 7;
      goto LABEL_163;
    case 8:
      v3 = "int";
      v4 = 8;
      goto LABEL_163;
    case 9:
      v3 = "int";
      v4 = 9;
      goto LABEL_163;
    case 10:
      v3 = "BOOL";
      v4 = 10;
      goto LABEL_163;
    case 11:
      v3 = "BOOL";
      v4 = 11;
      goto LABEL_163;
    case 12:
      v3 = "BOOL";
      v4 = 12;
      goto LABEL_163;
    case 13:
      v3 = "BOOL";
      v4 = 13;
      goto LABEL_163;
    case 14:
      v3 = "int";
      v4 = 14;
      goto LABEL_163;
    case 15:
      v3 = "int";
      v4 = 15;
      goto LABEL_163;
    case 16:
      v3 = "int";
      v4 = 16;
      goto LABEL_163;
    case 17:
      v3 = "double";
      v4 = 17;
      goto LABEL_163;
    case 18:
      v3 = "int";
      v4 = 18;
      goto LABEL_163;
    case 19:
      v3 = "string";
      v4 = 19;
      goto LABEL_163;
    case 20:
      v3 = "int";
      v4 = 20;
      goto LABEL_163;
    case 21:
      v3 = "int";
      v4 = 21;
      goto LABEL_163;
    case 22:
      v3 = "int";
      v4 = 22;
      goto LABEL_163;
    case 23:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v38 = qword_281051FB8;
          v39 = 23;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v35 = qword_281051FB8;
        v36 = 23;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[33];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB8, 23);
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
    case 24:
      v3 = "double";
      v4 = 24;
      goto LABEL_163;
    case 25:
      v3 = "double";
      v4 = 25;
      goto LABEL_163;
    case 26:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v38 = qword_281051FB8;
          v39 = 26;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v35 = qword_281051FB8;
        v36 = 26;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[38];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      v15 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 26);
      if (**(v16 + 24))
      {
        v17 = v16 + 16;
        v18 = 1;
        v9 = v17;
        do
        {
          if (*v9 == 1)
          {
            return *(v9 + 16);
          }

          result = 0;
          v9 = v17 + 32 * v18++;
        }

        while (**(v9 + 8));
        return result;
      }

      return 0;
    case 27:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v38 = qword_281051FB8;
          v39 = 27;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v35 = qword_281051FB8;
        v36 = 27;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[39];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      v31 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 27);
      if (**(v32 + 24))
      {
        v33 = v32 + 16;
        v34 = 1;
        v9 = v33;
        do
        {
          if (*v9 == 1)
          {
            return *(v9 + 16);
          }

          result = 0;
          v9 = v33 + 32 * v34++;
        }

        while (**(v9 + 8));
        return result;
      }

      return 0;
    case 28:
      v3 = "int";
      v4 = 28;
      goto LABEL_163;
    case 29:
      v3 = "int";
      v4 = 29;
      goto LABEL_163;
    case 30:
      v3 = "int";
      v4 = 30;
      goto LABEL_163;
    case 31:
      v3 = "int";
      v4 = 31;
      goto LABEL_163;
    case 32:
      v3 = "int";
      v4 = 32;
      goto LABEL_163;
    case 33:
      v3 = "int";
      v4 = 33;
      goto LABEL_163;
    case 34:
      v3 = "int";
      v4 = 34;
      goto LABEL_163;
    case 35:
      v3 = "int";
      v4 = 35;
      goto LABEL_163;
    case 36:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v38 = qword_281051FB8;
          v39 = 36;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v35 = qword_281051FB8;
        v36 = 36;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[48];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      v11 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 36);
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
    case 37:
      v3 = "BOOL";
      v4 = 37;
      goto LABEL_163;
    case 38:
      v3 = "int";
      v4 = 38;
      goto LABEL_163;
    case 39:
      v3 = "BOOL";
      v4 = 39;
      goto LABEL_163;
    case 40:
      v3 = "int";
      v4 = 40;
      goto LABEL_163;
    case 41:
      v3 = "int";
      v4 = 41;
      goto LABEL_163;
    case 42:
      v3 = "int";
      v4 = 42;
      goto LABEL_163;
    case 43:
      v3 = "int";
      v4 = 43;
      goto LABEL_163;
    case 44:
      v3 = "BOOL";
      v4 = 44;
      goto LABEL_163;
    case 45:
      v3 = "int";
      v4 = 45;
      goto LABEL_163;
    case 46:
      v3 = "int";
      v4 = 46;
      goto LABEL_163;
    case 47:
      v3 = "int";
      v4 = 47;
      goto LABEL_163;
    case 48:
      v3 = "int";
      v4 = 48;
      goto LABEL_163;
    case 49:
      v3 = "int";
      v4 = 49;
      goto LABEL_163;
    case 50:
      v3 = "double";
      v4 = 50;
      goto LABEL_163;
    case 51:
      v3 = "int";
      v4 = 51;
      goto LABEL_163;
    case 52:
      v3 = "BOOL";
      v4 = 52;
      goto LABEL_163;
    case 53:
      v3 = "int";
      v4 = 53;
      goto LABEL_163;
    case 54:
      v3 = "int";
      v4 = 54;
      goto LABEL_163;
    case 55:
      v3 = "int";
      v4 = 55;
      goto LABEL_163;
    case 56:
      v3 = "int";
      v4 = 56;
      goto LABEL_163;
    case 57:
      v3 = "int";
      v4 = 57;
      goto LABEL_163;
    case 58:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v38 = qword_281051FB8;
          v39 = 58;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v35 = qword_281051FB8;
        v36 = 58;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[71];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      v27 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 58);
      if (**(v28 + 24))
      {
        v29 = v28 + 16;
        v30 = 1;
        v9 = v29;
        do
        {
          if (*v9 == 1)
          {
            return *(v9 + 16);
          }

          result = 0;
          v9 = v29 + 32 * v30++;
        }

        while (**(v9 + 8));
        return result;
      }

      return 0;
    case 59:
      v3 = "int";
      v4 = 59;
      goto LABEL_163;
    case 60:
      v3 = "int";
      v4 = 60;
      goto LABEL_163;
    case 61:
      v3 = "int";
      v4 = 61;
      goto LABEL_163;
    case 62:
      v3 = "int";
      v4 = 62;
      goto LABEL_163;
    case 63:
      v3 = "int";
      v4 = 63;
      goto LABEL_163;
    case 64:
      v3 = "double";
      v4 = 64;
      goto LABEL_163;
    case 65:
      v3 = "BOOL";
      v4 = 65;
      goto LABEL_163;
    case 66:
      v3 = "int";
      v4 = 66;
      goto LABEL_163;
    case 67:
      v3 = "BOOL";
      v4 = 67;
      goto LABEL_163;
    case 68:
      v3 = "int";
      v4 = 68;
      goto LABEL_163;
    case 69:
      v3 = "BOOL";
      v4 = 69;
      goto LABEL_163;
    case 70:
      v3 = "BOOL";
      v4 = 70;
      goto LABEL_163;
    case 71:
      v3 = "int";
      v4 = 71;
      goto LABEL_163;
    case 72:
      v3 = "int";
      v4 = 72;
      goto LABEL_163;
    case 73:
      v3 = "double";
      v4 = 73;
      goto LABEL_163;
    case 74:
      v3 = "int";
      v4 = 74;
      goto LABEL_163;
    case 75:
      v3 = "int";
      v4 = 75;
      goto LABEL_163;
    case 76:
      v3 = "BOOL";
      v4 = 76;
      goto LABEL_163;
    case 77:
      v3 = "BOOL";
      v4 = 77;
      goto LABEL_163;
    case 78:
      v3 = "int";
      v4 = 78;
      goto LABEL_163;
    case 79:
      v3 = "BOOL";
      v4 = 79;
      goto LABEL_163;
    case 80:
      v3 = "int";
      v4 = 80;
      goto LABEL_163;
    case 81:
      v3 = "BOOL";
      v4 = 81;
      goto LABEL_163;
    case 82:
      v3 = "BOOL";
      v4 = 82;
      goto LABEL_163;
    case 83:
      v3 = "string";
      v4 = 83;
      goto LABEL_163;
    case 84:
      v3 = "int";
      v4 = 84;
      goto LABEL_163;
    case 85:
      v3 = "double";
      v4 = 85;
      goto LABEL_163;
    case 86:
      v3 = "double";
      v4 = 86;
      goto LABEL_163;
    case 87:
      v3 = "int";
      v4 = 87;
      goto LABEL_163;
    case 88:
      v3 = "int";
      v4 = 88;
      goto LABEL_163;
    case 89:
      v3 = "int";
      v4 = 89;
      goto LABEL_163;
    case 90:
      v3 = "BOOL";
      v4 = 90;
      goto LABEL_163;
    case 91:
      v3 = "BOOL";
      v4 = 91;
      goto LABEL_163;
    case 92:
      v3 = "BOOL";
      v4 = 92;
      goto LABEL_163;
    case 93:
      v3 = "BOOL";
      v4 = 93;
      goto LABEL_163;
    case 94:
      v3 = "BOOL";
      v4 = 94;
      goto LABEL_163;
    case 95:
      v3 = "BOOL";
      v4 = 95;
      goto LABEL_163;
    case 96:
      v3 = "BOOL";
      v4 = 96;
      goto LABEL_163;
    case 97:
      v3 = "string";
      v4 = 97;
      goto LABEL_163;
    case 98:
      v3 = "BOOL";
      v4 = 98;
      goto LABEL_163;
    case 99:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v38 = qword_281051FB8;
          v39 = 99;
          goto LABEL_207;
        }

        if (a3 != 3)
        {
          goto LABEL_191;
        }

        v35 = qword_281051FB8;
        v36 = 99;
        goto LABEL_186;
      }

      if (!a3)
      {
        return a1[119];
      }

      if (a3 != 1)
      {
        goto LABEL_191;
      }

      v19 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 99);
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
    case 100:
      v3 = "BOOL";
      v4 = 100;
      goto LABEL_163;
    case 101:
      v3 = "BOOL";
      v4 = 101;
      goto LABEL_163;
    case 102:
      v3 = "BOOL";
      v4 = 102;
      goto LABEL_163;
    case 103:
      v3 = "double";
      v4 = 103;
      goto LABEL_163;
    case 104:
      v3 = "int";
      v4 = 104;
      goto LABEL_163;
    case 105:
      v3 = "int";
      v4 = 105;
      goto LABEL_163;
    case 106:
      if (a3 > 1)
      {
        if (a3 == 2)
        {
          v38 = qword_281051FB8;
          v39 = 106;
LABEL_207:
          v40 = ParamSpecMgr::getParamByParamId(v38, v39);
          if (v40)
          {
          }

          return EnumParamSpec::getMinVal(v40);
        }

        if (a3 == 3)
        {
          v35 = qword_281051FB8;
          v36 = 106;
LABEL_186:
          v37 = ParamSpecMgr::getParamByParamId(v35, v36);
          if (v37)
          {
          }

          return EnumParamSpec::getMaxVal(v37);
        }

        goto LABEL_191;
      }

      if (!a3)
      {
        return a1[126];
      }

      if (a3 != 1)
      {
LABEL_191:
        throwWrongQueryMode(a3, "enum");
        return 0;
      }

      v5 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 106);
      if (!**(v6 + 24))
      {
        return 0;
      }

      v7 = v6 + 16;
      v8 = 1;
      v9 = v7;
      while (*v9 != 1)
      {
        result = 0;
        v9 = v7 + 32 * v8++;
        if (!**(v9 + 8))
        {
          return result;
        }
      }

      return *(v9 + 16);
    case 107:
      v3 = "int";
      v4 = 107;
      goto LABEL_163;
    case 108:
      v3 = "int";
      v4 = 108;
      goto LABEL_163;
    case 109:
      v3 = "int";
      v4 = 109;
      goto LABEL_163;
    case 110:
      v3 = "int";
      v4 = 110;
      goto LABEL_163;
    case 111:
      v3 = "int";
      v4 = 111;
LABEL_163:
      throwWrongTypeForParamId(v4, v3, "BOOL");
      return 0;
    default:
      throwWrongParamIdValue(a2, "enum");
      return 0;
  }
}

void SearchParamSet::setBoolParameter(uint64_t this, int a2, char a3)
{
  switch(a2)
  {
    case 1:
      if (*(this + 36))
      {
        v6 = "SearchLatticeComputeOnlyBestTimes";
        goto LABEL_148;
      }

      *(this + 40) = a3;
      return;
    case 2:
      throwWrongTypeForParamId(2, "int", "BOOL");
      goto LABEL_100;
    case 3:
LABEL_100:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_101;
    case 4:
LABEL_101:
      if (*(this + 36))
      {
        v6 = "SearchLatticeNodeCreationUseRightWord";
        goto LABEL_148;
      }

      *(this + 52) = a3;
      return;
    case 5:
      if (*(this + 36))
      {
        v6 = "SearchLatticeUseCoarticulation";
        goto LABEL_148;
      }

      *(this + 53) = a3;
      return;
    case 6:
      throwWrongTypeForParamId(6, "int", "BOOL");
      goto LABEL_93;
    case 7:
LABEL_93:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_94;
    case 8:
LABEL_94:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_95;
    case 9:
LABEL_95:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_96;
    case 10:
LABEL_96:
      if (*(this + 36))
      {
        v6 = "SearchActiveWordHasPredecessorPhonemeContext";
        goto LABEL_148;
      }

      *(this + 72) = a3;
      return;
    case 11:
      if (*(this + 36))
      {
        v6 = "SearchActiveWordHasPredecessorWordContext";
        goto LABEL_148;
      }

      *(this + 73) = a3;
      return;
    case 12:
      if (*(this + 36))
      {
        v6 = "SearchActiveWordHasMergedGrammarState";
        goto LABEL_148;
      }

      *(this + 74) = a3;
      return;
    case 13:
      if (*(this + 36))
      {
        v6 = "SearchActiveWordHasMergedLatticeLinkId";
        goto LABEL_148;
      }

      *(this + 75) = a3;
      return;
    case 14:
      throwWrongTypeForParamId(14, "int", "BOOL");
      goto LABEL_42;
    case 15:
LABEL_42:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_43;
    case 16:
LABEL_43:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_44;
    case 17:
LABEL_44:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_45;
    case 18:
LABEL_45:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_46;
    case 19:
LABEL_46:
      throwWrongTypeForParamId(a2, "string", "BOOL");
      goto LABEL_47;
    case 20:
LABEL_47:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_48;
    case 21:
LABEL_48:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_49;
    case 22:
LABEL_49:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_50;
    case 23:
LABEL_50:
      throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_51;
    case 24:
LABEL_51:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_52;
    case 25:
LABEL_52:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_53;
    case 26:
LABEL_53:
      throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_54;
    case 27:
LABEL_54:
      throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_55;
    case 28:
LABEL_55:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_56;
    case 29:
LABEL_56:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_57;
    case 30:
LABEL_57:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_58;
    case 31:
LABEL_58:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_59;
    case 32:
LABEL_59:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_60;
    case 33:
LABEL_60:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_61;
    case 34:
LABEL_61:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_62;
    case 35:
LABEL_62:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_63;
    case 36:
LABEL_63:
      throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_64;
    case 37:
LABEL_64:
      if (*(this + 36))
      {
        v6 = "SearchLMRescoreWithCorrective";
        goto LABEL_148;
      }

      *(this + 196) = a3;
      return;
    case 38:
      throwWrongTypeForParamId(38, "int", "BOOL");
      goto LABEL_113;
    case 39:
LABEL_113:
      if (*(this + 36))
      {
        v6 = "SearchActiveNodePreserveMultipleHistories";
        goto LABEL_148;
      }

      *(this + 204) = a3;
      return;
    case 40:
      throwWrongTypeForParamId(40, "int", "BOOL");
      goto LABEL_21;
    case 41:
LABEL_21:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_22;
    case 42:
LABEL_22:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_23;
    case 43:
LABEL_23:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_24;
    case 44:
LABEL_24:
      if (*(this + 36))
      {
        v6 = "SearchLatticeComputeOnlyBestPath";
        goto LABEL_148;
      }

      *(this + 224) = a3;
      return;
    case 45:
      throwWrongTypeForParamId(45, "int", "BOOL");
      goto LABEL_116;
    case 46:
LABEL_116:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_117;
    case 47:
LABEL_117:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_118;
    case 48:
LABEL_118:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_119;
    case 49:
LABEL_119:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_120;
    case 50:
LABEL_120:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_121;
    case 51:
LABEL_121:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_122;
    case 52:
LABEL_122:
      if (*(this + 36))
      {
        v6 = "SearchLatticeAllowZeroDurationFinalSilence";
        goto LABEL_148;
      }

      *(this + 260) = a3;
      return;
    case 53:
      throwWrongTypeForParamId(53, "int", "BOOL");
      goto LABEL_76;
    case 54:
LABEL_76:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_77;
    case 55:
LABEL_77:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_78;
    case 56:
LABEL_78:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_79;
    case 57:
LABEL_79:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_80;
    case 58:
LABEL_80:
      throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_81;
    case 59:
LABEL_81:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_82;
    case 60:
LABEL_82:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_83;
    case 61:
LABEL_83:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_84;
    case 62:
LABEL_84:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_85;
    case 63:
LABEL_85:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_86;
    case 64:
LABEL_86:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_87;
    case 65:
LABEL_87:
      if (*(this + 36))
      {
        v6 = "SearchPelScoreUseBestCompScore";
        goto LABEL_148;
      }

      *(this + 320) = a3;
      return;
    case 66:
      throwWrongTypeForParamId(66, "int", "BOOL");
      goto LABEL_28;
    case 67:
LABEL_28:
      if (*(this + 36))
      {
        v6 = "SearchPrefilterResultUseCrumbBank";
        goto LABEL_148;
      }

      *(this + 328) = a3;
      return;
    case 68:
      throwWrongTypeForParamId(68, "int", "BOOL");
      goto LABEL_131;
    case 69:
LABEL_131:
      if (*(this + 36))
      {
        v6 = "SearchSegmentAllNets";
        goto LABEL_148;
      }

      *(this + 336) = a3;
      return;
    case 70:
      if (*(this + 36))
      {
        v6 = "SearchRecognitionBatchProcessing";
        goto LABEL_148;
      }

      *(this + 337) = a3;
      return;
    case 71:
      throwWrongTypeForParamId(71, "int", "BOOL");
      goto LABEL_34;
    case 72:
LABEL_34:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_35;
    case 73:
LABEL_35:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_36;
    case 74:
LABEL_36:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_37;
    case 75:
LABEL_37:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_38;
    case 76:
LABEL_38:
      if (*(this + 36))
      {
        v6 = "SearchTruncatePackedIntComponentScores";
        goto LABEL_148;
      }

      *(this + 368) = a3;
      return;
    case 77:
      if (*(this + 36))
      {
        v6 = "SearchUseWordEndThreshWhenSeedingFinalSilence";
        goto LABEL_148;
      }

      *(this + 369) = a3;
      return;
    case 78:
      throwWrongTypeForParamId(78, "int", "BOOL");
      goto LABEL_126;
    case 79:
LABEL_126:
      if (*(this + 36))
      {
        v6 = "SearchWordSeedScoreIncludePrefiltererScore";
        goto LABEL_148;
      }

      *(this + 376) = a3;
      return;
    case 80:
      throwWrongTypeForParamId(80, "int", "BOOL");
      goto LABEL_31;
    case 81:
LABEL_31:
      if (*(this + 36))
      {
        v6 = "SearchWordSeedUnprefilteredUseThreshScoreDecrement";
        goto LABEL_148;
      }

      *(this + 384) = a3;
      return;
    case 82:
      if (*(this + 36))
      {
        v6 = "SearchEstimateAndPreScoreActivePels";
        goto LABEL_148;
      }

      *(this + 385) = a3;
      return;
    case 83:
      throwWrongTypeForParamId(83, "string", "BOOL");
      goto LABEL_140;
    case 84:
LABEL_140:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_141;
    case 85:
LABEL_141:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_142;
    case 86:
LABEL_142:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_143;
    case 87:
LABEL_143:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_144;
    case 88:
LABEL_144:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_145;
    case 89:
LABEL_145:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_146;
    case 90:
LABEL_146:
      if (*(this + 36))
      {
        v6 = "FstCoreRepeatFrame";
        goto LABEL_148;
      }

      *(this + 444) = a3;
      return;
    case 91:
      if (*(this + 36))
      {
        v6 = "FstCoreGenerateLeafLattice";
        goto LABEL_148;
      }

      *(this + 445) = a3;
      return;
    case 92:
      if (*(this + 36))
      {
        v6 = "SearchLatticePreserveAlternateProns";
        goto LABEL_148;
      }

      *(this + 446) = a3;
      return;
    case 93:
      if (*(this + 36))
      {
        v6 = "SearchLatticeSilentWordsUseCoarticulation";
        goto LABEL_148;
      }

      *(this + 447) = a3;
      return;
    case 94:
      if (*(this + 36))
      {
        v6 = "SearchLatticeUseThresholding";
        goto LABEL_148;
      }

      *(this + 448) = a3;
      return;
    case 95:
      if (*(this + 36))
      {
        v6 = "SearchDisableHierarchicalScorer";
        goto LABEL_148;
      }

      *(this + 449) = a3;
      return;
    case 96:
      if (*(this + 36))
      {
        v6 = "SearchDisableGPUScorer";
        goto LABEL_148;
      }

      *(this + 450) = a3;
      return;
    case 97:
      throwWrongTypeForParamId(97, "string", "BOOL");
      goto LABEL_153;
    case 98:
LABEL_153:
      if (*(this + 36))
      {
        v6 = "FstCoreUseDurationModel";
        goto LABEL_148;
      }

      *(this + 472) = a3;
      return;
    case 99:
      throwWrongTypeForParamId(99, "enum", "BOOL");
      goto LABEL_156;
    case 100:
LABEL_156:
      if (*(this + 36))
      {
        v6 = "FstCoreHashTokens";
        goto LABEL_148;
      }

      *(this + 480) = a3;
      return;
    case 101:
      if (*(this + 36))
      {
        v6 = "FstCoreUseFwdBwdAlgorithm";
        goto LABEL_148;
      }

      *(this + 481) = a3;
      break;
    case 102:
      if (*(this + 36))
      {
        v6 = "FstCoreLockPelScoreCache";
LABEL_148:

        throwParamSetSetFailed(v6, "BOOL");
      }

      else
      {
        *(this + 482) = a3;
      }

      break;
    case 103:
      throwWrongTypeForParamId(103, "double", "BOOL");
      goto LABEL_5;
    case 104:
LABEL_5:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_6;
    case 105:
LABEL_6:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_7;
    case 106:
LABEL_7:
      throwWrongTypeForParamId(a2, "enum", "BOOL");
      goto LABEL_8;
    case 107:
LABEL_8:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_9;
    case 108:
LABEL_9:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_10;
    case 109:
LABEL_10:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_11;
    case 110:
LABEL_11:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_12;
    case 111:
LABEL_12:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_13;
    default:
LABEL_13:

      throwWrongParamIdValue(a2, "BOOL");
      return;
  }
}

void SearchParamSet::setIntParameter(SearchParamSet *this, int a2, int a3)
{
  switch(a2)
  {
    case 1:
      throwWrongTypeForParamId(1, "BOOL", "int");
      goto LABEL_3;
    case 2:
LABEL_3:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB8, 2);
      if (ParamByParamId)
      {
      }

      IntParamSpec::validateValue(ParamByParamId, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeLMRescoringAbortOnTotalNewNodes";
        goto LABEL_308;
      }

      *(this + 11) = a3;
      return;
    case 3:
      v34 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 3);
      if (v34)
      {
      }

      IntParamSpec::validateValue(v34, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticePruneKeepUniquePathsMaxSize";
        goto LABEL_308;
      }

      *(this + 12) = a3;
      return;
    case 4:
      throwWrongTypeForParamId(4, "BOOL", "int");
      goto LABEL_170;
    case 5:
LABEL_170:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_171;
    case 6:
LABEL_171:
      v42 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 6);
      if (v42)
      {
      }

      IntParamSpec::validateValue(v42, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchAbortOnAllocBytes";
        goto LABEL_308;
      }

      *(this + 14) = a3;
      return;
    case 7:
      v47 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 7);
      if (v47)
      {
      }

      IntParamSpec::validateValue(v47, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchAbortOnAverageWordsEndingPerFrame";
        goto LABEL_308;
      }

      *(this + 15) = a3;
      return;
    case 8:
      v36 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 8);
      if (v36)
      {
      }

      IntParamSpec::validateValue(v36, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchAbortOnNumHistories";
        goto LABEL_308;
      }

      *(this + 16) = a3;
      return;
    case 9:
      v48 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 9);
      if (v48)
      {
      }

      IntParamSpec::validateValue(v48, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchAbortOnNumRecognizedFrames";
        goto LABEL_308;
      }

      *(this + 17) = a3;
      return;
    case 10:
      throwWrongTypeForParamId(10, "BOOL", "int");
      goto LABEL_192;
    case 11:
LABEL_192:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_193;
    case 12:
LABEL_193:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_194;
    case 13:
LABEL_194:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_195;
    case 14:
LABEL_195:
      v46 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 14);
      if (v46)
      {
      }

      IntParamSpec::validateValue(v46, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeTimeConstraintSeedThreshScore";
        goto LABEL_308;
      }

      *(this + 19) = a3;
      return;
    case 15:
      v28 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 15);
      if (v28)
      {
      }

      IntParamSpec::validateValue(v28, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeTimeConstraintDistanceMaxFrames";
        goto LABEL_308;
      }

      *(this + 20) = a3;
      return;
    case 16:
      v35 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 16);
      if (v35)
      {
      }

      IntParamSpec::validateValue(v35, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchActiveWordSpreadSeedScore";
        goto LABEL_308;
      }

      *(this + 21) = a3;
      return;
    case 17:
      throwWrongTypeForParamId(17, "double", "int");
      goto LABEL_153;
    case 18:
LABEL_153:
      v38 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 18);
      if (v38)
      {
      }

      IntParamSpec::validateValue(v38, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchConTransAccDecayFrequency";
        goto LABEL_308;
      }

      *(this + 24) = a3;
      return;
    case 19:
      throwWrongTypeForParamId(19, "string", "int");
      goto LABEL_233;
    case 20:
LABEL_233:
      v54 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 20);
      if (v54)
      {
      }

      IntParamSpec::validateValue(v54, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchConTransAccMaxSilenceFrames";
        goto LABEL_308;
      }

      *(this + 30) = a3;
      return;
    case 21:
      v40 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 21);
      if (v40)
      {
      }

      IntParamSpec::validateValue(v40, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchConTransAccRampFrames";
        goto LABEL_308;
      }

      *(this + 31) = a3;
      return;
    case 22:
      v45 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 22);
      if (v45)
      {
      }

      IntParamSpec::validateValue(v45, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchConTransAccStartFrame";
        goto LABEL_308;
      }

      *(this + 32) = a3;
      return;
    case 23:
      throwWrongTypeForParamId(23, "enum", "int");
      goto LABEL_88;
    case 24:
LABEL_88:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_89;
    case 25:
LABEL_89:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_90;
    case 26:
LABEL_90:
      throwWrongTypeForParamId(a2, "enum", "int");
      goto LABEL_91;
    case 27:
LABEL_91:
      throwWrongTypeForParamId(a2, "enum", "int");
      goto LABEL_92;
    case 28:
LABEL_92:
      v24 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 28);
      if (v24)
      {
      }

      IntParamSpec::validateValue(v24, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchInitialSilenceToFinalSilenceLMScore";
        goto LABEL_308;
      }

      *(this + 40) = a3;
      return;
    case 29:
      v57 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 29);
      if (v57)
      {
      }

      IntParamSpec::validateValue(v57, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchInterWordSilencePenalty";
        goto LABEL_308;
      }

      *(this + 41) = a3;
      return;
    case 30:
      v58 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 30);
      if (v58)
      {
      }

      IntParamSpec::validateValue(v58, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLMDisallowedLMScore";
        goto LABEL_308;
      }

      *(this + 42) = a3;
      return;
    case 31:
      v49 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 31);
      if (v49)
      {
      }

      IntParamSpec::validateValue(v49, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLMDynamicBigramReadCacheMaxChunksPerRead";
        goto LABEL_308;
      }

      *(this + 43) = a3;
      return;
    case 32:
      v37 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 32);
      if (v37)
      {
      }

      IntParamSpec::validateValue(v37, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLMDynamicQuadgramReadCacheMaxChunksPerRead";
        goto LABEL_308;
      }

      *(this + 44) = a3;
      return;
    case 33:
      v50 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 33);
      if (v50)
      {
      }

      IntParamSpec::validateValue(v50, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLMDynamicReadCacheBlocksPerChunk";
        goto LABEL_308;
      }

      *(this + 45) = a3;
      return;
    case 34:
      v29 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 34);
      if (v29)
      {
      }

      IntParamSpec::validateValue(v29, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLMDynamicReadCacheMaxBlocks";
        goto LABEL_308;
      }

      *(this + 46) = a3;
      return;
    case 35:
      v25 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 35);
      if (v25)
      {
      }

      IntParamSpec::validateValue(v25, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLMDynamicTrigramReadCacheMaxChunksPerRead";
        goto LABEL_308;
      }

      *(this + 47) = a3;
      return;
    case 36:
      throwWrongTypeForParamId(36, "enum", "int");
      goto LABEL_65;
    case 37:
LABEL_65:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_66;
    case 38:
LABEL_66:
      v19 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 38);
      if (v19)
      {
      }

      IntParamSpec::validateValue(v19, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchActiveNodeCountLimit";
        goto LABEL_308;
      }

      *(this + 50) = a3;
      return;
    case 39:
      throwWrongTypeForParamId(39, "BOOL", "int");
      goto LABEL_228;
    case 40:
LABEL_228:
      v53 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 40);
      if (v53)
      {
      }

      IntParamSpec::validateValue(v53, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchActiveSequenceCountLimit";
        goto LABEL_308;
      }

      *(this + 52) = a3;
      return;
    case 41:
      v32 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 41);
      if (v32)
      {
      }

      IntParamSpec::validateValue(v32, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchFinalSilenceThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 53) = a3;
      return;
    case 42:
      v39 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 42);
      if (v39)
      {
      }

      IntParamSpec::validateValue(v39, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeBestCrumbDistanceMaxFrames";
        goto LABEL_308;
      }

      *(this + 54) = a3;
      return;
    case 43:
      v55 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 43);
      if (v55)
      {
      }

      IntParamSpec::validateValue(v55, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeBestCrumbThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 55) = a3;
      return;
    case 44:
      throwWrongTypeForParamId(44, "BOOL", "int");
      goto LABEL_107;
    case 45:
LABEL_107:
      v27 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 45);
      if (v27)
      {
      }

      IntParamSpec::validateValue(v27, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeAbortOnScaledAverageLinksPerFrame";
        goto LABEL_308;
      }

      *(this + 57) = a3;
      return;
    case 46:
      v51 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 46);
      if (v51)
      {
      }

      IntParamSpec::validateValue(v51, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeAbortOnScaledAverageNodesPerFrame";
        goto LABEL_308;
      }

      *(this + 58) = a3;
      return;
    case 47:
      v62 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 47);
      if (v62)
      {
      }

      IntParamSpec::validateValue(v62, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeAbortOnNumLinks";
        goto LABEL_308;
      }

      *(this + 59) = a3;
      return;
    case 48:
      v22 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 48);
      if (v22)
      {
      }

      IntParamSpec::validateValue(v22, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeAbortOnNumNodes";
        goto LABEL_308;
      }

      *(this + 60) = a3;
      return;
    case 49:
      v30 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 49);
      if (v30)
      {
      }

      IntParamSpec::validateValue(v30, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticePruneLinksPerSecondLimit";
        goto LABEL_308;
      }

      *(this + 61) = a3;
      return;
    case 50:
      throwWrongTypeForParamId(50, "double", "int");
      goto LABEL_48;
    case 51:
LABEL_48:
      v15 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 51);
      if (v15)
      {
      }

      IntParamSpec::validateValue(v15, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeThreshScore";
        goto LABEL_308;
      }

      *(this + 64) = a3;
      return;
    case 52:
      throwWrongTypeForParamId(52, "BOOL", "int");
      goto LABEL_265;
    case 53:
LABEL_265:
      v61 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 53);
      if (v61)
      {
      }

      IntParamSpec::validateValue(v61, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchStateUsePrefiltererMinNumWords";
        goto LABEL_308;
      }

      *(this + 66) = a3;
      return;
    case 54:
      v20 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 54);
      if (v20)
      {
      }

      IntParamSpec::validateValue(v20, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchThreshScoreIncrementWhenNonSilenceBest";
        goto LABEL_308;
      }

      *(this + 67) = a3;
      return;
    case 55:
      v59 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 55);
      if (v59)
      {
      }

      IntParamSpec::validateValue(v59, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchThreshScoreWhenSilenceBest";
        goto LABEL_308;
      }

      *(this + 68) = a3;
      return;
    case 56:
      v60 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 56);
      if (v60)
      {
      }

      IntParamSpec::validateValue(v60, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchWordEndAgainstBestWordEndThreshScoreDecrement";
        goto LABEL_308;
      }

      *(this + 69) = a3;
      return;
    case 57:
      v23 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 57);
      if (v23)
      {
      }

      IntParamSpec::validateValue(v23, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchWordEndThreshScoreDecrement";
        goto LABEL_308;
      }

      *(this + 70) = a3;
      return;
    case 58:
      throwWrongTypeForParamId(58, "enum", "int");
      goto LABEL_124;
    case 59:
LABEL_124:
      v31 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 59);
      if (v31)
      {
      }

      IntParamSpec::validateValue(v31, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchNonAcousticWordAndSuccessorLMThreshScore";
        goto LABEL_308;
      }

      *(this + 72) = a3;
      return;
    case 60:
      v56 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 60);
      if (v56)
      {
      }

      IntParamSpec::validateValue(v56, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchNonAcousticWordEndThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 73) = a3;
      return;
    case 61:
      v33 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 61);
      if (v33)
      {
      }

      IntParamSpec::validateValue(v33, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchNonAcousticWordLMThreshScore";
        goto LABEL_308;
      }

      *(this + 74) = a3;
      return;
    case 62:
      v41 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 62);
      if (v41)
      {
      }

      IntParamSpec::validateValue(v41, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchNonAcousticWordSeedThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 75) = a3;
      return;
    case 63:
      v44 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 63);
      if (v44)
      {
      }

      IntParamSpec::validateValue(v44, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchPelBackoffThreshScoreDecrement";
        goto LABEL_308;
      }

      *(this + 76) = a3;
      return;
    case 64:
      throwWrongTypeForParamId(64, "double", "int");
      goto LABEL_177;
    case 65:
LABEL_177:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_178;
    case 66:
LABEL_178:
      v43 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 66);
      if (v43)
      {
      }

      IntParamSpec::validateValue(v43, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchPerWordPenalty";
        goto LABEL_308;
      }

      *(this + 81) = a3;
      return;
    case 67:
      throwWrongTypeForParamId(67, "BOOL", "int");
      goto LABEL_102;
    case 68:
LABEL_102:
      v26 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 68);
      if (v26)
      {
      }

      IntParamSpec::validateValue(v26, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchPrefilterResultUseCrumbBankDistanceMaxFrames";
        goto LABEL_308;
      }

      *(this + 83) = a3;
      return;
    case 69:
      throwWrongTypeForParamId(69, "BOOL", "int");
      goto LABEL_34;
    case 70:
LABEL_34:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_35;
    case 71:
LABEL_35:
      v13 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 71);
      if (v13)
      {
      }

      IntParamSpec::validateValue(v13, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchRecognitionContinuationInterval";
        goto LABEL_308;
      }

      *(this + 85) = a3;
      return;
    case 72:
      v18 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 72);
      if (v18)
      {
      }

      IntParamSpec::validateValue(v18, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchRemoveInactiveWordsIntervalFrames";
        goto LABEL_308;
      }

      *(this + 86) = a3;
      return;
    case 73:
      throwWrongTypeForParamId(73, "double", "int");
      goto LABEL_274;
    case 74:
LABEL_274:
      v63 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 74);
      if (v63)
      {
      }

      IntParamSpec::validateValue(v63, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchTraceLatticeThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 90) = a3;
      return;
    case 75:
      v65 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 75);
      if (v65)
      {
      }

      IntParamSpec::validateValue(v65, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchTraceThreshScoreIncrement";
        goto LABEL_308;
      }

      *(this + 91) = a3;
      return;
    case 76:
      throwWrongTypeForParamId(76, "BOOL", "int");
      goto LABEL_41;
    case 77:
LABEL_41:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_42;
    case 78:
LABEL_42:
      v14 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 78);
      if (v14)
      {
      }

      IntParamSpec::validateValue(v14, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchWordSeedFinalSilenceThreshScoreDecrement";
        goto LABEL_308;
      }

      *(this + 93) = a3;
      return;
    case 79:
      throwWrongTypeForParamId(79, "BOOL", "int");
      goto LABEL_29;
    case 80:
LABEL_29:
      v12 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 80);
      if (v12)
      {
      }

      IntParamSpec::validateValue(v12, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchWordSeedThreshScoreDecrement";
        goto LABEL_308;
      }

      *(this + 95) = a3;
      return;
    case 81:
      throwWrongTypeForParamId(81, "BOOL", "int");
      goto LABEL_16;
    case 82:
LABEL_16:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_17;
    case 83:
LABEL_17:
      throwWrongTypeForParamId(a2, "string", "int");
      goto LABEL_18;
    case 84:
LABEL_18:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 84);
      if (v10)
      {
      }

      IntParamSpec::validateValue(v10, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchHierInactiveComponentScore";
        goto LABEL_308;
      }

      *(this + 102) = a3;
      return;
    case 85:
      throwWrongTypeForParamId(85, "double", "int");
      goto LABEL_221;
    case 86:
LABEL_221:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_222;
    case 87:
LABEL_222:
      v52 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 87);
      if (v52)
      {
      }

      IntParamSpec::validateValue(v52, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "FstCoreMaxActive";
        goto LABEL_308;
      }

      *(this + 108) = a3;
      return;
    case 88:
      v64 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 88);
      if (v64)
      {
      }

      IntParamSpec::validateValue(v64, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "FstCoreNBest";
        goto LABEL_308;
      }

      *(this + 109) = a3;
      return;
    case 89:
      v16 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 89);
      if (v16)
      {
      }

      IntParamSpec::validateValue(v16, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "FstCoreHashPropagateBestTokensFirst";
        goto LABEL_308;
      }

      *(this + 110) = a3;
      return;
    case 90:
      throwWrongTypeForParamId(90, "BOOL", "int");
      goto LABEL_291;
    case 91:
LABEL_291:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_292;
    case 92:
LABEL_292:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_293;
    case 93:
LABEL_293:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_294;
    case 94:
LABEL_294:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_295;
    case 95:
LABEL_295:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_296;
    case 96:
LABEL_296:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_297;
    case 97:
LABEL_297:
      throwWrongTypeForParamId(a2, "string", "int");
      goto LABEL_298;
    case 98:
LABEL_298:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_299;
    case 99:
LABEL_299:
      throwWrongTypeForParamId(a2, "enum", "int");
      goto LABEL_300;
    case 100:
LABEL_300:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_301;
    case 101:
LABEL_301:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_302;
    case 102:
LABEL_302:
      throwWrongTypeForParamId(a2, "BOOL", "int");
      goto LABEL_303;
    case 103:
LABEL_303:
      throwWrongTypeForParamId(a2, "double", "int");
      goto LABEL_304;
    case 104:
LABEL_304:
      v67 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 104);
      if (v67)
      {
      }

      IntParamSpec::validateValue(v67, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "FstCoreCollectTracesPeriod";
        goto LABEL_308;
      }

      *(this + 124) = a3;
      return;
    case 105:
      v66 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 105);
      if (v66)
      {
      }

      IntParamSpec::validateValue(v66, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "FstCoreBackoffThreshScore";
        goto LABEL_308;
      }

      *(this + 125) = a3;
      return;
    case 106:
      throwWrongTypeForParamId(106, "enum", "int");
      goto LABEL_24;
    case 107:
LABEL_24:
      v11 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 107);
      if (v11)
      {
      }

      IntParamSpec::validateValue(v11, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchPartialIncompleteMaxWords";
        goto LABEL_308;
      }

      *(this + 127) = a3;
      return;
    case 108:
      v21 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 108);
      if (v21)
      {
      }

      IntParamSpec::validateValue(v21, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchPartialIncompleteMinListFrames";
        goto LABEL_308;
      }

      *(this + 128) = a3;
      return;
    case 109:
      v17 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 109);
      if (v17)
      {
      }

      IntParamSpec::validateValue(v17, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchPartialIncompleteMinWordFrames";
        goto LABEL_308;
      }

      *(this + 129) = a3;
      return;
    case 110:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 110);
      if (v9)
      {
      }

      IntParamSpec::validateValue(v9, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchPartialCompleteMinWordFrames";
        goto LABEL_308;
      }

      *(this + 130) = a3;
      break;
    case 111:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 111);
      if (v8)
      {
      }

      IntParamSpec::validateValue(v8, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchPartialRegularMinWordFrames";
LABEL_308:

        throwParamSetSetFailed(v7, "int");
      }

      else
      {
        *(this + 131) = a3;
      }

      break;
    default:

      throwWrongParamIdValue(a2, "int");
      return;
  }
}

void SearchParamSet::setDoubleParameter(SearchParamSet *this, int a2, double a3)
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
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "BOOL", "double");
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
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(a2, "int", "double");
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
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_18;
    case 17:
LABEL_18:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB8, 17);
      if (ParamByParamId)
      {
      }

      DoubleParamSpec::validateValue(ParamByParamId, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchConTransAccDecayFactor";
        goto LABEL_149;
      }

      *(this + 11) = a3;
      return;
    case 18:
      throwWrongTypeForParamId(18, "int", "double");
      goto LABEL_127;
    case 19:
LABEL_127:
      throwWrongTypeForParamId(a2, "string", "double");
      goto LABEL_128;
    case 20:
LABEL_128:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_129;
    case 21:
LABEL_129:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_130;
    case 22:
LABEL_130:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_131;
    case 23:
LABEL_131:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_132;
    case 24:
LABEL_132:
      v14 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 24);
      if (v14)
      {
      }

      DoubleParamSpec::validateValue(v14, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchEnableGenoneScoreCacheThresh";
        goto LABEL_149;
      }

      *(this + 17) = a3;
      return;
    case 25:
      v11 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 25);
      if (v11)
      {
      }

      DoubleParamSpec::validateValue(v11, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchFmpeMinimumPosteriorProbability";
        goto LABEL_149;
      }

      *(this + 18) = a3;
      return;
    case 26:
      throwWrongTypeForParamId(26, "enum", "double");
      goto LABEL_72;
    case 27:
LABEL_72:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_73;
    case 28:
LABEL_73:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_74;
    case 29:
LABEL_74:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_75;
    case 30:
LABEL_75:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_76;
    case 31:
LABEL_76:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_77;
    case 32:
LABEL_77:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_78;
    case 33:
LABEL_78:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_79;
    case 34:
LABEL_79:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_80;
    case 35:
LABEL_80:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_81;
    case 36:
LABEL_81:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_82;
    case 37:
LABEL_82:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_83;
    case 38:
LABEL_83:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_84;
    case 39:
LABEL_84:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_85;
    case 40:
LABEL_85:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_86;
    case 41:
LABEL_86:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_87;
    case 42:
LABEL_87:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_88;
    case 43:
LABEL_88:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_89;
    case 44:
LABEL_89:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_90;
    case 45:
LABEL_90:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_91;
    case 46:
LABEL_91:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_92;
    case 47:
LABEL_92:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_93;
    case 48:
LABEL_93:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_94;
    case 49:
LABEL_94:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_95;
    case 50:
LABEL_95:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 50);
      if (v10)
      {
      }

      DoubleParamSpec::validateValue(v10, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchLatticeNormalizedThreshFactor";
        goto LABEL_149;
      }

      *(this + 31) = a3;
      return;
    case 51:
      throwWrongTypeForParamId(51, "int", "double");
      goto LABEL_105;
    case 52:
LABEL_105:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_106;
    case 53:
LABEL_106:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_107;
    case 54:
LABEL_107:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_108;
    case 55:
LABEL_108:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_109;
    case 56:
LABEL_109:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_110;
    case 57:
LABEL_110:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_111;
    case 58:
LABEL_111:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_112;
    case 59:
LABEL_112:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_113;
    case 60:
LABEL_113:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_114;
    case 61:
LABEL_114:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_115;
    case 62:
LABEL_115:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_116;
    case 63:
LABEL_116:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_117;
    case 64:
LABEL_117:
      v12 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 64);
      if (v12)
      {
      }

      DoubleParamSpec::validateValue(v12, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchPelScoreScale";
        goto LABEL_149;
      }

      *(this + 39) = a3;
      return;
    case 65:
      throwWrongTypeForParamId(65, "BOOL", "double");
      goto LABEL_138;
    case 66:
LABEL_138:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_139;
    case 67:
LABEL_139:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_140;
    case 68:
LABEL_140:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_141;
    case 69:
LABEL_141:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_142;
    case 70:
LABEL_142:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_143;
    case 71:
LABEL_143:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_144;
    case 72:
LABEL_144:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_145;
    case 73:
LABEL_145:
      v15 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 73);
      if (v15)
      {
      }

      DoubleParamSpec::validateValue(v15, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "SearchTraceLatticeNormalizedThreshFactor";
        goto LABEL_149;
      }

      *(this + 44) = a3;
      return;
    case 74:
      throwWrongTypeForParamId(74, "int", "double");
      goto LABEL_35;
    case 75:
LABEL_35:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_36;
    case 76:
LABEL_36:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_37;
    case 77:
LABEL_37:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_38;
    case 78:
LABEL_38:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_39;
    case 79:
LABEL_39:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_40;
    case 80:
LABEL_40:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_41;
    case 81:
LABEL_41:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_42;
    case 82:
LABEL_42:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_43;
    case 83:
LABEL_43:
      throwWrongTypeForParamId(a2, "string", "double");
      goto LABEL_44;
    case 84:
LABEL_44:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_45;
    case 85:
LABEL_45:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 85);
      if (v8)
      {
      }

      DoubleParamSpec::validateValue(v8, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "FstCoreBeam";
        goto LABEL_149;
      }

      *(this + 52) = a3;
      return;
    case 86:
      v13 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 86);
      if (v13)
      {
      }

      DoubleParamSpec::validateValue(v13, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "FstCoreLatticeBeam";
        goto LABEL_149;
      }

      *(this + 53) = a3;
      break;
    case 87:
      throwWrongTypeForParamId(87, "int", "double");
      goto LABEL_51;
    case 88:
LABEL_51:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_52;
    case 89:
LABEL_52:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_53;
    case 90:
LABEL_53:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_54;
    case 91:
LABEL_54:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_55;
    case 92:
LABEL_55:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_56;
    case 93:
LABEL_56:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_57;
    case 94:
LABEL_57:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_58;
    case 95:
LABEL_58:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_59;
    case 96:
LABEL_59:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_60;
    case 97:
LABEL_60:
      throwWrongTypeForParamId(a2, "string", "double");
      goto LABEL_61;
    case 98:
LABEL_61:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_62;
    case 99:
LABEL_62:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_63;
    case 100:
LABEL_63:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_64;
    case 101:
LABEL_64:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_65;
    case 102:
LABEL_65:
      throwWrongTypeForParamId(a2, "BOOL", "double");
      goto LABEL_66;
    case 103:
LABEL_66:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 103);
      if (v9)
      {
      }

      DoubleParamSpec::validateValue(v9, a3, 0, 0);
      if (*(this + 9))
      {
        v7 = "FstCoreLateLatticeArcFingerSuckPenalty";
LABEL_149:

        throwParamSetSetFailed(v7, "double");
      }

      else
      {
        *(this + 61) = a3;
      }

      break;
    case 104:
      throwWrongTypeForParamId(104, "int", "double");
      goto LABEL_24;
    case 105:
LABEL_24:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_25;
    case 106:
LABEL_25:
      throwWrongTypeForParamId(a2, "enum", "double");
      goto LABEL_26;
    case 107:
LABEL_26:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_27;
    case 108:
LABEL_27:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_28;
    case 109:
LABEL_28:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_29;
    case 110:
LABEL_29:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_30;
    case 111:
LABEL_30:
      throwWrongTypeForParamId(a2, "int", "double");
      goto LABEL_31;
    default:
LABEL_31:

      throwWrongParamIdValue(a2, "double");
      return;
  }
}

void SearchParamSet::setStringParameter(SearchParamSet *this, int a2, char *a3)
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
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "BOOL", "string");
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
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(a2, "int", "string");
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
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_20;
    case 19:
LABEL_20:

      SearchParamSet::setParamSetSearchConTransAccFactorList(this, a3);
      return;
    case 20:
      throwWrongTypeForParamId(20, "int", "string");
      goto LABEL_57;
    case 21:
LABEL_57:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_58;
    case 22:
LABEL_58:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_59;
    case 23:
LABEL_59:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_60;
    case 24:
LABEL_60:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_61;
    case 25:
LABEL_61:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_62;
    case 26:
LABEL_62:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_63;
    case 27:
LABEL_63:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_64;
    case 28:
LABEL_64:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_65;
    case 29:
LABEL_65:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_66;
    case 30:
LABEL_66:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_67;
    case 31:
LABEL_67:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_68;
    case 32:
LABEL_68:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_69;
    case 33:
LABEL_69:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_70;
    case 34:
LABEL_70:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_71;
    case 35:
LABEL_71:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_72;
    case 36:
LABEL_72:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_73;
    case 37:
LABEL_73:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_74;
    case 38:
LABEL_74:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_75;
    case 39:
LABEL_75:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_76;
    case 40:
LABEL_76:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_77;
    case 41:
LABEL_77:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_78;
    case 42:
LABEL_78:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_79;
    case 43:
LABEL_79:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_80;
    case 44:
LABEL_80:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_81;
    case 45:
LABEL_81:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_82;
    case 46:
LABEL_82:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_83;
    case 47:
LABEL_83:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_84;
    case 48:
LABEL_84:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_85;
    case 49:
LABEL_85:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_86;
    case 50:
LABEL_86:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_87;
    case 51:
LABEL_87:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_88;
    case 52:
LABEL_88:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_89;
    case 53:
LABEL_89:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_90;
    case 54:
LABEL_90:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_91;
    case 55:
LABEL_91:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_92;
    case 56:
LABEL_92:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_93;
    case 57:
LABEL_93:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_94;
    case 58:
LABEL_94:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_95;
    case 59:
LABEL_95:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_96;
    case 60:
LABEL_96:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_97;
    case 61:
LABEL_97:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_98;
    case 62:
LABEL_98:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_99;
    case 63:
LABEL_99:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_100;
    case 64:
LABEL_100:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_101;
    case 65:
LABEL_101:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_102;
    case 66:
LABEL_102:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_103;
    case 67:
LABEL_103:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_104;
    case 68:
LABEL_104:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_105;
    case 69:
LABEL_105:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_106;
    case 70:
LABEL_106:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_107;
    case 71:
LABEL_107:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_108;
    case 72:
LABEL_108:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_109;
    case 73:
LABEL_109:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_110;
    case 74:
LABEL_110:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_111;
    case 75:
LABEL_111:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_112;
    case 76:
LABEL_112:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_113;
    case 77:
LABEL_113:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_114;
    case 78:
LABEL_114:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_115;
    case 79:
LABEL_115:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_116;
    case 80:
LABEL_116:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_117;
    case 81:
LABEL_117:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_118;
    case 82:
LABEL_118:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_119;
    case 83:
LABEL_119:

      SearchParamSet::setParamSetSearchHierScorerBeamList(this, a3);
      return;
    case 84:
      throwWrongTypeForParamId(84, "int", "string");
      goto LABEL_41;
    case 85:
LABEL_41:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_42;
    case 86:
LABEL_42:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_43;
    case 87:
LABEL_43:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_44;
    case 88:
LABEL_44:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_45;
    case 89:
LABEL_45:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_46;
    case 90:
LABEL_46:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_47;
    case 91:
LABEL_47:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_48;
    case 92:
LABEL_48:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_49;
    case 93:
LABEL_49:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_50;
    case 94:
LABEL_50:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_51;
    case 95:
LABEL_51:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_52;
    case 96:
LABEL_52:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_53;
    case 97:
LABEL_53:

      SearchParamSet::setParamSetSearchHierScorerCutoffRatioList(this, a3);
      return;
    case 98:
      throwWrongTypeForParamId(98, "BOOL", "string");
      goto LABEL_24;
    case 99:
LABEL_24:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_25;
    case 100:
LABEL_25:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_26;
    case 101:
LABEL_26:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_27;
    case 102:
LABEL_27:
      throwWrongTypeForParamId(a2, "BOOL", "string");
      goto LABEL_28;
    case 103:
LABEL_28:
      throwWrongTypeForParamId(a2, "double", "string");
      goto LABEL_29;
    case 104:
LABEL_29:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_30;
    case 105:
LABEL_30:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_31;
    case 106:
LABEL_31:
      throwWrongTypeForParamId(a2, "enum", "string");
      goto LABEL_32;
    case 107:
LABEL_32:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_33;
    case 108:
LABEL_33:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_34;
    case 109:
LABEL_34:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_35;
    case 110:
LABEL_35:
      throwWrongTypeForParamId(a2, "int", "string");
      goto LABEL_36;
    case 111:
LABEL_36:
      throwWrongTypeForParamId(a2, "int", "string");
      break;
    default:
      break;
  }

  throwWrongParamIdValue(a2, "string");
}

void SearchParamSet::setEnumParameter(SearchParamSet *this, int a2, int a3)
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
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_5;
    case 4:
LABEL_5:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
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
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_10;
    case 9:
LABEL_10:
      throwWrongTypeForParamId(a2, "int", "BOOL");
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
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_14;
    case 13:
LABEL_14:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_15;
    case 14:
LABEL_15:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_16;
    case 15:
LABEL_16:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_17;
    case 16:
LABEL_17:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_18;
    case 17:
LABEL_18:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_19;
    case 18:
LABEL_19:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_20;
    case 19:
LABEL_20:
      throwWrongTypeForParamId(a2, "string", "BOOL");
      goto LABEL_21;
    case 20:
LABEL_21:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_22;
    case 21:
LABEL_22:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_23;
    case 22:
LABEL_23:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_24;
    case 23:
LABEL_24:
      ParamByParamId = ParamSpecMgr::getParamByParamId(qword_281051FB8, 23);
      if (ParamByParamId)
      {
      }

      EnumParamSpec::validateValue(ParamByParamId, a3);
      if (*(this + 9))
      {
        v7 = "SearchDecimationType";
        goto LABEL_138;
      }

      *(this + 33) = a3;
      return;
    case 24:
      throwWrongTypeForParamId(24, "double", "BOOL");
      goto LABEL_62;
    case 25:
LABEL_62:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_63;
    case 26:
LABEL_63:
      v10 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 26);
      if (v10)
      {
      }

      EnumParamSpec::validateValue(v10, a3);
      if (*(this + 9))
      {
        v7 = "SearchFrameTransformerThreadingType";
        goto LABEL_138;
      }

      *(this + 38) = a3;
      return;
    case 27:
      v13 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 27);
      if (v13)
      {
      }

      EnumParamSpec::validateValue(v13, a3);
      if (*(this + 9))
      {
        v7 = "SearchThreadingType";
        goto LABEL_138;
      }

      *(this + 39) = a3;
      return;
    case 28:
      throwWrongTypeForParamId(28, "int", "BOOL");
      goto LABEL_49;
    case 29:
LABEL_49:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_50;
    case 30:
LABEL_50:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_51;
    case 31:
LABEL_51:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_52;
    case 32:
LABEL_52:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_53;
    case 33:
LABEL_53:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_54;
    case 34:
LABEL_54:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_55;
    case 35:
LABEL_55:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_56;
    case 36:
LABEL_56:
      v9 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 36);
      if (v9)
      {
      }

      EnumParamSpec::validateValue(v9, a3);
      if (*(this + 9))
      {
        v7 = "SearchLMLimit";
        goto LABEL_138;
      }

      *(this + 48) = a3;
      return;
    case 37:
      throwWrongTypeForParamId(37, "BOOL", "BOOL");
      goto LABEL_114;
    case 38:
LABEL_114:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_115;
    case 39:
LABEL_115:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_116;
    case 40:
LABEL_116:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_117;
    case 41:
LABEL_117:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_118;
    case 42:
LABEL_118:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_119;
    case 43:
LABEL_119:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_120;
    case 44:
LABEL_120:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_121;
    case 45:
LABEL_121:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_122;
    case 46:
LABEL_122:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_123;
    case 47:
LABEL_123:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_124;
    case 48:
LABEL_124:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_125;
    case 49:
LABEL_125:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_126;
    case 50:
LABEL_126:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_127;
    case 51:
LABEL_127:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_128;
    case 52:
LABEL_128:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_129;
    case 53:
LABEL_129:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_130;
    case 54:
LABEL_130:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_131;
    case 55:
LABEL_131:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_132;
    case 56:
LABEL_132:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_133;
    case 57:
LABEL_133:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_134;
    case 58:
LABEL_134:
      v12 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 58);
      if (v12)
      {
      }

      EnumParamSpec::validateValue(v12, a3);
      if (*(this + 9))
      {
        v7 = "SearchNodeSkippingType";
        goto LABEL_138;
      }

      *(this + 71) = a3;
      return;
    case 59:
      throwWrongTypeForParamId(59, "int", "BOOL");
      goto LABEL_69;
    case 60:
LABEL_69:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_70;
    case 61:
LABEL_70:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_71;
    case 62:
LABEL_71:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_72;
    case 63:
LABEL_72:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_73;
    case 64:
LABEL_73:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_74;
    case 65:
LABEL_74:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_75;
    case 66:
LABEL_75:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_76;
    case 67:
LABEL_76:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_77;
    case 68:
LABEL_77:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_78;
    case 69:
LABEL_78:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_79;
    case 70:
LABEL_79:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_80;
    case 71:
LABEL_80:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_81;
    case 72:
LABEL_81:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_82;
    case 73:
LABEL_82:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_83;
    case 74:
LABEL_83:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_84;
    case 75:
LABEL_84:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_85;
    case 76:
LABEL_85:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_86;
    case 77:
LABEL_86:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_87;
    case 78:
LABEL_87:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_88;
    case 79:
LABEL_88:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_89;
    case 80:
LABEL_89:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_90;
    case 81:
LABEL_90:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_91;
    case 82:
LABEL_91:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_92;
    case 83:
LABEL_92:
      throwWrongTypeForParamId(a2, "string", "BOOL");
      goto LABEL_93;
    case 84:
LABEL_93:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_94;
    case 85:
LABEL_94:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_95;
    case 86:
LABEL_95:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_96;
    case 87:
LABEL_96:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_97;
    case 88:
LABEL_97:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_98;
    case 89:
LABEL_98:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_99;
    case 90:
LABEL_99:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_100;
    case 91:
LABEL_100:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_101;
    case 92:
LABEL_101:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_102;
    case 93:
LABEL_102:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_103;
    case 94:
LABEL_103:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_104;
    case 95:
LABEL_104:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_105;
    case 96:
LABEL_105:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_106;
    case 97:
LABEL_106:
      throwWrongTypeForParamId(a2, "string", "BOOL");
      goto LABEL_107;
    case 98:
LABEL_107:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_108;
    case 99:
LABEL_108:
      v11 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 99);
      if (v11)
      {
      }

      EnumParamSpec::validateValue(v11, a3);
      if (*(this + 9))
      {
        v7 = "FstCoreLatticeGeneration";
        goto LABEL_138;
      }

      *(this + 119) = a3;
      break;
    case 100:
      throwWrongTypeForParamId(100, "BOOL", "BOOL");
      goto LABEL_38;
    case 101:
LABEL_38:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_39;
    case 102:
LABEL_39:
      throwWrongTypeForParamId(a2, "BOOL", "BOOL");
      goto LABEL_40;
    case 103:
LABEL_40:
      throwWrongTypeForParamId(a2, "double", "BOOL");
      goto LABEL_41;
    case 104:
LABEL_41:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_42;
    case 105:
LABEL_42:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_43;
    case 106:
LABEL_43:
      v8 = ParamSpecMgr::getParamByParamId(qword_281051FB8, 106);
      if (v8)
      {
      }

      EnumParamSpec::validateValue(v8, a3);
      if (*(this + 9))
      {
        v7 = "SearchPartialIncludePrefiltererResult";
LABEL_138:

        throwParamSetSetFailed(v7, "enum");
      }

      else
      {
        *(this + 126) = a3;
      }

      break;
    case 107:
      throwWrongTypeForParamId(107, "int", "BOOL");
      goto LABEL_30;
    case 108:
LABEL_30:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_31;
    case 109:
LABEL_31:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_32;
    case 110:
LABEL_32:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_33;
    case 111:
LABEL_33:
      throwWrongTypeForParamId(a2, "int", "BOOL");
      goto LABEL_34;
    default:
LABEL_34:

      throwWrongParamIdValue(a2, "enum");
      return;
  }
}

void SearchParamSet::~SearchParamSet(SearchParamSet *this)
{
  SearchParamSet::~SearchParamSet(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287528020;
  v2 = this + 104;
  DgnString::~DgnString(this + 456);
  DgnString::~DgnString(this + 392);
  DgnString::~DgnString(v2);
  *this = &unk_287528C00;
  DgnString::~DgnString(this + 8);
}

uint64_t SDWord_New(unint64_t a1, char *a2)
{
  SdapiInsurance::SdapiInsurance(v9, "SDWord_New", 1, 0, 393);
  if (v9[97] == 1)
  {
    if (!a2)
    {
      v5 = throwBadStringPointer();
    }

    v9[151] = 0;
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>, '%.500s')\n", v4, v5, "SDWord_New", a1, a2);
    }

    v6 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v7 = (ModelMgr::createWord(v6, a1, a2, 0xFFFFFFLL, "New") & 0xFFFFFF) + 1;
  }

  else
  {
    v7 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v9);
  return v7;
}

void SDWord_DeleteList(unint64_t a1, uint64_t a2, unsigned int a3)
{
  SdapiInsurance::SdapiInsurance(v19, "SDWord_DeleteList", 1, 0, 398);
  if (v19[97] == 1)
  {
    if (gbShowCalls == 1)
    {
      if (gbShowCallPointerArguments)
      {
        v7 = a2;
      }

      else
      {
        v7 = 0;
      }

      xlprintf("Entering sdapi call %.500s(<SDh %lld>, Masked:0x%016llx, %llu)\n", v6, "SDWord_DeleteList", a1, v7, a3);
    }

    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    v8 = ModelMgr::smpModelMgr;
    VocOrThrow = ModelMgr::getVocOrThrow(ModelMgr::smpModelMgr, a1);
    v11 = *(VocOrThrow + 48);
    if (!a2 && a3)
    {
      v10.n128_f64[0] = throwBadLengthForNullPointer(a3, "DgnVerifyReadPtr");
    }

    LOBYTE(v17) = 0;
    if ((*(**(VocOrThrow + 72) + 192))(*(VocOrThrow + 72), v10))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 257, "sdapi/sdword", 2, "%u", a1);
    }

    v16 = v8;
    v17 = 0;
    v18 = 0;
    if (a3)
    {
      v20 = 0;
      v12 = realloc_array(0, &v20, 4 * a3, 0, 0, 1);
      v13 = 0;
      v17 = v20;
      LODWORD(v18) = a3;
      HIDWORD(v18) = v12 >> 2;
      do
      {
        v14 = *(a2 + 8 * v13);
        v15 = v14 - 1;
        if ((v14 - 1) >> 32)
        {
          throwBadSdapiArgument("SDhWord", *(a2 + 8 * v13));
        }

        if (v15 >= 0xFFFFF4)
        {
          throwBadSdapiArgument("SDhWord", v14);
        }

        v17[v13] = v15;
        WordList::verifyVisible(v11, v14 - 1);
        if ((*(*(v11 + 78) + 4 * (v15 >> 5)) >> v15))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sdapi/sdword.cpp", 269, "sdapi/sdword", 13, "%u %u", v13, v14 - 1);
        }

        ++v13;
      }

      while (a3 != v13);
    }

    else
    {
      LODWORD(v18) = 0;
    }

    ModelMgr::deleteWordFamilyFromWordList(v16, a1, &v17);
    ModelMgr::rebuildAllStalePrefilterers(v16);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  }

  SdapiInsurance::~SdapiInsurance(v19);
}

void sub_262705020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (a2 == 2)
  {
    v17 = __cxa_begin_catch(a1);
    ApiState::handleDgnException(v17, v18);
  }

  else
  {
    if (a2 != 1)
    {
      SdapiInsurance::~SdapiInsurance(va);
      _Unwind_Resume(a1);
    }

    v19 = __cxa_begin_catch(a1);
    ApiState::handleDgnMemoryException(v19);
  }

  __cxa_end_catch();
  JUMPOUT(0x262704FF8);
}

uint64_t SDWord_GetHandle(unint64_t a1, const char *a2)
{
  SdapiInsurance::SdapiInsurance(v11, "SDWord_GetHandle", 1, 1, 399);
  if (v11[97] == 1)
  {
    if (!a2)
    {
      v5 = throwBadStringPointer();
    }

    v11[151] = 0;
    if (gbShowCalls == 1)
    {
      xlprintf("Entering sdapi call %.500s(<SDh %lld>, '%.500s')\n", v4, v5, "SDWord_GetHandle", a1, a2);
    }

    v6 = ModelMgr::smpModelMgr;
    if (HIDWORD(a1) || (a1 & 0xFFFF0000) != 0)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    if (a1 - 1 >= 0x7B)
    {
      throwBadSdapiArgument("SDhVoc", a1);
    }

    VocOrThrow = ModelMgr::getVocOrThrow(v6, a1);
    if (a2 && *a2 && (v8 = WordList::lookupWord(*(VocOrThrow + 48), a2), v8 != 0xFFFFFF))
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 0;
  }

  SdapiInsurance::~SdapiInsurance(v11);
  return v9;
}