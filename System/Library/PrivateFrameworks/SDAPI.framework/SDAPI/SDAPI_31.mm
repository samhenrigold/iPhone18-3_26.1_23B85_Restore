void sub_26272105C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::unsetContext(MultiLanguageModel *this, LMContextData *a2)
{
  v4 = *(this + 29);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 5) + 8 * i);
      if (v6 && ((*(this + 112) & 1) != 0 || *(this + 113) == 1 && *(*(this + 68) + i) == 1 && *(*(this + 62) + 8 * i) != 0.0 || *(this + 114) == 1))
      {
        (*(*v6 + 480))(v6, *(*(a2 + 2) + 8 * i));
        v4 = *(this + 29);
      }
    }
  }

  LanguageModel::unsetContext(this, a2);
}

uint64_t MultiLanguageModel::mayWordBeIgnoredInContext(MultiLanguageModel *this, uint64_t a2)
{
  v4 = *(this + 29);
  if ((*(this + 112) & 1) == 0)
  {
    if (!*(this + 29))
    {
      return 0;
    }

    v8 = 0;
    while (1)
    {
      v9 = *(*(this + 5) + 8 * v8);
      if (v9 && (*(this + 113) == 1 && *(*(this + 68) + v8) == 1 && *(*(this + 62) + 8 * v8) != 0.0 || *(this + 114) == 1))
      {
        if ((*(*v9 + 488))(v9, a2))
        {
          return 1;
        }

        v4 = *(this + 29);
      }

      if (++v8 >= v4)
      {
        return 0;
      }
    }
  }

  if (*(this + 29))
  {
    v5 = 0;
    while (*(*(this + 71) + 4 * v5) > a2 || *(*(this + 73) + 4 * v5) < a2)
    {
      if (v4 == ++v5)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    LODWORD(v5) = *(this + 140);
  }

  v6 = *(**(*(this + 5) + 8 * v5) + 488);

  return v6();
}

uint64_t MultiLanguageModel::getNumLoadedBigramBytes(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      v4 += (*(*v5 + 240))(v5);
      v1 = *(this + 29);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

uint64_t MultiLanguageModel::getNumLoadedTrigramBytes(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      v4 += (*(*v5 + 248))(v5);
      v1 = *(this + 29);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

uint64_t MultiLanguageModel::getNumLoadedQuadgramBytes(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      v4 += (*(*v5 + 256))(v5);
      v1 = *(this + 29);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

uint64_t MultiLanguageModel::getDefaultRestrictRange(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  if (*(this + 112) == 1 && *(this + 576) >= 2u)
  {
    *a2 = *(*(this + 568) + 4);
    v3 = *(*(this + 584) + 4 * (*(this + 592) - 1));
  }

  else
  {
    v3 = 0xFFFFFF;
    *a2 = 0xFFFFFF;
  }

  *a3 = v3;
  return this;
}

uint64_t MultiLanguageModel::getValidTopicLmSlots(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 104);
  if (a2)
  {
    v4 = a2[3];
    if (v2 <= v4)
    {
      a2[2] = v2;
      if (!v2)
      {
        return v2;
      }
    }

    else
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, v2 - v4, 0);
      a2[2] = v2;
    }

    v5 = vdupq_n_s64(v2 - 1);
    v6 = (v2 + 3) & 0x1FFFFFFFCLL;
    v7 = xmmword_26286BF80;
    v8 = xmmword_26286B680;
    v9 = (*a2 + 8);
    v10 = vdupq_n_s64(1uLL);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v5, v8));
      v13 = vaddq_s64(v8, v10);
      if (vuzp1_s16(v12, *v5.i8).u8[0])
      {
        *(v9 - 2) = v13.i32[0];
      }

      if (vuzp1_s16(v12, *&v5).i8[2])
      {
        *(v9 - 1) = v13.i32[2];
      }

      v14 = vaddq_s64(v7, v10);
      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v7))).i32[1])
      {
        *v9 = v14.i32[0];
        v9[1] = v14.i32[2];
      }

      v7 = vaddq_s64(v7, v11);
      v8 = vaddq_s64(v8, v11);
      v9 += 4;
      v6 -= 4;
    }

    while (v6);
  }

  return v2;
}

void MultiLanguageModel::getTopicLmSlotNames(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 116))
  {
    v4 = 0;
    for (i = 0; i < *(a1 + 116); ++i)
    {
      v6 = *(*(a1 + 136) + 4 * i);
      if (v6 == 1)
      {
        v7 = DgnArray<DgnString>::find(a2, *(a1 + 352) + v4);
        if (v7 != -1)
        {
          v8 = *(a1 + 352) + v4;
          if (*(v8 + 8))
          {
            v9 = *v8;
          }

          else
          {
            v9 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1319, "lm/multilm", 93, "%u %u %.500s", v7, a2[2], v9);
        }

        v12 = *(a1 + 352);
        v13 = a2[2];
        if (v13 == a2[3])
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a2, 1, 1);
          v13 = a2[2];
        }

        DgnString::DgnString((*a2 + 16 * v13), (v12 + v4));
        ++a2[2];
      }

      else if (*(a1 + 112) == 1)
      {
        if (v6 == 3 && i == *(a1 + 560))
        {
LABEL_14:
          v11 = *(*(a1 + 40) + 8 * i);
          if (v11)
          {
          }

          MultiLanguageModel::getTopicLmSlotNames(v11, a2);
        }
      }

      else if (v6 == 3)
      {
        goto LABEL_14;
      }

      v4 += 16;
    }
  }
}

uint64_t MultiLanguageModel::getTopicLmSlotId(MultiLanguageModel *this, const DgnString *a2)
{
  v2 = DgnArray<DgnString>::find(this + 24, a2);
  if (v2 == -1)
  {
    return 0xFFFFLL;
  }

  else
  {
    return (v2 + 1);
  }
}

DgnString *MultiLanguageModel::setTopicLmSlotName(MultiLanguageModel *this, int a2, const char **a3)
{
  if (*(a3 + 2))
  {
    v6 = *a3;
  }

  else
  {
    v6 = &unk_26288BEF0;
  }

  if ((isValidName(v6) & 1) == 0)
  {
    if (*(a3 + 2))
    {
      v7 = *a3;
    }

    else
    {
      v7 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1357, "lm/multilm", 92, "%.500s", v7);
  }

  v8 = (a2 - 1);
  if (v8 >= *(this + 26))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1365, "lm/multilm", 95, "%u", a2);
  }

  v9 = *(this + 12) + 16 * v8;
  if (*v9)
  {
    MemChunkFree(*v9, 0);
    *v9 = 0;
  }

  *(v9 + 8) = 0;
  v10 = DgnArray<DgnString>::find(this + 24, a3);
  if (v10 != -1)
  {
    if (*(a3 + 2))
    {
      v11 = *a3;
    }

    else
    {
      v11 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1370, "lm/multilm", 93, "%u %u %.500s", v10, a2 - 1, v11);
  }

  v12 = DgnArray<DgnString>::find(this + 20, a3);
  if (v12 != -1)
  {
    if (*(a3 + 2))
    {
      v13 = *a3;
    }

    else
    {
      v13 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1374, "lm/multilm", 94, "%u %u %.500s", v12, a2 - 1, v13);
  }

  DgnString::operator=((*(this + 12) + 16 * v8), a3);
  v18 = 0;
  v19 = a2 - 1;
  v20 = 0;
  MultiLanguageModel::getInternalTopicLmSlot(this, &v19, &v20, &v18);
  v14 = v20;
  v15 = v18;
  if (v18 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1384, "lm/multilm", 95, "%u", a2);
  }

  v16 = (*(v14 + 44) + 16 * v15);

  return DgnString::operator=(v16, a3);
}

uint64_t MultiLanguageModel::getTopicLmSlotName(MultiLanguageModel *this, int a2)
{
  v3 = a2 - 1;
  if ((a2 - 1) >= *(this + 26))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1400, "lm/multilm", 95, "%u", a2);
  }

  return *(this + 12) + 16 * v3;
}

BOOL MultiLanguageModel::hasTopicLM(MultiLanguageModel *this, int a2)
{
  v7 = a2 - 1;
  v6 = 0;
  v5 = 0;
  MultiLanguageModel::getInternalTopicLmSlot(this, &v7, &v6, &v5);
  v3 = v5;
  if (v5 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1414, "lm/multilm", 95, "%u", a2);
  }

  return *(*(v6 + 5) + 8 * v3) != 0;
}

uint64_t MultiLanguageModel::getInternalTopicLmSlot(uint64_t this, unsigned int *a2, const MultiLanguageModel **a3, unsigned int *a4)
{
  *a3 = 0;
  *a4 = -1;
  if (*(this + 116))
  {
    v7 = this;
    for (i = 0; i < *(v7 + 116); ++i)
    {
      v9 = *(*(v7 + 136) + 4 * i);
      if (v9 == 1)
      {
        if (!*a2)
        {
          *a3 = v7;
          *a4 = i;
          return this;
        }

        --*a2;
      }

      else
      {
        if (*(v7 + 112) == 1)
        {
          if (v9 != 3 || i != *(v7 + 560))
          {
            continue;
          }
        }

        else if (v9 != 3)
        {
          continue;
        }

        v11 = *(*(v7 + 40) + 8 * i);
        if (v11)
        {
        }

        this = MultiLanguageModel::getInternalTopicLmSlot(v11, a2, a3, a4);
        if (*a4 != -1)
        {
          return this;
        }
      }
    }
  }

  return this;
}

uint64_t MultiLanguageModel::deleteTopicLMs(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 616))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1424, "lm/multilm", 20, "%.500s", "deleteTopicLMs");
  }

  v4 = *(a1 + 104);
  DgnPrimArray<unsigned char>::DgnPrimArray(v11, *(a1 + 104));
  if (v4)
  {
    bzero(v11[0], v4);
  }

  if (*(a2 + 8))
  {
    v6 = 0;
    do
    {
      v7 = *(*a2 + 4 * v6) - 1;
      if (v7 >= v4)
      {
        v5.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1439, "lm/multilm", 95, "%u", *(*a2 + 4 * v6));
      }

      v8 = v11[0];
      if (*(v11[0] + v7) == 1)
      {
        v5.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1442, "lm/multilm", 96, "%u", *(*a2 + 4 * v6));
        v8 = v11[0];
      }

      v8[v7] = 1;
      ++v6;
    }

    while (v6 < *(a2 + 8));
  }

  v10 = 0;
  MultiLanguageModel::deleteTopicLMsInternal(a1, v11, &v10, v5);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
}

void sub_262721D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::deleteTopicLMsInternal(uint64_t a1, uint64_t a2, unsigned int *a3, __n128 a4)
{
  v15[0] = 0;
  v15[1] = 0;
  if (*(a1 + 114) == 1)
  {
    a4.n128_f64[0] = DgnPrimArray<double>::copyArraySlice(v15, (a1 + 384), 0, *(a1 + 392));
  }

  if (*(a1 + 116))
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *a3;
      if (v9 >= *(a2 + 8))
      {
LABEL_25:
        if (*(a1 + 114) == 1 && (v8 & 1) != 0)
        {
          (*(*a1 + 496))(a1, v15, a4);
          MultiLanguageModel::adjustNamedWeightsSets(a1);
        }

        return DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
      }

      v10 = *(*(a1 + 136) + 4 * v7);
      if (v10 == 1)
      {
        if (*(*a2 + v9) == 1)
        {
          v11 = *(*(a1 + 40) + 8 * v7);
          if (!v11)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1474, "lm/multilm", 22, "%u", *a3);
            v11 = *(*(a1 + 40) + 8 * v7);
          }

          DgnDelete<LanguageModel>(v11);
          *(*(a1 + 40) + 8 * v7) = 0;
          if (*(a1 + 114) == 1)
          {
            *(v15[0] + 8 * v7) = 0;
          }

          v8 = 1;
        }

        ++*a3;
      }

      else if (*(a1 + 112) == 1)
      {
        if (v10 == 3 && v7 == *(a1 + 560))
        {
LABEL_21:
          v13 = *(*(a1 + 40) + 8 * v7);
          if (v13)
          {
          }

          MultiLanguageModel::deleteTopicLMsInternal(v13, a2, a3, a4);
        }
      }

      else if (v10 == 3)
      {
        goto LABEL_21;
      }

      if (++v7 >= *(a1 + 116))
      {
        goto LABEL_25;
      }
    }
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
}

void sub_262721F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::adjustNamedWeightsSets(uint64_t this)
{
  v1 = *(this + 176);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    v4 = 8;
    do
    {
      if (*(*(v2 + 168) + v4) >= 2u)
      {
        this = MultiLanguageModel::adjustNamedWeightsSet(v2, v3);
        v1 = *(v2 + 176);
      }

      ++v3;
      v4 += 16;
    }

    while (v3 < v1);
  }

  return this;
}

uint64_t MultiLanguageModel::getValidFactoryCorrectiveLms(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 88);
  if (a2)
  {
    v4 = a2[3];
    if (v2 <= v4)
    {
      a2[2] = v2;
      if (!v2)
      {
        return v2;
      }
    }

    else
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, v2 - v4, 0);
      a2[2] = v2;
    }

    v5 = vdupq_n_s64(v2 - 1);
    v6 = (v2 + 3) & 0x1FFFFFFFCLL;
    v7 = xmmword_26286BF80;
    v8 = xmmword_26286B680;
    v9 = (*a2 + 8);
    v10 = vdupq_n_s64(1uLL);
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v5, v8));
      v13 = vaddq_s64(v8, v10);
      if (vuzp1_s16(v12, *v5.i8).u8[0])
      {
        *(v9 - 2) = v13.i32[0];
      }

      if (vuzp1_s16(v12, *&v5).i8[2])
      {
        *(v9 - 1) = v13.i32[2];
      }

      v14 = vaddq_s64(v7, v10);
      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v7))).i32[1])
      {
        *v9 = v14.i32[0];
        v9[1] = v14.i32[2];
      }

      v7 = vaddq_s64(v7, v11);
      v8 = vaddq_s64(v8, v11);
      v9 += 4;
      v6 -= 4;
    }

    while (v6);
  }

  return v2;
}

void MultiLanguageModel::getFactoryCorrectiveLmNames(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 116))
  {
    v4 = 0;
    for (i = 0; i < *(a1 + 116); ++i)
    {
      v6 = *(*(a1 + 136) + 4 * i);
      if (v6 == 2)
      {
        v7 = DgnArray<DgnString>::find(a2, *(a1 + 512) + v4);
        if (v7 != -1)
        {
          v8 = *(a1 + 512) + v4;
          if (*(v8 + 8))
          {
            v9 = *v8;
          }

          else
          {
            v9 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1539, "lm/multilm", 88, "%u %u %.500s", v7, a2[2], v9);
        }

        v12 = *(a1 + 512);
        v13 = a2[2];
        if (v13 == a2[3])
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a2, 1, 1);
          v13 = a2[2];
        }

        DgnString::DgnString((*a2 + 16 * v13), (v12 + v4));
        ++a2[2];
      }

      else if (*(a1 + 112) == 1)
      {
        if (v6 == 3 && i == *(a1 + 560))
        {
LABEL_14:
          v11 = *(*(a1 + 40) + 8 * i);
          if (v11)
          {
          }

          MultiLanguageModel::getFactoryCorrectiveLmNames(v11, a2);
        }
      }

      else if (v6 == 3)
      {
        goto LABEL_14;
      }

      v4 += 16;
    }
  }
}

uint64_t MultiLanguageModel::getFactoryCorrectiveLmId(MultiLanguageModel *this, const DgnString *a2)
{
  v2 = DgnArray<DgnString>::find(this + 20, a2);
  if (v2 == -1)
  {
    return 0xFFFFLL;
  }

  else
  {
    return (v2 + 1);
  }
}

DgnString *MultiLanguageModel::setFactoryCorrectiveLmName(MultiLanguageModel *this, int a2, const char **a3)
{
  if (*(a3 + 2))
  {
    v6 = *a3;
  }

  else
  {
    v6 = &unk_26288BEF0;
  }

  if ((isValidName(v6) & 1) == 0)
  {
    if (*(a3 + 2))
    {
      v7 = *a3;
    }

    else
    {
      v7 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1579, "lm/multilm", 99, "%.500s", v7);
  }

  v8 = (a2 - 1);
  if (v8 >= *(this + 22))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1587, "lm/multilm", 89, "%u", a2);
  }

  v9 = *(this + 10) + 16 * v8;
  if (*v9)
  {
    MemChunkFree(*v9, 0);
    *v9 = 0;
  }

  *(v9 + 8) = 0;
  v10 = DgnArray<DgnString>::find(this + 20, a3);
  if (v10 != -1)
  {
    if (*(a3 + 2))
    {
      v11 = *a3;
    }

    else
    {
      v11 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1592, "lm/multilm", 88, "%u %u %.500s", v10, a2 - 1, v11);
  }

  v12 = DgnArray<DgnString>::find(this + 24, a3);
  if (v12 != -1)
  {
    if (*(a3 + 2))
    {
      v13 = *a3;
    }

    else
    {
      v13 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1596, "lm/multilm", 94, "%u %u %.500s", a2 - 1, v12, v13);
  }

  DgnString::operator=((*(this + 10) + 16 * v8), a3);
  v19 = a2 - 1;
  v18 = 0;
  v17 = 0;
  MultiLanguageModel::getInternalFactoryCorrectiveLm(this, &v19, &v18, &v17);
  v14 = v17;
  if (v17 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1607, "lm/multilm", 89, "%u", a2);
  }

  v15 = (*(v18 + 64) + 16 * v14);

  return DgnString::operator=(v15, a3);
}

uint64_t MultiLanguageModel::getInternalFactoryCorrectiveLm(uint64_t this, unsigned int *a2, MultiLanguageModel **a3, unsigned int *a4)
{
  *a3 = 0;
  *a4 = -1;
  if (*(this + 116))
  {
    v7 = this;
    for (i = 0; i < *(v7 + 116); ++i)
    {
      v9 = *(*(v7 + 136) + 4 * i);
      if (v9 == 2)
      {
        if (!*a2)
        {
          *a3 = v7;
          *a4 = i;
          return this;
        }

        --*a2;
      }

      else if (*(v7 + 112) == 1)
      {
        if (v9 == 3 && i == *(v7 + 560))
        {
LABEL_13:
          this = MultiLanguageModel::getInternalFactoryCorrectiveLm(*(*(v7 + 40) + 8 * i), a2, a3, a4);
          if (*a4 != -1)
          {
            return this;
          }
        }
      }

      else if (v9 == 3)
      {
        goto LABEL_13;
      }
    }
  }

  return this;
}

uint64_t MultiLanguageModel::getFactoryCorrectiveLmName(MultiLanguageModel *this, int a2)
{
  v3 = a2 - 1;
  if ((a2 - 1) >= *(this + 22))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1660, "lm/multilm", 89, "%u", a2);
  }

  return *(this + 10) + 16 * v3;
}

uint64_t MultiLanguageModel::getActiveFactoryCorrectiveLms(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 616))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1671, "lm/multilm", 20, "%.500s", "getActiveFactoryCorrectiveLms");
  }

  v6 = *(a1 + 88);
  DgnPrimArray<unsigned char>::DgnPrimArray(v13, *(a1 + 88));
  v12 = 0;
  (*(*a1 + 704))(a1, v13, &v12);
  DgnPrimArray<unsigned char>::DgnPrimArray(v11, v6);
  if (v6)
  {
    bzero(v11[0], v6);
  }

  if (*(a2 + 8))
  {
    v7 = 0;
    do
    {
      v8 = *(*a2 + 4 * v7) - 1;
      if (v8 >= v6)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1693, "lm/multilm", 89, "%u", *(*a2 + 4 * v7));
      }

      v9 = v11[0];
      if (*(v11[0] + v8) == 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1696, "lm/multilm", 90, "%u", *(*a2 + 4 * v7));
        v9 = v11[0];
      }

      v9[v8] = 1;
      *(*a3 + v7++) = *(v13[0] + v8);
    }

    while (v7 < *(a2 + 8));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
}

void sub_262722844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getActiveFactoryCorrectiveLmsInternal(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (*(result + 116))
  {
    v5 = result;
    for (i = 0; i < *(v5 + 116); ++i)
    {
      v7 = *a3;
      if (v7 >= *(a2 + 8))
      {
        return result;
      }

      v8 = *(*(v5 + 136) + 4 * i);
      if (v8 == 2)
      {
        *(*a2 + v7) = *(*(v5 + 544) + i);
        *a3 = v7 + 1;
      }

      else
      {
        if (*(v5 + 112) == 1)
        {
          if (v8 != 3 || i != *(v5 + 560))
          {
            continue;
          }

LABEL_13:
          v10 = *(*(v5 + 40) + 8 * i);
          if (v10)
          {
          }

          result = (*(*v10 + 704))(v10, a2, a3);
          continue;
        }

        if (v8 == 3)
        {
          goto LABEL_13;
        }
      }
    }
  }

  return result;
}

uint64_t MultiLanguageModel::setActiveFactoryCorrectiveLms(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 616))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1736, "lm/multilm", 20, "%.500s", "setActiveFactoryCorrectiveLms");
  }

  v6 = *(a1 + 88);
  v13 = 0;
  v14 = 0;
  v12 = a1;
  if (v6)
  {
    __b = 0;
    v7 = realloc_array(0, &__b, 4 * v6, 0, 0, 1);
    v8 = __b;
    v13 = __b;
    LODWORD(v14) = v6;
    HIDWORD(v14) = v7 >> 2;
    memset(__b, 255, 4 * v6);
  }

  else
  {
    v8 = 0;
    LODWORD(v14) = 0;
  }

  if (*(a2 + 8))
  {
    v9 = 0;
    do
    {
      v10 = *(*a2 + 4 * v9) - 1;
      if (v10 >= v6)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1752, "lm/multilm", 89, "%u", *(*a2 + 4 * v9));
        v8 = v13;
      }

      if (v8[v10] != -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1755, "lm/multilm", 90, "%u", *(*a2 + 4 * v9));
        v8 = v13;
      }

      v8[v10] = *(*a3 + v9++);
    }

    while (v9 < *(a2 + 8));
  }

  LODWORD(__b) = 0;
  MultiLanguageModel::setActiveFactoryCorrectiveLmsInternal(v12, &v13, &__b);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
}

void sub_262722B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::setActiveFactoryCorrectiveLmsInternal(uint64_t result, void *a2, _DWORD *a3)
{
  if (*(result + 116))
  {
    v5 = result;
    for (i = 0; i < *(v5 + 116); ++i)
    {
      v7 = *(*(v5 + 136) + 4 * i);
      if (v7 == 2)
      {
        v8 = *a3;
        v9 = *(*a2 + 4 * v8);
        if (v9 != -1)
        {
          *(*(v5 + 544) + i) = v9 != 0;
        }

        *a3 = v8 + 1;
      }

      else if (*(v5 + 112) == 1)
      {
        if (v7 == 3 && i == *(v5 + 560))
        {
LABEL_14:
          v11 = *(*(v5 + 40) + 8 * i);
          if (v11)
          {
          }

          result = MultiLanguageModel::setActiveFactoryCorrectiveLmsInternal(v11, a2, a3);
        }
      }

      else if (v7 == 3)
      {
        goto LABEL_14;
      }
    }
  }

  return result;
}

WordLanguageModel *MultiLanguageModel::addWord(MultiLanguageModel *this, uint64_t a2, uint64_t a3)
{
  if (*(this + 112) == 1)
  {
    v6 = *(*(*(this + 2) + 256) + 4 * a2);
    if (v6 != a2)
    {
      v7 = *(this + 29);
      if (v7)
      {
        v8 = 0;
        while (*(*(this + 71) + 4 * v8) > v6 || *(*(this + 73) + 4 * v8) < v6)
        {
          if (v7 == ++v8)
          {
            goto LABEL_11;
          }
        }

        if (*(this + 140) != v8)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1803, "lm/multilm", 116, "%u", *(*(*(this + 2) + 256) + 4 * a2));
        }
      }
    }

LABEL_11:
    if (a3 != 0xFFFFFF)
    {
      v9 = *(this + 29);
      if (v9)
      {
        v10 = 0;
        while (*(*(this + 71) + 4 * v10) > a3 || *(*(this + 73) + 4 * v10) < a3)
        {
          if (v9 == ++v10)
          {
            goto LABEL_20;
          }
        }

        if (*(this + 140) != v10)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1808, "lm/multilm", 38, "%u", a3);
        }
      }
    }
  }

LABEL_20:
  if (*(this + 29))
  {
    v11 = 0;
    do
    {
      v12 = *(*(this + 5) + 8 * v11);
      if (v12)
      {
        if (*(this + 112) == 1 && v11 != *(this + 140))
        {
          (*(*v12 + 368))(v12, a2);
        }

        else
        {
          (*(*v12 + 360))(v12, a2, a3);
        }
      }

      ++v11;
    }

    while (v11 < *(this + 29));
  }

  result = *(this + 77);
  if (result)
  {

    return WordLanguageModel::addWordDuringBuild(result, a2);
  }

  return result;
}

unsigned int *MultiLanguageModel::addUnmappedWord(unsigned int *this, uint64_t a2)
{
  v2 = this[29];
  if (v2)
  {
    v4 = this;
    for (i = 0; i < v2; ++i)
    {
      this = *(*(v4 + 5) + 8 * i);
      if (this)
      {
        this = (*(*this + 368))(this, a2);
        v2 = v4[29];
      }
    }
  }

  return this;
}

void MultiLanguageModel::deleteWord(MultiLanguageModel *this, uint64_t a2, BOOL *a3, BOOL *a4)
{
  if (*(this + 112) == 1)
  {
    v8 = *(this + 29);
    if (v8)
    {
      v9 = 0;
      while (*(*(this + 71) + 4 * v9) > a2 || *(*(this + 73) + 4 * v9) < a2)
      {
        if (v8 == ++v9)
        {
          goto LABEL_10;
        }
      }

      if (*(this + 140) != v9)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1856, "lm/multilm", 39, "%u", a2);
      }
    }

LABEL_10:
    v10 = *(*(*(this + 2) + 256) + 4 * a2);
    if (v10 != a2)
    {
      v11 = *(this + 29);
      if (v11)
      {
        v12 = 0;
        while (*(*(this + 71) + 4 * v12) > v10 || *(*(this + 73) + 4 * v12) < v10)
        {
          if (v11 == ++v12)
          {
            goto LABEL_19;
          }
        }

        if (*(this + 140) != v12)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1861, "lm/multilm", 40, "%u", *(*(*(this + 2) + 256) + 4 * a2));
        }
      }
    }
  }

LABEL_19:
  v13 = *(this + 29);
  if (v13)
  {
    for (i = 0; i < v13; ++i)
    {
      v15 = *(*(this + 5) + 8 * i);
      if (v15 && (*(this + 112) != 1 || i == *(this + 140)))
      {
        (*(*v15 + 376))(v15, a2, a3, a4);
        v13 = *(this + 29);
      }
    }
  }
}

unsigned int *MultiLanguageModel::recomputeRecentBufferHeadClonesAndCommonWords(unsigned int *this)
{
  v1 = this[29];
  if (v1)
  {
    v2 = this;
    for (i = 0; i < v1; ++i)
    {
      this = *(*(v2 + 5) + 8 * i);
      if (this && (*(v2 + 112) != 1 || i == v2[140]))
      {
        this = (*(*this + 384))(this);
        v1 = v2[29];
      }
    }
  }

  return this;
}

unsigned int *MultiLanguageModel::recomputeRecentBufferRemainders(unsigned int *this)
{
  v1 = this[29];
  if (v1)
  {
    v2 = this;
    for (i = 0; i < v1; ++i)
    {
      this = *(*(v2 + 5) + 8 * i);
      if (this && (*(v2 + 112) != 1 || i == v2[140]))
      {
        this = (*(*this + 392))(this);
        v1 = v2[29];
      }
    }
  }

  return this;
}

unsigned int *MultiLanguageModel::notifyEmptiedWordList(unsigned int *this)
{
  v1 = this[29];
  if (v1)
  {
    v2 = this;
    for (i = 0; i < v1; ++i)
    {
      this = *(*(v2 + 5) + 8 * i);
      if (this)
      {
        this = (*(*this + 400))(this);
        v1 = v2[29];
      }
    }
  }

  return this;
}

void MultiLanguageModel::loadUnsTable(uint64_t a1, uint64_t a2, const char *a3, int a4, unsigned int a5, unsigned int a6, DgnTextFileParser *this, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13)
{
  if (*(this + 10))
  {
    v16 = *(this + 4);
  }

  else
  {
    v16 = &unk_26288BEF0;
  }

  v17 = *(a1 + 116);
  v18 = *(a2 + 12);
  v19 = v17;
  if (v17 > v18)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v17 - v18, 0);
    v19 = *(a1 + 116);
  }

  *(a2 + 8) = v17;
  if (v19)
  {
    v20 = 0;
    do
    {
      if ((DgnTextFileParser::parseNextLine(this) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1953, "lm/multilm", 65, "%.500s", v16);
      }

      LineFieldString = DgnTextFileParser::getLineFieldString(this, a8);
      if (strcmp(LineFieldString, a3))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1959, "lm/multilm", 68, "%.500s %u %.500s %.500s", v16, *(this + 25), a3, LineFieldString);
      }

      v22 = DgnTextFileParser::getLineFieldString(this, a9);
      if (*v22)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1965, "lm/multilm", 69, "%.500s %u %.500s", v16, *(this + 25), v22);
      }

      v23 = DgnTextFileParser::getLineFieldString(this, a10);
      DgnString::DgnString(&v38);
      v37[0] = 1;
      v37[1] = v20;
      SubDirExtension::appendToString(v37, &v38);
      if (v39)
      {
        v24 = v38;
      }

      else
      {
        v24 = &unk_26288BEF0;
      }

      if (strcmp(v24, v23))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1973, "lm/multilm", 70, "%.500s %u %.500s %.500s", v16, *(this + 25), v24, v23);
      }

      LineFieldInteger = DgnTextFileParser::getLineFieldInteger(this, a11);
      if ((LineFieldInteger & 0x80000000) != 0)
      {
        CurrentLine = DgnTextFile::getCurrentLine(this);
        if (*(CurrentLine + 8))
        {
          v27 = *CurrentLine;
        }

        else
        {
          v27 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1979, "lm/multilm", 7, "%.500s %.500s", v16, v27);
      }

      if (LineFieldInteger != a4 && (LineFieldInteger < a5 || LineFieldInteger > a6))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1984, "lm/multilm", 71, "%.500s %.500s %u %u", v16, a3, v20, LineFieldInteger);
      }

      *(*a2 + 4 * v20) = LineFieldInteger;
      if (DgnTextFileParser::getLineFieldReal(this, a12) != 0.0)
      {
        v28 = DgnTextFile::getCurrentLine(this);
        if (*(v28 + 8))
        {
          v29 = *v28;
        }

        else
        {
          v29 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1991, "lm/multilm", 7, "%.500s %.500s", v16, v29);
      }

      if (*DgnTextFileParser::getLineFieldString(this, a13))
      {
        v30 = DgnTextFile::getCurrentLine(this);
        if (*(v30 + 8))
        {
          v31 = *v30;
        }

        else
        {
          v31 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 1996, "lm/multilm", 7, "%.500s %.500s", v16, v31);
      }

      DgnString::~DgnString(&v38);
      ++v20;
    }

    while (v20 < *(a1 + 116));
  }
}

void sub_262723624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

DgnString *SubDirExtension::appendToString(DgnString *this, DgnString *a2)
{
  v2 = *this - 1;
  if (v2 <= 3)
  {
    v4 = this;
    this = DgnString::operator+=(a2, off_279B3E908[v2]);
    if (*(v4 + 1) != -1)
    {
      return DgnString::printfAppend(a2, "%d", *(v4 + 1));
    }
  }

  return this;
}

void MultiLanguageModel::loadIntTable(uint64_t a1, uint64_t a2, const char *a3, int a4, int a5, int a6, DgnTextFileParser *this, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13)
{
  v15 = a2;
  if (*(this + 10))
  {
    v16 = *(this + 4);
  }

  else
  {
    v16 = &unk_26288BEF0;
  }

  v17 = *(a1 + 116);
  v18 = *(a2 + 12);
  v19 = v17;
  if (v17 > v18)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v17 - v18, 0);
    v19 = *(a1 + 116);
  }

  *(v15 + 8) = v17;
  if (v19)
  {
    v20 = 0;
    do
    {
      if ((DgnTextFileParser::parseNextLine(this) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2023, "lm/multilm", 65, "%.500s", v16);
      }

      LineFieldString = DgnTextFileParser::getLineFieldString(this, a8);
      if (strcmp(LineFieldString, a3))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2029, "lm/multilm", 68, "%.500s %u %.500s %.500s", v16, *(this + 25), a3, LineFieldString);
      }

      v22 = DgnTextFileParser::getLineFieldString(this, a9);
      if (*v22)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2035, "lm/multilm", 69, "%.500s %u %.500s", v16, *(this + 25), v22);
      }

      v23 = v15;
      v24 = DgnTextFileParser::getLineFieldString(this, a10);
      DgnString::DgnString(&v38);
      v37[0] = 1;
      v37[1] = v20;
      SubDirExtension::appendToString(v37, &v38);
      if (v39)
      {
        v25 = v38;
      }

      else
      {
        v25 = &unk_26288BEF0;
      }

      if (strcmp(v25, v24))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2043, "lm/multilm", 70, "%.500s %u %.500s %.500s", v16, *(this + 25), v25, v24);
      }

      LineFieldInteger = DgnTextFileParser::getLineFieldInteger(this, a11);
      v27 = LineFieldInteger;
      if (LineFieldInteger != a4 && (LineFieldInteger < a5 || LineFieldInteger > a6))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2050, "lm/multilm", 72, "%.500s %.500s %u %d", v16, a3, v20, LineFieldInteger);
      }

      v15 = v23;
      *(*v23 + 4 * v20) = v27;
      if (DgnTextFileParser::getLineFieldReal(this, a12) != 0.0)
      {
        CurrentLine = DgnTextFile::getCurrentLine(this);
        if (*(CurrentLine + 8))
        {
          v29 = *CurrentLine;
        }

        else
        {
          v29 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2057, "lm/multilm", 7, "%.500s %.500s", v16, v29);
      }

      if (*DgnTextFileParser::getLineFieldString(this, a13))
      {
        v30 = DgnTextFile::getCurrentLine(this);
        if (*(v30 + 8))
        {
          v31 = *v30;
        }

        else
        {
          v31 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2062, "lm/multilm", 7, "%.500s %.500s", v16, v31);
      }

      DgnString::~DgnString(&v38);
      ++v20;
    }

    while (v20 < *(a1 + 116));
  }
}

void sub_2627239F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::loadRealTable(uint64_t a1, uint64_t a2, DgnString *a3, const char *a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, double a9, double a10, double a11, unsigned int a12, unsigned int a13, unsigned int a14)
{
  if (*(a5 + 40))
  {
    v20 = *(a5 + 32);
  }

  else
  {
    v20 = &unk_26288BEF0;
  }

  DgnString::DgnString(&v46);
  v21 = *(a1 + 116);
  v22 = *(a2 + 12);
  v23 = v21;
  if (v21 > v22)
  {
    DgnPrimArray<unsigned long long>::reallocElts(a2, v21 - v22, 0);
    v23 = *(a1 + 116);
  }

  *(a2 + 8) = v21;
  if (v23)
  {
    v24 = 0;
    do
    {
      if ((DgnTextFileParser::parseNextLine(a5) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2091, "lm/multilm", 65, "%.500s", v20);
      }

      LineFieldString = DgnTextFileParser::getLineFieldString(a5, a6);
      if (strcmp(LineFieldString, a4))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2097, "lm/multilm", 68, "%.500s %u %.500s %.500s", v20, *(a5 + 100), a4, LineFieldString);
      }

      v26 = DgnTextFileParser::getLineFieldString(a5, a7);
      v27 = v26;
      if (!a3 || v24)
      {
        if (v47)
        {
          v28 = v46;
        }

        else
        {
          v28 = &unk_26288BEF0;
        }

        if (strcmp(v28, v27))
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2121, "lm/multilm", 69, "%.500s %u %.500s", v20, *(a5 + 100), v27);
        }
      }

      else
      {
        if ((isValidName(v26) & 1) == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2106, "lm/multilm", 69, "%.500s %u %.500s", v20, *(a5 + 100), v27);
        }

        DgnString::operator=(a3, v27);
        DgnString::operator=(&v46, v27);
      }

      v29 = DgnTextFileParser::getLineFieldString(a5, a8);
      DgnString::DgnString(&v44);
      v43[0] = 1;
      v43[1] = v24;
      SubDirExtension::appendToString(v43, &v44);
      if (v45)
      {
        v30 = v44;
      }

      else
      {
        v30 = &unk_26288BEF0;
      }

      if (strcmp(v30, v29))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2130, "lm/multilm", 70, "%.500s %u %.500s %.500s", v20, *(a5 + 100), v30, v29);
      }

      if (DgnTextFileParser::getLineFieldInteger(a5, a12))
      {
        CurrentLine = DgnTextFile::getCurrentLine(a5);
        if (*(CurrentLine + 8))
        {
          v32 = *CurrentLine;
        }

        else
        {
          v32 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2135, "lm/multilm", 7, "%.500s %.500s", v20, v32);
      }

      LineFieldReal = DgnTextFileParser::getLineFieldReal(a5, a13);
      v34 = LineFieldReal;
      if (LineFieldReal != a9 && (LineFieldReal < a10 || LineFieldReal > a11))
      {
        if (v47)
        {
          v35 = v46;
        }

        else
        {
          v35 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2143, "lm/multilm", 73, "%.500s %.500s %.500s %u %f", v20, a4, v35, v24, LineFieldReal);
      }

      *(*a2 + 8 * v24) = v34;
      if (*DgnTextFileParser::getLineFieldString(a5, a14))
      {
        v36 = DgnTextFile::getCurrentLine(a5);
        if (*(v36 + 8))
        {
          v37 = *v36;
        }

        else
        {
          v37 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2150, "lm/multilm", 7, "%.500s %.500s", v20, v37);
      }

      DgnString::~DgnString(&v44);
      ++v24;
    }

    while (v24 < *(a1 + 116));
  }

  DgnString::~DgnString(&v46);
}

void sub_262723DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::loadStringTable(uint64_t a1, uint64_t a2, const char *a3, DgnTextFileParser *this, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  v13 = &unk_26288BEF0;
  if (*(this + 10))
  {
    v13 = *(this + 4);
  }

  v14 = *(a1 + 116);
  v15 = *(a2 + 12);
  if (v14 > v15)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v14 - v15, 0);
  }

  v16 = *(a2 + 8);
  v17 = v16;
  if (v14 >= v16)
  {
    if (v14 > v16)
    {
      v19 = v14 - v16;
      v20 = 16 * v16;
      do
      {
        DgnString::DgnString((*a2 + v20));
        v20 += 16;
        --v19;
      }

      while (v19);
    }
  }

  else if (v16 > v14)
  {
    v18 = 16 * v16 - 16;
    do
    {
      --v17;
      DgnString::~DgnString(*a2 + v18);
      v18 -= 16;
    }

    while (v17 > v14);
  }

  *(a2 + 8) = v14;
  v21 = &unk_26288BEF0;
  if (*(a1 + 116))
  {
    v22 = 0;
    v23 = 0;
    do
    {
      if ((DgnTextFileParser::parseNextLine(this) & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2174, "lm/multilm", 65, "%.500s", v13);
      }

      LineFieldString = DgnTextFileParser::getLineFieldString(this, a5);
      if (strcmp(LineFieldString, a3))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2180, "lm/multilm", 68, "%.500s %u %.500s %.500s", v13, *(this + 25), a3, LineFieldString);
      }

      v25 = DgnTextFileParser::getLineFieldString(this, a6);
      if (*v25)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2186, "lm/multilm", 69, "%.500s %u %.500s", v13, *(this + 25), v25);
      }

      v26 = DgnTextFileParser::getLineFieldString(this, a7);
      DgnString::DgnString(&v38);
      v37[0] = 1;
      v37[1] = v23;
      SubDirExtension::appendToString(v37, &v38);
      if (v39)
      {
        v21 = v38;
      }

      if (strcmp(v21, v26))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2194, "lm/multilm", 70, "%.500s %u %.500s %.500s", v13, *(this + 25), v21, v26);
      }

      v21 = &unk_26288BEF0;
      if (DgnTextFileParser::getLineFieldInteger(this, a8))
      {
        CurrentLine = DgnTextFile::getCurrentLine(this);
        if (*(CurrentLine + 8))
        {
          v28 = *CurrentLine;
        }

        else
        {
          v28 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2199, "lm/multilm", 7, "%.500s %.500s", v13, v28);
      }

      if (DgnTextFileParser::getLineFieldReal(this, a9) != 0.0)
      {
        v29 = DgnTextFile::getCurrentLine(this);
        if (*(v29 + 8))
        {
          v30 = *v29;
        }

        else
        {
          v30 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2204, "lm/multilm", 7, "%.500s %.500s", v13, v30);
      }

      v31 = DgnTextFileParser::getLineFieldString(this, a10);
      DgnString::operator=((*a2 + v22), v31);
      DgnString::~DgnString(&v38);
      ++v23;
      v22 += 16;
    }

    while (v23 < *(a1 + 116));
  }
}

void sub_26272416C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::loadLM(MultiLanguageModel *this, char **a2, DFile *a3, DFileChecksums *a4, DgnSharedMemStream *a5, unsigned int a6, _BOOL8 a7, BOOL a8, unsigned int a9, unsigned int a10, __int16 a11, BOOL *a13, BOOL *a14, double *a15)
{
  v14 = a7;
  if (a7 && ((DFile::subFileExists(a2, 0x4Au) & 1) != 0 || DFile::subFileExists(a2, 0x49u)))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2236, "lm/multilm", 118, "%s", &errStr_lm_multilm_E_RECENT_BUFFER_WITH_FIXED_SCORING);
  }

  v41 = 0;
  if (DFile::subFileExists(a2, 0x28u))
  {
    if (a6)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2242, "lm/multilm", 98, "%s", &errStr_lm_multilm_E_LOADING_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    MultiLanguageModel::loadMultiBinary(this, a2, a4, &v41);
    v43 = v41;

    MultiLanguageModel::loadComponentLMSubFiles(this, 1, a2, a3, a4, a5, a6, v14, v19, a8, a9, a10, a11, a13, a14, v43);
  }

  else if (DFile::subFileExists(a2, 0x29u))
  {
    if (*(this + 24) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2262, "lm/multilm", 119, "%.500s", "found mls text file");
    }

    v40[0] = 0;
    v40[1] = 0;
    MultiLanguageModel::loadMultiText(this, a2, v14, v40, &v41);
    MultiLanguageModel::loadComponentLMSubFiles(this, 0, a2, a3, a4, a5, a6, v14, v20, a8, a9, a10, a11, a13, a14, v41);
    if ((*(this + 113) & 1) != 0 || *(this + 114) == 1)
    {
      (*(*this + 496))(this, v40);
      if (*(this + 114) == 1 && !v14)
      {
        v21 = *(this + 44);
        v22 = *(this + 53);
        if (v21 > v22)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(this + 200, v21 - v22, 0);
        }

        v23 = *(this + 52);
        if (v23 <= v21)
        {
          if (v23 < v21)
          {
            v26 = v21 - v23;
            v27 = 16 * v23;
            do
            {
              v28 = (*(this + 25) + v27);
              *v28 = 0;
              v28[1] = 0;
              v27 += 16;
              --v26;
            }

            while (v26);
          }
        }

        else if (v23 > v21)
        {
          v24 = v23;
          v25 = 16 * v23 - 16;
          do
          {
            --v24;
            DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 25) + v25);
            v25 -= 16;
          }

          while (v24 > v21);
        }

        *(this + 52) = v21;
        v29 = *(this + 44);
        v30 = *(this + 57);
        if (v29 > v30)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(this + 216, v29 - v30, 0);
        }

        v31 = *(this + 56);
        if (v31 <= v29)
        {
          if (v31 < v29)
          {
            v34 = v29 - v31;
            v35 = 16 * v31;
            do
            {
              v36 = (*(this + 27) + v35);
              *v36 = 0;
              v36[1] = 0;
              v35 += 16;
              --v34;
            }

            while (v34);
          }
        }

        else if (v31 > v29)
        {
          v32 = v31;
          v33 = 16 * v31 - 16;
          do
          {
            --v32;
            DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 27) + v33);
            v33 -= 16;
          }

          while (v32 > v29);
        }

        *(this + 56) = v29;
        MultiLanguageModel::adjustNamedWeightsSets(this);
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(v40);
  }
}

void sub_262724560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::loadMultiBinary(MultiLanguageModel *this, char **a2, DFileChecksums *a3, BOOL *a4)
{
  v23 = 0;
  v8 = OpenAndReadMrecHeader(a2, 0x28u, 1, "LMMULBIN", &v23 + 1, &v23);
  DgnString::DgnString(v22);
  if (*(v8 + 24))
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = &unk_26288BEF0;
  }

  DgnString::operator=(v22, v9);
  DgnString::operator+=(v22, " subfile of ");
  if (*(a2 + 6))
  {
    v10 = a2[2];
  }

  else
  {
    v10 = &unk_26288BEF0;
  }

  DgnString::operator+=(v22, v10);
  *a4 = 0;
  v11 = v23;
  if (v23 == 0x1300000005)
  {
    *a4 = 1;
    v12 = 19;
  }

  else
  {
    if (*(a2 + 6))
    {
      v13 = a2[2];
    }

    else
    {
      v13 = &unk_26288BEF0;
    }

    MrecHeaderCheckVersions(v13, "LMMULBIN", HIDWORD(v23), v23, 0x18u, 6u);
    v11 = v23;
    v12 = HIDWORD(v23);
  }

  MrecHeaderCheckLatestVersionIfShared(a2, "LMMULBIN", v12, v11, 24, 6);
  *v21 = 0;
  readObject(v8, v21, &v21[1]);
  v14 = v21[0];
  v15 = *(this + 37);
  v16 = v21[0];
  if (v21[0] > v15)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 136, v21[0] - v15, 0);
    v16 = v21[0];
  }

  *(this + 36) = v14;
  if (v16)
  {
    v17 = 0;
    do
    {
      v20 = 0;
      readObject(v8, &v20, &v21[1]);
      v18 = v20 - 1;
      if ((v20 - 2) >= 4)
      {
        v18 = 0;
      }

      *(*(this + 17) + 4 * v17++) = v18;
    }

    while (v17 < v21[0]);
  }

  readObject(v8, this + 29, &v21[1]);
  readObject(v8, this + 112, &v21[1]);
  readObject(v8, this + 113, &v21[1]);
  readObject(v8, this + 114, &v21[1]);
  readObject(v8, (this + 120), &v21[1]);
  readObject(v8, this + 152, &v21[1]);
  readObject(v8, this + 39, &v21[1]);
  readObject(v8, this + 40, &v21[1]);
  readObject<DgnString>(v8, this + 168, &v21[1]);
  readObject<DgnPrimArray<double>>(v8, this + 184, &v21[1]);
  readObject<DgnPrimArray<double>>(v8, this + 200, &v21[1]);
  readObject<DgnPrimArray<short>>(v8, this + 216, &v21[1]);
  readObject<unsigned int>(v8, this + 232, &v21[1]);
  readObject(v8, this + 70, &v21[1]);
  readObject(v8, this + 71, &v21[1]);
  if (*a4)
  {
    readObject<WordDummySpec>(v8, this + 288, &v21[1]);
  }

  readObject<DgnString>(v8, this + 352, &v21[1]);
  if (!*a4 || (readObject<DgnString>(v8, this + 368, &v21[1]), !*a4))
  {
    readObject<DgnString>(v8, this + 320, &v21[1]);
  }

  readObject<double>(v8, this + 384, &v21[1]);
  readObject<double>(v8, this + 400, &v21[1]);
  readObject<double>(v8, this + 416, &v21[1]);
  readObject<double>(v8, this + 432, &v21[1]);
  readObject<double>(v8, this + 448, &v21[1]);
  readObject<short>(v8, this + 464, &v21[1]);
  readObject<short>(v8, this + 480, &v21[1]);
  readObject<double>(v8, this + 496, &v21[1]);
  readObject<DgnString>(v8, this + 512, &v21[1]);
  readObject<int>(v8, this + 528, &v21[1]);
  readObject<BOOL>(v8, this + 544, &v21[1]);
  readObject(v8, this + 140, &v21[1]);
  readObject<unsigned int>(v8, this + 568, &v21[1]);
  readObject<unsigned int>(v8, this + 584, &v21[1]);
  readObject<unsigned int>(v8, this + 600, &v21[1]);
  readObjectChecksumAndVerify(v8, v21[1]);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 40, v21[1]);
  DgnDelete<DgnStream>(v8);
  DgnString::~DgnString(v22);
}

void sub_2627249A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::loadComponentLMSubFiles(MultiLanguageModel *this, int a2, DFile *a3, DFile *a4, DFileChecksums *a5, DgnSharedMemStream *a6, unsigned int a7, unsigned int a8, __n128 a9, BOOL a10, unsigned int a11, unsigned int a12, __int16 a13, BOOL *a15, BOOL *a16, BOOL a17)
{
  if (*(this + 29))
  {
    v18 = a8;
    v21 = 0;
    v22 = 0;
    v23 = a17;
    v66 = a2 & a17;
    while (1)
    {
      v72[0] = 1;
      v72[1] = v21;
      DFile::pushCurrentSubDirComponent(a3, v72);
      if (a4)
      {
        DFile::pushCurrentSubDirComponent(a4, v72);
      }

      MultiLanguageModel::verifySubdirContents(this, a3, v21, a2, v23);
      if ((DFile::subFileExists(a3, 0x6Du) & 1) == 0 && (DFile::subFileExists(a3, 0x6Bu) & 1) == 0 && !DFile::subFileExists(a3, 0x6Au))
      {
        break;
      }

      if ((v22 & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3081, "lm/multilm", 34, "%s", &errStr_lm_multilm_E_FIRST_LM_WORDNGRAMBUILDSPEC);
      }

      if (v23)
      {
        v24 = MemChunkAlloc(0x20uLL, 0);
        WordDummySpec::WordDummySpec(v24);
        if (DFile::subFileExists(a3, 0x6Du))
        {
          WordNgramBuildSpec::loadWordDummySpecText(v24, a3);
        }
      }

      else
      {
        if ((DFile::subFileExists(a3, 0x6Bu) & 1) == 0 && !DFile::subFileExists(a3, 0x6Au))
        {
          break;
        }

        v24 = MemChunkAlloc(0x20uLL, 0);
        WordDummySpec::WordDummySpec(v24);
        WordNgramBuildSpec::loadWordNgramBuildSpec(v25, a3, a5, a2 ^ 1);
      }

LABEL_17:
      if ((*(this + 112) & 1) != 0 || (DFile::subFileExists(a3, 0x73u) & 1) != 0 || (DFile::subFileExists(a3, 0x6Fu) & 1) != 0 || (DFile::subFileExists(a3, 0x70u) & 1) != 0 || (DFile::subFileExists(a3, 0x29u) & 1) != 0 || DFile::subFileExists(a3, 0x28u))
      {
        v26 = *(this + 112);
        v27 = a10;
        v28 = a11;
        v29 = a12;
        if (v26 == 1)
        {
          v27 = a10;
          v28 = a11;
          v29 = a12;
          if (*(this + 144) >= 2u)
          {
            v27 = v21 != 0;
            v30 = *(this + 71);
            if (v21)
            {
              v31 = (v30 + 4 * v21);
              v32 = (*(this + 73) + 4 * v21);
            }

            else
            {
              v31 = (v30 + 4);
              v32 = (*(this + 73) + 4 * (*(this + 148) - 1));
            }

            v28 = *v31;
            v29 = *v32;
          }
        }

        v33 = *(*(this + 17) + 4 * v21);
        if (v33 > 3 || v33 == 1)
        {
          v35 = 0;
          v34 = 0;
          v71 = -1.0;
        }

        else
        {
          v71 = -1.0;
          v34 = *(this + 24);
          v35 = a6;
        }

        v36 = v18;
        if (v26)
        {
          v36 = v18;
          if ((v18 & 1) == 0)
          {
            v36 = v21 != *(this + 140);
          }
        }

        v37 = LanguageModel::CreateAndLoadLanguageModel(a3, a4, a5, v35, (v34 & 1), a7, v26, v36, *(this + 8), v63, *(this + 2), v27, v28, v29, a13, a15, a16, &v71);
        v38 = v37;
        if (v21)
        {
          if (a2)
          {
            goto LABEL_38;
          }

LABEL_42:
          if ((*(*v38 + 608))(v38))
          {
            v69[0].n128_u64[0] = 0;
            v70 = 0;
            (*(*v38 + 616))(v38, v69, &v70 + 4, &v70);
            if (*(this + 152))
            {
              if (!DgnArray<DgnString>::operator==(this + 168, v69[0].n128_u64[0]) || __PAIR64__(*(this + 39), *(this + 40)) != v70)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3188, "lm/multilm", 51, "%s", &errStr_lm_multilm_E_NAMED_WEIGHTS_MISMATCH);
              }
            }

            else
            {
              *(this + 152) = 1;
              DgnArray<DgnString>::copyArraySlice(this + 168, v69[0].n128_u64[0], 0, *(v69[0].n128_u64[0] + 8));
              v40 = v70;
              *(this + 39) = HIDWORD(v70);
              *(this + 40) = v40;
              if (*(this + 44))
              {
                v41 = 0;
                do
                {
                  IdMgr<unsigned int>::getNextId(this + 58);
                  ++v41;
                }

                while (v41 < *(this + 44));
              }
            }
          }

          {
            v44 = *(*(this + 17) + 4 * v21);
            if (v44 >= 3)
            {
              v43.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3204, "lm/multilm", 21, "%u", v21);
              v44 = *(*(this + 17) + 4 * v21);
            }

            if (v44 == 1)
            {
              if (a17)
              {
                (*(*v42 + 704))(v42, v43);
                WordDummySpec::WordDummySpec(v69);
                WordLanguageModel::fillInWordDummySpec(v42, v69);
                v24 = MemChunkAlloc(0x20uLL, 0);
                WordNgramBuildSpec::WordNgramBuildSpec(v24, v69);
                *v45 = v71;
              }

              else
              {
                WordLanguageModel::verifyConsistentWithWordNgramBuildSpec(v42, v24);
              }

              v23 = a17;
              v18 = a8;
            }

            else
            {
              v18 = a8;
              v23 = a17;
            }

            goto LABEL_71;
          }

          {
            if (*(*(this + 17) + 4 * v21) != 3)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3232, "lm/multilm", 21, "%u", v21);
            }

            if (*(this + 112) == 1)
            {
              v23 = a17;
              if (v21 != *(this + 140))
              {
                v18 = a8;
                if (v46[114] == 1)
                {
                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3242, "lm/multilm", 97, "%s", &errStr_lm_multilm_E_NO_INTERPOLATED_IN_NON_DEFAULT_DISPATCH);
                }

                goto LABEL_71;
              }

LABEL_70:
              v18 = a8;
LABEL_71:
              v22 = 1;
              goto LABEL_72;
            }
          }

          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3248, "lm/multilm", 21, "%u", v21);
          }

          v23 = a17;
          goto LABEL_70;
        }

        v39 = *(v37 + 8);
        *(this + 8) = v39;
        CombineTable::initCombineTable(this + 704, v39);
        if ((a2 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_38:
        if (v24 && v23)
        {
          *v24 = *&v71;
        }

        goto LABEL_71;
      }

      v38 = 0;
LABEL_72:
      if (v66 && *(*(this + 17) + 4 * v21) == 1)
      {
        v24 = MemChunkAlloc(0x20uLL, 0);
        WordNgramBuildSpec::WordNgramBuildSpec(v24, (*(this + 36) + 32 * v21));
      }

      v47 = *(this + 12);
      if (v47 == *(this + 13))
      {
        DgnPrimArray<unsigned long long>::reallocElts(this + 40, 1, 1);
        v47 = *(this + 12);
      }

      *(*(this + 5) + 8 * v47) = v38;
      *(this + 12) = v47 + 1;
      if ((*(this + 112) & 1) == 0)
      {
        v48 = *(this + 78);
        if (v48 == *(this + 79))
        {
          DgnPrimArray<unsigned long long>::reallocElts(this + 304, 1, 1);
          v48 = *(this + 78);
        }

        *(*(this + 38) + 8 * v48) = v24;
        *(this + 78) = v48 + 1;
      }

      DFile::popCurrentSubDirComponent(a3);
      if (a4)
      {
        DFile::popCurrentSubDirComponent(a4);
      }

      if (++v21 >= *(this + 29))
      {
        goto LABEL_87;
      }
    }

    v24 = 0;
    goto LABEL_17;
  }

  v22 = 0;
LABEL_87:
  v49 = *(this + 36);
  if (v49)
  {
    MemChunkFree(v49, 0);
    *(this + 36) = 0;
  }

  v50 = a2;
  *(this + 37) = 0;
  if ((v22 & 1) == 0)
  {
    a9.n128_f64[0] = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3286, "lm/multilm", 31, "%s", &errStr_lm_multilm_E_NO_SUB_LANGUAGE_MODELS);
  }

  if ((*(this + 112) & 1) == 0 && *(this + 29))
  {
    v51 = 0;
    do
    {
      if ((v50 & 1) == 0)
      {
        if (*(this + 113) == 1)
        {
          v52 = *(this + 126);
          if (v52 == *(this + 127))
          {
            DgnPrimArray<unsigned long long>::reallocElts(this + 496, 1, 1);
            v52 = *(this + 126);
          }

          *(*(this + 62) + 8 * v52) = 0;
          v53 = this + 504;
        }

        else
        {
          v54 = *(this + 98);
          if (v54 == *(this + 99))
          {
            DgnPrimArray<unsigned long long>::reallocElts(this + 384, 1, 1);
            v54 = *(this + 98);
          }

          *(*(this + 48) + 8 * v54) = 0;
          *(this + 98) = v54 + 1;
          v55 = *(this + 118);
          if (v55 == *(this + 119))
          {
            DgnPrimArray<short>::reallocElts(this + 464, 1, 1);
            v55 = *(this + 118);
          }

          *(*(this + 58) + 2 * v55) = 2000;
          *(this + 118) = v55 + 1;
          a9.n128_u64[0] = *(*(this + 54) + 8 * v51);
          if (a9.n128_f64[0] == -1.0)
          {
            LOWORD(v56) = 20000;
          }

          else if (a9.n128_f64[0] == 0.0)
          {
            LOWORD(v56) = 2000;
          }

          else
          {
            a9.n128_f64[0] = DgnLog(a9.n128_f64[0]);
            LODWORD(v57) = *(this + 8);
            a9.n128_f64[0] = 0.5 - a9.n128_f64[0] * v57;
            v56 = a9.n128_f64[0];
          }

          v52 = *(this + 122);
          if (v52 == *(this + 123))
          {
            DgnPrimArray<short>::reallocElts(this + 480, 1, 1);
            v52 = *(this + 122);
          }

          *(*(this + 60) + 2 * v52) = v56;
          v53 = this + 488;
        }

        *v53 = v52 + 1;
      }

      ++v51;
    }

    while (v51 < *(this + 29));
  }

  if (!*(this + 7))
  {
    if (*(this + 152) == 1)
    {
      (*(*this + 624))(this, a9);
    }

    MultiLanguageModel::getFactoryCorrectiveLmNames(this, this + 20);
    MultiLanguageModel::getTopicLmSlotNames(this, this + 24);
    if (*(this + 26))
    {
      v58 = 0;
      v59 = 0;
      do
      {
        v60 = DgnArray<DgnString>::find(this + 20, *(this + 12) + v58);
        if (v60 != -1)
        {
          v61 = *(this + 12) + v58;
          if (*(v61 + 8))
          {
            v62 = *v61;
          }

          else
          {
            v62 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3337, "lm/multilm", 94, "%u %u %.500s", v60, v59, v62);
        }

        ++v59;
        v58 += 16;
      }

      while (v59 < *(this + 26));
    }
  }
}

void MultiLanguageModel::loadMultiText(uint64_t a1, FileSpec **a2, int a3, uint64_t a4, BOOL *a5)
{
  DgnTextFileParser::DgnTextFileParser(v173);
  v160 = a2;
  DgnTextFileParser::openDgnTextFileParser(v173, a2, 41, 1);
  DgnTextFileParser::verifyMatchingFileType(v173, "MultiLanguageModelSpec");
  v171 = 0;
  v172 = 0;
  DgnTextFile::legalDgnTextFileVersions(v173, sMLS_Versions, &v171);
  DgnTextFileParser::verifyFileVersionInRange(v173, &v171);
  DgnIArray<Utterance *>::~DgnIArray(&v171);
  FileVersion = DgnTextFile::getFileVersion(v173);
  v153 = a4;
  if (v174)
  {
    v9 = v173[4];
  }

  else
  {
    v9 = &unk_26288BEF0;
  }

  v161 = v9;
  DgnString::DgnString(&v171);
  DgnTextFile::getHeaderField(v173, "MultiLMType", &v171, 1);
  if (v172)
  {
    v10 = v171;
  }

  else
  {
    v10 = &unk_26288BEF0;
  }

  v11 = strcmp(v10, "Dispatch");
  *(a1 + 112) = v11 == 0;
  v12 = strcmp(v10, "LogLinear");
  *(a1 + 113) = v12 == 0;
  v13 = strcmp(v10, "InterpolatedLinear");
  *(a1 + 114) = v13 == 0;
  if (v11 && v12 && v13)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2416, "lm/multilm", 66, "%.500s %.500s", v161, v10);
  }

  DgnString::~DgnString(&v171);
  if (*(a1 + 112) == 1 && *(a1 + 28))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2420, "lm/multilm", 67, "%.500s", v161);
  }

  v14 = HIDWORD(FileVersion);
  *(a1 + 152) = (a3 ^ 1) & *(a1 + 114);
  v15 = "PrefiltererPerWordPenalty";
  if (FileVersion == 19)
  {
    v16 = v14 == 5;
    if (v16)
    {
      v15 = "TreeLMPerWordPenalty";
    }
  }

  else
  {
    v16 = FileVersion == 22 && v14 == 6;
  }

  *a5 = v16;
  DgnTextFile::getHeaderFieldUnsigned(v173, "NumberOfSubDirectories", (a1 + 116), 1, 1u, 0x3E8u);
  DgnTextFile::getHeaderFieldUnsigned(v173, "NumberOfFactoryWeightsNames", (a1 + 156), 1, 0, 0x3E8u);
  v170 = 0;
  DgnTextFile::getHeaderFieldUnsigned(v173, "NumberOfClientWeightsNames", &v170, 1, 0, 0x3E8u);
  v17 = v170 + *(a1 + 156);
  *(a1 + 160) = v17;
  if (a3 && v17)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2441, "lm/multilm", 76, "%.500s", v161);
  }

  HeaderField = DgnTextFile::getHeaderField(v173, "RecentBufferLMPath", (a1 + 120), 0);
  if (!DFile::subFileExists(v160, 0x4Au))
  {
    if (HeaderField == DFile::subFileExists(v160, 0x49u))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if ((HeaderField & 1) == 0)
  {
LABEL_28:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2451, "lm/multilm", 54, "%s", &errStr_lm_multilm_E_RECENT_BUFFER_MISMATCH);
  }

LABEL_29:
  DgnTextFileParser::verifyNoUnknownHeaderFields(v173);
  v171 = 0;
  v172 = 0;
  DgnTextFile::getLineFieldNames(v173, &v171);
  v156 = v15;
  v169[0] = 0;
  v169[1] = 0;
  DgnTextFile::getLineFieldFormats(v173, v169);
  DgnTextFileParser::verifyMatchingNumFieldSpecs(v173, 6);
  v19 = v171;
  if (*(v171 + 8))
  {
    v20 = *v171;
  }

  else
  {
    v20 = &unk_26288BEF0;
  }

  if (strcmp(v20, "TableName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2481, "lm/multilm", 5, "%.500s %.500s %.500s", v161, "TableName", v20);
    v19 = v171;
  }

  if (*v169[0])
  {
    if (*(v19 + 8))
    {
      v21 = *v19;
    }

    else
    {
      v21 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2484, "lm/multilm", 6, "%.500s %.500s %.500s", v161, v21, "String");
    v19 = v171;
  }

  if (*(v19 + 24))
  {
    v22 = *(v19 + 16);
  }

  else
  {
    v22 = &unk_26288BEF0;
  }

  if (strcmp(v22, "WeightsName"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2489, "lm/multilm", 5, "%.500s %.500s %.500s", v161, "WeightsName", v22);
    v19 = v171;
  }

  if (*(v169[0] + 4))
  {
    if (*(v19 + 24))
    {
      v23 = *(v19 + 16);
    }

    else
    {
      v23 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2492, "lm/multilm", 6, "%.500s %.500s %.500s", v161, v23, "String");
    v19 = v171;
  }

  if (*(v19 + 40))
  {
    v24 = *(v19 + 32);
  }

  else
  {
    v24 = &unk_26288BEF0;
  }

  if (strcmp(v24, "SubDirectory"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2497, "lm/multilm", 5, "%.500s %.500s %.500s", v161, "SubDirectory", v24);
    v19 = v171;
  }

  if (*(v169[0] + 8))
  {
    if (*(v19 + 40))
    {
      v25 = *(v19 + 32);
    }

    else
    {
      v25 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2500, "lm/multilm", 6, "%.500s %.500s %.500s", v161, v25, "String");
    v19 = v171;
  }

  if (*(v19 + 56))
  {
    v26 = *(v19 + 48);
  }

  else
  {
    v26 = &unk_26288BEF0;
  }

  if (strcmp(v26, "IntValue"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2505, "lm/multilm", 5, "%.500s %.500s %.500s", v161, "IntValue", v26);
    v19 = v171;
  }

  if (*(v169[0] + 12) != 1)
  {
    if (*(v19 + 56))
    {
      v27 = *(v19 + 48);
    }

    else
    {
      v27 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2508, "lm/multilm", 6, "%.500s %.500s %.500s", v161, v27, "Integer");
    v19 = v171;
  }

  if (*(v19 + 72))
  {
    v28 = *(v19 + 64);
  }

  else
  {
    v28 = &unk_26288BEF0;
  }

  if (strcmp(v28, "RealValue"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2513, "lm/multilm", 5, "%.500s %.500s %.500s", v161, "RealValue", v28);
    v19 = v171;
  }

  if (*(v169[0] + 16) != 2)
  {
    if (*(v19 + 72))
    {
      v29 = *(v19 + 64);
    }

    else
    {
      v29 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2516, "lm/multilm", 6, "%.500s %.500s %.500s", v161, v29, "Real");
    v19 = v171;
  }

  if (*(v19 + 88))
  {
    v30 = *(v19 + 80);
  }

  else
  {
    v30 = &unk_26288BEF0;
  }

  if (strcmp(v30, "StrValue"))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2521, "lm/multilm", 5, "%.500s %.500s %.500s", v161, "StrValue", v30);
  }

  if (*(v169[0] + 20))
  {
    if (*(v171 + 88))
    {
      v31 = *(v171 + 80);
    }

    else
    {
      v31 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2524, "lm/multilm", 6, "%.500s %.500s %.500s", v161, v31, "String");
  }

  v168[0] = 0;
  v168[1] = 0;
  MultiLanguageModel::loadStringTable(a1, v168, "SlotType", v173, 0, 1u, 2u, 3u, 4u, 5u);
  if (*(a1 + 113) == 1)
  {
    v32 = (a1 + 512);
    MultiLanguageModel::loadStringTable(a1, a1 + 512, "CorrectiveName", v173, 0, 1u, 2u, 3u, 4u, 5u);
    if (*(a1 + 116))
    {
      v33 = 0;
      v34 = 0;
      while (1)
      {
        v35 = *(v168[0] + v33 + 8) ? *(v168[0] + v33) : &unk_26288BEF0;
        v36 = strcmp(v35, "FactoryCorrectiveWord");
        v37 = *v32;
        if (!v36)
        {
          break;
        }

        if (*(v37 + v33 + 8) >= 2u)
        {
          goto LABEL_103;
        }

LABEL_107:
        ++v34;
        v33 += 16;
        if (v34 >= *(a1 + 116))
        {
          goto LABEL_108;
        }
      }

      v38 = v37 + v33;
      if (*(v38 + 8))
      {
        v39 = *v38;
      }

      else
      {
        v39 = &unk_26288BEF0;
      }

      if (isValidName(v39))
      {
        goto LABEL_107;
      }

      v37 = *v32;
LABEL_103:
      v40 = v37 + v33;
      if (*(v40 + 8))
      {
        v41 = *v40;
      }

      else
      {
        v41 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2558, "lm/multilm", 87, "%.500s %u %.500s", v161, v34, v41);
      goto LABEL_107;
    }
  }

LABEL_108:
  if ((*(a1 + 112) & 1) == 0)
  {
    MultiLanguageModel::loadStringTable(a1, a1 + 352, "TopicName", v173, 0, 1u, 2u, 3u, 4u, 5u);
    if (*(a1 + 116))
    {
      v42 = 0;
      v43 = 0;
      while (1)
      {
        v44 = *(v168[0] + v42 + 8) ? *(v168[0] + v42) : &unk_26288BEF0;
        v45 = strcmp(v44, "TopicWord");
        v46 = *(a1 + 352);
        if (!v45)
        {
          break;
        }

        if (*(v46 + v42 + 8) >= 2u)
        {
          goto LABEL_122;
        }

LABEL_126:
        ++v43;
        v42 += 16;
        if (v43 >= *(a1 + 116))
        {
          goto LABEL_127;
        }
      }

      v47 = v46 + v42;
      if (*(v47 + 8))
      {
        v48 = *v47;
      }

      else
      {
        v48 = &unk_26288BEF0;
      }

      if (isValidName(v48))
      {
        goto LABEL_126;
      }

      v46 = *(a1 + 352);
LABEL_122:
      v49 = v46 + v42;
      if (*(v49 + 8))
      {
        v50 = *v49;
      }

      else
      {
        v50 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2580, "lm/multilm", 91, "%.500s %u %.500s", v161, v43, v50);
      goto LABEL_126;
    }
  }

LABEL_127:
  if ((*(a1 + 112) & 1) == 0)
  {
    v51 = 320;
    if (*a5)
    {
      v51 = 368;
      v52 = "TemplateLMPath";
    }

    else
    {
      v52 = "TemplatePath";
    }

    MultiLanguageModel::loadStringTable(a1, a1 + v51, v52, v173, 0, 1u, 2u, 3u, 4u, 5u);
  }

  v166 = 0;
  v167 = 0;
  if (*(a1 + 114) == 1)
  {
    MultiLanguageModel::loadRealTable(a1, a1 + 400, 0, "WeightFloor", v173, 0, 1u, 2u, 0.0, 0.0, 1.0, 3u, 4u, 5u);
    MultiLanguageModel::loadRealTable(a1, a1 + 416, 0, "WeightCeiling", v173, 0, 1u, 2u, 0.0, 0.0, 1.0, 3u, 4u, 5u);
    MultiLanguageModel::loadRealTable(a1, a1 + 432, 0, "PrefiltererFixedWeight", v173, 0, 1u, 2u, -1.0, 0.0, 1.0, 3u, 4u, 5u);
    MultiLanguageModel::loadRealTable(a1, &v166, 0, "CurrentWeight", v173, 0, 1u, 2u, 0.0, 0.0, 1.0, 3u, 4u, 5u);
    if (*(a1 + 114) == 1)
    {
      MultiLanguageModel::loadRealTable(a1, a1 + 448, 0, "DefaultTopicWeight", v173, 0, 1u, 2u, 0.0, 0.0, 1.0, 3u, 4u, 5u);
    }
  }

  v53 = *(a1 + 160);
  v54 = *(a1 + 180);
  if (v53 > v54)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 168, v53 - v54, 0);
  }

  v55 = *(a1 + 176);
  v56 = v55;
  if (v53 >= v55)
  {
    if (v53 > v55)
    {
      v58 = v53 - v55;
      v59 = 16 * v55;
      do
      {
        DgnString::DgnString((*(a1 + 168) + v59));
        v59 += 16;
        --v58;
      }

      while (v58);
    }
  }

  else if (v55 > v53)
  {
    v57 = 16 * v55 - 16;
    do
    {
      --v56;
      DgnString::~DgnString(*(a1 + 168) + v57);
      v57 -= 16;
    }

    while (v56 > v53);
  }

  *(a1 + 176) = v53;
  v60 = *(a1 + 160);
  v61 = *(a1 + 196);
  if (v60 > v61)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 184, v60 - v61, 0);
  }

  v62 = *(a1 + 192);
  if (v62 <= v60)
  {
    if (v62 < v60)
    {
      v65 = v60 - v62;
      v66 = 16 * v62;
      do
      {
        v67 = (*(a1 + 184) + v66);
        *v67 = 0;
        v67[1] = 0;
        v66 += 16;
        --v65;
      }

      while (v65);
    }
  }

  else if (v62 > v60)
  {
    v63 = v62;
    v64 = 16 * v62 - 16;
    do
    {
      --v63;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*(a1 + 184) + v64);
      v64 -= 16;
    }

    while (v63 > v60);
  }

  *(a1 + 192) = v60;
  if (*(a1 + 176))
  {
    v68 = 0;
    do
    {
      IdMgr<unsigned int>::getNextId((a1 + 232));
      if (v68 >= *(a1 + 156))
      {
        v69 = "ClientWeight";
      }

      else
      {
        v69 = "FactoryWeight";
      }

      MultiLanguageModel::loadRealTable(a1, *(a1 + 184) + 16 * v68, (*(a1 + 168) + 16 * v68), v69, v173, 0, 1u, 2u, -1.0, 0.0, 1.0, 3u, 4u, 5u);
      if (v68)
      {
        v70 = 0;
        v71 = *(a1 + 168);
        v72 = v71 + 16 * v68;
        v73 = *(v72 + 8);
        v74 = *v72;
        if (v73)
        {
          v75 = v74;
        }

        else
        {
          v75 = &unk_26288BEF0;
        }

        v76 = (v71 + 8);
        while (1)
        {
          v77 = *v76 ? *(v76 - 1) : &unk_26288BEF0;
          if (!strcmp(v77, v75))
          {
            break;
          }

          ++v70;
          v76 += 4;
          if (v68 == v70)
          {
            goto LABEL_173;
          }
        }

        if (v70 != 0xFFFFFFFFLL)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2663, "lm/multilm", 75, "%.500s %u %u %.500s", v161, v68, v70, v75);
        }
      }

LABEL_173:
      ++v68;
    }

    while (v68 < *(a1 + 176));
  }

  if (*(a1 + 113))
  {
    MultiLanguageModel::loadRealTable(a1, &v166, 0, "LogLinearWeight", v173, 0, 1u, 2u, 0.0, -100.0, 100.0, 3u, 4u, 5u);
    MultiLanguageModel::loadIntTable(a1, a1 + 528, "LogLinearOffset", 0, -20 * *(a1 + 32), 20 * *(a1 + 32), v173, 0, 1u, 2u, 3u, 4u, 5u);
    v164 = 0;
    v165 = 0;
    MultiLanguageModel::loadUnsTable(a1, &v164, "IsActive", 0, 0, 1u, v173, 0, 1u, 2u, 3u, 4u, 5u);
    v78 = *(a1 + 116);
    LODWORD(v79) = v78;
    if (*(a1 + 556) < v78)
    {
      v162 = 0;
      *(a1 + 556) = realloc_array(*(a1 + 544), &v162, v78, *(a1 + 552), *(a1 + 552), 1);
      *(a1 + 544) = v162;
      LODWORD(v79) = *(a1 + 116);
    }

    *(a1 + 552) = v78;
    if (v79)
    {
      v80 = v164;
      v81 = *(a1 + 544);
      v79 = v79;
      do
      {
        v82 = *v80++;
        *v81++ = v82 != 0;
        --v79;
      }

      while (v79);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v164);
  }

  if (*(a1 + 112) == 1)
  {
    v164 = 0;
    v165 = 0;
    v162 = 0;
    v163 = 0;
    MultiLanguageModel::loadIntTable(a1, &v164, "MinWordId", -1, 0, *(*(a1 + 16) + 388), v173, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::loadIntTable(a1, &v162, "MaxWordId", -1, 0, *(*(a1 + 16) + 388), v173, 0, 1u, 2u, 3u, 4u, 5u);
    v83 = (a1 + 568);
    v84 = *(a1 + 116);
    v85 = *(a1 + 580);
    v86 = v84;
    if (v84 > v85)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 568, v84 - v85, 0);
      v86 = *(a1 + 116);
    }

    *(a1 + 576) = v84;
    v87 = (a1 + 584);
    v88 = *(a1 + 596);
    v89 = v86;
    if (v86 > v88)
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 584, v86 - v88, 0);
      v89 = *(a1 + 116);
    }

    *(a1 + 592) = v86;
    if (v89)
    {
      v90 = 0;
      do
      {
        if (v90)
        {
          v91 = v164[v90];
          if (v91 == -1 || (v92 = v162, v93 = *(v162 + v90), v93 == -1))
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2738, "lm/multilm", 100, "%.500s %u %.500s", v161, v90, "neither");
            v91 = v164[v90];
            v92 = v162;
            v93 = *(v162 + v90);
          }

          if (v91 > v93)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2741, "lm/multilm", 101, "%.500s %u", v161, v90);
            v91 = v164[v90];
            v92 = v162;
          }

          v94 = *v83;
          *(*v83 + 4 * v90) = v91;
          v95 = v92[v90];
          v96 = *v87;
          *(*v87 + 4 * v90) = v95;
          if (v90 != 1 && *(v94 + 4 * v90) != *(v96 + 4 * (v90 - 1)) + 1)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2752, "lm/multilm", 102, "%.500s %u", v161, v90);
            v94 = *v83;
            v95 = *(*v87 + 4 * v90);
          }

          for (i = *(v94 + 4 * v90); i <= v95; ++i)
          {
            v98 = *(a1 + 16);
            if (*(v98 + 388) <= i || !*(*(v98 + 104) + i) || ((*(*(v98 + 640) + 4 * (i >> 5)) >> i) & 1) == 0)
            {
              CurrentLine = DgnTextFile::getCurrentLine(v173);
              if (*(CurrentLine + 8))
              {
                v100 = *CurrentLine;
              }

              else
              {
                v100 = &unk_26288BEF0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2763, "lm/multilm", 63, "%u %.500s %.500s", i, v161, v100);
              v98 = *(a1 + 16);
            }

            v101 = *(*(v98 + 256) + 4 * i);
            if (v101 >= *(*v83 + 4 * v90))
            {
              v95 = *(*v87 + 4 * v90);
              if (v101 <= v95)
              {
                continue;
              }
            }

            v102 = DgnTextFile::getCurrentLine(v173);
            if (*(v102 + 8))
            {
              v103 = *v102;
            }

            else
            {
              v103 = &unk_26288BEF0;
            }

            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2770, "lm/multilm", 64, "%u %u %.500s %.500s", i, v101, v161, v103);
            v95 = *(*v87 + 4 * v90);
          }
        }

        else
        {
          if (*v164 != -1 || *v162 != -1)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2722, "lm/multilm", 100, "%.500s %u %.500s", v161, 0, "both");
          }

          **(a1 + 568) = 0xFFFFFF;
          **(a1 + 584) = 0xFFFFFF;
          *(a1 + 560) = 0;
        }

        ++v90;
      }

      while (v90 < *(a1 + 116));
    }

    MultiLanguageModel::loadUnsTable(a1, a1 + 600, v156, 0, 0, 0x3E8u, v173, 0, 1u, 2u, 3u, 4u, 5u);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v162);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v164);
  }

  v104 = *(a1 + 176);
  v164 = 0;
  v165 = 0;
  if (v104)
  {
    v162 = 0;
    v105 = realloc_array(0, &v162, 8 * v104, 0, 0, 1);
    v163 = 0;
    v164 = v162;
    v106 = *(a1 + 176);
    LODWORD(v165) = v104;
    HIDWORD(v165) = v105 >> 3;
    v162 = 0;
    if (v106)
    {
      v175[0] = 0;
      v107 = realloc_array(0, v175, 8 * v106, 0, 0, 1);
      v108 = v175[0];
      v162 = v175[0];
      v109 = *(a1 + 176);
      LODWORD(v163) = v106;
      HIDWORD(v163) = v107 >> 3;
      if (v109)
      {
        v110 = v164;
        do
        {
          *v110 = 0;
          v110 += 2;
          *v108++ = 0;
          --v109;
        }

        while (v109);
      }

      goto LABEL_227;
    }
  }

  else
  {
    v162 = 0;
    v163 = 0;
  }

  LODWORD(v163) = 0;
LABEL_227:
  v111 = *(a1 + 116);
  v112 = *(a1 + 148);
  v113 = v111;
  if (v111 > v112)
  {
    DgnPrimArray<unsigned int>::reallocElts(a1 + 136, v111 - v112, 0);
    v113 = *(a1 + 116);
  }

  *(a1 + 144) = v111;
  if (!v113)
  {
    if ((*(a1 + 114) & 1) == 0)
    {
      goto LABEL_352;
    }

    v145 = 1;
    v146 = 0.0;
    v117 = 0.0;
    v116 = 0.0;
    v115 = 0.0;
    goto LABEL_330;
  }

  v114 = 0;
  v115 = 0.0;
  v116 = 0.0;
  v155 = 0.0;
  v157 = 0.0;
  v117 = 0.0;
  v154 = 0.0;
  v118 = 0.0;
  do
  {
    v119 = 1;
    LODWORD(v175[0]) = 1;
    HIDWORD(v175[0]) = v114;
    v120 = v168[0] + 16 * v114;
    v121 = *(v120 + 8);
    v122 = *v120;
    if (v121)
    {
      v123 = v122;
    }

    else
    {
      v123 = &unk_26288BEF0;
    }

    if (strcmp(v123, "FactoryWord"))
    {
      if ((a3 & 1) == 0)
      {
        if ((*(a1 + 112) & 1) == 0 && !strcmp(v123, "TopicWord"))
        {
          v126 = 0;
          v124 = 1;
          v125 = 1;
          goto LABEL_250;
        }

        if (*(a1 + 113) == 1 && !strcmp(v123, "FactoryCorrectiveWord"))
        {
          v124 = 0;
          v119 = 0;
          v125 = 2;
          goto LABEL_249;
        }
      }

      if (!strcmp(v123, "Multi"))
      {
        v124 = 0;
        v125 = 3;
        goto LABEL_249;
      }

      if (*(a1 + 112) == 1 && !strcmp(v123, "Dummy"))
      {
        v124 = 0;
        v125 = 4;
        goto LABEL_249;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2857, "lm/multilm", 103, "%.500s %u", v161, v114);
    }

    v124 = 0;
    v125 = 0;
LABEL_249:
    v126 = 1;
LABEL_250:
    *(*(a1 + 136) + 4 * v114) = v125;
    if (*(a1 + 112))
    {
      goto LABEL_260;
    }

    if (*a5)
    {
      v127 = *(*(a1 + 368) + 16 * v114 + 8);
      if (!v124)
      {
        if (v127 > 1)
        {
          goto LABEL_259;
        }

        goto LABEL_260;
      }
    }

    else
    {
      v127 = *(*(a1 + 320) + 16 * v114 + 8);
      if (!v124)
      {
        if (v127 < 2)
        {
          goto LABEL_260;
        }

LABEL_259:
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2883, "lm/multilm", 104, "%.500s %u", v161, v114);
        goto LABEL_260;
      }
    }

    if (v127 < 2)
    {
      goto LABEL_259;
    }

LABEL_260:
    if (*(a1 + 114) != 1)
    {
      goto LABEL_317;
    }

    v128 = *(*(a1 + 400) + 8 * v114);
    if (v124)
    {
      v154 = v154 + v128;
      v129 = *(v166 + 8 * v114);
      v130 = *(*(a1 + 416) + 8 * v114);
    }

    else
    {
      v130 = *(*(a1 + 416) + 8 * v114);
      v129 = *(v166 + 8 * v114);
      v155 = v155 + v130;
      v157 = v157 + v129;
    }

    v131 = *(*(a1 + 432) + 8 * v114);
    if (v131 != -1.0)
    {
      v117 = v117 + v131;
    }

    v132 = *(*(a1 + 448) + 8 * v114);
    if (v128 > v130)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2907, "lm/multilm", 105, "%.500s %u", v161, v114);
      v131 = *(*(a1 + 432) + 8 * v114);
    }

    if (v131 != -1.0 && v131 != 0.0 && (v131 < *(*(a1 + 400) + 8 * v114) || v131 > *(*(a1 + 416) + 8 * v114)))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2913, "lm/multilm", 106, "%.500s %u", v161, v114);
    }

    v133 = *(v166 + 8 * v114);
    if (v133 != 0.0 || v133 < *(*(a1 + 400) + 8 * v114) || v133 > *(*(a1 + 416) + 8 * v114))
    {
      DFile::pushCurrentSubDirComponent(v160, v175);
      if (*a5)
      {
        v134 = DFile::subFileExists(v160, 0x6Du);
      }

      else if (DFile::subFileExists(v160, 0x6Bu))
      {
        v134 = DFile::subFileExists(v160, 0x73u) ^ 1;
      }

      else
      {
        v134 = 0;
      }

      DFile::popCurrentSubDirComponent(v160);
      v135 = *(v166 + 8 * v114);
      if (v134)
      {
        if (v135 != 0.0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2939, "lm/multilm", 107, "%.500s %u");
        }
      }

      else if (v135 != 0.0 && (v135 < *(*(a1 + 400) + 8 * v114) || v135 > *(*(a1 + 416) + 8 * v114)))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2945, "lm/multilm", 108, "%.500s %u");
      }
    }

    v136 = *(*(a1 + 448) + 8 * v114);
    if (!v124)
    {
      if (v136 == 0.0)
      {
        goto LABEL_295;
      }

LABEL_294:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2960, "lm/multilm", 109, "%.500s %u", v161, v114);
      goto LABEL_295;
    }

    if (v136 != 0.0 && (v136 < *(*(a1 + 400) + 8 * v114) || v136 > *(*(a1 + 416) + 8 * v114)))
    {
      goto LABEL_294;
    }

LABEL_295:
    v118 = v118 + v128;
    v116 = v116 + v129;
    v115 = v115 + v132;
    if (*(a1 + 176))
    {
      v137 = 0;
      v138 = 0;
      do
      {
        v139 = *(*(*(a1 + 184) + v137) + 8 * v114);
        v140 = v126 ^ 1;
        if (v139 != -1.0)
        {
          v140 = 1;
        }

        if ((v140 & 1) == 0)
        {
          v141 = *(a1 + 168) + v137;
          if (*(v141 + 8))
          {
            v142 = *v141;
          }

          else
          {
            v142 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2969, "lm/multilm", 110, "%.500s %.500s %u", v161, v142, v114);
        }

        if (v139 != -1.0 && v139 != 0.0 && (v139 < *(*(a1 + 400) + 8 * v114) || v139 > *(*(a1 + 416) + 8 * v114)))
        {
          v143 = *(a1 + 168) + v137;
          if (*(v143 + 8))
          {
            v144 = *v143;
          }

          else
          {
            v144 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2975, "lm/multilm", 111, "%.500s %.500s %u", v161, v144, v114);
        }

        if (v139 != -1.0)
        {
          *&v164[2 * v138] = v139 + *&v164[2 * v138];
        }

        if (v126)
        {
          *(v162 + v138) = v139 + *(v162 + v138);
        }

        ++v138;
        v137 += 16;
      }

      while (v138 < *(a1 + 176));
    }

LABEL_317:
    if ((v119 & *(a1 + 113)) == 1 && (*(*(a1 + 544) + v114) & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 2993, "lm/multilm", 112, "%.500s %u", v161, v114);
    }

    ++v114;
  }

  while (v114 < *(a1 + 116));
  v145 = v157 == 0.0;
  if ((*(a1 + 114) & 1) == 0)
  {
    goto LABEL_352;
  }

  v146 = v155;
  if (v118 > 1.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3001, "lm/multilm", 13, "%.500s %f", v161, v118);
  }

  if (v154 >= 1.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3004, "lm/multilm", 117, "%.500s %f", v161, v154);
  }

  if (v155 < 1.0)
  {
LABEL_330:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3007, "lm/multilm", 14, "%.500s %f", v161, v146);
  }

  if (v117 >= 1.0001)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3011, "lm/multilm", 29, "%.500s %f", v161, v117);
  }

  if (v145)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3014, "lm/multilm", 78, "%.500s", v161);
  }

  if (fabs(v116 + -1.0) >= 0.0001)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3017, "lm/multilm", 49, "%.500s %f", v161, v116);
  }

  if (v115 >= 1.0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3020, "lm/multilm", 77, "%.500s %f", v161, v115);
  }

  if (*(a1 + 176))
  {
    v147 = 0;
    v148 = 0;
    do
    {
      if (fabs(*&v164[2 * v148] + -1.0) >= 0.0001)
      {
        v149 = *(a1 + 168) + v147;
        if (*(v149 + 8))
        {
          v150 = *v149;
        }

        else
        {
          v150 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3027, "lm/multilm", 50, "%.500s %.500s %f", v161, v150, *&v164[2 * v148]);
      }

      if (*(v162 + v148) == 0.0)
      {
        v151 = *(a1 + 168) + v147;
        if (*(v151 + 8))
        {
          v152 = *v151;
        }

        else
        {
          v152 = &unk_26288BEF0;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3030, "lm/multilm", 79, "%.500s %.500s", v161, v152);
      }

      ++v148;
      v147 += 16;
    }

    while (v148 < *(a1 + 176));
  }

LABEL_352:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v162);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v164);
  DgnPrimArray<double>::copyArraySlice(v153, &v166, 0, v167);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v166);
  DgnArray<DgnString>::releaseAll(v168);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v169);
  DgnArray<DgnString>::releaseAll(&v171);
  DgnTextFileParser::~DgnTextFileParser(v173);
}

void sub_262727394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  DgnTextFileParser::~DgnTextFileParser(va);
  _Unwind_Resume(a1);
}

void readObject<DgnPrimArray<double>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = 16 * v8;
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

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      readObject<double>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

uint64_t readObject<unsigned int>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  readObject(a1, &v15, a3);
  readObject(a1, &v14, a3);
  readObject(a1, &v13, a3);
  readObject<unsigned int,DgnPrimArray<unsigned int>>(a1, &v9, a3);
  v7 = v13;
  v6 = v14;
  *a2 = v15;
  *(a2 + 4) = v6;
  *(a2 + 8) = v7;
  DgnPrimArray<int>::copyArraySlice((a2 + 16), &v9, 0, v10);
  *(a2 + 40) = v12;
  *(a2 + 32) = v11;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v9);
}

void readObject<WordDummySpec>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v13 = 0;
  readObject(a1, &v13, a3);
  v6 = v13;
  v7 = *(a2 + 12);
  if (v13 > v7)
  {
    DgnArray<PrefilterResultFrame>::reallocElts(a2, v13 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v6 > v8)
  {
    v9 = v6 - v8;
    v10 = 32 * v8;
    do
    {
      WordDummySpec::WordDummySpec((*a2 + v10));
      v10 += 32;
      --v9;
    }

    while (v9);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      WordDummySpec::readObject((*a2 + v11), a1, a3);
      ++v12;
      v11 += 32;
    }

    while (v12 < *(a2 + 8));
  }
}

void (***MultiLanguageModel::saveMultiBinary(MultiLanguageModel *this, DFile *a2, DFileChecksums *a3, uint64_t a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x28u, a4, "LMMULBIN", 24, 6);
  v14 = *(this + 36);
  v15 = 0;
  writeObject(v7, &v14, &v15);
  if (v14)
  {
    for (i = 0; i < v14; ++i)
    {
      v9 = *(*(this + 17) + 4 * i);
      if ((v9 - 1) < 4)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = 1;
      }

      v13 = v10;
      writeObject(v7, &v13, &v15);
    }
  }

  writeObject(v7, this + 29, &v15);
  writeObject(v7, this + 112, &v15);
  writeObject(v7, this + 113, &v15);
  writeObject(v7, this + 114, &v15);
  writeObject(v7, this + 120, &v15);
  writeObject(v7, this + 152, &v15);
  writeObject(v7, this + 39, &v15);
  writeObject(v7, this + 40, &v15);
  writeObject<DgnString>(v7, this + 168, &v15);
  writeObject<DgnPrimArray<double>>(v7, this + 184, &v15);
  writeObject<DgnPrimArray<double>>(v7, this + 200, &v15);
  writeObject<DgnPrimArray<short>>(v7, this + 216, &v15);
  writeObject<unsigned int>(v7, this + 58, &v15);
  writeObject(v7, this + 70, &v15);
  writeObject(v7, this + 71, &v15);
  writeObject<DgnString>(v7, this + 352, &v15);
  writeObject<DgnString>(v7, this + 320, &v15);
  writeObject<double>(v7, this + 384, &v15);
  writeObject<double>(v7, this + 400, &v15);
  writeObject<double>(v7, this + 416, &v15);
  writeObject<double>(v7, this + 432, &v15);
  writeObject<double>(v7, this + 448, &v15);
  writeObject<short>(v7, this + 464, &v15);
  writeObject<short>(v7, this + 480, &v15);
  writeObject<double>(v7, this + 496, &v15);
  writeObject<DgnString>(v7, this + 512, &v15);
  writeObject<unsigned int>(v7, this + 528, &v15);
  writeObject<BOOL>(v7, this + 544, &v15);
  writeObject(v7, this + 140, &v15);
  writeObject<unsigned int>(v7, this + 568, &v15);
  writeObject<unsigned int>(v7, this + 584, &v15);
  writeObject<unsigned int>(v7, this + 600, &v15);
  writeObjectChecksum(v7, &v15);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 40, v15);
  return DgnDelete<DgnStream>(v7);
}

uint64_t writeObject<DgnPrimArray<double>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<double>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<DgnPrimArray<short>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<short>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<unsigned int>(uint64_t a1, int *a2, _DWORD *a3)
{
  v9 = *a2;
  writeObject(a1, &v9, a3);
  v8 = a2[1];
  writeObject(a1, &v8, a3);
  v7 = a2[2];
  writeObject(a1, &v7, a3);
  return writeObject<unsigned int,DgnPrimArray<unsigned int>>(a1, (a2 + 4), a3);
}

double MultiLanguageModel::verifySubdirContents(MultiLanguageModel *this, const DFile *a2, uint64_t a3, int a4, int a5)
{
  if (!a5)
  {
    if (a4)
    {
      if (DFile::subFileExists(a2, 0x73u))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3478, "lm/multilm", 128, "%.500s %u", ".wns", a3);
      }

      if (DFile::subFileExists(a2, 0x29u))
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3482, "lm/multilm", 128, "%.500s %u", ".mls", a3);
      }

      v11 = *(*(this + 17) + 4 * a3);
      if (v11 == 4)
      {
        return result;
      }

      if (v11 == 1)
      {
        if ((DFile::subFileExists(a2, 0x6Au) & 1) == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3488, "lm/multilm", 126, "%u", a3);
        }

        v12 = DFile::subFileExists(a2, 0x6Fu);
        v13 = DFile::subFileExists(a2, 0x70u);
        if (v12 && v13)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3497, "lm/multilm", 130, "%u", a3);
        }

        if (!DFile::subFileExists(a2, 0x28u))
        {
          return result;
        }

        v27 = a3;
        v14 = "%u";
        v15 = 3502;
LABEL_31:
        v17 = 131;
        return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", v15, "lm/multilm", v17, v14, v27);
      }

      v22 = DFile::subFileExists(a2, 0x28u);
      v23 = DFile::subFileExists(a2, 0x6Fu) + v22;
      v24 = v23 + DFile::subFileExists(a2, 0x70u);
      if (DFile::subFileExists(a2, 0x6Au))
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3514, "lm/multilm", 15, "%u", a3);
      }

      if (v24 == 1)
      {
        return result;
      }

      v27 = a3;
      v14 = "%u";
      v15 = 3516;
    }

    else
    {
      if (DFile::subFileExists(a2, 0x6Fu))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3525, "lm/multilm", 127, "%.500s %u", ".wnb", a3);
      }

      if (DFile::subFileExists(a2, 0x70u))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3529, "lm/multilm", 127, "%.500s %u", ".wnd", a3);
      }

      if (DFile::subFileExists(a2, 0x28u))
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3533, "lm/multilm", 127, "%.500s %u", ".mlb", a3);
      }

      v16 = *(*(this + 17) + 4 * a3);
      if (v16 == 4)
      {
        return result;
      }

      if (v16 == 1)
      {
        if ((DFile::subFileExists(a2, 0x6Bu) & 1) == 0)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3538, "lm/multilm", 126, "%u", a3);
        }

        if (!DFile::subFileExists(a2, 0x29u))
        {
          return result;
        }

        v27 = a3;
        v14 = "%u";
        v15 = 3543;
        goto LABEL_31;
      }

      v25 = DFile::subFileExists(a2, 0x29u);
      v26 = DFile::subFileExists(a2, 0x73u);
      if (DFile::subFileExists(a2, 0x6Bu))
      {
        result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3554, "lm/multilm", 15, "%u", a3);
      }

      if (v25 != v26)
      {
        return result;
      }

      v27 = a3;
      v14 = "%u";
      v15 = 3556;
    }

    v17 = 129;
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", v15, "lm/multilm", v17, v14, v27);
  }

  if (DFile::subFileExists(a2, 0x73u) & 1) != 0 || (DFile::subFileExists(a2, 0x6Fu))
  {
    v8 = 1;
  }

  else
  {
    v8 = DFile::subFileExists(a2, 0x70u);
  }

  v18 = v8 + DFile::subFileExists(a2, 0x29u);
  v19 = DFile::subFileExists(a2, 0x28u);
  v20 = v18 + v19 + DFile::subFileExists(a2, 0x6Du);
  v21 = *(this + 112);
  if ((v21 & 1) == 0)
  {
    if (a4)
    {
      if (v20 <= 1)
      {
        return result;
      }
    }

    else if (v20 == 1)
    {
      return result;
    }

    result = errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3466, "lm/multilm", 9, "%s", &errStr_lm_multilm_E_BAD_NUM_SPEC_SUBFILES);
    v21 = *(this + 112);
  }

  if ((v21 & 1) != 0 && v20 >= 2)
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3468, "lm/multilm", 42, "%s");
  }

  return result;
}

uint64_t MultiLanguageModel::getTotalPreloadableBytes(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      v4 += (*(*v5 + 32))(v5);
      v1 = *(this + 29);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

uint64_t MultiLanguageModel::computeTotalPreloadableBytes(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(*(this + 5) + 8 * v3);
    if (v5)
    {
      v4 += (*(*v5 + 40))(v5);
      v1 = *(this + 29);
    }

    ++v3;
  }

  while (v3 < v1);
  return v4;
}

void MultiLanguageModel::finalizeLM(uint64_t a1, LanguageModel *a2, DFile *a3, DFileChecksums *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9, unsigned __int8 a10, uint64_t a11, BOOL a12, uint64_t a13, uint64_t a14)
{
  v18 = *(a1 + 116);
  if (v18)
  {
    v19 = 0;
    for (i = 0; i < v18; ++i)
    {
      if (*(*(a1 + 40) + 8 * i))
      {
        v21 = a7;
        v22 = a8;
        v23 = a9;
        if (*(a1 + 112) == 1)
        {
          v21 = a7;
          v22 = a8;
          v23 = a9;
          if (*(a1 + 576) >= 2u)
          {
            v21 = i != 0;
            v24 = *(a1 + 568);
            if (i)
            {
              v25 = (v24 + v19);
              v26 = (*(a1 + 584) + v19);
            }

            else
            {
              v25 = (v24 + 4);
              v26 = (*(a1 + 584) + 4 * (*(a1 + 592) - 1));
            }

            v22 = *v25;
            v23 = *v26;
          }
        }

        v36[0] = 1;
        v36[1] = i;
        DFile::pushCurrentSubDirComponent(a3, v36);
        v27 = *(*(a1 + 40) + 8 * i);
        LOBYTE(v31) = a12;
        BYTE4(v30) = a10;
        LODWORD(v30) = v23;
        (*(*v27 + 48))(v27, a2, a3, a4, a5, a6, v21, v22, v30, a11, v31, a13, a14);
        DFile::popCurrentSubDirComponent(a3);
        v18 = *(a1 + 116);
      }

      v19 += 4;
    }
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    v28 = MultiLanguageModel::maybeUpgradeToWordNgramTemplates(a1, a2, a3, a8, a9, a10, a11);
    MultiLanguageModel::setWordNgramTemplates(a1, a11, v28);
  }

  (*(*a1 + 696))(a1);
  if ((DFile::subFileExists(a3, 0x4Au) & 1) != 0 || DFile::subFileExists(a3, 0x49u))
  {
    if (*(a1 + 128) > 1u)
    {
      LMForDirPathVerify = MultiLanguageModel::getLMForDirPathVerify(a1, "RecentBufferLMPath", (a1 + 120), 0, a3, 0);
    }

    else
    {
      LMForDirPathVerify = (*(*a1 + 56))(a1, a1 + 120);
    }

    *(a1 + 56) = LMForDirPathVerify;
  }

  BYTE4(v30) = a10;
  LODWORD(v30) = a9;
  LanguageModel::finalizeLM(a1, a2, a3, a4, a5, a6, a7, a8, v30, a11, a12);
}

BOOL MultiLanguageModel::maybeUpgradeToWordNgramTemplates(uint64_t a1, LanguageModel *a2, DFile *a3, int a4, int a5, int a6, uint64_t a7)
{
  v7 = *(a1 + 376);
  if (v7)
  {
    v27 = *(a1 + 376);
    if (a6)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3891, "lm/multilm", 132, "%s", &errStr_lm_multilm_E_TOPICLMPATHS_WITH_WORDNGRAMTEMPLATES);
    }

    if (*(a1 + 116))
    {
      v14 = 0;
      do
      {
        if (*(*(a1 + 136) + 4 * v14) == 1)
        {
          v15 = *(a1 + 368);
          if (*(v15 + 16 * v14 + 8) <= 1u)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3901, "lm/multilm", 120, "%s", &errStr_lm_multilm_E_NO_LEGACY_PATH);
            v15 = *(a1 + 368);
          }

          LMForDirPathVerify = MultiLanguageModel::getLMForDirPathVerify(a1, "TemplateLMPath", (v15 + 16 * v14), a2, a3, 1);
          v17 = LMForDirPathVerify;
          v18 = 0;
          v19 = -1;
          while (*(a7 + 8) != v18)
          {
            v20 = *(*a7 + 8 * v18);
            v21 = *(v20 + 168);
            if (v21 == LMForDirPathVerify)
            {
              v19 = v18;
            }

            ++v18;
            if (v21 == LMForDirPathVerify && v20 != 0)
            {
              DgnString::DgnString(v29);
LABEL_22:
              v28[0] = 4;
              v28[1] = v19;
              SubDirExtension::appendToString(v28, v29);
              goto LABEL_23;
            }
          }

          v23 = MemChunkAlloc(0xB0uLL, 0);
          WordNgramTemplate::WordNgramTemplate(v23, *(a1 + 16), a4, a5, v17);
          v19 = *(a7 + 8);
          v24 = v19;
          if (v19 == *(a7 + 12))
          {
            DgnPrimArray<unsigned long long>::reallocElts(a7, 1, 1);
            v24 = *(a7 + 8);
          }

          *(*a7 + 8 * v24) = v23;
          *(a7 + 8) = v24 + 1;
          DgnString::DgnString(v29);
          if (v23)
          {
            goto LABEL_22;
          }
        }

        else
        {
          DgnString::DgnString(v29);
        }

LABEL_23:
        v25 = *(a1 + 328);
        if (v25 == *(a1 + 332))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 320, 1, 1);
          v25 = *(a1 + 328);
        }

        DgnString::DgnString((*(a1 + 320) + 16 * v25), v29);
        ++*(a1 + 328);
        DgnString::~DgnString(v29);
        ++v14;
      }

      while (v14 < *(a1 + 116));
    }

    DgnArray<DgnString>::releaseAll(a1 + 368);
    v7 = v27;
  }

  return v7 != 0;
}

void sub_262728784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::setWordNgramTemplates(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a1 + 116))
  {
    v6 = 0;
    v7 = 0;
    while (*(*(a1 + 320) + v6 + 8) < 2u)
    {
      v8 = *(a1 + 344);
      if (v8 == *(a1 + 348))
      {
        DgnPrimArray<unsigned long long>::reallocElts(a1 + 336, 1, 1);
        v8 = *(a1 + 344);
      }

      *(*(a1 + 336) + 8 * v8) = 0;
      *(a1 + 344) = v8 + 1;
LABEL_36:
      ++v7;
      v6 += 16;
      if (v7 >= *(a1 + 116))
      {
        return;
      }
    }

    v26 = 0;
    DgnString::DgnString(&v24);
    v23 = 0xFFFFFFFF00000004;
    SubDirExtension::appendToString(&v23, &v24);
    DgnString::operator+=(&v24, "%u");
    if (v25)
    {
      v9 = v24;
    }

    else
    {
      v9 = &unk_26288BEF0;
    }

    v10 = fmtcheck(v9, "%u");
    v11 = *(a1 + 320) + v6;
    if (*(v11 + 8))
    {
      v12 = *v11;
    }

    else
    {
      v12 = &unk_26288BEF0;
    }

    if (sscanf(v12, v10, &v26) != 1)
    {
      v13 = *(a1 + 320) + v6;
      if (*(v13 + 8))
      {
        v14 = *v13;
      }

      else
      {
        v14 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3977, "lm/multilm", 124, "%.500s", v14);
    }

    v15 = v26;
    if (*(a2 + 8) <= v26)
    {
      v16 = *(a1 + 320) + v6;
      if (*(v16 + 8))
      {
        v17 = *v16;
      }

      else
      {
        v17 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3980, "lm/multilm", 125, "%.500s", v17);
      v15 = v26;
    }

    v18 = *(*a2 + 8 * v15);
    v19 = *(*(a1 + 304) + 8 * v7);
    if (a3)
    {
      if ((*(v19 + 13) & 1) == 0)
      {
LABEL_33:
        v22 = *(a1 + 344);
        if (v22 == *(a1 + 348))
        {
          DgnPrimArray<unsigned long long>::reallocElts(a1 + 336, 1, 1);
          v22 = *(a1 + 344);
        }

        *(*(a1 + 336) + 8 * v22) = v18;
        *(a1 + 344) = v22 + 1;
        DgnString::~DgnString(&v24);
        goto LABEL_36;
      }

      if (*(v18 + 12) == 16777212)
      {
        *(v19 + 13) = 0;
        goto LABEL_33;
      }
    }

    else if ((*(v19 + 13) & 1) == 0)
    {
      goto LABEL_33;
    }

    if (*(v18 + 12) == 16777212)
    {
      v20 = *(a1 + 320) + v6;
      if (*(v20 + 8))
      {
        v21 = *v20;
      }

      else
      {
        v21 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3999, "lm/multilm", 44, "%u %.500s", v7, v21);
    }

    goto LABEL_33;
  }
}

void sub_262728A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

MultiLanguageModel *MultiLanguageModel::getLMForDirPathVerify(MultiLanguageModel *this, const char *a2, const DgnString *a3, LanguageModel *a4, DFile *a5, int a6)
{
  v57 = 0;
  v58 = 0;
  v55 = 0;
  v56 = 0;
  if (*(a3 + 2))
  {
    v11 = *a3;
  }

  else
  {
    v11 = &unk_26288BEF0;
  }

  DgnSplitStringIntoTokens(v11, "/", &v57, 0);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a5);
  DgnString::DgnString(&v53);
  DFile::makeSubFileName(CurrentSubDirComponents, &unk_26288BEF0, &v53);
  v13 = *v57;
  if (!*(v57 + 8))
  {
    v13 = &unk_26288BEF0;
  }

  if (*v13 == 46 && v13[1] == 46 && !v13[2])
  {
    this = a4;
    if (*(CurrentSubDirComponents + 8))
    {
      v14 = 0;
      v15 = v56;
      v16 = 4;
      do
      {
        v17 = *(*CurrentSubDirComponents + v16);
        if (v15 == HIDWORD(v56))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v55, 1, 1);
          v15 = v56;
        }

        *(v55 + 4 * v15) = v17;
        v15 = v56 + 1;
        LODWORD(v56) = v56 + 1;
        ++v14;
        v16 += 8;
      }

      while (v14 < *(CurrentSubDirComponents + 8));
      this = a4;
    }
  }

  if (v58)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = a6 ^ 1;
    v51 = v21;
    do
    {
      if (*(v57 + v18 + 8))
      {
        v22 = *(v57 + v18);
      }

      else
      {
        v22 = &unk_26288BEF0;
      }

      if (*v22 == 46 && v22[1] == 46 && !v22[2])
      {
        if ((v21 | v20))
        {
          if (*(a3 + 2))
          {
            v25 = *a3;
          }

          else
          {
            v25 = &unk_26288BEF0;
          }

          if (v54)
          {
            v26 = v53;
          }

          else
          {
            v26 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3805, "lm/multilm", 55, "%.500s %.500s %.500s", a2, v25, v26);
        }

        v27 = v56;
        if (!v56)
        {
          if (*(a3 + 2))
          {
            v28 = *a3;
          }

          else
          {
            v28 = &unk_26288BEF0;
          }

          if (v54)
          {
            v29 = v53;
          }

          else
          {
            v29 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3809, "lm/multilm", 56, "%.500s %.500s %.500s", a2, v28, v29);
          v27 = v56;
        }

        v30 = v27 - 1;
        LODWORD(v56) = v30;
        if (a4 && !v30)
        {
          {
            {
              if (*(a3 + 2))
              {
                v31 = *a3;
              }

              else
              {
                v31 = &unk_26288BEF0;
              }

              if (v54)
              {
                v32 = v53;
              }

              else
              {
                v32 = &unk_26288BEF0;
              }

              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3816, "lm/multilm", 57, "%.500s %.500s %.500s", a2, v31, v32);
              v21 = v51;
            }

            else
            {
              v21 = v51;
            }
          }

          else
          {
            v21 = v51;
          }
        }
      }

      else
      {
        IndexForLMSubDirExtensionString = GetIndexForLMSubDirExtensionString(v22);
        v24 = v56;
        if (v56 == HIDWORD(v56))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v55, 1, 1);
          v24 = v56;
        }

        *(v55 + 4 * v24) = IndexForLMSubDirExtensionString;
        LODWORD(v56) = v56 + 1;
        v20 = 1;
      }

      ++v19;
      v18 += 16;
    }

    while (v19 < v58);
  }

  if (v56)
  {
    v33 = 0;
    do
    {
      v34 = *(v55 + 4 * v33);
      {
        v36 = v35;
        if (v35[112] == 1 && v34 != *(v35 + 140))
        {
          if (*(a3 + 2))
          {
            v37 = *a3;
          }

          else
          {
            v37 = &unk_26288BEF0;
          }

          if (v54)
          {
            v38 = v53;
          }

          else
          {
            v38 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3841, "lm/multilm", 58, "%.500s %.500s %.500s", a2, v37, v38);
        }

        if (v34 > *(v36 + 29) - 1)
        {
          if (*(a3 + 2))
          {
            v39 = *a3;
          }

          else
          {
            v39 = &unk_26288BEF0;
          }

          if (v54)
          {
            v40 = v53;
          }

          else
          {
            v40 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3845, "lm/multilm", 59, "%.500s %.500s %.500s", a2, v39, v40);
        }

        v41 = *(*(v36 + 17) + 4 * v34);
        if (v41)
        {
          v42 = v41 == 3;
        }

        else
        {
          v42 = 1;
        }

        if (!v42)
        {
          if (*(a3 + 2))
          {
            v43 = *a3;
          }

          else
          {
            v43 = &unk_26288BEF0;
          }

          if (v54)
          {
            v44 = v53;
          }

          else
          {
            v44 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3851, "lm/multilm", 60, "%.500s %.500s %.500s", a2, v43, v44);
        }

        v45 = (*(v36 + 5) + 8 * v34);
      }

      else
      {
        if (v34 || !*(this + 29))
        {
          if (*(a3 + 2))
          {
            v46 = *a3;
          }

          else
          {
            v46 = &unk_26288BEF0;
          }

          if (v54)
          {
            v47 = v53;
          }

          else
          {
            v47 = &unk_26288BEF0;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3862, "lm/multilm", 61, "%.500s %.500s %.500s", a2, v46, v47);
        }

        v45 = (this + 232);
      }

      this = *v45;
      ++v33;
    }

    while (v33 < v56);
  }

  {
    if (*(a3 + 2))
    {
      v48 = *a3;
    }

    else
    {
      v48 = &unk_26288BEF0;
    }

    if (v54)
    {
      v49 = v53;
    }

    else
    {
      v49 = &unk_26288BEF0;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3869, "lm/multilm", 62, "%.500s %.500s %.500s", a2, v48, v49);
  }

  DgnString::~DgnString(&v53);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v55);
  DgnArray<DgnString>::releaseAll(&v57);
  return this;
}

void sub_262729148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnArray<DgnString>::releaseAll(va2);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getLMWithLegacyPath(MultiLanguageModel *this, DgnString *a2)
{
  if ((*(this + 112) & 1) == 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 3746, "lm/multilm", 120, "%s", &errStr_lm_multilm_E_NO_LEGACY_PATH);
  }

  v4 = *(this + 140);
  if (*(a2 + 2) >= 2u)
  {
    DgnString::operator+=(a2, "/");
  }

  DgnString::DgnString(v9);
  v8[0] = 1;
  v8[1] = v4;
  SubDirExtension::appendToString(v8, a2);
  v5 = *(*(this + 5) + 8 * v4);
  v6 = (*(*v5 + 56))(v5, a2);
  DgnString::~DgnString(v9);
  return v6;
}

void sub_262729288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::canSaveAsText(MultiLanguageModel *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 1;
  }

  for (i = 0; i < v1; ++i)
  {
    v4 = *(*(this + 5) + 8 * i);
    if (v4)
    {
      result = (*(*v4 + 64))(v4);
      if (!result)
      {
        return result;
      }

      v1 = *(this + 29);
    }
  }

  return 1;
}

void MultiLanguageModel::saveUnsTable(uint64_t a1, void *a2, char *a3, DgnTextFileWriter *this, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  if (*(a1 + 116))
  {
    v16 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(this, a5, a3);
      DgnTextFileWriter::setLineFieldValue(this, a6, &unk_26288BEF0);
      DgnString::DgnString(&v21);
      v20[0] = 1;
      v20[1] = v16;
      SubDirExtension::appendToString(v20, &v21);
      if (v22)
      {
        v17 = v21;
      }

      else
      {
        v17 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a7, v17);
      DgnTextFileWriter::setLineFieldIntegerValue(this, a8, *(*a2 + 4 * v16));
      DgnTextFileWriter::setLineFieldRealValue(this, a9, 0.0);
      DgnTextFileWriter::setLineFieldValue(this, a10, &unk_26288BEF0);
      DgnTextFileWriter::writeNextLine(this);
      DgnString::~DgnString(&v21);
      ++v16;
    }

    while (v16 < *(a1 + 116));
  }
}

void sub_262729444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::saveIntTable(uint64_t a1, void *a2, char *a3, DgnTextFileWriter *this, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  if (*(a1 + 116))
  {
    v16 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(this, a5, a3);
      DgnTextFileWriter::setLineFieldValue(this, a6, &unk_26288BEF0);
      DgnString::DgnString(&v21);
      v20[0] = 1;
      v20[1] = v16;
      SubDirExtension::appendToString(v20, &v21);
      if (v22)
      {
        v17 = v21;
      }

      else
      {
        v17 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a7, v17);
      DgnTextFileWriter::setLineFieldIntegerValue(this, a8, *(*a2 + 4 * v16));
      DgnTextFileWriter::setLineFieldRealValue(this, a9, 0.0);
      DgnTextFileWriter::setLineFieldValue(this, a10, &unk_26288BEF0);
      DgnTextFileWriter::writeNextLine(this);
      DgnString::~DgnString(&v21);
      ++v16;
    }

    while (v16 < *(a1 + 116));
  }
}

void sub_262729584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::saveRealTable(uint64_t a1, void *a2, uint64_t a3, char *a4, DgnTextFileWriter *this, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11)
{
  if (*(a1 + 116))
  {
    v16 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(this, a6, a4);
      if (*(a3 + 8))
      {
        v17 = *a3;
      }

      else
      {
        v17 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a7, v17);
      DgnString::DgnString(&v23);
      v22[0] = 1;
      v22[1] = v16;
      SubDirExtension::appendToString(v22, &v23);
      if (v24)
      {
        v18 = v23;
      }

      else
      {
        v18 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a8, v18);
      DgnTextFileWriter::setLineFieldIntegerValue(this, a9, 0);
      DgnTextFileWriter::setLineFieldRealValue(this, a10, *(*a2 + 8 * v16));
      DgnTextFileWriter::setLineFieldValue(this, a11, &unk_26288BEF0);
      DgnTextFileWriter::writeNextLine(this);
      DgnString::~DgnString(&v23);
      ++v16;
    }

    while (v16 < *(a1 + 116));
  }
}

void sub_2627296D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::saveStringTable(uint64_t a1, void *a2, char *a3, DgnTextFileWriter *this, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
  if (*(a1 + 116))
  {
    v15 = 0;
    v16 = 0;
    do
    {
      DgnTextFileWriter::setLineFieldValue(this, a5, a3);
      DgnTextFileWriter::setLineFieldValue(this, a6, &unk_26288BEF0);
      DgnString::DgnString(&v24);
      v23[0] = 1;
      v23[1] = v16;
      SubDirExtension::appendToString(v23, &v24);
      if (v25)
      {
        v17 = v24;
      }

      else
      {
        v17 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a7, v17);
      DgnTextFileWriter::setLineFieldIntegerValue(this, a8, 0);
      DgnTextFileWriter::setLineFieldRealValue(this, a9, 0.0);
      v18 = *a2 + v15;
      if (*(v18 + 8))
      {
        v19 = *v18;
      }

      else
      {
        v19 = &unk_26288BEF0;
      }

      DgnTextFileWriter::setLineFieldValue(this, a10, v19);
      DgnTextFileWriter::writeNextLine(this);
      DgnString::~DgnString(&v24);
      ++v16;
      v15 += 16;
    }

    while (v16 < *(a1 + 116));
  }
}

void sub_262729828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::saveMultiText(MultiLanguageModel *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v66);
  DgnTextFileWriter::openDgnTextFileWriter(v66, a2, 41, a3);
  v64 = 0;
  v65 = 0;
  DgnTextFile::legalDgnTextFileVersions(v66, sMLS_Versions, &v64);
  DgnTextFileWriter::setFileType(v66, "MultiLanguageModelSpec", (v64 + 8 * (v65 - 1)));
  if (*(this + 112))
  {
    v6 = "Dispatch";
  }

  else if (*(this + 113))
  {
    v6 = "LogLinear";
  }

  else
  {
    v6 = "InterpolatedLinear";
  }

  DgnTextFileWriter::setHeaderField(v66, "MultiLMType", v6);
  DgnTextFileWriter::setHeaderFieldUnsigned(v66, "NumberOfSubDirectories", *(this + 29));
  if (*(this + 114) == 1)
  {
    v7 = *(this + 39);
    v8 = (*(this + 40) - v7);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  DgnTextFileWriter::setHeaderFieldUnsigned(v66, "NumberOfFactoryWeightsNames", v7);
  DgnTextFileWriter::setHeaderFieldUnsigned(v66, "NumberOfClientWeightsNames", v8);
  if (*(this + 32) >= 2u)
  {
    DgnTextFileWriter::setHeaderField(v66, "RecentBufferLMPath", *(this + 15));
  }

  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  DgnString::DgnString(&v58, "TableName");
  v9 = v61;
  if (v61 == HIDWORD(v61))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v60, 1, 1);
    v9 = v61;
  }

  DgnString::DgnString((v60 + 16 * v9), &v58);
  LODWORD(v61) = v61 + 1;
  DgnString::~DgnString(&v58);
  v10 = v63;
  if (v63 == HIDWORD(v63))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v62, 1, 1);
    v10 = v63;
  }

  *(v62 + 4 * v10) = 0;
  LODWORD(v63) = v10 + 1;
  DgnString::DgnString(&v58, "WeightsName");
  v11 = v61;
  if (v61 == HIDWORD(v61))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v60, 1, 1);
    v11 = v61;
  }

  DgnString::DgnString((v60 + 16 * v11), &v58);
  LODWORD(v61) = v61 + 1;
  DgnString::~DgnString(&v58);
  v12 = v63;
  if (v63 == HIDWORD(v63))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v62, 1, 1);
    v12 = v63;
  }

  *(v62 + 4 * v12) = 0;
  LODWORD(v63) = v12 + 1;
  DgnString::DgnString(&v58, "SubDirectory");
  v13 = v61;
  if (v61 == HIDWORD(v61))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v60, 1, 1);
    v13 = v61;
  }

  DgnString::DgnString((v60 + 16 * v13), &v58);
  LODWORD(v61) = v61 + 1;
  DgnString::~DgnString(&v58);
  v14 = v63;
  if (v63 == HIDWORD(v63))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v62, 1, 1);
    v14 = v63;
  }

  *(v62 + 4 * v14) = 0;
  LODWORD(v63) = v14 + 1;
  DgnString::DgnString(&v58, "IntValue");
  v15 = v61;
  if (v61 == HIDWORD(v61))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v60, 1, 1);
    v15 = v61;
  }

  DgnString::DgnString((v60 + 16 * v15), &v58);
  LODWORD(v61) = v61 + 1;
  DgnString::~DgnString(&v58);
  v16 = v63;
  if (v63 == HIDWORD(v63))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v62, 1, 1);
    v16 = v63;
  }

  *(v62 + 4 * v16) = 1;
  LODWORD(v63) = v16 + 1;
  DgnString::DgnString(&v58, "RealValue");
  v17 = v61;
  if (v61 == HIDWORD(v61))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v60, 1, 1);
    v17 = v61;
  }

  DgnString::DgnString((v60 + 16 * v17), &v58);
  LODWORD(v61) = v61 + 1;
  DgnString::~DgnString(&v58);
  v18 = v63;
  if (v63 == HIDWORD(v63))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v62, 1, 1);
    v18 = v63;
  }

  *(v62 + 4 * v18) = 2;
  LODWORD(v63) = v18 + 1;
  DgnString::DgnString(&v58, "StrValue");
  v19 = v61;
  if (v61 == HIDWORD(v61))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v60, 1, 1);
    v19 = v61;
  }

  DgnString::DgnString((v60 + 16 * v19), &v58);
  LODWORD(v61) = v61 + 1;
  DgnString::~DgnString(&v58);
  v20 = v63;
  if (v63 == HIDWORD(v63))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v62, 1, 1);
    v20 = v63;
  }

  *(v62 + 4 * v20) = 0;
  LODWORD(v63) = v20 + 1;
  DgnTextFileWriter::setLineFieldFormat(v66, &v62, &v60);
  v21 = *(this + 29);
  v58 = 0;
  v59 = 0;
  if (v21)
  {
    v56 = 0;
    HIDWORD(v59) = realloc_array(0, &v56, 16 * v21, 0, 0, 1) >> 4;
    v58 = v56;
    v22 = v59;
    if (v59 > v21)
    {
      if (v59 > v21)
      {
        v23 = v59;
        v24 = 16 * v59 - 16;
        do
        {
          --v23;
          DgnString::~DgnString(&v58[v24]);
          v24 -= 16;
        }

        while (v23 > v21);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v22 = 0;
  }

  v25 = v21 - v22;
  if (v21 > v22)
  {
    v26 = 16 * v22;
    do
    {
      DgnString::DgnString(&v58[v26]);
      v26 += 16;
      --v25;
    }

    while (v25);
  }

LABEL_45:
  LODWORD(v59) = v21;
  if (*(this + 29))
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = *(*(this + 17) + 4 * v28);
      if (v29 >= 5)
      {
        v30 = 0;
      }

      else
      {
        v30 = off_279B3E928[v29];
      }

      DgnString::operator=(&v58[v27], v30);
      ++v28;
      v27 += 16;
    }

    while (v28 < *(this + 29));
  }

  MultiLanguageModel::saveStringTable(this, &v58, "SlotType", v66, 0, 1u, 2u, 3u, 4u, 5u);
  if (*(this + 113) == 1)
  {
    MultiLanguageModel::saveStringTable(this, this + 64, "CorrectiveName", v66, 0, 1u, 2u, 3u, 4u, 5u);
  }

  if ((*(this + 112) & 1) == 0)
  {
    MultiLanguageModel::saveStringTable(this, this + 44, "TopicName", v66, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveStringTable(this, this + 40, "TemplatePath", v66, 0, 1u, 2u, 3u, 4u, 5u);
  }

  if (*(this + 114) == 1)
  {
    DgnString::DgnString(&v56);
    MultiLanguageModel::saveRealTable(this, this + 50, &v56, "WeightFloor", v66, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveRealTable(this, this + 52, &v56, "WeightCeiling", v66, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveRealTable(this, this + 54, &v56, "PrefiltererFixedWeight", v66, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveRealTable(this, this + 48, &v56, "CurrentWeight", v66, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveRealTable(this, this + 56, &v56, "DefaultTopicWeight", v66, 0, 1u, 2u, 3u, 4u, 5u);
    DgnString::~DgnString(&v56);
    if (*(this + 114))
    {
      v31 = *(this + 44);
      if (v31)
      {
        v32 = 0;
        for (i = 0; i < v31; ++i)
        {
          v34 = *(this + 21) + v32;
          if (*(v34 + 8) >= 2u)
          {
            if (i >= *(this + 39))
            {
              v35 = "ClientWeight";
            }

            else
            {
              v35 = "FactoryWeight";
            }

            MultiLanguageModel::saveRealTable(this, (*(this + 23) + v32), v34, v35, v66, 0, 1u, 2u, 3u, 4u, 5u);
            v31 = *(this + 44);
          }

          v32 += 16;
        }
      }
    }
  }

  if (*(this + 113) == 1)
  {
    DgnString::DgnString(&v56);
    MultiLanguageModel::saveRealTable(this, this + 62, &v56, "LogLinearWeight", v66, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveIntTable(this, this + 66, "LogLinearOffset", v66, 0, 1u, 2u, 3u, 4u, 5u);
    v36 = *(this + 29);
    v54 = 0;
    v55 = 0;
    if (v36)
    {
      v67 = 0;
      v37 = realloc_array(0, &v67, 4 * v36, 0, 0, 1);
      v38 = v67;
      v54 = v67;
      v39 = *(this + 29);
      LODWORD(v55) = v36;
      HIDWORD(v55) = v37 >> 2;
      if (v39)
      {
        v40 = 0;
        v41 = *(this + 68);
        do
        {
          v38[v40] = *(v41 + v40);
          ++v40;
        }

        while (v40 < *(this + 29));
      }
    }

    else
    {
      LODWORD(v55) = 0;
    }

    MultiLanguageModel::saveUnsTable(this, &v54, "IsActive", v66, 0, 1u, 2u, 3u, 4u, 5u);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v54);
    DgnString::~DgnString(&v56);
  }

  if (*(this + 112) == 1)
  {
    v42 = *(this + 29);
    v56 = 0;
    v57 = 0;
    if (v42)
    {
      v54 = 0;
      v43 = realloc_array(0, &v54, 4 * v42, 0, 0, 1);
      v55 = 0;
      v56 = v54;
      v44 = *(this + 29);
      LODWORD(v57) = v42;
      HIDWORD(v57) = v43 >> 2;
      v54 = 0;
      if (v44)
      {
        v67 = 0;
        v45 = realloc_array(0, &v67, 4 * v44, 0, 0, 1);
        v46 = v67;
        v54 = v67;
        v47 = *(this + 29);
        LODWORD(v55) = v44;
        HIDWORD(v55) = v45 >> 2;
        if (v47)
        {
          v48 = 0;
          v49 = *(this + 71);
          v50 = v56;
          v51 = *(this + 73);
          do
          {
            v52 = *(v49 + 4 * v48);
            if (v52 == 0xFFFFFF)
            {
              v52 = -1;
            }

            v50[v48] = v52;
            v53 = *(v51 + 4 * v48);
            if (v53 == 0xFFFFFF)
            {
              v53 = -1;
            }

            v46[v48++] = v53;
          }

          while (v48 < *(this + 29));
        }

        goto LABEL_86;
      }
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }

    LODWORD(v55) = 0;
LABEL_86:
    MultiLanguageModel::saveIntTable(this, &v56, "MinWordId", v66, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveIntTable(this, &v54, "MaxWordId", v66, 0, 1u, 2u, 3u, 4u, 5u);
    MultiLanguageModel::saveUnsTable(this, this + 75, "PrefiltererPerWordPenalty", v66, 0, 1u, 2u, 3u, 4u, 5u);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v54);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v56);
  }

  DgnArray<DgnString>::releaseAll(&v58);
  DgnArray<DgnString>::releaseAll(&v60);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v62);
  DgnIArray<Utterance *>::~DgnIArray(&v64);
  DgnTextFileWriter::~DgnTextFileWriter(v66);
}

void sub_26272A334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va5, a9);
  va_start(va4, a9);
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
  va_copy(va4, va3);
  v19 = va_arg(va4, void);
  v21 = va_arg(va4, void);
  va_copy(va5, va4);
  v22 = va_arg(va5, void);
  v24 = va_arg(va5, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnArray<DgnString>::releaseAll(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  DgnIArray<Utterance *>::~DgnIArray(va4);
  DgnTextFileWriter::~DgnTextFileWriter(va5);
  _Unwind_Resume(a1);
}

RecentBuffer *MultiLanguageModel::saveLM(RecentBuffer **this, DFile *a2, DFileChecksums *a3, _BOOL8 a4, DFileChecksums *a5)
{
  if (a4)
  {
    MultiLanguageModel::saveMultiText(this, a2, a5);
  }

  else
  {
    MultiLanguageModel::saveMultiBinary(this, a2, a3, a5);
  }

  if (*(this + 29))
  {
    v10 = 0;
    do
    {
      v14[0] = 1;
      v14[1] = v10;
      DFile::pushCurrentSubDirComponent(a2, v14);
      v11 = *(this[5] + v10);
      if (v11)
      {
        (*(*v11 + 72))(v11, a2, a3, a4, a5);
      }

      if ((this[14] & 1) == 0)
      {
        v12 = *(this[38] + v10);
        if (v12)
        {
          WordNgramBuildSpec::saveWordNgramBuildSpec(v12, a2, a3, a4, a5);
        }
      }

      DFile::popCurrentSubDirComponent(a2);
      ++v10;
    }

    while (v10 < *(this + 29));
  }

  result = this[1];
  if (result)
  {
    return RecentBuffer::saveRecentBuffer(result, a2, a3, a4, a5);
  }

  return result;
}

unsigned int *MultiLanguageModel::saveLMShared(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = result[29];
  if (v3)
  {
    v6 = result;
    for (i = 0; i < v3; ++i)
    {
      result = *(*(v6 + 5) + 8 * i);
      if (result)
      {
        v8 = *(*(v6 + 17) + 4 * i);
        if (v8 <= 3 && v8 != 1)
        {
          result = (*(*result + 80))(result, a2, a3);
          v3 = v6[29];
        }
      }
    }
  }

  return result;
}

unsigned int *MultiLanguageModel::reloadLMShared(unsigned int *result, uint64_t a2, uint64_t a3)
{
  v3 = result[29];
  if (v3)
  {
    v6 = result;
    for (i = 0; i < v3; ++i)
    {
      result = *(*(v6 + 5) + 8 * i);
      if (result)
      {
        v8 = *(*(v6 + 17) + 4 * i);
        if (v8 <= 3 && v8 != 1)
        {
          result = (*(*result + 88))(result, a2, a3);
          v3 = v6[29];
        }
      }
    }
  }

  return result;
}

RecentBuffer *MultiLanguageModel::saveVocAndSvc(uint64_t a1, DFile *a2, DFile *a3, DFileChecksums *a4, int a5, DFileChecksums *a6, int a7, int a8, int a9, int a10)
{
  MultiLanguageModel::saveMultiBinary(a1, a2, a4, a6);
  if (*(a1 + 116))
  {
    v15 = 0;
    do
    {
      v20 = 1;
      v21 = v15;
      DFile::pushCurrentSubDirComponent(a2, &v20);
      v20 = 1;
      v21 = v15;
      DFile::pushCurrentSubDirComponent(a3, &v20);
      v16 = *(*(a1 + 40) + 8 * v15);
      if (v16)
      {
        v17 = *v16;
        if (*(*(a1 + 136) + 4 * v15) == 1)
        {
          (*(v17 + 72))();
        }

        else
        {
          (*(v17 + 96))(v16);
        }
      }

      if ((*(a1 + 112) & 1) == 0)
      {
        v18 = *(*(a1 + 304) + 8 * v15);
        if (v18)
        {
          WordNgramBuildSpec::saveWordNgramBuildSpec(v18, a2, a4, 0, a6);
        }
      }

      DFile::popCurrentSubDirComponent(a2);
      DFile::popCurrentSubDirComponent(a3);
      ++v15;
    }

    while (v15 < *(a1 + 116));
  }

  result = *(a1 + 8);
  if (result)
  {
    return RecentBuffer::saveRecentBuffer(result, a2, a4, 0, a6);
  }

  return result;
}

uint64_t MultiLanguageModel::setLMScale(MultiLanguageModel *this, uint64_t a2)
{
  v4 = *(this + 29);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 5) + 8 * i);
      if (v6)
      {
        (*(*v6 + 104))(v6, a2);
        v4 = *(this + 29);
      }
    }
  }

  *(this + 8) = a2;

  return CombineTable::initCombineTable(this + 704, a2);
}

BOOL MultiLanguageModel::recentBufferUsesWord(MultiLanguageModel *this, unsigned int a2)
{
  v2 = 1;
  if (a2 <= 0xFFFFF3 && (*(this + 112) & 1) != 0)
  {
    v3 = *(this + 29);
    if (v3)
    {
      v4 = 0;
      while (*(*(this + 71) + 4 * v4) > a2 || *(*(this + 73) + 4 * v4) < a2)
      {
        if (v3 == ++v4)
        {
          goto LABEL_8;
        }
      }

      v5 = *(this + 140);
    }

    else
    {
LABEL_8:
      v5 = *(this + 140);
      LODWORD(v4) = v5;
    }

    return v4 == v5;
  }

  return v2;
}

BOOL MultiLanguageModel::hasRecentBuffer(MultiLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 5) + 8 * i);
      if (v4)
      {
        if ((*(*v4 + 120))(v4))
        {
          return 1;
        }

        v2 = *(this + 29);
      }
    }
  }

  return LanguageModel::hasRecentBuffer(this);
}

uint64_t MultiLanguageModel::getRecentBufferLength(MultiLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(*(this + 5) + 8 * v3);
      if (v5)
      {
        v6 = (*(*v5 + 128))(v5);
        if (v4 <= v6)
        {
          v4 = v6;
        }

        v2 = *(this + 29);
      }

      ++v3;
    }

    while (v3 < v2);
  }

  else
  {
    v4 = 0;
  }

  LODWORD(result) = LanguageModel::getRecentBufferLength(this);
  if (v4 <= result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

RecentBuffer **MultiLanguageModel::addToRecent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 116);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*(a1 + 40) + 8 * i);
      if (v8)
      {
        (*(*v8 + 136))(v8, a2, a3);
        v6 = *(a1 + 116);
      }
    }
  }

  return LanguageModel::addToRecent(a1, a2, a3);
}

void MultiLanguageModel::clearRecent(MultiLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 5) + 8 * i);
      if (v4)
      {
        (*(*v4 + 144))(v4);
        v2 = *(this + 29);
      }
    }
  }

  LanguageModel::clearRecent(this);
}

uint64_t MultiLanguageModel::setWeights(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 116);
  if (v4 != v5)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4634, "lm/multilm", 3, "%d %d", *(a2 + 8), v5);
    v4 = *(a2 + 8);
  }

  v27[0] = 0;
  v27[1] = 0;
  DgnPrimArray<double>::copyArraySlice(v27, a2, 0, v4);
  v6 = *(a1 + 116);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
  v8 = *(a1 + 114);
  v9 = v27[0];
  v10 = 8 * v6;
  v11 = 1;
  do
  {
    if (v8 && !*(*(a1 + 40) + v7))
    {
      *(v9 + v7) = 0;
    }

    v11 &= *(v9 + v7) == 0.0;
    v7 += 8;
  }

  while (v10 != v7);
  if (v11)
  {
LABEL_10:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4650, "lm/multilm", 45, "%s", &errStr_lm_multilm_E_ALL_WEIGHTS_ZERO);
  }

  if (*(a1 + 113) == 1)
  {
    v12 = *(a1 + 116);
    v13 = *(a1 + 508);
    LODWORD(v14) = v12;
    if (v12 > v13)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a1 + 496, v12 - v13, 0);
      LODWORD(v14) = *(a1 + 116);
    }

    *(a1 + 504) = v12;
    if (v14)
    {
      v15 = v27[0];
      v16 = *(a1 + 496);
      v14 = v14;
      do
      {
        v17 = *v15++;
        *v16++ = v17;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v25 = 0;
    v26 = 0;
    MultiLanguageModel::fitWeightsToFloorAndCeiling(a1, v27, &v25);
    if (v26)
    {
      DgnPrimArray<double>::copyArraySlice(a1 + 384, &v25, 0, v26);
    }

    else
    {
      MultiLanguageModel::failsafeFitWeightsToFloorAndCeiling(a1, v27, a1 + 384);
    }

    v18 = *(a1 + 116);
    if (v18)
    {
      for (i = 0; i < v18; ++i)
      {
        v20 = *(*(a1 + 384) + 8 * i);
        if (v20 == 0.0)
        {
          LOWORD(v21) = 2000;
        }

        else
        {
          v22 = DgnLog(v20);
          LODWORD(v23) = *(a1 + 32);
          v21 = (0.5 - v22 * v23);
          v18 = *(a1 + 116);
        }

        *(*(a1 + 464) + 2 * i) = v21;
      }
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v25);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(v27);
}

void sub_26272AD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::fitWeightsToFloorAndCeiling(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = 0;
  v69 = 0;
  DgnPrimArray<double>::copyArraySlice(&v68, a2, 0, *(a2 + 8));
  v5 = *(a1 + 116);
  if (v5)
  {
    v6 = 0.0;
    v7 = v68;
    v8 = *(a1 + 116);
    do
    {
      v9 = *v7++;
      v6 = v6 + v9;
      --v8;
    }

    while (v8);
    v10 = v68;
    v11 = *(a1 + 116);
    v12 = 1.0 / v6;
    do
    {
      *v10 = v12 * *v10;
      ++v10;
      --v11;
    }

    while (v11);
    v66 = 0;
    v67 = 0;
    v64 = 0;
    v13 = realloc_array(0, &v64, 4 * v5, 0, 0, 1);
    v14 = v64;
    v66 = v64;
    v15 = *(a1 + 116);
    LODWORD(v67) = v5;
    HIDWORD(v67) = v13 >> 2;
    if (v15)
    {
      v16 = 0;
      do
      {
        v14[v16++] = 0;
      }

      while (v16 < *(a1 + 116));
    }
  }

  else
  {
    v66 = 0;
    v67 = 0;
  }

  v64 = 0;
  v65 = 0;
  DgnPrimArray<double>::copyArraySlice(&v64, &v68, 0, v69);
  v17 = 0;
  v63[0] = 0;
  v63[1] = 0;
  v18 = 1;
  v19 = 0xFFFFFFFFLL;
  v20 = 1.0;
  do
  {
    v21 = v17;
    DgnPrimArray<double>::copyArraySlice(v63, &v64, 0, v65);
    v22 = *(a1 + 116);
    if (!v22)
    {
      v26 = v20;
      goto LABEL_49;
    }

    v23 = 0;
    v24 = 0.0;
    v25 = 1.79769313e308;
    v26 = v20;
    v27 = 0.0;
    v28 = 0.0;
    v29 = v19;
    do
    {
      v30 = v68[v23];
      if (v30 == 0.0)
      {
        goto LABEL_15;
      }

      v32 = *(*(a1 + 400) + 8 * v23);
      if (v20 * v30 >= v32 || v19 == v23)
      {
        v32 = *(*(a1 + 416) + 8 * v23);
        if (v20 * v30 <= v32 || v19 == v23)
        {
          v27 = v27 + v30;
LABEL_15:
          v31 = v25;
          goto LABEL_16;
        }

        v24 = v24 + v32;
        if (v30 <= 0.0)
        {
          goto LABEL_15;
        }

        v31 = -(v32 - v20 * v30);
        if (v31 >= v25)
        {
          goto LABEL_15;
        }

        if (v32 <= 0.0 || (v66[v23] & 0x10) != 0)
        {
          goto LABEL_15;
        }

        v18 = 0;
        v29 = v23;
      }

      else
      {
        v28 = v28 + v32;
        if (v30 <= 0.0)
        {
          goto LABEL_15;
        }

        v31 = v32 + -v20 * v30;
        if (v31 >= v25 || (v66[v23] & 1) != 0)
        {
          goto LABEL_15;
        }

        v29 = v23;
        v18 = 1;
      }

      v26 = v32 / v30;
LABEL_16:
      ++v23;
      v25 = v31;
    }

    while (v22 != v23);
    if (v27 > 0.0 && v28 + v24 <= 1.0)
    {
      v26 = (1.0 - v28 - v24) / v27;
      v19 = 0xFFFFFFFFLL;
      goto LABEL_54;
    }

    v19 = v29;
LABEL_49:
    if (v20 == v26)
    {
LABEL_80:
      *(a3 + 8) = 0;
      goto LABEL_93;
    }

    if (v18)
    {
      v37 = 1;
    }

    else
    {
      v37 = 16;
    }

    v66[v19] |= v37;
LABEL_54:
    v38 = fabs((v26 - v20) / v20);
    v39 = 1.79769313e308;
    if (v26 == 0.0)
    {
      v39 = 0.0;
    }

    if (v20 == 0.0)
    {
      v38 = v39;
    }

    v40 = *(a1 + 116);
    if (v40)
    {
      v41 = 0;
      v42 = v68;
      v43 = v64;
      v44 = v63[0];
      do
      {
        v45 = *(v42 + v41 * 8);
        if (v45 == 0.0)
        {
          v43[v41] = 0;
        }

        else
        {
          if (v19 == v41)
          {
            if (v18)
            {
              v46 = *(a1 + 400);
            }

            else
            {
              v46 = *(a1 + 416);
            }

            v43[v19] = *(v46 + 8 * v19);
          }

          else
          {
            v47 = *(*(a1 + 400) + v41 * 8);
            v48 = *(*(a1 + 416) + v41 * 8);
            v49 = v26 * v45;
            if (v48 <= v49)
            {
              if (v47 <= v48)
              {
                v47 = *(*(a1 + 416) + v41 * 8);
              }
            }

            else if (v47 <= v49)
            {
              v47 = v49;
            }

            *&v43[v41] = v47;
          }

          v50 = *(v44 + v41 * 8);
          if (v50 > 0.0)
          {
            v51 = fabs((*&v43[v41] - v50) / v50);
            if (v38 <= v51)
            {
              v38 = v51;
            }
          }
        }

        ++v41;
      }

      while (v40 != v41);
    }

    if (v38 <= 0.0001)
    {
      break;
    }

    v17 = v21 + 1;
    v20 = v26;
  }

  while (v21 < 0x3E8);
  if (v21 > 0x3E7)
  {
    goto LABEL_80;
  }

  if (v40)
  {
    v52 = 0.0;
    v53 = v64;
    v54 = v40;
    do
    {
      v55 = *v53++;
      v52 = v52 + v55;
      --v54;
    }

    while (v54);
    v56 = v64;
    v57 = v40;
    v58 = 1.0 / v52;
    do
    {
      *v56 = v58 * *v56;
      ++v56;
      --v57;
    }

    while (v57);
    v59 = 0;
    v60 = 8 * v40;
    do
    {
      if (*(*(a1 + 40) + v59))
      {
        v61 = *(v64 + v59);
        if (v61 != 0.0 && (v61 + 0.0001 < *(*(a1 + 400) + v59) || v61 + -0.0001 > *(*(a1 + 416) + v59)))
        {
          goto LABEL_80;
        }
      }

      v59 += 8;
    }

    while (v60 != v59);
  }

  DgnPrimArray<double>::copyArraySlice(a3, &v64, 0, v65);
LABEL_93:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v63);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v66);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v68);
}

void sub_26272B250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a13);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::failsafeFitWeightsToFloorAndCeiling(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a1 + 116);
  v23 = 0;
  v24 = 0;
  if (v5)
  {
    v25 = 0;
    v8 = realloc_array(0, &v25, 8 * v5, 0, 0, 1);
    v9 = v25;
    v23 = v25;
    v10 = *(a1 + 116);
    LODWORD(v24) = v5;
    HIDWORD(v24) = v8 >> 3;
    if (v10)
    {
      v11 = 0;
      v12 = *a2;
      v13 = 8 * v10;
      v14 = 0.0;
      do
      {
        v15 = *(v12 + v11);
        if (v15 == 0.0)
        {
          *&v9[v11] = 0;
        }

        else
        {
          v16 = *(*(a1 + 400) + v11);
          if (v15 >= v16 && (v16 = *(*(a1 + 416) + v11), v15 <= v16))
          {
            *&v9[v11] = v15;
            v16 = v15;
          }

          else
          {
            *&v9[v11] = v16;
          }

          v14 = v14 + v16;
        }

        v11 += 8;
      }

      while (v13 != v11);
      for (i = 0; v13 != i; i += 8)
      {
        v18 = *&v9[i];
        if (v18 != 0.0)
        {
          if (v14 <= 1.0)
          {
            v19 = *(*(a1 + 416) + i) - v18;
            if (v19 <= 0.0)
            {
              continue;
            }

            v20 = 1.0 - v14;
            if (1.0 - v14 <= v19)
            {
              v19 = 1.0 - v14;
            }

            v21 = v18 + v19;
          }

          else
          {
            v19 = v18 - *(*(a1 + 400) + i);
            if (v19 <= 0.0)
            {
              continue;
            }

            v20 = v14 + -1.0;
            if (v14 + -1.0 <= v19)
            {
              v19 = v14 + -1.0;
            }

            v21 = v18 - v19;
          }

          *&v9[i] = v21;
          if (v21 == 0.0)
          {
            *&v9[i] = 0x3EE4F8B588E368F1;
            v19 = v19 + -0.00001;
          }

          if (v19 == v20)
          {
            break;
          }

          if (v14 > 1.0)
          {
            v19 = -v19;
          }

          v14 = v14 + v19;
        }
      }
    }
  }

  else
  {
    LODWORD(v24) = 0;
  }

  DgnPrimArray<double>::copyArraySlice(a3, &v23, 0, v5);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
}

void sub_26272B450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getNumDispatchComponents(MultiLanguageModel *this)
{
  if (*(this + 112) == 1)
  {
    return *(this + 29);
  }

  else
  {
    return 0;
  }
}

void MultiLanguageModel::setDispatchPrefiltererPerWordPenalty(MultiLanguageModel *this, unsigned int a2, unsigned int a3)
{
  v6 = (*(*this + 544))(this);
  if (v6 <= a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4720, "lm/multilm", 133, "%u %u", a2, v6);
  }

  if (a3 >= 0x3E9)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4722, "lm/multilm", 134, "%u", a3);
  }

  *(*(this + 75) + 4 * a2) = a3;
}

uint64_t MultiLanguageModel::getDispatchPrefiltererPerWordPenalty(MultiLanguageModel *this, unsigned int a2)
{
  v4 = (*(*this + 544))(this);
  if (v4 <= a2)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4734, "lm/multilm", 133, "%u %u", a2, v4);
  }

  return *(*(this + 75) + 4 * a2);
}

uint64_t MultiLanguageModel::getNumInterpolatedLms(MultiLanguageModel *this)
{
  v1 = *(this + 114);
  v2 = *(this + 29);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v5 = *(*(this + 5) + 8 * i);
      if (v5)
      {
        v1 = (*(*v5 + 568))(v5) + v1;
        v2 = *(this + 29);
      }
    }
  }

  return v1;
}

uint64_t MultiLanguageModel::setInterpolatedLmWeights(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 114) == 1)
  {
    if (!*a3)
    {
      (*(*a1 + 496))(a1, a2);
      return 1;
    }

    --*a3;
  }

  v6 = *(a1 + 116);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*(a1 + 40) + 8 * i);
      if (v8)
      {
        if ((*(*v8 + 576))(v8, a2, a3))
        {
          return 1;
        }

        v6 = *(a1 + 116);
      }
    }
  }

  return 0;
}

uint64_t MultiLanguageModel::getInterpolatedLmWeights(MultiLanguageModel *this, unsigned int *a2)
{
  if (*(this + 114) == 1)
  {
    if (!*a2)
    {
      return this + 384;
    }

    --*a2;
  }

  v4 = *(this + 29);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(this + 5) + 8 * i);
      if (v6)
      {
        result = (*(*v6 + 584))(v6, a2);
        if (result)
        {
          return result;
        }

        v4 = *(this + 29);
      }
    }
  }

  return 0;
}

uint64_t MultiLanguageModel::getActiveTopicLmSlots(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 616))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4833, "lm/multilm", 20, "%.500s", "getActiveTopicLmSlots");
  }

  v6 = *(a1 + 104);
  DgnPrimArray<unsigned char>::DgnPrimArray(v13, *(a1 + 104));
  v12 = 0;
  MultiLanguageModel::getActiveTopicLmSlotsInternal(a1, v13, &v12);
  DgnPrimArray<unsigned char>::DgnPrimArray(v11, v6);
  if (v6)
  {
    bzero(v11[0], v6);
  }

  if (*(a2 + 8))
  {
    v7 = 0;
    do
    {
      v8 = *(*a2 + 4 * v7) - 1;
      if (v8 >= v6)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4854, "lm/multilm", 95, "%u", *(*a2 + 4 * v7));
      }

      v9 = v11[0];
      if (*(v11[0] + v8) == 1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4857, "lm/multilm", 96, "%u", *(*a2 + 4 * v7));
        v9 = v11[0];
      }

      v9[v8] = 1;
      *(*a3 + v7++) = *(v13[0] + v8);
    }

    while (v7 < *(a2 + 8));
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v11);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v13);
}

void sub_26272B9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getActiveTopicLmSlotsInternal(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (*(result + 116))
  {
    v5 = result;
    for (i = 0; i < *(v5 + 116); ++i)
    {
      v7 = *a3;
      if (v7 >= *(a2 + 8))
      {
        return result;
      }

      v8 = *(*(v5 + 136) + 4 * i);
      if (v8 == 1)
      {
        v9 = *(*(v5 + 40) + 8 * i);
        if (v9)
        {
          if (*(v5 + 113))
          {
            v9 = 496;
          }

          else
          {
            v9 = 384;
          }

          LOBYTE(v9) = *(*(v5 + v9) + 8 * i) != 0.0;
        }

        *(*a2 + v7) = v9;
        *a3 = v7 + 1;
      }

      else if (*(v5 + 112) == 1)
      {
        if (v8 == 3 && i == *(v5 + 560))
        {
LABEL_18:
          v11 = *(*(v5 + 40) + 8 * i);
          if (v11)
          {
          }

          result = MultiLanguageModel::getActiveTopicLmSlotsInternal(v11, a2, a3);
        }
      }

      else if (v8 == 3)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

uint64_t MultiLanguageModel::setTopicLmSlotWeights(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 616))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4903, "lm/multilm", 20, "%.500s", "setTopicLmSlotWeights");
  }

  v6 = *(a1 + 104);
  v13 = 0;
  v14 = 0;
  v12 = a1;
  if (v6)
  {
    __b = 0;
    v7 = realloc_array(0, &__b, 8 * v6, 0, 0, 1);
    v8 = __b;
    v13 = __b;
    LODWORD(v14) = v6;
    HIDWORD(v14) = v7 >> 3;
    memset_pattern16(__b, &unk_26288BEE0, 8 * v6);
  }

  else
  {
    v8 = 0;
    LODWORD(v14) = 0;
  }

  if (*(a2 + 8))
  {
    v9 = 0;
    do
    {
      v10 = *(*a2 + 4 * v9) - 1;
      if (v10 >= v6)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4919, "lm/multilm", 95, "%u", *(*a2 + 4 * v9));
        v8 = v13;
      }

      if (v8[v10] != -2.0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4922, "lm/multilm", 96, "%u", *(*a2 + 4 * v9));
        v8 = v13;
      }

      v8[v10] = *(*a3 + 8 * v9++);
    }

    while (v9 < *(a2 + 8));
  }

  LODWORD(__b) = 0;
  MultiLanguageModel::setTopicLmSlotWeightsInternal(v12, &v13, &__b);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v13);
}

void sub_26272BCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::setTopicLmSlotWeightsInternal(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v28[0] = 0;
  v28[1] = 0;
  if (*(a1 + 114) == 1)
  {
    DgnPrimArray<double>::copyArraySlice(v28, (a1 + 384), 0, *(a1 + 392));
  }

  DgnPrimArray<unsigned char>::DgnPrimArray(v27, *(a1 + 116));
  v6 = *(a1 + 116);
  if (!v6)
  {
    if ((*(a1 + 114) & 1) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  bzero(v27[0], *(a1 + 116));
  v7 = *a3;
  if (*a3 < *(a2 + 8))
  {
    v8 = 0;
    v9 = 0.0;
    while (1)
    {
      v10 = *(*(a1 + 136) + 4 * v8);
      if (v10 == 1)
      {
        if (*(a1 + 114) == 1)
        {
          v11 = *(*a2 + 8 * v7);
          if (v11 != -2.0)
          {
            if (v11 == -1.0)
            {
              v11 = *(*(a1 + 448) + 8 * v8);
            }

            if (!*(*(a1 + 40) + 8 * v8))
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 4970, "lm/multilm", 80, "%u", v7);
            }

            if (v11 == 0.0 || (v12 = *(*(a1 + 400) + 8 * v8), v11 >= v12))
            {
              v12 = v11;
              if (v11 > *(*(a1 + 416) + 8 * v8))
              {
                v12 = *(*(a1 + 416) + 8 * v8);
              }
            }

            v9 = v9 + v12;
            *(v28[0] + 8 * v8) = v12;
            *(v27[0] + v8) = 1;
            v7 = *a3;
          }
        }

        *a3 = v7 + 1;
      }

      else if (*(a1 + 112) == 1)
      {
        if (v10 == 3 && v8 == *(a1 + 560))
        {
LABEL_26:
          v14 = *(*(a1 + 40) + 8 * v8);
          if (v14)
          {
          }

          MultiLanguageModel::setTopicLmSlotWeightsInternal(v14, a2, a3);
        }
      }

      else if (v10 == 3)
      {
        goto LABEL_26;
      }

      ++v8;
      v15 = *(a1 + 116);
      if (v8 < v15)
      {
        v7 = *a3;
        if (*a3 < *(a2 + 8))
        {
          continue;
        }
      }

      goto LABEL_35;
    }
  }

  v9 = 0.0;
  LODWORD(v15) = v6;
LABEL_35:
  if (*(a1 + 114))
  {
    if (v15)
    {
      v16 = 0;
      v17 = v15;
      v18 = 0.0;
      do
      {
        if ((*(v27[0] + v16) & 1) == 0)
        {
          v18 = v18 + *(*(a1 + 384) + 8 * v16);
        }

        ++v16;
      }

      while (v15 != v16);
      v19 = 0.9999 / v9;
      v20 = 1.0;
      if (v9 <= 0.9999)
      {
        v19 = 1.0;
      }

      if (v18 != 0.0)
      {
        v21 = 1.0 - v9;
        if (v9 > 0.9999)
        {
          v21 = 0.0001;
        }

        v20 = v21 / v18;
      }

      v22 = v27[0];
      v23 = v28[0];
      do
      {
        if (*v22++)
        {
          v25 = v19;
        }

        else
        {
          v25 = v20;
        }

        *v23 = *v23 * v25;
        ++v23;
        --v17;
      }

      while (v17);
    }

LABEL_52:
    (*(*a1 + 496))(a1, v28);
  }

LABEL_53:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v27);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v28);
}

void sub_26272C040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::getWeightsData(uint64_t result, void *a2, _DWORD *a3, _DWORD *a4)
{
  *a2 = result + 168;
  *a3 = *(result + 156);
  *a4 = *(result + 160);
  return result;
}

uint64_t MultiLanguageModel::cleanupWeightsData(uint64_t this)
{
  if (*(this + 152) == 1)
  {
    v1 = this;
    if ((*(this + 114) & 1) == 0 && *(this + 28))
    {
      DgnArray<DgnString>::releaseAll(this + 168);
      *(v1 + 156) = 0;
      *(v1 + 160) = 0;
      *(v1 + 240) = *(v1 + 236);
      this = *(v1 + 248);
      if (this)
      {
        this = MemChunkFree(this, 0);
        *(v1 + 248) = 0;
      }

      *(v1 + 256) = 0;
      *(v1 + 264) = 0;
      *(v1 + 272) = 0;
    }

    v2 = *(v1 + 116);
    if (v2)
    {
      for (i = 0; i < v2; ++i)
      {
        if ((*(v1 + 112) != 1 || i == *(v1 + 560)) && *(*(v1 + 136) + 4 * i) == 3)
        {
          v4 = *(*(v1 + 40) + 8 * i);
          this = (*(*v4 + 624))(v4);
          v2 = *(v1 + 116);
        }
      }
    }
  }

  return this;
}

uint64_t MultiLanguageModel::makeNewWeights(MultiLanguageModel *this, const char **a2)
{
  if ((*(this + 114) & 1) != 0 || !*(this + 7))
  {
    if (*(a2 + 2))
    {
      v5 = *a2;
    }

    else
    {
      v5 = &unk_26288BEF0;
    }

    if ((isValidName(v5) & 1) == 0)
    {
      if (*(a2 + 2))
      {
        v6 = *a2;
      }

      else
      {
        v6 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5137, "lm/multilm", 81, "%.500s", v6);
    }

    NextId = IdMgr<unsigned int>::getNextId(this + 58);
    if (NextId >= 0xFFFF)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5141, "lm/multilm", 83, "%s", &errStr_lm_multilm_E_TOO_MANY_WEIGHTSIDS);
    }

    v7 = *(this + 40);
    if (v7 - *(this + 39) == 1000)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5146, "lm/multilm", 84, "%u", 1000);
      v7 = *(this + 40);
    }

    *(this + 40) = v7 + 1;
    v8 = DgnArray<DgnString>::find(this + 42, a2);
    if (v8 != -1)
    {
      if (*(a2 + 2))
      {
        v9 = *a2;
      }

      else
      {
        v9 = &unk_26288BEF0;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5153, "lm/multilm", 82, "%.500s %u", v9, v8);
    }

    v10 = (NextId - 1);
    v11 = *(this + 44);
    if (NextId > v11)
    {
      v12 = *(this + 45);
      if (NextId > v12)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(this + 168, NextId - v12, 0);
        v11 = *(this + 44);
      }

      v13 = NextId - v11;
      if (NextId >= v11)
      {
        if (NextId > v11)
        {
          v16 = 16 * v11;
          do
          {
            DgnString::DgnString((*(this + 21) + v16));
            v16 += 16;
            --v13;
          }

          while (v13);
        }
      }

      else if (NextId < v11)
      {
        v14 = v11;
        v15 = 16 * v11 - 16;
        do
        {
          --v14;
          DgnString::~DgnString(*(this + 21) + v15);
          v15 -= 16;
        }

        while (v14 > NextId);
      }

      *(this + 44) = NextId;
    }

    DgnString::operator=((*(this + 21) + 16 * v10), a2);
    if (*(this + 114) == 1)
    {
      v17 = *(this + 48);
      if (NextId > v17)
      {
        v18 = *(this + 49);
        if (NextId > v18)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(this + 184, NextId - v18, 0);
          v17 = *(this + 48);
        }

        if (v17 <= NextId)
        {
          if (v17 < NextId)
          {
            v21 = NextId - v17;
            v22 = 16 * v17;
            do
            {
              v23 = (*(this + 23) + v22);
              *v23 = 0;
              v23[1] = 0;
              v22 += 16;
              --v21;
            }

            while (v21);
          }
        }

        else if (v17 > NextId)
        {
          v19 = v17;
          v20 = 16 * v17 - 16;
          do
          {
            --v19;
            DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 23) + v20);
            v20 -= 16;
          }

          while (v19 > NextId);
        }

        *(this + 48) = NextId;
        v24 = *(this + 53);
        if (NextId > v24)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(this + 200, NextId - v24, 0);
        }

        v25 = *(this + 52);
        if (v25 <= NextId)
        {
          if (v25 < NextId)
          {
            v28 = NextId - v25;
            v29 = 16 * v25;
            do
            {
              v30 = (*(this + 25) + v29);
              *v30 = 0;
              v30[1] = 0;
              v29 += 16;
              --v28;
            }

            while (v28);
          }
        }

        else if (v25 > NextId)
        {
          v26 = v25;
          v27 = 16 * v25 - 16;
          do
          {
            --v26;
            DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 25) + v27);
            v27 -= 16;
          }

          while (v26 > NextId);
        }

        *(this + 52) = NextId;
        v31 = *(this + 57);
        if (NextId > v31)
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(this + 216, NextId - v31, 0);
        }

        v32 = *(this + 56);
        if (v32 <= NextId)
        {
          if (v32 < NextId)
          {
            v35 = NextId - v32;
            v36 = 16 * v32;
            do
            {
              v37 = (*(this + 27) + v36);
              *v37 = 0;
              v37[1] = 0;
              v36 += 16;
              --v35;
            }

            while (v35);
          }
        }

        else if (v32 > NextId)
        {
          v33 = v32;
          v34 = 16 * v32 - 16;
          do
          {
            --v33;
            DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 27) + v34);
            v34 -= 16;
          }

          while (v33 > NextId);
        }

        *(this + 56) = NextId;
      }

      v38 = *(this + 23) + 16 * v10;
      v39 = *(this + 29);
      v40 = *(v38 + 12);
      v41 = v39;
      if (v39 > v40)
      {
        DgnPrimArray<unsigned long long>::reallocElts(*(this + 23) + 16 * v10, v39 - v40, 0);
        v41 = *(this + 29);
      }

      *(v38 + 8) = v39;
      if (v41)
      {
        v42 = 0;
        v43 = *(this + 5);
        v44 = *(*(this + 23) + 16 * v10);
        v45 = 8 * v41;
        do
        {
          if (*(v43 + v42))
          {
            v46 = *(*(this + 48) + v42);
          }

          else
          {
            v46 = -1.0;
          }

          *(v44 + v42) = v46;
          v42 += 8;
        }

        while (v45 != v42);
      }

      MultiLanguageModel::adjustNamedWeightsSet(this, NextId - 1);
    }
  }

  else
  {
    NextId = 0xFFFFLL;
  }

  if (*(this + 29))
  {
    v47 = 0;
    do
    {
      if ((*(this + 112) != 1 || v47 == *(this + 140)) && *(*(this + 17) + 4 * v47) == 3)
      {
        v48 = *(*(this + 5) + 8 * v47);
        if ((*(*v48 + 608))(v48))
        {
          v49 = *(*(this + 5) + 8 * v47);
          v50 = (*(*v49 + 632))(v49, a2);
          if (NextId == 0xFFFF)
          {
            NextId = v50;
          }

          else
          {
            NextId = NextId;
          }
        }
      }

      ++v47;
    }

    while (v47 < *(this + 29));
  }

  return NextId;
}

uint64_t MultiLanguageModel::adjustNamedWeightsSet(MultiLanguageModel *this, unsigned int a2)
{
  v5 = *(this + 29);
  v34 = 0;
  v35 = 0;
  if (!v5)
  {
    LODWORD(v35) = 0;
    goto LABEL_22;
  }

  v32 = 0;
  v6 = realloc_array(0, &v32, 8 * v5, 0, 0, 1);
  v7 = v32;
  v34 = v32;
  v8 = *(this + 29);
  LODWORD(v35) = v5;
  HIDWORD(v35) = v6 >> 3;
  if (!v8)
  {
LABEL_22:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5489, "lm/multilm", 45, "%s", &errStr_lm_multilm_E_ALL_WEIGHTS_ZERO);
    goto LABEL_23;
  }

  v9 = 0;
  v10 = *(this + 5);
  v11 = 8 * v8;
  v12 = 0.0;
  v13 = 0.0;
  do
  {
    if (*(v10 + v9))
    {
      v14 = *(*(*(this + 23) + 16 * a2) + v9);
      if (v14 == -1.0)
      {
        v15 = *(*(this + 56) + v9);
        v7[v9 / 8] = v15;
        v13 = v13 + v15;
      }

      else
      {
        v7[v9 / 8] = v14;
        v12 = v12 + v14;
      }
    }

    else
    {
      v7[v9 / 8] = 0.0;
    }

    v9 += 8;
  }

  while (v11 != v9);
  if (v12 != 0.0 && v13 != 0.0)
  {
    v16 = 0;
    v17 = *(this + 5);
    v18 = (1.0 - v13) / v12;
    do
    {
      if (*(v17 + v16) && *(*(*(this + 23) + 16 * a2) + v16) != -1.0)
      {
        v7[v16 / 8] = v18 * v7[v16 / 8];
      }

      v16 += 8;
    }

    while (v11 != v16);
  }

  while (*v7 == 0.0)
  {
    ++v7;
    if (!--v8)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v32 = 0;
  v33 = 0;
  MultiLanguageModel::fitWeightsToFloorAndCeiling(this, &v34, &v32);
  v19 = *(this + 25);
  if (v33)
  {
    DgnPrimArray<double>::copyArraySlice(v19 + 16 * a2, &v32, 0, v33);
  }

  else
  {
    MultiLanguageModel::failsafeFitWeightsToFloorAndCeiling(this, &v34, v19 + 16 * a2);
  }

  v20 = a2;
  v21 = *(this + 27) + 16 * a2;
  v22 = *(this + 29);
  v23 = *(v21 + 12);
  v24 = v22;
  if (v22 > v23)
  {
    DgnPrimArray<short>::reallocElts(v21, v22 - v23, 0);
    v24 = *(this + 29);
  }

  *(v21 + 8) = v22;
  if (v24)
  {
    v25 = 0;
    v26 = 16 * v20;
    do
    {
      v27 = *(*(*(this + 25) + v26) + 8 * v25);
      if (v27 == 0.0)
      {
        LOWORD(v28) = 2000;
      }

      else
      {
        v29 = DgnLog(v27);
        LODWORD(v30) = *(this + 8);
        v28 = (0.5 - v29 * v30);
        v24 = *(this + 29);
      }

      *(*(*(this + 27) + v26) + 2 * v25++) = v28;
    }

    while (v25 < v24);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v32);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v34);
}

void sub_26272C940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void MultiLanguageModel::deleteWeights(uint64_t this, uint64_t a2)
{
  if ((*(this + 114) & 1) != 0 || !*(this + 28))
  {
    v4 = (a2 - 1);
    if (v4 >= *(this + 176) || *(*(this + 168) + 16 * v4 + 8) <= 1u)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5250, "lm/multilm", 85, "%u", a2 - 1);
    }

    if (v4 < *(this + 156))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5252, "lm/multilm", 86, "%s", &errStr_lm_multilm_E_CANT_DELETE_FACTORY_WEIGHTS);
    }

    v5 = *(this + 168) + 16 * v4;
    if (*v5)
    {
      MemChunkFree(*v5, 0);
      *v5 = 0;
    }

    *(v5 + 8) = 0;
    --*(this + 160);
    IdMgr<unsigned int>::recycleId((this + 232), a2);
    if (*(this + 114) == 1)
    {
      v6 = *(this + 184) + 16 * v4;
      if (*v6)
      {
        MemChunkFree(*v6, 0);
        *v6 = 0;
      }

      *(v6 + 8) = 0;
      v7 = *(this + 200) + 16 * v4;
      if (*v7)
      {
        MemChunkFree(*v7, 0);
        *v7 = 0;
      }

      *(v7 + 8) = 0;
      v8 = *(this + 216) + 16 * v4;
      if (*v8)
      {
        MemChunkFree(*v8, 0);
        *v8 = 0;
      }

      *(v8 + 8) = 0;
    }
  }

  if (*(this + 116))
  {
    v9 = 0;
    do
    {
      if ((*(this + 112) != 1 || v9 == *(this + 560)) && *(*(this + 136) + 4 * v9) == 3)
      {
        v10 = *(*(this + 40) + 8 * v9);
        if ((*(*v10 + 608))(v10))
        {
          v11 = *(*(this + 40) + 8 * v9);
          (*(*v11 + 640))(v11, a2);
        }
      }

      ++v9;
    }

    while (v9 < *(this + 116));
  }
}

void MultiLanguageModel::applyWeights(MultiLanguageModel *this, uint64_t a2)
{
  if ((*(this + 114) & 1) != 0 || !*(this + 7))
  {
    v4 = a2 - 1;
    if ((a2 - 1) >= *(this + 44) || *(*(this + 21) + 16 * v4 + 8) <= 1u)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5294, "lm/multilm", 85, "%u", a2 - 1);
      if ((*(this + 114) & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (*(this + 114))
    {
LABEL_6:
      v5 = *(this + 25) + 16 * v4;
      DgnPrimArray<double>::copyArraySlice(this + 384, v5, 0, *(v5 + 8));
      v6 = *(this + 27) + 16 * v4;
      DgnPrimArray<unsigned short>::copyArraySlice(this + 58, v6, 0, *(v6 + 8));
    }
  }

LABEL_7:
  if (*(this + 29))
  {
    v7 = 0;
    do
    {
      if ((*(this + 112) != 1 || v7 == *(this + 140)) && *(*(this + 17) + 4 * v7) == 3)
      {
        v8 = *(*(this + 5) + 8 * v7);
        if ((*(*v8 + 608))(v8))
        {
          v9 = *(*(this + 5) + 8 * v7);
          (*(*v9 + 648))(v9, a2);
        }
      }

      ++v7;
    }

    while (v7 < *(this + 29));
  }
}

uint64_t MultiLanguageModel::getValidWeightsIds(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 8) = 0;
    v4 = *(a1 + 160);
    v5 = *(a2 + 12);
    if (v4 > v5)
    {
      DgnPrimArray<unsigned int>::reallocElts(a2, v4 - v5, 0);
    }

    v6 = *(a1 + 176);
    if (v6)
    {
      v7 = 0;
      v8 = 8;
      do
      {
        if (*(*(a1 + 168) + v8) >= 2u)
        {
          v9 = *(a2 + 8);
          if (v9 == *(a2 + 12))
          {
            DgnPrimArray<unsigned int>::reallocElts(a2, 1, 1);
            v9 = *(a2 + 8);
          }

          *(*a2 + 4 * v9) = v7 + 1;
          ++*(a2 + 8);
          v6 = *(a1 + 176);
        }

        ++v7;
        v8 += 16;
      }

      while (v7 < v6);
    }
  }

  return *(a1 + 160);
}

uint64_t MultiLanguageModel::getWeightsId(MultiLanguageModel *this, const DgnString *a2)
{
  v2 = DgnArray<DgnString>::find(this + 42, a2);
  if (v2 == -1)
  {
    return 0xFFFFLL;
  }

  else
  {
    return (v2 + 1);
  }
}

uint64_t MultiLanguageModel::getWeightsName(MultiLanguageModel *this, int a2)
{
  v3 = (a2 - 1);
  if (v3 >= *(this + 44) || (v4 = *(this + 21), *(v4 + 16 * v3 + 8) <= 1u))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5388, "lm/multilm", 85, "%u", a2 - 1);
    v4 = *(this + 21);
  }

  return v4 + 16 * v3;
}

BOOL MultiLanguageModel::isFactoryWeights(MultiLanguageModel *this, int a2)
{
  v3 = a2 - 1;
  if ((a2 - 1) >= *(this + 44) || *(*(this + 21) + 16 * v3 + 8) <= 1u)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5404, "lm/multilm", 85, "%u", a2 - 1);
  }

  return v3 < *(this + 39);
}

double MultiLanguageModel::checkWeightsId(MultiLanguageModel *this, int a2)
{
  if ((a2 - 1) >= *(this + 44) || *(*(this + 21) + 16 * (a2 - 1) + 8) <= 1u)
  {
    return errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 5420, "lm/multilm", 85, "%u", a2 - 1);
  }

  return result;
}

uint64_t MultiLanguageModel::languageScore(MultiLanguageModel *this, uint64_t a2, uint64_t a3, LMStats *a4, LMContextData *a5, LMScoreDetails *a6, uint64_t a7, unsigned int a8, BOOL *a9)
{
  v9 = a7;
  ++*(a4 + 1);
  v51 = a3;
  if (a7 && a6 && *(this + 1))
  {
    v15 = *(a6 + 2);
    LMScoreDetails::addDetails(a6, 0, 6, 1);
LABEL_6:
    v16 = *(a6 + 2);
    LMScoreDetails::addDetails(a6, 0, 5, 0);
    v17 = 0;
    a3 = v51;
    goto LABEL_8;
  }

  v15 = 0;
  if (a6)
  {
    goto LABEL_6;
  }

  v16 = 0;
  v17 = 1;
LABEL_8:
  if (*(this + 112) != 1)
  {
    if (*(this + 113) == 1)
    {
      v47 = v17;
      v21 = v15;
      *a9 = 0;
      v22 = *(this + 29);
      if (v22)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0.0;
        do
        {
          v26 = *(*(this + 5) + 8 * v23);
          if (v26 && *(*(this + 68) + v23) == 1)
          {
            v27 = *(*(this + 17) + 4 * v23) == 2 && a8 == 0;
            if (!v27 && *(*(this + 62) + 8 * v23) != 0.0)
            {
              v53 = 0;
              v28 = (*(*v26 + 504))(v26, a2, a3, a4, *(*(a5 + 2) + 8 * v23), a6, v9, a8, &v53);
              if (v53 == 1)
              {
                v25 = v25 + v28 * *(*(this + 62) + 8 * v23) + *(*(this + 66) + 4 * v23);
                *a9 = 1;
              }

              ++v24;
              v22 = *(this + 29);
              a3 = v51;
            }
          }

          ++v23;
        }

        while (v23 < v22);
      }

      else
      {
        v24 = 0;
        v25 = 0.0;
      }

      v43 = (40 * *(this + 8));
      if (v25 <= v43)
      {
        v43 = v25;
      }

      if (v43 < 0.0)
      {
        v43 = 0.0;
      }

      v41 = (v43 + 0.5);
      v15 = v21;
    }

    else
    {
      v49 = v9;
      v50 = a5;
      if (a3 == 0xFFFF)
      {
        v29 = (this + 384);
        v30 = this + 464;
      }

      else
      {
        v29 = (*(this + 25) + 16 * (a3 - 1));
        v30 = (*(this + 27) + 16 * (a3 - 1));
      }

      v48 = v30;
      *a9 = 0;
      v31 = *(this + 29);
      if (!v31)
      {
        v24 = 0;
        LOWORD(v41) = 0;
        v9 = v49;
        if (v17)
        {
          return LanguageModel::languageScoreFinish(this, a2, v41, a6, v9, v15, a5);
        }

        goto LABEL_63;
      }

      v46 = v15;
      v47 = v17;
      v45 = v16;
      v32 = 0;
      v33 = 0;
      v24 = 0;
      v34 = 0;
      v35 = 1;
      do
      {
        v36 = *(*(this + 5) + 8 * v32);
        if (v36 && *(*v29 + 8 * v32) != 0.0)
        {
          v37 = (*(*v36 + 504))(v36, a2);
          LOWORD(v38) = *(*v48 + 2 * v32) + v37;
          if (v34)
          {
            v38 = v38;
            v39 = v38 - v33;
            if (v39 < 0)
            {
              v40 = v33 - v38;
            }

            else
            {
              v38 = v33;
              v40 = v39;
            }

            if (v40 < *(this + 178))
            {
              v38 -= *(*(this + 88) + 4 * v40);
            }

            v38 &= ~(v38 >> 31);
          }

          ++v24;
          v35 &= v37 == 0;
          v31 = *(this + 29);
          v34 = 1;
          v33 = v38;
        }

        ++v32;
      }

      while (v32 < v31);
      if (v35)
      {
        LOWORD(v41) = 0;
      }

      else
      {
        LOWORD(v41) = v33;
      }

      a5 = v50;
      v9 = v49;
      v15 = v46;
      v16 = v45;
    }

    if (v47)
    {
      return LanguageModel::languageScoreFinish(this, a2, v41, a6, v9, v15, a5);
    }

LABEL_63:
    *(*a6 + 2 * v16) = v41;
    *(*(a6 + 4) + 4 * v16) = v24;
    return LanguageModel::languageScoreFinish(this, a2, v41, a6, v9, v15, a5);
  }

  v18 = *(this + 29);
  if (v18)
  {
    v19 = 0;
    while (*(*(this + 71) + 4 * v19) > a2 || *(*(this + 73) + 4 * v19) < a2)
    {
      if (v18 == ++v19)
      {
        goto LABEL_14;
      }
    }

    v20 = *(this + 140);
  }

  else
  {
LABEL_14:
    v20 = *(this + 140);
    LODWORD(v19) = v20;
  }

  if (v19 == v20)
  {
    a3 = a3;
  }

  else
  {
    a3 = 0xFFFFLL;
  }

  v42 = *(*(this + 5) + 8 * v19);
  LOWORD(v41) = (*(*v42 + 504))(v42, a2, a3, a4, *(*(a5 + 2) + 8 * v19), a6, v9, a8, a9);
  v24 = 0;
  if ((v17 & 1) == 0)
  {
    goto LABEL_63;
  }

  return LanguageModel::languageScoreFinish(this, a2, v41, a6, v9, v15, a5);
}

uint64_t *LMScoreDetails::addDetails(uint64_t *result, __int16 a2, int a3, int a4)
{
  v7 = result;
  v8 = *(result + 2);
  if (v8 == *(result + 3))
  {
    result = DgnPrimArray<short>::reallocElts(result, 1, 1);
    v8 = *(v7 + 2);
  }

  *(*v7 + 2 * v8) = a2;
  *(v7 + 2) = v8 + 1;
  v9 = *(v7 + 6);
  if (v9 == *(v7 + 7))
  {
    result = DgnPrimArray<unsigned int>::reallocElts((v7 + 2), 1, 1);
    v9 = *(v7 + 6);
  }

  *(v7[2] + 4 * v9) = a3;
  *(v7 + 6) = v9 + 1;
  v10 = *(v7 + 10);
  if (v10 == *(v7 + 11))
  {
    result = DgnPrimArray<unsigned int>::reallocElts((v7 + 4), 1, 1);
    v10 = *(v7 + 10);
  }

  *(v7[4] + 4 * v10) = a4;
  ++*(v7 + 10);
  return result;
}

uint64_t MultiLanguageModel::languageScoreForSearch(MultiLanguageModel *this, uint64_t a2, uint64_t a3, LMStats *a4, LMContextData *a5, uint64_t a6, BOOL *a7)
{
  v11 = a3;
  ++*(a4 + 1);
  if (*(this + 112) == 1)
  {
    v14 = *(this + 29);
    if (v14)
    {
      v15 = 0;
      while (*(*(this + 71) + 4 * v15) > a2 || *(*(this + 73) + 4 * v15) < a2)
      {
        if (v14 == ++v15)
        {
          goto LABEL_7;
        }
      }

      v16 = *(this + 140);
    }

    else
    {
LABEL_7:
      v16 = *(this + 140);
      LODWORD(v15) = v16;
    }

    if (v15 == v16)
    {
      a3 = a3;
    }

    else
    {
      a3 = 0xFFFFLL;
    }

    v37 = *(*(this + 5) + 8 * v15);
    LOWORD(v24) = (*(*v37 + 512))(v37, a2, a3, a4, *(*(a5 + 2) + 8 * v15), a6, a7);
  }

  else if (*(this + 113) == 1)
  {
    *a7 = 0;
    v17 = *(this + 29);
    v18 = 0.0;
    if (v17)
    {
      for (i = 0; i < v17; ++i)
      {
        v20 = *(*(this + 5) + 8 * i);
        if (v20 && *(*(this + 68) + i) == 1)
        {
          v21 = *(*(this + 17) + 4 * i) == 2 && a6 == 0;
          if (!v21 && *(*(this + 62) + 8 * i) != 0.0)
          {
            v43 = 0;
            v22 = (*(*v20 + 512))(v20, a2, v11, a4, *(*(a5 + 2) + 8 * i), a6, &v43);
            if (v43 == 1)
            {
              v18 = v18 + v22 * *(*(this + 62) + 8 * i) + *(*(this + 66) + 4 * i);
              *a7 = 1;
            }

            v17 = *(this + 29);
          }
        }
      }
    }

    v23 = (40 * *(this + 8));
    if (v18 <= v23)
    {
      v23 = v18;
    }

    if (v23 < 0.0)
    {
      v23 = 0.0;
    }

    v24 = (v23 + 0.5);
  }

  else
  {
    v41 = a3;
    if (a3 == 0xFFFF)
    {
      v25 = (this + 384);
      v26 = this + 464;
    }

    else
    {
      v25 = (*(this + 25) + 16 * (a3 - 1));
      v26 = (*(this + 27) + 16 * (a3 - 1));
    }

    v40 = v26;
    *a7 = 0;
    v27 = *(this + 29);
    if (v27)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 1;
      do
      {
        v32 = *(*(this + 5) + 8 * v28);
        if (v32 && *(*v25 + 8 * v28) != 0.0)
        {
          v42 = 0;
          v33 = (*(*v32 + 512))(v32, a2, v41, a4, *(*(a5 + 2) + 8 * v28), a6, &v42);
          if (v42 == 1)
          {
            *a7 = 1;
          }

          LOWORD(v34) = *(*v40 + 2 * v28) + v33;
          if (v30)
          {
            v34 = v34;
            v35 = v34 - v29;
            if (v35 < 0)
            {
              v36 = v29 - v34;
            }

            else
            {
              v34 = v29;
              v36 = v35;
            }

            if (v36 < *(this + 178))
            {
              v34 -= *(*(this + 88) + 4 * v36);
            }

            v34 &= ~(v34 >> 31);
          }

          v31 &= v33 == 0;
          v27 = *(this + 29);
          v30 = 1;
          v29 = v34;
        }

        ++v28;
      }

      while (v28 < v27);
      if (v31)
      {
        LOWORD(v24) = 0;
      }

      else
      {
        LOWORD(v24) = v29;
      }
    }

    else
    {
      LOWORD(v24) = 0;
    }
  }

  return LanguageModel::languageScoreFinishForSearch(this, a2, v24, a5);
}

uint64_t MultiLanguageModel::languageScoreForPrefilterer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 40 * *(a1 + 32);
  if (*(a1 + 112) == 1)
  {
    v7 = *(a2 + 8);
    v8 = *(a3 + 12);
    if (v7 > v8)
    {
      DgnPrimArray<short>::reallocElts(a3, v7 - v8, 0);
      v7 = *(a2 + 8);
    }

    __b = 0;
    v118 = 0;
    if (v7)
    {
      LODWORD(v9) = 0;
      do
      {
        v10 = *(*a2 + 4 * v9);
        v11 = *(a1 + 116);
        if (v11)
        {
          v12 = 0;
          while (*(*(a1 + 568) + 4 * v12) > v10 || *(*(a1 + 584) + 4 * v12) < v10)
          {
            if (v11 == ++v12)
            {
              goto LABEL_11;
            }
          }

          v13 = v12;
        }

        else
        {
LABEL_11:
          v13 = *(a1 + 560);
        }

        v14 = v118;
        if (v118 == HIDWORD(v118))
        {
          DgnPrimArray<unsigned int>::reallocElts(&__b, 1, 1);
          v14 = v118;
        }

        v15 = __b;
        *(__b + v14) = v10;
        v16 = v118 + 1;
        LODWORD(v118) = v118 + 1;
        v9 = (v9 + 1);
        if (v9 < *(a2 + 8))
        {
          do
          {
            v17 = *(*a2 + 4 * v9);
            v18 = *(a1 + 116);
            if (v18)
            {
              v19 = 0;
              while (*(*(a1 + 568) + 4 * v19) > v17 || *(*(a1 + 584) + 4 * v19) < v17)
              {
                if (v18 == ++v19)
                {
                  goto LABEL_21;
                }
              }

              v20 = v19;
            }

            else
            {
LABEL_21:
              v20 = *(a1 + 560);
            }

            if (v20 != v13)
            {
              break;
            }

            if (v16 == HIDWORD(v118))
            {
              DgnPrimArray<unsigned int>::reallocElts(&__b, 1, 1);
              v16 = v118;
              v15 = __b;
            }

            v15[v16] = v17;
            v16 = v118 + 1;
            LODWORD(v118) = v118 + 1;
            ++v9;
          }

          while (v9 < *(a2 + 8));
        }

        v115 = 0;
        v116 = 0;
        (*(**(*(a1 + 40) + 8 * v13) + 520))();
        v21 = v116;
        if (*(*(a1 + 600) + 4 * v13))
        {
          if (v116)
          {
            v22 = 0;
            v23 = *(a3 + 8);
            do
            {
              if (*(*(a1 + 600) + 4 * v13) + *(v115 + v22) >= v6)
              {
                v24 = v6;
              }

              else
              {
                v24 = *(*(a1 + 600) + 4 * v13) + *(v115 + v22);
              }

              if (v23 == *(a3 + 12))
              {
                DgnPrimArray<short>::reallocElts(a3, 1, 1);
                v23 = *(a3 + 8);
                v21 = v116;
              }

              *(*a3 + 2 * v23++) = v24;
              *(a3 + 8) = v23;
              ++v22;
            }

            while (v22 < v21);
          }
        }

        else
        {
          v25 = *(a3 + 8);
          v26 = *(a3 + 12);
          if (v25 + v116 > v26)
          {
            DgnPrimArray<short>::reallocElts(a3, v25 + v116 - v26, 1);
            v21 = v116;
            v25 = *(a3 + 8);
          }

          if (v21)
          {
            v27 = v115;
            v28 = *a3;
            v29 = v21;
            v30 = v25;
            do
            {
              v31 = *v27++;
              v28[v30++] = v31;
              --v29;
            }

            while (v29);
          }

          *(a3 + 8) = v21 + v25;
        }

        LODWORD(v118) = 0;
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v115);
      }

      while (v9 < *(a2 + 8));
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&__b);
  }

  if (*(a1 + 113) == 1)
  {
    v33 = *(a2 + 8);
    __b = 0;
    v118 = 0;
    if (v33)
    {
      v115 = 0;
      v34 = realloc_array(0, &v115, 8 * v33, 0, 0, 1) >> 3;
      __b = v115;
      v35 = *(a2 + 8);
      v118 = __PAIR64__(v34, v33);
      if (v35)
      {
        bzero(v115, 8 * v35);
      }
    }

    else
    {
      LODWORD(v35) = 0;
      LODWORD(v118) = 0;
    }

    v76 = *(a1 + 116);
    if (v76)
    {
      for (i = 0; i < v76; ++i)
      {
        v78 = *(a1 + 40);
        if (*(v78 + 8 * i) && *(*(a1 + 544) + i) == 1 && *(*(a1 + 136) + 4 * i) != 2 && *(*(a1 + 496) + 8 * i) != 0.0)
        {
          v115 = 0;
          v116 = 0;
          (*(**(v78 + 8 * i) + 520))(*(v78 + 8 * i), a2, &v115);
          v79 = *(a2 + 8);
          if (v79)
          {
            v80 = v115;
            v81 = *(a1 + 496);
            v82 = __b;
            v83 = *(*(a1 + 528) + 4 * i);
            do
            {
              v84 = *v80++;
              *v82 = *v82 + v84 * *(v81 + 8 * i) + v83;
              ++v82;
              --v79;
            }

            while (v79);
          }

          DgnPrimArray<unsigned int>::~DgnPrimArray(&v115);
          v76 = *(a1 + 116);
        }
      }

      LODWORD(v35) = *(a2 + 8);
    }

    v85 = *(a3 + 12);
    LODWORD(v86) = v35;
    if (v35 > v85)
    {
      DgnPrimArray<short>::reallocElts(a3, v35 - v85, 0);
      LODWORD(v86) = *(a2 + 8);
    }

    *(a3 + 8) = v35;
    if (v86)
    {
      v87 = __b;
      v86 = v86;
      v88 = *a3;
      do
      {
        v89 = *v87;
        LOWORD(v90) = v6;
        if (*v87 <= v6)
        {
          if (v89 >= 0.0)
          {
            v90 = (v89 + 0.5);
          }

          else
          {
            LOWORD(v90) = 0;
          }
        }

        *v88++ = v90;
        ++v87;
        --v86;
      }

      while (v86);
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&__b);
  }

  v36 = *(a2 + 8);
  v37 = *(a3 + 12);
  v38 = v36;
  v39 = v36 >= v37;
  v40 = v36 - v37;
  if (v40 != 0 && v39)
  {
    DgnPrimArray<short>::reallocElts(a3, v40, 0);
    v38 = *(a2 + 8);
  }

  *(a3 + 8) = v36;
  DgnPrimArray<unsigned char>::DgnPrimArray(&__b, v38);
  v115 = 0;
  v116 = 0;
  v41 = *(a2 + 8);
  if (v41)
  {
    memset(__b, 1, v41);
  }

  if (!*(a1 + 116))
  {
    goto LABEL_124;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0.0;
  do
  {
    v46 = *(a1 + 40);
    if (*(v46 + 8 * v42))
    {
      v47 = *(*(a1 + 432) + 8 * v42);
      if (v47 == -1.0)
      {
        v113 = 0;
        v114 = 0;
        (*(**(v46 + 8 * v42) + 520))(*(v46 + 8 * v42), a2, &v113);
        v63 = v114;
        if (v43)
        {
          if (v114)
          {
            v64 = v115;
            v65 = v113;
            do
            {
              v67 = *v65++;
              v66 = v67;
              if (*v64 < v67)
              {
                v66 = *v64;
              }

              *v64++ = v66;
              --v63;
            }

            while (v63);
          }
        }

        else
        {
          DgnPrimArray<unsigned short>::copyArraySlice(&v115, &v113, 0, v114);
        }

        DgnPrimArray<unsigned int>::~DgnPrimArray(&v113);
        v43 = 1;
      }

      else if (v47 != 0.0)
      {
        v113 = 0;
        v114 = 0;
        (*(**(v46 + 8 * v42) + 520))(*(v46 + 8 * v42), a2, &v113);
        v48 = v118;
        if (v118)
        {
          v49 = __b;
          v50 = v113;
          do
          {
            v51 = *v49 && *v50 == 0;
            *v49++ = v51;
            ++v50;
            --v48;
          }

          while (v48);
        }

        v52 = v114;
        if (v44)
        {
          if (v114)
          {
            v53 = *a3;
            v54 = v113;
            v55 = *(a1 + 480);
            v56 = *(a1 + 712);
            do
            {
              v57 = *v53;
              v58 = *v54++;
              v59 = (*(v55 + 2 * v42) + v58);
              v61 = v59 - v57;
              v60 = v59 - v57 < 0;
              if (v59 < v57)
              {
                v57 = v59;
              }

              if (v60)
              {
                v62 = -v61;
              }

              else
              {
                v62 = v61;
              }

              if (v62 < v56)
              {
                v57 -= *(*(a1 + 704) + 4 * v62);
              }

              *v53++ = v57 & ~(v57 >> 31);
              --v52;
            }

            while (v52);
          }
        }

        else if (v114)
        {
          v68 = v113;
          v69 = *(a1 + 480);
          v70 = *a3;
          do
          {
            v71 = *v68++;
            *v70++ = *(v69 + 2 * v42) + v71;
            --v52;
          }

          while (v52);
        }

        v45 = v45 + v47;
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v113);
        v44 = 1;
      }
    }

    ++v42;
  }

  while (v42 < *(a1 + 116));
  if ((v44 & 1) == 0)
  {
    if (v43)
    {
      DgnPrimArray<unsigned short>::copyArraySlice(a3, &v115, 0, v116);
      goto LABEL_152;
    }

LABEL_124:
    v91 = *(a3 + 8);
    if (v91)
    {
      bzero(*a3, 2 * v91);
    }

    goto LABEL_152;
  }

  if (v45 <= 1.0)
  {
    v72 = v45;
  }

  else
  {
    v72 = 1.0;
  }

  v73 = fabs(v72 + -1.0);
  if (v73 < 0.0001)
  {
    v92 = *(a3 + 8);
    goto LABEL_145;
  }

  if ((v43 & 1) == 0)
  {
    if (v72 == 0.0)
    {
      LOWORD(v93) = 2000;
    }

    else
    {
      v106 = DgnLog(v72);
      LODWORD(v107) = *(a1 + 32);
      v93 = (0.5 - v106 * v107);
    }

    v92 = *(a3 + 8);
    if (!v92)
    {
      goto LABEL_152;
    }

    v108 = *a3;
    v109 = *(a3 + 8);
    do
    {
      *v108++ -= v93;
      --v109;
    }

    while (v109);
LABEL_145:
    if (v92)
    {
      v110 = 0;
      v111 = __b;
      v112 = v115;
      do
      {
        if (v111[v110] == 1 && (((v73 >= 0.0001) & v43) == 0 || !v112[v110]))
        {
          *(*a3 + 2 * v110) = 0;
        }

        ++v110;
      }

      while (v92 != v110);
    }

    goto LABEL_152;
  }

  v74 = 1.0 - v72;
  if (v74 == 0.0)
  {
    LOWORD(v75) = 2000;
  }

  else
  {
    v94 = DgnLog(v74);
    LODWORD(v95) = *(a1 + 32);
    v75 = (0.5 - v94 * v95);
  }

  v92 = *(a3 + 8);
  if (v92)
  {
    v96 = v115;
    v97 = *a3;
    v98 = *(a3 + 8);
    v99 = *(a1 + 712);
    do
    {
      v100 = *v96++;
      v101 = *v97;
      v102 = (v100 + v75);
      v104 = v102 - v101;
      v103 = v102 - v101 < 0;
      if (v102 >= v101)
      {
        v102 = *v97;
      }

      if (v103)
      {
        v105 = -v104;
      }

      else
      {
        v105 = v104;
      }

      if (v105 < v99)
      {
        v102 -= *(*(a1 + 704) + 4 * v105);
      }

      *v97++ = v102 & ~(v102 >> 31);
      --v98;
    }

    while (v98);
    goto LABEL_145;
  }

LABEL_152:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v115);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&__b);
}

void sub_26272E15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

_BYTE *MultiLanguageModel::adaptLMFromTranscripts(_BYTE *result, uint64_t *a2, uint64_t *a3, void *a4, int a5, unsigned int a6)
{
  if (result[152] != 1)
  {
    return result;
  }

  v8 = result;
  if (!*(result + 29))
  {
    if (result[114] != 1)
    {
      return result;
    }

    v135 = 0;
    v136 = 0;
LABEL_53:
    v38 = 0;
    LODWORD(v37) = 0;
LABEL_54:
    if (v38 < v37)
    {
      v41 = v37 - v38;
      v42 = 2 * v38;
      do
      {
        v43 = &v135[v42];
        *v43 = 0;
        v43[1] = 0;
        v42 += 2;
        --v41;
      }

      while (v41);
    }

    goto LABEL_57;
  }

  v9 = 0;
  do
  {
    if (v8[112] == 1)
    {
      if (v9 == *(v8 + 140) && *(*(v8 + 17) + 4 * v9) == 3)
      {
        DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v128, *(a2 + 2));
        DgnArray<DgnPrimArray<unsigned int>>::DgnArray(&v125, *(a3 + 2));
        if (*(a2 + 2))
        {
          v10 = 0;
          do
          {
            v11 = v128[0] + 16 * v10;
            v12 = *a2;
            v13 = *(*a2 + 16 * v10 + 8);
            v14 = *(v11 + 3);
            if (v13 > v14)
            {
              DgnPrimArray<unsigned int>::reallocElts(v128[0] + 16 * v10, v13 - v14, 0);
              v12 = *a2;
            }

            *(v11 + 2) = v13;
            v15 = (v12 + 16 * v10);
            if (*(v15 + 2))
            {
              v16 = 0;
              v17 = *v15;
              v18 = *(v128[0] + 2 * v10);
              do
              {
                v19 = *(v17 + 4 * v16);
                if (v19 <= 0xFFFFF3)
                {
                  v20 = *(v8 + 29);
                  if (v20)
                  {
                    v21 = 0;
                    while (*(*(v8 + 71) + 4 * v21) > v19 || *(*(v8 + 73) + 4 * v21) < v19)
                    {
                      if (v20 == ++v21)
                      {
                        goto LABEL_19;
                      }
                    }

                    v22 = v21;
                  }

                  else
                  {
LABEL_19:
                    v22 = *(v8 + 140);
                  }

                  if (v9 != v22)
                  {
                    v19 = 0xFFFFFF;
                  }
                }

                *(v18 + 4 * v16++) = v19;
              }

              while (v16 < *(v15 + 2));
            }

            v23 = v125 + 16 * v10;
            v24 = *a3;
            v25 = *(*a3 + 16 * v10 + 8);
            v26 = *(v23 + 12);
            if (v25 > v26)
            {
              DgnPrimArray<unsigned int>::reallocElts(v125 + 16 * v10, v25 - v26, 0);
              v24 = *a3;
            }

            *(v23 + 8) = v25;
            v27 = (v24 + 16 * v10);
            if (*(v27 + 2))
            {
              v28 = 0;
              v29 = *v27;
              v30 = *(v125 + 16 * v10);
              do
              {
                v31 = *(v29 + 4 * v28);
                if (v31 <= 0xFFFFF3)
                {
                  v32 = *(v8 + 29);
                  if (v32)
                  {
                    v33 = 0;
                    while (*(*(v8 + 71) + 4 * v33) > v31 || *(*(v8 + 73) + 4 * v33) < v31)
                    {
                      if (v32 == ++v33)
                      {
                        goto LABEL_34;
                      }
                    }

                    v34 = v33;
                  }

                  else
                  {
LABEL_34:
                    v34 = *(v8 + 140);
                  }

                  if (v9 != v34)
                  {
                    v31 = 0xFFFFFF;
                  }
                }

                *(v30 + 4 * v28++) = v31;
              }

              while (v28 < *(v27 + 2));
            }

            ++v10;
          }

          while (v10 < *(a2 + 2));
        }

        v35 = *(*(v8 + 5) + 8 * v9);
        (*(*v35 + 536))(v35, v128, &v125, a4, a5, a6);
        DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v125);
        result = DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v128);
      }
    }

    else if (*(*(v8 + 17) + 4 * v9) == 3)
    {
      v36 = *(*(v8 + 5) + 8 * v9);
      result = (*(*v36 + 536))(v36, a2, a3, a4, a5, a6);
    }

    ++v9;
    v37 = *(v8 + 29);
  }

  while (v9 < v37);
  if ((v8[114] & 1) == 0)
  {
    return result;
  }

  v135 = 0;
  v136 = 0;
  if (!v37)
  {
    goto LABEL_53;
  }

  v128[0] = 0;
  HIDWORD(v136) = realloc_array(0, v128, 16 * v37, 0, 0, 1) >> 4;
  v135 = v128[0];
  v38 = v136;
  if (v136 <= v37)
  {
    goto LABEL_54;
  }

  if (v136 > v37)
  {
    v39 = v136;
    v40 = 16 * v136 - 16;
    do
    {
      DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v135 + v40);
      --v39;
      v40 -= 16;
    }

    while (v39 > v37);
  }

LABEL_57:
  LODWORD(v136) = v37;
  v134 = 0u;
  v133 = 0u;
  v132 = 0u;
  v131 = 0u;
  v130 = 0u;
  v129 = 0u;
  LMStats::resetStats(v128);
  v125 = xmmword_262888C00;
  v126 = 1;
  v127 = 1;
  v116 = (*(*v8 + 464))(v8);
  v123 = 0;
  v124 = 0;
  if (*(v8 + 29))
  {
    v44 = 0;
    while (1)
    {
      v45 = &v135[2 * v44];
      v46 = *(a2 + 2);
      v47 = *(v45 + 3);
      if (v46 > v47)
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v135[2 * v44], v46 - v47, 0);
      }

      v48 = *(v45 + 2);
      if (v48 <= v46)
      {
        if (v48 < v46)
        {
          v51 = v46 - v48;
          v52 = 16 * v48;
          do
          {
            v53 = (*v45 + v52);
            *v53 = 0;
            v53[1] = 0;
            v52 += 16;
            --v51;
          }

          while (v51);
        }
      }

      else if (v48 > v46)
      {
        v49 = v48;
        v50 = 16 * v48 - 16;
        do
        {
          --v49;
          DgnPrimArray<unsigned int>::~DgnPrimArray(*v45 + v50);
          v50 -= 16;
        }

        while (v49 > v46);
      }

      *(v45 + 2) = v46;
      if (*(*(v8 + 5) + 8 * v44))
      {
        if (*(*(v8 + 48) + 8 * v44) != 0.0 && *(a2 + 2) != 0)
        {
          break;
        }
      }

LABEL_103:
      if (++v44 >= *(v8 + 29))
      {
        goto LABEL_104;
      }
    }

    v55 = 0;
    while (1)
    {
      v56 = *(*a3 + 16 * v55 + 8);
      if (v56 >= 3)
      {
        v57 = 3;
      }

      else
      {
        v57 = v56;
      }

      if (HIDWORD(v124) < v57)
      {
        v121 = 0;
        HIDWORD(v124) = realloc_array(v123, &v121, (4 * v57), 4 * v124, 4 * v124, 1) >> 2;
        v123 = v121;
      }

      LODWORD(v124) = v57;
      if (v56)
      {
        v58 = *a3 + 16 * v55;
        v59 = *v58;
        v60 = v123;
        v61 = -1;
        do
        {
          *v60++ = *(v59 + 4 * (v61 + *(v58 + 8)));
          --v61;
          --v57;
        }

        while (v57);
      }

      v62 = *(*a2 + 16 * v55 + 8);
      v63 = v135[2 * v44] + 16 * v55;
      v64 = *(v63 + 12);
      if (v62 > v64)
      {
        break;
      }

      *(v63 + 8) = v62;
      if (v62)
      {
        goto LABEL_86;
      }

LABEL_102:
      if (++v55 >= *(a2 + 2))
      {
        goto LABEL_103;
      }
    }

    DgnPrimArray<short>::reallocElts(v135[2 * v44] + 16 * v55, v62 - v64, 0);
    *(v63 + 8) = v62;
LABEL_86:
    v65 = 0;
    while (1)
    {
      v66 = *(*(*a2 + 16 * v55) + 4 * v65);
      if (v66 == 0xFFFFFF)
      {
        *(*(v135[2 * v44] + 16 * v55) + 2 * v65) = 0;
      }

      else
      {
        v67 = *(*(v116 + 16) + 8 * v44);
        v68 = *(*(v8 + 5) + 8 * v44);
        (*(*v68 + 472))(v68, &v123, 0, v128, &v125, v67);
        LOBYTE(v121) = 0;
        v69 = *(*(v8 + 5) + 8 * v44);
        v70 = (*(*v69 + 504))(v69, v66, 0xFFFFLL, v128, v67, 0, 0, 0, &v121);
        *(*(v135[2 * v44] + 16 * v55) + 2 * v65) = v70;
        (*(**(*(v8 + 5) + 8 * v44) + 480))();
        if (v66 == 16777213)
        {
          v71 = v123;
          if (!HIDWORD(v124))
          {
            v121 = 0;
            HIDWORD(v124) = realloc_array(v123, &v121, 4uLL, 4 * v124, 4 * v124, 1) >> 2;
            v71 = v121;
            v123 = v121;
          }

          LODWORD(v124) = 1;
          *v71 = 16777214;
          goto LABEL_101;
        }
      }

      v72 = v124;
      if (v124 <= 2)
      {
        if (v124 == HIDWORD(v124))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v123, 1, 1);
          v72 = v124;
        }

        LODWORD(v124) = ++v72;
      }

      v73 = v123;
      v74 = (v72 - 1);
      if (v72 != 1)
      {
        v75 = v123 + 4 * v74;
        v76 = v74 - 1;
        do
        {
          v77 = v76;
          *v75-- = v73[v76--];
        }

        while (v77);
      }

      *v73 = v66;
LABEL_101:
      if (++v65 == v62)
      {
        goto LABEL_102;
      }
    }
  }

LABEL_104:
  DgnDelete<LMContextData>(v116);
  LODWORD(v6) = *(v8 + 8);
  v78 = *(v8 + 29);
  v121 = 0;
  v122 = 0;
  if (v78)
  {
    v119 = 0;
    v79 = realloc_array(0, &v119, 8 * v78, 0, 0, 1);
    v120 = 0;
    v121 = v119;
    v80 = *(v8 + 29);
    LODWORD(v122) = v78;
    HIDWORD(v122) = v79 >> 3;
    v119 = 0;
    if (v80)
    {
      v117 = 0;
      HIDWORD(v120) = realloc_array(0, &v117, 8 * v80, 0, 0, 1) >> 3;
      v119 = v117;
    }
  }

  else
  {
    LODWORD(v80) = 0;
    v119 = 0;
    v120 = 0;
  }

  LODWORD(v120) = v80;
  v117 = 0;
  v118 = 0;
  DgnPrimArray<double>::copyArraySlice(&v117, v8 + 48, 0, *(v8 + 98));
  v81 = 0;
  v82 = v6;
  while (2)
  {
    v83 = *(v8 + 29);
    if (v83)
    {
      bzero(v121, 8 * v83);
    }

    v84 = *(a2 + 2);
    if (!v84)
    {
      break;
    }

    v85 = 0;
    v86 = 0;
    v87 = *a2;
    v88 = v83;
    do
    {
      if (!*(v87 + 16 * v85 + 8))
      {
        goto LABEL_132;
      }

      v89 = 0;
      do
      {
        if (!v88)
        {
          goto LABEL_129;
        }

        v90 = 0;
        v91 = 0;
        v92 = 0.0;
        do
        {
          if (!*(*(v8 + 5) + 8 * v91) || *(v117 + v91) == 0.0)
          {
            *(v119 + v91) = 0;
          }

          else
          {
            v93 = *(*(v135[v90] + 16 * v85) + 2 * v89);
            if (v82 * 50.0 + -1.0 < v93)
            {
              v93 = (v82 * 50.0) - 1;
            }

            v94 = DgnExp(-v93 / v82);
            v95 = v94 * *(v117 + v91);
            *(v119 + v91) = v95;
            v92 = v92 + v95;
            v83 = *(v8 + 29);
          }

          ++v91;
          v90 += 2;
        }

        while (v91 < v83);
        if (v92 == 0.0)
        {
          goto LABEL_128;
        }

        v96 = *(*a4 + 4 * v85);
        v86 += v96;
        if (v83)
        {
          v97 = v119;
          v98 = v96;
          v99 = v83;
          v100 = v121;
          do
          {
            v101 = *v97++;
            *v100 = *v100 + v101 / v92 * v98;
            ++v100;
            --v99;
          }

          while (v99);
LABEL_128:
          v88 = v83;
          goto LABEL_129;
        }

        v88 = 0;
LABEL_129:
        ++v89;
        v87 = *a2;
      }

      while (v89 < *(*a2 + 16 * v85 + 8));
      v84 = *(a2 + 2);
LABEL_132:
      ++v85;
    }

    while (v85 < v84);
    if (v86)
    {
      v102 = v86;
      if (v83)
      {
        v103 = 0;
        v104 = 1.0 / v102;
        do
        {
          if (*(*(v8 + 5) + 8 * v103) && *(*(v8 + 48) + 8 * v103) != 0.0)
          {
            v105 = fround(v104 * *(v121 + v103), 15) <= 1.0e-17;
            v106 = 1.0e-17;
            if (!v105)
            {
              v106 = fround(v104 * *(v121 + v103), 15);
            }

            *(v121 + v103) = v106;
            v83 = *(v8 + 29);
          }

          ++v103;
        }

        while (v103 < v83);
      }

      MultiLanguageModel::fitWeightsToFloorAndCeiling(v8, &v121, &v117);
      if (v118)
      {
        if (a6)
        {
          v105 = v81++ > 0x12;
          if (!v105)
          {
            continue;
          }
        }

        v107 = *(v8 + 29);
        if (v107)
        {
          v108 = 0;
          v109 = *(v8 + 5);
          v110 = v117;
          v111 = 8 * v107;
          do
          {
            if (*(v109 + v108))
            {
              *&v110[v108] = (*&v110[v108] * v102 + a5 * *(*(v8 + 48) + v108)) / (v86 + a5);
            }

            else
            {
              *&v110[v108] = 0;
            }

            v108 += 8;
          }

          while (v111 != v108);
        }

        (*(*v8 + 496))(v8, &v117);
      }
    }

    break;
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v117);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v119);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v121);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v123);
  return DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(&v135);
}

void sub_26272EDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va3, a13);
  va_start(va2, a13);
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  va_copy(va2, va1);
  v18 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  va_copy(va3, va2);
  v21 = va_arg(va3, void);
  v23 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  DgnArray<DgnArray<DgnPrimArray<unsigned int>>>::releaseAll(v13 - 160);
  _Unwind_Resume(a1);
}

uint64_t MultiLanguageModel::setWeightsForNewTopicLM(MultiLanguageModel *this, unsigned int a2)
{
  v4 = *(this + 29);
  if (v4)
  {
    v5 = 0;
    v6 = 8 * v4;
    v7 = 0.0;
    do
    {
      if (*(*(this + 5) + v5))
      {
        v7 = v7 + *(*(this + 48) + v5);
      }

      v5 += 8;
    }

    while (v6 != v5);
  }

  else
  {
    v7 = 0.0;
  }

  v8 = *(*(this + 56) + 8 * a2);
  v15[0] = 0;
  v15[1] = 0;
  v9.n128_f64[0] = DgnPrimArray<double>::copyArraySlice(v15, this + 48, 0, *(this + 98));
  v10 = *(this + 29);
  v11 = v15[0];
  if (v10)
  {
    v12 = *(this + 5);
    v13 = v15[0];
    v9.n128_f64[0] = (1.0 - v8) / v7;
    do
    {
      if (*v12)
      {
        *v13 = v9.n128_f64[0] * *v13;
      }

      ++v12;
      ++v13;
      --v10;
    }

    while (v10);
  }

  *(v11 + 8 * a2) = v8;
  (*(*this + 496))(this, v15, v9);
  MultiLanguageModel::adjustNamedWeightsSets(this);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
}

void MultiLanguageModel::startBuildingTopicLM(MultiLanguageModel *this, int a2)
{
  if (*(this + 77))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 6904, "lm/multilm", 20, "%.500s", "startBuildingTopicLM");
  }

  v13 = 0;
  v14 = a2 - 1;
  v15 = 0;
  MultiLanguageModel::getInternalTopicLmSlot(this, &v14, &v15, &v13);
  v4 = v15;
  v5 = v13;
  if (v13 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 6914, "lm/multilm", 95, "%u", a2);
  }

  if (*(*(v4 + 5) + 8 * v5))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 6918, "lm/multilm", 12, "%s", &errStr_lm_multilm_E_BAD_INPLACE_BUILD);
  }

  v6 = *(*(v4 + 38) + 8 * v5);
  v7 = *(*(v4 + 42) + 8 * v5);
  *(this + 78) = v4;
  *(this + 158) = v5;
  *(this + 159) = a2;
  v8 = MemChunkAlloc(0x728uLL, 0);
  WordLanguageModel::WordLanguageModel(v8, *(this + 8), *(this + 2));
  *(this + 77) = v9;
  WordLanguageModel::initForBuild(v9, v6, v7, v10, v11);
  v12 = *(this + 77);

  WordLanguageModel::startBuildingNgramLM(v12, this + 640, this + 82, this + 83, this + 672);
}

uint64_t MultiLanguageModel::addBuildTopicLM(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = *(a1 + 616);
  if (!v8)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 6944, "lm/multilm", 19, "%s", errStr_lm_multilm_E_NOTBUILDINGLM);
    v8 = *(a1 + 616);
  }

  return WordLanguageModel::addBuildNgramLM(v8, a2, a3, a4);
}

void *MultiLanguageModel::endBuildingTopicLM(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = *(a1 + 616);
  if (!v10)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 6959, "lm/multilm", 19, "%s", errStr_lm_multilm_E_NOTBUILDINGLM);
    v10 = *(a1 + 616);
  }

  v11 = WordLanguageModel::endBuildingNgramLM(v10);
  v12 = *(a1 + 616);
  if (!v11)
  {
    DgnDelete<LanguageModel>(v12);
    goto LABEL_9;
  }

  v13 = *(a1 + 632);
  *(*(*(a1 + 624) + 40) + 8 * v13) = v12;
  *(a1 + 616) = 0;
  v14 = *(a1 + 624);
  if (*(v14 + 114) == 1)
  {
    MultiLanguageModel::setWeightsForNewTopicLM(v14, v13);
  }

  if (*(a2 + 8))
  {
    (*(*a1 + 536))(a1, a2, a3, a4, a5, 1);
    DgnDelete<LanguageModel>(*(*(*(a1 + 624) + 40) + 8 * *(a1 + 632)));
    v15 = *(a1 + 632);
    *(*(*(a1 + 624) + 40) + 8 * v15) = 0;
    v16 = *(a1 + 624);
    v17 = *(*(v16 + 336) + 8 * v15);
    v18 = *(*(v16 + 304) + 8 * v15);
    v19 = MemChunkAlloc(0x728uLL, 0);
    WordLanguageModel::WordLanguageModel(v19, *(a1 + 32), *(a1 + 16));
    *(a1 + 616) = v20;
    WordLanguageModel::initForBuild(v20, v18, v17, v21, v22);
    WordLanguageModel::startBuildingNgramLM(*(a1 + 616), a1 + 640, (a1 + 656), (a1 + 664), a1 + 672);
    WordLanguageModel::addBuildNgramLM(*(a1 + 616), a2, a3, a4);
    WordLanguageModel::endBuildingNgramLM(*(a1 + 616));
    *(*(*(a1 + 624) + 40) + 8 * *(a1 + 632)) = *(a1 + 616);
LABEL_9:
    *(a1 + 616) = 0;
  }

  *(a1 + 624) = 0;
  *(a1 + 632) = 0xFFFFFFFFFFFFLL;
  v23 = *(a1 + 640);
  if (v23)
  {
    MemChunkFree(v23, 0);
    *(a1 + 640) = 0;
  }

  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;

  return DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(a1 + 672);
}

void *MultiLanguageModel::abortBuildingTopicLM(MultiLanguageModel *this)
{
  v2 = this + 616;
  v3 = *(this + 77);
  if (!v3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/multilm.cpp", 7035, "lm/multilm", 19, "%s", errStr_lm_multilm_E_NOTBUILDINGLM);
    v3 = *v2;
  }

  DgnDelete<LanguageModel>(v3);
  *v2 = 0;
  *(v2 + 1) = 0;
  *(this + 79) = 0xFFFFFFFFFFFFLL;
  v4 = *(this + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 80) = 0;
  }

  *(this + 648) = 0u;

  return DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(this + 672);
}